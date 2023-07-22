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
#include "sys_init.h"
#include "../common/state_machine/fsm.h"
#include "../common/state_machine/fsm_control.h"
#include "../../Software/apriltag/application/apriltag_quad_thresh.h"
#include "../../Software/apriltag/application/apriltag.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */

int sys_init(void) {

	int Status;
	int i;

	/*Disable data cache and instruction cache*/
	Xil_DCacheDisable();
	Xil_ICacheDisable();


	/*Initialize an array of pointers to the 3 frame buffers*/

	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		pcolor_buf[i] = color_buf[i];
		pgray_buf[i] = gray_buf[i];

		memset(color_buf[i], 1, FRAME_SIZE);
		memset(gray_buf[i], 1, GRAY_FRAME_SIZE);
	}

	memset(simu_buf, 255, FRAME_SIZE);

	/*Initialization of the GIC Controller*/
	Status = gic_init();
	if (Status != XST_SUCCESS) {
		xil_printf("gic_init Failed\r\n");
		return XST_FAILURE;
	}


	/*Initialization of the Uart0*/
	Status = uart_init(&Uart_Ps_0, UART_DEVICE_ID_0, UART_BUNDRATE_0);
	if (Status != XST_SUCCESS) {
		xil_printf("uart0_init Failed\r\n");
		return XST_FAILURE;
	}


	/*Initialization of the Uart1*/
	Status = uart_init(&Uart_Ps_1, UART_DEVICE_ID_1, UART_BUNDRATE_1);
	if (Status != XST_SUCCESS) {
		xil_printf("uart1_init Failed\r\n");
		return XST_FAILURE;
	}

	/*Initialization of the GPIO*/
	Status = PsGpioSetup(&Gpio, GPIO_DEVICE_ID, &ScuGic, KEY_INTR_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("PsGpioSetup Failed\r\n");
		return XST_FAILURE;
	}

	/*Reset sensor ov5640*/
	XGpioPs_WritePin(&Gpio, GPIO_CAM_PIN, 0) ;
	usleep(1000000);
	XGpioPs_WritePin(&Gpio, GPIO_CAM_PIN, 1) ;
	usleep(1000000);

	/*Initialization of the Iic*/
	Status = i2c_init(&Iic_Ps_0, IIC_DEVICE_ID_0, IIC_SCLK_RATE_0);
	if (Status != XST_SUCCESS) {
		xil_printf("i2c_init Failed\r\n");
		return XST_FAILURE;
	}
	/*Initialization of the MIPI-CSI-RX-2*/
	Status = CsiSs_SelfTestExample(MIPI_CSI_2_RX_DEVICE_ID_0);
	if (Status != XST_SUCCESS) {
		xil_printf("CsiCs_SelfTestExample Failed\r\n");
		return XST_FAILURE;
	}
	/*Initialization of the DP*/

	Status = DpdmaVideoExample(&RunCfg, pcolor_buf[0]);
	if (Status != XST_SUCCESS) {
		xil_printf("DPDMA Video Example Test Failed\r\n");
		return XST_FAILURE;
	}

	/*Initialization of the demosaic*/
	Status = demosaic_init(DEMOSAIC_DEVICE_ID_0);
	if (Status != XST_SUCCESS) {
		xil_printf("demosaic_init Failed\r\n");
		return XST_FAILURE;
	}


	/*Initialization of the gamma_lut*/
	Status = gamma_lut_init(GAMMA_DEVICE_ID_0);
	if (Status != XST_SUCCESS) {
		xil_printf("gamma_lut_init Failed\r\n");
		return XST_FAILURE;
	}

	/* Start Vdma0 transmission*/
	Status = vdma_write_init_0(VDMA_DEVICE_ID_0, VIDEO_COLUMNS, VIDEO_ROWS, DEMO_STRIDE, (u32)pcolor_buf[0], RGBA_8888);
	if (Status != XST_SUCCESS) {
		xil_printf("vdma_write_init Failed\r\n");
		return XST_FAILURE;
	}

	/* Start Vdma1 transmission*/
	Status = vdma_write_init_1(VDMA_DEVICE_ID_1, VIDEO_COLUMNS, VIDEO_ROWS, GRAY_DEMO_STRIDE, (u32)pgray_buf[0], Y_ONLY);
	if (Status != XST_SUCCESS) {
		xil_printf("vdma_write_init Failed\r\n");
		return XST_FAILURE;
	}

	ov5640_init(&Iic_Ps_0);


	/*Initialization of the ttc*/

	Status = SetupTicker();
	if (Status != XST_SUCCESS) {
		xil_printf("SetupTicker Failed\r\n");
		return XST_FAILURE;
	}


	/*mount the sd*/
	Status = sd_mount();
	if (Status != XST_SUCCESS) {
		xil_printf("sd_mount Failed\r\n");
		return XST_FAILURE;
	}

	/*初始化状态机*/
	fsm_control_init();

	Xil_DCacheEnable();
	Xil_ICacheEnable();

	return XST_SUCCESS;
}
