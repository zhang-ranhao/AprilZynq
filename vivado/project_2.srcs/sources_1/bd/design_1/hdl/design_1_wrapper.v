//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat Jun 10 13:46:03 2023
//Host        : LAPTOP-LC3M2DQ5 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (cam0_i2c_scl_io,
    cam0_i2c_sda_io,
    emio_tri_io,
    mipi_phy_if_0_clk_n,
    mipi_phy_if_0_clk_p,
    mipi_phy_if_0_data_n,
    mipi_phy_if_0_data_p,
    uav_uart_rxd,
    uav_uart_txd);
  inout cam0_i2c_scl_io;
  inout cam0_i2c_sda_io;
  inout [8:0]emio_tri_io;
  input mipi_phy_if_0_clk_n;
  input mipi_phy_if_0_clk_p;
  input [1:0]mipi_phy_if_0_data_n;
  input [1:0]mipi_phy_if_0_data_p;
  input uav_uart_rxd;
  output uav_uart_txd;

  wire cam0_i2c_scl_i;
  wire cam0_i2c_scl_io;
  wire cam0_i2c_scl_o;
  wire cam0_i2c_scl_t;
  wire cam0_i2c_sda_i;
  wire cam0_i2c_sda_io;
  wire cam0_i2c_sda_o;
  wire cam0_i2c_sda_t;
  wire [0:0]emio_tri_i_0;
  wire [1:1]emio_tri_i_1;
  wire [2:2]emio_tri_i_2;
  wire [3:3]emio_tri_i_3;
  wire [4:4]emio_tri_i_4;
  wire [5:5]emio_tri_i_5;
  wire [6:6]emio_tri_i_6;
  wire [7:7]emio_tri_i_7;
  wire [8:8]emio_tri_i_8;
  wire [0:0]emio_tri_io_0;
  wire [1:1]emio_tri_io_1;
  wire [2:2]emio_tri_io_2;
  wire [3:3]emio_tri_io_3;
  wire [4:4]emio_tri_io_4;
  wire [5:5]emio_tri_io_5;
  wire [6:6]emio_tri_io_6;
  wire [7:7]emio_tri_io_7;
  wire [8:8]emio_tri_io_8;
  wire [0:0]emio_tri_o_0;
  wire [1:1]emio_tri_o_1;
  wire [2:2]emio_tri_o_2;
  wire [3:3]emio_tri_o_3;
  wire [4:4]emio_tri_o_4;
  wire [5:5]emio_tri_o_5;
  wire [6:6]emio_tri_o_6;
  wire [7:7]emio_tri_o_7;
  wire [8:8]emio_tri_o_8;
  wire [0:0]emio_tri_t_0;
  wire [1:1]emio_tri_t_1;
  wire [2:2]emio_tri_t_2;
  wire [3:3]emio_tri_t_3;
  wire [4:4]emio_tri_t_4;
  wire [5:5]emio_tri_t_5;
  wire [6:6]emio_tri_t_6;
  wire [7:7]emio_tri_t_7;
  wire [8:8]emio_tri_t_8;
  wire mipi_phy_if_0_clk_n;
  wire mipi_phy_if_0_clk_p;
  wire [1:0]mipi_phy_if_0_data_n;
  wire [1:0]mipi_phy_if_0_data_p;
  wire uav_uart_rxd;
  wire uav_uart_txd;

  IOBUF cam0_i2c_scl_iobuf
       (.I(cam0_i2c_scl_o),
        .IO(cam0_i2c_scl_io),
        .O(cam0_i2c_scl_i),
        .T(cam0_i2c_scl_t));
  IOBUF cam0_i2c_sda_iobuf
       (.I(cam0_i2c_sda_o),
        .IO(cam0_i2c_sda_io),
        .O(cam0_i2c_sda_i),
        .T(cam0_i2c_sda_t));
  design_1 design_1_i
       (.cam0_i2c_scl_i(cam0_i2c_scl_i),
        .cam0_i2c_scl_o(cam0_i2c_scl_o),
        .cam0_i2c_scl_t(cam0_i2c_scl_t),
        .cam0_i2c_sda_i(cam0_i2c_sda_i),
        .cam0_i2c_sda_o(cam0_i2c_sda_o),
        .cam0_i2c_sda_t(cam0_i2c_sda_t),
        .emio_tri_i({emio_tri_i_8,emio_tri_i_7,emio_tri_i_6,emio_tri_i_5,emio_tri_i_4,emio_tri_i_3,emio_tri_i_2,emio_tri_i_1,emio_tri_i_0}),
        .emio_tri_o({emio_tri_o_8,emio_tri_o_7,emio_tri_o_6,emio_tri_o_5,emio_tri_o_4,emio_tri_o_3,emio_tri_o_2,emio_tri_o_1,emio_tri_o_0}),
        .emio_tri_t({emio_tri_t_8,emio_tri_t_7,emio_tri_t_6,emio_tri_t_5,emio_tri_t_4,emio_tri_t_3,emio_tri_t_2,emio_tri_t_1,emio_tri_t_0}),
        .mipi_phy_if_0_clk_n(mipi_phy_if_0_clk_n),
        .mipi_phy_if_0_clk_p(mipi_phy_if_0_clk_p),
        .mipi_phy_if_0_data_n(mipi_phy_if_0_data_n),
        .mipi_phy_if_0_data_p(mipi_phy_if_0_data_p),
        .uav_uart_rxd(uav_uart_rxd),
        .uav_uart_txd(uav_uart_txd));
  IOBUF emio_tri_iobuf_0
       (.I(emio_tri_o_0),
        .IO(emio_tri_io[0]),
        .O(emio_tri_i_0),
        .T(emio_tri_t_0));
  IOBUF emio_tri_iobuf_1
       (.I(emio_tri_o_1),
        .IO(emio_tri_io[1]),
        .O(emio_tri_i_1),
        .T(emio_tri_t_1));
  IOBUF emio_tri_iobuf_2
       (.I(emio_tri_o_2),
        .IO(emio_tri_io[2]),
        .O(emio_tri_i_2),
        .T(emio_tri_t_2));
  IOBUF emio_tri_iobuf_3
       (.I(emio_tri_o_3),
        .IO(emio_tri_io[3]),
        .O(emio_tri_i_3),
        .T(emio_tri_t_3));
  IOBUF emio_tri_iobuf_4
       (.I(emio_tri_o_4),
        .IO(emio_tri_io[4]),
        .O(emio_tri_i_4),
        .T(emio_tri_t_4));
  IOBUF emio_tri_iobuf_5
       (.I(emio_tri_o_5),
        .IO(emio_tri_io[5]),
        .O(emio_tri_i_5),
        .T(emio_tri_t_5));
  IOBUF emio_tri_iobuf_6
       (.I(emio_tri_o_6),
        .IO(emio_tri_io[6]),
        .O(emio_tri_i_6),
        .T(emio_tri_t_6));
  IOBUF emio_tri_iobuf_7
       (.I(emio_tri_o_7),
        .IO(emio_tri_io[7]),
        .O(emio_tri_i_7),
        .T(emio_tri_t_7));
  IOBUF emio_tri_iobuf_8
       (.I(emio_tri_o_8),
        .IO(emio_tri_io[8]),
        .O(emio_tri_i_8),
        .T(emio_tri_t_8));
endmodule
