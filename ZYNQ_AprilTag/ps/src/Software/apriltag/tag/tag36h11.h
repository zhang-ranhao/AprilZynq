/****************************************************************/
/*	tag36h11.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of tag36h11.c
		 														*/
/****************************************************************/
/*  Revision History:
	6/5/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __TAG36H11_H__
#define __TAG36H11_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <xstatus.h>
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */
typedef struct apriltag_family apriltag_family_t;
struct apriltag_family
{
    // How many codes are there in this tag family?
    u32 ncodes;

    // The codes in the family.
    u64 *codes;

    int width_at_border;
    int total_width;
    u8 reversed_border;

    // The bit locations.
    u32 nbits;
    u32 bit_x[36];
    u32 bit_y[36];

    // minimum hamming distance between any two codes. (e.g. 36h11 => 11)
    u32 h;

    // a human-readable name, e.g., "tag36h11"
    char *name;

    // some detector implementations may preprocess codes in order to
    // accelerate decoding.  They put their data here. (Do not use the
    // same apriltag_family instance in more than one implementation)
    void *impl;
};

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
extern apriltag_family_t tf;
/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
void tag36h11_init(apriltag_family_t *ptf);

#endif
