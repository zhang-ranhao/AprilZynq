/****************************************************************/
/*	config.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file including all
  		information of configuration
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __CONFIG_H__
#define __CONFIG_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "xparameters.h"
#include "xtime_l.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */
/******************************* VIDEO Configuration ********************************/
/*resolution configuration*/
#define VIDEO_RESOLUTION VIDEO_720P_60FPS

/*video_format configuration*/
#define	VIDEO_1080P_30FPS 0
#define	VIDEO_720P_60FPS 1
#define VIDEO_480P_90FPS 2

#define Y_ONLY 	  0             //Gray image is in VDMA1 channel
#define RGBA_8888 1             //Color image in VDMA0 channel
#define THRESH    2             //THRESHHOLD image in VDMA2 channel

#if VIDEO_RESOLUTION  == VIDEO_1080P_30FPS
	#define VIDEO_COLUMNS 1920
	#define VIDEO_ROWS 1080
#elif VIDEO_RESOLUTION == VIDEO_720P_60FPS
	#define VIDEO_COLUMNS 1280
	#define VIDEO_ROWS 720
#else
	#define VIDEO_COLUMNS 640
	#define VIDEO_ROWS 480
#endif

/*threshhold_image_configuration*/
#define TH_VIDEO_COLUMNS 640
#define TH_VIDEO_ROWS    360


/*frame_storage_configuration*/
#define VIDEO_BPP 4             								/*bytes per pixel*/
#define DISPLAY_NUM_FRAMES 3                               		/*the number of frame buffers*/
#define FRAME_SIZE (VIDEO_COLUMNS * VIDEO_ROWS * VIDEO_BPP)      /*the number of bytes in a frame, the video format is RGBA8888*/
#define GRAY_FRAME_SIZE (VIDEO_COLUMNS * VIDEO_ROWS)             /**the number of bytes in a frame, the video format is GREY*/
#define THRESH_FRAME_SIZE (TH_VIDEO_COLUMNS * TH_VIDEO_ROWS)     /**threshhold image*/
#define DEMO_STRIDE (VIDEO_COLUMNS * VIDEO_BPP)
#define GRAY_DEMO_STRIDE VIDEO_COLUMNS
#define THRESH_STRIDE TH_VIDEO_COLUMNS

/******************************* UART Configuration ********************************/
#define UART_DEVICE_ID_0 XPAR_PSU_UART_0_DEVICE_ID
#define UART_DEVICE_ID_1 XPAR_PSU_UART_1_DEVICE_ID

#define UART_BUNDRATE_0 500000
#define UART_BUNDRATE_1 115200

/******************************* GPIO Configuration ********************************/
#define GPIO_DEVICE_ID	XPAR_PSU_GPIO_0_DEVICE_ID
#define KEY_INTR_ID 	XPAR_XGPIOPS_0_INTR
#define GPIO_CAM_PIN            78
#define GPIO_LED1_PIN		   	79
#define GPIO_LED2_PIN		   	80
#define GPIO_LED3_PIN		   	81
#define GPIO_LED4_PIN		   	82
#define GPIO_KEY1_PIN			83
#define GPIO_KEY2_PIN			84
#define GPIO_KEY3_PIN			85
#define GPIO_KEY4_PIN			86
#define GPIO_INPUT              0
#define GPIO_OUTPUT             1
/******************************* ScuGic Configuration ********************************/
#define SCUGIC_DEVICE_ID_0		XPAR_SCUGIC_0_DEVICE_ID

/******************************* IIC Configuration ********************************/
#define IIC_DEVICE_ID_0 XPAR_XIICPS_0_DEVICE_ID
#define IIC_SCLK_RATE_0 100000

/******************************* VDMA Configuration ********************************/
#define VDMA_DEVICE_ID_0 XPAR_AXIVDMA_0_DEVICE_ID
#define VDMA_DEVICE_ID_1 XPAR_AXIVDMA_1_DEVICE_ID
#define VDMA_DEVICE_ID_2 XPAR_AXIVDMA_2_DEVICE_ID

#define VDMA_INTR_WRITE_0 XPAR_FABRIC_AXI_VDMA_0_S2MM_INTROUT_INTR
#define VDMA_INTR_WRITE_1 XPAR_FABRIC_AXI_VDMA_1_S2MM_INTROUT_INTR
#define VDMA_INTR_WRITE_2 XPAR_FABRIC_AXI_VDMA_2_S2MM_INTROUT_INTR

/******************************* DEMOSAIC Configuration ********************************/
#define DEMOSAIC_DEVICE_ID_0 XPAR_XV_DEMOSAIC_0_DEVICE_ID

/******************************* GAMMA_LUT Configuration ********************************/
#define GAMMA_DEVICE_ID_0 XPAR_V_GAMMA_LUT_0_DEVICE_ID

/******************************* MIPI_CSI_2_RX Configuration ********************************/
#define MIPI_CSI_2_RX_DEVICE_ID_0 XPAR_MIPI_CSI2_RX_SUBSYST_0_RX_DEVICE_ID
/******************************* TTC Configuration ********************************/
#define TICK_0_TIMER_FREQ_HZ   	1000
#define TTC_TICK_DEVICE_ID_0 	XPAR_XTTCPS_0_DEVICE_ID
#define TTC_TICK_INTR_ID_0		XPAR_XTTCPS_0_INTR
/******************************* Time Parameters ********************************/
#define PHOTONAME_LENGTH   20
#define PHOTOPATH_LENGTH   20  //in bytes

#define COUNTS_PER_U_SECOND (COUNTS_PER_SECOND/1000000)
#define USECOND_PER_MSECOND (1000.0f)
#define TICK_PER_SECOND	1000

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */

#endif /* SRC_CONFIG_H_ */
