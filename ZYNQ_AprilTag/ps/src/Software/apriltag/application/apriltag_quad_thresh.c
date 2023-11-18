/****************************************************************/
/*	apriltag_quad_thresh.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the apriltag_quad
  	thresh
		 														*/
/****************************************************************/
/*  Revision History:
	6/9/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "apriltag_quad_thresh.h"
#include "../common/math_util.h"
#include <math.h>
#include "../../../Hardware/common/state_machine/action.h"
#include "../../../Hardware/common/state_machine/fsm_control.h"

/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
u8 simu_buf[FRAME_SIZE] __attribute__ ((aligned(256)));
uint32_t colors[VIDEO_COLUMNS/2 * VIDEO_ROWS/2] __attribute__ ((aligned(256)));
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* -------------------------------------------------------------*/
static image_u8_t *threshold(apriltag_detector_t *td, image_u8_t *im, timeprofile_t *tp)//二值化处理
{
    int w = im->width, h = im->height, s = im->stride;

    image_u8_t *threshim = image_u8_create_alignment(w, h, s);

    assert(threshim->stride == s);

    // The idea is to find the maximum and minimum values in a
    // window around each pixel. If it's a contrast-free region
    // (max-min is small), don't try to binarize. Otherwise,
    // threshold according to (max+min)/2.
    //
    // Mark low-contrast regions with value 127 so that we can skip
    // future work on these areas too.

    // however, computing max/min around every pixel is needlessly
    // expensive. We compute max/min for tiles. To avoid artifacts
    // that arise when high-contrast features appear near a tile
    // edge (and thus moving from one tile to another results in a
    // large change in max/min value), the max/min values used for
    // any pixel are computed from all 3x3 surrounding tiles. Thus,
    // the max/min sampling area for nearby pixels overlap by at least
    // one tile.
    //
    // The important thing is that the windows be large enough to
    // capture edge transitions; the tag does not need to fit into
    // a tile.

    // XXX Tunable. Generally, small tile sizes--- so long as they're
    // large enough to span a single tag edge--- seem to be a winner.
    const int tilesz = 4;

    // the last (possibly partial) tiles along each row and column will
    // just use the min/max value from the last full tile.
    int tw = w / tilesz;
    int th = h / tilesz;

    uint8_t *im_max = malloc(tw * th * sizeof(uint8_t));
    uint8_t *im_min = malloc(tw * th * sizeof(uint8_t));

    // first, collect min/max statistics for each tile
    for (int ty = 0; ty < th; ty++) {
        for (int tx = 0; tx < tw; tx++) {
            uint8_t max = 0, min = 255;

            for (int dy = 0; dy < tilesz; dy++) {

                for (int dx = 0; dx < tilesz; dx++) {

                    uint8_t v = im->buf[(ty*tilesz+dy)*s + tx*tilesz + dx];
                    if (v < min)
                        min = v;
                    if (v > max)
                        max = v;
                }
            }

            im_max[ty*tw+tx] = max;
            im_min[ty*tw+tx] = min;
        }
    }

	// second, apply 3x3 max/min convolution to "blur" these values
	// over larger areas. This reduces artifacts due to abrupt changes
	// in the threshold value.//3乘3卷积，防止相邻变化过大

	uint8_t *im_max_tmp = malloc(tw*th*sizeof(uint8_t));
	uint8_t *im_min_tmp = malloc(tw*th*sizeof(uint8_t));

	for (int ty = 0; ty < th; ty++) {
		for (int tx = 0; tx < tw; tx++) {
			uint8_t max = 0, min = 255;

			for (int dy = -1; dy <= 1; dy++) {
				if (ty+dy < 0 || ty+dy >= th)
					continue;
				for (int dx = -1; dx <= 1; dx++) {
					if (tx+dx < 0 || tx+dx >= tw)
						continue;

					uint8_t m = im_max[(ty+dy)*tw+tx+dx];
					if (m > max)
						max = m;
					m = im_min[(ty+dy)*tw+tx+dx];
					if (m < min)
						min = m;
				}
			}

			im_max_tmp[ty*tw + tx] = max;
			im_min_tmp[ty*tw + tx] = min;
		}
	}
	free(im_max);
	free(im_min);
	im_max = im_max_tmp;
	im_min = im_min_tmp;

    for (int ty = 0; ty < th; ty++) {
        for (int tx = 0; tx < tw; tx++) {

            int min = im_min[ty*tw + tx];
            int max = im_max[ty*tw + tx];

            // low contrast region? (no edges)//低对比度
            if (max - min < td->qtp.min_white_black_diff) {
                for (int dy = 0; dy < tilesz; dy++) {
                    int y = ty*tilesz + dy;

                    for (int dx = 0; dx < tilesz; dx++) {
                        int x = tx*tilesz + dx;

                        threshim->buf[y*s+x] = 127;
                    }
                }
                continue;
            }

            // otherwise, actually threshold this tile.

            // argument for biasing towards dark; specular highlights
            // can be substantially brighter than white tag parts
            uint8_t thresh = min + (max - min) / 2;

            for (int dy = 0; dy < tilesz; dy++) {
                int y = ty*tilesz + dy;

                for (int dx = 0; dx < tilesz; dx++) {
                    int x = tx*tilesz + dx;

                    uint8_t v = im->buf[y*s+x];
                    if (v > thresh)
                        threshim->buf[y*s+x] = 255;
                    else
                        threshim->buf[y*s+x] = 0;
                }
            }
        }
    }

    // we skipped over the non-full-sized tiles above. Fix those now.
    if (0) {
        for (int y = 0; y < h; y++) {

            // what is the first x coordinate we need to process in this row?

            int x0;

            if (y >= th*tilesz) {
                x0 = 0; // we're at the bottom; do the whole row.
            } else {
                x0 = tw*tilesz; // we only need to do the right most part.
            }

            // compute tile coordinates and clamp.
            int ty = y / tilesz;
            if (ty >= th)
                ty = th - 1;

            for (int x = x0; x < w; x++) {
                int tx = x / tilesz;
                if (tx >= tw)
                    tx = tw - 1;

                int max = im_max[ty*tw + tx];
                int min = im_min[ty*tw + tx];
                int thresh = min + (max - min) / 2;

                uint8_t v = im->buf[y*s+x];
                if (v > thresh)
                    threshim->buf[y*s+x] = 255;
                else
                    threshim->buf[y*s+x] = 0;
            }
        }
    }

    free(im_min);
    free(im_max);

    // this is a dilate/erode deglitching scheme that does not improve
    // anything as far as I can tell.图像腐蚀和膨胀，去尖峰
    if (td->qtp.deglitch) {
        image_u8_t *tmp = image_u8_create(w, h);

        for (int y = 1; y + 1 < h; y++) {
            for (int x = 1; x + 1 < w; x++) {
                uint8_t max = 0;
                for (int dy = -1; dy <= 1; dy++) {
                    for (int dx = -1; dx <= 1; dx++) {
                        uint8_t v = threshim->buf[(y+dy)*s + x + dx];
                        if (v > max)
                            max = v;
                    }
                }
                tmp->buf[y*s+x] = max;
            }
        }


        for (int y = 1; y + 1 < h; y++) {
            for (int x = 1; x + 1 < w; x++) {
                uint8_t min = 255;
                for (int dy = -1; dy <= 1; dy++) {
                    for (int dx = -1; dx <= 1; dx++) {
                        uint8_t v = tmp->buf[(y+dy)*s + x + dx];
                        if (v < min)
                            min = v;
                    }
                }
                threshim->buf[y*s+x] = min;
            }
        }


        image_u8_destroy(tmp);
    }

    timeprofile_stamp(tp, "threshold");

    return threshim;
}


