/****************************************************************/
/*	apriltag_quad_thresh.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of apriltag_quad_thresh
		 														*/
/****************************************************************/
/*  Revision History:
	6/9/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __APRILTAG_QUAD_THRESH__
#define __APRILTAG_QUAD_THRESH__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "../common/image_u8x4.h"
#include "apriltag.h"
#include <stdint.h>
#include "..\common\unionfind.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */
struct cluster_hash
{
    uint32_t hash;
    uint64_t id;
    zarray_t* data;
};

struct uint64_zarray_entry//链表数据类型
{
    uint64_t id;//待存储的边界点ID
    zarray_t *cluster;// 该像素点的聚类信息
    /*指针域*/
    struct uint64_zarray_entry *next;//下一个链表节点地址
};

struct pt
{
    // Note: these represent 2*actual value.
    uint16_t x, y;
    int16_t gx, gy;

    float slope;
};

static inline uint32_t u64hash_2(uint64_t x) {
    return (2654435761 * x) >> 32;//哈希函数，2654435761为2^32的黄金分割数，也就是说2654435761/2^32 = 0.618
}

struct line_fit_pt
{
    double Mx, My;
    double Mxx, Myy, Mxy;
    double W; // total weight
};

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
extern u8 simu_buf[FRAME_SIZE];
extern uint32_t colors[VIDEO_COLUMNS/2 * VIDEO_ROWS/2];
/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
zarray_t *apriltag_quad_thresh(apriltag_detector_t *td, image_u8_t *im, timeprofile_t *tp);
zarray_t* do_gradient_clusters(image_u8_t* threshim, int ts, int y0, int y1, int w, int nclustermap, unionfind_t* uf);
zarray_t* gradient_clusters(apriltag_detector_t *td, image_u8_t* threshim, int w, int h, int ts, unionfind_t* uf) ;
#endif
