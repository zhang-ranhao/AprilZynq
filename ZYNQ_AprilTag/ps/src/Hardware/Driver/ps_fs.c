/****************************************************************/
/*	ps_fs.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the ps_fs
		 														*/
/****************************************************************/
/*  Revision History:
	5/23/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "ps_fs.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
FATFS fatfs;
FIL fil;		/* File object */
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/

// Initialize the file system
int platform_init_fs()
{
	FRESULT status;
	TCHAR *Path = "1:/";
	BYTE work[FF_MAX_SS];

	// Register a workspace (mount the partitioned file system)
    /*
	Before using any other file functions, you must use the f_mount function to
	register a workspace for each used volume
	*/
	/*mount the sd*/
	status = f_mount(&fatfs, Path, 1);

	// If the mount fails, remount it after formatting
	if (status != FR_OK) {
		xil_printf("Volume is not FAT formated; formating FAT\r\n");
		// Format the SD card
		status = f_mkfs(Path, FM_FAT32, 0, work, sizeof work);
		if (status != FR_OK) {
			xil_printf("Unable to format FATfs\r\n");
			return -1;
		}
		// After formatting, remount the SD card
		status = f_mount(&fatfs, Path, 1);
		if (status != FR_OK) {
			xil_printf("Unable to mount FATfs\r\n");
			return -1;
		}
	}
	return 0;
}

int sd_mount()
{
    FRESULT status;

    status = platform_init_fs();
    if(status){
        xil_printf("ERROR: f_mount returned %d!\n",status);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

//write data to sd
int sd_write_data(char *file_name, u8* src_addr, u32 byte_len, FIL *fil)
{
    UINT bw;         //Returns the number of bytes written

    //Open a file or create one if it does not exist
    f_open(fil, file_name, FA_CREATE_ALWAYS | FA_WRITE);
    //Move the file read/write pointer to the open file object 0: points to the beginning of the file
    f_lseek(fil, 0);
    //Writes data to a file
    f_write(fil, (void*) src_addr, byte_len,&bw);
    //close file
    f_close(fil);
    return 0;
}

//read data from sd
int sd_read_data(char *file_name, u8* src_addr, u32 byte_len, FIL *fil)
{
    UINT br;         //Returns the number of bytes read out

    //Open a read-only file
    f_open(fil, file_name, FA_READ);
    //Move the file read/write pointer to the open file object 0: points to the beginning of the file
    f_lseek(fil, 0);
    //Read data from the SD card
    f_read(fil, (void*)src_addr, byte_len, &br);
    //close file
    f_close(fil);
    return 0;
}