#define DO_UNIONFIND2(dx, dy) if (im->buf[(y + dy)*s + x + dx] == v) unionfind_connect(uf, y*w + x, (y + dy)*w + x + dx);

static void do_unionfind_first_line(unionfind_t *uf, image_u8_t *im, int h, int w, int s)
{
    int y = 0;
    uint8_t v;

    for (int x = 1; x < w - 1; x++) {
        v = im->buf[y*s + x];

        if (v == 127)
            continue;

        DO_UNIONFIND2(-1, 0);
    }
}

static void do_unionfind_line2(unionfind_t *uf, image_u8_t *im, int h, int w, int s, int y)
{
    assert(y > 0);

    uint8_t v_m1_m1;
    uint8_t v_0_m1 = im->buf[(y - 1)*s];//上一行的最左边的数据
    uint8_t v_1_m1 = im->buf[(y - 1)*s + 1];//上一行的最左边的再往右一个数据
    uint8_t v_m1_0;
    uint8_t v = im->buf[y*s];

    for (int x = 1; x < w - 1; x++) {
        v_m1_m1 = v_0_m1;//第二个m1表示上一行
        v_0_m1 = v_1_m1;
        v_1_m1 = im->buf[(y - 1)*s + x + 1];
        v_m1_0 = v;
        v = im->buf[y*s + x];
        /*v_m1_m1      v_0_m1     v_1_m1
          v_m1_0         v
        */

        if (v == 127)
            continue;

        // (dx,dy) pairs for 8 connectivity:
        // (-1, -1)    (0, -1)    (1, -1)
        // (-1, 0)    (REFERENCE)
        DO_UNIONFIND2(-1, 0);

        if (x == 1 || !((v_m1_0 == v_m1_m1) && (v_m1_m1 == v_0_m1))) {
            DO_UNIONFIND2(0, -1);
        }

        if (v == 255) {
            if (x == 1 || !(v_m1_0 == v_m1_m1 || v_0_m1 == v_m1_m1) ) {
                DO_UNIONFIND2(-1, -1);
            }
            if (!(v_0_m1 == v_1_m1)) {
                DO_UNIONFIND2(1, -1);
            }
        }
    }
}



static unionfind_t* connected_components(apriltag_detector_t *td, timeprofile_t *tp, image_u8_t* threshim, int w, int h, int ts) {

	unionfind_t *uf = unionfind_create(w * h);
	timeprofile_stamp(tp, "create_uf");

	do_unionfind_first_line(uf, threshim, h, w, ts);
	for (int y = 1; y < h; y++) {
		do_unionfind_line2(uf, threshim, h, w, ts, y);
	}

    return uf;
}

float pt_compare_angle(struct pt *a, struct pt *b) {
    return a->slope - b->slope;
}

static inline void ptsort(struct pt *pts, int sz)
{
#define MAYBE_SWAP(arr,apos,bpos)                                   \
    if (pt_compare_angle(&(arr[apos]), &(arr[bpos])) > 0) {                        \
        tmp = arr[apos]; arr[apos] = arr[bpos]; arr[bpos] = tmp;    \
    };

    if (sz <= 1)
        return;

    if (sz == 2) {
        struct pt tmp;
        MAYBE_SWAP(pts, 0, 1);
        return;
    }

    // NB: Using less-branch-intensive sorting networks here on the
    // hunch that it's better for performance.
    if (sz == 3) { // 3 element bubble sort is optimal//冒泡排序最优
        struct pt tmp;
        MAYBE_SWAP(pts, 0, 1);
        MAYBE_SWAP(pts, 1, 2);
        MAYBE_SWAP(pts, 0, 1);
        return;
    }

    if (sz == 4) { // 4 element optimal sorting network.//四个元素的最优排序
        struct pt tmp;
        MAYBE_SWAP(pts, 0, 1); // sort each half, like a merge sort
        MAYBE_SWAP(pts, 2, 3);
        MAYBE_SWAP(pts, 0, 2); // minimum value is now at 0.
        MAYBE_SWAP(pts, 1, 3); // maximum value is now at end.
        MAYBE_SWAP(pts, 1, 2); // that only leaves the middle two.
        return;
    }
    if (sz == 5) {
        // this 9-step swap is optimal for a sorting network, but two
        // steps slower than a generic sort.
        struct pt tmp;
        MAYBE_SWAP(pts, 0, 1); // sort each half (3+2), like a merge sort
        MAYBE_SWAP(pts, 3, 4);
        MAYBE_SWAP(pts, 1, 2);
        MAYBE_SWAP(pts, 0, 1);
        MAYBE_SWAP(pts, 0, 3); // minimum element now at 0
        MAYBE_SWAP(pts, 2, 4); // maximum element now at end
        MAYBE_SWAP(pts, 1, 2); // now resort the three elements 1-3.
        MAYBE_SWAP(pts, 2, 3);
        MAYBE_SWAP(pts, 1, 2);
        return;
    }

#undef MAYBE_SWAP

    // a merge sort with temp storage.//归并排序

    struct pt *tmp = malloc(sizeof(struct pt) * sz);

    memcpy(tmp, pts, sizeof(struct pt) * sz);//拷贝了梯度信息

    int asz = sz/2;//sz表示有多少个像素点
    int bsz = sz - asz;

    struct pt *as = &tmp[0];
    struct pt *bs = &tmp[asz];

    ptsort(as, asz);//归并排序
    ptsort(bs, bsz);
    #define MERGE(apos,bpos)                        \
    if (pt_compare_angle(&(as[apos]), &(bs[bpos])) < 0)        \
        pts[outpos++] = as[apos++];             \
    else                                        \
        pts[outpos++] = bs[bpos++];

    int apos = 0, bpos = 0, outpos = 0;
    while (apos + 8 < asz && bpos + 8 < bsz) {
        MERGE(apos,bpos); MERGE(apos,bpos); MERGE(apos,bpos); MERGE(apos,bpos);
        MERGE(apos,bpos); MERGE(apos,bpos); MERGE(apos,bpos); MERGE(apos,bpos);
    }

    while (apos < asz && bpos < bsz) {
        MERGE(apos,bpos);
    }

    if (apos < asz)
        memcpy(&pts[outpos], &as[apos], (asz-apos)*sizeof(struct pt));
    if (bpos < bsz)
        memcpy(&pts[outpos], &bs[bpos], (bsz-bpos)*sizeof(struct pt));

    free(tmp);

#undef MERGE
}



