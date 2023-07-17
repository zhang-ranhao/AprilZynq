/****************************************************************/
/*	image_u8.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of image_u8.c
		 														*/
/****************************************************************/
/*  Revision History:
	6/6/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __IMAGE_U8_H__
#define __IMAGE_U8_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "..\..\..\Hardware\common\config.h"
#include "..\..\..\Hardware\Driver\ps_fs.h"
#include "image_types.h"
#include "xil_printf.h"
#include <string.h>
#include <stdlib.h>
#include <assert.h>
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */
// least common multiple of 64 (sandy bridge cache line) and 24 (stride
// needed for RGB in 8-wide vector processing)
#define DEFAULT_ALIGNMENT_U8 64


/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
void image_u8_destroy(image_u8_t *im);
image_u8_t *image_u8_decimate(image_u8_t *im, float ffactor);
image_u8_t *image_u8_create(unsigned int width, unsigned int height);
image_u8_t *image_u8_create_alignment(unsigned int width, unsigned int height, unsigned int alignment);
image_u8_t *image_u8_create_stride(unsigned int width, unsigned int height, unsigned int stride);
int image_u8_write_pnm(char *file_name, const image_u8_t *im, FIL *fil);
image_u8_t *image_u8_copy(const image_u8_t *in);
void image_u8_darken(image_u8_t *im);
void image_u8_draw_line(image_u8_t *im, float x0, float y0, float x1, float y1, int v, int width);
void image_u8_gaussian_blur(image_u8_t *im, double sigma, int ksz);


#endif
