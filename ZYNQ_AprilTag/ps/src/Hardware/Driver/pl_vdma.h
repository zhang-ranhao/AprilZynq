/****************************************************************/
/*	pl_vdma.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of pl_vdma.c
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __PL_VDMA_H__
#define __PL_VDMA_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "xil_printf.h"
#include "xaxivdma.h"
#include "xbasic_types.h"
#include "xscugic.h"

#include "../common/config.h"
#include "ps_gic.h"
#include "..\Application\dt_save.h"
#include "ps_dp.h"

#include "..\..\Software\apriltag\application\apriltag.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
extern u8 wr_color_index;
extern u8 wr_gray_index;
extern u8 wr_the_index;
extern u16 wr_fps;
extern u16 wr2_fps;
extern XAxiVdma Vdma_0;
extern XAxiVdma Vdma_1;
/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
int vdma_read_init(short DeviceID, short HoriSizeInput, short VertSizeInput, short Stride, unsigned int FrameStoreStartAddr);
int vdma_write_init_0(short DeviceID, short HoriSizeInput, short VertSizeInput, short Stride, u32 FrameStoreStartAddr, u8 video_format);
int vdma_write_init_1(short DeviceID, short HoriSizeInput, short VertSizeInput, short Stride, u32 FrameStoreStartAddr, u8 video_format);
int vdma_write_init_2(short DeviceID,short HoriSizeInput,short VertSizeInput,short Stride, u32 FrameStoreStartAddr, u8 video_format);

u32 vdma_version();
u8 get_write_frame(u8 video_format);
int SetupIntrSystem(XAxiVdma *AxiVdmaPtr, u16 WriteIntrId);
#endif /* VDMA_H_ */
