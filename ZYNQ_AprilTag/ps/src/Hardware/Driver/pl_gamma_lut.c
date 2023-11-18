
/****************************************************************/
/*	pl_gamma_lut.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the gamma_lut
		 														*/
/****************************************************************/
/*  Revision History:
	5/16/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "pl_gamma_lut.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
int gamma_lut_init(u16 deviceid) {
	XV_gamma_lut gamma_lut;
	XV_gamma_lut_Config *gamma_lut_config;

	if ( (gamma_lut_config = XV_gamma_lut_LookupConfig(deviceid)) == NULL) {
		xil_printf("XV_gamma_lut_LookupConfig() failed\r\n");
		return XST_FAILURE;
	}
	if (XV_gamma_lut_CfgInitialize(&gamma_lut, gamma_lut_config, gamma_lut_config->BaseAddress)) {
		xil_printf("XV_gamma_lut_CfgInitialize() failed\r\n");
		return XST_FAILURE;
	}

	XV_gamma_lut_Set_HwReg_width(&gamma_lut, VIDEO_COLUMNS);
	XV_gamma_lut_Set_HwReg_height(&gamma_lut, VIDEO_ROWS);
    XV_gamma_lut_Set_HwReg_video_format(&gamma_lut, 0); // RGB

	if (XV_gamma_lut_Write_HwReg_gamma_lut_0_Words(&gamma_lut, 0, (int *) xgamma10_07,
			sizeof(xgamma10_10)/sizeof(int)) != sizeof(xgamma10_10)/sizeof(int)) {
		xil_printf("Gamma correction LUT write failed\r\n");
		return XST_FAILURE;
	}
	if (XV_gamma_lut_Write_HwReg_gamma_lut_1_Words(&gamma_lut, 0, (int *) xgamma10_07,
			sizeof(xgamma10_10)/sizeof(int)) != sizeof(xgamma10_10)/sizeof(int)) {
		xil_printf("Gamma correction LUT write failed\r\n");
		return XST_FAILURE;
	}
	if (XV_gamma_lut_Write_HwReg_gamma_lut_2_Words(&gamma_lut, 0, (int *) xgamma10_07,
			sizeof(xgamma10_10)/sizeof(int)) != sizeof(xgamma10_10)/sizeof(int)) {
		xil_printf("Gamma correction LUT write failed\r\n");
		return XST_FAILURE;
	}

	XV_gamma_lut_EnableAutoRestart(&gamma_lut);
	XV_gamma_lut_Start(&gamma_lut);

	xil_printf("Gamma correction LUT initialized\r\n");

	return XST_SUCCESS;
}
