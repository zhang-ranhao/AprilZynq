/****************************************************************/
/*	image_u8.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the image_u8
		 														*/
/****************************************************************/
/*  Revision History:
	6/6/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "image_u8.h"
#include <math.h>
#include "math_util.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */

image_u8_t *image_u8_decimate(image_u8_t *im, float ffactor)
{
    int width = im->width, height = im->height;

    if (ffactor == 1.5) {
        int swidth = width / 3 * 2, sheight = height / 3 * 2;

        image_u8_t *decim = image_u8_create(swidth, sheight);

        int y = 0, sy = 0;
        while (sy < sheight) {
            int x = 0, sx = 0;
            while (sx < swidth) {

                // a b c
                // d e f
                // g h i
                uint8_t a = im->buf[(y+0)*im->stride + (x+0)];
                uint8_t b = im->buf[(y+0)*im->stride + (x+1)];
                uint8_t c = im->buf[(y+0)*im->stride + (x+2)];

                uint8_t d = im->buf[(y+1)*im->stride + (x+0)];
                uint8_t e = im->buf[(y+1)*im->stride + (x+1)];
                uint8_t f = im->buf[(y+1)*im->stride + (x+2)];

                uint8_t g = im->buf[(y+2)*im->stride + (x+0)];
                uint8_t h = im->buf[(y+2)*im->stride + (x+1)];
                uint8_t i = im->buf[(y+2)*im->stride + (x+2)];

                decim->buf[(sy+0)*decim->stride + (sx + 0)] =
                    (4*a+2*b+2*d+e)/9;
                decim->buf[(sy+0)*decim->stride + (sx + 1)] =
                    (4*c+2*b+2*f+e)/9;

                decim->buf[(sy+1)*decim->stride + (sx + 0)] =
                    (4*g+2*d+2*h+e)/9;
                decim->buf[(sy+1)*decim->stride + (sx + 1)] =
                    (4*i+2*f+2*h+e)/9;

                x += 3;
                sx += 2;
            }

            y += 3;
            sy += 2;
        }

        return decim;
    }

    int factor = (int) ffactor;

    int swidth = 1 + (width - 1)/factor;//分块
    int sheight = 1 + (height - 1)/factor;
    image_u8_t *decim = image_u8_create(swidth, sheight);
    int sy = 0;
    for (int y = 0; y < height; y += factor) {
        int sx = 0;
        for (int x = 0; x < width; x += factor) {
            decim->buf[sy*decim->stride + sx] = im->buf[y*im->stride + x];
            sx++;
        }
        sy++;
    }
    return decim;
}

image_u8_t *image_u8_create_stride(unsigned int width, unsigned int height, unsigned int stride)
{
    uint8_t *buf = malloc(stride * height * sizeof(uint8_t));    //注意这里是行跨度乘高度

    // const initializer
    image_u8_t tmp = { .width = width, .height = height, .stride = stride, .buf = buf };

    image_u8_t *im = malloc(1*sizeof(image_u8_t));
    memcpy(im, &tmp, sizeof(image_u8_t));
    return im;
}

image_u8_t *image_u8_create(unsigned int width, unsigned int height)
{
    return image_u8_create_alignment(width, height, DEFAULT_ALIGNMENT_U8);
}

image_u8_t *image_u8_create_alignment(unsigned int width, unsigned int height, unsigned int alignment)
{
    int stride = width;

    if ((stride % alignment) != 0)
        stride += alignment - (stride % alignment);

    return image_u8_create_stride(width, height, stride);
}


void image_u8_destroy(image_u8_t *im)
{
    if (!im)
        return;

    free(im->buf);
    free(im);
}

int image_u8_write_pnm(char *file_name, const image_u8_t *im, FIL *fil)
{
	UINT bw;         //Returns the number of bytes written
    //Open a file or create one if it does not exist
    f_open(fil, file_name, FA_CREATE_ALWAYS | FA_WRITE);

    //Move the file read/write pointer to the open file object 0: points to the beginning of the file
    f_lseek(fil, 0);

    // Only outputs to grayscale
    f_printf(fil, "P5\n%d %d\n255\n", im->width, im->height);

    for (int y = 0; y < im->height; y++) {
        f_write(fil, &im->buf[y*im->stride], im->width, &bw);
    }

    //close file
    f_close(fil);

    return 0;
}

