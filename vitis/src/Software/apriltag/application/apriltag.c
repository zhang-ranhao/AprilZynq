/****************************************************************/
/*	apriltag.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file contains the algorithm body that implements
  	apriltag
		 														*/
/****************************************************************/
/*  Revision History:
	6/5/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "apriltag.h"
#include "apriltag_math.h"
#include "apriltag_quad_thresh.h"
#include "apriltag_pose.h"
#include "..\common\math_util.h"
#include "..\common\homography.h"
#include "..\common\zarray.h"
#include "..\..\..\Hardware\common\state_machine\fsm_control.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */
#define APRILTAG_U64_ONE ((u64) 1)

// Regresses a model of the form:
// intensity(x,y) = C0*x + C1*y + C2
// The J matrix is the:
//    J = [ x1 y1 1 ]
//        [ x2 y2 1 ]
//        [ ...     ]
//  The A matrix is J'J//3*n  ×   n*  3

struct graymodel
{
    double A[3][3];
    double B[3];
    double C[3];
};

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
apriltag_detector_t td;
quick_decode_t qd;
u8 apriltag_flag;
u8 debug_flag;
static u8 im_color_buf[FRAME_SIZE] __attribute__ ((aligned(256)));

u8 quads_raw_buf[FRAME_SIZE] __attribute__ ((aligned(256)));

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
/**
 * Assuming we are drawing the image one quadrant at a time, what would the rotated image look like?
 * Special care is taken to handle the case where there is a middle pixel of the image.
 */
static uint64_t rotate90(uint64_t w, int numBits)
{
    int p = numBits;
    uint64_t l = 0;
    if (numBits % 4 == 1) {
	p = numBits - 1;
	l = 1;
    }
    w = ((w >> l) << (p/4 + l)) | (w >> (3 * p/ 4 + l) << l) | (w & l);//w<<9|w>>27|w&1
    w &= ((APRILTAG_U64_ONE << numBits) - 1);
    return w;
}

static void graymodel_add(struct graymodel *gm, double x, double y, double gray)
{
    // update upper right entries of A = J'J
    gm->A[0][0] += x*x;
    gm->A[0][1] += x*y;
    gm->A[0][2] += x;
    gm->A[1][1] += y*y;
    gm->A[1][2] += y;
    gm->A[2][2] += 1;

    // update B = J'gray
    gm->B[0] += x * gray;
    gm->B[1] += y * gray;
    gm->B[2] += gray;
}

static void graymodel_init(struct graymodel *gm)
{
    memset(gm, 0, sizeof(struct graymodel));
}

static void graymodel_solve(struct graymodel *gm)
{
    mat33_sym_solve((double*) gm->A, gm->B, gm->C); // AC = B  求解C
}

static double graymodel_interpolate(struct graymodel *gm, double x, double y)
{
    return gm->C[0]*x + gm->C[1]*y + gm->C[2];
}

static void sharpen(apriltag_detector_t* td, double* values, int size) {
    double *sharpened = malloc(sizeof(double)*size*size);
    double kernel[9] = {
        0, -1, 0,
        -1, 4, -1,
        0, -1, 0
    };

    for (int y = 0; y < size; y++) {
        for (int x = 0; x < size; x++) {
            sharpened[y*size + x] = 0;
            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    if ((y + i - 1) < 0 || (y + i - 1) > size - 1 || (x + j - 1) < 0 || (x + j - 1) > size - 1) {
                        continue;
                    }
                    sharpened[y*size + x] += values[(y + i - 1)*size + (x + j - 1)]*kernel[i*3 + j];
                }
            }
        }
    }


    for (int y = 0; y < size; y++) {
        for (int x = 0; x < size; x++) {
            values[y*size + x] = values[y*size + x] + td->decode_sharpening*sharpened[y*size + x];
        }
    }

    free(sharpened);
}

// returns an entry with hamming set to 255 if no decode was found.
static void quick_decode_codeword(apriltag_family_t *tf, uint64_t rcode,
                                  struct quick_decode_entry *entry)
{
    struct quick_decode *qd = (struct quick_decode*) tf->impl;

    // qd might be null if detector_add_family_bits() failed
    for (int ridx = 0; qd != NULL && ridx < 4; ridx++) {

        for (int bucket = rcode % qd->nentries;
             qd->entries[bucket].rcode != UINT64_MAX;
             bucket = (bucket + 1) % qd->nentries) {

            if (qd->entries[bucket].rcode == rcode) {
                *entry = qd->entries[bucket];
                entry->rotation = ridx;
                return;
            }
        }

        rcode = rotate90(rcode, tf->nbits); //相当于将靶标逆时针旋转90度
    }
//下面都是解码失败的代码
    entry->rcode = 0;
    entry->id = 65535;
    entry->hamming = 255;
    entry->rotation = 0;
}

static double value_for_pixel(image_u8_t *im, double px, double py) {
    int x1 = floor(px - 0.5);//向下取整      若px在0-0.4之间，[-1,0],px在0.5-0.9之间，[0,1]
    int x2 = ceil(px - 0.5);//向上取整
    double x = px - 0.5 - x1; //
    int y1 = floor(py - 0.5);
    int y2 = ceil(py - 0.5);
    double y = py - 0.5 - y1;
    if (x1 < 0 || x2 >= im->width || y1 < 0 || y2 >= im->height) {
        return -1;
    }
    return im->buf[y1*im->stride + x1]*(1-x)*(1-y) +
            im->buf[y1*im->stride + x2]*x*(1-y) +
            im->buf[y2*im->stride + x1]*(1-x)*y +
            im->buf[y2*im->stride + x2]*x*y;
}

static inline int detection_compare_function(const void *_a, const void *_b)
{
    apriltag_detection_t *a = *(apriltag_detection_t**) _a;
    apriltag_detection_t *b = *(apriltag_detection_t**) _b;

    return a->id - b->id;
}

