`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/11 22:57:08
// Design Name: 
// Module Name: UF_TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UF_TOP #
(
	parameter	ROW_SIZE	=	360	,
				COL_SIZE	=	640
)
(
	input	wire				clk				 ,
	input	wire				rst_n			 ,
												 
    input	wire				i_s_valid		 ,
    input	wire	[7:0]		i_s_data		 ,
    input	wire				i_s_fstart		 ,
    input	wire				i_s_last		 ,
	output	wire				o_s_ready		 ,
	
	output	wire				o_m_valid	     ,
	output	wire	[35:0]		o_m_data	     ,
	output	wire				o_m_fstart	     ,
	output	wire				o_m_last	     ,
	input	wire				i_m_ready   
);
/********************wire******************/
wire				o_bram_ready	;
wire				o_enb			;
wire	[8:0]		o_addrb		    ;
wire	[1279:0]	i_doutb		    ;
/*****************componet*****************/
TH_BRAM #
(
	.ROW_SIZE	(ROW_SIZE   )		,
	.COL_SIZE	(COL_SIZE   )
)
TH_BRAM_U0
(
	.clk			(clk			),
	.rst_n			(rst_n			),
									
	.i_s_valid		(i_s_valid		),
	.i_s_data		(i_s_data		),
	.i_s_fstart		(i_s_fstart		),
	.i_s_last		(i_s_last		),
	.o_s_ready		(o_s_ready		),

	.o_bram_ready	(o_bram_ready	),
	.enb			(o_enb			),
	.addrb			(o_addrb		),
	.doutb          (i_doutb		)
);
UnionFind #
(
	.ROW_SIZE	(360	)			,
	.COL_SIZE	(640    )
)
UnionFind_U0
(
	.clk			(clk			),
	.rst_n			(rst_n			),
				
	.o_bram_ready	(o_bram_ready	),
	.o_enb			(o_enb			),	
	.o_addrb		(o_addrb		),
	.i_doutb		(i_doutb		),
				
	.o_m_valid		(o_m_valid		),
	.o_m_data		(o_m_data		),
	.o_m_fstart		(o_m_fstart		),
	.o_m_last		(o_m_last		),
	.i_m_ready      (i_m_ready		)
);

endmodule
