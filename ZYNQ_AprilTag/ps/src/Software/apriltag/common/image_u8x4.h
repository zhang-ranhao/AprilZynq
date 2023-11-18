/****************************************************************/
/*	image_u8x3.h												*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of image_u8x4.c
		 														*/
/****************************************************************/
/*  Revision History:
	6/10/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __IMAGE_U8X4_H__
#define __IMAGE_U8X4_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "image_types.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
image_u8x4_t *image_u8x4_create(unsigned int width, unsigned int height);
image_u8x4_t *image_u8x4_create_alignment(unsigned int width, unsigned int height, unsigned int alignment);
image_u8x4_t *image_u8x4_create_alignment_calloc(unsigned int width, unsigned int height, unsigned int alignment);
image_u8x4_t *image_u8x4_create_calloc(unsigned int width, unsigned int height);
void image_u8x4_draw_line(image_u8x4_t *im, float x0, float y0, float x1, float y1, uint8_t rgb[3], int width);

void image_u8x4_destroy(image_u8x4_t *im);
#endif
