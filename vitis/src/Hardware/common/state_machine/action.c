/****************************************************************/
/*	action.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the action.c
		 														*/
/****************************************************************/
/*  Revision History:
	7/18/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "action.h"
#include "fsm_control.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
void idle_entry(void);
void idle_do(void);
void idle_exit(void);

void edge_segmentation_entry(void);
void edge_segmentation_do(void);
void edge_segmentation_exit(void);

void quads_raw_entry(void);
void quads_raw_do(void);
void quads_raw_exit(void);

void edge_refinement_entry(void);
void edge_refinement_do(void);
void edge_refinement_exit(void);

void samples_entry(void);
void samples_do(void);
void samples_exit(void);

void output_entry (void);
void output_do (void);
void output_exit(void);


ACTION_MAP_t actionMap[] = 
{
	{IDLE,	        		idle_entry,	  				idle_do,	   			idle_exit},
	{EDGE_SEGMENTATION,		edge_segmentation_entry,	edge_segmentation_do,	edge_segmentation_exit},
	{QUADS_RAW,				quads_raw_entry,	        quads_raw_do,	       	quads_raw_exit},
	{EDGE_REFINEMENT,		edge_refinement_entry,	  	edge_refinement_do,    	edge_refinement_exit},
	{SAMPLES,	        	samples_entry,	  			samples_do,	   			samples_exit},
	{OUTPUT,	        	output_entry,	  			output_do,	   			output_exit},
};

void idle_entry(void)
{
	key4_flag = 0;
}

void idle_do(void)
{

}

void idle_exit(void)
{


}

void edge_segmentation_entry(void)
{
	key3_flag = 0;
	printf("hello edge_segmentation");
}

void edge_segmentation_do(void)
{

}

void edge_segmentation_exit(void)
{

	
}

void quads_raw_entry(void)
{
	key3_flag = 0;
	printf("hello quads_raw");
}

void quads_raw_do(void)
{
	

}

void quads_raw_exit(void)
{

}

void edge_refinement_entry(void)
{
	key3_flag = 0;
	printf("hello edge_rifinement");
}

void edge_refinement_do(void)
{

}

void edge_refinement_exit(void)
{

}

void samples_entry(void)
{
	key3_flag = 0;
	printf("hello samples");
}

void samples_do(void)
{
}

void samples_exit(void)
{

}


void output_entry(void)
{
	key3_flag = 0;
	printf("hello output_entry");
}
void output_do(void)
{
	
}
void output_exit(void)
{
	key3_flag = 0;
}


ACTION_MAP_t *get_action_map(u8 *total) 
{
	*total = sizeof(actionMap) / sizeof(ACTION_MAP_t);
	return actionMap;
}
