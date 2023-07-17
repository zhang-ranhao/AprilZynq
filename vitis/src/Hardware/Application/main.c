/****************************************************************/
/*	main.c											*/
/****************************************************************/
/*	Author: Ranhao zhang										*/
/*	Copyright 2023(c) Space Mechatronics Laboratory,
 * 	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description: 												*/
/*		The file contains a demo of the apriltag algorithm
 		,through  which the user can obtain the camera's
		high-precision six-degree-of-freedom information
  		relative to the apriltag 								*/
/****************************************************************/
/*  Revision History:											*/
/*
		4/30/2023(Ranhao): Created
																*/
/****************************************************************/
/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "sys_init.h"
#include "schedule.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */
/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
int main(void) {

	int Status;
	XTime t_start;
	XTime t_end;
	float t_dur;

	//Initialize all peripherals


	Status = sys_init();
	if (Status != XST_SUCCESS) {
		xil_printf("sys_init Failed\r\n");
		return XST_FAILURE;
	}




	XTime_GetTime(&t_start);
	Status = apriltag_init();
	XTime_GetTime(&t_end);
	t_dur = ((float)(t_end - t_start)) / ((float)COUNTS_PER_U_SECOND);
	printf("The apriltag_init is complete, it took %.3fus\r\n", t_dur);




	//Scheduler initialization, the system is standalone, here manually made a time division scheduler
	//Scheduler_Setup();

	while (1)
	{
	//Run the task scheduler, where all system functions, except interrupt service functions, are performed
		Scheduler_Run();
		//apriltag_duty();
	}
}