/**
 * Compute statistics that allow line fit queries to be
 * efficiently computed for any contiguous range of indices.
 */
struct line_fit_pt* compute_lfps(int sz, zarray_t* cluster, image_u8_t* im) {
    struct line_fit_pt *lfps = calloc(sz, sizeof(struct line_fit_pt));

    for (int i = 0; i < sz; i++) {
        struct pt *p;
        zarray_get_volatile(cluster, i, &p);

        if (i > 0) {
            memcpy(&lfps[i], &lfps[i-1], sizeof(struct line_fit_pt));
        }

		// we now undo our fixed-point arithmetic.//现在撤销固定点运算
		double delta = 0.5; // adjust for pixel center bias
		double x = p->x * .5 + delta;//.5 = 0.5
		double y = p->y * .5 + delta;
		int ix = x, iy = y;
		double W = 1;

		if (ix > 0 && ix+1 < im->width && iy > 0 && iy+1 < im->height) {
			int grad_x = im->buf[iy * im->stride + ix + 1] -
				im->buf[iy * im->stride + ix - 1];

			int grad_y = im->buf[(iy+1) * im->stride + ix] -
				im->buf[(iy-1) * im->stride + ix];

			// XXX Tunable. How to shape the gradient magnitude?
			W = sqrt(grad_x*grad_x + grad_y*grad_y) + 1;
		}

		double fx = x, fy = y;

		lfps[i].Mx  += W * fx;//一阶原点矩
		lfps[i].My  += W * fy;
		lfps[i].Mxx += W * fx * fx;//二阶混合原点矩
		lfps[i].Mxy += W * fx * fy;
		lfps[i].Myy += W * fy * fy;
		lfps[i].W   += W;
    }
    return lfps;
}

// lfps contains *cumulative* moments for N points, with
// index j reflecting points [0,j] (inclusive).
//
// fit a line to the points [i0, i1] (inclusive). i0, i1 are both [0,
// sz) if i1 < i0, we treat this as a wrap around.
void fit_line(struct line_fit_pt *lfps, int sz, int i0, int i1, double *lineparm, double *err, double *mse)
{
    assert(i0 != i1);
    assert(i0 >= 0 && i1 >= 0 && i0 < sz && i1 < sz);

    double Mx, My, Mxx, Myy, Mxy, W;
    int N; // how many points are included in the set?//这组数据集一共有多少个点

    if (i0 < i1) {
        N = i1 - i0 + 1;

        Mx  = lfps[i1].Mx;
        My  = lfps[i1].My;
        Mxx = lfps[i1].Mxx;
        Mxy = lfps[i1].Mxy;
        Myy = lfps[i1].Myy;
        W   = lfps[i1].W;

        if (i0 > 0) {
            Mx  -= lfps[i0-1].Mx;
            My  -= lfps[i0-1].My;
            Mxx -= lfps[i0-1].Mxx;
            Mxy -= lfps[i0-1].Mxy;
            Myy -= lfps[i0-1].Myy;
            W   -= lfps[i0-1].W;
        }
    //i0到i1的各个点的矩和
    } else {
        // i0 > i1, e.g. [15, 2]. Wrap around.
        assert(i0 > 0);

        Mx  = lfps[sz-1].Mx   - lfps[i0-1].Mx;
        My  = lfps[sz-1].My   - lfps[i0-1].My;
        Mxx = lfps[sz-1].Mxx  - lfps[i0-1].Mxx;
        Mxy = lfps[sz-1].Mxy  - lfps[i0-1].Mxy;
        Myy = lfps[sz-1].Myy  - lfps[i0-1].Myy;
        W   = lfps[sz-1].W    - lfps[i0-1].W;

        Mx  += lfps[i1].Mx;
        My  += lfps[i1].My;
        Mxx += lfps[i1].Mxx;
        Mxy += lfps[i1].Mxy;
        Myy += lfps[i1].Myy;
        W   += lfps[i1].W;

        N = sz - i0 + i1 + 1;
    }

    assert(N >= 2);
//这一块比较抽象了………………
    double Ex = Mx / W;
    double Ey = My / W;
    double Cxx = Mxx / W - Ex*Ex;
    double Cxy = Mxy / W - Ex*Ey;
    double Cyy = Myy / W - Ey*Ey;

    //if (1) {
    //    // on iOS about 5% of total CPU spent in these trig functions.
    //    // 85 ms per frame on 5S, example.pnm
    //    //
    //    // XXX this was using the double-precision atan2. Was there a case where
    //    // we needed that precision? Seems doubtful.
    //    double normal_theta = .5 * atan2f(-2*Cxy, (Cyy - Cxx));
    //    nx_old = cosf(normal_theta);
    //    ny_old = sinf(normal_theta);
    //}

    // Instead of using the above cos/sin method, pose it as an eigenvalue problem.
    double eig_small = 0.5*(Cxx + Cyy - sqrtf((Cxx - Cyy)*(Cxx - Cyy) + 4*Cxy*Cxy));//协方差矩阵的特征值，是两个轴方向的方差，小的那个，也就是第二主成分

    if (lineparm) {
        lineparm[0] = Ex; //中心点x坐标
        lineparm[1] = Ey; //中心点y坐标

        double eig = 0.5*(Cxx + Cyy + sqrtf((Cxx - Cyy)*(Cxx - Cyy) + 4*Cxy*Cxy));//特征值大的那个，第一主成分
        double nx1 = Cxx - eig;
        double ny1 = Cxy;
        double M1 = nx1*nx1 + ny1*ny1;//法向量
        double nx2 = Cxy;
        double ny2 = Cyy - eig;
        double M2 = nx2*nx2 + ny2*ny2;

        double nx, ny, M;
        if (M1 > M2) {
            nx = nx1;
            ny = ny1;
            M = M1;
        } else {
            nx = nx2;
            ny = ny2;
            M = M2;
        }

        double length = sqrtf(M);
        lineparm[2] = nx/length;
        lineparm[3] = ny/length;
    }

    // sum of squared errors =
    //
    // SUM_i ((p_x - ux)*nx + (p_y - uy)*ny)^2
    // SUM_i  nx*nx*(p_x - ux)^2 + 2nx*ny(p_x -ux)(p_y-uy) + ny*ny*(p_y-uy)*(p_y-uy)
    //  nx*nx*SUM_i((p_x -ux)^2) + 2nx*ny*SUM_i((p_x-ux)(p_y-uy)) + ny*ny*SUM_i((p_y-uy)^2)
    //
    //  nx*nx*N*Cxx + 2nx*ny*N*Cxy + ny*ny*N*Cyy

    // sum of squared errors//误差平方和
    if (err)
        *err = N*eig_small;

    // mean squared error//均方误差
    if (mse)
        *mse = eig_small;
}

