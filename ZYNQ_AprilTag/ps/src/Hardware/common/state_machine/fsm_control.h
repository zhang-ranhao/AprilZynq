/****************************************************************/
/*	fsm_control.h													*/
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
	7/18/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __FSM_CONTROL_H__
#define __FSM_CONTROL_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include <stdio.h>
#include "event.h"
#include "action.h"
#include "../../Driver/ps_gpio.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
extern _fsm_flag fsm_flag;
extern FSM_t stFsm;	            /*定义状态机*/
extern _fsm_flag fsm_flag;       //定义状态机标志信号
extern u8 ActNum;                //定义状态数量
extern u8 EventNum;              //定义事件数量
extern ACTION_MAP_t *stActMap;   //定义一个动作action表结构体指针变量
extern EVENT_MAP_t *stEventMap;  //定义一个时间event表结构体指针变量
/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
void fsm_control(void);
void fsm_transfer_matrix(FSM_t *pstFsm);
void fsm_control_init(void);

#endif
