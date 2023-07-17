/****************************************************************/
/*	ps_gpio.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the ps gpio
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "ps_gpio.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
XGpioPs Gpio;		/* The instance of the GPIO for the camera OV5640's PWUP,KEY1,LED1*/
u8 Key1FlagHold;
u8 key1_flag;
u8 key2_flag;
u8 key3_flag;
u8 key4_flag;
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */

int PsGpioSetup(XGpioPs *GpioInstancePtr, short Device_ID, XScuGic *InstancePtr, u16 IntrID) {

	int Status;
	XGpioPs_Config *GPIO_CONFIG;

	GPIO_CONFIG = XGpioPs_LookupConfig(Device_ID) ;
	if (NULL == GPIO_CONFIG) {
		xil_printf("XGpioPs_LookupConfig failure\r\n");
		return XST_FAILURE;
	}


	Status = XGpioPs_CfgInitialize(GpioInstancePtr, GPIO_CONFIG, GPIO_CONFIG->BaseAddr);
	if (Status != XST_SUCCESS)
	{
		xil_printf("XUatPs_CfgInitialize failure\r\n");
		return XST_FAILURE ;
	}



	//Key setting
	/* set KEY1 as input */
	XGpioPs_SetDirectionPin(GpioInstancePtr, GPIO_KEY1_PIN, GPIO_INPUT);
	XGpioPs_SetDirectionPin(GpioInstancePtr, GPIO_KEY2_PIN, GPIO_INPUT);
	XGpioPs_SetDirectionPin(GpioInstancePtr, GPIO_KEY3_PIN, GPIO_INPUT);
	XGpioPs_SetDirectionPin(GpioInstancePtr, GPIO_KEY4_PIN, GPIO_INPUT);

	/* set interrupt type */
	XGpioPs_SetIntrTypePin(GpioInstancePtr, GPIO_KEY1_PIN, XGPIOPS_IRQ_TYPE_EDGE_RISING);
	XGpioPs_SetIntrTypePin(GpioInstancePtr, GPIO_KEY2_PIN, XGPIOPS_IRQ_TYPE_EDGE_RISING);
	XGpioPs_SetIntrTypePin(GpioInstancePtr, GPIO_KEY3_PIN, XGPIOPS_IRQ_TYPE_EDGE_RISING);
	XGpioPs_SetIntrTypePin(GpioInstancePtr, GPIO_KEY4_PIN, XGPIOPS_IRQ_TYPE_EDGE_RISING);

	//LED light setting
	/* set LED1 as output */
	XGpioPs_SetDirectionPin(GpioInstancePtr, GPIO_LED1_PIN, GPIO_OUTPUT);
	XGpioPs_SetDirectionPin(GpioInstancePtr, GPIO_LED2_PIN, GPIO_OUTPUT);
	XGpioPs_SetDirectionPin(GpioInstancePtr, GPIO_LED3_PIN, GPIO_OUTPUT);
	XGpioPs_SetDirectionPin(GpioInstancePtr, GPIO_LED4_PIN, GPIO_OUTPUT);
	/* enable MIO  output */
	XGpioPs_SetOutputEnablePin(GpioInstancePtr, GPIO_LED1_PIN, GPIO_OUTPUT);
	XGpioPs_SetOutputEnablePin(GpioInstancePtr, GPIO_LED2_PIN, GPIO_OUTPUT);
	XGpioPs_SetOutputEnablePin(GpioInstancePtr, GPIO_LED3_PIN, GPIO_OUTPUT);
	XGpioPs_SetOutputEnablePin(GpioInstancePtr, GPIO_LED4_PIN, GPIO_OUTPUT);

	//Camera pin setting
	/* set CAM as output */
	XGpioPs_SetDirectionPin(GpioInstancePtr, GPIO_CAM_PIN, GPIO_OUTPUT);
	XGpioPs_SetOutputEnablePin(GpioInstancePtr, GPIO_CAM_PIN, GPIO_OUTPUT);


	/* set priority and trigger type */
	XScuGic_SetPriorityTriggerType(InstancePtr, IntrID, 0xA0, 0x3);

	Status = XScuGic_Connect(InstancePtr, IntrID,
			(Xil_ExceptionHandler)GpioHandler,
			(void *)GpioInstancePtr);

	XScuGic_Enable(InstancePtr, IntrID);

	XGpioPs_IntrEnablePin(GpioInstancePtr, GPIO_KEY1_PIN);
	XGpioPs_IntrEnablePin(GpioInstancePtr, GPIO_KEY2_PIN);
	XGpioPs_IntrEnablePin(GpioInstancePtr, GPIO_KEY3_PIN);
	XGpioPs_IntrEnablePin(GpioInstancePtr, GPIO_KEY4_PIN);

	/* Set PS LED off */
	XGpioPs_WritePin(GpioInstancePtr, GPIO_LED1_PIN, 1);
	XGpioPs_WritePin(GpioInstancePtr, GPIO_LED2_PIN, 1);
	XGpioPs_WritePin(GpioInstancePtr, GPIO_LED3_PIN, 1);
	XGpioPs_WritePin(GpioInstancePtr, GPIO_LED4_PIN, 1);

	return XST_SUCCESS ;
}

/*
 * GPIO interrupt handler
 */
void GpioHandler(void *CallbackRef)
{
	XGpioPs *GpioInstancePtr = (XGpioPs *)CallbackRef ;

	int Key1IntVal;
	int Key2IntVal;
	int Key3IntVal;
	int Key4IntVal;

	Key1IntVal = XGpioPs_IntrGetStatusPin(GpioInstancePtr, GPIO_KEY1_PIN);
	Key2IntVal = XGpioPs_IntrGetStatusPin(GpioInstancePtr, GPIO_KEY2_PIN);
	Key3IntVal = XGpioPs_IntrGetStatusPin(GpioInstancePtr, GPIO_KEY3_PIN);
	Key4IntVal = XGpioPs_IntrGetStatusPin(GpioInstancePtr, GPIO_KEY4_PIN);

	/* clear key interrupt */
	XGpioPs_IntrClearPin(GpioInstancePtr, GPIO_KEY1_PIN);
	XGpioPs_IntrClearPin(GpioInstancePtr, GPIO_KEY2_PIN);
	XGpioPs_IntrClearPin(GpioInstancePtr, GPIO_KEY3_PIN);
	XGpioPs_IntrClearPin(GpioInstancePtr, GPIO_KEY4_PIN);


	if (Key1IntVal & Key1FlagHold)
		key1_flag = 1;
	if (Key2IntVal)
		key2_flag = 1;
	if (Key3IntVal)
		key3_flag = 1;
	if (Key4IntVal)
		key4_flag = 1;

}
