/****************************************************************/
/*	ov5640.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the OV5640,
  	There are three resolutions to choose from,
  	1080p 30fps /  720p 60fps  / 480p 90fps
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "ov5640.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
struct reginfo sensor_init_data[] =
{	
		//[7]=0 Software reset; [6]=1 Software power down; Default=0x02
		{0x3008, 0x42},
		//[1]=1 System input clock from PLL; Default read = 0x11
		{0x3103, 0x03},
		//[3:0]=0000 MD2P,MD2N,MCP,MCN input; Default=0x00
		{0x3017, 0x00},
		//[7:2]=000000 MD1P,MD1N, D3:0 input; Default=0x00
		{0x3018, 0x00},
		//[6:4]=001 PLL charge pump, [3:0]=1000 MIPI 8-bit mode
		{0x3034, 0x18},
		//PLL1 configuration
		//[7:4]=0001 System clock divider /1, [3:0]=0001 Scale divider for MIPI /1
		{0x3035, 0x11},
		//[7:0]=56 PLL multiplier
		{0x3036, 0x38},
		//[4]=1 PLL root divider /2, [3:0]=1 PLL pre-divider /1
		{0x3037, 0x11},
		//[5:4]=00 PCLK root divider /1, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
		{0x3108, 0x01},
		//PLL2 configuration
		//[5:4]=01 PRE_DIV_SP /1.5, [2]=0 R_DIV_SP /1, [1:0]=00 DIV12_SP /1
		{0x303D, 0x10},
		//[4:0]=11001 PLL2 multiplier DIV_CNT5B = 25
		{0x303B, 0x19},

		{0x3630, 0x2e},
		{0x3631, 0x0e},
		{0x3632, 0xe2},
		{0x3633, 0x23},
		{0x3621, 0xe0},
		{0x3704, 0xa0},
		{0x3703, 0x5a},
		{0x3715, 0x78},
		{0x3717, 0x01},
		{0x370b, 0x60},
		{0x3705, 0x1a},
		{0x3905, 0x02},
		{0x3906, 0x10},
		{0x3901, 0x0a},
		{0x3731, 0x02},




		//VCM debug mode
		{0x3600, 0x37},
		{0x3601, 0x33},
		//System control register changing not recommended
		{0x302d, 0x60},
		//??
		{0x3620, 0x52},
		{0x371b, 0x20},
		//?? DVP
		{0x471c, 0x50},

		//{0x3600, 0x08},
		//{0x3601, 0x33},

		{0x3a13, 0x43},
		{0x3a18, 0x00},
		{0x3a19, 0xf8},
		{0x3635, 0x13},
		{0x3636, 0x06},
		{0x3634, 0x44},
		{0x3622, 0x01},
		{0x3c01, 0x34},
		{0x3c04, 0x28},
		{0x3c05, 0x98},
		{0x3c06, 0x00},
		{0x3c07, 0x08},
		{0x3c08, 0x00},
		{0x3c09, 0x1c},
		{0x3c0a, 0x9c},
		{0x3c0b, 0x40},

		//[7]=1 color bar enable, [3:2]=00 eight color bar
		{0x503d, 0x00},
		//[2]=1 ISP vflip, [1]=1 sensor vflip
		{0x3820, 0x46},

		//[7:5]=001 Two lane mode, [4]=0 MIPI HS TX no power down, [3]=0 MIPI LP RX no power down, [2]=1 MIPI enable, [1:0]=10 Debug mode; Default=0x58
		{0x300e, 0x45},
		//[5]=0 Clock free running, [4]=1 Send line short packet, [3]=0 Use lane1 as default, [2]=1 MIPI bus LP11 when no packet; Default=0x04
		{0x4800, 0x14},
		{0x302e, 0x08},
		//[7:4]=0x3 YUV422, [3:0]=0x0 YUYV
		//{0x4300, 0x30},
		//[7:4]=0x6 RGB565, [3:0]=0x0 {b[4:0],g[5:3],g[2:0],r[4:0]}
		{0x4300, 0x6f},
		{0x501f, 0x01},

		{0x4713, 0x03},
		{0x4407, 0x04},
		{0x440e, 0x00},
		{0x460b, 0x35},
		//[1]=0 DVP PCLK divider manual control by 0x3824[4:0]
		{0x460c, 0x20},
		//[4:0]=1 SCALE_DIV=INT(3824[4:0]/2)
		{0x3824, 0x01},
		//[7]=1 LENC correction enabled, [5]=1 RAW gamma enabled, [2]=1 Black pixel cancellation enabled, [1]=1 White pixel cancellation enabled, [0]=1 Color interpolation enabled
		{0x5000, 0x07},
		//[7]=0 Special digital effects, [5]=0 scaling, [2]=0 UV average disabled, [1]=1 Color matrix enabled, [0]=1 Auto white balance enabled
		{0x5001, 0x03},

		{SEQUENCE_END, 0x00}
};

struct reginfo sg130_sensor_init_data[] =
{
		{0x0100,0x00},

		{0x3000,0x00},
		{0x3001,0x00},
		{0x3018,0x30},
		{0x3019,0x00},
		{0x3022,0x10},
		{0x302b,0x80},
		{0x3030,0x04},
		{0x3031,0x0a},
		{0x3034,0x0d},
		{0x3035,0x2a},
		{0x3038,0x44},
		{0x3039,0x24},
		{0x303a,0x36},
		{0x303b,0x06},
		{0x303c,0x04},
		{0x303f,0x11},
		{0x3202,0x00},
		{0x3203,0x00},
		{0x3205,0x8b},
		{0x3206,0x02},
		{0x3207,0x04},
		{0x320a,0x04},
		{0x320b,0x00},
		{0x320c,0x02},
		{0x320d,0xee},
		{0x320e,0x02},
		{0x320f,0x14},
		{0x3211,0x0c},
		{0x3213,0x04},
		{0x3300,0x20},
		{0x3302,0x0c},
		{0x3306,0x28},
		{0x3308,0x50},
		{0x330a,0x00},
		{0x330b,0x40},
		{0x330e,0x1a},
		{0x3310,0xf0},
		{0x3311,0x10},
		{0x3319,0xe8},
		{0x3333,0x90},
		{0x3334,0x30},
		{0x3348,0x02},
		{0x3349,0xee},
		{0x334a,0x02},
		{0x334b,0xe8},
		{0x335d,0x00},
		{0x3380,0xff},
		{0x3382,0xe0},
		{0x3383,0x0a},
		{0x3384,0xe4},
		{0x3400,0x53},
		{0x3416,0x31},
		{0x3518,0x07},
		{0x3519,0xc8},
		{0x3620,0x23},
		{0x3621,0x0a},
		{0x3622,0x06},
		{0x3623,0x14},
		{0x3624,0x40},
		{0x3625,0x00},
		{0x3626,0x00},
		{0x3627,0x01},
		{0x3630,0x63},
		{0x3632,0x74},
		{0x3633,0x63},
		{0x3634,0xff},
		{0x3635,0x44},
		{0x3638,0x82},
		{0x3639,0x74},
		{0x363a,0x24},
		{0x363b,0x00},
		{0x3640,0x02},
		{0x3663,0x88},
		{0x3664,0x07},
		{0x3c00,0x41},
		{0x3d08,0x00},
		{0x3e01,0x1a},
		{0x3e02,0x00},
		{0x3e03,0x0b},
		{0x3e08,0x03},
		{0x3e09,0x20},
		{0x3e0e,0x00},
		{0x3e0f,0x14},
		{0x3e14,0xb0},
		{0x3f08,0x04},
		{0x4501,0xc0},
		{0x4502,0x16},
		{0x4837,0x43},
		{0x5000,0x01},
		{0x5b00,0x02},
		{0x5b01,0x03},
		{0x5b02,0x01},
		{0x5b03,0x01},

		{0x0100,0x01},




		{SEQUENCE_END, 0x00}
};




struct reginfo cfg_480p_90fps[] =
{
		// 640 �� 480 90fps MIPISCLK=420, SCLK=84MHz, PCLK=84M

		{0x3035, 0x21}, // 90 fps setting
		//[7:0]=105 PLL multiplier
		{0x3036, 0x69},   //78 * 8  624MHz
		//[4]=0 PLL root divider /1, [3:0]=5 PLL pre-divider /1.5
		{0x3037, 0x05},
		//[5:4]=01 PCLK root divider /2, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
		{0x3108, 0x11},
		//[6:4]=001 PLL charge pump, [3:0]=1010 MIPI 10-bit mode
		{0x3034, 0x1A},

		//[3:0]=0 X address start high byte
		{0x3800, (0 >> 0) & 0x0F},
		//[7:0]=0 X address start low byte
		{0x3801, 0 & 0xFF},
		//[2:0]=0 Y address start high byte
		{0x3802, (0 >> 8) & 0x07},
		//[7:0]=0 Y address start low byte
		{0x3803, 0 & 0xFF},

		//[3:0] X address end high byte
		{0x3804, (2623 >> 8) & 0x0F},
		//[7:0] X address end low byte
		{0x3805, 2623 & 0xFF},
		//[2:0] Y address end high byte
		{0x3806, (1951 >> 8) & 0x07},
		//[7:0] Y address end low byte
		{0x3807, 1951 & 0xFF},

		//[3:0] Output horizontal width high byte
		{0x3808, (640 >> 8) & 0x0F},
		//[7:0] Output horizontal width low byte
		{0x3809, 640 & 0xFF},
		//[2:0] Output vertical height high byte
		{0x380a, (480 >> 8) & 0x07},
		//[7:0] Output vertical height low byte
		{0x380b, 480 & 0xFF},

		//HTS line exposure time in # of pixels
		{0x380c, (1880 >> 8) & 0x0F},
		{0x380d, 1880 & 0xFF},
		//VTS frame exposure time in # lines
		{0x380e, (496 >> 8) & 0xFF},
		{0x380f, 496 & 0xFF},



		//[3:0]=0 timing hoffset high byte
		{0x3810, (8 >> 8) & 0x0F},
		//[7:0]=0 timing hoffset low byte
		{0x3811, 8 & 0xFF},
		//[2:0]=0 timing voffset high byte
		{0x3812, (2 >> 8) & 0x07},
		//[7:0]=0 timing voffset low byte
		{0x3813, 2 & 0xFF},

		//[7:4]=0x3 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
		{0x3814, 0x71},
		//[7:4]=0x3 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
		{0x3815, 0x35},

		//[2]=0 ISP mirror, [1]=0 sensor mirror, [0]=1 horizontal binning
		{0x3821, 0x01},

		//little MIPI shit: global timing unit, period of PCLK in ns * 2(depends on # of lanes)
		{0x4837, 24}, // 1/84M*2

		//Undocumented anti-green settings
		{0x3618, 0x00}, // Removes vertical lines appearing under bright light
		{0x3612, 0x59},
		{0x3708, 0x64},
		{0x3709, 0x52},
		{0x370c, 0x03},

		//[7:4]=0x0 Formatter RAW, [3:0]=0x0 BGBG/GRGR
		{0x4300, 0x00},
		//[2:0]=0x3 Format select ISP RAW (DPC)
		{0x501f, 0x03},

		{SEQUENCE_END, 0x00}
};


struct reginfo cfg_720p_30fps[] =
{
		// 1280 �� 720 60fps MIPISCLK=420, SCLK=84MHz, PCLK=84M

		//1280 x 720 binned, RAW10, MIPISCLK=280M, SCLK=56Mz, PCLK=56M
		//PLL1 configuration
		//[7:4]=0010 System clock divider /2, [3:0]=0001 Scale divider for MIPI /1

		{0x3035, 0x21},
		//[7:0]=70 PLL multiplier
		{0x3036, 0x46},
		//[4]=0 PLL root divider /1, [3:0]=5 PLL pre-divider /1.5
		{0x3037, 0x05},
		//[5:4]=01 PCLK root divider /2, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
		{0x3108, 0x11},

		//[6:4]=001 PLL charge pump, [3:0]=1010 MIPI 10-bit mode
		{0x3034, 0x1A},

		//[3:0]=0 X address start high byte
		{0x3800, (0 >> 8) & 0x0F},
		//[7:0]=0 X address start low byte
		{0x3801, 0 & 0xFF},
		//[2:0]=0 Y address start high byte
		{0x3802, (8 >> 8) & 0x07},
		//[7:0]=0 Y address start low byte
		{0x3803, 8 & 0xFF},

		//[3:0] X address end high byte
		{0x3804, (2619 >> 8) & 0x0F},
		//[7:0] X address end low byte
		{0x3805, 2619 & 0xFF},
		//[2:0] Y address end high byte
		{0x3806, (1947 >> 8) & 0x07},
		//[7:0] Y address end low byte
		{0x3807, 1947 & 0xFF},

		//[3:0]=0 timing hoffset high byte
		{0x3810, (0 >> 8) & 0x0F},
		//[7:0]=0 timing hoffset low byte
		{0x3811, 0 & 0xFF},
		//[2:0]=0 timing voffset high byte
		{0x3812, (0 >> 8) & 0x07},
		//[7:0]=0 timing voffset low byte
		{0x3813, 0 & 0xFF},

		//[3:0] Output horizontal width high byte
		{0x3808, (1280 >> 8) & 0x0F},
		//[7:0] Output horizontal width low byte
		{0x3809, 1280 & 0xFF},
		//[2:0] Output vertical height high byte
		{0x380a, (720 >> 8) & 0x7F},
		//[7:0] Output vertical height low byte
		{0x380b, 720 & 0xFF},

		//HTS line exposure time in # of pixels
		{0x380c, (1896 >> 8) & 0x1F},
		{0x380d, 1896 & 0xFF},
		//VTS frame exposure time in # lines
		{0x380e, (984 >> 8) & 0xFF},
		{0x380f, 984 & 0xFF},

		//[7:4]=0x3 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
		{0x3814, 0x31},
		//[7:4]=0x3 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
		{0x3815, 0x31},

		//[2]=0 ISP mirror, [1]=0 sensor mirror, [0]=1 horizontal binning
		{0x3821, 0x01},

		//little MIPI shit: global timing unit, period of PCLK in ns * 2(depends on # of lanes)
		{0x4837, 36}, // 1/56M*2

		//Undocumented anti-green settings
		{0x3618, 0x00}, // Removes vertical lines appearing under bright light
		{0x3612, 0x59},
		{0x3708, 0x64},
		{0x3709, 0x52},
		{0x370c, 0x03},

		//[7:4]=0x0 Formatter RAW, [3:0]=0x0 BGBG/GRGR
		{0x4300, 0x00},
		//[2:0]=0x3 Format select ISP RAW (DPC)
		{0x501f, 0x03},
		{SEQUENCE_END, 0x00}

};

struct reginfo cfg_720p_60fps[] =
{
		{0x3035, 0x21}, // 60fps setting
		//[7:0]=105 PLL multiplier
		{0x3036, 0x69},
		//[4]=0 PLL root divider /1, [3:0]=5 PLL pre-divider /1.5
		{0x3037, 0x05},
		//[5:4]=01 PCLK root divider /2, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
		{0x3108, 0x11},
		//[6:4]=001 PLL charge pump, [3:0]=1010 MIPI 10-bit mode
		{0x3034, 0x1A},

		//[3:0]=0 X address start high byte
		{0x3800, (0 >> 8) & 0x0F},
		//[7:0]=0 X address start low byte
		{0x3801, 0 & 0xFF},
		//[2:0]=0 Y address start high byte
		{0x3802, (250 >> 8) & 0x07},
		//[7:0]=0 Y address start low byte
		{0x3803, 250 & 0xFF},

		//[3:0] X address end high byte
		{0x3804, (2623 >> 8) & 0x0F},
		//[7:0] X address end low byte
		{0x3805, 2623 & 0xFF},
		//[2:0] Y address end high byte
		{0x3806, (1705 >> 8) & 0x07},
		//[7:0] Y address end low byte
		{0x3807, 1705 & 0xFF},

		//[3:0] Output horizontal width high byte
		{0x3808,(1280 >> 8) & 0x0F},
		//[7:0] Output horizontal width low byte
		{0x3809, 1280 & 0xFF},
		//[2:0] Output vertical height high byte
		{0x380a, (720 >> 8) & 0x07},
		//[7:0] Output vertical height low byte
		{0x380b, 720 & 0xFF},

		//HTS line exposure time in # of pixels
		{0x380c, (1892 >> 8) & 0x0F},
		{0x380d, 1892 & 0xFF},
		//VTS frame exposure time in # lines
		{0x380e, (740 >> 8) & 0xFF},
		{0x380f, 740 & 0xFF},

		//[3:0]=0 timing hoffset high byte
		{0x3810, (16 >> 8) & 0x0F},
		//[7:0]=0 timing hoffset low byte
		{0x3811, 16 & 0xFF},
		//[2:0]=0 timing voffset high byte
		{0x3812, (4 >> 8) & 0x07},
		//[7:0]=0 timing voffset low byte
		{0x3813, 4 & 0xFF},

		//[7:4]=0x3 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
		{0x3814, 0x31},
		//[7:4]=0x3 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
		{0x3815, 0x31},

		//[2]=0 ISP mirror, [1]=0 sensor mirror, [0]=1 horizontal binning
		{0x3821, 0x01},

		//little MIPI shit: global timing unit, period of PCLK in ns * 2(depends on # of lanes)
		{0x4837, 24}, // 1/56M*2

		//Undocumented anti-green settings
		{0x3618, 0x00}, // Removes vertical lines appearing under bright light
		{0x3612, 0x59},
		{0x3708, 0x64},
		{0x3709, 0x52},
		{0x370c, 0x03},

		//[7:4]=0x0 Formatter RAW, [3:0]=0x0 BGBG/GRGR
		{0x4300, 0x00},
		//[2:0]=0x3 Format select ISP RAW (DPC)
		{0x501f, 0x03},
		{SEQUENCE_END, 0x00}
};

struct reginfo cfg_1080p_30fps[] =
{//1920 x 1080 @ 30fps, RAW10, MIPISCLK=420, SCLK=84MHz, PCLK=84M
		//PLL1 configuration
		//[7:4]=0010 System clock divider /2, [3:0]=0001 Scale divider for MIPI /1
		{0x3035, 0x21}, // 30fps setting
		//[7:0]=105 PLL multiplier
		{0x3036, 0x69},
		//[4]=0 PLL root divider /1, [3:0]=5 PLL pre-divider /1.5
		{0x3037, 0x05},
		//[5:4]=01 PCLK root divider /2, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
		{0x3108, 0x11},

		//[6:4]=001 PLL charge pump, [3:0]=1010 MIPI 10-bit mode
		{0x3034, 0x1A},

		//[3:0]=0 X address start high byte
		{0x3800, (336 >> 8) & 0x0F},
		//[7:0]=0 X address start low byte
		{0x3801, 336 & 0xFF},
		//[2:0]=0 Y address start high byte
		{0x3802, (426 >> 8) & 0x07},
		//[7:0]=0 Y address start low byte
		{0x3803, 426 & 0xFF},

		//[3:0] X address end high byte
		{0x3804, (2287 >> 8) & 0x0F},
		//[7:0] X address end low byte
		{0x3805, 2287 & 0xFF},
		//[2:0] Y address end high byte
		{0x3806, (1529 >> 8) & 0x07},
		//[7:0] Y address end low byte
		{0x3807, 1529 & 0xFF},

		//[3:0]=0 timing hoffset high byte
		{0x3810, (16 >> 8) & 0x0F},
		//[7:0]=0 timing hoffset low byte
		{0x3811, 16 & 0xFF},
		//[2:0]=0 timing voffset high byte
		{0x3812, (12 >> 8) & 0x07},
		//[7:0]=0 timing voffset low byte
		{0x3813, 12 & 0xFF},

		//[3:0] Output horizontal width high byte
		{0x3808, (1920 >> 8) & 0x0F},
		//[7:0] Output horizontal width low byte
		{0x3809, 1920 & 0xFF},
		//[2:0] Output vertical height high byte
		{0x380a, (1080 >> 8) & 0x7F},
		//[7:0] Output vertical height low byte
		{0x380b, 1080 & 0xFF},

		//HTS line exposure time in # of pixels Tline=HTS/sclk
		{0x380c, (2500 >> 8) & 0x1F},
		{0x380d, 2500 & 0xFF},
		//VTS frame exposure time in # lines
		{0x380e, (1120 >> 8) & 0xFF},
		{0x380f, 1120 & 0xFF},

		//[7:4]=0x1 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
		{0x3814, 0x11},
		//[7:4]=0x1 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
		{0x3815, 0x11},

		//[2]=0 ISP mirror, [1]=0 sensor mirror, [0]=0 no horizontal binning
		{0x3821, 0x00},

		//little MIPI shit: global timing unit, period of PCLK in ns * 2(depends on # of lanes)
		{0x4837, 24}, // 1/84M*2

		//Undocumented anti-green settings
		{0x3618, 0x00}, // Removes vertical lines appearing under bright light
		{0x3612, 0x59},
		{0x3708, 0x64},
		{0x3709, 0x52},
		{0x370c, 0x03},

		//[7:4]=0x0 Formatter RAW, [3:0]=0x0 BGBG/GRGR
		{0x4300, 0x00},
		//[2:0]=0x3 Format select ISP RAW (DPC)
		{0x501f, 0x03},

		{SEQUENCE_END, 0x00}
};

struct reginfo cfg_advanced_awb[] =
{
		// Enable Advanced AWB
		{0x3406 ,0x00},
		{0x5192 ,0x04},
		{0x5191 ,0xf8},
		{0x518d ,0x26},
		{0x518f ,0x42},
		{0x518e ,0x2b},
		{0x5190 ,0x42},
		{0x518b ,0xd0},
		{0x518c ,0xbd},
		{0x5187 ,0x18},
		{0x5188 ,0x18},
		{0x5189 ,0x56},
		{0x518a ,0x5c},
		{0x5186 ,0x1c},
		{0x5181 ,0x50},
		{0x5184 ,0x20},
		{0x5182 ,0x11},
		{0x5183 ,0x00},
		{0x5001 ,0x03},

		{0x3600, 0x37}, //VCM控制,用于自动聚焦
		{0x3601, 0x33}, //VCM控制,用于自动聚焦



		{0x302d, 0x60}, //系统控制

		{0x3620, 0x52},//?
		{0x371b, 0x20},
		{0x471c, 0x50},


		{0x3a13, 0x43}, //AEC(自动曝光控制)
		{0x3a18, 0x00}, //AEC 增益上限
		{0x3a19, 0xf8}, //AEC 增益上限
		{0x3635, 0x13},
		{0x3636, 0x03},
		{0x3634, 0x40},
		{0x3622, 0x01},

		//50/60hz 去除50/60hz灯光条纹
		{0x3c01, 0x34},
		{0x3c04, 0x28},
		{0x3c05, 0x98},
		{0x3c06, 0x00}, //light meter 1 阈值[15:8]
		{0x3c07, 0x08}, //light meter 1 阈值[7:0]
		{0x3c08, 0x00}, //light meter 2 阈值[15:8]
		{0x3c09, 0x1c}, //light meter 2 阈值[7:0]
		{0x3c0a, 0x9c}, //sample number[15:8]
		{0x3c0b, 0x40}, //sample number[7:0]


		{0x3810, 0x00}, //Timing Hoffset[11:8]
		{0x3811, 0x00}, //Timing Hoffset[7:0]
		{0x3812, 0x00}, //Timing Voffset[10:8]
		{0x3813, 0x00}, //Timing Voffset[10:8]



		{0x3708, 0x64},
		{0x4001, 0x02}, //BLC(黑电平校准)补偿起始行号
		{0x4005, 0x1a}, //BLC(黑电平校准)补偿始终更新


		{0x3000, 0x00},//系统块复位控制
		{0x3004, 0xff},//时钟使能控制

		{0x4300,0x00}, //格式控制 RAW
		{0x501f,0x03}, //ISP RAW

		{0x440e,0x00},

		{0x5000,0xa7}, //ISP控制
		{0x3a0f,0x30}, //AEC控制;stable range in high
		{0x3a10,0x28},//AEC控制;stable range in low
		{0x3a1b,0x30}, //AEC控制;stable range out high
		{0x3a1e,0x26}, //AEC控制;stable range out low
		{0x3a11,0x60}, //AEC控制; fast zone high
		{0x3a1f,0x14}, //AEC控制; fast zone low

		//LENC(镜头校正)控制 0x5800~0x583d
		{0x5800,0x23},
		{0x5801,0x14},
		{0x5802,0x0f},
		{0x5803,0x0f},
		{0x5804,0x12},
		{0x5805,0x26},
		{0x5806,0x0c},
		{0x5807,0x08},
		{0x5808,0x05},
		{0x5809,0x05},
		{0x580a,0x08},
		{0x580b,0x0d},
		{0x580c,0x08},
		{0x580d,0x03},
		{0x580e,0x00},
		{0x580f,0x00},
		{0x5810,0x03},
		{0x5811,0x09},
		{0x5812,0x07},
		{0x5813,0x03},
		{0x5814,0x00},
		{0x5815,0x01},
		{0x5816,0x03},
		{0x5817,0x08},
		{0x5818,0x0d},
		{0x5819,0x08},
		{0x581a,0x05},
		{0x581b,0x06},
		{0x581c,0x08},
		{0x581d,0x0e},
		{0x581e,0x29},
		{0x581f,0x17},
		{0x5820,0x11},
		{0x5821,0x11},
		{0x5822,0x15},
		{0x5823,0x28},
		{0x5824,0x46},
		{0x5825,0x26},
		{0x5826,0x08},
		{0x5827,0x26},
		{0x5828,0x64},
		{0x5829,0x26},
		{0x582a,0x24},
		{0x582b,0x22},
		{0x582c,0x24},
		{0x582d,0x24},
		{0x582e,0x06},
		{0x582f,0x22},
		{0x5830,0x40},
		{0x5831,0x42},
		{0x5832,0x24},
		{0x5833,0x26},
		{0x5834,0x24},
		{0x5835,0x22},
		{0x5836,0x22},
		{0x5837,0x26},
		{0x5838,0x44},
		{0x5839,0x24},
		{0x583a,0x26},
		{0x583b,0x28},
		{0x583c,0x42},
		{0x583d,0xce},

		//AWB(自动白平衡控制} 0x5180~0x519e
		{0x5180,0xff},
		{0x5181,0xf2},
		{0x5182,0x00},
		{0x5183,0x14},
		{0x5184,0x25},
		{0x5185,0x24},
		{0x5186,0x09},
		{0x5187,0x09},
		{0x5188,0x09},
		{0x5189,0x75},
		{0x518a,0x54},
		{0x518b,0xe0},
		{0x518c,0xb2},
		{0x518d,0x42},
		{0x518e,0x3d},
		{0x518f,0x56},
		{0x5190,0x46},
		{0x5191,0xf8},
		{0x5192,0x04},
		{0x5193,0x70},
		{0x5194,0xf0},
		{0x5195,0xf0},
		{0x5196,0x03},
		{0x5197,0x01},
		{0x5198,0x04},
		{0x5199,0x12},
		{0x519a,0x04},
		{0x519b,0x00},
		{0x519c,0x06},
		{0x519d,0x82},
		{0x519e,0x38},

		//Gamma(伽马}控制 0x5480~0x5490
		{0x5480,0x01},
		{0x5481,0x08},
		{0x5482,0x14},
		{0x5483,0x28},
		{0x5484,0x51},
		{0x5485,0x65},
		{0x5486,0x71},
		{0x5487,0x7d},
		{0x5488,0x87},
		{0x5489,0x91},
		{0x548a,0x9a},
		{0x548b,0xaa},
		{0x548c,0xb8},
		{0x548d,0xcd},
		{0x548e,0xdd},
		{0x548f,0xea},
		{0x5490,0x1d},

		//CMX(彩色矩阵控制} 0x5381~0x538b
		{0x5381,0x1e},
		{0x5382,0x5b},
		{0x5383,0x08},
		{0x5384,0x0a},
		{0x5385,0x7e},
		{0x5386,0x88},
		{0x5387,0x7c},
		{0x5388,0x6c},
		{0x5389,0x10},
		{0x538a,0x01},
		{0x538b,0x98},

		//SDE(特殊数码效果}控制 0x5580~0x558b
		{0x5580,0x06},
		{0x5583,0x40},
		{0x5584,0x10},
		{0x5589,0x10},
		{0x558a,0x00},
		{0x558b,0xf8},
		{0x501d,0x40}, //ISP MISC

		//CIP(颜色插值}控制 (0x5300~0x530c}
		{0x5300,0x08},
		{0x5301,0x30},
		{0x5302,0x10},
		{0x5303,0x00},
		{0x5304,0x08},
		{0x5305,0x30},
		{0x5306,0x08},
		{0x5307,0x16},
		{0x5309,0x08},
		{0x530a,0x30},
		{0x530b,0x04},
		{0x530c,0x06},
		{0x5025,0x00},

		{0x3618,0x00},
		{0x3612,0x29},
		{0x3709,0x52},
		{0x370c,0x03},

		{0x3a02,0x17}, //60Hz max exposure
		{0x3a03,0x10}, //60Hz max exposure
		{0x3a14,0x17}, //50Hz max exposure
		{0x3a15,0x10}, //50Hz max exposure

		{0x4004,0x02}, //BLC(背光} 2 lines

		{0x4713,0x03}, //JPEG mode 3

		{0x4407,0x04}, //量化标度

		//{0x460c,0x22},

		//{0x4837,0x36}, //DVP CLK divider

		//{0x3824,0x01}, //DVP CLK divider

		//{0x5001,0xa3}, //ISP 控制
		//{0x3034, 0x1A},

		{0x3b07,0x0a}, //帧曝光模式

		//彩条测试使能
		//{0x503d,0x00}, //0x00:正常模式 0x80:彩条显示

		//测试闪光灯功能

		{0x3016,0x02},
		{0x301c,0x02},
		{0x3019,0x02}, //打开闪光灯
		{0x3019,0x00}, //关闭闪光灯

		{SEQUENCE_END, 0x00}
};
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */
int ov5640_read(XIicPs *IicInstance,u16 addr,u8 *read_buf)
{
	*read_buf=i2c_reg16_read(IicInstance,0x3c,addr);
	return XST_SUCCESS;
}

