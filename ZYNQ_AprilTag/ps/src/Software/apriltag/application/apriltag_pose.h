/****************************************************************/
/*	apriltag_pose.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of apriltag_pose.c
		 														*/
/****************************************************************/
/*  Revision History:
	7/10/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __APRILTAG_POSE_H__
#define __APRILTAG_POSE_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "../common/matd.h"
#include "apriltag.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */
typedef struct {
    apriltag_detection_t* det;
    double tagsize; // In meters.
    double fx; // In pixels.
    double fy; // In pixels.
    double cx; // In pixels.
    double cy; // In pixels.
} apriltag_detection_info_t;

typedef struct {
    matd_t* R;
    matd_t* t;
} apriltag_pose_t;
/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
extern apriltag_detection_info_t info;
extern apriltag_pose_t pose;
/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
void apriltag_pose_init(apriltag_detection_info_t *info);
double estimate_tag_pose(apriltag_detection_info_t *info, apriltag_pose_t *pose);

#endif