image_u8_t *image_u8_copy(const image_u8_t *in)
{
    uint8_t *buf = malloc(in->height*in->stride*sizeof(uint8_t));
    memcpy(buf, in->buf, in->height*in->stride*sizeof(uint8_t));

    // const initializer
    image_u8_t tmp = { .width = in->width, .height = in->height, .stride = in->stride, .buf = buf };

    image_u8_t *copy = calloc(1, sizeof(image_u8_t));
    memcpy(copy, &tmp, sizeof(image_u8_t));
    return copy;
}

void image_u8_darken(image_u8_t *im)
{
    for (int y = 0; y < im->height; y++) {
        for (int x = 0; x < im->width; x++) {
            im->buf[im->stride*y+x] /= 2;
        }
    }
}

// only widths 1 and 3 supported (and 3 only badly)
void image_u8_draw_line(image_u8_t *im, float x0, float y0, float x1, float y1, int v, int width)
{
    double dist = sqrtf((y1-y0)*(y1-y0) + (x1-x0)*(x1-x0));
    double delta = 0.5 / dist;

    // terrible line drawing code
    for (float f = 0; f <= 1; f += delta) {
        int x = ((int) (x1 + (x0 - x1) * f));
        int y = ((int) (y1 + (y0 - y1) * f));

        if (x < 0 || y < 0 || x >= im->width || y >= im->height)
            continue;

        int idx = y*im->stride + x;
        im->buf[idx] = v;
        if (width > 1) {
            im->buf[idx+1] = v;
            im->buf[idx+im->stride] = v;
            im->buf[idx+1+im->stride] = v;
        }
    }
}

static void convolve(const uint8_t *x, uint8_t *y, int sz, const uint8_t *k, int ksz)
{
    assert((ksz&1)==1);

    for (int i = 0; i < ksz/2 && i < sz; i++)
        y[i] = x[i];

    for (int i = 0; i < sz - ksz; i++) {
        uint32_t acc = 0;

        for (int j = 0; j < ksz; j++)
            acc += k[j]*x[i+j];

        y[ksz/2 + i] = acc >> 8;
    }

    for (int i = sz - ksz + ksz/2; i < sz; i++)
        y[i] = x[i];
}

void image_u8_convolve_2D(image_u8_t *im, const uint8_t *k, int ksz)
{
    assert((ksz & 1) == 1); // ksz must be odd.

    for (int y = 0; y < im->height; y++) {

        uint8_t *x = malloc(sizeof(uint8_t)*im->stride);
        memcpy(x, &im->buf[y*im->stride], im->stride);

        convolve(x, &im->buf[y*im->stride], im->width, k, ksz);
        free(x);
    }


    for (int x = 0; x < im->width; x++) {
        uint8_t *xb = malloc(sizeof(uint8_t)*im->height);
        uint8_t *yb = malloc(sizeof(uint8_t)*im->height);

        for (int y = 0; y < im->height; y++)
            xb[y] = im->buf[y*im->stride + x];

        convolve(xb, yb, im->height, k, ksz);
        free(xb);

        for (int y = 0; y < im->height; y++)
            im->buf[y*im->stride + x] = yb[y];
        free(yb);
    }
}

void image_u8_gaussian_blur(image_u8_t *im, double sigma, int ksz)
{
    if (sigma == 0)
        return;

    assert((ksz & 1) == 1); // ksz must be odd.

    // build the kernel.
    double *dk = malloc(sizeof(double)*ksz);

    // for kernel of length 5:
    // dk[0] = f(-2), dk[1] = f(-1), dk[2] = f(0), dk[3] = f(1), dk[4] = f(2)
    for (int i = 0; i < ksz; i++) {
        int x = -ksz/2 + i;
        double v = exp(-.5*sq(x / sigma));
        dk[i] = v;
    }

    // normalize
    double acc = 0;
    for (int i = 0; i < ksz; i++)
        acc += dk[i];

    for (int i = 0; i < ksz; i++)
        dk[i] /= acc;
    //归一化主要是为了亮度不变形
    uint8_t *k = malloc(sizeof(uint8_t)*ksz);
    for (int i = 0; i < ksz; i++)
        k[i] = dk[i]*255;


    free(dk);

    image_u8_convolve_2D(im, k, ksz);
    free(k);
}










