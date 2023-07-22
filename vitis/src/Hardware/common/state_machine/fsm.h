/****************************************************************/
/*	ps_uart.h													*/
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
#ifndef __FSM_H__
#define __FSM_H__
/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "xil_printf.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */
typedef void (*STATE_ACTION)(void);

typedef struct ACTION_MAP {
	u8 		        stStateID;
	STATE_ACTION 	EnterAct;
	STATE_ACTION 	RunningAct;
	STATE_ACTION 	ExitAct;
} ACTION_MAP_t;/* 动作action表描述 */


typedef struct EVENT_MAP {
	u8	stEventID;
	s8  stCurState;
	s8  stNextState;
} EVENT_MAP_t; /* 事件event表描述 */

typedef struct FSM {
	u8 FLAG; 			/* 状态切换标志位,1表示要进行状态切换 */
	u8 EventSum;			/* 事件event总数 */
	u8 ActSum;			/* 动作action总数 */
	s8 stCurState;
	s8 stNextState;
	ACTION_MAP_t *pActionMap;
	EVENT_MAP_t *pEventMap;
} FSM_t; /*状态机控制结构 */


typedef struct FSM_FLAG
{
	u8 fsm_init_ok;                      //状态机初始化完成信号
	u8 switch_to_edge_segmentation;		 //切换到边缘分割
	u8 switch_to_quads_raw;              //切换到四边形
	u8 switch_to_edge_refinement;        //切换到边缘细化
	u8 switch_to_samples;              	 //切换到采样
	u8 switch_to_output;                 //切换到最终输出
	u8 switch_to_idle;
	
} _fsm_flag;                           //״//状态机控制标志信号
/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */

void fsm_init(FSM_t *pFsm, EVENT_MAP_t *pEventMap, ACTION_MAP_t *pActionMap,
              u8 EventSum, u8 ActSum, u8 curState, _fsm_flag *pfsm_flag);
void fsm_state_transfer(FSM_t *pFsm, u8 stEventID);
void action_perfrom(FSM_t *pFsm);

extern _fsm_flag fsm_flag; 


#endif


