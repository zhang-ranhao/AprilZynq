
/****************************************************************/
/*	event.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the event.c
		 														*/
/****************************************************************/
/*  Revision History:
	7/18/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "event.h"
#include "action.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
EVENT_MAP_t eventMap[] = 
{
	{EVENT1,	IDLE,	             	EDGE_SEGMENTATION},
	{EVENT2,	EDGE_SEGMENTATION,		QUADS_RAW},
	{EVENT3,	QUADS_RAW,	     		EDGE_REFINEMENT},
	{EVENT4,	EDGE_REFINEMENT,		SAMPLES},
	{EVENT5,	SAMPLES,				OUTPUT},
	{EVENT6,	EDGE_SEGMENTATION,		IDLE},
	{EVENT7,	QUADS_RAW,				IDLE},
	{EVENT8,	EDGE_REFINEMENT,       	IDLE},
	{EVENT9,	SAMPLES,       			IDLE},
	{EVENT10,	OUTPUT,       			IDLE},

};

EVENT_MAP_t *get_event_map(u8 *total) 
{
	*total = sizeof(eventMap) / sizeof(EVENT_MAP_t);
	return eventMap;
}
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */


