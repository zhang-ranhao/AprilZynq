// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Nov 16 00:39:02 2023
// Host        : LAPTOP-LC3M2DQ5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/zrh463259112/Desktop/AprilZynq/main_system/prj/project_1.srcs/sources_1/bd/design_1/ip/design_1_De_Resolution_0_0/design_1_De_Resolution_0_0_stub.v
// Design      : design_1_De_Resolution_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu2cg-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "De_Resolution,Vivado 2020.1" *)
module design_1_De_Resolution_0_0(ACLK, ARESET, TREADY, TDATA, TLAST, TVALID, FSTART, 
  DE_REL_DATA, DE_REL_VALID, O_FSTART, O_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ACLK,ARESET,TREADY,TDATA[7:0],TLAST,TVALID,FSTART,DE_REL_DATA[7:0],DE_REL_VALID,O_FSTART,O_TLAST" */;
  input ACLK;
  input ARESET;
  output TREADY;
  input [7:0]TDATA;
  input TLAST;
  input TVALID;
  input FSTART;
  output [7:0]DE_REL_DATA;
  output DE_REL_VALID;
  output O_FSTART;
  output O_TLAST;
endmodule
