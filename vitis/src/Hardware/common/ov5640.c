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

struct reginfo cfg_720p_60fps[] =
{
		// 1280 �� 720 60fps MIPISCLK=420, SCLK=84MHz, PCLK=84M

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
		{0x3808, (1280 >> 8) & 0x0F},
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
/*
		// Enable Advanced AWB
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


		// 锐化和降噪 //
		{0x5300, 0x08}, // sharpen MT th1
		{0x5301, 0x30}, // sharpen MT th2
		{0x5302, 0x10}, // sharpen MT offset 1
		{0x5303, 0x00}, // sharpen MT offset 2
		{0x5304, 0x08}, // DNS threshold 1
		{0x5305, 0x30}, // DNS threshold 2
		{0x5306, 0x08}, // DNS offset 1
		{0x5307, 0x16}, // DNS offset 2
		{0x5309, 0x08}, // sharpen TH th1
		{0x530a, 0x30}, // sharpen TH th2
		{0x530b, 0x04}, // sharpen TH offset 1
		{0x530c, 0x06},


		{0x5381,0x1e},// CMX1 for Y
		{0x5382,0x5b},// CMX2 for Y
		{0x5383,0x08},// CMX3 for Y
		{0x5384,0x0a},// CMX4 for U
		{0x5385,0x7e},// CMX5 for U
		{0x5386,0x88},// CMX6 for U
		{0x5387,0x7c},// CMX7 for V
		{0x5388,0x6c},// CMX8 for V
		{0x5389,0x10},// CMX9 for V
		{0x538a,0x01},// sign[9]
		{0x538b,0x98}, // sign[8:1] // UV adjust   UV色彩饱和度调整



		{0x5580,0x06},// saturation on, bit[1]
		{0x5583,0x40},
		{0x5584,0x10},
		{0x5589,0x10},
		{0x558a,0x00},
		{0x558b,0xf8},
		{0x501d,0x04},

		{0x5480,0x01},// Gamma bias plus on, bit[0]
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
		{0x583d,0xce},// lenc BR offset // AWB   自动白平衡

		{0x5480,0x01},// Gamma bias plus on, bit[0]
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
		{0x5490,0x1d},// color matrix   色彩矩阵
*/

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

/* write a array of registers  */
void sensor_write_array(XIicPs *IicInstance, struct reginfo *regarray)
{
	int i = 0;
	while (regarray[i].reg != SEQUENCE_END) {
		ov5640_write(IicInstance,regarray[i].reg,regarray[i].val);
		i++;
	}

}

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

	//[1]=0 System input clock from pad; Default read = 0x11
	ov5640_write(IicInstance, 0x3103, 0x11);
	//[7]=1 Software reset; [6]=0 Software power down; Default=0x02
	ov5640_write(IicInstance,0x3008, 0x82);

	usleep(1000000);

	sensor_write_array(IicInstance, sensor_init_data);
	usleep(1000000);
	//[7]=0 Software reset; [6]=1 Software power down; Default=0x02
	ov5640_write(IicInstance, 0x3008, 0x42);

	#if VIDEO_RESOLUTION  == VIDEO_1080P_30FPS
		sensor_write_array(IicInstance, cfg_1080p_30fps);
	#elif VIDEO_RESOLUTION == VIDEO_720P_60FPS
		sensor_write_array(IicInstance, cfg_720p_60fps);
	#else
		sensor_write_array(IicInstance, cfg_480p_90fps);
	#endif

	sensor_write_array(IicInstance,cfg_advanced_awb);

	//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
	ov5640_write(IicInstance,0x3008, 0x02);


	return XST_SUCCESS;
}