int err_compare_descending(const void *_a, const void *_b)
{
    const double *a =  _a;
    const double *b =  _b;

    return ((*a) < (*b)) ? 1 : -1;
}



int quad_segment_maxima(apriltag_detector_t *td, zarray_t *cluster, struct line_fit_pt *lfps, int indices[4])
{
    int sz = zarray_size(cluster);

    // ksz: when fitting points, how many points on either side do we consider?
    // (actual "kernel" width is 2ksz).
    //
    // This value should be about: 0.5 * (points along shortest edge).
    //
    // If all edges were equally-sized, that would give a value of
    // sz/8. We make it somewhat smaller to account for tags at high
    // aspects.

    // XXX Tunable. Maybe make a multiple of JPEG block size to increase robustness
    // to JPEG compression artifacts?

    int ksz = imin(20, sz / 12);

    // can't fit a quad if there are too few points.
    if (ksz < 2)
        return 0;

    double *errs = malloc(sizeof(double)*sz);

    for (int i = 0; i < sz; i++) {
        fit_line(lfps, sz, (i + sz - ksz) % sz, (i + ksz) % sz, NULL, &errs[i], NULL);
    }

    // apply a low-pass filter to errs//貌似是高斯滤波，存疑
    if (1) {
        double *y = malloc(sizeof(double)*sz);

        // how much filter to apply?

        // XXX Tunable
        double sigma = 1; // was 3 //标准差

        // cutoff = exp(-j*j/(2*sigma*sigma));
        // log(cutoff) = -j*j / (2*sigma*sigma)
        // log(cutoff)*2*sigma*sigma = -j*j;

        // how big a filter should we use? We make our kernel big
        // enough such that we represent any values larger than
        // 'cutoff'.

        // XXX Tunable (though not super useful to change)
        double cutoff = 0.05;
        int fsz = sqrt(-log(cutoff)*2*sigma*sigma) + 1;
        fsz = 2*fsz + 1;

        // For default values of cutoff = 0.05, sigma = 3,
        // we have fsz = 17.
        float *f = malloc(sizeof(float)*fsz);

        for (int i = 0; i < fsz; i++) {
            int j = i - fsz / 2;
            f[i] = exp(-j*j/(2*sigma*sigma));
        }

        for (int iy = 0; iy < sz; iy++) {
            double acc = 0;

            for (int i = 0; i < fsz; i++) {
                acc += errs[(iy + i - fsz / 2 + sz) % sz] * f[i];
            }
            y[iy] = acc;
        }

        memcpy(errs, y, sizeof(double)*sz);
        free(y);
        free(f);
    }

    int *maxima = malloc(sizeof(int)*sz);//极值点所在的索引号
    double *maxima_errs = malloc(sizeof(double)*sz);
    int nmaxima = 0;//有几个极大值点

    //寻找极大值点
    for (int i = 0; i < sz; i++) {
        if (errs[i] > errs[(i+1)%sz] && errs[i] > errs[(i+sz-1)%sz]) {
            maxima[nmaxima] = i;
            maxima_errs[nmaxima] = errs[i];
            nmaxima++;
        }
    }
    free(errs);

    // if we didn't get at least 4 maxima, we can't fit a quad.
    if (nmaxima < 4){
        free(maxima);
        free(maxima_errs);
        return 0;
    }

    // select only the best maxima if we have too many选10个最大的
    int max_nmaxima = td->qtp.max_nmaxima;//10

    if (nmaxima > max_nmaxima) {
        double *maxima_errs_copy = malloc(sizeof(double)*nmaxima);
        memcpy(maxima_errs_copy, maxima_errs, sizeof(double)*nmaxima);

        // throw out all but the best handful of maxima. Sorts descending.
        qsort(maxima_errs_copy, nmaxima, sizeof(double), err_compare_descending);//cmp函数的返回值，<0(不进行置换)，>0(进行置换)，0(不进行置换)。


        double maxima_thresh = maxima_errs_copy[max_nmaxima];
        int out = 0;
        for (int in = 0; in < nmaxima; in++) {
            if (maxima_errs[in] <= maxima_thresh)
                continue;
            maxima[out++] = maxima[in];
        }
        nmaxima = out;
        free(maxima_errs_copy);
    }

    free(maxima_errs);//实际上找的是极大值点的索引，而不是极大值点，也就是找角点

    int best_indices[4];
    double best_error = HUGE_VALF;//无穷大

    double err01, err12, err23, err30;
    double mse01, mse12, mse23, mse30;//mse mean square error均方误差
    double params01[4], params12[4], params23[4], params30[4];

    // disallow quads where the angle is less than a critical value.//禁用角度小于临界值的四边形
    double max_dot = td->qtp.cos_critical_rad; //25*M_PI/180);//实际上是10*π/180

    //套了四个循环
    for (int m0 = 0; m0 < nmaxima - 3; m0++) {
        int i0 = maxima[m0];

        for (int m1 = m0+1; m1 < nmaxima - 2; m1++) {
            int i1 = maxima[m1];

            fit_line(lfps, sz, i0, i1, params01, &err01, &mse01);

            if (mse01 > td->qtp.max_line_fit_mse) //最大的均方误差10，偏离太多也不行，不接近直线
                continue;

            for (int m2 = m1+1; m2 < nmaxima - 1; m2++) {
                int i2 = maxima[m2];

                fit_line(lfps, sz, i1, i2, params12, &err12, &mse12);
                if (mse12 > td->qtp.max_line_fit_mse)
                    continue;

                double dot = params01[2]*params12[2] + params01[3]*params12[3];
                if (fabs(dot) > max_dot)//小于10度，无法接受
                    continue;

                for (int m3 = m2+1; m3 < nmaxima; m3++) {
                    int i3 = maxima[m3];

                    fit_line(lfps, sz, i2, i3, params23, &err23, &mse23);
                    if (mse23 > td->qtp.max_line_fit_mse)
                        continue;

                    fit_line(lfps, sz, i3, i0, params30, &err30, &mse30);
                    if (mse30 > td->qtp.max_line_fit_mse)
                        continue;

                    double err = err01 + err12 + err23 + err30;
                    if (err < best_error) {
                        best_error = err;//终于找到最接近四边形的角点
                        best_indices[0] = i0;
                        best_indices[1] = i1;
                        best_indices[2] = i2;
                        best_indices[3] = i3;
                    }
                }
            }
        }
    }

    free(maxima);

    if (best_error == HUGE_VALF)
        return 0;

    for (int i = 0; i < 4; i++)
        indices[i] = best_indices[i];

    if (best_error / sz < td->qtp.max_line_fit_mse)
        return 1;
    return 0;
}


