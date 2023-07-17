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
#include "ps_uart.h"
/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
XUartPs Uart_Ps_1;		/* The instance of the UART Driver for communication with pc 	*/
XUartPs Uart_Ps_0;
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
int uart_init (XUartPs *InstancePtr, short DeviceID, u32 BUNDRATE) {

	int Status;

	XUartPs_Config *Config;

	Config = XUartPs_LookupConfig(DeviceID);
	if (NULL == Config) {
		xil_printf("XIicPs_LookupConfig failure\r\n");
		return XST_FAILURE;
	}

	Status = XUartPs_CfgInitialize(InstancePtr, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("XUatPs_CfgInitialize failure\r\n");
		return XST_FAILURE;
	}

	Status = XUartPs_SetBaudRate(InstancePtr, BUNDRATE);
	if (Status != XST_SUCCESS) {
		xil_printf("XUartPs_SetBaudRate failure\r\n");
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}