void apriltag_detector_init(apriltag_detector_t *ptd, apriltag_family_t *ptf)
{
    //ptd->nthreads = 1;
    ptd->quad_decimate = 2.0;
    ptd->quad_sigma = 0.8;

    ptd->qtp.max_nmaxima = 10;
    ptd->qtp.min_cluster_pixels = 5;

    ptd->qtp.max_line_fit_mse = 10.0;
    ptd->qtp.cos_critical_rad = cos(10 * M_PI / 180);
    ptd->qtp.deglitch = 0;
    ptd->qtp.min_white_black_diff = 5;

    ptd->tag_family = ptf;

    //pthread_mutex_init(&ptd->mutex, NULL);

    //ptd->tp = timeprofile_create();

    ptd->refine_edges = 1;
    ptd->decode_sharpening = 0.25;

    //ptd->debug = 0;

    // NB: defer initialization of ptd->wp so that the user can
    // override ptd->nthreads.
}

static void quad_destroy(struct quad *quad)
{
    if (!quad)
        return;

    matd_destroy(quad->H);
    matd_destroy(quad->Hinv);
    free(quad);
}

void quick_decode_init(apriltag_family_t *ptf, quick_decode_t *pqd, int maxhamming)
{
    assert(ptf->impl == NULL);
    assert(ptf->ncodes < 65536);


    int capacity = ptf->ncodes;
    int nbits = ptf->nbits;

    if (maxhamming >= 1)  //最大汉明距离
        capacity += ptf->ncodes * nbits;  //587 + 587 *36   任意一位都有可能发生错误

    if (maxhamming >= 2)
        capacity += ptf->ncodes * nbits * (nbits-1);

    if (maxhamming >= 3)
        capacity += ptf->ncodes * nbits * (nbits-1) * (nbits-2);

    pqd->nentries = capacity * 3;

//    debug_print("capacity %d, size: %.0f kB\n",
//           capacity, qd->nentries * sizeof(struct quick_decode_entry) / 1024.0);
    /*
    qd->entries = calloc(qd->nentries, sizeof(struct quick_decode_entry));
    if (qd->entries == NULL) {
        debug_print("Failed to allocate hamming decode table\n");
        // errno already set to ENOMEM (Error No MEMory) by calloc() failure
        return;
    }//没有空间去分配了
    */
    for (int i = 0; i < pqd->nentries; i++){
        pqd->entries[i].rcode = UINT64_MAX;
    }
    //errno = 0;

    for (int i = 0; i < ptf->ncodes; i++) {
        u64 code = ptf->codes[i];

        // add exact code (hamming = 0)
        quick_decode_add(pqd, code, i, 0);

        if (maxhamming >= 1) {
            // add hamming 1
            for (int j = 0; j < nbits; j++)
                quick_decode_add(pqd, code ^ (APRILTAG_U64_ONE << j), i, 1);//按位异或 //0异或任何数，任何数本身；1异或任何数，取反
        }

        if (maxhamming >= 2) {
            // add hamming 2
            for (int j = 0; j < nbits; j++)
                for (int k = 0; k < j; k++)
                    quick_decode_add(pqd, code ^ (APRILTAG_U64_ONE << j) ^ (APRILTAG_U64_ONE << k), i, 2);
        }

        if (maxhamming >= 3) {
            // add hamming 3
            for (int j = 0; j < nbits; j++)
                for (int k = 0; k < j; k++)
                    for (int m = 0; m < k; m++)
                        quick_decode_add(pqd, code ^ (APRILTAG_U64_ONE << j) ^ (APRILTAG_U64_ONE << k) ^ (APRILTAG_U64_ONE << m), i, 3);
        }

        if (maxhamming > 3) {
            xil_printf("\"maxhamming\" beyond 3 not supported\n");
            return;
        }
    }
    ptf->impl = pqd;
    return;
}

void quick_decode_add(quick_decode_t *pqd, u64 code, int id, int hamming)
{
    u32 bucket = code % pqd->nentries; // 哈希桶，索引值,这个公式相当于哈希函数了

    while (pqd->entries[bucket].rcode != UINT64_MAX) {
        bucket = (bucket + 1) % pqd->nentries;
    }
    //只要没有被占用，就占位
    pqd->entries[bucket].rcode = code;
    pqd->entries[bucket].id = id;
    pqd->entries[bucket].hamming = hamming;
}

