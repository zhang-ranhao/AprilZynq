//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c_wrapper.bd
//Design : bd_f60c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_f60c_wrapper
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arprot,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awcache,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tdest,
    SLOT_1_AXIS_tid,
    SLOT_1_AXIS_tkeep,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tready,
    SLOT_1_AXIS_tstrb,
    SLOT_1_AXIS_tuser,
    SLOT_1_AXIS_tvalid,
    SLOT_2_AXI_araddr,
    SLOT_2_AXI_arcache,
    SLOT_2_AXI_arlen,
    SLOT_2_AXI_arprot,
    SLOT_2_AXI_arready,
    SLOT_2_AXI_arsize,
    SLOT_2_AXI_arvalid,
    SLOT_2_AXI_awaddr,
    SLOT_2_AXI_awcache,
    SLOT_2_AXI_awlen,
    SLOT_2_AXI_awprot,
    SLOT_2_AXI_awready,
    SLOT_2_AXI_awsize,
    SLOT_2_AXI_awvalid,
    SLOT_2_AXI_bready,
    SLOT_2_AXI_bresp,
    SLOT_2_AXI_bvalid,
    SLOT_2_AXI_rdata,
    SLOT_2_AXI_rlast,
    SLOT_2_AXI_rready,
    SLOT_2_AXI_rvalid,
    SLOT_2_AXI_wdata,
    SLOT_2_AXI_wlast,
    SLOT_2_AXI_wready,
    SLOT_2_AXI_wstrb,
    SLOT_2_AXI_wvalid,
    SLOT_3_AXIS_tdata,
    SLOT_3_AXIS_tkeep,
    SLOT_3_AXIS_tlast,
    SLOT_3_AXIS_tready,
    SLOT_3_AXIS_tuser,
    SLOT_3_AXIS_tvalid,
    SLOT_4_AXI_araddr,
    SLOT_4_AXI_arprot,
    SLOT_4_AXI_arready,
    SLOT_4_AXI_arvalid,
    SLOT_4_AXI_awaddr,
    SLOT_4_AXI_awprot,
    SLOT_4_AXI_awready,
    SLOT_4_AXI_awvalid,
    SLOT_4_AXI_bready,
    SLOT_4_AXI_bresp,
    SLOT_4_AXI_bvalid,
    SLOT_4_AXI_rdata,
    SLOT_4_AXI_rready,
    SLOT_4_AXI_rresp,
    SLOT_4_AXI_rvalid,
    SLOT_4_AXI_wdata,
    SLOT_4_AXI_wready,
    SLOT_4_AXI_wstrb,
    SLOT_4_AXI_wvalid,
    SLOT_5_AXI_araddr,
    SLOT_5_AXI_arprot,
    SLOT_5_AXI_arready,
    SLOT_5_AXI_arvalid,
    SLOT_5_AXI_awaddr,
    SLOT_5_AXI_awprot,
    SLOT_5_AXI_awready,
    SLOT_5_AXI_awvalid,
    SLOT_5_AXI_bready,
    SLOT_5_AXI_bresp,
    SLOT_5_AXI_bvalid,
    SLOT_5_AXI_rdata,
    SLOT_5_AXI_rready,
    SLOT_5_AXI_rresp,
    SLOT_5_AXI_rvalid,
    SLOT_5_AXI_wdata,
    SLOT_5_AXI_wready,
    SLOT_5_AXI_wstrb,
    SLOT_5_AXI_wvalid,
    clk,
    probe0,
    probe1,
    resetn);
  input [31:0]SLOT_0_AXI_araddr;
  input [3:0]SLOT_0_AXI_arcache;
  input [7:0]SLOT_0_AXI_arlen;
  input [2:0]SLOT_0_AXI_arprot;
  input SLOT_0_AXI_arready;
  input [2:0]SLOT_0_AXI_arsize;
  input SLOT_0_AXI_arvalid;
  input [31:0]SLOT_0_AXI_awaddr;
  input [3:0]SLOT_0_AXI_awcache;
  input [7:0]SLOT_0_AXI_awlen;
  input [2:0]SLOT_0_AXI_awprot;
  input SLOT_0_AXI_awready;
  input [2:0]SLOT_0_AXI_awsize;
  input SLOT_0_AXI_awvalid;
  input SLOT_0_AXI_bready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input [63:0]SLOT_0_AXI_rdata;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rready;
  input SLOT_0_AXI_rvalid;
  input [63:0]SLOT_0_AXI_wdata;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wready;
  input [7:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wvalid;
  input [31:0]SLOT_1_AXIS_tdata;
  input [0:0]SLOT_1_AXIS_tdest;
  input [0:0]SLOT_1_AXIS_tid;
  input [3:0]SLOT_1_AXIS_tkeep;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tready;
  input [3:0]SLOT_1_AXIS_tstrb;
  input [0:0]SLOT_1_AXIS_tuser;
  input SLOT_1_AXIS_tvalid;
  input [31:0]SLOT_2_AXI_araddr;
  input [3:0]SLOT_2_AXI_arcache;
  input [7:0]SLOT_2_AXI_arlen;
  input [2:0]SLOT_2_AXI_arprot;
  input SLOT_2_AXI_arready;
  input [2:0]SLOT_2_AXI_arsize;
  input SLOT_2_AXI_arvalid;
  input [31:0]SLOT_2_AXI_awaddr;
  input [3:0]SLOT_2_AXI_awcache;
  input [7:0]SLOT_2_AXI_awlen;
  input [2:0]SLOT_2_AXI_awprot;
  input SLOT_2_AXI_awready;
  input [2:0]SLOT_2_AXI_awsize;
  input SLOT_2_AXI_awvalid;
  input SLOT_2_AXI_bready;
  input [1:0]SLOT_2_AXI_bresp;
  input SLOT_2_AXI_bvalid;
  input [63:0]SLOT_2_AXI_rdata;
  input SLOT_2_AXI_rlast;
  input SLOT_2_AXI_rready;
  input SLOT_2_AXI_rvalid;
  input [63:0]SLOT_2_AXI_wdata;
  input SLOT_2_AXI_wlast;
  input SLOT_2_AXI_wready;
  input [7:0]SLOT_2_AXI_wstrb;
  input SLOT_2_AXI_wvalid;
  input [31:0]SLOT_3_AXIS_tdata;
  input [3:0]SLOT_3_AXIS_tkeep;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tready;
  input [0:0]SLOT_3_AXIS_tuser;
  input SLOT_3_AXIS_tvalid;
  input [8:0]SLOT_4_AXI_araddr;
  input [2:0]SLOT_4_AXI_arprot;
  input SLOT_4_AXI_arready;
  input SLOT_4_AXI_arvalid;
  input [8:0]SLOT_4_AXI_awaddr;
  input [2:0]SLOT_4_AXI_awprot;
  input SLOT_4_AXI_awready;
  input SLOT_4_AXI_awvalid;
  input SLOT_4_AXI_bready;
  input [1:0]SLOT_4_AXI_bresp;
  input SLOT_4_AXI_bvalid;
  input [31:0]SLOT_4_AXI_rdata;
  input SLOT_4_AXI_rready;
  input [1:0]SLOT_4_AXI_rresp;
  input SLOT_4_AXI_rvalid;
  input [31:0]SLOT_4_AXI_wdata;
  input SLOT_4_AXI_wready;
  input [3:0]SLOT_4_AXI_wstrb;
  input SLOT_4_AXI_wvalid;
  input [8:0]SLOT_5_AXI_araddr;
  input [2:0]SLOT_5_AXI_arprot;
  input SLOT_5_AXI_arready;
  input SLOT_5_AXI_arvalid;
  input [8:0]SLOT_5_AXI_awaddr;
  input [2:0]SLOT_5_AXI_awprot;
  input SLOT_5_AXI_awready;
  input SLOT_5_AXI_awvalid;
  input SLOT_5_AXI_bready;
  input [1:0]SLOT_5_AXI_bresp;
  input SLOT_5_AXI_bvalid;
  input [31:0]SLOT_5_AXI_rdata;
  input SLOT_5_AXI_rready;
  input [1:0]SLOT_5_AXI_rresp;
  input SLOT_5_AXI_rvalid;
  input [31:0]SLOT_5_AXI_wdata;
  input SLOT_5_AXI_wready;
  input [3:0]SLOT_5_AXI_wstrb;
  input SLOT_5_AXI_wvalid;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input resetn;

  wire [31:0]SLOT_0_AXI_araddr;
  wire [3:0]SLOT_0_AXI_arcache;
  wire [7:0]SLOT_0_AXI_arlen;
  wire [2:0]SLOT_0_AXI_arprot;
  wire SLOT_0_AXI_arready;
  wire [2:0]SLOT_0_AXI_arsize;
  wire SLOT_0_AXI_arvalid;
  wire [31:0]SLOT_0_AXI_awaddr;
  wire [3:0]SLOT_0_AXI_awcache;
  wire [7:0]SLOT_0_AXI_awlen;
  wire [2:0]SLOT_0_AXI_awprot;
  wire SLOT_0_AXI_awready;
  wire [2:0]SLOT_0_AXI_awsize;
  wire SLOT_0_AXI_awvalid;
  wire SLOT_0_AXI_bready;
  wire [1:0]SLOT_0_AXI_bresp;
  wire SLOT_0_AXI_bvalid;
  wire [63:0]SLOT_0_AXI_rdata;
  wire SLOT_0_AXI_rlast;
  wire SLOT_0_AXI_rready;
  wire SLOT_0_AXI_rvalid;
  wire [63:0]SLOT_0_AXI_wdata;
  wire SLOT_0_AXI_wlast;
  wire SLOT_0_AXI_wready;
  wire [7:0]SLOT_0_AXI_wstrb;
  wire SLOT_0_AXI_wvalid;
  wire [31:0]SLOT_1_AXIS_tdata;
  wire [0:0]SLOT_1_AXIS_tdest;
  wire [0:0]SLOT_1_AXIS_tid;
  wire [3:0]SLOT_1_AXIS_tkeep;
  wire SLOT_1_AXIS_tlast;
  wire SLOT_1_AXIS_tready;
  wire [3:0]SLOT_1_AXIS_tstrb;
  wire [0:0]SLOT_1_AXIS_tuser;
  wire SLOT_1_AXIS_tvalid;
  wire [31:0]SLOT_2_AXI_araddr;
  wire [3:0]SLOT_2_AXI_arcache;
  wire [7:0]SLOT_2_AXI_arlen;
  wire [2:0]SLOT_2_AXI_arprot;
  wire SLOT_2_AXI_arready;
  wire [2:0]SLOT_2_AXI_arsize;
  wire SLOT_2_AXI_arvalid;
  wire [31:0]SLOT_2_AXI_awaddr;
  wire [3:0]SLOT_2_AXI_awcache;
  wire [7:0]SLOT_2_AXI_awlen;
  wire [2:0]SLOT_2_AXI_awprot;
  wire SLOT_2_AXI_awready;
  wire [2:0]SLOT_2_AXI_awsize;
  wire SLOT_2_AXI_awvalid;
  wire SLOT_2_AXI_bready;
  wire [1:0]SLOT_2_AXI_bresp;
  wire SLOT_2_AXI_bvalid;
  wire [63:0]SLOT_2_AXI_rdata;
  wire SLOT_2_AXI_rlast;
  wire SLOT_2_AXI_rready;
  wire SLOT_2_AXI_rvalid;
  wire [63:0]SLOT_2_AXI_wdata;
  wire SLOT_2_AXI_wlast;
  wire SLOT_2_AXI_wready;
  wire [7:0]SLOT_2_AXI_wstrb;
  wire SLOT_2_AXI_wvalid;
  wire [31:0]SLOT_3_AXIS_tdata;
  wire [3:0]SLOT_3_AXIS_tkeep;
  wire SLOT_3_AXIS_tlast;
  wire SLOT_3_AXIS_tready;
  wire [0:0]SLOT_3_AXIS_tuser;
  wire SLOT_3_AXIS_tvalid;
  wire [8:0]SLOT_4_AXI_araddr;
  wire [2:0]SLOT_4_AXI_arprot;
  wire SLOT_4_AXI_arready;
  wire SLOT_4_AXI_arvalid;
  wire [8:0]SLOT_4_AXI_awaddr;
  wire [2:0]SLOT_4_AXI_awprot;
  wire SLOT_4_AXI_awready;
  wire SLOT_4_AXI_awvalid;
  wire SLOT_4_AXI_bready;
  wire [1:0]SLOT_4_AXI_bresp;
  wire SLOT_4_AXI_bvalid;
  wire [31:0]SLOT_4_AXI_rdata;
  wire SLOT_4_AXI_rready;
  wire [1:0]SLOT_4_AXI_rresp;
  wire SLOT_4_AXI_rvalid;
  wire [31:0]SLOT_4_AXI_wdata;
  wire SLOT_4_AXI_wready;
  wire [3:0]SLOT_4_AXI_wstrb;
  wire SLOT_4_AXI_wvalid;
  wire [8:0]SLOT_5_AXI_araddr;
  wire [2:0]SLOT_5_AXI_arprot;
  wire SLOT_5_AXI_arready;
  wire SLOT_5_AXI_arvalid;
  wire [8:0]SLOT_5_AXI_awaddr;
  wire [2:0]SLOT_5_AXI_awprot;
  wire SLOT_5_AXI_awready;
  wire SLOT_5_AXI_awvalid;
  wire SLOT_5_AXI_bready;
  wire [1:0]SLOT_5_AXI_bresp;
  wire SLOT_5_AXI_bvalid;
  wire [31:0]SLOT_5_AXI_rdata;
  wire SLOT_5_AXI_rready;
  wire [1:0]SLOT_5_AXI_rresp;
  wire SLOT_5_AXI_rvalid;
  wire [31:0]SLOT_5_AXI_wdata;
  wire SLOT_5_AXI_wready;
  wire [3:0]SLOT_5_AXI_wstrb;
  wire SLOT_5_AXI_wvalid;
  wire clk;
  wire [0:0]probe0;
  wire [0:0]probe1;
  wire resetn;

  bd_f60c bd_f60c_i
       (.SLOT_0_AXI_araddr(SLOT_0_AXI_araddr),
        .SLOT_0_AXI_arcache(SLOT_0_AXI_arcache),
        .SLOT_0_AXI_arlen(SLOT_0_AXI_arlen),
        .SLOT_0_AXI_arprot(SLOT_0_AXI_arprot),
        .SLOT_0_AXI_arready(SLOT_0_AXI_arready),
        .SLOT_0_AXI_arsize(SLOT_0_AXI_arsize),
        .SLOT_0_AXI_arvalid(SLOT_0_AXI_arvalid),
        .SLOT_0_AXI_awaddr(SLOT_0_AXI_awaddr),
        .SLOT_0_AXI_awcache(SLOT_0_AXI_awcache),
        .SLOT_0_AXI_awlen(SLOT_0_AXI_awlen),
        .SLOT_0_AXI_awprot(SLOT_0_AXI_awprot),
        .SLOT_0_AXI_awready(SLOT_0_AXI_awready),
        .SLOT_0_AXI_awsize(SLOT_0_AXI_awsize),
        .SLOT_0_AXI_awvalid(SLOT_0_AXI_awvalid),
        .SLOT_0_AXI_bready(SLOT_0_AXI_bready),
        .SLOT_0_AXI_bresp(SLOT_0_AXI_bresp),
        .SLOT_0_AXI_bvalid(SLOT_0_AXI_bvalid),
        .SLOT_0_AXI_rdata(SLOT_0_AXI_rdata),
        .SLOT_0_AXI_rlast(SLOT_0_AXI_rlast),
        .SLOT_0_AXI_rready(SLOT_0_AXI_rready),
        .SLOT_0_AXI_rvalid(SLOT_0_AXI_rvalid),
        .SLOT_0_AXI_wdata(SLOT_0_AXI_wdata),
        .SLOT_0_AXI_wlast(SLOT_0_AXI_wlast),
        .SLOT_0_AXI_wready(SLOT_0_AXI_wready),
        .SLOT_0_AXI_wstrb(SLOT_0_AXI_wstrb),
        .SLOT_0_AXI_wvalid(SLOT_0_AXI_wvalid),
        .SLOT_1_AXIS_tdata(SLOT_1_AXIS_tdata),
        .SLOT_1_AXIS_tdest(SLOT_1_AXIS_tdest),
        .SLOT_1_AXIS_tid(SLOT_1_AXIS_tid),
        .SLOT_1_AXIS_tkeep(SLOT_1_AXIS_tkeep),
        .SLOT_1_AXIS_tlast(SLOT_1_AXIS_tlast),
        .SLOT_1_AXIS_tready(SLOT_1_AXIS_tready),
        .SLOT_1_AXIS_tstrb(SLOT_1_AXIS_tstrb),
        .SLOT_1_AXIS_tuser(SLOT_1_AXIS_tuser),
        .SLOT_1_AXIS_tvalid(SLOT_1_AXIS_tvalid),
        .SLOT_2_AXI_araddr(SLOT_2_AXI_araddr),
        .SLOT_2_AXI_arcache(SLOT_2_AXI_arcache),
        .SLOT_2_AXI_arlen(SLOT_2_AXI_arlen),
        .SLOT_2_AXI_arprot(SLOT_2_AXI_arprot),
        .SLOT_2_AXI_arready(SLOT_2_AXI_arready),
        .SLOT_2_AXI_arsize(SLOT_2_AXI_arsize),
        .SLOT_2_AXI_arvalid(SLOT_2_AXI_arvalid),
        .SLOT_2_AXI_awaddr(SLOT_2_AXI_awaddr),
        .SLOT_2_AXI_awcache(SLOT_2_AXI_awcache),
        .SLOT_2_AXI_awlen(SLOT_2_AXI_awlen),
        .SLOT_2_AXI_awprot(SLOT_2_AXI_awprot),
        .SLOT_2_AXI_awready(SLOT_2_AXI_awready),
        .SLOT_2_AXI_awsize(SLOT_2_AXI_awsize),
        .SLOT_2_AXI_awvalid(SLOT_2_AXI_awvalid),
        .SLOT_2_AXI_bready(SLOT_2_AXI_bready),
        .SLOT_2_AXI_bresp(SLOT_2_AXI_bresp),
        .SLOT_2_AXI_bvalid(SLOT_2_AXI_bvalid),
        .SLOT_2_AXI_rdata(SLOT_2_AXI_rdata),
        .SLOT_2_AXI_rlast(SLOT_2_AXI_rlast),
        .SLOT_2_AXI_rready(SLOT_2_AXI_rready),
        .SLOT_2_AXI_rvalid(SLOT_2_AXI_rvalid),
        .SLOT_2_AXI_wdata(SLOT_2_AXI_wdata),
        .SLOT_2_AXI_wlast(SLOT_2_AXI_wlast),
        .SLOT_2_AXI_wready(SLOT_2_AXI_wready),
        .SLOT_2_AXI_wstrb(SLOT_2_AXI_wstrb),
        .SLOT_2_AXI_wvalid(SLOT_2_AXI_wvalid),
        .SLOT_3_AXIS_tdata(SLOT_3_AXIS_tdata),
        .SLOT_3_AXIS_tkeep(SLOT_3_AXIS_tkeep),
        .SLOT_3_AXIS_tlast(SLOT_3_AXIS_tlast),
        .SLOT_3_AXIS_tready(SLOT_3_AXIS_tready),
        .SLOT_3_AXIS_tuser(SLOT_3_AXIS_tuser),
        .SLOT_3_AXIS_tvalid(SLOT_3_AXIS_tvalid),
        .SLOT_4_AXI_araddr(SLOT_4_AXI_araddr),
        .SLOT_4_AXI_arprot(SLOT_4_AXI_arprot),
        .SLOT_4_AXI_arready(SLOT_4_AXI_arready),
        .SLOT_4_AXI_arvalid(SLOT_4_AXI_arvalid),
        .SLOT_4_AXI_awaddr(SLOT_4_AXI_awaddr),
        .SLOT_4_AXI_awprot(SLOT_4_AXI_awprot),
        .SLOT_4_AXI_awready(SLOT_4_AXI_awready),
        .SLOT_4_AXI_awvalid(SLOT_4_AXI_awvalid),
        .SLOT_4_AXI_bready(SLOT_4_AXI_bready),
        .SLOT_4_AXI_bresp(SLOT_4_AXI_bresp),
        .SLOT_4_AXI_bvalid(SLOT_4_AXI_bvalid),
        .SLOT_4_AXI_rdata(SLOT_4_AXI_rdata),
        .SLOT_4_AXI_rready(SLOT_4_AXI_rready),
        .SLOT_4_AXI_rresp(SLOT_4_AXI_rresp),
        .SLOT_4_AXI_rvalid(SLOT_4_AXI_rvalid),
        .SLOT_4_AXI_wdata(SLOT_4_AXI_wdata),
        .SLOT_4_AXI_wready(SLOT_4_AXI_wready),
        .SLOT_4_AXI_wstrb(SLOT_4_AXI_wstrb),
        .SLOT_4_AXI_wvalid(SLOT_4_AXI_wvalid),
        .SLOT_5_AXI_araddr(SLOT_5_AXI_araddr),
        .SLOT_5_AXI_arprot(SLOT_5_AXI_arprot),
        .SLOT_5_AXI_arready(SLOT_5_AXI_arready),
        .SLOT_5_AXI_arvalid(SLOT_5_AXI_arvalid),
        .SLOT_5_AXI_awaddr(SLOT_5_AXI_awaddr),
        .SLOT_5_AXI_awprot(SLOT_5_AXI_awprot),
        .SLOT_5_AXI_awready(SLOT_5_AXI_awready),
        .SLOT_5_AXI_awvalid(SLOT_5_AXI_awvalid),
        .SLOT_5_AXI_bready(SLOT_5_AXI_bready),
        .SLOT_5_AXI_bresp(SLOT_5_AXI_bresp),
        .SLOT_5_AXI_bvalid(SLOT_5_AXI_bvalid),
        .SLOT_5_AXI_rdata(SLOT_5_AXI_rdata),
        .SLOT_5_AXI_rready(SLOT_5_AXI_rready),
        .SLOT_5_AXI_rresp(SLOT_5_AXI_rresp),
        .SLOT_5_AXI_rvalid(SLOT_5_AXI_rvalid),
        .SLOT_5_AXI_wdata(SLOT_5_AXI_wdata),
        .SLOT_5_AXI_wready(SLOT_5_AXI_wready),
        .SLOT_5_AXI_wstrb(SLOT_5_AXI_wstrb),
        .SLOT_5_AXI_wvalid(SLOT_5_AXI_wvalid),
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .resetn(resetn));
endmodule
