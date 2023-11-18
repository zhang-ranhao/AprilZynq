/****************************************************************/
/*	timeprofile.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of timeprofile.c
		 														*/
/****************************************************************/
/*  Revision History:
	6/8/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __TIMEPROFILE_H__
#define __TIMEPROFILE_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "zarray.h"
#include "time_util.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
struct timeprofile_entry
{
    char name[32];
    double utime;
};

typedef struct timeprofile timeprofile_t;
struct timeprofile
{
    double utime;
    zarray_t *stamps;
};

static inline timeprofile_t *timeprofile_create()
{
    timeprofile_t *tp = (timeprofile_t*) calloc(1, sizeof(timeprofile_t));
    tp->stamps = zarray_create(sizeof(struct timeprofile_entry));
    tp->utime = utime_now();

    return tp;
}

static inline void timeprofile_stamp(timeprofile_t *tp, const char *name)
{
    struct timeprofile_entry tpe;

    strncpy(tpe.name, name, sizeof(tpe.name));
    tpe.name[sizeof(tpe.name)-1] = 0;
    tpe.utime = utime_now();

    zarray_add(tp->stamps, &tpe);
}

static inline void timeprofile_destroy(timeprofile_t *tp)
{
    zarray_destroy(tp->stamps);
    free(tp);
}

static inline void timeprofile_display(timeprofile_t *tp)
{
	double lastutime = tp->utime;//开始时间

    for (int i = 0; i < zarray_size(tp->stamps); i++) {
        struct timeprofile_entry *stamp;

        zarray_get_volatile(tp->stamps, i, &stamp);

        double cumtime = (stamp->utime - tp->utime) / 1000.0f;

        double parttime = (stamp->utime - lastutime) / 1000.0f;

        printf("%2d %32s %15.3f ms %15.3f ms\n", i, stamp->name, parttime, cumtime);

        lastutime = stamp->utime;
    }
}

#endif
