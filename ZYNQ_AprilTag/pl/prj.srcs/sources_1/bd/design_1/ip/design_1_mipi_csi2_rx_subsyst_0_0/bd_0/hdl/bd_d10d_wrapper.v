//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_d10d_wrapper.bd
//Design : bd_d10d_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_d10d_wrapper
   (clkoutphy_out,
    csirxss_csi_irq,
    csirxss_s_axi_araddr,
    csirxss_s_axi_arprot,
    csirxss_s_axi_arready,
    csirxss_s_axi_arvalid,
    csirxss_s_axi_awaddr,
    csirxss_s_axi_awprot,
    csirxss_s_axi_awready,
    csirxss_s_axi_awvalid,
    csirxss_s_axi_bready,
    csirxss_s_axi_bresp,
    csirxss_s_axi_bvalid,
    csirxss_s_axi_rdata,
    csirxss_s_axi_rready,
    csirxss_s_axi_rresp,
    csirxss_s_axi_rvalid,
    csirxss_s_axi_wdata,
    csirxss_s_axi_wready,
    csirxss_s_axi_wstrb,
    csirxss_s_axi_wvalid,
    dphy_clk_200M,
    lite_aclk,
    lite_aresetn,
    mipi_phy_if_clk_n,
    mipi_phy_if_clk_p,
    mipi_phy_if_data_n,
    mipi_phy_if_data_p,
    pll_lock_out,
    rxbyteclkhs,
    system_rst_out,
    video_aclk,
    video_aresetn,
    video_out_tdata,
    video_out_tdest,
    video_out_tlast,
    video_out_tready,
    video_out_tuser,
    video_out_tvalid);
  output clkoutphy_out;
  output csirxss_csi_irq;
  input [12:0]csirxss_s_axi_araddr;
  input [2:0]csirxss_s_axi_arprot;
  output [0:0]csirxss_s_axi_arready;
  input [0:0]csirxss_s_axi_arvalid;
  input [12:0]csirxss_s_axi_awaddr;
  input [2:0]csirxss_s_axi_awprot;
  output [0:0]csirxss_s_axi_awready;
  input [0:0]csirxss_s_axi_awvalid;
  input [0:0]csirxss_s_axi_bready;
  output [1:0]csirxss_s_axi_bresp;
  output [0:0]csirxss_s_axi_bvalid;
  output [31:0]csirxss_s_axi_rdata;
  input [0:0]csirxss_s_axi_rready;
  output [1:0]csirxss_s_axi_rresp;
  output [0:0]csirxss_s_axi_rvalid;
  input [31:0]csirxss_s_axi_wdata;
  output [0:0]csirxss_s_axi_wready;
  input [3:0]csirxss_s_axi_wstrb;
  input [0:0]csirxss_s_axi_wvalid;
  input dphy_clk_200M;
  input lite_aclk;
  input lite_aresetn;
  input mipi_phy_if_clk_n;
  input mipi_phy_if_clk_p;
  input [1:0]mipi_phy_if_data_n;
  input [1:0]mipi_phy_if_data_p;
  output pll_lock_out;
  output rxbyteclkhs;
  output system_rst_out;
  input video_aclk;
  input video_aresetn;
  output [15:0]video_out_tdata;
  output [9:0]video_out_tdest;
  output video_out_tlast;
  input video_out_tready;
  output [0:0]video_out_tuser;
  output video_out_tvalid;

  wire clkoutphy_out;
  wire csirxss_csi_irq;
  wire [12:0]csirxss_s_axi_araddr;
  wire [2:0]csirxss_s_axi_arprot;
  wire [0:0]csirxss_s_axi_arready;
  wire [0:0]csirxss_s_axi_arvalid;
  wire [12:0]csirxss_s_axi_awaddr;
  wire [2:0]csirxss_s_axi_awprot;
  wire [0:0]csirxss_s_axi_awready;
  wire [0:0]csirxss_s_axi_awvalid;
  wire [0:0]csirxss_s_axi_bready;
  wire [1:0]csirxss_s_axi_bresp;
  wire [0:0]csirxss_s_axi_bvalid;
  wire [31:0]csirxss_s_axi_rdata;
  wire [0:0]csirxss_s_axi_rready;
  wire [1:0]csirxss_s_axi_rresp;
  wire [0:0]csirxss_s_axi_rvalid;
  wire [31:0]csirxss_s_axi_wdata;
  wire [0:0]csirxss_s_axi_wready;
  wire [3:0]csirxss_s_axi_wstrb;
  wire [0:0]csirxss_s_axi_wvalid;
  wire dphy_clk_200M;
  wire lite_aclk;
  wire lite_aresetn;
  wire mipi_phy_if_clk_n;
  wire mipi_phy_if_clk_p;
  wire [1:0]mipi_phy_if_data_n;
  wire [1:0]mipi_phy_if_data_p;
  wire pll_lock_out;
  wire rxbyteclkhs;
  wire system_rst_out;
  wire video_aclk;
  wire video_aresetn;
  wire [15:0]video_out_tdata;
  wire [9:0]video_out_tdest;
  wire video_out_tlast;
  wire video_out_tready;
  wire [0:0]video_out_tuser;
  wire video_out_tvalid;

  bd_d10d bd_d10d_i
       (.clkoutphy_out(clkoutphy_out),
        .csirxss_csi_irq(csirxss_csi_irq),
        .csirxss_s_axi_araddr(csirxss_s_axi_araddr),
        .csirxss_s_axi_arprot(csirxss_s_axi_arprot),
        .csirxss_s_axi_arready(csirxss_s_axi_arready),
        .csirxss_s_axi_arvalid(csirxss_s_axi_arvalid),
        .csirxss_s_axi_awaddr(csirxss_s_axi_awaddr),
        .csirxss_s_axi_awprot(csirxss_s_axi_awprot),
        .csirxss_s_axi_awready(csirxss_s_axi_awready),
        .csirxss_s_axi_awvalid(csirxss_s_axi_awvalid),
        .csirxss_s_axi_bready(csirxss_s_axi_bready),
        .csirxss_s_axi_bresp(csirxss_s_axi_bresp),
        .csirxss_s_axi_bvalid(csirxss_s_axi_bvalid),
        .csirxss_s_axi_rdata(csirxss_s_axi_rdata),
        .csirxss_s_axi_rready(csirxss_s_axi_rready),
        .csirxss_s_axi_rresp(csirxss_s_axi_rresp),
        .csirxss_s_axi_rvalid(csirxss_s_axi_rvalid),
        .csirxss_s_axi_wdata(csirxss_s_axi_wdata),
        .csirxss_s_axi_wready(csirxss_s_axi_wready),
        .csirxss_s_axi_wstrb(csirxss_s_axi_wstrb),
        .csirxss_s_axi_wvalid(csirxss_s_axi_wvalid),
        .dphy_clk_200M(dphy_clk_200M),
        .lite_aclk(lite_aclk),
        .lite_aresetn(lite_aresetn),
        .mipi_phy_if_clk_n(mipi_phy_if_clk_n),
        .mipi_phy_if_clk_p(mipi_phy_if_clk_p),
        .mipi_phy_if_data_n(mipi_phy_if_data_n),
        .mipi_phy_if_data_p(mipi_phy_if_data_p),
        .pll_lock_out(pll_lock_out),
        .rxbyteclkhs(rxbyteclkhs),
        .system_rst_out(system_rst_out),
        .video_aclk(video_aclk),
        .video_aresetn(video_aresetn),
        .video_out_tdata(video_out_tdata),
        .video_out_tdest(video_out_tdest),
        .video_out_tlast(video_out_tlast),
        .video_out_tready(video_out_tready),
        .video_out_tuser(video_out_tuser),
        .video_out_tvalid(video_out_tvalid));
endmodule
