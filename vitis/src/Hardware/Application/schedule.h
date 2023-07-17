/****************************************************************/
/*	schedule.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of uart.c
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __SCHEDULE_H__
#define __SCHEDULE_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "sys_monitor.h"
#include "dt_save.h"
#include "..\Driver\ps_ttc.h"
#include "..\..\Software\apriltag\application\apriltag.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
typedef struct {
	void(*task_func)(void);
	u16 rate_hz;
	u16 interval_ticks;
	XTime cnt_last;
	XTime cnt_now;
	float dt_ms;
}sched_task_t;
/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
void Scheduler_Setup(void);
void Scheduler_Run(void);

#endif