// return 1 if the quad looks okay, 0 if it should be discarded
int fit_quad(
        apriltag_detector_t *td,
        image_u8_t *im,
        zarray_t *cluster,
        struct quad *quad,
        int tag_width,
        u8 normal_border,
        u8 reversed_border
		){
    int res = 0;

    int sz = zarray_size(cluster);//该聚类有多少个像素点

    if (sz < 24) // Synchronize with later check.
        return 0;

    /////////////////////////////////////////////////////////////
    // Step 1. Sort points so they wrap around the center of the
    // quad. We will constrain our quad fit to simply partition this
    // ordered set into 4 groups.

    // compute a bounding box so that we can order the points
    // according to their angle WRT the center.
    //计算一个边界框
    struct pt *p1;
    zarray_get_volatile(cluster, 0, &p1);

    uint16_t xmax = p1->x;
    uint16_t xmin = p1->x;
    uint16_t ymax = p1->y;
    uint16_t ymin = p1->y;

    for (int pidx = 1; pidx < zarray_size(cluster); pidx++) {
        struct pt *p;
        zarray_get_volatile(cluster, pidx, &p);

        if (p->x > xmax) {
            xmax = p->x;
        } else if (p->x < xmin) {
            xmin = p->x;
        }

        if (p->y > ymax) {
            ymax = p->y;
        } else if (p->y < ymin) {
            ymin = p->y;
        }
    }
    //算法复杂度是O(n)



    if ((xmax - xmin)*(ymax - ymin) < tag_width) {
        return 0;
    }
    //tag_width = 4
    // add some noise to (cx,cy) so that pixels get a more diverse set
    // of theta estimates. This will help us remove more points.
    // (Only helps a small amount. The actual noise values here don't
    // matter much at all, but we want them [-1, 1]. (XXX with
    // fixed-point, should range be bigger?)
    float cx = (xmin + xmax) * 0.5 + 0.05118;
    float cy = (ymin + ymax) * 0.5 + -0.028581;

    float dot = 0;

    float quadrants[2][2] = {{-1*(2 << 15), 0}, {2*(2 << 15), 2 << 15}};//象限

    for (int pidx = 0; pidx < zarray_size(cluster); pidx++) {
        struct pt *p;
        zarray_get_volatile(cluster, pidx, &p);

        float dx = p->x - cx;
        float dy = p->y - cy;

        dot += dx*p->gx + dy*p->gy;//梯度总是指向白色区域，内黑外白，点积也就是夹角是正数，梯度总是指向函数值数值增大的方向

        float quadrant = quadrants[dy > 0][dx > 0];


        if (dy < 0) {
            dy = -dy;
            dx = -dx;
        }

        if (dx < 0) {
            float tmp = dx;
            dx = dy;
            dy = -tmp;
        }

        p->slope = quadrant + dy/dx;//斜率
    }

    // Ensure that the black border is inside the white border.
    quad->reversed_border = dot < 0;//reversed_border = 0;normal_border = 1,所以dot必须大于0
    if (!reversed_border && quad->reversed_border) {
        return 0;
    }
    if (!normal_border && !quad->reversed_border) {
        return 0;
    }



    // we now sort the points according to theta. This is a prepatory
    // step for segmenting them into four lines.
    if (1) {
        ptsort((struct pt*) cluster->data, zarray_size(cluster));//归并排序，以x轴负半轴为起点，顺时针转一圈，小的在前面

        // remove duplicate points. (A byproduct of our segmentation system.)//删除重复点（分割系统的副产品）相当于删除有序数组中的重复项，双指针
        if (1) {
            int outpos = 1;

            struct pt *last;
            zarray_get_volatile(cluster, 0, &last);

            for (int i = 1; i < sz; i++) {

                struct pt *p;
                zarray_get_volatile(cluster, i, &p);

                if (p->x != last->x || p->y != last->y) {
                    //重复点都是挨着的
                    if (i != outpos)  {
                        struct pt *out;
                        zarray_get_volatile(cluster, outpos, &out);
                        memcpy(out, p, sizeof(struct pt));
                    }

                    outpos++;
                }

                last = p;
            }

            cluster->size = outpos;
            sz = outpos;
        }

    }

    if (sz < 24)
        return 0;

    //timeprofile_stamp(tp, "dot sort");

    //step2. 直线拟合,计算图像距
    struct line_fit_pt *lfps = compute_lfps(sz, cluster, im);


    int indices[4];//index的复数

    //进行四边形查找的最关键步骤
	if (!quad_segment_maxima(td, cluster, lfps, indices))
		goto finish;

	//timeprofile_stamp(tp, "quad_segment_maxima");

	double lines[4][4];

    for (int i = 0; i < 4; i++) {
        int i0 = indices[i];
        int i1 = indices[(i+1)&3];

        double err;
        fit_line(lfps, sz, i0, i1, lines[i], NULL, &err);

        if (err > td->qtp.max_line_fit_mse) {
            res = 0;
            goto finish;
        }
    }

    for (int i = 0; i < 4; i++) {
        // solve for the intersection of lines (i) and (i+1)&3.
        // p0 + lambda0*u0 = p1 + lambda1*u1, where u0 and u1
        // are the line directions.
        //
        // lambda0*u0 - lambda1*u1 = (p1 - p0)
        //
        // rearrange (solve for lambdas)
        //
        // [u0_x   -u1_x ] [lambda0] = [ p1_x - p0_x ]
        // [u0_y   -u1_y ] [lambda1]   [ p1_y - p0_y ]
        //
        // remember that lines[i][0,1] = p//质心坐标, lines[i][2,3] = NORMAL vector.//法向量
        // We want the unit vector, so we need the perpendiculars. Thus, below
        // we have swapped the x and y components and flipped the y components.由法向量求直线方向

        double A00 =  lines[i][3],  A01 = -lines[(i+1)&3][3];
        double A10 =  -lines[i][2],  A11 = lines[(i+1)&3][2];
        double B0 = -lines[i][0] + lines[(i+1)&3][0];
        double B1 = -lines[i][1] + lines[(i+1)&3][1];

        double det = A00 * A11 - A10 * A01;//行列式的模

        // inverse.
        double W00 = A11 / det, W01 = -A01 / det;
        if (fabs(det) < 0.001) {
            res = 0;//行列式的值为0，不可逆
            goto finish;
        }

        // solve
        double L0 = W00*B0 + W01*B1;//克拉默法则

        // compute intersection//计算端点坐标
        quad->p[i][0] = lines[i][0] + L0*A00;
        quad->p[i][1] = lines[i][1] + L0*A10;

        res = 1;
    }

    // reject quads that are too small//太小的不要
    if (1) {
        double area = 0;

        // get area of triangle formed by points 0, 1, 2, 0
        double length[3], p;
        for (int i = 0; i < 3; i++) {
            int idxa = i; // 0, 1, 2,
            int idxb = (i+1) % 3; // 1, 2, 0
            length[i] = sqrt(sq(quad->p[idxb][0] - quad->p[idxa][0]) +
                             sq(quad->p[idxb][1] - quad->p[idxa][1]));
        }
        p = (length[0] + length[1] + length[2]) / 2;

        area += sqrt(p*(p-length[0])*(p-length[1])*(p-length[2]));

        // get area of triangle formed by points 2, 3, 0, 2
        for (int i = 0; i < 3; i++) {
            int idxs[] = { 2, 3, 0, 2 };
            int idxa = idxs[i];
            int idxb = idxs[i+1];
            length[i] = sqrt(sq(quad->p[idxb][0] - quad->p[idxa][0]) +
                             sq(quad->p[idxb][1] - quad->p[idxa][1]));
        }
        p = (length[0] + length[1] + length[2]) / 2;

        area += sqrt(p*(p-length[0])*(p-length[1])*(p-length[2]));//海伦公式

        if (area < 0.95*tag_width*tag_width) {
            res = 0;
            goto finish;
        }//最小宽度是4
    }

    // reject quads whose cumulative angle change isn't equal to 2PI
    if (1) {
        for (int i = 0; i < 4; i++) {
            int i0 = i, i1 = (i+1)&3, i2 = (i+2)&3;

            double dx1 = quad->p[i1][0] - quad->p[i0][0];
            double dy1 = quad->p[i1][1] - quad->p[i0][1];
            double dx2 = quad->p[i2][0] - quad->p[i1][0];
            double dy2 = quad->p[i2][1] - quad->p[i1][1];
            double cos_dtheta = (dx1*dx2 + dy1*dy2)/sqrt((dx1*dx1 + dy1*dy1)*(dx2*dx2 + dy2*dy2));
            //小于10度，大于170度
            if ((cos_dtheta > td->qtp.cos_critical_rad || cos_dtheta < -td->qtp.cos_critical_rad) || dx1*dy2 < dy1*dx2) {
                res = 0;
                goto finish;//
            }
        }
    }


  finish:

    free(lfps);

    return res;
}

