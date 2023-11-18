
/****************************************************************/
/*	pl_demosaic.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the demosaic_lut
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "pl_demosaic.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */

int demosaic_init(u16 deviceid) {
	XV_demosaic demosaic;
	XV_demosaic_Config *demosaic_config;

	if ( (demosaic_config = XV_demosaic_LookupConfig(deviceid)) == NULL) {
		xil_printf("XV_demosaic_LookupConfig() failed\r\n");
		return XST_FAILURE;
	}
	if (XV_demosaic_CfgInitialize(&demosaic, demosaic_config, demosaic_config->BaseAddress)
			!= XST_SUCCESS) {
		xil_printf("XV_demosaic_CfgInitialize() failed\r\n");
		return XST_FAILURE;
	}

	XV_demosaic_Set_HwReg_width(&demosaic, VIDEO_COLUMNS);
	XV_demosaic_Set_HwReg_height(&demosaic, VIDEO_ROWS);
	XV_demosaic_Set_HwReg_bayer_phase(&demosaic, 3);

	if (!XV_demosaic_IsReady(&demosaic)) {
		xil_printf("demosaic core not ready\r\n");
		return XST_FAILURE;
	}
	XV_demosaic_EnableAutoRestart(&demosaic);
	XV_demosaic_Start(&demosaic);

	xil_printf("Demosiac module initialized\r\n");

	return XST_SUCCESS;
}
