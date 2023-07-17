/****************************************************************/
/*	ps_iic.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of ps_iic.c
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __PS_IIC_H__
#define __PS_IIC_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "xiicps.h"
#include "xil_printf.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
extern XIicPs Iic_Ps_0;		/* The instance of the IIC Driver for communication with OV5640	*/
/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
int i2c_reg8_write(XIicPs *InstancePtr, char IIC_ADDR, char Addr, char Data);
char i2c_reg8_read(XIicPs *InstancePtr, char IIC_ADDR, char Addr);
int i2c_reg16_write(XIicPs *InstancePtr, char IIC_ADDR, unsigned short Addr, char Data);
char i2c_reg16_read(XIicPs *InstancePtr, char IIC_ADDR, unsigned short Addr);
int i2c_init(XIicPs *Iic,short DeviceID ,u32 IIC_SCLK_RATE);

#endif