static void refine_edges(apriltag_detector_t *td, image_u8_t *im_orig, struct quad *quad)
{
    double lines[4][4]; // for each line, [Ex Ey nx ny]

    for (int edge = 0; edge < 4; edge++) {
        int a = edge, b = (edge + 1) & 3; // indices of the end points.

        // compute the normal to the current line estimate
        double nx = quad->p[b][1] - quad->p[a][1];
        double ny = -quad->p[b][0] + quad->p[a][0];
        double mag = sqrt(nx*nx + ny*ny);
        nx /= mag;
        ny /= mag;//单位化

        if (quad->reversed_border) {
            nx = -nx;
            ny = -ny;
        }

        // we will now fit a NEW line by sampling points near
        // our original line that have large gradients. On really big tags,
        // we're willing to sample more to get an even better estimate.
        int nsamples = imax(16, mag / 8); // XXX tunable

        // stats for fitting a line...
        double Mx = 0, My = 0, Mxx = 0, Mxy = 0, Myy = 0, N = 0;

        for (int s = 0; s < nsamples; s++) {
            // compute a point along the line... Note, we're avoiding
            // sampling *right* at the corners, since those points are
            // the least reliable.
            double alpha = (1.0 + s) / (nsamples + 1);//两个端点不算
            double x0 = alpha*quad->p[a][0] + (1-alpha)*quad->p[b][0];
            double y0 = alpha*quad->p[a][1] + (1-alpha)*quad->p[b][1];

            // search along the normal to this line, looking at the
            // gradients along the way. We're looking for a strong
            // response.
            double Mn = 0;
            double Mcount = 0;

            // XXX tunable: how far to search?  We want to search far
            // enough that we find the best edge, but not so far that
            // we hit other edges that aren't part of the tag. We
            // shouldn't ever have to search more than quad_decimate,
            // since otherwise we would (ideally) have started our
            // search on another pixel in the first place. Likewise,
            // for very small tags, we don't want the range to be too
            // big.
            double range = td->quad_decimate + 1;

            // XXX tunable step size.
            for (double n = -range; n <= range; n +=  0.25) {
                // Because of the guaranteed winding order of the
                // points in the quad, we will start inside the white
                // portion of the quad and work our way outward.
                //
                // sample to points (x1,y1) and (x2,y2) XXX tunable:
                // how far +/- to look? Small values compute the
                // gradient more precisely, but are more sensitive to
                // noise.
                double grange = 1;
                int x1 = x0 + (n + grange)*nx;
                int y1 = y0 + (n + grange)*ny;
                if (x1 < 0 || x1 >= im_orig->width || y1 < 0 || y1 >= im_orig->height)
                    continue;
                //越界的话直接排除
                int x2 = x0 + (n - grange)*nx;
                int y2 = y0 + (n - grange)*ny;
                if (x2 < 0 || x2 >= im_orig->width || y2 < 0 || y2 >= im_orig->height)
                    continue;

                int g1 = im_orig->buf[y1*im_orig->stride + x1];
                int g2 = im_orig->buf[y2*im_orig->stride + x2];

                if (g1 < g2) // reject points whose gradient is "backwards". They can only hurt us.
                    continue;
                //外白内黑
                double weight = (g2 - g1)*(g2 - g1); // XXX tunable. What shape for weight=f(g2-g1)?

                // compute weighted average of the gradient at this point.
                Mn += weight*n;//
                Mcount += weight;//权重的和
            }

            // what was the average point along the line?
            if (Mcount == 0)
                continue;

            double n0 = Mn / Mcount;//理论上，计算的实际上是一个偏置量

            // where is the point along the line?
            double bestx = x0 + n0*nx;
            double besty = y0 + n0*ny;
            //到这一步，已经找到了
            // update our line fit statistics
            Mx += bestx;
            My += besty;
            Mxx += bestx*bestx;
            Mxy += bestx*besty;
            Myy += besty*besty;
            N++;
        }

        // fit a line
        double Ex = Mx / N, Ey = My / N;
        double Cxx = Mxx / N - Ex*Ex;
        double Cxy = Mxy / N - Ex*Ey;
        double Cyy = Myy / N - Ey*Ey;

        // TODO: Can replace this with same code as in fit_line.
        double normal_theta = .5 * atan2f(-2*Cxy, (Cyy - Cxx));//反正切
        nx = cosf(normal_theta);
        ny = sinf(normal_theta);
        lines[edge][0] = Ex;
        lines[edge][1] = Ey;
        lines[edge][2] = nx;
        lines[edge][3] = ny;
    }

    // now refit the corners of the quad
    for (int i = 0; i < 4; i++) {

        // solve for the intersection of lines (i) and (i+1)&3.
        double A00 =  lines[i][3],  A01 = -lines[(i+1)&3][3];
        double A10 =  -lines[i][2],  A11 = lines[(i+1)&3][2];
        double B0 = -lines[i][0] + lines[(i+1)&3][0];
        double B1 = -lines[i][1] + lines[(i+1)&3][1];

        double det = A00 * A11 - A10 * A01;

        // inverse.
        if (fabs(det) > 0.001) {
            // solve
            double W00 = A11 / det, W01 = -A01 / det;

            double L0 = W00*B0 + W01*B1;

            // Compute intersection. Note that line i represents the line from corner i to (i+1)&3, so
	    // the intersection of line i with line (i+1)&3 represents corner (i+1)&3.
            quad->p[(i+1)&3][0] = lines[i][0] + L0*A00;
            quad->p[(i+1)&3][1] = lines[i][1] + L0*A10;
        } else {
            // this is a bad sign. We'll just keep the corner we had.
//            debug_print("bad det: %15f %15f %15f %15f %15f\n", A00, A11, A10, A01, det);
        }
    }
}

static matd_t* homography_compute2(double c[4][4]) {
    double A[] =  {
            c[0][0], c[0][1], 1,       0,       0, 0, -c[0][0]*c[0][2], -c[0][1]*c[0][2], c[0][2],
                  0,       0, 0, c[0][0], c[0][1], 1, -c[0][0]*c[0][3], -c[0][1]*c[0][3], c[0][3],
            c[1][0], c[1][1], 1,       0,       0, 0, -c[1][0]*c[1][2], -c[1][1]*c[1][2], c[1][2],
                  0,       0, 0, c[1][0], c[1][1], 1, -c[1][0]*c[1][3], -c[1][1]*c[1][3], c[1][3],
            c[2][0], c[2][1], 1,       0,       0, 0, -c[2][0]*c[2][2], -c[2][1]*c[2][2], c[2][2],
                  0,       0, 0, c[2][0], c[2][1], 1, -c[2][0]*c[2][3], -c[2][1]*c[2][3], c[2][3],
            c[3][0], c[3][1], 1,       0,       0, 0, -c[3][0]*c[3][2], -c[3][1]*c[3][2], c[3][2],
                  0,       0, 0, c[3][0], c[3][1], 1, -c[3][0]*c[3][3], -c[3][1]*c[3][3], c[3][3],
    };

    double epsilon = 1e-10;//1乘以10的负10次方

    // Eliminate.
    for (int col = 0; col < 8; col++) {
        // Find best row to swap with.
        double max_val = 0;
        int max_val_idx = -1;
        for (int row = col; row < 8; row++) {
            double val = fabs(A[row*9 + col]);
            if (val > max_val) {
                max_val = val;
                max_val_idx = row;
            }
        }//row colum 行和列

        if (max_val < epsilon) {
            printf("WRN: Matrix is singular.\n");//矩阵是奇异的
            return NULL;
        }

        // Swap to get best row.
        if (max_val_idx != col) {
            for (int i = col; i < 9; i++) {
                double tmp = A[col*9 + i];
                A[col*9 + i] = A[max_val_idx*9 + i];
                A[max_val_idx*9 + i] = tmp;
            }
        }

        // Do eliminate.
        for (int i = col + 1; i < 8; i++) {
            double f = A[i*9 + col]/A[col*9 + col];
            A[i*9 + col] = 0;
            for (int j = col + 1; j < 9; j++) {
                A[i*9 + j] -= f*A[col*9 + j];
            }
        }
    }

    // Back solve.
    for (int col = 7; col >=0; col--) {
        double sum = 0;
        for (int i = col + 1; i < 8; i++) {
            sum += A[col*9 + i]*A[i*9 + 8];
        }
        A[col*9 + 8] = (A[col*9 + 8] - sum)/A[col*9 + col];
    }
    return matd_create_data(3, 3, (double[]) { A[8], A[17], A[26], A[35], A[44], A[53], A[62], A[71], 1 });
}

