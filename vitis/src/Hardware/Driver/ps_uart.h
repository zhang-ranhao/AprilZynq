
/****************************************************************/
/*	ps_uart.h													*/
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
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __PS_UART_H__
#define __PS_UART_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "xuartps.h"
#include "xil_printf.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
extern XUartPs Uart_Ps_1;		/* The instance of the UART Driver for communication with pc 	*/
extern XUartPs Uart_Ps_0;
/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
int uart_init (XUartPs *Uart_Ps, short DeviceID, u32 BUNDRATE);

#endif