int ov5640_write(XIicPs *IicInstance,u16 addr,u8 data)
{

	return i2c_reg16_write(IicInstance, 0x3c,addr,data);
}

int sg130_write(XIicPs *IicInstance,u16 addr,u8 data)
{

	return i2c_reg16_write(IicInstance, 0x60,addr,data);
}


/* write a array of registers  */
void sg130_sensor_write_array(XIicPs *IicInstance, struct reginfo *regarray)
{
	int i = 0;
	while (regarray[i].reg != SEQUENCE_END) {
		sg130_write(IicInstance,regarray[i].reg,regarray[i].val);
		i++;
	}

}



/* write a array of registers  */
void sensor_write_array(XIicPs *IicInstance, struct reginfo *regarray)
{
	int i = 0;
	while (regarray[i].reg != SEQUENCE_END) {
		ov5640_write(IicInstance,regarray[i].reg,regarray[i].val);
		i++;
	}

}

struct reginfo ov5640_2_sensor_init_data[] =
{
		{0x3008, 0x42}, //正常工作模式

		{0x3103, 0x03}, //Bit[1]:1 PLL Clock
		//引脚输入/输出控制 FREX/VSYNC/HREF/PCLK/D[9:6]
		{0x3017, 0x00},
		//引脚输入/输出控制 D[5:0]/GPIO1/GPIO0
		{0x3018, 0x00},