// returns non-zero if an error occurs (i.e., H has no inverse)
static int quad_update_homographies(struct quad *quad)
{
    //zarray_t *correspondences = zarray_create(sizeof(float[4]));

    double corr_arr[4][4];

    for (int i = 0; i < 4; i++) {
        corr_arr[i][0] = (i==0 || i==3) ? -1 : 1;
        corr_arr[i][1] = (i==0 || i==1) ? -1 : 1;
        corr_arr[i][2] = quad->p[i][0];
        corr_arr[i][3] = quad->p[i][1];
    }

    if (quad->H)
        matd_destroy(quad->H);
    if (quad->Hinv)
        matd_destroy(quad->Hinv);

    // XXX Tunable //高斯消去法
    quad->H = homography_compute2(corr_arr);
    if (quad->H != NULL) {
        quad->Hinv = matd_inverse(quad->H);//求逆矩阵
        if (quad->Hinv != NULL) {
	    // Success!
            return 0;
        }
        matd_destroy(quad->H);
        quad->H = NULL;
    }
    return -1;
}

static struct quad *quad_copy(struct quad *quad)
{
    struct quad *q = calloc(1, sizeof(struct quad));
    memcpy(q, quad, sizeof(struct quad));
    if (quad->H)
        q->H = matd_copy(quad->H);
    if (quad->Hinv)
        q->Hinv = matd_copy(quad->Hinv);
    return q;
}

// returns the decision margin. Return < 0 if the detection should be rejected.
static float quad_decode(apriltag_detector_t* td, apriltag_family_t *family, image_u8_t *im, struct quad *quad, struct quick_decode_entry *entry, image_u8_t *im_samples)
{
    // decode the tag binary contents by sampling the pixel
    // closest to the center of each bit cell.

    // We will compute a threshold by sampling known white/black cells around this tag.
    // This sampling is achieved by considering a set of samples along lines.

    // coordinates are given in bit coordinates. ([0, fam->border_width]).//坐标计算
    //
    // { initial x, initial y, delta x, delta y, WHITE=1 }

	//为了使系统更加具有鲁棒性，通过已知的
    float patterns[] = {
        // left white column
        -0.5, 0.5,
        0, 1,
        1,

        // left black column
        0.5, 0.5,
        0, 1,
        0,

        // right white column
        family->width_at_border + 0.5, .5,
        0, 1,
        1,

        // right black column
        family->width_at_border - 0.5, .5,
        0, 1,
        0,

        // top white row
        0.5, -0.5,
        1, 0,
        1,

        // top black row
        0.5, 0.5,
        1, 0,
        0,

        // bottom white row
        0.5, family->width_at_border + 0.5,
        1, 0,
        1,

        // bottom black row
        0.5, family->width_at_border - 0.5,
        1, 0,
        0

        // XXX double-counts the corners.
    };

    struct graymodel whitemodel, blackmodel;
    graymodel_init(&whitemodel);//都设置为0
    graymodel_init(&blackmodel);

    for (int pattern_idx = 0; pattern_idx < sizeof(patterns)/(5*sizeof(float)); pattern_idx ++) {
        float *pattern = &patterns[pattern_idx * 5];

        int is_white = pattern[4]; // WHITE=1

        for (int i = 0; i < family->width_at_border; i++) {
            double tagx01 = (pattern[0] + i*pattern[2]) / (family->width_at_border);//归一化
            double tagy01 = (pattern[1] + i*pattern[3]) / (family->width_at_border);
            //scale to [-1, 1]
            double tagx = 2*(tagx01-0.5);//不涉及旋转，只有平移和伸缩，坐标中心在靶标原点，角点坐标（-1，-1）
            double tagy = 2*(tagy01-0.5);

            double px, py;
            homography_project(quad->H, tagx, tagy, &px, &py);//project应该是投影的意思,将标签坐标系投影到图像坐标系

            // don't round //直接取整数部分，不做四舍五入
            int ix = px;
            int iy = py;
            if (ix < 0 || iy < 0 || ix >= im->width || iy >= im->height)
                continue;

            int v = im->buf[iy*im->stride + ix];

            if (im_samples) {
                im_samples->buf[iy*im_samples->stride + ix] = (1-is_white)*255;
            }

            if (is_white)
                graymodel_add(&whitemodel, tagx, tagy, v);
            else
                graymodel_add(&blackmodel, tagx, tagy, v);
        }
    }

    if (family->width_at_border > 1) {
        graymodel_solve(&whitemodel);
        graymodel_solve(&blackmodel);
    } else {
        graymodel_solve(&whitemodel);
        blackmodel.C[0] = 0;
        blackmodel.C[1] = 0;
        blackmodel.C[2] = blackmodel.B[2]/4;
    }//灰度模型求解

    // XXX Tunable  //插值？
    if ((graymodel_interpolate(&whitemodel, 0, 0) - graymodel_interpolate(&blackmodel, 0, 0) < 0) != family->reversed_border) {
        return -1;
    }
    //注意：灰度模型是以标签坐标系为参考坐标系的

    //白色阈值一定大于黑色阈值
    // compute the average decision margin (how far was each bit from
    // the decision boundary?
    //
    // we score this separately for white and black pixels and return
    // the minimum average threshold for black/white pixels. This is
    // to penalize thresholds that are too close to an extreme.
    float black_score = 0, white_score = 0;
    float black_score_count = 1, white_score_count = 1;

    double *values = calloc(family->total_width*family->total_width, sizeof(double));

    int min_coord = (family->width_at_border - family->total_width)/2;//最小坐标，坐标原点位于左上角，黑白框交界处，最外面一圈黑边不算
    for (int i = 0; i < family->nbits; i++) {
        int bity = family->bit_y[i];
        int bitx = family->bit_x[i];
        //nbits = 36
        double tagx01 = (bitx + 0.5) / (family->width_at_border);
        double tagy01 = (bity + 0.5) / (family->width_at_border);

        // scale to [-1, 1]
        double tagx = 2*(tagx01-0.5);
        double tagy = 2*(tagy01-0.5);

        double px, py;
        homography_project(quad->H, tagx, tagy, &px, &py);

        double v = value_for_pixel(im, px, py);

        if (v == -1) {
            continue;
        }

        double thresh = (graymodel_interpolate(&blackmodel, tagx, tagy) + graymodel_interpolate(&whitemodel, tagx, tagy)) / 2.0;
        values[family->total_width*(bity - min_coord) + bitx - min_coord] = v - thresh;

        if (im_samples) {
            int ix = px;
            int iy = py;
            im_samples->buf[iy*im_samples->stride + ix] = (v < thresh) * 255;
        }
    }

    sharpen(td, values, family->total_width);

    uint64_t rcode = 0;
    for (int i = 0; i < family->nbits; i++) {
        int bity = family->bit_y[i];
        int bitx = family->bit_x[i];
        rcode = (rcode << 1);
        double v = values[(bity - min_coord)*family->total_width + bitx - min_coord];

        if (v > 0) {
            white_score += v;
            white_score_count++;
            rcode |= 1;
        } else {
            black_score -= v;
            black_score_count++;
        }
    }

    quick_decode_codeword(family, rcode, entry);
    free(values);
    return fmin(white_score / white_score_count, black_score / black_score_count); //决策裕度
}