zarray_t* fit_quads(apriltag_detector_t *td, int w, int h, zarray_t* clusters, image_u8_t* im) {

	zarray_t *quads = zarray_create(sizeof(struct quad));

    u8 normal_border = 0;
    u8 reversed_border = 0;

    int min_tag_width = 1000000;//标签最小宽度

    min_tag_width = td->tag_family->width_at_border;
    normal_border |= !td->tag_family->reversed_border;
    reversed_border |= td->tag_family->reversed_border;

    min_tag_width /= td->quad_decimate;

    if (min_tag_width < 3) {
        min_tag_width = 3;
    }

    int sz = zarray_size(clusters);//聚类的数量

    for (int i = 0; i < sz; i++) {
        zarray_t *cluster;
        zarray_get(clusters, i, &cluster);

        if (zarray_size(cluster) < td->qtp.min_cluster_pixels)
            continue;

        // a cluster should contain only boundary points around the
        // tag. it cannot be bigger than the whole screen. (Reject
        // large connected blobs that will be prohibitively slow to
        // fit quads to.) A typical point along an edge is added three
        // times (because it has 3 neighbors). The maximum perimeter
        // is 2w+2h.
        if (zarray_size(cluster) > 3*(2*w+2*h)) {
            continue;
        }

        struct quad quad;
        memset(&quad, 0, sizeof(struct quad));

    	if (fit_quad(td, im, cluster, &quad, min_tag_width, normal_border, reversed_border)) {
    		zarray_add(quads, &quad);
    	}
    }

    return quads;
}


