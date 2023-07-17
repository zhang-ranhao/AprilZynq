/****************************************************************/
/*	ps_ttc.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of ps_ttc.h
		 														*/
/****************************************************************/
/*  Revision History:
	5/30/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __PS_TTC_H__
#define __PS_TTC_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "xttcps.h"
#include "ps_gic.h"
#include "pl_vdma.h"
#include "ps_dp.h"
#include "xil_printf.h"
#include "xtime_l.h"
#include "../common/config.h"


/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */
#define FPS_OUTPUT_PERIOD 1000

typedef struct {
	u32 OutputHz;	/* Output frequency */
	XInterval Interval;	/* Interval value */
	u8 Prescaler;	/* Prescaler value */
	u16 Options;	/* Option settings */
} TmrCntrSetup;
/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */
extern XTime systime_ms;
/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
int SetupTicker(void);

#endif