static void quad_decode_task(apriltag_detector_t *td, image_u8_t *im, zarray_t* quads, image_u8_t *im_samples, zarray_t *detections)
{

	//struct quad_decode_task *task = (struct quad_decode_task*) _u;
    //apriltag_detector_t *td = task->td;
    //image_u8_t *im = task->im;

    int sz = zarray_size(quads);//聚类的数量

    for (int quadidx = 0; quadidx < sz; quadidx++) {
        struct quad *quad_original;
        zarray_get_volatile(quads, quadidx, &quad_original);

        // refine edges is not dependent upon the tag family, thus
        // apply this optimization BEFORE the other work.
        //if (td->quad_decimate > 1 && td->refine_edges) {
        if (td->refine_edges) {
            refine_edges(td, im, quad_original);
        }


        // make sure the homographies are computed...
        if (quad_update_homographies(quad_original) != 0)//计算单应矩阵
            continue;

		if (td->tag_family->reversed_border != quad_original->reversed_border) {
			continue;
        }

		// since the geometry of tag families can vary, start any
		// optimization process over with the original quad.

		struct quad *quad = quad_copy(quad_original);

		struct quick_decode_entry entry;

		float decision_margin = quad_decode(td, td->tag_family, im, quad, &entry, im_samples);

		if (decision_margin >= 0 && entry.hamming < 255) {//解码成功{
			apriltag_detection_t *det = calloc(1, sizeof(apriltag_detection_t));

			det->family = td->tag_family; //家族
			det->id = entry.id; //编号
			det->hamming = entry.hamming; //是否有错
			det->decision_margin = decision_margin; //决策裕度

			double theta = entry.rotation * M_PI / 2.0;
			double c = cos(theta), s = sin(theta);

			// Fix the rotation of our homography to properly orient the tag
			matd_t *R = matd_create(3,3);
			MATD_EL(R, 0, 0) = c;
			MATD_EL(R, 0, 1) = -s;
			MATD_EL(R, 1, 0) = s;
			MATD_EL(R, 1, 1) = c;
			MATD_EL(R, 2, 2) = 1;

			det->H = matd_op("M*M", quad->H, R); //单应矩阵再乘旋转矩阵

			matd_destroy(R);

			homography_project(det->H, 0, 0, &det->c[0], &det->c[1]);//原点

			// [-1, -1], [1, -1], [1, 1], [-1, 1], Desired points
			// [-1, 1], [1, 1], [1, -1], [-1, -1], FLIP Y
			// adjust the points in det->p so that they correspond to
			// counter-clockwise around the quad, starting at -1,-1. -1  -1 开始逆时针旋转  左下角，逆时针转一圈
			for (int i = 0; i < 4; i++) {
				int tcx = (i == 1 || i == 2) ? 1 : -1;
				int tcy = (i < 2) ? 1 : -1;

				double p[2];

				homography_project(det->H, tcx, tcy, &p[0], &p[1]);//

				det->p[i][0] = p[0];
				det->p[i][1] = p[1];
			}

			zarray_add(detections, &det);
		}

		quad_destroy(quad);
	}
}


