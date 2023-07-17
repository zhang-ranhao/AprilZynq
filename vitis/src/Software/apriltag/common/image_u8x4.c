/****************************************************************/
/*	image_u8x3.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the ps uart
		 														*/
/****************************************************************/
/*  Revision History:
	6/1/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "image_u8x4.h"
#include <stdlib.h>
#include <string.h>
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */
// least common multiple of 64 (sandy bridge cache line) and 64 (stride needed
// for 16byte-wide RGBA processing).
#define DEFAULT_ALIGNMENT_U8X4 64
/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */

image_u8x4_t *image_u8x4_create(unsigned int width, unsigned int height)
{
    return image_u8x4_create_alignment(width, height, DEFAULT_ALIGNMENT_U8X4);
}

image_u8x4_t *image_u8x4_create_alignment(unsigned int width, unsigned int height, unsigned int alignment)
{
    int stride = 4*width;

    if ((stride % alignment) != 0)
        stride += alignment - (stride % alignment);

    uint8_t *buf = malloc(height*stride *sizeof(uint8_t));

    // const initializer
    image_u8x4_t tmp = { .width = width, .height = height, .stride = stride, .buf = buf };

    image_u8x4_t *im = malloc(1 * sizeof(image_u8x4_t));
    memcpy(im, &tmp, sizeof(image_u8x4_t));
    return im;
}

image_u8x4_t *image_u8x4_create_calloc(unsigned int width, unsigned int height)
{
    return image_u8x4_create_alignment_calloc(width, height, DEFAULT_ALIGNMENT_U8X4);
}

image_u8x4_t *image_u8x4_create_alignment_calloc(unsigned int width, unsigned int height, unsigned int alignment)
{
    int stride = 4*width;

    if ((stride % alignment) != 0)
        stride += alignment - (stride % alignment);

    uint8_t *buf = calloc(height*stride, sizeof(uint8_t));

    // const initializer
    image_u8x4_t tmp = { .width = width, .height = height, .stride = stride, .buf = buf };

    image_u8x4_t *im = calloc(1, sizeof(image_u8x4_t));
    memcpy(im, &tmp, sizeof(image_u8x4_t));
    return im;
}

// only width 1 supported
void image_u8x4_draw_line(image_u8x4_t *im, float x0, float y0, float x1, float y1, uint8_t rgb[3], int width)
{
    double dist = sqrtf((y1-y0)*(y1-y0) + (x1-x0)*(x1-x0));
    double delta = 0.5 / dist;

    // terrible line drawing code
    for (float f = 0; f <= 1; f += delta) {
        int x = ((int) (x1 + (x0 - x1) * f));
        int y = ((int) (y1 + (y0 - y1) * f));

        if (x < 0 || y < 0 || x >= im->width || y >= im->height)
            continue;

        int idx = y*im->stride + 4*x;
        for (int i = 0; i < 3; i++)
            im->buf[idx + i] = rgb[i];
    }
}

void image_u8x4_destroy(image_u8x4_t *im)
{
    if (!im)
        return;

    free(im->buf);
    free(im);
}


