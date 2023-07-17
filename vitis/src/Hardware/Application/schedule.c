/****************************************************************/
/*	schedule.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the schedule
		 														*/
/****************************************************************/
/*  Revision History:
	5/27/2023(Ranhao): Created
																*/
/****************************************************************/
/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "schedule.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
#define TASK_NUM (sizeof(sched_tasks)/sizeof(sched_task_t))


static void Loop_1000Hz(void)	//1ms
{
	img_write_to_sd(1);

	apriltag_duty();
}
static void Loop_500Hz(void)	//2ms
{

}
static void Loop_200Hz(void)	//5ms
{

}
static void Loop_100Hz(void)	//10ms
{

}
static void Loop_50Hz(void)	//20ms
{

}
static void Loop_20Hz(void)	//50ms
{

}
static void Loop_10Hz(void)	//100ms
{

}
static void Loop_5Hz(void)	//200ms
{

}
static void Loop_2Hz(void)	//500ms
{

}
static void Loop_1Hz(void)	//1s
{
	sys_monitor(1000);
}

//System task configuration, create different execution frequency "threads"
static sched_task_t sched_tasks[] =
{
	{Loop_1000Hz,1000,  0, 0, 0, 0},
	{Loop_500Hz , 500,  0, 0, 0, 0},
	{Loop_200Hz , 200,  0, 0, 0, 0},
	{Loop_100Hz , 100,  0, 0, 0, 0},
	{Loop_50Hz  ,  50,  0, 0, 0, 0},
	{Loop_20Hz  ,  20,  0, 0, 0, 0},
	{Loop_10Hz  ,  10,  0, 0, 0, 0},
	{Loop_5Hz   ,   5,  0, 0, 0, 0},
	{Loop_2Hz   ,   2,  0, 0, 0, 0},
	{Loop_1Hz   ,   1,  0, 0, 0, 0},
};

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
void Scheduler_Setup(void)
{
	u8 index = 0;
	XTime_SetTime(0);           //start counting
	//Initializes the task table
	for(index=0; index < TASK_NUM; index++)
	{
		//Calculate the number of delay cycles per task
		sched_tasks[index].interval_ticks = TICK_PER_SECOND/sched_tasks[index].rate_hz;
		//The shortest period is 1, which is 1ms
		if(sched_tasks[index].interval_ticks < 1)
		{
			sched_tasks[index].interval_ticks = 1;
		}
	}
}
/* This function is placed inside the while(1) of the main function and
    keeps determining if any thread should be executed
*/
void Scheduler_Run(void)
{
	u8 index = 0;
	// Loop to determine if all threads should execute
	for(index=0; index<TASK_NUM; index++)
	{
		// Obtain the current system time
		sched_tasks[index].cnt_now = systime_ms;
		//Calculating interval time, in ms
		sched_tasks[index].dt_ms = sched_tasks[index].cnt_now - sched_tasks[index].cnt_last;
		/*If the current time minus the last execution time is greater than or equal
		to the execution period of the thread, the thread is executed
		*/
		if (sched_tasks[index].dt_ms >= sched_tasks[index].interval_ticks)
		{
			//Updates the execution time of the thread for the next judgment
			sched_tasks[index].cnt_last = sched_tasks[index].cnt_now;
			//Executes a thread function, using a function pointer
			sched_tasks[index].task_func();
		}
	}


}
