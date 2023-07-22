/****************************************************************/
/*	fsm.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the fsm
		 														*/
/****************************************************************/
/*  Revision History:
	7/18/2023(Ranhao): Created
																*/
/****************************************************************/
/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include <stdio.h>
#include "fsm.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
void fsm_init(FSM_t *pFsm, EVENT_MAP_t *pEventMap, ACTION_MAP_t *pActionMap,
              u8 EventSum, u8 ActSum, u8 curState, _fsm_flag *pfsm_flag)
{
	pFsm->FLAG = 0;
	pFsm->stNextState = 0;
	pFsm->EventSum = EventSum;
	pFsm->ActSum = ActSum;
	pFsm->stCurState = curState;
	pFsm->pEventMap = pEventMap;
	pFsm->pActionMap = pActionMap;
	pfsm_flag->fsm_init_ok = 1;
}

void fsm_state_transfer(FSM_t *pFsm, u8 stEventID) 
{
	u8 i = 0;

	for (i = 0; i < pFsm->EventSum; i++) 
	{
		if ((stEventID == pFsm->pEventMap[i].stEventID)
		        && (pFsm->stCurState == pFsm->pEventMap[i].stCurState))//当前事件对应于事件表中某一事件，且现态对应于该事件的现态
		{
			pFsm->stNextState = pFsm->pEventMap[i].stNextState;//获得次态标号
			pFsm->FLAG = 1; //标志位置1

			return;
		}
	}
}

s8 get_action_sum(FSM_t *pFsm, u8 ID) 
{
	int i = 0;

	for (i = 0; i < pFsm->ActSum; i++) 
	{
		if (ID == pFsm->pActionMap[i].stStateID)
			return i;
	}

	return -1;
}

void action_perfrom(FSM_t *pFsm) 
{
	s8 CurID = -1, NextID = -1;

	if (0 != pFsm->FLAG) 
	{	/* 标志位不为0表示要进行状态切换 */
		CurID = get_action_sum(pFsm, pFsm->stCurState);//现态序号
		NextID = get_action_sum(pFsm, pFsm->stNextState);//次态序号

		if ((-1 != CurID) && (-1 != NextID)) 
		{
			pFsm->pActionMap[CurID].ExitAct();	/* 执行当前状态的退出动作 */
			pFsm->pActionMap[NextID].EnterAct(); /* 执行下一个状态的进入动作 */
		} 
		else 
		{
			pFsm->FLAG = 0;								/* 清标志位 */
			printf("State transition failed! curState = %d, nextState = %d\n", pFsm->stCurState, pFsm->stNextState);
			return;
		}

		pFsm->stCurState = pFsm->stNextState;			/* 当前状态切换 */
		pFsm->stNextState = -1;
		pFsm->FLAG = 0;								/* 清标志位 */
	} 
	else 
	{
		CurID = get_action_sum(pFsm, pFsm->stCurState);
		if (-1 != CurID)
			pFsm->pActionMap[CurID].RunningAct();/* 标志位为0不进行状态切换，执行当前状态的do动作 */
	}
}