zarray_t * apriltag_detector_detect(apriltag_detector_t *td, image_u8_t *im_orig, timeprofile_t *tp)
{

    ///////////////////////////////////////////////////////////
    // Step 1. Detect quads according to requested image decimation
    // and blurring parameters.
    image_u8_t *quad_im = im_orig;

    //原始灰度图
    if (debug_flag == 1) {
    	image_u8_write_pnm("1:/im_orig.pnm", im_orig, &fil);//原图
    }


    if (td->quad_decimate > 1) {
        quad_im = image_u8_decimate(im_orig, td->quad_decimate);

        timeprofile_stamp(tp, "decimate");
    }


    if (td->quad_sigma != 0) {
        // compute a reasonable kernel width by figuring that the
        // kernel should go out 2 std devs.
        //
        // max sigma          ksz
        // 0.499              1  (disabled)
        // 0.999              3
        // 1.499              5
        // 1.999              7

        float sigma = fabsf((float) td->quad_sigma);

        int ksz = 4 * sigma; // 2 std devs in each direction
        if ((ksz & 1) == 0)
            ksz++;

        if (ksz > 1) {

            if (td->quad_sigma > 0) {
                // Apply a blur
                image_u8_gaussian_blur(quad_im, sigma, ksz);
            } else {
                // SHARPEN the image by subtracting the low frequency components.
                image_u8_t *orig = image_u8_copy(quad_im);
                image_u8_gaussian_blur(quad_im, sigma, ksz);

                for (int y = 0; y < orig->height; y++) {
                    for (int x = 0; x < orig->width; x++) {
                        int vorig = orig->buf[y*orig->stride + x];
                        int vblur = quad_im->buf[y*quad_im->stride + x];

                        int v = 2*vorig - vblur;
                        if (v < 0)
                            v = 0;
                        if (v > 255)
                            v = 255;

                        quad_im->buf[y*quad_im->stride + x] = (uint8_t) v;
                    }
                }
                image_u8_destroy(orig);
            }
        }

        timeprofile_stamp(tp, "blur/sharp");
    }

    //预处理之后的图像
    if (debug_flag == 1) {
    	image_u8_write_pnm("1:/preprocess.pnm", quad_im, &fil);
    }

    zarray_t *quads = apriltag_quad_thresh(td, quad_im, tp);

    // adjust centers of pixels so that they correspond to the
    // original full-resolution image.
    if (td->quad_decimate > 1) {
        for (int i = 0; i < zarray_size(quads); i++) {
            struct quad *q;
            zarray_get_volatile(quads, i, &q);

            for (int j = 0; j < 4; j++) {
                if (td->quad_decimate == 1.5) {
                    q->p[j][0] *= td->quad_decimate;
                    q->p[j][1] *= td->quad_decimate;
                } else {
                    q->p[j][0] = (q->p[j][0] - 0.5)*td->quad_decimate + 0.5;//还原坐标点
                    q->p[j][1] = (q->p[j][1] - 0.5)*td->quad_decimate + 0.5;
                }
            }
        }
    }

    timeprofile_stamp(tp, "quads");

    //四边形图像
    if (debug_flag == 1) {
        image_u8_t *im_quads = image_u8_copy(im_orig);
        image_u8_darken(im_quads);
        image_u8_darken(im_quads);

        srandom(0);

        for (int i = 0; i < zarray_size(quads); i++) {
            struct quad *quad;
            zarray_get_volatile(quads, i, &quad);

            const int bias = 100;
            int color = bias + (random() % (255-bias));

            image_u8_draw_line(im_quads, quad->p[0][0], quad->p[0][1], quad->p[1][0], quad->p[1][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[1][0], quad->p[1][1], quad->p[2][0], quad->p[2][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[2][0], quad->p[2][1], quad->p[3][0], quad->p[3][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[3][0], quad->p[3][1], quad->p[0][0], quad->p[0][1], color, 1);
        }

        image_u8_write_pnm("1:/quads_raw.pnm", im_quads, &fil);
        image_u8_destroy(im_quads);
    }


    if (stFsm.stCurState == QUADS_RAW)
    {
        image_u8_t *im_quads = image_u8_copy(im_orig);
        image_u8_darken(im_quads);
        image_u8_darken(im_quads);

        //画线
        for (int i = 0; i < zarray_size(quads); i++) {
            struct quad *quad;
            zarray_get_volatile(quads, i, &quad);

            const int bias = 100;
            int color = bias + (random() % (255-bias));

            image_u8_draw_line(im_quads, quad->p[0][0], quad->p[0][1], quad->p[1][0], quad->p[1][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[1][0], quad->p[1][1], quad->p[2][0], quad->p[2][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[2][0], quad->p[2][1], quad->p[3][0], quad->p[3][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[3][0], quad->p[3][1], quad->p[0][0], quad->p[0][1], color, 1);
        }

        //填充图像
    	for (int y = 0; y < im_orig->height; y++) {
    		for (int x = 0; x < im_orig->width; x++) {
    			simu_buf[y*im_orig->width*4 + 4*x + 0] = im_quads->buf[y*im_orig->width + x];
    			simu_buf[y*im_orig->width*4 + 4*x + 1] = im_quads->buf[y*im_orig->width + x];
    			simu_buf[y*im_orig->width*4 + 4*x + 2] = im_quads->buf[y*im_orig->width + x];
    		}
    	}
    	image_u8_destroy(im_quads);

		FrameBuffer.Address = (INTPTR)simu_buf;
		XDpDma_DisplayGfxFrameBuffer(RunCfg.DpDmaPtr, &FrameBuffer);
    }

    timeprofile_stamp(tp, "quads_raw_display");







    if (debug_flag == 1)
    {
    	XGpioPs_WritePin(&Gpio, GPIO_LED2_PIN, 1); //turn off the LED
    }

    ////////////////////////////////////////////////////////////////
    // Step 2. Decode tags from each quad.
    image_u8_t *im_samples = (debug_flag || stFsm.stCurState == SAMPLES) ? image_u8_copy(im_orig) : NULL;

    zarray_t *detections = zarray_create(sizeof(apriltag_detection_t*));

    quad_decode_task(td, im_orig, quads, im_samples, detections);

    timeprofile_stamp(tp, "decode+refinement");

    if (stFsm.stCurState == EDGE_REFINEMENT)
    {
        image_u8_t *im_quads = image_u8_copy(im_orig);
        image_u8_darken(im_quads);
        image_u8_darken(im_quads);

        //画线
        for (int i = 0; i < zarray_size(quads); i++) {
            struct quad *quad;
            zarray_get_volatile(quads, i, &quad);

            const int bias = 100;
            int color = bias + (random() % (255-bias));

            image_u8_draw_line(im_quads, quad->p[0][0], quad->p[0][1], quad->p[1][0], quad->p[1][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[1][0], quad->p[1][1], quad->p[2][0], quad->p[2][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[2][0], quad->p[2][1], quad->p[3][0], quad->p[3][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[3][0], quad->p[3][1], quad->p[0][0], quad->p[0][1], color, 1);
        }

        //填充图像
    	for (int y = 0; y < im_orig->height; y++) {
    		for (int x = 0; x < im_orig->width; x++) {
    			simu_buf[y*im_orig->width*4 + 4*x + 0] = im_quads->buf[y*im_orig->width + x];
    			simu_buf[y*im_orig->width*4 + 4*x + 1] = im_quads->buf[y*im_orig->width + x];
    			simu_buf[y*im_orig->width*4 + 4*x + 2] = im_quads->buf[y*im_orig->width + x];
    		}
    	}
    	image_u8_destroy(im_quads);

		FrameBuffer.Address = (INTPTR)simu_buf;
		XDpDma_DisplayGfxFrameBuffer(RunCfg.DpDmaPtr, &FrameBuffer);
    }


    timeprofile_stamp(tp, "edge_refinement_display");

    if (stFsm.stCurState == SAMPLES)
    {
    	for (int y = 0; y < im_orig->height; y++) {
    		for (int x = 0; x < im_orig->width; x++) {
    			simu_buf[y*im_orig->width*4 + 4*x + 0] = im_samples->buf[y*im_orig->width + x];
    			simu_buf[y*im_orig->width*4 + 4*x + 1] = im_samples->buf[y*im_orig->width + x];
    			simu_buf[y*im_orig->width*4 + 4*x + 2] = im_samples->buf[y*im_orig->width + x];
    		}
    	}

		FrameBuffer.Address = (INTPTR)simu_buf;
		XDpDma_DisplayGfxFrameBuffer(RunCfg.DpDmaPtr, &FrameBuffer);

		image_u8_destroy(im_samples);
    }

    timeprofile_stamp(tp, "samples_display");


    if (debug_flag) {
    	image_u8_write_pnm("1:/samples.pnm", im_samples, &fil);
        image_u8_destroy(im_samples);
    }


    //经过修正后的四边形
    if (debug_flag == 1) {
        image_u8_t *im_quads = image_u8_copy(im_orig);
        image_u8_darken(im_quads);
        image_u8_darken(im_quads);

        srandom(0);

        for (int i = 0; i < zarray_size(quads); i++) {
            struct quad *quad;
            zarray_get_volatile(quads, i, &quad);

            const int bias = 100;
            int color = bias + (random() % (255-bias));

            image_u8_draw_line(im_quads, quad->p[0][0], quad->p[0][1], quad->p[1][0], quad->p[1][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[1][0], quad->p[1][1], quad->p[2][0], quad->p[2][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[2][0], quad->p[2][1], quad->p[3][0], quad->p[3][1], color, 1);
            image_u8_draw_line(im_quads, quad->p[3][0], quad->p[3][1], quad->p[0][0], quad->p[0][1], color, 1);
        }

        image_u8_write_pnm("1:/quads_fixed.pnm", im_quads, &fil);
        image_u8_destroy(im_quads);
    }

    ////////////////////////////////////////////////////////////////
    // Produce final debug output
    if (debug_flag == 1) {

        image_u8_t *darker = image_u8_copy(im_orig);
        image_u8_darken(darker);
        image_u8_darken(darker);

        f_open(&fil, "1:/debug_output.txt", FA_CREATE_ALWAYS | FA_WRITE);

        f_lseek(&fil, 0);

        for (int i = 0; i < zarray_size(detections); i++) {
            apriltag_detection_t *det;
            zarray_get(detections, i, &det);

            f_printf(&fil, "%d.%06d %d.%06d moveto %d.%06d %d.%06d lineto %d.%06d %d.%06d lineto %d.%06d %d.%06d lineto %d.%06d %d.%06d lineto stroke\n",
                    (int)(det->p[0][0]), (int)(fabs(det->p[0][0])*1000000)%1000000, (int)(det->p[0][1]), (int)(fabs(det->p[0][1])*1000000)%1000000,
					(int)(det->p[1][0]), (int)(fabs(det->p[1][0])*1000000)%1000000, (int)(det->p[1][1]), (int)(fabs(det->p[1][1])*1000000)%1000000,
					(int)(det->p[2][0]), (int)(fabs(det->p[2][0])*1000000)%1000000, (int)(det->p[2][1]), (int)(fabs(det->p[2][1])*1000000)%1000000,
					(int)(det->p[3][0]), (int)(fabs(det->p[3][0])*1000000)%1000000, (int)(det->p[3][1]), (int)(fabs(det->p[3][1])*1000000)%1000000,
					(int)(det->p[0][0]), (int)(fabs(det->p[0][0])*1000000)%1000000, (int)(det->p[0][1]), (int)(fabs(det->p[0][1])*1000000)%1000000);
        }

        //close file
        f_close(&fil);

        printf("size0 is %d\n", zarray_size(detections));
    }


    //在AprilTag标签边缘划线
    if (debug_flag == 1) {
        image_u8_t *darker = image_u8_copy(im_orig);
        image_u8_darken(darker);
        image_u8_darken(darker);

        image_u8x4_t *out = image_u8x4_create(darker->width, darker->height);
        for (int y = 0; y < im_orig->height; y++) {
            for (int x = 0; x < im_orig->width; x++) {
                out->buf[y*out->stride + 4*x + 0] = darker->buf[y*darker->stride + x];
                out->buf[y*out->stride + 4*x + 1] = darker->buf[y*darker->stride + x];
                out->buf[y*out->stride + 4*x + 2] = darker->buf[y*darker->stride + x];
            }
        }

        image_u8_destroy(darker);

        for (int i = 0; i < zarray_size(detections); i++) {
            apriltag_detection_t *det;
            zarray_get(detections, i, &det);

            float rgb[3];
            int bias = 100;

            for (int j = 0; j < 3; j++) {
                rgb[j] = bias + (random() % (255-bias));
            }

            for (int j = 0; j < 4; j++) {
                int k = (j + 1) & 3;
                image_u8x4_draw_line(out,
                                     det->p[j][0], det->p[j][1], det->p[k][0], det->p[k][1],
                                     (uint8_t[]) { rgb[0], rgb[1], rgb[2] },
                                     1);
            }
        }

        bmp_write("1:/output.bmp", (char *)&BMODE_1280x720, (char *)out->buf, 1280*4, &fil);
        image_u8x4_destroy(out);
    }

    if (stFsm.stCurState == OUTPUT)
    {

        image_u8_t *darker = image_u8_copy(im_orig);
        image_u8_darken(darker);
        image_u8_darken(darker);

        for (int y = 0; y < im_orig->height; y++) {
             for (int x = 0; x < im_orig->width; x++) {
     			simu_buf[y*im_orig->width*4 + 4*x + 0] = darker->buf[y*im_orig->width + x];
     			simu_buf[y*im_orig->width*4 + 4*x + 1] = darker->buf[y*im_orig->width + x];
     			simu_buf[y*im_orig->width*4 + 4*x + 2] = darker->buf[y*im_orig->width + x];
             }
         }

        image_u8_destroy(darker);


        for (int i = 0; i < zarray_size(detections); i++) {
            apriltag_detection_t *det;
            zarray_get(detections, i, &det);

            float rgb[3];
            int bias = 100;

            for (int j = 0; j < 3; j++) {
                rgb[j] = bias + (random() % (255-bias));
            }

            for (int j = 0; j < 4; j++) {
                int k = (j + 1) & 3;

                double x0 = det->p[j][0];
                double y0 = det->p[j][1];
                double x1 = det->p[k][0];
                double y1 = det->p[k][1];


                double dist = sqrtf((y1-y0)*(y1-y0) + (x1-x0)*(x1-x0));
                double delta = 1 / dist;

                // terrible line drawing code
                for (float f = 0; f <= 1; f += delta) {
                    int x = ((int) (x1 + (x0 - x1) * f));
                    int y = ((int) (y1 + (y0 - y1) * f));

                    if (x < 0 || y < 0 || x >= im_orig->width || y >= im_orig->height)
                        continue;

                    int idx = y*im_orig->width*4 + 4*x;
                    for (int i = 0; i < 3; i++)
                        simu_buf[idx + i] = rgb[i];
                }
            }
        }

		FrameBuffer.Address = (INTPTR)simu_buf;
		XDpDma_DisplayGfxFrameBuffer(RunCfg.DpDmaPtr, &FrameBuffer);
    }




    for (int i = 0; i < zarray_size(quads); i++) {
        struct quad *quad;
        zarray_get_volatile(quads, i, &quad);
        matd_destroy(quad->H);
        matd_destroy(quad->Hinv);
    }

    zarray_destroy(quads);

    image_u8_destroy(quad_im);
    image_u8_destroy(im_orig);

    zarray_sort(detections, detection_compare_function);
    timeprofile_stamp(tp, "detect");

    return detections;
}


image_u8_t *gray_to_u8_baseline() {

	apriltag_flag = 1; //相当于闸门，使vdma的传输停在当前帧

    image_u8_t *im = image_u8_create(VIDEO_COLUMNS, VIDEO_ROWS);//im的行跨度必须是stride的倍数

    for (int y = 0; y < im->height; y++)
    {
        memcpy(&im->buf[y*im->stride], &gray_buf[(wr_gray_index+1)%3][y*im->width], im->width);
    }

    if (debug_flag == 1)
    {
    	XGpioPs_WritePin(&Gpio, GPIO_LED2_PIN, 0); //light up the LED1
    	memcpy(im_color_buf, pcolor_buf[(wr_color_index+2) % 3], FRAME_SIZE);
    	bmp_write("1:/im_color.bmp", (char *)&BMODE_1280x720, (char *)im_color_buf, DEMO_STRIDE, &fil);
    }

    apriltag_flag = 0;

    return im;
}

void apriltag_detection_destroy(apriltag_detection_t *det)
{
    if (det == NULL)
        return;

    matd_destroy(det->H);
    free(det);
}


// Call this method on each of the tags returned by apriltag_detector_detect
void apriltag_detections_destroy(zarray_t *detections)
{
    for (int i = 0; i < zarray_size(detections); i++) {
        apriltag_detection_t *det;
        zarray_get(detections, i, &det);

        apriltag_detection_destroy(det);
    }

    zarray_destroy(detections);
}

void apriltag_duty()
{

	if (key2_flag == 1) {
		debug_flag = 1;
	}

	//创建时间文件
	timeprofile_t *tp = timeprofile_create();
	//增添时间戳，任务开始
	timeprofile_stamp(tp, "init");
	//图像拷贝任务
	image_u8_t *im = gray_to_u8_baseline();
	timeprofile_stamp(tp, "copy");
	//标签检测任务
    zarray_t *detections = apriltag_detector_detect(&td, im, tp);
    //位姿解算任务
    /*
    for (int i = 0; i < zarray_size(detections); i++) {
        apriltag_detection_t *det;
        zarray_get(detections, i, &det);
        info.det = det;

        // Then call estimate_tag_pose.
        apriltag_pose_t pose;
        double err = estimate_tag_pose(&info, &pose);
        printf("err is %f", err);
    }
    */

    apriltag_detections_destroy(detections);


    timeprofile_stamp(tp, "end");
    timeprofile_display(tp);

    timeprofile_destroy(tp);

    if (debug_flag == 1) {
    	key2_flag = 0;
    }

    debug_flag = 0;
}

