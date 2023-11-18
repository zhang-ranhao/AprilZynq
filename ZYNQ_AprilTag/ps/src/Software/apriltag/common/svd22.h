/****************************************************************/
/*	svd22.h													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
  	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  		This file is the header file of svd22.c
		 														*/
/****************************************************************/
/*  Revision History:
	7/10/2023(Ranhao): Created
																*/
/****************************************************************/

#ifndef __SVD22_H__
#define __SVD22_H__

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Miscellaneous Declarations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Declaraitons  					*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Declarations							*/
/* ------------------------------------------------------------ */
void svd22(const double A[4], double U[4], double S[2], double V[4]);

#endif