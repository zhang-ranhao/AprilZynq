/****************************************************************/
/*	ps_gic.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the gic controller
		 														*/
/****************************************************************/
/*  Revision History:
	5/30/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "ps_gic.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
XScuGic ScuGic;			/* Instance of the Interrupt Controller */
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
int gic_init(void) {
	int Status;

	XScuGic_Config	*IntrCfgPtr;
	XScuGic *IntrPtr = &ScuGic;
	/* Initialize interrupt controller driver. */
	IntrCfgPtr = XScuGic_LookupConfig(SCUGIC_DEVICE_ID_0);

	Status = XScuGic_CfgInitialize(IntrPtr, IntrCfgPtr, IntrCfgPtr->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("XScuGic_CfgInitialize Failed\r\n");
		return XST_FAILURE;
	}
	/* Initialize exceptions. */
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_ExceptionHandler)XScuGic_DeviceInterruptHandler,
			SCUGIC_DEVICE_ID_0);

	/* Enable exceptions for interrupts. */
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

