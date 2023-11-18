
/****************************************************************/
/*	fsm_control.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the fsm_control.c
		 														*/
/****************************************************************/
/*  Revision History:
	7/18/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "fsm_control.h"

/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
FSM_t stFsm;	            /*定义状态机*/
_fsm_flag fsm_flag;       //定义状态机标志信号
u8 ActNum;                //定义状态数量
u8 EventNum;              //定义事件数量
ACTION_MAP_t *stActMap;   //定义一个动作action表结构体指针变量
EVENT_MAP_t *stEventMap;  //定义一个时间event表结构体指针变量
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
void fsm_control_init(void)
{
	stActMap = get_action_map(&ActNum);
	stEventMap = get_event_map(&EventNum);

	fsm_init(&stFsm, stEventMap, stActMap, EventNum, ActNum, IDLE, &fsm_flag);
}

void fsm_control(void) //状态机主函数，只需将状态换成自己的就可以
{
	fsm_flag.switch_to_edge_segmentation = (key3_flag == 1);		 //切换到边缘分割
	fsm_flag.switch_to_quads_raw = (key3_flag == 1);              //切换到四边形
	fsm_flag.switch_to_edge_refinement = (key3_flag == 1);        //切换到边缘细化
	fsm_flag.switch_to_samples = (key3_flag == 1);              	 //切换到采样
	fsm_flag.switch_to_output = (key3_flag == 1);                 //切换到最终输出
	fsm_flag.switch_to_idle = (key4_flag == 1) || (stFsm.stCurState == OUTPUT && key3_flag == 1);

	switch (stFsm.stCurState) //完成状态切换
	{
		case IDLE:
		{
			if (fsm_flag.switch_to_edge_segmentation == 1)
			{
				fsm_state_transfer(&stFsm, EVENT1);
			}
		}
		break;
		case EDGE_SEGMENTATION:
		{
			if (fsm_flag.switch_to_quads_raw == 1)
			{
				fsm_state_transfer(&stFsm, EVENT2);
			}

			if (fsm_flag.switch_to_idle == 1)
			{
				fsm_state_transfer(&stFsm, EVENT6);
			}

		}
		break;
		case QUADS_RAW:
		{
			if (fsm_flag.switch_to_edge_refinement == 1)
			{
				fsm_state_transfer(&stFsm, EVENT3);
			}

			if (fsm_flag.switch_to_idle == 1)
			{
				fsm_state_transfer(&stFsm, EVENT7);
			}
		}
		break;
		case EDGE_REFINEMENT:
		{
			if (fsm_flag.switch_to_samples == 1)
			{
				fsm_state_transfer(&stFsm, EVENT4);
			}

			if (fsm_flag.switch_to_idle == 1)
			{
				fsm_state_transfer(&stFsm, EVENT8);
			}
		}
		break;
		case SAMPLES:
		{
			if (fsm_flag.switch_to_samples == 1)
			{
				fsm_state_transfer(&stFsm, EVENT5);
			}

			if (fsm_flag.switch_to_idle == 1)
			{
				fsm_state_transfer(&stFsm, EVENT9);
			}
		}
		break;
		case OUTPUT:
		{
			if (fsm_flag.switch_to_idle  == 1)
			{
				fsm_state_transfer(&stFsm, EVENT10);
			}
		}
		break;
		default: break;
	}
	
	action_perfrom(&stFsm); //执行该状态函数
}




