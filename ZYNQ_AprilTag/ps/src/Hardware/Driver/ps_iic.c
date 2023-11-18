/****************************************************************/
/*	ps_iic.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the ps iic
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "ps_iic.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
XIicPs Iic_Ps_0;		/* The instance of the IIC Driver for communication with OV5640	*/
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */

int i2c_reg8_write(XIicPs *InstancePtr, char IIC_ADDR, char Addr, char Data)
{
	int Status;
	u8 SendBuffer[2];

	SendBuffer[0] = Addr;
	SendBuffer[1] = Data;
	Status = XIicPs_MasterSendPolled(InstancePtr, SendBuffer, 2, IIC_ADDR);
	while (XIicPs_BusIsBusy(InstancePtr));

	return Status;
}

char i2c_reg8_read(XIicPs *InstancePtr, char IIC_ADDR, char Addr)
{
	u8 wr_data, rd_data;

	wr_data = Addr;
	XIicPs_MasterSendPolled(InstancePtr, &wr_data, 1, IIC_ADDR);
	XIicPs_MasterRecvPolled(InstancePtr, &rd_data, 1, IIC_ADDR);
	while (XIicPs_BusIsBusy(InstancePtr));
	return rd_data;
}

int i2c_reg16_write(XIicPs *InstancePtr, char IIC_ADDR, unsigned short Addr, char Data)
{
	int Status;
	u8 SendBuffer[3];

	SendBuffer[0] = Addr>>8;
	SendBuffer[1] = Addr;
	SendBuffer[2] = Data;
	Status = XIicPs_MasterSendPolled(InstancePtr, SendBuffer, 3, IIC_ADDR);
	while (XIicPs_BusIsBusy(InstancePtr));

	return Status;
}

char i2c_reg16_read(XIicPs *InstancePtr, char IIC_ADDR, unsigned short Addr)
{
	u8 rd_data;
	u8 SendBuffer[2];

	SendBuffer[0] = Addr>>8;
	SendBuffer[1] = Addr;
	XIicPs_MasterSendPolled(InstancePtr, SendBuffer, 2, IIC_ADDR);
	XIicPs_MasterRecvPolled(InstancePtr, &rd_data, 1, IIC_ADDR);
	while (XIicPs_BusIsBusy(InstancePtr));
	return rd_data;
}



int i2c_init(XIicPs *InstancePtr, short DeviceID, u32 IIC_SCLK_RATE)
{
	XIicPs_Config *Config;
	int Status;

	Config = XIicPs_LookupConfig(DeviceID);
	if (NULL == Config) {
		xil_printf("XIicPs_LookupConfig failure\r\n");
		return XST_FAILURE;
	}

	Status = XIicPs_CfgInitialize(InstancePtr, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("XIicPs_CfgInitialize failure\r\n");
		return XST_FAILURE;
	}

	Status = XIicPs_SetSClk(InstancePtr, IIC_SCLK_RATE);
	if (Status != XST_SUCCESS) {
		xil_printf("XIicPs_SetSClk failure\r\n");
		return XST_FAILURE;
	}

	while (XIicPs_BusIsBusy(InstancePtr));	// Wait

	return XST_SUCCESS;
}



