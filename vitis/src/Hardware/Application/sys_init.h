
/****************************************************************/
/*	sys_init.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of sys_init.c
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __SYS_INIT_H__
#define __SYS_INIT_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "..\common\config.h"
#include "dt_save.h"
#include "xil_printf.h"
#include "xstatus.h"
#include "xil_cache.h"

#include "../common/ov5640.h"
#include "..\Driver\ps_uart.h"
#include "..\Driver\ps_iic.h"
#include "..\Driver\ps_dp.h"
#include "..\Driver\pl_vdma.h"
#include "..\Driver\ps_gpio.h"
#include "..\Driver\pl_demosaic.h"
#include "..\Driver\pl_gamma_lut.h"
#include "..\Driver\pl_mipi_csi_rx.h"
#include "..\Driver\ps_gic.h"
#include "..\Driver\ps_fs.h"
#include "..\Driver\ps_ttc.h"
#include "..\..\Software\apriltag\application\apriltag_init.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
int sys_init(void);

#endif