zarray_t *apriltag_quad_thresh(apriltag_detector_t *td, image_u8_t *im, timeprofile_t *tp)
{
    ////////////////////////////////////////////////////////
    // step 1. threshold the image, creating the edge image.

    int w = im->width, h = im->height;

    image_u8_t *threshim = threshold(td, im, tp);//完成了自适应阈值分割
    int ts = threshim->stride;

    //自适应阈值分割后的图像
    if (debug_flag == 1)
    {
    	XGpioPs_WritePin(&Gpio, GPIO_LED2_PIN, 0); //turn off the LED1
    	image_u8_write_pnm("1:/threshim.pnm", threshim, &fil);
    	//sd_write_data("1:/threshim.bin", threshim->buf, threshim->height * threshim->stride, &fil);
    }

    ////////////////////////////////////////////////////////
    // step 2. find connected components.
    unionfind_t* uf = connected_components(td, tp, threshim, w, h, ts);

    // 边界分割的图像 make segmentation image.
    if (debug_flag == 1)
    {
        image_u8x4_t *d = image_u8x4_create_calloc(w, h);

        uint32_t *colors = (uint32_t*) calloc(w*h, sizeof(*colors));

        for (int y = 0; y < h; y++) {
            for (int x = 0; x < w; x++) {
                uint32_t v = unionfind_get_representative(uf, y*w+x);

                if (unionfind_get_set_size(uf, v) < td->qtp.min_cluster_pixels)
                    continue;

                uint32_t color = colors[v];
                uint8_t r = color >> 16,
                    g = color >> 8,
                    b = color;

                if (color == 0) {
                    const int bias = 50;
                    r = bias + (random() % (200-bias));
                    g = bias + (random() % (200-bias));
                    b = bias + (random() % (200-bias));
                    colors[v] = (r << 16) | (g << 8) | b;
                }

                d->buf[y*d->stride + 4*x + 0] = r;
                d->buf[y*d->stride + 4*x + 1] = g;
                d->buf[y*d->stride + 4*x + 2] = b;
            }
        }

        bmp_write("1:/segmentation.bmp", (char *)&BMODE_640x360, (char *)d->buf, 640*4, &fil);
        free(colors);
        image_u8x4_destroy(d);
    }

    timeprofile_stamp(tp, "unionfind");

    zarray_t* clusters = gradient_clusters(td, threshim, w, h, ts, uf);

    //边缘图像
    if (debug_flag == 1) {
         image_u8x4_t *d = image_u8x4_create_calloc(w, h);

         for (int i = 0; i < zarray_size(clusters); i++) {
             zarray_t *cluster;
             zarray_get(clusters, i, &cluster);

             uint32_t r, g, b;

             if (1) {
                 const int bias = 50;
                 r = bias + (random() % (200-bias));
                 g = bias + (random() % (200-bias));
                 b = bias + (random() % (200-bias));
             }

             for (int j = 0; j < zarray_size(cluster); j++) {
                 struct pt *p;
                 zarray_get_volatile(cluster, j, &p);

                 int x = p->x / 2;
                 int y = p->y / 2;
                 d->buf[y*d->stride + 4*x + 0] = r;
                 d->buf[y*d->stride + 4*x + 1] = g;
                 d->buf[y*d->stride + 4*x + 2] = b;
             }
         }

         bmp_write("1:/clusters.bmp", (char *)&BMODE_640x360, (char *)d->buf, 640*4, &fil);

         image_u8x4_destroy(d);
     }

    timeprofile_stamp(tp, "make clusters");

    ////////////////////////////////////////////////////////
    // step 3. process each connected component.

    zarray_t* quads = fit_quads(td, w, h, clusters, im);

    timeprofile_stamp(tp, "fit quads to clusters");

    //要进行四副图像的拼接，左上角预处理图像，右上角阈值分割后的图像，左下角连通域查找，右下角边缘分割
    if (stFsm.stCurState == EDGE_SEGMENTATION)
    {
    	//清除上一幅图像留下的
    	memset(colors, 0, VIDEO_COLUMNS/2 * VIDEO_ROWS/2 * sizeof(u32));

    	//step1.填充预处理图像
    	for (int y = 0; y < h; y++) {
    		for (int x = 0; x < w; x++) {
    			simu_buf[y*2*w*4 + 4*x + 0] = im->buf[y*im->width + x];
    			simu_buf[y*2*w*4 + 4*x + 1] = im->buf[y*im->width + x];
    			simu_buf[y*2*w*4 + 4*x + 2] = im->buf[y*im->width + x];
    		}
    	}

    	//step2.填充自适应阈值分割图像
    	for (int y = 0; y < h; y++) {
    		for (int x = 0; x < w; x++) {
    			simu_buf[y*2*w*4 + 4*(x+w) + 0] = threshim->buf[y*threshim->stride + x];
    			simu_buf[y*2*w*4 + 4*(x+w) + 1] = threshim->buf[y*threshim->stride + x];
    			simu_buf[y*2*w*4 + 4*(x+w) + 2] = threshim->buf[y*threshim->stride + x];
    		}
    	}


    	//step3.填充连通域图像

    	for (int y = 0; y < h; y++) {
    		for (int x = 0; x < w; x++) {

    			simu_buf[(y+h)*2*w*4 + 4*x + 0] = 0;
    			simu_buf[(y+h)*2*w*4 + 4*x + 1] = 0;
    			simu_buf[(y+h)*2*w*4 + 4*x + 2] = 0;

    			uint32_t v = unionfind_get_representative(uf, y*w+x);


                if (unionfind_get_set_size(uf, v) < td->qtp.min_cluster_pixels)
                    continue;
                u32 color = colors[v];
                u8 	r = color >> 16,
                    g = color >> 8,
                    b = color;

                if (color == 0) {
                    const int bias = 50;
                    r = bias + (random() % (200-bias));
                    g = bias + (random() % (200-bias));
                    b = bias + (random() % (200-bias));
                    colors[v] = (r << 16) | (g << 8) | b;
                }

    			simu_buf[(y+h)*2*w*4 + 4*x + 0] = r;
    			simu_buf[(y+h)*2*w*4 + 4*x + 1] = g;
    			simu_buf[(y+h)*2*w*4 + 4*x + 2] = b;
    		}
    	}

    	//step4 边缘分割图像

    	for (int y = 0; y < h; y++) {
    		for (int x = 0; x < w; x++) {
				 simu_buf[(y+h)*2*w*4 + 4*(x+w) + 0] = 0;
				 simu_buf[(y+h)*2*w*4 + 4*(x+w) + 1] = 0;
				 simu_buf[(y+h)*2*w*4 + 4*(x+w) + 2] = 0;
    		}
    	}

		 for (int i = 0; i < zarray_size(clusters); i++) {
			 zarray_t *cluster;
			 zarray_get(clusters, i, &cluster);

			 uint32_t r, g, b;

			 if (1) {
				 const int bias = 50;
				 r = bias + (random() % (200-bias));
				 g = bias + (random() % (200-bias));
				 b = bias + (random() % (200-bias));
			 }

			 for (int j = 0; j < zarray_size(cluster); j++) {
				 struct pt *p;
				 zarray_get_volatile(cluster, j, &p);

				 int x = p->x / 2;
				 int y = p->y / 2;

				 simu_buf[(y+h)*2*w*4 + 4*(x+w) + 0] = r;
				 simu_buf[(y+h)*2*w*4 + 4*(x+w) + 1] = g;
				 simu_buf[(y+h)*2*w*4 + 4*(x+w) + 2] = b;
			 }
		 }

		FrameBuffer.Address = (INTPTR)simu_buf;
		XDpDma_DisplayGfxFrameBuffer(RunCfg.DpDmaPtr, &FrameBuffer);
    }

    timeprofile_stamp(tp, "edge_segmentation_display");

    for (int i = 0; i < zarray_size(clusters); i++) {
        zarray_t *cluster;
        zarray_get(clusters, i, &cluster);
        zarray_destroy(cluster);//释放所有聚类
    }
    zarray_destroy(clusters);//释放聚类组

    unionfind_destroy(uf);
    image_u8_destroy(threshim);

    return quads;
}


zarray_t* gradient_clusters(apriltag_detector_t *td, image_u8_t* threshim, int w, int h, int ts, unionfind_t* uf) {

	zarray_t* clusters_hush;

	int nclustermap = 0.2*w*h;

	clusters_hush = do_gradient_clusters(threshim, ts, 1, h-1, w, nclustermap, uf);

	zarray_t* clusters = zarray_create(sizeof(zarray_t*));

    zarray_ensure_capacity(clusters, zarray_size(clusters_hush));

    for (int i = 0; i < zarray_size(clusters_hush); i++)
    {
        struct cluster_hash* hash;
        zarray_get(clusters_hush, i, &hash);
        zarray_add(clusters, &hash->data);
        free(hash); //释放的结构体的值
    }

    zarray_destroy(clusters_hush);//释放的地址值

    return clusters;
}