		{0x3037, 0x05}, //PLL分频控制

		{0x3108, 0x11},//系统根分频器

		{0x303B, 0x19},
		{0x303D, 0x10},

		{0x3630, 0x36},//?
		{0x3631, 0x0e},
		{0x3632, 0xe2},
		{0x3633, 0x12},
		{0x3621, 0xe0},
		{0x3704, 0xa0},
		{0x3703, 0x5a},
		{0x3715, 0x78},
		{0x3717, 0x01},
		{0x370b, 0x60},
		{0x3705, 0x1a},
		{0x3905, 0x02},
		{0x3906, 0x10},
		{0x3901, 0x0a},
		{0x3731, 0x12},

		{0x3600, 0x37}, //VCM控制,用于自动聚焦
		{0x3601, 0x33}, //VCM控制,用于自动聚焦



		{0x302d, 0x60}, //系统控制

		{0x3620, 0x52},//?
		{0x371b, 0x20},
		{0x471c, 0x50},


		{0x3a13, 0x43}, //AEC(自动曝光控制)
		{0x3a18, 0x00}, //AEC 增益上限
		{0x3a19, 0xf8}, //AEC 增益上限
		{0x3635, 0x13},
		{0x3636, 0x03},
		{0x3634, 0x40},
		{0x3622, 0x01},

