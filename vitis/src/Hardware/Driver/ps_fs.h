/****************************************************************/
/*	ps_fs.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of uart.c
		 														*/
/****************************************************************/
/*  Revision History:
	5/23/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __PS_FS_H__
#define __PS_FS_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "ff.h"
#include "xstatus.h"
#include "xil_printf.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
extern FIL fil;
/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
int platform_init_fs();
int sd_mount();
int sd_write_data(char *file_name, u8* src_addr, u32 byte_len, FIL *fil);
int sd_read_data(char *file_name, u8* src_addr, u32 byte_len, FIL *fil);
#endif