zarray_t* do_gradient_clusters(image_u8_t* threshim, int ts, int y0, int y1, int w, int nclustermap, unionfind_t* uf) {
	zarray_t* clusters = zarray_create(sizeof(struct cluster_hash*));

	struct uint64_zarray_entry **clustermap = calloc(nclustermap, sizeof(struct uint64_zarray_entry*));//哈希查找表，二维指针
    /*哈希桶，主要是为了避免哈希冲突*/

    int mem_chunk_size = 2048;//内存块
    struct uint64_zarray_entry** mem_pools = malloc(sizeof(struct uint64_zarray_entry *)*(1 + 2 * nclustermap / mem_chunk_size)); // SmodeTech: avoid memory corruption when nclustermap < mem_chunk_size
    int mem_pool_idx = 0;
    int mem_pool_loc = 0;
    mem_pools[mem_pool_idx] = calloc(mem_chunk_size, sizeof(struct uint64_zarray_entry));

    for (int y = y0; y < y1; y++) {
        for (int x = 1; x < w-1; x++) {

            uint8_t v0 = threshim->buf[y*ts + x];
            if (v0 == 127)
                continue;//对比度低，不处理

            // XXX don't query this until we know we need it?
            uint64_t rep0 = unionfind_get_representative(uf, y*w + x);
            if (unionfind_get_set_size(uf, rep0) < 25) {
                continue;
            }//连通域结点数量必须大于25，才做分析

            // whenever we find two adjacent pixels such that one is
            // white and the other black, we add the point half-way
            // between them to a cluster associated with the unique
            // ids of the white and black regions.
            //
            // We additionally compute the gradient direction (i.e., which
            // direction was the white pixel?) Note: if (v1-v0) == 255, then
            // (dx,dy) points towards the white pixel. if (v1-v0) == -255, then
            // (dx,dy) points towards the black pixel. p.gx and p.gy will thus
            // be -255, 0, or 255.
            //
            // Note that any given pixel might be added to multiple
            // different clusters. But in the common case, a given
            // pixel will be added multiple times to the same cluster,
            // which increases the size of the cluster and thus the
            // computational costs.
            //
            // A possible optimization would be to combine entries
            // within the same cluster.

            //当把一个指针作为条件表达式时，所要判断的条件实际上就是“该指针是否为一空指针”，如果一个指针是空指针，那么它的值为0
#define DO_CONN(dx, dy)                                                 \
            if (1) {                                                    \
                uint8_t v1 = threshim->buf[(y + dy)*ts + x + dx];       \
                                                                        \
                if (v0 + v1 == 255) {                                   \
                    uint64_t rep1 = unionfind_get_representative(uf, (y + dy)*w + x + dx); \
                    if (unionfind_get_set_size(uf, rep1) > 24) {        \
                        uint64_t clusterid;                                 \
                        if (rep0 < rep1)                                    \
                            clusterid = (rep1 << 32) + rep0;                \
                        else                                                \
                            clusterid = (rep0 << 32) + rep1;                \
                                                                            \
                        uint32_t clustermap_bucket = u64hash_2(clusterid) % nclustermap; \
                        struct uint64_zarray_entry *entry = clustermap[clustermap_bucket]; \
                        while (entry && entry->id != clusterid) {           \
                            entry = entry->next;                            \
                        }                                                   \
                        if (!entry) {                                       \
                            if (mem_pool_loc == mem_chunk_size) {           \
                                mem_pool_loc = 0;                           \
                                mem_pool_idx++;                             \
                                mem_pools[mem_pool_idx] = calloc(mem_chunk_size, sizeof(struct uint64_zarray_entry)); \
                            }                                               \
                            entry = mem_pools[mem_pool_idx] + mem_pool_loc; \
                            mem_pool_loc++;                                 \
                                                                            \
                            entry->id = clusterid;                          \
                            entry->cluster = zarray_create(sizeof(struct pt)); \
                            entry->next = clustermap[clustermap_bucket];    \
                            clustermap[clustermap_bucket] = entry;          \
                        }                                                \
                                                                            \
                        struct pt p = { .x = 2*x + dx, .y = 2*y + dy, .gx = dx*((int) v1-v0), .gy = dy*((int) v1-v0)}; \
                        zarray_add(entry->cluster, &p);					\
                    }                                                   \
                }                                                       \
            }


            // do 4 connectivity. NB: Arguments must be [-1, 1] or we'll overflow .gx, .gy
            DO_CONN(1, 0);//右边
            DO_CONN(0, 1);//下边

            // do 8 connectivity
            DO_CONN(-1, 1);//左下
            DO_CONN(1, 1);//右下
        }
    }

#undef DO_CONN
/*注意：
a、如果现存的名字需要被重新定义，那么旧定义首先必须用#undef移除；
b、如果标识符name当前没有被定义成一个宏名称，那么就会忽略该指令；
c、一旦定义预处理器标识符，它将保持已定义状态且在作用域内，直到程序结束或者使用#undef 指令取消定义。
d、#define 与 #undef 指令可以放在程序任何位置。
*/

    for (int i = 0; i < nclustermap; i++) {
        int start = zarray_size(clusters);//
        for (struct uint64_zarray_entry *entry = clustermap[i]; entry; entry = entry->next) {
            struct cluster_hash* cluster_hash = malloc(sizeof(struct cluster_hash));
            cluster_hash->hash = u64hash_2(entry->id) % nclustermap;//hash(key)
            cluster_hash->id = entry->id;//key
            cluster_hash->data = entry->cluster;//value
            zarray_add(clusters, &cluster_hash);//clusters的元素是cluser_hash的地址
        }
        int end = zarray_size(clusters);

        // Do a quick bubblesort on the secondary key.
        int n = end - start;
        for (int j = 0; j < n - 1; j++) {
            for (int k = 0; k < n - j - 1; k++) {
                struct cluster_hash* hash1;
                struct cluster_hash* hash2;
                zarray_get(clusters, start + k, &hash1);//坐标是被获取的，中间是指数，右边是获取的
                zarray_get(clusters, start + k + 1, &hash2);
                if (hash1->id > hash2->id) {
                    struct cluster_hash tmp = *hash2;
                    *hash2 = *hash1;
                    *hash1 = tmp;
                }
            }
        }
    }
    for (int i = 0; i <= mem_pool_idx; i++) {
        free(mem_pools[i]);
    }
    free(mem_pools);
    free(clustermap);

    return clusters;
}