		//50/60hz 去除50/60hz灯光条纹
		{0x3c01, 0x34},
		{0x3c04, 0x28},
		{0x3c05, 0x98},
		{0x3c06, 0x00}, //light meter 1 阈值[15:8]
		{0x3c07, 0x08}, //light meter 1 阈值[7:0]
		{0x3c08, 0x00}, //light meter 2 阈值[15:8]
		{0x3c09, 0x1c}, //light meter 2 阈值[7:0]
		{0x3c0a, 0x9c}, //sample number[15:8]
		{0x3c0b, 0x40}, //sample number[7:0]


		{0x3810, 0x00}, //Timing Hoffset[11:8]
		{0x3811, 0x00}, //Timing Hoffset[7:0]
		{0x3812, 0x00}, //Timing Voffset[10:8]
		{0x3813, 0x00}, //Timing Voffset[10:8]



		{0x3708, 0x64},
		{0x4001, 0x02}, //BLC(黑电平校准)补偿起始行号
		{0x4005, 0x1a}, //BLC(黑电平校准)补偿始终更新


		{0x3000, 0x00},//系统块复位控制
		{0x3004, 0xff},//时钟使能控制

		{0x4300,0x00}, //格式控制 RAW
		{0x501f,0x03}, //ISP RAW

		{0x440e,0x00},

