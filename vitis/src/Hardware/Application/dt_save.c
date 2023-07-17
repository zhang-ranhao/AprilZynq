/****************************************************************/
/*	dt_save.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file is used to store data and contains image data
		 														*/
/****************************************************************/
/*  Revision History:
	5/28/2023(Ranhao): Created
	5/30/2023(Ranhao):revised
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "dt_save.h"
#include "..\..\Software\apriltag\common\image_u8.h"
#include "..\..\Software\apriltag\common\image_u8x4.h"
#include <assert.h>
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */

/*****************image data*************************************/
/*Framebuffers for gray picture*/
u8 gray_buf[DISPLAY_NUM_FRAMES][GRAY_FRAME_SIZE] __attribute__ ((aligned(256)));
u8 *pgray_buf[DISPLAY_NUM_FRAMES];

/*Framebuffers for color picture*/
u8 color_buf[DISPLAY_NUM_FRAMES][FRAME_SIZE] __attribute__ ((aligned(256)));
u8 *pcolor_buf[DISPLAY_NUM_FRAMES]; 				/*array of pointers to the frame buffers*/

static u8 photo_color_buf[FRAME_SIZE] __attribute__ ((aligned(256)));

u8 dt_save_flag;
photo_t color_photo;
photo_t gray_photo;
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */



void img_write_to_sd(u16 dt_ms) {

	int i;

	if (dt_save_flag < 1) {
		strcpy(color_photo.path, "1:/0000.bmp");
		strcpy(gray_photo.path, "1:/0000.pnm");
		dt_save_flag = 1;
	}


	if (key1_flag == 2) {

		Key1FlagHold = 0;

		color_photo.num++;
		gray_photo.num++;

		sprintf(color_photo.name, "%04u.bmp", color_photo.num);
		sprintf(gray_photo.name, "%04u.pnm", gray_photo.num);


		for(i = 0; i<8; i++) {
			color_photo.path[i+3] = color_photo.name[i];
			gray_photo.path[i+3] = gray_photo.name[i];
		}

		color_photo.wr_index = (wr_color_index+2) % 3;
		gray_photo.wr_index = (wr_gray_index+1) % 3;

		XGpioPs_WritePin(&Gpio, GPIO_LED1_PIN, 0); //light up the LED1

		Xil_DCacheInvalidate();   //invalidate the cache

		image_u8_t *gray_im = image_u8_create(VIDEO_COLUMNS, VIDEO_ROWS);

		assert(gray_im != NULL);

	    for (int y = 0; y < gray_im->height; y++) {
	        memcpy(&gray_im->buf[y*gray_im->stride], &gray_buf[gray_photo.wr_index][y*gray_im->width], gray_im->width);
	    }

	    memcpy(photo_color_buf, pcolor_buf[color_photo.wr_index], FRAME_SIZE);

		key1_flag = 0; //Clear key flag

		XTime_GetTime(&color_photo.cnt_start);
		bmp_write(color_photo.path, (char *)&BMODE_1280x720, (char *)photo_color_buf, DEMO_STRIDE, &fil);
		XTime_GetTime(&color_photo.cnt_end);
		color_photo.dt_ms = ((float)(color_photo.cnt_end - color_photo.cnt_start)) / ((float)COUNTS_PER_U_SECOND) / USECOND_PER_MSECOND;
		printf("The color image writing operation is complete, it took %.3fms\r\n", color_photo.dt_ms);

		XTime_GetTime(&gray_photo.cnt_start);
		image_u8_write_pnm(gray_photo.path, gray_im, &fil);
		XTime_GetTime(&gray_photo.cnt_end);
		gray_photo.dt_ms= ((float)(gray_photo.cnt_end - gray_photo.cnt_start)) / ((float)COUNTS_PER_U_SECOND) / USECOND_PER_MSECOND;
		printf("The gray image writing operation is complete, it took %.3fms\r\n", gray_photo.dt_ms);

		image_u8_destroy(gray_im);

		XGpioPs_WritePin(&Gpio, GPIO_LED1_PIN, 1); //turn off the LED1

	}
	Key1FlagHold = 1;


}

