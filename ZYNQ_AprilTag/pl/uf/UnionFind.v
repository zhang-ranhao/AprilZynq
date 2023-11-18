`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/10 14:58:55
// Design Name: 
// Module Name: UnionFind
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


module UnionFind #
(
	parameter	ROW_SIZE	=	360				,
				COL_SIZE	=	640
)
(
	input	wire				clk				,
	input	wire				rst_n			,
		
	input	wire				o_bram_ready	,
	output	reg					o_enb			,			
	output	reg		[8:0]		o_addrb			,		
	input	wire	[1279:0]	i_doutb			,
	
	
	output	reg					o_m_valid		,
	output	reg		[35:0]		o_m_data		,
	output	reg					o_m_fstart		,
	output	reg					o_m_last		,
	input	wire				i_m_ready
);
/************************function************************/
/************************parameter***********************/
localparam	IDLE		=	5'd0	;
localparam	RB_A		=	5'd1	;
localparam	RB_D		=	5'd2	;
localparam	PV			=	5'd3	;
localparam	CP_L		=	5'd4	;
localparam	RT_L		=	5'd5	;
localparam	CP_T		=	5'd6	;
localparam	RT_T		=	5'd7	;
localparam	CP_LT		=	5'd8	;
localparam	RT_LT		=	5'd9	;
localparam	CP_RT		=	5'd10	;
localparam	RT_RT		=	5'd11	;
localparam	WR			=	5'd12	;
localparam	P_DONE		=	5'd13	;
localparam	DONE		=	5'd14	;
/***************************reg**************************/
reg		[8:0]		out_row_pointer								;
reg		[9:0]		out_col_pointer								;
reg		[8:0]		out_row_pointer_d1							;
reg		[9:0]		out_col_pointer_d1							;
wire				out_en										;
reg					out_en_d1									;

reg		[4 : 0]		state										;

reg		[8 : 0]		row_pointer									;
reg		[9 : 0] 	col_pointer									;
reg		[1279:0]	th_reg			[0:1]						;

reg		[8:0]		wr_a_r			[0:4]						;
reg		[9:0]		wr_a_c			[0:4]						;//表示要写入点的地址

reg		[8:0]		wr_d_r			[0:4]						;
reg		[9:0]		wr_d_c			[0:4]						;//要写入点的parent

reg		[17:0]		wr_d_s			[0:4]						;//表示该区域的大小

reg		[4:0]		wr_v										;//使能信号
/***************************wire*************************/
reg						r_wea									;
reg		[11:0]			r_addra									;
reg		[8:0]			r_dina_row								;
reg		[9:0]			r_dina_col								;
reg		[17:0]			r_dina_size								;

wire					r_enb									;
wire					r_web									;
wire	[11:0]			r_addrb									;
wire	[8:0]			r_doutb_row								;
wire	[9:0]			r_doutb_col								;
wire	[17:0]			r_doutb_size							;

reg		[8:0]			read_row								;
reg		[9:0]			read_col								;

reg						r_ena									;
wire	[8:0]			r_douta_row								;
wire	[9:0]			r_douta_col								;
wire	[17:0]			r_douta_size							;
																
reg						d_state									;
localparam				un_doned	=	1'b0					;
localparam				doned		=	1'b1					;
/**************************assign************************/	
/************************component***********************/
BRAM_ROW BRAM_ROW_U0
(
    .clka 		(clk			),
    .ena        (r_ena			),
    .wea        (r_wea			),
    .addra      (r_addra		),
    .dina       (r_dina_row		),
	.douta		(r_douta_row	),
		
    .clkb       (clk			),
    .enb        (r_enb			),
	.web		(r_web			),
    .addrb      (r_addrb		),
	.dinb		(				),			
    .doutb      (r_doutb_row	)
);

BRAM_COL BRAM_COL_U0
(
    .clka 		(clk			),
    .ena        (r_ena			),
    .wea        (r_wea			),
    .addra      (r_addra		),
    .dina       (r_dina_col		),
	.douta		(r_douta_col	),
		
    .clkb       (clk			),
    .enb        (r_enb			),
	.web		(r_web			),
    .addrb      (r_addrb		),
	.dinb		(				),
    .doutb      (r_doutb_col	)
);

BRAM_SIZE	BRAM_SIZE_U0
(
    .clka 		(clk			),
    .ena        (r_ena			),
    .wea        (r_wea			),
    .addra      (r_addra		),
    .dina       (r_dina_size	),
	.douta		(r_douta_size	),
	
    .clkb       (clk			),
    .enb        (r_enb			),
	.web		(r_web			),
    .addrb      (r_addrb		),
	.dinb		(				),
    .doutb      (r_doutb_size	)
);
/**************************always************************/
assign 	out_en	=	((row_pointer - out_row_pointer >= 2) || d_state == doned) 						;
assign	r_enb	=	out_en	;
assign	r_web	=	1'b0	;
assign	r_addrb	=	(out_row_pointer - ((out_row_pointer >> 2) << 2)) * COL_SIZE + out_col_pointer	;


always @(posedge clk)
begin
	if(!rst_n)
	begin
		o_m_valid 			<=  0		  ;
		o_m_data[35:18]		<=	0         ;
		o_m_data[17:0]		<=	0         ;
		o_m_fstart			<=	0         ;
		o_m_last			<=	0         ;
	end
	else if(out_en_d1)
	begin
		o_m_valid 			<= 1'b1;
		o_m_data[35:18]		<=	r_doutb_row * COL_SIZE + r_doutb_col;
		o_m_data[17:0]		<=	r_doutb_size;
		o_m_fstart			<=	(out_col_pointer_d1 == 0 && out_row_pointer_d1 == 0) ? 1'b1 : 1'b0;
		o_m_last			<=	(out_col_pointer_d1 == COL_SIZE - 1) ? 1'b1 : 1'b0;
	end
	else
	begin
		o_m_valid 			<=  1'b0;
		o_m_data[35:18]		<=	o_m_data[35:18]	         ;
		o_m_data[17:0]		<=	o_m_data[17:0]	         ;
		o_m_fstart			<=	o_m_fstart		         ;
		o_m_last			<=	o_m_last		         ;
	end
end


always @(posedge clk)
begin
	if(!rst_n)
		out_en_d1	<=	0		;
	else
		out_en_d1	<=	out_en	;
end

always @(posedge clk)
begin
	if(!rst_n)
		out_col_pointer_d1	<=	0				;
	else
		out_col_pointer_d1	<=	out_col_pointer	;
end

always @(posedge clk)
begin
	if(!rst_n)
		out_row_pointer_d1	<=	0				;
	else
		out_row_pointer_d1	<=	out_row_pointer	;
end

always @(posedge clk)
begin
	if(!rst_n)
		out_col_pointer	<=	0;
	else if(out_en)
	begin
		if(out_col_pointer	== COL_SIZE - 1)
			out_col_pointer	<=	0;
		else
			out_col_pointer	<=	out_col_pointer + 1;
	end
	else
		out_col_pointer	<=	out_col_pointer	;
end

always @(posedge clk)
begin
	if(!rst_n)
		out_row_pointer	<=	0;
	else if(out_en)
	begin
		if(out_col_pointer	== COL_SIZE - 1)
		begin
			if(out_row_pointer == ROW_SIZE - 1)
				out_row_pointer	<=	0;
			else
				out_row_pointer	<=	out_row_pointer + 1;
		end
		else
			out_row_pointer	<=	out_row_pointer;
	end
	else
		out_row_pointer	<=	out_row_pointer	;
end

/***************************FSM**************************/
always @(posedge clk)
begin
	if(!rst_n)
		d_state	<=	un_doned;
	else 
	begin
		case(d_state)
			un_doned : d_state	<=	(state == DONE) ? doned	:	un_doned													;
			doned	 : d_state	<=	(out_col_pointer == COL_SIZE - 1 && out_row_pointer == ROW_SIZE - 1) ? un_doned : doned	;
			default:
			begin
				d_state	<=	un_doned	;
			end
		endcase
	end
end





always @(posedge clk)
begin
	if(!rst_n)
	begin
		state			<=	IDLE						;

		row_pointer		<=	0							;
		col_pointer		<=	0							;
		th_reg[0]		<=	0							;
		th_reg[1]		<=	0							;
		
		wr_a_r[0]		<=	0							;
		wr_a_r[1]       <=	0							;
		wr_a_r[2]       <=	0							;
		wr_a_r[3]       <=	0							;
		wr_a_r[4]       <=	0							;
		
		wr_a_c[0]		<=	0							;
		wr_a_c[1]       <=	0							;
		wr_a_c[2]       <=	0							;
		wr_a_c[3]       <=	0							;
		wr_a_c[4]       <=	0							;
		
		wr_d_r[0]		<=	0							;
		wr_d_r[1]       <=	0							;
		wr_d_r[2]       <=	0							;
		wr_d_r[3]       <=	0							;
		wr_d_r[4]       <=	0							;
		
		wr_d_c[0]		<=	0							;
		wr_d_c[1]       <=	0							;
		wr_d_c[2]       <=	0							;
		wr_d_c[3]       <=	0							;
		wr_d_c[4]       <=	0							;
		
		wr_d_s[0]		<=	0							;
		wr_d_s[1]       <=	0							;
		wr_d_s[2]       <=	0							;
		wr_d_s[3]       <=	0							;
		wr_d_s[4]       <=	0							;
		
		wr_v			<=  5'b00000					;
		
		r_ena			<=	0							;
		r_wea			<=	0							;
		r_addra			<=	0							;
		r_dina_row		<=	0							;
		r_dina_col		<=	0							;
		r_dina_size		<=	0							;
							
		read_row		<=	0							;
		read_col		<=	0							;
		
		o_enb			<=	0							;
		o_addrb			<=	0							;
	end
	else
	begin
		case(state)
		IDLE:
		begin
			if(o_bram_ready)
			begin
				state	<=	RB_A	;
			end
			else
			begin
				state	<=	IDLE	;
			end
		/***************************************************/
			row_pointer		<=	0						;
			col_pointer		<=	0						;
			th_reg[0]		<=	0						;
			th_reg[1]		<=	0						;
			                    
			wr_a_r[0]		<=	0						;
			wr_a_r[1]       <=	0						;
			wr_a_r[2]       <=	0						;
			wr_a_r[3]       <=	0						;
			wr_a_r[4]       <=	0						;
			                    
			wr_a_c[0]		<=	0						;
			wr_a_c[1]       <=	0						;
			wr_a_c[2]       <=	0						;
			wr_a_c[3]       <=	0						;
			wr_a_c[4]       <=	0						;
			                    
			wr_d_r[0]		<=	0						;
			wr_d_r[1]       <=	0						;
			wr_d_r[2]       <=	0						;
			wr_d_r[3]       <=	0						;
			wr_d_r[4]       <=	0						;
			                    
			wr_d_c[0]		<=	0						;
			wr_d_c[1]       <=	0						;
			wr_d_c[2]       <=	0						;
			wr_d_c[3]       <=	0						;
			wr_d_c[4]       <=	0						;
			                    
			wr_d_s[0]		<=	0						;
			wr_d_s[1]       <=	0						;
			wr_d_s[2]       <=	0						;
			wr_d_s[3]       <=	0						;
			wr_d_s[4]       <=	0						;
			                    
			wr_v			<=  0						;
			                    
			r_wea			<=	0						;
			r_ena			<=	0						;
			r_addra			<=	0						;
			
			r_dina_row		<=	0						;
			r_dina_col		<=	0						;
			r_dina_size		<=	0						;

			read_row		<=	0						;
			read_col		<=	0						;
			
			o_enb			<=	0						;
			o_addrb			<=	0						;
		end
		
		RB_A:
		begin
			o_enb 			<=	1'b1					;
			o_addrb			<=	row_pointer				;
			state			<=	RB_D					;	
			/****************************************/
			row_pointer		<=	row_pointer							;
			col_pointer		<=	col_pointer							;
			th_reg[0]		<=	th_reg[0]							;
			th_reg[1]		<=	th_reg[1]							;
			                                
			wr_a_r[0]		<=	wr_a_r[0]							;
			wr_a_r[1]       <=	wr_a_r[1]   						;
			wr_a_r[2]       <=	wr_a_r[2]   						;
			wr_a_r[3]       <=	wr_a_r[3]   						;
			wr_a_r[4]       <=	wr_a_r[4]   						;
			                                
			wr_a_c[0]		<=	wr_a_c[0]							;
			wr_a_c[1]       <=	wr_a_c[1]   						;
			wr_a_c[2]       <=	wr_a_c[2]   						;
			wr_a_c[3]       <=	wr_a_c[3]   						;
			wr_a_c[4]       <=	wr_a_c[4]   						;
			                                
			wr_d_r[0]		<=	wr_d_r[0]							;
			wr_d_r[1]       <=	wr_d_r[1]   						;
			wr_d_r[2]       <=	wr_d_r[2]   						;
			wr_d_r[3]       <=	wr_d_r[3]   						;
			wr_d_r[4]       <=	wr_d_r[4]   						;
			                                
			wr_d_c[0]		<=	wr_d_c[0]							;
			wr_d_c[1]       <=	wr_d_c[1]   						;
			wr_d_c[2]       <=	wr_d_c[2]   						;
			wr_d_c[3]       <=	wr_d_c[3]   						;
			wr_d_c[4]       <=	wr_d_c[4]   						;
			                                
			wr_d_s[0]		<=	wr_d_s[0]							;
			wr_d_s[1]       <=	wr_d_s[1]   						;
			wr_d_s[2]       <=	wr_d_s[2]   						;
			wr_d_s[3]       <=	wr_d_s[3]   						;
			wr_d_s[4]       <=	wr_d_s[4]   						;
			                                
			wr_v			<=  5'b00000							;
			                                
			r_wea			<=	1'b0								;
			r_ena			<=	1'b0								;
			r_addra			<=	r_addra								;
			r_dina_row		<=	r_dina_row							;
			r_dina_col		<=	r_dina_col							;
			r_dina_size		<=	r_dina_size							;
											
			read_row		<=	read_row							;
			read_col		<=	read_col							;
		end
		
		RB_D:
		begin
			o_enb			<=	1'b0							;
			o_addrb			<=	o_addrb							;
			
			th_reg[0]		<=	i_doutb							;
			th_reg[1]		<=	th_reg[0]						;
			
			state			<=	PV								;
			/******************************************************/
			row_pointer		<=	row_pointer						;
			col_pointer		<=	col_pointer						;
			th_reg[0]		<=	th_reg[0]						;
			th_reg[1]		<=	th_reg[1]						;
			                    
			wr_a_r[0]		<=	wr_a_r[0]						;
			wr_a_r[1]       <=	wr_a_r[1]   					;
			wr_a_r[2]       <=	wr_a_r[2]   					;
			wr_a_r[3]       <=	wr_a_r[3]   					;
			wr_a_r[4]       <=	wr_a_r[4]   					;
			                    
			wr_a_c[0]		<=	wr_a_c[0]						;
			wr_a_c[1]       <=	wr_a_c[1]   					;
			wr_a_c[2]       <=	wr_a_c[2]   					;
			wr_a_c[3]       <=	wr_a_c[3]   					;
			wr_a_c[4]       <=	wr_a_c[4]   					;
			                    
			wr_d_r[0]		<=	wr_d_r[0]						;
			wr_d_r[1]       <=	wr_d_r[1]   					;
			wr_d_r[2]       <=	wr_d_r[2]   					;
			wr_d_r[3]       <=	wr_d_r[3]   					;
			wr_d_r[4]       <=	wr_d_r[4]   					;
			                    
			wr_d_c[0]		<=	wr_d_c[0]						;
			wr_d_c[1]       <=	wr_d_c[1]   					;
			wr_d_c[2]       <=	wr_d_c[2]   					;
			wr_d_c[3]       <=	wr_d_c[3]   					;
			wr_d_c[4]       <=	wr_d_c[4]   					;
			                    
			wr_d_s[0]		<=	wr_d_s[0]						;
			wr_d_s[1]       <=	wr_d_s[1]   					;
			wr_d_s[2]       <=	wr_d_s[2]   					;
			wr_d_s[3]       <=	wr_d_s[3]   					;
			wr_d_s[4]       <=	wr_d_s[4]   					;
			                    
			wr_v			<=  5'b00000						;
			                    
			r_wea			<=	1'b0							;
			r_ena			<=	1'b0							;
			r_addra			<=	r_addra							;
			r_dina_row		<=	r_dina_row						;
			r_dina_col		<=	r_dina_col						;
			r_dina_size		<=	r_dina_size						;
											
			read_row		<=	read_row						;
			read_col		<=	read_col						;
		end
		
		PV:
		begin
			if(th_reg[0][((col_pointer << 1) + 1) - : 1] == 2'b01)
			begin
				wr_v		<=	5'b00001			;
				wr_a_r[0]	<=	row_pointer			;
				wr_a_c[0]	<=	col_pointer			;
				wr_d_r[0]	<=	0					;//如果为127，立即写，写入的size为0，表示为灰
				wr_d_c[0]	<=	0					;
				wr_d_s[0]	<=	0					;				
				state		<=	WR					;
			end
			else
			begin
				wr_v		<=	5'b00001			;
			    wr_a_r[0]	<=	row_pointer			;
			    wr_a_c[0]	<=	col_pointer			;
			    wr_d_r[0]	<=	row_pointer			;
			    wr_d_c[0]	<=	col_pointer			;
			    wr_d_s[0]	<=	1					;
				state		<=	CP_L				;
			end
			
			r_wea			<=	1'b0				;
			r_ena			<=	1'b0				;
			o_enb			<=	1'b0				;
		end
		
		CP_L:
		begin
			if(col_pointer == 0)
			begin
				state 		<=  CP_T				;
			
				r_ena		<=	1'b0				;
				r_wea		<=	1'b0				;
			    r_addra		<=	r_addra				;
			    read_row	<=	read_row			;
			    read_col	<=	read_col			;
			end
			else if(th_reg[0][((col_pointer << 1) + 1) -: 1] == th_reg[0][(((col_pointer - 1) << 1) + 1) -: 1])
			begin
				r_ena		<=	1'b1																	;
				r_wea		<=	1'b0																	;
				r_addra		<=	(row_pointer - ((row_pointer >> 2) << 2)) * COL_SIZE + col_pointer - 1	;
				read_row	<=	row_pointer																;
				read_col	<=	col_pointer - 1															;
				state		<=	RT_L																	;
			end
			else
			begin
				state 		<=  CP_T				;
				
				r_ena		<=	1'b0				;
				r_wea		<=	1'b0				;
				r_addra		<=	r_addra				;
				read_row	<=	read_row			;
				read_col	<=	read_col			;
			end
			o_enb			<=	1'b0				;
		end
		
		RT_L:
		begin
			if(r_douta_row == read_row && r_douta_col == read_col)
			begin
				wr_v		<=	5'b00011										;
				
				wr_a_r[0]	<=	wr_a_r[0]										;
				wr_a_c[0]	<=	wr_a_c[0]										;
				wr_d_r[0]	<=	r_douta_row										;
				wr_d_c[0]	<=	r_douta_col										;
				wr_d_s[0]	<=	wr_d_s[0]										;
				
				wr_a_r[1]	<=	r_douta_row										;
				wr_a_c[1]	<=	r_douta_col										;
				wr_d_r[1]	<=	r_douta_row										;
				wr_d_c[1]	<=	r_douta_col										;
				wr_d_s[1]	<=	r_douta_size + 1									;
				
				state		<=	CP_T											;
				
				r_ena		<=	1'b0											;
				r_wea		<=	1'b0											;
			end
			else
			begin
				state		<=	RT_L																;
				
				r_ena		<=	1'b1																;
				r_wea		<=	1'b0																;
				r_addra		<=	(r_douta_row - ((r_douta_row >> 2) << 2)) * COL_SIZE + r_douta_col	;
				read_row	<=	r_douta_row															;
				read_col	<=	r_douta_col															;
			end
			o_enb			<=	1'b0				;
		end
		
		CP_T:
		begin
			if(row_pointer == 0)
			begin
				state <= WR							;
				
				r_ena		<=	1'b0				;														
				r_wea		<=	1'b0				;
				r_addra		<=	r_addra				;
				read_row	<=	read_row			;																
				read_col	<=	read_col			;														
				
			end
			else if(th_reg[0][((col_pointer << 1) + 1) -: 1] == th_reg[1][((col_pointer << 1) + 1) -: 1])
			begin
				if(col_pointer != 0 
				&& th_reg[0][((col_pointer - 1) << 1 + 1) -: 1] == th_reg[1][((col_pointer - 1) << 1 + 1) -: 1] 
				&& th_reg[1][((col_pointer - 1) << 1 + 1) -: 1] == th_reg[1][((col_pointer << 1) + 1) -: 1])
				begin
					state	<=	CP_LT			;
					
					r_ena		<=	1'b0		;														
					r_wea		<=	1'b0		;
					r_addra		<=	r_addra		;
					read_row	<=	read_row	;																
					read_col	<=	read_col	;
				end
				else
				begin
					state		<=	RT_T																			;
						
					r_ena		<=	1'b1																			;
					r_wea		<=	1'b0																			;
					r_addra		<=	(row_pointer - 1 - (((row_pointer - 1) >> 2) << 2)) * COL_SIZE + col_pointer	;
					read_row	<=	row_pointer - 1																	;
					read_col	<=	col_pointer																		;
				end
			end
			else
			begin
				state	<=	CP_LT			;
				
				r_ena		<=	1'b0		;
				r_wea		<=	1'b0		;
				r_addra		<=	r_addra		;
				read_row	<=	read_row	;
				read_col	<=	read_col	;
			end                 
			o_enb			<=	1'b0								;
		end
		
		RT_T:
		begin
			if(r_douta_row	== read_row && r_douta_col == read_col)
			begin
				wr_v[0]		<=	wr_v[0]											;
				wr_v[1]		<=	wr_v[1]											;
				
				r_ena		<=	1'b0		;
				r_wea		<=	1'b0		;
				r_addra		<=	r_addra		;
				read_row	<=	read_row										;				
				read_col	<=	read_col										;			
				
				if(wr_v[1] == 1'b1)//如果当前点已经向左合并，则T点也向左合并
				begin
					if(r_douta_row == wr_d_r[1] && r_douta_col == wr_d_c[1])//根节点相同，说明之前已经合并过
					begin
						wr_v[2]		<=	1'b0											;	
						state		<=	CP_LT											;
					end
					else
					begin//不是同一个root，则合并size
						wr_a_r[1]	<=	wr_a_r[1]										;
						wr_a_c[1]	<=	wr_a_c[1]										;
						wr_d_r[1]	<=	wr_d_r[1]										;
						wr_d_c[1]	<=	wr_d_c[1]										;
						wr_d_s[1]	<=	wr_d_s[1] + r_douta_size						;
						
						wr_a_r[2]	<=	r_douta_row										;
						wr_a_c[2]	<=	r_douta_col										;
						wr_d_r[2]	<=	wr_d_r[1]										;
						wr_d_c[2]	<=	wr_d_c[1]										;//根节点换为左边的节点
						wr_d_s[2]	<=	wr_d_s[2]										;
						
						wr_v[2]		<=	1'b1											;
						
						state		<=	CP_LT											;
					end
				end
				else//C点和之前的不同，所以和C点合并
				begin
					if(r_douta_row == wr_d_r[0] && r_douta_col == wr_d_c[0])//根节点相同，说明之前已经合并过
					begin
						wr_v[2]		<=	1'b0											;
						state		<=	CP_LT											;
					end
					else
					begin
						wr_a_r[0]	<=	wr_a_r[0]										;
						wr_a_c[0]	<=	wr_a_c[0]										;
						wr_d_r[0]	<=	wr_d_r[0]										;
						wr_d_c[0]	<=	wr_d_c[0]										;
						wr_d_s[0]	<=	wr_d_s[0] + r_douta_size						;
					
						wr_a_r[2]	<=	r_douta_row										;
						wr_a_c[2]	<=	r_douta_col										;
						wr_d_r[2]	<=	wr_d_r[0]										;
						wr_d_c[2]	<=	wr_d_c[0]										;
						wr_d_s[2]	<=	wr_d_s[2]										;
						wr_v[2]		<=	1'b1											;
						
						state		<=	CP_LT											;
					end
				end
			end
			else
			begin
				r_ena		<=	1'b1																;
				r_wea		<=	1'b0																;
				r_addra		<=	(r_douta_row - ((r_douta_row >> 2) << 2)) * COL_SIZE + r_douta_col	;
				read_row	<=	r_douta_row															;
				read_col	<=	r_douta_col															;
				state		<=	RT_T																;
			end
			o_enb			<=	1'b0								;
		end
		
		
		CP_LT:
		begin
			if(th_reg[0][col_pointer] != 2'b11)
			begin
				state		<=	WR;
				r_ena		<=	1'b0;
				r_wea		<=	1'b0;
			end
			else if(col_pointer == 0)
			begin
				state	<= CP_RT;
				r_ena	<=	1'b0;
				r_wea	<=	1'b0;
			end
			else
			begin
				if(th_reg[0][((col_pointer << 1) + 1) -: 1] == th_reg[1][(((col_pointer - 1) << 1) + 1) -: 1])
                begin
					if(th_reg[0][(((col_pointer - 1) << 1) + 1) -:1] == th_reg[1][(((col_pointer - 1) << 1) + 1) -: 1] 
					|| th_reg[1][(((col_pointer - 1) << 1) + 1) -:1] == th_reg[1][((col_pointer << 1) + 1) -: 1])
					begin	
						state	<=	CP_RT;	
						r_ena	<=	1'b0;
						r_wea	<=	1'b0;
					end	
					else	
					begin	
						r_ena		<=	1'b1																			;	
						r_wea		<=	1'b0																			;	
						r_addra		<=	(row_pointer - 1 - (((row_pointer - 1) >> 2) << 2)) * COL_SIZE + col_pointer - 1;	
						read_row	<=	row_pointer - 1																	;	
						read_col	<=	col_pointer	- 1																	;	
						state		<=	RT_LT																			;	
					end	
				end	
				else	
				begin	
					state	<=	CP_RT		;	
					r_ena	<=	1'b0		;
					r_wea	<=	1'b0		;
				end	
			end
			o_enb			<=	1'b0								;
		end
		
		RT_LT:
		begin
			if(r_douta_row == read_row && r_douta_col == read_col)
			begin
				r_ena	<=	1'b0;
				r_wea	<=	1'b0;
				
				if(wr_v[1] == 1'b1)//如果当前点已经向左合并，则T点也向左合并
				begin
					if(r_douta_row == wr_d_r[1] && r_douta_col == wr_d_c[1])//根节点相同，说明之前已经合并过
					begin
						wr_v[3]		<=	1'b0											;						
						state		<=	CP_RT											;
					end
					else
					begin
						wr_a_r[1]	<=	wr_a_r[1]										;
						wr_a_c[1]	<=	wr_a_c[1]										;
						wr_d_r[1]	<=	wr_d_r[1]										;
						wr_d_c[1]	<=	wr_d_c[1]										;
						wr_d_s[1]	<=	wr_d_s[1] + r_douta_size							;
						
						wr_a_r[3]	<=	r_douta_row										;
						wr_a_c[3]	<=	r_douta_col										;
						wr_d_r[3]	<=	wr_d_r[1]										;
						wr_d_c[3]	<=	wr_d_c[1]										;
						wr_d_s[3]	<=	wr_d_s[3]										;
						
						wr_v[3]		<=	1'b1											;
						
						state		<=	CP_RT											;
					end
				end
				else//C点和之前的不同，所以和C点合并
				begin
					if(r_douta_row == wr_d_r[0] && r_douta_col == wr_d_c[0])//根节点相同，说明之前已经合并过
					begin
						wr_v[3]		<=	1'b0											;						
						state		<=	CP_RT											;
					end
					else
					begin
						wr_a_r[0]	<=	wr_a_r[0]										;
						wr_a_c[0]	<=	wr_a_c[0]										;
						wr_d_r[0]	<=	wr_d_r[0]										;
						wr_d_c[0]	<=	wr_d_c[0]										;
						wr_d_s[0]	<=	wr_d_s[0] + r_douta_size						;
						
						wr_a_r[3]	<=	r_douta_row										;
						wr_a_c[3]	<=	r_douta_col										;
						wr_d_r[3]	<=	wr_d_r[0]										;
						wr_d_c[3]	<=	wr_d_c[0]										;
						wr_d_s[3]	<=	wr_d_s[3]										;
						wr_v[3]		<=	1'b1											;
						state		<=	CP_RT											;
					end
				end
			end
			else
			begin
				r_ena		<=	1'b1																;
				r_wea		<=	1'b0																;
				r_addra		<=	(r_douta_row - ((r_douta_row >> 2) << 2)) * COL_SIZE + r_douta_col	;
				read_row	<=	r_douta_row															;
				read_col	<=	r_douta_col															;
																		
				state		<=	RT_LT																;
			end                   
			o_enb			<=	1'b0																;
		end
		
		CP_RT:
		begin
			if(th_reg[0][((col_pointer << 1) + 1) -: 1] == th_reg[1][(((col_pointer + 1) << 1) + 1) -: 1])
               begin
				if(th_reg[1][((col_pointer << 1) + 1) -: 1] == th_reg[1][(((col_pointer + 1) << 1) + 1) -: 1])
				begin	
					state	<=	WR		;	
					r_ena	<=	1'b0	;
					r_wea	<=	1'b0	;
				end	
				else	
				begin	
					r_ena		<=	1'b1																			;	
					r_wea		<=	1'b0																			;
					r_addra		<=	(row_pointer - 1 - (((row_pointer - 1) >> 2) << 2)) * COL_SIZE + col_pointer + 1;	
					read_row	<=	row_pointer - 1																	;	
					read_col	<=	col_pointer	+ 1																	;	
					state		<=	RT_RT																			;	
				end	
			end
			else
			begin
				state	<=	WR		;
				r_ena	<=	1'b0	;
				r_wea	<=	1'b0	;
			end
			o_enb			<=	1'b0								;
		end
		
		RT_RT:
		begin
			if(r_douta_row == read_row && r_douta_col == read_col)
			begin
				r_ena	<=	1'b0	;
				r_wea	<=	1'b0	;
				
				if(wr_v[1] == 1'b1)//如果当前点已经向左合并，则T点也向左合并
				begin
					if(r_douta_row == wr_d_r[1] && r_douta_col == wr_d_c[1])//根节点相同，说明之前已经合并过
					begin
						wr_v[4]		<=	1'b0											;						
						state		<=	WR												;
					end
					else
					begin
						wr_a_r[1]	<=	wr_a_r[1]										;
						wr_a_c[1]	<=	wr_a_c[1]										;
						wr_d_r[1]	<=	wr_d_r[1]										;
						wr_d_c[1]	<=	wr_d_c[1]										;
						wr_d_s[1]	<=	wr_d_s[1] + r_douta_size						;
						
						wr_a_r[4]	<=	r_douta_row										;
						wr_a_c[4]	<=	r_douta_col										;
						wr_d_r[4]	<=	wr_d_r[1]										;
						wr_d_c[4]	<=	wr_d_c[1]										;
						wr_d_s[4]	<=	wr_d_s[4]										;
						
						wr_v[4]		<=	1'b1											;
						state		<=	WR												;
					end
				end
				else//C点和之前的不同，所以和C点合并
				begin
					if(r_douta_row == wr_d_r[0] && r_douta_col == wr_d_c[0])//根节点相同，说明之前已经合并过
					begin
						wr_v[4]		<=	1'b0											;						
						state		<=	WR												;
					end
					else
					begin
						wr_a_r[0]	<=	wr_a_r[0]										;
						wr_a_c[0]	<=	wr_a_c[0]										;
						wr_d_r[0]	<=	wr_d_r[0]										;
						wr_d_c[0]	<=	wr_d_c[0]										;
						wr_d_s[0]	<=	wr_d_s[0] + r_douta_size						;
						
						wr_a_r[4]	<=	r_douta_row										;
						wr_a_c[4]	<=	r_douta_col										;
						wr_d_r[4]	<=	wr_d_r[0]										;
						wr_d_c[4]	<=	wr_d_c[0]										;
						wr_d_s[4]	<=	wr_d_s[4]										;
						wr_v[4]		<=	1'b1											;
						state		<=	WR												;
					end
				end
			end
			else
			begin
				r_ena		<=	1'b1																;
				r_wea		<=	1'b0																;
				r_addra		<=	(r_douta_row - ((r_douta_row >> 2) << 2)) * COL_SIZE + r_douta_col	;
				read_row	<=	r_douta_row															;
				read_col	<=	r_douta_col															;								
				state		<=	RT_RT																;
			end
			o_enb			<=	1'b0								;
		end
		
		WR:
		begin
			if(wr_v == 5'b00000)
			begin
				state	<= P_DONE	;
				r_ena	<= 1'b0		;	
				r_wea	<= 1'b0		;
			end
			else if(wr_v[0] == 1'b1)
			begin
				wr_v[0]		<= 1'b0																	;
				r_ena		<= 1'b1																	;	
				r_wea		<= 1'b1																	;
				r_addra		<= (wr_a_r[0] - 	((wr_a_r[0] >> 2) << 2)) * COL_SIZE + wr_a_c[0]		;
				r_dina_row	<= wr_d_r[0]															;
				r_dina_col	<= wr_d_c[0]															;
				r_dina_size	<= wr_d_s[0]															;	
				state		<= WR																	;
			end
			else if(wr_v[1] == 1'b1)
			begin
				wr_v[1]		<= 1'b0																	;
				r_ena		<= 1'b1																	;	
				r_wea		<= 1'b1																	;
				r_addra		<= (wr_a_r[1] - 	((wr_a_r[1] >> 2) << 2)) * COL_SIZE + wr_a_c[1]		;
				r_dina_row	<= wr_d_r[1]															;
				r_dina_col	<= wr_d_c[1]															;
				r_dina_size	<= wr_d_s[1]															;
				state		<= WR																	;	
			end
			else if(wr_v[2] == 1'b1)
			begin
				wr_v[2]		<= 1'b0																	;
				r_ena		<= 1'b1																	;	
				r_wea		<= 1'b1																	;
				r_addra		<= (wr_a_r[2] - 	((wr_a_r[2] >> 2) << 2)) * COL_SIZE + wr_a_c[2]		;
				r_dina_row	<= wr_d_r[2]															;
				r_dina_col	<= wr_d_c[2]															;
				r_dina_size	<= wr_d_s[2]															;
				state		<= WR																	;
			end
			else if(wr_v[3] == 1'b1)
			begin
				wr_v[3]		<= 1'b0																	;
				r_ena		<= 1'b1																	;	
				r_wea		<= 1'b1																	;
				r_addra		<= (wr_a_r[3] - 	((wr_a_r[3] >> 2) << 2)) * COL_SIZE + wr_a_c[3]		;
				r_dina_row	<= wr_d_r[3]															;
				r_dina_col	<= wr_d_c[3]															;
				r_dina_size	<= wr_d_s[3]															;
				state		<= WR																	;
			end
			else if(wr_v[4] == 1'b1)
			begin
				wr_v[4]		<= 1'b0																	;
				r_ena		<= 1'b1																	;	
				r_wea		<= 1'b1																	;
				r_addra		<= (wr_a_r[4] - 	((wr_a_r[4] >> 2) << 2)) * COL_SIZE + wr_a_c[4]		;
				r_dina_row	<= wr_d_r[4]															;
				r_dina_col	<= wr_d_c[4]															;
				r_dina_size	<= wr_d_s[4]															;
				state		<= WR																	;
			end
			else
			begin
				wr_v	<=	5'b00000																;
				state	<=	WR																		;
				r_ena	<=  1'b0																	;	
				r_wea	<=	1'b0																	;	
			end
			o_enb		<=	1'b0								;
		end
		
		P_DONE:
		begin
			if(col_pointer == COL_SIZE - 1)
			begin
				col_pointer	<= 	0		;
				if(row_pointer == ROW_SIZE - 1)
				begin
					row_pointer <=  0		;
					state		<=	DONE	;
				end
				else
				begin
					state		<=	RB_A			;
					row_pointer <= row_pointer + 1	;
				end
			end
			else
			begin
				col_pointer <= col_pointer + 1	;
				state		<=	PV				;
				row_pointer	<=	row_pointer		;
			end
			
			r_wea		<=	1'b0								;	
			r_ena		<=	1'b0								;                    
			o_enb		<=	1'b0								;
			
		end
		
		DONE:
		begin
			state		<=	IDLE				;
			r_wea		<=	1'b0				;	
			r_ena		<=	1'b0				;                    
			o_enb		<=	1'b0				;
		end
		default:
		begin
			state	<=	IDLE					;
			r_wea		<=	1'b0				;	
			r_ena		<=	1'b0				;                    
			o_enb		<=	1'b0				;
		end
		endcase
	end
end



endmodule




















