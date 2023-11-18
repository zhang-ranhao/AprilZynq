// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Nov 16 01:13:55 2023
// Host        : LAPTOP-LC3M2DQ5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/zrh463259112/Desktop/AprilZynq/sub_system/Th_Seg_BRAM_new/prj/Th_Seg/Th_Seg.srcs/sources_1/ip/BRAM_10x65535/BRAM_10x65535_stub.v
// Design      : BRAM_10x65535
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu2cg-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *)
module BRAM_10x65535(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[16:0],dina[9:0],clkb,enb,addrb[16:0],doutb[9:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [16:0]addra;
  input [9:0]dina;
  input clkb;
  input enb;
  input [16:0]addrb;
  output [9:0]doutb;
endmodule