		{0x5000,0xa7}, //ISP控制
		{0x3a0f,0x30}, //AEC控制;stable range in high
		{0x3a10,0x28},//AEC控制;stable range in low
		{0x3a1b,0x30}, //AEC控制;stable range out high
		{0x3a1e,0x26}, //AEC控制;stable range out low
		{0x3a11,0x60}, //AEC控制; fast zone high
		{0x3a1f,0x14}, //AEC控制; fast zone low

		//LENC(镜头校正)控制 0x5800~0x583d
		{0x5800,0x23},
		{0x5801,0x14},
		{0x5802,0x0f},
		{0x5803,0x0f},
		{0x5804,0x12},
		{0x5805,0x26},
		{0x5806,0x0c},
		{0x5807,0x08},
		{0x5808,0x05},
		{0x5809,0x05},
		{0x580a,0x08},
		{0x580b,0x0d},
		{0x580c,0x08},
		{0x580d,0x03},
		{0x580e,0x00},
		{0x580f,0x00},
		{0x5810,0x03},
		{0x5811,0x09},
		{0x5812,0x07},
		{0x5813,0x03},
		{0x5814,0x00},
		{0x5815,0x01},
		{0x5816,0x03},
		{0x5817,0x08},
		{0x5818,0x0d},
		{0x5819,0x08},
		{0x581a,0x05},
		{0x581b,0x06},
		{0x581c,0x08},
		{0x581d,0x0e},
		{0x581e,0x29},
		{0x581f,0x17},
		{0x5820,0x11},
		{0x5821,0x11},
		{0x5822,0x15},
		{0x5823,0x28},
		{0x5824,0x46},
		{0x5825,0x26},
		{0x5826,0x08},
		{0x5827,0x26},
		{0x5828,0x64},
		{0x5829,0x26},
		{0x582a,0x24},
		{0x582b,0x22},
		{0x582c,0x24},
		{0x582d,0x24},
		{0x582e,0x06},
		{0x582f,0x22},
		{0x5830,0x40},
		{0x5831,0x42},
		{0x5832,0x24},
		{0x5833,0x26},
		{0x5834,0x24},
		{0x5835,0x22},
		{0x5836,0x22},
		{0x5837,0x26},
		{0x5838,0x44},
		{0x5839,0x24},
		{0x583a,0x26},
		{0x583b,0x28},
		{0x583c,0x42},
		{0x583d,0xce},

