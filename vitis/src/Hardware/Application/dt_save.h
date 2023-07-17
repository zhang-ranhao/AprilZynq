/****************************************************************/
/*	dt_save.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of dt_save.c
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __DT_SAVE_H__
#define __DT_SAVE_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "..\Driver\ps_gpio.h"
#include "stdio.h"
#include "xtime_l.h"

#include "../Driver/pl_vdma.h"
#include "../common/bmp.h"
#include "../common/config.h"
#include "../Driver/ps_fs.h"

/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
typedef struct {
	u16 num;
	float dt_ms;
	XTime cnt_start;
	XTime cnt_end;
	u8 wr_index;
	char name[PHOTONAME_LENGTH];
	char path[PHOTOPATH_LENGTH];
}photo_t;

/*****************image data*************************************/
extern u8 gray_buf[DISPLAY_NUM_FRAMES][GRAY_FRAME_SIZE] __attribute__ ((aligned(256)));
extern u8 *pgray_buf[DISPLAY_NUM_FRAMES];

extern u8 color_buf[DISPLAY_NUM_FRAMES][FRAME_SIZE] __attribute__ ((aligned(256)));
extern u8 *pcolor_buf[DISPLAY_NUM_FRAMES]; 				/*array of pointers to the frame buffers*/

/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
void img_write_to_sd(u16 dt_ms);

#endif
