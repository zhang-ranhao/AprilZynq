/****************************************************************/
/*	ps_uart.c													*/
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
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "pl_mipi_csi_rx.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
XCsiSs CsiSsInst;	/* The MIPI CSI Rx Subsystem instance.*/
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
u32 CsiSs_SelfTestExample(u32 DeviceId)
{
	u32 Status;
	XCsiSs_Config *ConfigPtr;

	/* Obtain the device configuration for the MIPI CSI RX Subsystem */
	ConfigPtr = XCsiSs_LookupConfig(DeviceId);
	if (!ConfigPtr) {
		return XST_FAILURE;
	}

	/* Copy the device configuration into the CsiSsInst's Config
	 * structure. */
	Status = XCsiSs_CfgInitialize(&CsiSsInst, ConfigPtr,
					ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {
		xil_printf("MIPI CSI RX SS config initialization failed.\n\r");
		return XST_FAILURE;
	}

	/* Run the self test. */
	Status = XCsiSs_SelfTest(&CsiSsInst);

	return Status;
}