		//AWB(自动白平衡控制} 0x5180~0x519e
		{0x5180,0xff},
		{0x5181,0xf2},
		{0x5182,0x00},
		{0x5183,0x14},
		{0x5184,0x25},
		{0x5185,0x24},
		{0x5186,0x09},
		{0x5187,0x09},
		{0x5188,0x09},
		{0x5189,0x75},
		{0x518a,0x54},
		{0x518b,0xe0},
		{0x518c,0xb2},
		{0x518d,0x42},
		{0x518e,0x3d},
		{0x518f,0x56},
		{0x5190,0x46},
		{0x5191,0xf8},
		{0x5192,0x04},
		{0x5193,0x70},
		{0x5194,0xf0},
		{0x5195,0xf0},
		{0x5196,0x03},
		{0x5197,0x01},
		{0x5198,0x04},
		{0x5199,0x12},
		{0x519a,0x04},
		{0x519b,0x00},
		{0x519c,0x06},
		{0x519d,0x82},
		{0x519e,0x38},

		//Gamma(伽马}控制 0x5480~0x5490

		{0x5480,0x01},
		{0x5481,0x08},
		{0x5482,0x14},
		{0x5483,0x28},
		{0x5484,0x51},
		{0x5485,0x65},
		{0x5486,0x71},
		{0x5487,0x7d},
		{0x5488,0x87},
		{0x5489,0x91},
		{0x548a,0x9a},
		{0x548b,0xaa},
		{0x548c,0xb8},
		{0x548d,0xcd},
		{0x548e,0xdd},
		{0x548f,0xea},
		{0x5490,0x1d},


