/****************************************************************/
/*	ps_uart.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of ps_gpio.c
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __PS_GPIO_H__
#define __PS_GPIO_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "xgpiops.h"
#include "xscugic.h"

#include "../common/config.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
extern u8 Key1FlagHold;
extern u8 key1_flag;
extern u8 key2_flag;
extern u8 key3_flag;
extern u8 key4_flag;


extern XGpioPs Gpio;		/* The instance of the GPIO for the camera OV5640's PWUP,KEY1,LED1*/
/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
int PsGpioSetup(XGpioPs *GpioInstancePtr, short Device_ID, XScuGic *InstancePtr, u16 IntrID);
void GpioHandler(void *CallbackRef);

#endif

