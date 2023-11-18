/****************************************************************/
/*	bmp.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file is used to read and write bmp files
		 														*/
/****************************************************************/
/*  Revision History:
	5/28/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "bmp.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
unsigned char read_line_buf[1920 * 3];
unsigned char Write_line_buf[1920 * 3];
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
void bmp_read(char * bmp,u8 *frame,u32 stride, FIL *fil)
{
	short y,x;
	short Ximage;
	short Yimage;
	u32 iPixelAddr = 0;
	FRESULT res;
	unsigned char TMPBUF[64];
	unsigned int br;

	res = f_open(fil, bmp, FA_OPEN_EXISTING | FA_READ);
	if(res != FR_OK)
	{
		printf("error: f_open Failed!\r\n") ;
		return ;
	}
	res = f_read(fil, TMPBUF, 54, &br);
	if(res != FR_OK)
	{
		f_close(fil);
		printf("Failed to Read!\r\n") ;
		return ;
	}
	Ximage=(unsigned short int)TMPBUF[19]*256+TMPBUF[18];
	Yimage=(unsigned short int)TMPBUF[23]*256+TMPBUF[22];
	iPixelAddr = (Yimage-1)*stride ;

	for(y = 0; y < Yimage ; y++)
	{
		f_read(fil, read_line_buf, Ximage * 3, &br);
		for(x = 0; x < Ximage; x++)
		{
			frame[x * 4 + iPixelAddr + 0] = read_line_buf[x * 3 + 0];
			frame[x * 4 + iPixelAddr + 1] = read_line_buf[x * 3 + 1];
			frame[x * 4 + iPixelAddr + 2] = read_line_buf[x * 3 + 2];
			frame[x * 4 + iPixelAddr + 3] = 0xff ;
		}
		iPixelAddr -= stride;
	}
	f_close(fil);
}


void bmp_write(char * name, char *head_buf, char *data_buf, u32 stride, FIL *fil)
{
	short y, x;
	short Ximage;
	short Yimage;
	u32 iPixelAddr = 0;
	FRESULT res;
	unsigned int br;         // File R/W count

	memset(&Write_line_buf, 0, 1920*3);

	res = f_open(fil, name, FA_CREATE_ALWAYS | FA_WRITE);
	if(res != FR_OK)
	{
		printf("error: f_open Failed!, res is %d\r\n", res) ;
		return ;
	}
	res = f_write(fil, head_buf, 54, &br) ;
	if(res != FR_OK)
	{
		f_close(fil);
		printf("error: f_write Failed!\r\n") ;
		return ;
	}
	Ximage=(unsigned short)head_buf[19]*256+head_buf[18];
	Yimage=(unsigned short)head_buf[23]*256+head_buf[22];
	iPixelAddr = (Yimage-1)*stride;
	for(y = 0; y < Yimage ; y++)
	{
		for(x = 0; x < Ximage; x++)
		{
			Write_line_buf[x*3 + 0] = data_buf[x*4 + iPixelAddr + 2] ;
			Write_line_buf[x*3 + 1] = data_buf[x*4 + iPixelAddr + 1] ;
			Write_line_buf[x*3 + 2] = data_buf[x*4 + iPixelAddr + 0] ;
		}
		res = f_write(fil, Write_line_buf, Ximage*3, &br) ;
		if(res != FR_OK)
		{
			f_close(fil);
			printf("error: f_write Failed!\r\n") ;
			return ;
		}
		iPixelAddr -= stride;
	}
	f_close(fil);
}