		//CMX(彩色矩阵控制} 0x5381~0x538b
		{0x5381,0x1e},
		{0x5382,0x5b},
		{0x5383,0x08},
		{0x5384,0x0a},
		{0x5385,0x7e},
		{0x5386,0x88},
		{0x5387,0x7c},
		{0x5388,0x6c},
		{0x5389,0x10},
		{0x538a,0x01},
		{0x538b,0x98},

		//SDE(特殊数码效果}控制 0x5580~0x558b
		{0x5580,0x06},
		{0x5583,0x40},
		{0x5584,0x10},
		{0x5589,0x10},
		{0x558a,0x00},
		{0x558b,0xf8},
		{0x501d,0x40}, //ISP MISC

		//CIP(颜色插值}控制 (0x5300~0x530c}
		{0x5300,0x08},
		{0x5301,0x30},
		{0x5302,0x10},
		{0x5303,0x00},
		{0x5304,0x08},
		{0x5305,0x30},
		{0x5306,0x08},
		{0x5307,0x16},
		{0x5309,0x08},
		{0x530a,0x30},
		{0x530b,0x04},
		{0x530c,0x06},
		{0x5025,0x00},

		//系统时钟分频 Bit[7:4]:系统时钟分频 input clock =24Mhz
		{0x3035,0x21},
		{0x3036,0x46}, //PLL倍频  //48M
//		{0x3036,0x5A}, //PLL倍频  //72M
		{0x3c07,0x08},

