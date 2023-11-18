/****************************************************************/
/*	apriltag_init.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the parameters of
  	apriltag algorithm
		 														*/
/****************************************************************/
/*  Revision History:
	6/5/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "apriltag_init.h"
#include "apriltag_pose.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */
#define MAXHAMMING 1
/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
int apriltag_init() {

	//初始化标签族tf，目前该程序是一个轻量版本的apriltag算法，只支持tag36h11标签族
	tag36h11_init(&tf);

	printf("name is %s\r\n",tf.name);
	//初始化td，并将tf加入td
	apriltag_detector_init(&td, &tf);
	//快速解码初始化
	quick_decode_init(&tf, &qd, MAXHAMMING);

	apriltag_pose_init(&info);


	return XST_SUCCESS;
}




