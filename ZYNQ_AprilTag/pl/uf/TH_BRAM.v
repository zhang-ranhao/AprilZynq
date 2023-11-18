`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/10 16:32:39
// Design Name: 
// Module Name: TH_BRAM
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


module TH_BRAM #
(
	parameter	ROW_SIZE	=	360			,
				COL_SIZE	=	640
)
(
	input	wire				clk				,
	input	wire				rst_n			,
		
	input	wire				i_s_valid		,
	input	wire	[7:0]		i_s_data		,
	input	wire				i_s_fstart		,
	input	wire				i_s_last		,
	output	wire				o_s_ready		,
	
	output	reg					o_bram_ready	,
	input	wire				enb				,
	input	wire	[8:0]		addrb			,
	output	wire	[1279:0] 	doutb
);
/************************function************************/
/************************parameter***********************/
/***************************port*************************/
/***************************FSM**************************/
/***************************reg**************************/
reg	[8:0]		row_pointer			;
 
reg [9:0]		col_pointer			;
reg				i_s_valid_d1		;
reg 			ena_d1				;

reg	[1279:0]	th_line				;		
/***************************wire*************************/
wire			ena				;
wire	[8:0]	addra			;
wire			o_bram_ready_p	;
/**************************assign************************/
assign ena				=	i_s_valid_d1 && col_pointer == 0					;
assign o_bram_ready_p	=	i_s_valid_d1 && col_pointer == 0 && row_pointer == 1;//第一行数据准备好写入，下一拍写好，可以读
assign addra			=	row_pointer == 0 ? ROW_SIZE - 1 : row_pointer - 1	;
/************************component***********************/
BRAM_1280x360 BRAM_1280x360_U0
(
    .clka      (clk			),
    .ena       (1'b1		),
    .wea       (ena			),
    .addra     (addra		),
    .dina      (th_line		),
    .clkb      (clk			),
    .enb       (enb			),
    .addrb     (addrb		),
    .doutb     (doutb		)
);
/**************************always************************/
always @(posedge clk)
begin
	if(!rst_n)
		i_s_valid_d1	<= 1'b0			;
	else
		i_s_valid_d1	<= i_s_valid	;
end

always @(posedge clk)
begin
	if(!rst_n)
		o_bram_ready	<= 1'b0					;
	else
		o_bram_ready	<= o_bram_ready_p		;
end


always @(posedge clk)
begin
	if(!rst_n)
		th_line <= 0;
	else if(i_s_valid)
		th_line[(col_pointer*2 + 1) -: 1] <= i_s_data[7:6];
	else
		th_line	<=	th_line;
end


always @(posedge clk)
begin
	if(!rst_n)
		col_pointer	<=	0;
	else if(i_s_valid)
	begin
		if(col_pointer == COL_SIZE - 1)
			col_pointer <= 0;
		else
			col_pointer <= col_pointer + 1;
	end
	else
		col_pointer <= col_pointer;
end

always @(posedge clk)
begin
	if(!rst_n)
		row_pointer	<= 0;
	else if(i_s_valid)
	begin
		if(col_pointer == COL_SIZE - 1)
		begin
			if(row_pointer == ROW_SIZE - 1)
				row_pointer	<=	0;
			else
				row_pointer	<=	row_pointer + 1;
		end
		else
			row_pointer	<= row_pointer;
	end
	else
	begin
		row_pointer	<=	row_pointer;
	end
end

endmodule


