		//时序控制 0x3800~0x3821
		{0x3820,0x46},
		{0x3821,0x01},
		{0x3814,0x31},
		{0x3815,0x31},
		{0x3800,0x00},
		{0x3801,0x00},
		{0x3802,0x00},
		{0x3803,0x08},
		{0x3804,0x0a},
		{0x3805,0x3b},
		{0x3806,0x07},
		{0x3807,0x9b},

		//设置输出像素个数
		{0x3808, 0x05},  //DVP 输出水平像素点数高4位
		{0x3809, 0x00},  //DVP 输出水平像素点数低8位
		{0x380a, 0x02},  //DVP 输出垂直像素点数高3位
		{0x380b, 0xd0},  //DVP 输出垂直像素点数低8位
		{0x380c, 0x07},  //水平总像素大小高5位
		{0x380d, 0x68},  //水平总像素大小低8位
		{0x380e, 0x03},  //垂直总像素大小高5位
		{0x380f, 0xd8},  //垂直总像素大小低8位

		{0x3813,0x00},

		{0x3618,0x00},
		{0x3612,0x29},
		{0x3709,0x52},
		{0x370c,0x03},

		{0x3a02,0x17}, //60Hz max exposure
		{0x3a03,0x10}, //60Hz max exposure
		{0x3a14,0x17}, //50Hz max exposure
		{0x3a15,0x10}, //50Hz max exposure

		{0x4004,0x02}, //BLC(背光} 2 lines

		{0x4713,0x03}, //JPEG mode 3

		{0x4407,0x04}, //量化标度

		{0x460c,0x22},

		{0x4837,0x36}, //DVP CLK divider

		{0x3824,0x01}, //DVP CLK divider

		//{0x5001,0xa3}, //ISP 控制
		{0x3034, 0x1A},

		{0x3b07,0x0a}, //帧曝光模式

		//彩条测试使能
		{0x503d,0x00}, //0x00:正常模式 0x80:彩条显示

		//测试闪光灯功能
		{0x3016,0x02},
		{0x301c,0x02},
		{0x3019,0x02}, //打开闪光灯
		{0x3019,0x00}, //关闭闪光灯

		{SEQUENCE_END, 0x00}
};

int ov5640_init(XIicPs *IicInstance)
{

	u8 sensor_id[2] ;
	ov5640_read(IicInstance, 0x300A, &sensor_id[0]);
	ov5640_read(IicInstance, 0x300B, &sensor_id[1]);

	if (sensor_id[0] != 0x56 || sensor_id[1] != 0x40)
	{
		xil_printf("Not ov5640 id, %x %x\r\n", sensor_id[0], sensor_id[1]);
		return 0 ;
	}
	else
	{
		xil_printf("Got ov5640 id, %x %x\r\n", sensor_id[0], sensor_id[1]);
	}



	/*step1 复位*/
	ov5640_write(IicInstance,0x3008, 0x82);//[7]=1 Software reset; [6]=0 Software power down; Default=0x02
	usleep(100000);

	/*step2  数据初始化*/
	sensor_write_array(IicInstance, sensor_init_data);
	usleep(100000);

	/*step3  将数据配置为720p 30fps*/
	#if VIDEO_RESOLUTION  == VIDEO_1080P_30FPS
		sensor_write_array(IicInstance, cfg_1080p_30fps);
	#elif VIDEO_RESOLUTION == VIDEO_720P_60FPS
		sensor_write_array(IicInstance, cfg_720p_30fps);
	#else
		sensor_write_array(IicInstance, cfg_480p_90fps);
	#endif

	/*step4  后处理*/
	sensor_write_array(IicInstance,cfg_advanced_awb);

	/*step5 取消低功耗模式*/
	//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
	ov5640_write(IicInstance,0x3008, 0x02);

	return XST_SUCCESS;
}

int SC130GS_init(XIicPs *IicInstance) {

	sg130_sensor_write_array(IicInstance, sg130_sensor_init_data);

	return 0;

}


