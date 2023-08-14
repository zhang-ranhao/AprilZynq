-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon May 15 21:56:38 2023
-- Host        : LAPTOP-LC3M2DQ5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/zrh463259112/Desktop/apriltag_demo/an5641_mipi_dp_stage1/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_v_rgb2ycrcb_0_0/design_1_v_rgb2ycrcb_0_0_sim_netlist.vhdl
-- Design      : design_1_v_rgb2ycrcb_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu2cg-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_axi4s_control is
  port (
    in_fifo_reset : out STD_LOGIC;
    master_en : out STD_LOGIC;
    intc_if : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_wr_i : out STD_LOGIC;
    da : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wen : out STD_LOGIC;
    fifo_rd_i_reg_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    resetn_out : in STD_LOGIC;
    \time_control_regs[0]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    eof_i_reg_0 : in STD_LOGIC;
    t_qb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \col_cnt_reg[0]_0\ : in STD_LOGIC;
    \col_cnt_reg[0]_1\ : in STD_LOGIC;
    core_d_out : in STD_LOGIC;
    \GenerateDoutWriteFirstB.t_qb_reg[29]\ : in STD_LOGIC;
    eol_late_i_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_axi4s_control : entity is "axi4s_control";
end design_1_v_rgb2ycrcb_0_0_axi4s_control;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_axi4s_control is
  signal active_cols_2 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \active_cols_2[7]_i_2_n_0\ : STD_LOGIC;
  signal \active_cols_2_reg[12]_i_1_n_11\ : STD_LOGIC;
  signal \active_cols_2_reg[12]_i_1_n_12\ : STD_LOGIC;
  signal \active_cols_2_reg[12]_i_1_n_13\ : STD_LOGIC;
  signal \active_cols_2_reg[12]_i_1_n_14\ : STD_LOGIC;
  signal \active_cols_2_reg[12]_i_1_n_15\ : STD_LOGIC;
  signal \active_cols_2_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \active_cols_2_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \active_cols_2_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \active_cols_2_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal active_delay_i : STD_LOGIC;
  signal col_cnt : STD_LOGIC;
  signal \col_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_8_n_0\ : STD_LOGIC;
  signal \col_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \col_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \col_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal core_en_i : STD_LOGIC;
  signal eof_i_i_1_n_0 : STD_LOGIC;
  signal eof_i_i_2_n_0 : STD_LOGIC;
  signal eof_i_i_3_n_0 : STD_LOGIC;
  signal eof_i_i_4_n_0 : STD_LOGIC;
  signal eof_i_i_5_n_0 : STD_LOGIC;
  signal eof_i_i_6_n_0 : STD_LOGIC;
  signal eof_i_i_7_n_0 : STD_LOGIC;
  signal eof_i_i_8_n_0 : STD_LOGIC;
  signal eol_early_i0 : STD_LOGIC;
  signal eol_early_i_i_1_n_0 : STD_LOGIC;
  signal eol_expected : STD_LOGIC;
  signal eol_expected0 : STD_LOGIC;
  signal eol_expected_d : STD_LOGIC;
  signal eol_expected_d_i_1_n_0 : STD_LOGIC;
  signal eol_expected_i_2_n_0 : STD_LOGIC;
  signal eol_expected_i_3_n_0 : STD_LOGIC;
  signal eol_expected_i_4_n_0 : STD_LOGIC;
  signal eol_expected_i_5_n_0 : STD_LOGIC;
  signal eol_expected_i_6_n_0 : STD_LOGIC;
  signal eol_expected_i_7_n_0 : STD_LOGIC;
  signal eol_expected_i_8_n_0 : STD_LOGIC;
  signal eol_late_i3_out : STD_LOGIC;
  signal eol_late_i_i_3_n_0 : STD_LOGIC;
  signal eqOp1_out : STD_LOGIC;
  signal fifo_rd_d : STD_LOGIC;
  signal fifo_rd_d_i_1_n_0 : STD_LOGIC;
  signal fifo_rd_i : STD_LOGIC;
  signal fifo_rd_i0 : STD_LOGIC;
  signal \^fifo_rd_i_reg_0\ : STD_LOGIC;
  signal \^fifo_wr_i\ : STD_LOGIC;
  signal fifo_wr_i0 : STD_LOGIC;
  signal fifo_wr_i_i_10_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_11_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_12_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_13_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_3_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_4_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_5_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_6_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_7_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_8_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_9_n_0 : STD_LOGIC;
  signal fifo_wr_i_reg_i_2_n_2 : STD_LOGIC;
  signal fifo_wr_i_reg_i_2_n_3 : STD_LOGIC;
  signal fifo_wr_i_reg_i_2_n_4 : STD_LOGIC;
  signal fifo_wr_i_reg_i_2_n_5 : STD_LOGIC;
  signal fifo_wr_i_reg_i_2_n_6 : STD_LOGIC;
  signal fifo_wr_i_reg_i_2_n_7 : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal geqOp_carry_i_10_n_0 : STD_LOGIC;
  signal geqOp_carry_i_11_n_0 : STD_LOGIC;
  signal geqOp_carry_i_12_n_0 : STD_LOGIC;
  signal geqOp_carry_i_13_n_0 : STD_LOGIC;
  signal geqOp_carry_i_14_n_0 : STD_LOGIC;
  signal geqOp_carry_i_1_n_0 : STD_LOGIC;
  signal geqOp_carry_i_2_n_0 : STD_LOGIC;
  signal geqOp_carry_i_3_n_0 : STD_LOGIC;
  signal geqOp_carry_i_4_n_0 : STD_LOGIC;
  signal geqOp_carry_i_5_n_0 : STD_LOGIC;
  signal geqOp_carry_i_6_n_0 : STD_LOGIC;
  signal geqOp_carry_i_7_n_0 : STD_LOGIC;
  signal geqOp_carry_i_8_n_0 : STD_LOGIC;
  signal geqOp_carry_i_9_n_0 : STD_LOGIC;
  signal geqOp_carry_n_2 : STD_LOGIC;
  signal geqOp_carry_n_3 : STD_LOGIC;
  signal geqOp_carry_n_4 : STD_LOGIC;
  signal geqOp_carry_n_5 : STD_LOGIC;
  signal geqOp_carry_n_6 : STD_LOGIC;
  signal geqOp_carry_n_7 : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal gtOp18_in : STD_LOGIC;
  signal gtOp19_in : STD_LOGIC;
  signal gtOp21_in : STD_LOGIC;
  signal gtOp22_in : STD_LOGIC;
  signal gtOp_carry_i_10_n_0 : STD_LOGIC;
  signal gtOp_carry_i_11_n_0 : STD_LOGIC;
  signal gtOp_carry_i_12_n_0 : STD_LOGIC;
  signal gtOp_carry_i_13_n_0 : STD_LOGIC;
  signal gtOp_carry_i_14_n_0 : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_i_9_n_0 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal gtOp_carry_n_4 : STD_LOGIC;
  signal gtOp_carry_n_5 : STD_LOGIC;
  signal gtOp_carry_n_6 : STD_LOGIC;
  signal gtOp_carry_n_7 : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry_n_4\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry_n_5\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry_n_6\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry_n_7\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry_n_4\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry_n_5\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry_n_6\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry_n_7\ : STD_LOGIC;
  signal \i__carry_i_10__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_10__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_10__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_10__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_11__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_11__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_11__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_11__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_12__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_12__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_12__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_12__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_12_n_0\ : STD_LOGIC;
  signal \i__carry_i_13__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_13__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_13__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \i__carry_i_14__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_14__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal \^in_fifo_reset\ : STD_LOGIC;
  signal in_fifo_reset0 : STD_LOGIC;
  signal in_fifo_reset_i_3_n_0 : STD_LOGIC;
  signal \^intc_if\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal leqOp16_in : STD_LOGIC;
  signal leqOp20_in : STD_LOGIC;
  signal leqOp23_in : STD_LOGIC;
  signal leqOp_carry_i_10_n_0 : STD_LOGIC;
  signal leqOp_carry_i_11_n_0 : STD_LOGIC;
  signal leqOp_carry_i_12_n_0 : STD_LOGIC;
  signal leqOp_carry_i_13_n_0 : STD_LOGIC;
  signal leqOp_carry_i_14_n_0 : STD_LOGIC;
  signal leqOp_carry_i_1_n_0 : STD_LOGIC;
  signal leqOp_carry_i_2_n_0 : STD_LOGIC;
  signal leqOp_carry_i_3_n_0 : STD_LOGIC;
  signal leqOp_carry_i_4_n_0 : STD_LOGIC;
  signal leqOp_carry_i_5_n_0 : STD_LOGIC;
  signal leqOp_carry_i_6_n_0 : STD_LOGIC;
  signal leqOp_carry_i_7_n_0 : STD_LOGIC;
  signal leqOp_carry_i_8_n_0 : STD_LOGIC;
  signal leqOp_carry_i_9_n_0 : STD_LOGIC;
  signal leqOp_carry_n_2 : STD_LOGIC;
  signal leqOp_carry_n_3 : STD_LOGIC;
  signal leqOp_carry_n_4 : STD_LOGIC;
  signal leqOp_carry_n_5 : STD_LOGIC;
  signal leqOp_carry_n_6 : STD_LOGIC;
  signal leqOp_carry_n_7 : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal line_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal line_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal line_cnt_tc_i_3_n_0 : STD_LOGIC;
  signal line_cnt_tc_i_4_n_0 : STD_LOGIC;
  signal line_cnt_tc_i_5_n_0 : STD_LOGIC;
  signal ltOp : STD_LOGIC;
  signal ltOp_carry_i_10_n_0 : STD_LOGIC;
  signal ltOp_carry_i_11_n_0 : STD_LOGIC;
  signal ltOp_carry_i_12_n_0 : STD_LOGIC;
  signal ltOp_carry_i_13_n_0 : STD_LOGIC;
  signal ltOp_carry_i_14_n_0 : STD_LOGIC;
  signal ltOp_carry_i_1_n_0 : STD_LOGIC;
  signal ltOp_carry_i_2_n_0 : STD_LOGIC;
  signal ltOp_carry_i_3_n_0 : STD_LOGIC;
  signal ltOp_carry_i_4_n_0 : STD_LOGIC;
  signal ltOp_carry_i_5_n_0 : STD_LOGIC;
  signal ltOp_carry_i_6_n_0 : STD_LOGIC;
  signal ltOp_carry_i_7_n_0 : STD_LOGIC;
  signal \ltOp_carry_i_8__2_n_0\ : STD_LOGIC;
  signal ltOp_carry_i_9_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal ltOp_carry_n_4 : STD_LOGIC;
  signal ltOp_carry_n_5 : STD_LOGIC;
  signal ltOp_carry_n_6 : STD_LOGIC;
  signal ltOp_carry_n_7 : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \^master_en\ : STD_LOGIC;
  signal out_fifo_eol_i_2_n_0 : STD_LOGIC;
  signal out_fifo_eol_i_3_n_0 : STD_LOGIC;
  signal out_fifo_eol_i_4_n_0 : STD_LOGIC;
  signal out_fifo_eol_i_5_n_0 : STD_LOGIC;
  signal out_fifo_eol_i_6_n_0 : STD_LOGIC;
  signal out_fifo_eol_i_7_n_0 : STD_LOGIC;
  signal out_fifo_sof0 : STD_LOGIC;
  signal pixel_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal pixel_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal row_cnt : STD_LOGIC;
  signal \row_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal row_cnt_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal sof_early_i_i_1_n_0 : STD_LOGIC;
  signal sof_expected : STD_LOGIC;
  signal sof_expected0 : STD_LOGIC;
  signal sof_expected_i_2_n_0 : STD_LOGIC;
  signal sof_expected_i_3_n_0 : STD_LOGIC;
  signal sof_expected_i_4_n_0 : STD_LOGIC;
  signal sof_expected_i_5_n_0 : STD_LOGIC;
  signal sof_expected_i_6_n_0 : STD_LOGIC;
  signal sof_expected_i_7_n_0 : STD_LOGIC;
  signal sof_expected_i_8_n_0 : STD_LOGIC;
  signal sof_expected_i_9_n_0 : STD_LOGIC;
  signal sof_late_i2_out : STD_LOGIC;
  signal total_cols : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \total_cols[8]_i_2_n_0\ : STD_LOGIC;
  signal \total_cols[8]_i_3_n_0\ : STD_LOGIC;
  signal \total_cols_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \total_cols_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \total_cols_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal total_rows : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \NLW_active_cols_2_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_active_cols_2_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal NLW_fifo_wr_i_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_fifo_wr_i_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_geqOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_geqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gtOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gtOp_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gtOp_inferred__2/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_gtOp_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gtOp_inferred__3/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_gtOp_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_leqOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_leqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_leqOp_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_leqOp_inferred__1/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_leqOp_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ltOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_plusOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_total_cols_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_total_cols_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \active_cols_2_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \active_cols_2_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \col_cnt[10]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \col_cnt[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \col_cnt[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \col_cnt[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \col_cnt[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \col_cnt[8]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \col_cnt[9]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of eof_i_i_5 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of eof_i_i_6 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of eol_expected_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of eol_expected_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of eol_expected_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of eol_late_i_i_3 : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of fifo_wr_i_reg_i_2 : label is 11;
  attribute COMPARATOR_THRESHOLD of geqOp_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of gtOp_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_inferred__2/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_inferred__3/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of leqOp_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \leqOp_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \leqOp_inferred__1/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of ltOp_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \ltOp_inferred__0/i__carry\ : label is 11;
  attribute SOFT_HLUTNM of out_fifo_eol_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of out_fifo_sof_i_1 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of sof_expected_i_4 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sof_expected_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of sof_expected_i_6 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of sof_expected_i_8 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of sof_expected_i_9 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of sof_late_i_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \total_cols[0]_i_1\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD of \total_cols_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \total_cols_reg[8]_i_1\ : label is 35;
begin
  fifo_rd_i_reg_0 <= \^fifo_rd_i_reg_0\;
  fifo_wr_i <= \^fifo_wr_i\;
  in_fifo_reset <= \^in_fifo_reset\;
  intc_if(7 downto 0) <= \^intc_if\(7 downto 0);
  master_en <= \^master_en\;
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \genr_control_regs[0]\(0),
      I1 => aclken,
      I2 => \^intc_if\(5),
      I3 => core_d_out,
      I4 => \GenerateDoutWriteFirstB.t_qb_reg[29]\,
      I5 => \^fifo_wr_i\,
      O => wen
    );
\active_cols_2[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[0]\(1),
      O => \active_cols_2[7]_i_2_n_0\
    );
\active_cols_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_15\,
      Q => active_cols_2(0),
      R => '0'
    );
\active_cols_2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[12]_i_1_n_13\,
      Q => active_cols_2(10),
      R => '0'
    );
\active_cols_2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[12]_i_1_n_12\,
      Q => active_cols_2(11),
      R => '0'
    );
\active_cols_2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[12]_i_1_n_11\,
      Q => active_cols_2(12),
      R => '0'
    );
\active_cols_2_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \active_cols_2_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_active_cols_2_reg[12]_i_1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \active_cols_2_reg[12]_i_1_n_4\,
      CO(2) => \active_cols_2_reg[12]_i_1_n_5\,
      CO(1) => \active_cols_2_reg[12]_i_1_n_6\,
      CO(0) => \active_cols_2_reg[12]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 5) => \NLW_active_cols_2_reg[12]_i_1_O_UNCONNECTED\(7 downto 5),
      O(4) => \active_cols_2_reg[12]_i_1_n_11\,
      O(3) => \active_cols_2_reg[12]_i_1_n_12\,
      O(2) => \active_cols_2_reg[12]_i_1_n_13\,
      O(1) => \active_cols_2_reg[12]_i_1_n_14\,
      O(0) => \active_cols_2_reg[12]_i_1_n_15\,
      S(7 downto 5) => B"000",
      S(4 downto 0) => \time_control_regs[0]\(12 downto 8)
    );
\active_cols_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_14\,
      Q => active_cols_2(1),
      R => '0'
    );
\active_cols_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_13\,
      Q => active_cols_2(2),
      R => '0'
    );
\active_cols_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_12\,
      Q => active_cols_2(3),
      R => '0'
    );
\active_cols_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_11\,
      Q => active_cols_2(4),
      R => '0'
    );
\active_cols_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_10\,
      Q => active_cols_2(5),
      R => '0'
    );
\active_cols_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_9\,
      Q => active_cols_2(6),
      R => '0'
    );
\active_cols_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_8\,
      Q => active_cols_2(7),
      R => '0'
    );
\active_cols_2_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \active_cols_2_reg[7]_i_1_n_0\,
      CO(6) => \active_cols_2_reg[7]_i_1_n_1\,
      CO(5) => \active_cols_2_reg[7]_i_1_n_2\,
      CO(4) => \active_cols_2_reg[7]_i_1_n_3\,
      CO(3) => \active_cols_2_reg[7]_i_1_n_4\,
      CO(2) => \active_cols_2_reg[7]_i_1_n_5\,
      CO(1) => \active_cols_2_reg[7]_i_1_n_6\,
      CO(0) => \active_cols_2_reg[7]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \time_control_regs[0]\(1),
      DI(0) => '0',
      O(7) => \active_cols_2_reg[7]_i_1_n_8\,
      O(6) => \active_cols_2_reg[7]_i_1_n_9\,
      O(5) => \active_cols_2_reg[7]_i_1_n_10\,
      O(4) => \active_cols_2_reg[7]_i_1_n_11\,
      O(3) => \active_cols_2_reg[7]_i_1_n_12\,
      O(2) => \active_cols_2_reg[7]_i_1_n_13\,
      O(1) => \active_cols_2_reg[7]_i_1_n_14\,
      O(0) => \active_cols_2_reg[7]_i_1_n_15\,
      S(7 downto 2) => \time_control_regs[0]\(7 downto 2),
      S(1) => \active_cols_2[7]_i_2_n_0\,
      S(0) => \time_control_regs[0]\(0)
    );
\active_cols_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[12]_i_1_n_15\,
      Q => active_cols_2(8),
      R => '0'
    );
\active_cols_2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[12]_i_1_n_14\,
      Q => active_cols_2(9),
      R => '0'
    );
\col_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEFAAEAAAEFAA"
    )
        port map (
      I0 => \col_cnt[0]_i_2_n_0\,
      I1 => active_cols_2(0),
      I2 => eol_late_i3_out,
      I3 => \col_cnt[12]_i_4_n_0\,
      I4 => \col_cnt_reg_n_0_[0]\,
      I5 => geqOp,
      O => \col_cnt[0]_i_1_n_0\
    );
\col_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DCD0DCD0DCD0"
    )
        port map (
      I0 => \^intc_if\(6),
      I1 => fifo_rd_d,
      I2 => \^intc_if\(7),
      I3 => sof_expected,
      I4 => \^in_fifo_reset\,
      I5 => t_qb(1),
      O => \col_cnt[0]_i_2_n_0\
    );
\col_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA008200000082"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => \col_cnt_reg_n_0_[10]\,
      I2 => \col_cnt[10]_i_2_n_0\,
      I3 => geqOp,
      I4 => eol_late_i3_out,
      I5 => active_cols_2(10),
      O => \col_cnt[10]_i_1_n_0\
    );
\col_cnt[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => \col_cnt[6]_i_2_n_0\,
      I3 => \col_cnt_reg_n_0_[7]\,
      I4 => \col_cnt_reg_n_0_[9]\,
      O => \col_cnt[10]_i_2_n_0\
    );
\col_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA008200000082"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => \col_cnt_reg_n_0_[11]\,
      I2 => pixel_cnt_tc_i_2_n_0,
      I3 => geqOp,
      I4 => eol_late_i3_out,
      I5 => active_cols_2(11),
      O => \col_cnt[11]_i_1_n_0\
    );
\col_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7500FFFF"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => eol_late_i3_out,
      I2 => geqOp,
      I3 => col_cnt,
      I4 => resetn_out,
      O => \col_cnt[12]_i_1_n_0\
    );
\col_cnt[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055445500004454"
    )
        port map (
      I0 => eof_i_reg_0,
      I1 => \col_cnt[12]_i_5_n_0\,
      I2 => leqOp20_in,
      I3 => \col_cnt_reg[0]_0\,
      I4 => \col_cnt_reg[0]_1\,
      I5 => ltOp,
      O => col_cnt
    );
\col_cnt[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA002800000028"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => \col_cnt_reg_n_0_[12]\,
      I2 => \col_cnt[12]_i_8_n_0\,
      I3 => geqOp,
      I4 => eol_late_i3_out,
      I5 => active_cols_2(12),
      O => \col_cnt[12]_i_3_n_0\
    );
\col_cnt[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80870000808780F7"
    )
        port map (
      I0 => t_qb(1),
      I1 => \^in_fifo_reset\,
      I2 => sof_expected,
      I3 => \^intc_if\(7),
      I4 => fifo_rd_d,
      I5 => \^intc_if\(6),
      O => \col_cnt[12]_i_4_n_0\
    );
\col_cnt[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => gtOp21_in,
      I1 => gtOp22_in,
      I2 => leqOp23_in,
      O => \col_cnt[12]_i_5_n_0\
    );
\col_cnt[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[11]\,
      I1 => \col_cnt_reg_n_0_[10]\,
      I2 => \col_cnt_reg_n_0_[8]\,
      I3 => \col_cnt[7]_i_2_n_0\,
      I4 => \col_cnt_reg_n_0_[7]\,
      I5 => \col_cnt_reg_n_0_[9]\,
      O => \col_cnt[12]_i_8_n_0\
    );
\col_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54FF540000000000"
    )
        port map (
      I0 => sof_early_i_i_1_n_0,
      I1 => sof_late_i2_out,
      I2 => \col_cnt[1]_i_2_n_0\,
      I3 => col_cnt,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => resetn_out,
      O => \col_cnt[1]_i_1_n_0\
    );
\col_cnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA022000000220"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => geqOp,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \col_cnt_reg_n_0_[0]\,
      I4 => eol_late_i3_out,
      I5 => active_cols_2(1),
      O => \col_cnt[1]_i_2_n_0\
    );
\col_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C8EFFFF8C8E8CAE"
    )
        port map (
      I0 => \col_cnt[2]_i_2_n_0\,
      I1 => \col_cnt[2]_i_3_n_0\,
      I2 => sof_expected,
      I3 => \^intc_if\(7),
      I4 => fifo_rd_d,
      I5 => \^intc_if\(6),
      O => \col_cnt[2]_i_1_n_0\
    );
\col_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8B8B8B888888"
    )
        port map (
      I0 => active_cols_2(2),
      I1 => eol_late_i3_out,
      I2 => geqOp,
      I3 => \col_cnt_reg_n_0_[1]\,
      I4 => \col_cnt_reg_n_0_[0]\,
      I5 => \col_cnt_reg_n_0_[2]\,
      O => \col_cnt[2]_i_2_n_0\
    );
\col_cnt[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^in_fifo_reset\,
      I1 => t_qb(1),
      O => \col_cnt[2]_i_3_n_0\
    );
\col_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA020002"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => \col_cnt[3]_i_2_n_0\,
      I2 => geqOp,
      I3 => eol_late_i3_out,
      I4 => active_cols_2(3),
      O => \col_cnt[3]_i_1_n_0\
    );
\col_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \col_cnt_reg_n_0_[0]\,
      O => \col_cnt[3]_i_2_n_0\
    );
\col_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA008200000082"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => \col_cnt_reg_n_0_[4]\,
      I2 => \col_cnt[4]_i_2_n_0\,
      I3 => geqOp,
      I4 => eol_late_i3_out,
      I5 => active_cols_2(4),
      O => \col_cnt[4]_i_1_n_0\
    );
\col_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \col_cnt_reg_n_0_[1]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      I3 => \col_cnt_reg_n_0_[3]\,
      O => \col_cnt[4]_i_2_n_0\
    );
\col_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA008200000082"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => \col_cnt_reg_n_0_[5]\,
      I2 => \col_cnt[5]_i_2_n_0\,
      I3 => geqOp,
      I4 => eol_late_i3_out,
      I5 => active_cols_2(5),
      O => \col_cnt[5]_i_1_n_0\
    );
\col_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \col_cnt_reg_n_0_[0]\,
      I4 => \col_cnt_reg_n_0_[4]\,
      O => \col_cnt[5]_i_2_n_0\
    );
\col_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA008200000082"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => \col_cnt[6]_i_2_n_0\,
      I3 => geqOp,
      I4 => eol_late_i3_out,
      I5 => active_cols_2(6),
      O => \col_cnt[6]_i_1_n_0\
    );
\col_cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[3]\,
      I5 => \col_cnt_reg_n_0_[5]\,
      O => \col_cnt[6]_i_2_n_0\
    );
\col_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA008200000082"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => \col_cnt_reg_n_0_[7]\,
      I2 => \col_cnt[7]_i_2_n_0\,
      I3 => geqOp,
      I4 => eol_late_i3_out,
      I5 => active_cols_2(7),
      O => \col_cnt[7]_i_1_n_0\
    );
\col_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[5]\,
      I1 => \col_cnt[7]_i_3_n_0\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \col_cnt_reg_n_0_[0]\,
      I4 => \col_cnt_reg_n_0_[4]\,
      I5 => \col_cnt_reg_n_0_[6]\,
      O => \col_cnt[7]_i_2_n_0\
    );
\col_cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[2]\,
      O => \col_cnt[7]_i_3_n_0\
    );
\col_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA008200000082"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => \col_cnt_reg_n_0_[8]\,
      I2 => \col_cnt[8]_i_2_n_0\,
      I3 => geqOp,
      I4 => eol_late_i3_out,
      I5 => active_cols_2(8),
      O => \col_cnt[8]_i_1_n_0\
    );
\col_cnt[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \col_cnt[6]_i_2_n_0\,
      I2 => \col_cnt_reg_n_0_[7]\,
      O => \col_cnt[8]_i_2_n_0\
    );
\col_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA008200000082"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => \col_cnt_reg_n_0_[9]\,
      I2 => \col_cnt[9]_i_2_n_0\,
      I3 => geqOp,
      I4 => eol_late_i3_out,
      I5 => active_cols_2(9),
      O => \col_cnt[9]_i_1_n_0\
    );
\col_cnt[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[7]\,
      I1 => \col_cnt[6]_i_2_n_0\,
      I2 => \col_cnt_reg_n_0_[6]\,
      I3 => \col_cnt_reg_n_0_[8]\,
      O => \col_cnt[9]_i_2_n_0\
    );
\col_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[0]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[0]\,
      S => SR(0)
    );
\col_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[10]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[10]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[11]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[11]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[12]_i_3_n_0\,
      Q => \col_cnt_reg_n_0_[12]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \col_cnt[1]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[1]\,
      R => '0'
    );
\col_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[2]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[2]\,
      R => SR(0)
    );
\col_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[3]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[3]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[4]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[4]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[5]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[5]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[6]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[6]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[7]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[7]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[8]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[8]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => col_cnt,
      D => \col_cnt[9]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[9]\,
      R => \col_cnt[12]_i_1_n_0\
    );
core_en_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => gtOp,
      Q => core_en_i,
      R => active_delay_i
    );
eof_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA30AAAAAAAA"
    )
        port map (
      I0 => \^intc_if\(0),
      I1 => eof_i_i_2_n_0,
      I2 => eqOp1_out,
      I3 => eof_i_reg_0,
      I4 => line_cnt_tc_i_3_n_0,
      I5 => resetn_out,
      O => eof_i_i_1_n_0
    );
eof_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => eof_i_i_3_n_0,
      I1 => eof_i_i_4_n_0,
      I2 => eof_i_i_5_n_0,
      I3 => eof_i_i_6_n_0,
      I4 => eof_i_i_7_n_0,
      I5 => eof_i_i_8_n_0,
      O => eof_i_i_2_n_0
    );
eof_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_rows(3),
      I1 => row_cnt_reg(3),
      I2 => total_rows(2),
      I3 => row_cnt_reg(2),
      O => eof_i_i_3_n_0
    );
eof_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_rows(7),
      I1 => row_cnt_reg(7),
      I2 => total_rows(6),
      I3 => row_cnt_reg(6),
      O => eof_i_i_4_n_0
    );
eof_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_rows(9),
      I1 => row_cnt_reg(9),
      I2 => total_rows(8),
      I3 => row_cnt_reg(8),
      O => eof_i_i_5_n_0
    );
eof_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_rows(5),
      I1 => row_cnt_reg(5),
      I2 => total_rows(4),
      I3 => row_cnt_reg(4),
      O => eof_i_i_6_n_0
    );
eof_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_rows(11),
      I1 => row_cnt_reg(11),
      I2 => total_rows(10),
      I3 => row_cnt_reg(10),
      O => eof_i_i_7_n_0
    );
eof_i_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => total_rows(12),
      I1 => row_cnt_reg(12),
      I2 => row_cnt_reg(0),
      I3 => total_rows(0),
      I4 => row_cnt_reg(1),
      I5 => total_rows(1),
      O => eof_i_i_8_n_0
    );
eof_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => eof_i_i_1_n_0,
      Q => \^intc_if\(0),
      R => '0'
    );
eol_early_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4F004000000000"
    )
        port map (
      I0 => eol_expected_d,
      I1 => eol_early_i0,
      I2 => fifo_rd_d,
      I3 => eof_i_reg_0,
      I4 => \^intc_if\(4),
      I5 => resetn_out,
      O => eol_early_i_i_1_n_0
    );
eol_early_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8989898900008900"
    )
        port map (
      I0 => \col_cnt[2]_i_3_n_0\,
      I1 => sof_expected,
      I2 => \^intc_if\(7),
      I3 => eol_late_i_reg_0,
      I4 => \^intc_if\(5),
      I5 => \^intc_if\(4),
      O => eol_early_i0
    );
eol_early_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => eol_early_i_i_1_n_0,
      Q => \^intc_if\(4),
      R => '0'
    );
eol_expected_d_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => eol_expected,
      I1 => fifo_rd_i,
      I2 => aclken,
      I3 => \genr_control_regs[0]\(0),
      I4 => eol_expected_d,
      O => eol_expected_d_i_1_n_0
    );
eol_expected_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => eol_expected_d_i_1_n_0,
      Q => eol_expected_d,
      R => SR(0)
    );
eol_expected_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => eol_expected_i_2_n_0,
      I1 => eol_expected_i_3_n_0,
      I2 => eol_expected_i_4_n_0,
      I3 => eol_expected_i_5_n_0,
      I4 => eol_expected_i_6_n_0,
      I5 => eol_expected_i_7_n_0,
      O => eol_expected0
    );
eol_expected_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => \time_control_regs[0]\(10),
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => \time_control_regs[0]\(11),
      O => eol_expected_i_2_n_0
    );
eol_expected_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \time_control_regs[0]\(0),
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \time_control_regs[0]\(1),
      O => eol_expected_i_3_n_0
    );
eol_expected_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \time_control_regs[0]\(2),
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \time_control_regs[0]\(3),
      O => eol_expected_i_4_n_0
    );
eol_expected_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \time_control_regs[0]\(8),
      I2 => \col_cnt_reg_n_0_[9]\,
      I3 => \time_control_regs[0]\(9),
      O => eol_expected_i_5_n_0
    );
eol_expected_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \time_control_regs[0]\(4),
      I2 => \col_cnt_reg_n_0_[5]\,
      I3 => \time_control_regs[0]\(5),
      O => eol_expected_i_6_n_0
    );
eol_expected_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F666FFFF"
    )
        port map (
      I0 => \time_control_regs[0]\(12),
      I1 => \col_cnt_reg_n_0_[12]\,
      I2 => \^in_fifo_reset\,
      I3 => t_qb(1),
      I4 => eol_expected_i_8_n_0,
      O => eol_expected_i_7_n_0
    );
eol_expected_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \time_control_regs[0]\(6),
      I2 => \col_cnt_reg_n_0_[7]\,
      I3 => \time_control_regs[0]\(7),
      O => eol_expected_i_8_n_0
    );
eol_expected_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => eol_expected0,
      Q => eol_expected,
      R => SR(0)
    );
eol_late_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0555455500004000"
    )
        port map (
      I0 => eol_late_i_reg_0,
      I1 => eol_late_i_i_3_n_0,
      I2 => eol_expected_d,
      I3 => fifo_rd_d,
      I4 => \^intc_if\(4),
      I5 => \^intc_if\(5),
      O => eol_late_i3_out
    );
eol_late_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C111"
    )
        port map (
      I0 => \^intc_if\(7),
      I1 => sof_expected,
      I2 => \^in_fifo_reset\,
      I3 => t_qb(1),
      O => eol_late_i_i_3_n_0
    );
eol_late_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => eol_late_i3_out,
      Q => \^intc_if\(5),
      R => SR(0)
    );
fifo_rd_d_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => fifo_rd_i,
      I1 => resetn_out,
      I2 => aclken,
      I3 => \genr_control_regs[0]\(0),
      I4 => fifo_rd_d,
      O => fifo_rd_d_i_1_n_0
    );
fifo_rd_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => fifo_rd_d_i_1_n_0,
      Q => fifo_rd_d,
      R => '0'
    );
fifo_rd_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
        port map (
      I0 => resetn_out,
      I1 => line_cnt_tc_i_3_n_0,
      I2 => \genr_control_regs[0]\(0),
      I3 => aclken,
      O => active_delay_i
    );
fifo_rd_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFECECEC"
    )
        port map (
      I0 => sof_expected,
      I1 => \^intc_if\(7),
      I2 => fifo_rd_d,
      I3 => leqOp20_in,
      I4 => leqOp16_in,
      I5 => \col_cnt[2]_i_3_n_0\,
      O => fifo_rd_i0
    );
fifo_rd_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => fifo_rd_i0,
      Q => fifo_rd_i,
      R => active_delay_i
    );
fifo_wr_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gtOp18_in,
      I1 => gtOp19_in,
      O => fifo_wr_i0
    );
fifo_wr_i_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[7]\,
      I1 => \col_cnt_reg_n_0_[6]\,
      O => fifo_wr_i_i_10_n_0
    );
fifo_wr_i_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[5]\,
      I1 => \col_cnt_reg_n_0_[4]\,
      O => fifo_wr_i_i_11_n_0
    );
fifo_wr_i_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[2]\,
      O => fifo_wr_i_i_12_n_0
    );
fifo_wr_i_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \col_cnt_reg_n_0_[1]\,
      O => fifo_wr_i_i_13_n_0
    );
fifo_wr_i_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => \col_cnt_reg_n_0_[11]\,
      O => fifo_wr_i_i_3_n_0
    );
fifo_wr_i_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \col_cnt_reg_n_0_[9]\,
      O => fifo_wr_i_i_4_n_0
    );
fifo_wr_i_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \col_cnt_reg_n_0_[7]\,
      O => fifo_wr_i_i_5_n_0
    );
fifo_wr_i_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \col_cnt_reg_n_0_[5]\,
      O => fifo_wr_i_i_6_n_0
    );
fifo_wr_i_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      O => fifo_wr_i_i_7_n_0
    );
fifo_wr_i_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[11]\,
      I1 => \col_cnt_reg_n_0_[10]\,
      O => fifo_wr_i_i_8_n_0
    );
fifo_wr_i_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[9]\,
      I1 => \col_cnt_reg_n_0_[8]\,
      O => fifo_wr_i_i_9_n_0
    );
fifo_wr_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => fifo_wr_i0,
      Q => \^fifo_wr_i\,
      R => active_delay_i
    );
fifo_wr_i_reg_i_2: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => NLW_fifo_wr_i_reg_i_2_CO_UNCONNECTED(7),
      CO(6) => gtOp19_in,
      CO(5) => fifo_wr_i_reg_i_2_n_2,
      CO(4) => fifo_wr_i_reg_i_2_n_3,
      CO(3) => fifo_wr_i_reg_i_2_n_4,
      CO(2) => fifo_wr_i_reg_i_2_n_5,
      CO(1) => fifo_wr_i_reg_i_2_n_6,
      CO(0) => fifo_wr_i_reg_i_2_n_7,
      DI(7) => '0',
      DI(6) => \col_cnt_reg_n_0_[12]\,
      DI(5) => fifo_wr_i_i_3_n_0,
      DI(4) => fifo_wr_i_i_4_n_0,
      DI(3) => fifo_wr_i_i_5_n_0,
      DI(2) => fifo_wr_i_i_6_n_0,
      DI(1) => '0',
      DI(0) => \col_cnt_reg_n_0_[1]\,
      O(7 downto 0) => NLW_fifo_wr_i_reg_i_2_O_UNCONNECTED(7 downto 0),
      S(7) => '0',
      S(6) => fifo_wr_i_i_7_n_0,
      S(5) => fifo_wr_i_i_8_n_0,
      S(4) => fifo_wr_i_i_9_n_0,
      S(3) => fifo_wr_i_i_10_n_0,
      S(2) => fifo_wr_i_i_11_n_0,
      S(1) => fifo_wr_i_i_12_n_0,
      S(0) => fifo_wr_i_i_13_n_0
    );
geqOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => NLW_geqOp_carry_CO_UNCONNECTED(7),
      CO(6) => geqOp,
      CO(5) => geqOp_carry_n_2,
      CO(4) => geqOp_carry_n_3,
      CO(3) => geqOp_carry_n_4,
      CO(2) => geqOp_carry_n_5,
      CO(1) => geqOp_carry_n_6,
      CO(0) => geqOp_carry_n_7,
      DI(7) => '0',
      DI(6) => geqOp_carry_i_1_n_0,
      DI(5) => geqOp_carry_i_2_n_0,
      DI(4) => geqOp_carry_i_3_n_0,
      DI(3) => geqOp_carry_i_4_n_0,
      DI(2) => geqOp_carry_i_5_n_0,
      DI(1) => geqOp_carry_i_6_n_0,
      DI(0) => geqOp_carry_i_7_n_0,
      O(7 downto 0) => NLW_geqOp_carry_O_UNCONNECTED(7 downto 0),
      S(7) => '0',
      S(6) => geqOp_carry_i_8_n_0,
      S(5) => geqOp_carry_i_9_n_0,
      S(4) => geqOp_carry_i_10_n_0,
      S(3) => geqOp_carry_i_11_n_0,
      S(2) => geqOp_carry_i_12_n_0,
      S(1) => geqOp_carry_i_13_n_0,
      S(0) => geqOp_carry_i_14_n_0
    );
geqOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      I1 => total_cols(12),
      O => geqOp_carry_i_1_n_0
    );
geqOp_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(8),
      I1 => \col_cnt_reg_n_0_[8]\,
      I2 => total_cols(9),
      I3 => \col_cnt_reg_n_0_[9]\,
      O => geqOp_carry_i_10_n_0
    );
geqOp_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(6),
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => total_cols(7),
      I3 => \col_cnt_reg_n_0_[7]\,
      O => geqOp_carry_i_11_n_0
    );
geqOp_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(4),
      I1 => \col_cnt_reg_n_0_[4]\,
      I2 => total_cols(5),
      I3 => \col_cnt_reg_n_0_[5]\,
      O => geqOp_carry_i_12_n_0
    );
geqOp_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(2),
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => total_cols(3),
      I3 => \col_cnt_reg_n_0_[3]\,
      O => geqOp_carry_i_13_n_0
    );
geqOp_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => total_cols(1),
      I3 => \col_cnt_reg_n_0_[1]\,
      O => geqOp_carry_i_14_n_0
    );
geqOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => total_cols(10),
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => total_cols(11),
      O => geqOp_carry_i_2_n_0
    );
geqOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => total_cols(8),
      I2 => \col_cnt_reg_n_0_[9]\,
      I3 => total_cols(9),
      O => geqOp_carry_i_3_n_0
    );
geqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => total_cols(6),
      I2 => \col_cnt_reg_n_0_[7]\,
      I3 => total_cols(7),
      O => geqOp_carry_i_4_n_0
    );
geqOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => total_cols(4),
      I2 => \col_cnt_reg_n_0_[5]\,
      I3 => total_cols(5),
      O => geqOp_carry_i_5_n_0
    );
geqOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => total_cols(2),
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => total_cols(3),
      O => geqOp_carry_i_6_n_0
    );
geqOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => total_cols(0),
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => total_cols(1),
      O => geqOp_carry_i_7_n_0
    );
geqOp_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => total_cols(12),
      I1 => \col_cnt_reg_n_0_[12]\,
      O => geqOp_carry_i_8_n_0
    );
geqOp_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(10),
      I1 => \col_cnt_reg_n_0_[10]\,
      I2 => total_cols(11),
      I3 => \col_cnt_reg_n_0_[11]\,
      O => geqOp_carry_i_9_n_0
    );
gtOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => NLW_gtOp_carry_CO_UNCONNECTED(7),
      CO(6) => gtOp22_in,
      CO(5) => gtOp_carry_n_2,
      CO(4) => gtOp_carry_n_3,
      CO(3) => gtOp_carry_n_4,
      CO(2) => gtOp_carry_n_5,
      CO(1) => gtOp_carry_n_6,
      CO(0) => gtOp_carry_n_7,
      DI(7) => '0',
      DI(6) => gtOp_carry_i_1_n_0,
      DI(5) => gtOp_carry_i_2_n_0,
      DI(4) => gtOp_carry_i_3_n_0,
      DI(3) => gtOp_carry_i_4_n_0,
      DI(2) => gtOp_carry_i_5_n_0,
      DI(1) => gtOp_carry_i_6_n_0,
      DI(0) => gtOp_carry_i_7_n_0,
      O(7 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(7 downto 0),
      S(7) => '0',
      S(6) => gtOp_carry_i_8_n_0,
      S(5) => gtOp_carry_i_9_n_0,
      S(4) => gtOp_carry_i_10_n_0,
      S(3) => gtOp_carry_i_11_n_0,
      S(2) => gtOp_carry_i_12_n_0,
      S(1) => gtOp_carry_i_13_n_0,
      S(0) => gtOp_carry_i_14_n_0
    );
gtOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      I1 => \time_control_regs[0]\(12),
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \time_control_regs[0]\(8),
      I2 => \col_cnt_reg_n_0_[9]\,
      I3 => \time_control_regs[0]\(9),
      O => gtOp_carry_i_10_n_0
    );
gtOp_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \time_control_regs[0]\(6),
      I2 => \col_cnt_reg_n_0_[7]\,
      I3 => \time_control_regs[0]\(7),
      O => gtOp_carry_i_11_n_0
    );
gtOp_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \time_control_regs[0]\(4),
      I2 => \col_cnt_reg_n_0_[5]\,
      I3 => \time_control_regs[0]\(5),
      O => gtOp_carry_i_12_n_0
    );
gtOp_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \time_control_regs[0]\(2),
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \time_control_regs[0]\(3),
      O => gtOp_carry_i_13_n_0
    );
gtOp_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \time_control_regs[0]\(0),
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \time_control_regs[0]\(1),
      O => gtOp_carry_i_14_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => \time_control_regs[0]\(10),
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => \time_control_regs[0]\(11),
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \time_control_regs[0]\(8),
      I2 => \col_cnt_reg_n_0_[9]\,
      I3 => \time_control_regs[0]\(9),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \time_control_regs[0]\(6),
      I2 => \col_cnt_reg_n_0_[7]\,
      I3 => \time_control_regs[0]\(7),
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \time_control_regs[0]\(4),
      I2 => \col_cnt_reg_n_0_[5]\,
      I3 => \time_control_regs[0]\(5),
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \time_control_regs[0]\(2),
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \time_control_regs[0]\(3),
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \time_control_regs[0]\(0),
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \time_control_regs[0]\(1),
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \time_control_regs[0]\(12),
      I1 => \col_cnt_reg_n_0_[12]\,
      O => gtOp_carry_i_8_n_0
    );
gtOp_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => \time_control_regs[0]\(10),
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => \time_control_regs[0]\(11),
      O => gtOp_carry_i_9_n_0
    );
\gtOp_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \NLW_gtOp_inferred__0/i__carry_CO_UNCONNECTED\(7),
      CO(6) => gtOp21_in,
      CO(5) => \gtOp_inferred__0/i__carry_n_2\,
      CO(4) => \gtOp_inferred__0/i__carry_n_3\,
      CO(3) => \gtOp_inferred__0/i__carry_n_4\,
      CO(2) => \gtOp_inferred__0/i__carry_n_5\,
      CO(1) => \gtOp_inferred__0/i__carry_n_6\,
      CO(0) => \gtOp_inferred__0/i__carry_n_7\,
      DI(7) => '0',
      DI(6) => \i__carry_i_1__2_n_0\,
      DI(5) => \i__carry_i_2__3_n_0\,
      DI(4) => \i__carry_i_3__3_n_0\,
      DI(3) => \i__carry_i_4__3_n_0\,
      DI(2) => \i__carry_i_5__3_n_0\,
      DI(1) => \i__carry_i_6__3_n_0\,
      DI(0) => \i__carry_i_7__2_n_0\,
      O(7 downto 0) => \NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => '0',
      S(6) => \i__carry_i_8__2_n_0\,
      S(5) => \i__carry_i_9__2_n_0\,
      S(4) => \i__carry_i_10__3_n_0\,
      S(3) => \i__carry_i_11__2_n_0\,
      S(2) => \i__carry_i_12__3_n_0\,
      S(1) => \i__carry_i_13__2_n_0\,
      S(0) => \i__carry_i_14__1_n_0\
    );
\gtOp_inferred__2/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \NLW_gtOp_inferred__2/i__carry_CO_UNCONNECTED\(7),
      CO(6) => gtOp18_in,
      CO(5) => \gtOp_inferred__2/i__carry_n_2\,
      CO(4) => \gtOp_inferred__2/i__carry_n_3\,
      CO(3) => \gtOp_inferred__2/i__carry_n_4\,
      CO(2) => \gtOp_inferred__2/i__carry_n_5\,
      CO(1) => \gtOp_inferred__2/i__carry_n_6\,
      CO(0) => \gtOp_inferred__2/i__carry_n_7\,
      DI(7) => '0',
      DI(6) => row_cnt_reg(12),
      DI(5) => \i__carry_i_1_n_0\,
      DI(4) => \i__carry_i_2__0_n_0\,
      DI(3) => \i__carry_i_3__0_n_0\,
      DI(2) => \i__carry_i_4__0_n_0\,
      DI(1) => \i__carry_i_5__0_n_0\,
      DI(0) => \i__carry_i_6__0_n_0\,
      O(7 downto 0) => \NLW_gtOp_inferred__2/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => '0',
      S(6) => \i__carry_i_7__0_n_0\,
      S(5) => \i__carry_i_8_n_0\,
      S(4) => \i__carry_i_9__3_n_0\,
      S(3) => \i__carry_i_10_n_0\,
      S(2) => \i__carry_i_11__3_n_0\,
      S(1) => \i__carry_i_12_n_0\,
      S(0) => \i__carry_i_13_n_0\
    );
\gtOp_inferred__3/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \NLW_gtOp_inferred__3/i__carry_CO_UNCONNECTED\(7),
      CO(6) => gtOp,
      CO(5) => \gtOp_inferred__3/i__carry_n_2\,
      CO(4) => \gtOp_inferred__3/i__carry_n_3\,
      CO(3) => \gtOp_inferred__3/i__carry_n_4\,
      CO(2) => \gtOp_inferred__3/i__carry_n_5\,
      CO(1) => \gtOp_inferred__3/i__carry_n_6\,
      CO(0) => \gtOp_inferred__3/i__carry_n_7\,
      DI(7) => '0',
      DI(6) => \col_cnt_reg_n_0_[12]\,
      DI(5) => \i__carry_i_1__0_n_0\,
      DI(4) => \i__carry_i_2__1_n_0\,
      DI(3) => \i__carry_i_3__1_n_0\,
      DI(2) => \i__carry_i_4__1_n_0\,
      DI(1) => \i__carry_i_5__1_n_0\,
      DI(0) => \col_cnt_reg_n_0_[1]\,
      O(7 downto 0) => \NLW_gtOp_inferred__3/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => '0',
      S(6) => \i__carry_i_6__1_n_0\,
      S(5) => \i__carry_i_7__4_n_0\,
      S(4) => \i__carry_i_8__0_n_0\,
      S(3) => \i__carry_i_9__0_n_0\,
      S(2) => \i__carry_i_10__0_n_0\,
      S(1) => \i__carry_i_11_n_0\,
      S(0) => \i__carry_i_12__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(11),
      I1 => row_cnt_reg(10),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(6),
      I1 => row_cnt_reg(7),
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_10__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[5]\,
      I1 => \col_cnt_reg_n_0_[4]\,
      O => \i__carry_i_10__0_n_0\
    );
\i__carry_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(21),
      I1 => row_cnt_reg(8),
      I2 => \time_control_regs[0]\(22),
      I3 => row_cnt_reg(9),
      O => \i__carry_i_10__1_n_0\
    );
\i__carry_i_10__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(8),
      I1 => \col_cnt_reg_n_0_[8]\,
      I2 => total_cols(9),
      I3 => \col_cnt_reg_n_0_[9]\,
      O => \i__carry_i_10__2_n_0\
    );
\i__carry_i_10__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(21),
      I1 => row_cnt_reg(8),
      I2 => \time_control_regs[0]\(22),
      I3 => row_cnt_reg(9),
      O => \i__carry_i_10__3_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[2]\,
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(19),
      I1 => row_cnt_reg(6),
      I2 => \time_control_regs[0]\(20),
      I3 => row_cnt_reg(7),
      O => \i__carry_i_11__0_n_0\
    );
\i__carry_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(6),
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => total_cols(7),
      I3 => \col_cnt_reg_n_0_[7]\,
      O => \i__carry_i_11__1_n_0\
    );
\i__carry_i_11__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(19),
      I1 => row_cnt_reg(6),
      I2 => \time_control_regs[0]\(20),
      I3 => row_cnt_reg(7),
      O => \i__carry_i_11__2_n_0\
    );
\i__carry_i_11__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(4),
      I1 => row_cnt_reg(5),
      O => \i__carry_i_11__3_n_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(2),
      I1 => row_cnt_reg(3),
      O => \i__carry_i_12_n_0\
    );
\i__carry_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \col_cnt_reg_n_0_[1]\,
      O => \i__carry_i_12__0_n_0\
    );
\i__carry_i_12__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(17),
      I1 => row_cnt_reg(4),
      I2 => \time_control_regs[0]\(18),
      I3 => row_cnt_reg(5),
      O => \i__carry_i_12__1_n_0\
    );
\i__carry_i_12__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(4),
      I1 => \col_cnt_reg_n_0_[4]\,
      I2 => total_cols(5),
      I3 => \col_cnt_reg_n_0_[5]\,
      O => \i__carry_i_12__2_n_0\
    );
\i__carry_i_12__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(17),
      I1 => row_cnt_reg(4),
      I2 => \time_control_regs[0]\(18),
      I3 => row_cnt_reg(5),
      O => \i__carry_i_12__3_n_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(0),
      I1 => row_cnt_reg(1),
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(15),
      I1 => row_cnt_reg(2),
      I2 => \time_control_regs[0]\(16),
      I3 => row_cnt_reg(3),
      O => \i__carry_i_13__0_n_0\
    );
\i__carry_i_13__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(2),
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => total_cols(3),
      I3 => \col_cnt_reg_n_0_[3]\,
      O => \i__carry_i_13__1_n_0\
    );
\i__carry_i_13__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(15),
      I1 => row_cnt_reg(2),
      I2 => \time_control_regs[0]\(16),
      I3 => row_cnt_reg(3),
      O => \i__carry_i_13__2_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(13),
      I1 => row_cnt_reg(0),
      I2 => \time_control_regs[0]\(14),
      I3 => row_cnt_reg(1),
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => total_cols(1),
      I3 => \col_cnt_reg_n_0_[1]\,
      O => \i__carry_i_14__0_n_0\
    );
\i__carry_i_14__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(13),
      I1 => row_cnt_reg(0),
      I2 => \time_control_regs[0]\(14),
      I3 => row_cnt_reg(1),
      O => \i__carry_i_14__1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => \col_cnt_reg_n_0_[11]\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => total_cols(12),
      I1 => \col_cnt_reg_n_0_[12]\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(12),
      I1 => \time_control_regs[0]\(25),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \col_cnt_reg_n_0_[3]\,
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(25),
      I1 => row_cnt_reg(12),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => total_cols(10),
      I1 => \col_cnt_reg_n_0_[10]\,
      I2 => total_cols(11),
      I3 => \col_cnt_reg_n_0_[11]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(9),
      I1 => row_cnt_reg(8),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \col_cnt_reg_n_0_[9]\,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(23),
      I1 => row_cnt_reg(10),
      I2 => \time_control_regs[0]\(24),
      I3 => row_cnt_reg(11),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => row_cnt_reg(10),
      I1 => \time_control_regs[0]\(23),
      I2 => row_cnt_reg(11),
      I3 => \time_control_regs[0]\(24),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => total_cols(8),
      I1 => \col_cnt_reg_n_0_[8]\,
      I2 => total_cols(9),
      I3 => \col_cnt_reg_n_0_[9]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(7),
      I1 => row_cnt_reg(6),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \col_cnt_reg_n_0_[7]\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(21),
      I1 => row_cnt_reg(8),
      I2 => \time_control_regs[0]\(22),
      I3 => row_cnt_reg(9),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => row_cnt_reg(8),
      I1 => \time_control_regs[0]\(21),
      I2 => row_cnt_reg(9),
      I3 => \time_control_regs[0]\(22),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[11]\,
      I1 => \col_cnt_reg_n_0_[10]\,
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => total_cols(6),
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => total_cols(7),
      I3 => \col_cnt_reg_n_0_[7]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(5),
      I1 => row_cnt_reg(4),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \col_cnt_reg_n_0_[5]\,
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(19),
      I1 => row_cnt_reg(6),
      I2 => \time_control_regs[0]\(20),
      I3 => row_cnt_reg(7),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => row_cnt_reg(6),
      I1 => \time_control_regs[0]\(19),
      I2 => row_cnt_reg(7),
      I3 => \time_control_regs[0]\(20),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[9]\,
      I1 => \col_cnt_reg_n_0_[8]\,
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => total_cols(4),
      I1 => \col_cnt_reg_n_0_[4]\,
      I2 => total_cols(5),
      I3 => \col_cnt_reg_n_0_[5]\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(3),
      I1 => row_cnt_reg(2),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \col_cnt_reg_n_0_[3]\,
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(17),
      I1 => row_cnt_reg(4),
      I2 => \time_control_regs[0]\(18),
      I3 => row_cnt_reg(5),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_5__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => row_cnt_reg(4),
      I1 => \time_control_regs[0]\(17),
      I2 => row_cnt_reg(5),
      I3 => \time_control_regs[0]\(18),
      O => \i__carry_i_5__3_n_0\
    );
\i__carry_i_5__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[7]\,
      I1 => \col_cnt_reg_n_0_[6]\,
      O => \i__carry_i_5__4_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => total_cols(2),
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => total_cols(3),
      I3 => \col_cnt_reg_n_0_[3]\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(1),
      I1 => row_cnt_reg(0),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(15),
      I1 => row_cnt_reg(2),
      I2 => \time_control_regs[0]\(16),
      I3 => row_cnt_reg(3),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_6__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => row_cnt_reg(2),
      I1 => \time_control_regs[0]\(15),
      I2 => row_cnt_reg(3),
      I3 => \time_control_regs[0]\(16),
      O => \i__carry_i_6__3_n_0\
    );
\i__carry_i_6__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[5]\,
      I1 => \col_cnt_reg_n_0_[4]\,
      O => \i__carry_i_6__4_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => total_cols(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => total_cols(1),
      I3 => \col_cnt_reg_n_0_[1]\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(12),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(13),
      I1 => row_cnt_reg(0),
      I2 => \time_control_regs[0]\(14),
      I3 => row_cnt_reg(1),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => row_cnt_reg(0),
      I1 => \time_control_regs[0]\(13),
      I2 => row_cnt_reg(1),
      I3 => \time_control_regs[0]\(14),
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_7__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[2]\,
      O => \i__carry_i_7__3_n_0\
    );
\i__carry_i_7__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[11]\,
      I1 => \col_cnt_reg_n_0_[10]\,
      O => \i__carry_i_7__4_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(10),
      I1 => row_cnt_reg(11),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[9]\,
      I1 => \col_cnt_reg_n_0_[8]\,
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      I1 => total_cols(12),
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \time_control_regs[0]\(25),
      I1 => row_cnt_reg(12),
      O => \i__carry_i_8__2_n_0\
    );
\i__carry_i_8__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => row_cnt_reg(12),
      I1 => \time_control_regs[0]\(25),
      O => \i__carry_i_8__3_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(10),
      I1 => \col_cnt_reg_n_0_[10]\,
      I2 => total_cols(11),
      I3 => \col_cnt_reg_n_0_[11]\,
      O => \i__carry_i_9_n_0\
    );
\i__carry_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[7]\,
      I1 => \col_cnt_reg_n_0_[6]\,
      O => \i__carry_i_9__0_n_0\
    );
\i__carry_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(23),
      I1 => row_cnt_reg(10),
      I2 => \time_control_regs[0]\(24),
      I3 => row_cnt_reg(11),
      O => \i__carry_i_9__1_n_0\
    );
\i__carry_i_9__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(23),
      I1 => row_cnt_reg(10),
      I2 => \time_control_regs[0]\(24),
      I3 => row_cnt_reg(11),
      O => \i__carry_i_9__2_n_0\
    );
\i__carry_i_9__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(8),
      I1 => row_cnt_reg(9),
      O => \i__carry_i_9__3_n_0\
    );
in_fifo_reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^in_fifo_reset\,
      I1 => \^fifo_rd_i_reg_0\,
      O => in_fifo_reset0
    );
in_fifo_reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFF555D"
    )
        port map (
      I0 => fifo_rd_i,
      I1 => eol_late_i_reg_0,
      I2 => \genr_control_regs[0]\(1),
      I3 => eol_expected_d,
      I4 => eof_i_reg_0,
      I5 => in_fifo_reset_i_3_n_0,
      O => \^fifo_rd_i_reg_0\
    );
in_fifo_reset_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => \^intc_if\(7),
      I1 => t_qb(0),
      I2 => \^in_fifo_reset\,
      I3 => eol_expected_d,
      I4 => \^intc_if\(5),
      O => in_fifo_reset_i_3_n_0
    );
in_fifo_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => in_fifo_reset0,
      Q => \^in_fifo_reset\,
      R => SR(0)
    );
\intc_if[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => core_en_i,
      I1 => \genr_control_regs[0]\(0),
      I2 => aclken,
      I3 => \^intc_if\(5),
      O => E(0)
    );
\intc_if[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^intc_if\(7),
      I1 => \^intc_if\(5),
      I2 => \^intc_if\(4),
      I3 => \^intc_if\(6),
      O => \^intc_if\(3)
    );
leqOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => NLW_leqOp_carry_CO_UNCONNECTED(7),
      CO(6) => leqOp20_in,
      CO(5) => leqOp_carry_n_2,
      CO(4) => leqOp_carry_n_3,
      CO(3) => leqOp_carry_n_4,
      CO(2) => leqOp_carry_n_5,
      CO(1) => leqOp_carry_n_6,
      CO(0) => leqOp_carry_n_7,
      DI(7) => '0',
      DI(6) => leqOp_carry_i_1_n_0,
      DI(5) => leqOp_carry_i_2_n_0,
      DI(4) => leqOp_carry_i_3_n_0,
      DI(3) => leqOp_carry_i_4_n_0,
      DI(2) => leqOp_carry_i_5_n_0,
      DI(1) => leqOp_carry_i_6_n_0,
      DI(0) => leqOp_carry_i_7_n_0,
      O(7 downto 0) => NLW_leqOp_carry_O_UNCONNECTED(7 downto 0),
      S(7) => '0',
      S(6) => leqOp_carry_i_8_n_0,
      S(5) => leqOp_carry_i_9_n_0,
      S(4) => leqOp_carry_i_10_n_0,
      S(3) => leqOp_carry_i_11_n_0,
      S(2) => leqOp_carry_i_12_n_0,
      S(1) => leqOp_carry_i_13_n_0,
      S(0) => leqOp_carry_i_14_n_0
    );
leqOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(12),
      I1 => \col_cnt_reg_n_0_[12]\,
      O => leqOp_carry_i_1_n_0
    );
leqOp_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \time_control_regs[0]\(8),
      I2 => \col_cnt_reg_n_0_[9]\,
      I3 => \time_control_regs[0]\(9),
      O => leqOp_carry_i_10_n_0
    );
leqOp_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \time_control_regs[0]\(6),
      I2 => \col_cnt_reg_n_0_[7]\,
      I3 => \time_control_regs[0]\(7),
      O => leqOp_carry_i_11_n_0
    );
leqOp_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \time_control_regs[0]\(4),
      I2 => \col_cnt_reg_n_0_[5]\,
      I3 => \time_control_regs[0]\(5),
      O => leqOp_carry_i_12_n_0
    );
leqOp_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \time_control_regs[0]\(2),
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \time_control_regs[0]\(3),
      O => leqOp_carry_i_13_n_0
    );
leqOp_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \time_control_regs[0]\(0),
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \time_control_regs[0]\(1),
      O => leqOp_carry_i_14_n_0
    );
leqOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(10),
      I1 => \col_cnt_reg_n_0_[10]\,
      I2 => \time_control_regs[0]\(11),
      I3 => \col_cnt_reg_n_0_[11]\,
      O => leqOp_carry_i_2_n_0
    );
leqOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(8),
      I1 => \col_cnt_reg_n_0_[8]\,
      I2 => \time_control_regs[0]\(9),
      I3 => \col_cnt_reg_n_0_[9]\,
      O => leqOp_carry_i_3_n_0
    );
leqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(6),
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => \time_control_regs[0]\(7),
      I3 => \col_cnt_reg_n_0_[7]\,
      O => leqOp_carry_i_4_n_0
    );
leqOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(4),
      I1 => \col_cnt_reg_n_0_[4]\,
      I2 => \time_control_regs[0]\(5),
      I3 => \col_cnt_reg_n_0_[5]\,
      O => leqOp_carry_i_5_n_0
    );
leqOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(2),
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \time_control_regs[0]\(3),
      I3 => \col_cnt_reg_n_0_[3]\,
      O => leqOp_carry_i_6_n_0
    );
leqOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => \time_control_regs[0]\(1),
      I3 => \col_cnt_reg_n_0_[1]\,
      O => leqOp_carry_i_7_n_0
    );
leqOp_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      I1 => \time_control_regs[0]\(12),
      O => leqOp_carry_i_8_n_0
    );
leqOp_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => \time_control_regs[0]\(10),
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => \time_control_regs[0]\(11),
      O => leqOp_carry_i_9_n_0
    );
\leqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \NLW_leqOp_inferred__0/i__carry_CO_UNCONNECTED\(7),
      CO(6) => leqOp23_in,
      CO(5) => \leqOp_inferred__0/i__carry_n_2\,
      CO(4) => \leqOp_inferred__0/i__carry_n_3\,
      CO(3) => \leqOp_inferred__0/i__carry_n_4\,
      CO(2) => \leqOp_inferred__0/i__carry_n_5\,
      CO(1) => \leqOp_inferred__0/i__carry_n_6\,
      CO(0) => \leqOp_inferred__0/i__carry_n_7\,
      DI(7) => '0',
      DI(6) => \i__carry_i_1__1_n_0\,
      DI(5) => \i__carry_i_2_n_0\,
      DI(4) => \i__carry_i_3_n_0\,
      DI(3) => \i__carry_i_4_n_0\,
      DI(2) => \i__carry_i_5_n_0\,
      DI(1) => \i__carry_i_6_n_0\,
      DI(0) => \i__carry_i_7_n_0\,
      O(7 downto 0) => \NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => '0',
      S(6) => \i__carry_i_8__1_n_0\,
      S(5) => \i__carry_i_9_n_0\,
      S(4) => \i__carry_i_10__2_n_0\,
      S(3) => \i__carry_i_11__1_n_0\,
      S(2) => \i__carry_i_12__2_n_0\,
      S(1) => \i__carry_i_13__1_n_0\,
      S(0) => \i__carry_i_14__0_n_0\
    );
\leqOp_inferred__1/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \NLW_leqOp_inferred__1/i__carry_CO_UNCONNECTED\(7),
      CO(6) => leqOp16_in,
      CO(5) => \leqOp_inferred__1/i__carry_n_2\,
      CO(4) => \leqOp_inferred__1/i__carry_n_3\,
      CO(3) => \leqOp_inferred__1/i__carry_n_4\,
      CO(2) => \leqOp_inferred__1/i__carry_n_5\,
      CO(1) => \leqOp_inferred__1/i__carry_n_6\,
      CO(0) => \leqOp_inferred__1/i__carry_n_7\,
      DI(7) => '0',
      DI(6) => \i__carry_i_1__4_n_0\,
      DI(5) => \i__carry_i_2__2_n_0\,
      DI(4) => \i__carry_i_3__2_n_0\,
      DI(3) => \i__carry_i_4__2_n_0\,
      DI(2) => \i__carry_i_5__2_n_0\,
      DI(1) => \i__carry_i_6__2_n_0\,
      DI(0) => \i__carry_i_7__1_n_0\,
      O(7 downto 0) => \NLW_leqOp_inferred__1/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => '0',
      S(6) => \i__carry_i_8__3_n_0\,
      S(5) => \i__carry_i_9__1_n_0\,
      S(4) => \i__carry_i_10__1_n_0\,
      S(3) => \i__carry_i_11__0_n_0\,
      S(2) => \i__carry_i_12__1_n_0\,
      S(1) => \i__carry_i_13__0_n_0\,
      S(0) => \i__carry_i_14_n_0\
    );
line_cnt_tc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \genr_control_regs[0]\(0),
      I1 => aclken,
      I2 => resetn_out,
      I3 => line_cnt_tc_i_3_n_0,
      O => line_cnt_tc_i_1_n_0
    );
line_cnt_tc_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => line_cnt_tc_i_4_n_0,
      I1 => line_cnt_tc_i_5_n_0,
      I2 => row_cnt_reg(11),
      I3 => row_cnt_reg(10),
      I4 => row_cnt_reg(3),
      O => line_cnt_tc_i_2_n_0
    );
line_cnt_tc_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C4C4F4F5"
    )
        port map (
      I0 => ltOp,
      I1 => \col_cnt_reg[0]_1\,
      I2 => \col_cnt_reg[0]_0\,
      I3 => leqOp20_in,
      I4 => \col_cnt[12]_i_5_n_0\,
      O => line_cnt_tc_i_3_n_0
    );
line_cnt_tc_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => row_cnt_reg(0),
      I1 => row_cnt_reg(12),
      I2 => row_cnt_reg(8),
      I3 => row_cnt_reg(1),
      I4 => row_cnt_reg(2),
      I5 => row_cnt_reg(6),
      O => line_cnt_tc_i_4_n_0
    );
line_cnt_tc_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => row_cnt_reg(5),
      I1 => row_cnt_reg(4),
      I2 => row_cnt_reg(7),
      I3 => row_cnt_reg(9),
      O => line_cnt_tc_i_5_n_0
    );
line_cnt_tc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => line_cnt_tc_i_1_n_0,
      D => line_cnt_tc_i_2_n_0,
      Q => \^intc_if\(2),
      R => '0'
    );
ltOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => NLW_ltOp_carry_CO_UNCONNECTED(7),
      CO(6) => ltOp_carry_n_1,
      CO(5) => ltOp_carry_n_2,
      CO(4) => ltOp_carry_n_3,
      CO(3) => ltOp_carry_n_4,
      CO(2) => ltOp_carry_n_5,
      CO(1) => ltOp_carry_n_6,
      CO(0) => ltOp_carry_n_7,
      DI(7) => '0',
      DI(6) => ltOp_carry_i_1_n_0,
      DI(5) => ltOp_carry_i_2_n_0,
      DI(4) => ltOp_carry_i_3_n_0,
      DI(3) => ltOp_carry_i_4_n_0,
      DI(2) => ltOp_carry_i_5_n_0,
      DI(1) => ltOp_carry_i_6_n_0,
      DI(0) => ltOp_carry_i_7_n_0,
      O(7 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(7 downto 0),
      S(7) => '0',
      S(6) => \ltOp_carry_i_8__2_n_0\,
      S(5) => ltOp_carry_i_9_n_0,
      S(4) => ltOp_carry_i_10_n_0,
      S(3) => ltOp_carry_i_11_n_0,
      S(2) => ltOp_carry_i_12_n_0,
      S(1) => ltOp_carry_i_13_n_0,
      S(0) => ltOp_carry_i_14_n_0
    );
ltOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => total_rows(12),
      I1 => row_cnt_reg(12),
      O => ltOp_carry_i_1_n_0
    );
ltOp_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_rows(9),
      I1 => row_cnt_reg(9),
      I2 => total_rows(8),
      I3 => row_cnt_reg(8),
      O => ltOp_carry_i_10_n_0
    );
ltOp_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_rows(7),
      I1 => row_cnt_reg(7),
      I2 => total_rows(6),
      I3 => row_cnt_reg(6),
      O => ltOp_carry_i_11_n_0
    );
ltOp_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_rows(5),
      I1 => row_cnt_reg(5),
      I2 => total_rows(4),
      I3 => row_cnt_reg(4),
      O => ltOp_carry_i_12_n_0
    );
ltOp_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_rows(3),
      I1 => row_cnt_reg(3),
      I2 => total_rows(2),
      I3 => row_cnt_reg(2),
      O => ltOp_carry_i_13_n_0
    );
ltOp_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_rows(1),
      I1 => row_cnt_reg(1),
      I2 => total_rows(0),
      I3 => row_cnt_reg(0),
      O => ltOp_carry_i_14_n_0
    );
ltOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => row_cnt_reg(11),
      I1 => total_rows(11),
      I2 => total_rows(10),
      I3 => row_cnt_reg(10),
      O => ltOp_carry_i_2_n_0
    );
ltOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => row_cnt_reg(9),
      I1 => total_rows(9),
      I2 => total_rows(8),
      I3 => row_cnt_reg(8),
      O => ltOp_carry_i_3_n_0
    );
ltOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => row_cnt_reg(7),
      I1 => total_rows(7),
      I2 => total_rows(6),
      I3 => row_cnt_reg(6),
      O => ltOp_carry_i_4_n_0
    );
ltOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => row_cnt_reg(5),
      I1 => total_rows(5),
      I2 => total_rows(4),
      I3 => row_cnt_reg(4),
      O => ltOp_carry_i_5_n_0
    );
ltOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => row_cnt_reg(3),
      I1 => total_rows(3),
      I2 => total_rows(2),
      I3 => row_cnt_reg(2),
      O => ltOp_carry_i_6_n_0
    );
ltOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => row_cnt_reg(1),
      I1 => total_rows(1),
      I2 => total_rows(0),
      I3 => row_cnt_reg(0),
      O => ltOp_carry_i_7_n_0
    );
\ltOp_carry_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => row_cnt_reg(12),
      I1 => total_rows(12),
      O => \ltOp_carry_i_8__2_n_0\
    );
ltOp_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_rows(11),
      I1 => row_cnt_reg(11),
      I2 => total_rows(10),
      I3 => row_cnt_reg(10),
      O => ltOp_carry_i_9_n_0
    );
\ltOp_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_ltOp_inferred__0/i__carry_CO_UNCONNECTED\(7 downto 6),
      CO(5) => ltOp,
      CO(4) => \ltOp_inferred__0/i__carry_n_3\,
      CO(3) => \ltOp_inferred__0/i__carry_n_4\,
      CO(2) => \ltOp_inferred__0/i__carry_n_5\,
      CO(1) => \ltOp_inferred__0/i__carry_n_6\,
      CO(0) => \ltOp_inferred__0/i__carry_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \i__carry_i_1__3_n_0\,
      O(7 downto 0) => \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => \i__carry_i_2__4_n_0\,
      S(4) => \i__carry_i_3__4_n_0\,
      S(3) => \i__carry_i_4__4_n_0\,
      S(2) => \i__carry_i_5__4_n_0\,
      S(1) => \i__carry_i_6__4_n_0\,
      S(0) => \i__carry_i_7__3_n_0\
    );
out_fifo_eol_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => out_fifo_eol_i_2_n_0,
      I1 => out_fifo_eol_i_3_n_0,
      I2 => out_fifo_eol_i_4_n_0,
      I3 => out_fifo_eol_i_5_n_0,
      I4 => out_fifo_eol_i_6_n_0,
      I5 => out_fifo_eol_i_7_n_0,
      O => eqOp1_out
    );
out_fifo_eol_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(8),
      I1 => \col_cnt_reg_n_0_[8]\,
      I2 => total_cols(9),
      I3 => \col_cnt_reg_n_0_[9]\,
      O => out_fifo_eol_i_2_n_0
    );
out_fifo_eol_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(4),
      I1 => \col_cnt_reg_n_0_[4]\,
      I2 => total_cols(5),
      I3 => \col_cnt_reg_n_0_[5]\,
      O => out_fifo_eol_i_3_n_0
    );
out_fifo_eol_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(6),
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => total_cols(7),
      I3 => \col_cnt_reg_n_0_[7]\,
      O => out_fifo_eol_i_4_n_0
    );
out_fifo_eol_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(2),
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => total_cols(3),
      I3 => \col_cnt_reg_n_0_[3]\,
      O => out_fifo_eol_i_5_n_0
    );
out_fifo_eol_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => total_cols(1),
      I3 => \col_cnt_reg_n_0_[1]\,
      O => out_fifo_eol_i_6_n_0
    );
out_fifo_eol_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      I1 => total_cols(12),
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => total_cols(11),
      I4 => \col_cnt_reg_n_0_[10]\,
      I5 => total_cols(10),
      O => out_fifo_eol_i_7_n_0
    );
out_fifo_eol_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => eqOp1_out,
      Q => da(0),
      R => SR(0)
    );
out_fifo_sof_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sof_expected_i_3_n_0,
      I1 => sof_expected_i_2_n_0,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      O => out_fifo_sof0
    );
out_fifo_sof_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => out_fifo_sof0,
      Q => da(1),
      S => SR(0)
    );
pixel_cnt_tc_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => pixel_cnt_tc_i_2_n_0,
      I1 => \col_cnt_reg_n_0_[11]\,
      I2 => \col_cnt_reg_n_0_[12]\,
      O => pixel_cnt_tc_i_1_n_0
    );
pixel_cnt_tc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[9]\,
      I1 => \col_cnt_reg_n_0_[7]\,
      I2 => \col_cnt[6]_i_2_n_0\,
      I3 => \col_cnt_reg_n_0_[6]\,
      I4 => \col_cnt_reg_n_0_[8]\,
      I5 => \col_cnt_reg_n_0_[10]\,
      O => pixel_cnt_tc_i_2_n_0
    );
pixel_cnt_tc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => line_cnt_tc_i_1_n_0,
      D => pixel_cnt_tc_i_1_n_0,
      Q => \^intc_if\(1),
      R => '0'
    );
plusOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => row_cnt_reg(0),
      CI_TOP => '0',
      CO(7) => plusOp_carry_n_0,
      CO(6) => plusOp_carry_n_1,
      CO(5) => plusOp_carry_n_2,
      CO(4) => plusOp_carry_n_3,
      CO(3) => plusOp_carry_n_4,
      CO(2) => plusOp_carry_n_5,
      CO(1) => plusOp_carry_n_6,
      CO(0) => plusOp_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \plusOp__1\(8 downto 1),
      S(7 downto 0) => row_cnt_reg(8 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => plusOp_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \plusOp_carry__0_n_5\,
      CO(1) => \plusOp_carry__0_n_6\,
      CO(0) => \plusOp_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_plusOp_carry__0_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => \plusOp__1\(12 downto 9),
      S(7 downto 4) => B"0000",
      S(3 downto 0) => row_cnt_reg(12 downto 9)
    );
\row_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(0),
      O => \plusOp__1\(0)
    );
\row_cnt[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55750000FFFFFFFF"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => ltOp_carry_n_1,
      I2 => geqOp,
      I3 => eol_late_i3_out,
      I4 => col_cnt,
      I5 => resetn_out,
      O => \row_cnt[12]_i_1_n_0\
    );
\row_cnt[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => col_cnt,
      I1 => eol_late_i3_out,
      I2 => geqOp,
      O => row_cnt
    );
\row_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(0),
      Q => row_cnt_reg(0),
      S => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(10),
      Q => row_cnt_reg(10),
      R => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(11),
      Q => row_cnt_reg(11),
      R => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(12),
      Q => row_cnt_reg(12),
      R => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(1),
      Q => row_cnt_reg(1),
      R => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(2),
      Q => row_cnt_reg(2),
      R => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(3),
      Q => row_cnt_reg(3),
      R => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(4),
      Q => row_cnt_reg(4),
      R => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(5),
      Q => row_cnt_reg(5),
      R => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(6),
      Q => row_cnt_reg(6),
      R => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(7),
      Q => row_cnt_reg(7),
      R => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(8),
      Q => row_cnt_reg(8),
      R => \row_cnt[12]_i_1_n_0\
    );
\row_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \plusOp__1\(9),
      Q => row_cnt_reg(9),
      R => \row_cnt[12]_i_1_n_0\
    );
sof_early_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => t_qb(1),
      I1 => \^in_fifo_reset\,
      I2 => sof_expected,
      I3 => \^intc_if\(7),
      I4 => fifo_rd_d,
      I5 => \^intc_if\(6),
      O => sof_early_i_i_1_n_0
    );
sof_early_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => sof_early_i_i_1_n_0,
      Q => \^intc_if\(6),
      R => SR(0)
    );
sof_expected_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sof_expected_i_2_n_0,
      I1 => sof_expected_i_3_n_0,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      O => sof_expected0
    );
sof_expected_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      I1 => \col_cnt_reg_n_0_[5]\,
      I2 => \col_cnt_reg_n_0_[4]\,
      I3 => sof_expected_i_4_n_0,
      I4 => sof_expected_i_5_n_0,
      I5 => sof_expected_i_6_n_0,
      O => sof_expected_i_2_n_0
    );
sof_expected_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => sof_expected_i_7_n_0,
      I1 => sof_expected_i_8_n_0,
      I2 => sof_expected_i_9_n_0,
      I3 => row_cnt_reg(12),
      I4 => row_cnt_reg(0),
      I5 => row_cnt_reg(1),
      O => sof_expected_i_3_n_0
    );
sof_expected_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \col_cnt_reg_n_0_[7]\,
      I2 => \col_cnt_reg_n_0_[0]\,
      I3 => \col_cnt_reg_n_0_[1]\,
      O => sof_expected_i_4_n_0
    );
sof_expected_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[11]\,
      I1 => \col_cnt_reg_n_0_[10]\,
      O => sof_expected_i_5_n_0
    );
sof_expected_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[9]\,
      I1 => \col_cnt_reg_n_0_[8]\,
      O => sof_expected_i_6_n_0
    );
sof_expected_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => row_cnt_reg(7),
      I1 => row_cnt_reg(6),
      I2 => row_cnt_reg(2),
      I3 => row_cnt_reg(3),
      I4 => row_cnt_reg(10),
      I5 => row_cnt_reg(11),
      O => sof_expected_i_7_n_0
    );
sof_expected_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(8),
      I1 => row_cnt_reg(9),
      O => sof_expected_i_8_n_0
    );
sof_expected_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(4),
      I1 => row_cnt_reg(5),
      O => sof_expected_i_9_n_0
    );
sof_expected_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => sof_expected0,
      Q => sof_expected,
      R => SR(0)
    );
sof_late_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aclken,
      I1 => \genr_control_regs[0]\(0),
      O => \^master_en\
    );
sof_late_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ECECEC"
    )
        port map (
      I0 => fifo_rd_d,
      I1 => \^intc_if\(7),
      I2 => sof_expected,
      I3 => \^in_fifo_reset\,
      I4 => t_qb(1),
      O => sof_late_i2_out
    );
sof_late_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => sof_late_i2_out,
      Q => \^intc_if\(7),
      R => SR(0)
    );
\total_cols[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[0]\(0),
      O => plusOp(0)
    );
\total_cols[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[0]\(3),
      O => \total_cols[8]_i_2_n_0\
    );
\total_cols[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[0]\(2),
      O => \total_cols[8]_i_3_n_0\
    );
\total_cols_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(0),
      Q => total_cols(0),
      R => '0'
    );
\total_cols_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(10),
      Q => total_cols(10),
      R => '0'
    );
\total_cols_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(11),
      Q => total_cols(11),
      R => '0'
    );
\total_cols_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(12),
      Q => total_cols(12),
      R => '0'
    );
\total_cols_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_cols_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_total_cols_reg[12]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \total_cols_reg[12]_i_1_n_5\,
      CO(1) => \total_cols_reg[12]_i_1_n_6\,
      CO(0) => \total_cols_reg[12]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_total_cols_reg[12]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => plusOp(12 downto 9),
      S(7 downto 4) => B"0000",
      S(3 downto 0) => \time_control_regs[0]\(12 downto 9)
    );
\total_cols_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(1),
      Q => total_cols(1),
      R => '0'
    );
\total_cols_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(2),
      Q => total_cols(2),
      R => '0'
    );
\total_cols_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(3),
      Q => total_cols(3),
      R => '0'
    );
\total_cols_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(4),
      Q => total_cols(4),
      R => '0'
    );
\total_cols_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(5),
      Q => total_cols(5),
      R => '0'
    );
\total_cols_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(6),
      Q => total_cols(6),
      R => '0'
    );
\total_cols_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(7),
      Q => total_cols(7),
      R => '0'
    );
\total_cols_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(8),
      Q => total_cols(8),
      R => '0'
    );
\total_cols_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \time_control_regs[0]\(0),
      CI_TOP => '0',
      CO(7) => \total_cols_reg[8]_i_1_n_0\,
      CO(6) => \total_cols_reg[8]_i_1_n_1\,
      CO(5) => \total_cols_reg[8]_i_1_n_2\,
      CO(4) => \total_cols_reg[8]_i_1_n_3\,
      CO(3) => \total_cols_reg[8]_i_1_n_4\,
      CO(2) => \total_cols_reg[8]_i_1_n_5\,
      CO(1) => \total_cols_reg[8]_i_1_n_6\,
      CO(0) => \total_cols_reg[8]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 1) => \time_control_regs[0]\(3 downto 2),
      DI(0) => '0',
      O(7 downto 0) => plusOp(8 downto 1),
      S(7 downto 3) => \time_control_regs[0]\(8 downto 4),
      S(2) => \total_cols[8]_i_2_n_0\,
      S(1) => \total_cols[8]_i_3_n_0\,
      S(0) => \time_control_regs[0]\(1)
    );
\total_cols_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(9),
      Q => total_cols(9),
      R => '0'
    );
\total_rows_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(13),
      Q => total_rows(0),
      R => '0'
    );
\total_rows_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(23),
      Q => total_rows(10),
      R => '0'
    );
\total_rows_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(24),
      Q => total_rows(11),
      R => '0'
    );
\total_rows_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(25),
      Q => total_rows(12),
      R => '0'
    );
\total_rows_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(14),
      Q => total_rows(1),
      R => '0'
    );
\total_rows_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(15),
      Q => total_rows(2),
      R => '0'
    );
\total_rows_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(16),
      Q => total_rows(3),
      R => '0'
    );
\total_rows_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(17),
      Q => total_rows(4),
      R => '0'
    );
\total_rows_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(18),
      Q => total_rows(5),
      R => '0'
    );
\total_rows_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(19),
      Q => total_rows(6),
      R => '0'
    );
\total_rows_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(20),
      Q => total_rows(7),
      R => '0'
    );
\total_rows_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(21),
      Q => total_rows(8),
      R => '0'
    );
\total_rows_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(22),
      Q => total_rows(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_delay is
  port (
    y_intb : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_delay : entity is "delay";
end design_1_v_rgb2ycrcb_0_0_delay;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_delay is
  signal \needs_delay.shift_register_reg[3][0]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][1]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][2]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][3]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][4]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][5]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][6]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][7]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][8]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][9]_srl3_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][0]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \needs_delay.shift_register_reg[3][0]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][0]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][1]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][1]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][1]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][2]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][2]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][2]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][3]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][3]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][3]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][4]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][4]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][4]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][5]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][5]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][5]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][6]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][6]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][6]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][7]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][7]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][7]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][8]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][8]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][8]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][9]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][9]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][9]_srl3 ";
begin
\needs_delay.shift_register_reg[3][0]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(0),
      Q => \needs_delay.shift_register_reg[3][0]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][1]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(1),
      Q => \needs_delay.shift_register_reg[3][1]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(2),
      Q => \needs_delay.shift_register_reg[3][2]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(3),
      Q => \needs_delay.shift_register_reg[3][3]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][4]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(4),
      Q => \needs_delay.shift_register_reg[3][4]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][5]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(5),
      Q => \needs_delay.shift_register_reg[3][5]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][6]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(6),
      Q => \needs_delay.shift_register_reg[3][6]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][7]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(7),
      Q => \needs_delay.shift_register_reg[3][7]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][8]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(8),
      Q => \needs_delay.shift_register_reg[3][8]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][9]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(9),
      Q => \needs_delay.shift_register_reg[3][9]_srl3_n_0\
    );
\needs_delay.shift_register_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][0]_srl3_n_0\,
      Q => y_intb(0),
      R => '0'
    );
\needs_delay.shift_register_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][1]_srl3_n_0\,
      Q => y_intb(1),
      R => '0'
    );
\needs_delay.shift_register_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][2]_srl3_n_0\,
      Q => y_intb(2),
      R => '0'
    );
\needs_delay.shift_register_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][3]_srl3_n_0\,
      Q => y_intb(3),
      R => '0'
    );
\needs_delay.shift_register_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][4]_srl3_n_0\,
      Q => y_intb(4),
      R => '0'
    );
\needs_delay.shift_register_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][5]_srl3_n_0\,
      Q => y_intb(5),
      R => '0'
    );
\needs_delay.shift_register_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][6]_srl3_n_0\,
      Q => y_intb(6),
      R => '0'
    );
\needs_delay.shift_register_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][7]_srl3_n_0\,
      Q => y_intb(7),
      R => '0'
    );
\needs_delay.shift_register_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][8]_srl3_n_0\,
      Q => y_intb(8),
      R => '0'
    );
\needs_delay.shift_register_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][9]_srl3_n_0\,
      Q => y_intb(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][7]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][12]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay__parameterized0\ : entity is "delay";
end \design_1_v_rgb2ycrcb_0_0_delay__parameterized0\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay__parameterized0\ is
  signal b_int : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \needs_delay.shift_register[1][12]_i_4__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][12]_i_5__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_10__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_6__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_7__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_8__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_9__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__1_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__1_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__1_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__1_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][0]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][1]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][2]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][3]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][4]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][5]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][6]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][7]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][8]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][9]_srl4_n_0\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[1][12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_needs_delay.shift_register_reg[1][12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][0]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name : string;
  attribute srl_name of \needs_delay.shift_register_reg[4][0]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][0]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][1]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][1]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][1]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][2]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][2]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][2]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][3]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][3]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][3]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][4]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][4]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][4]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][5]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][5]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][5]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][6]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][6]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][6]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][7]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][7]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][7]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][8]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][8]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][8]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][9]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][9]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][9]_srl4 ";
begin
\needs_delay.shift_register[1][12]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(9),
      I1 => s(8),
      O => \needs_delay.shift_register[1][12]_i_4__0_n_0\
    );
\needs_delay.shift_register[1][12]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(8),
      I1 => s(7),
      O => \needs_delay.shift_register[1][12]_i_5__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_10__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b_int(0),
      O => \needs_delay.shift_register[1][7]_i_10__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(7),
      I1 => s(6),
      O => \needs_delay.shift_register[1][7]_i_3__2_n_0\
    );
\needs_delay.shift_register[1][7]_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(6),
      I1 => s(5),
      O => \needs_delay.shift_register[1][7]_i_4__2_n_0\
    );
\needs_delay.shift_register[1][7]_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(5),
      I1 => s(4),
      O => \needs_delay.shift_register[1][7]_i_5__2_n_0\
    );
\needs_delay.shift_register[1][7]_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(4),
      I1 => s(3),
      O => \needs_delay.shift_register[1][7]_i_6__2_n_0\
    );
\needs_delay.shift_register[1][7]_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(3),
      I1 => s(2),
      O => \needs_delay.shift_register[1][7]_i_7__2_n_0\
    );
\needs_delay.shift_register[1][7]_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(2),
      I1 => s(1),
      O => \needs_delay.shift_register[1][7]_i_8__2_n_0\
    );
\needs_delay.shift_register[1][7]_i_9__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(1),
      I1 => s(0),
      O => \needs_delay.shift_register[1][7]_i_9__2_n_0\
    );
\needs_delay.shift_register_reg[1][12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \needs_delay.shift_register_reg[1][7]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_needs_delay.shift_register_reg[1][12]_i_1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \needs_delay.shift_register_reg[1][12]_i_1_n_4\,
      CO(2) => \needs_delay.shift_register_reg[1][12]_i_1_n_5\,
      CO(1) => \needs_delay.shift_register_reg[1][12]_i_1_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][12]_i_1_n_7\,
      DI(7 downto 2) => B"000010",
      DI(1 downto 0) => b_int(9 downto 8),
      O(7 downto 5) => \NLW_needs_delay.shift_register_reg[1][12]_i_1_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => D(12 downto 8),
      S(7 downto 4) => B"0001",
      S(3 downto 2) => \needs_delay.shift_register_reg[1][12]\(1 downto 0),
      S(1) => \needs_delay.shift_register[1][12]_i_4__0_n_0\,
      S(0) => \needs_delay.shift_register[1][12]_i_5__0_n_0\
    );
\needs_delay.shift_register_reg[1][7]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \needs_delay.shift_register_reg[1][7]\,
      CI_TOP => '0',
      CO(7) => \needs_delay.shift_register_reg[1][7]_i_1__1_n_0\,
      CO(6) => \needs_delay.shift_register_reg[1][7]_i_1__1_n_1\,
      CO(5) => \needs_delay.shift_register_reg[1][7]_i_1__1_n_2\,
      CO(4) => \needs_delay.shift_register_reg[1][7]_i_1__1_n_3\,
      CO(3) => \needs_delay.shift_register_reg[1][7]_i_1__1_n_4\,
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1__1_n_5\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1__1_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1__1_n_7\,
      DI(7 downto 0) => b_int(7 downto 0),
      O(7 downto 0) => D(7 downto 0),
      S(7) => \needs_delay.shift_register[1][7]_i_3__2_n_0\,
      S(6) => \needs_delay.shift_register[1][7]_i_4__2_n_0\,
      S(5) => \needs_delay.shift_register[1][7]_i_5__2_n_0\,
      S(4) => \needs_delay.shift_register[1][7]_i_6__2_n_0\,
      S(3) => \needs_delay.shift_register[1][7]_i_7__2_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_8__2_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_9__2_n_0\,
      S(0) => \needs_delay.shift_register[1][7]_i_10__0_n_0\
    );
\needs_delay.shift_register_reg[4][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(0),
      Q => \needs_delay.shift_register_reg[4][0]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(1),
      Q => \needs_delay.shift_register_reg[4][1]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(2),
      Q => \needs_delay.shift_register_reg[4][2]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(3),
      Q => \needs_delay.shift_register_reg[4][3]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(4),
      Q => \needs_delay.shift_register_reg[4][4]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(5),
      Q => \needs_delay.shift_register_reg[4][5]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(6),
      Q => \needs_delay.shift_register_reg[4][6]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(7),
      Q => \needs_delay.shift_register_reg[4][7]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(8),
      Q => \needs_delay.shift_register_reg[4][8]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][9]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(9),
      Q => \needs_delay.shift_register_reg[4][9]_srl4_n_0\
    );
\needs_delay.shift_register_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][0]_srl4_n_0\,
      Q => b_int(0),
      R => '0'
    );
\needs_delay.shift_register_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][1]_srl4_n_0\,
      Q => b_int(1),
      R => '0'
    );
\needs_delay.shift_register_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][2]_srl4_n_0\,
      Q => b_int(2),
      R => '0'
    );
\needs_delay.shift_register_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][3]_srl4_n_0\,
      Q => b_int(3),
      R => '0'
    );
\needs_delay.shift_register_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][4]_srl4_n_0\,
      Q => b_int(4),
      R => '0'
    );
\needs_delay.shift_register_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][5]_srl4_n_0\,
      Q => b_int(5),
      R => '0'
    );
\needs_delay.shift_register_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][6]_srl4_n_0\,
      Q => b_int(6),
      R => '0'
    );
\needs_delay.shift_register_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][7]_srl4_n_0\,
      Q => b_int(7),
      R => '0'
    );
\needs_delay.shift_register_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][8]_srl4_n_0\,
      Q => b_int(8),
      R => '0'
    );
\needs_delay.shift_register_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][9]_srl4_n_0\,
      Q => b_int(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay__parameterized0_4\ is
  port (
    minusOp : out STD_LOGIC_VECTOR ( 12 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][7]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][12]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay__parameterized0_4\ : entity is "delay";
end \design_1_v_rgb2ycrcb_0_0_delay__parameterized0_4\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay__parameterized0_4\ is
  signal \needs_delay.shift_register[1][12]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][12]_i_5_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_2__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_6__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_7__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_8__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_9__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1__0_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1__0_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1__0_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1__0_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__2_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__2_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__2_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__2_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__2_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__2_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__2_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][0]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][1]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][2]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][3]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][4]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][5]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][6]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][7]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][8]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][9]_srl4_n_0\ : STD_LOGIC;
  signal r_int : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[1][12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_needs_delay.shift_register_reg[1][12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][0]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name : string;
  attribute srl_name of \needs_delay.shift_register_reg[4][0]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][0]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][1]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][1]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][1]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][2]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][2]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][2]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][3]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][3]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][3]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][4]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][4]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][4]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][5]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][5]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][5]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][6]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][6]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][6]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][7]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][7]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][7]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][8]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][8]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][8]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][9]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][9]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][9]_srl4 ";
begin
\needs_delay.shift_register[1][12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(9),
      I1 => s(8),
      O => \needs_delay.shift_register[1][12]_i_4_n_0\
    );
\needs_delay.shift_register[1][12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(8),
      I1 => s(7),
      O => \needs_delay.shift_register[1][12]_i_5_n_0\
    );
\needs_delay.shift_register[1][7]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(7),
      I1 => s(6),
      O => \needs_delay.shift_register[1][7]_i_2__2_n_0\
    );
\needs_delay.shift_register[1][7]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(6),
      I1 => s(5),
      O => \needs_delay.shift_register[1][7]_i_3__1_n_0\
    );
\needs_delay.shift_register[1][7]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(5),
      I1 => s(4),
      O => \needs_delay.shift_register[1][7]_i_4__1_n_0\
    );
\needs_delay.shift_register[1][7]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(4),
      I1 => s(3),
      O => \needs_delay.shift_register[1][7]_i_5__1_n_0\
    );
\needs_delay.shift_register[1][7]_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(3),
      I1 => s(2),
      O => \needs_delay.shift_register[1][7]_i_6__1_n_0\
    );
\needs_delay.shift_register[1][7]_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(2),
      I1 => s(1),
      O => \needs_delay.shift_register[1][7]_i_7__1_n_0\
    );
\needs_delay.shift_register[1][7]_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(1),
      I1 => s(0),
      O => \needs_delay.shift_register[1][7]_i_8__1_n_0\
    );
\needs_delay.shift_register[1][7]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_int(0),
      O => \needs_delay.shift_register[1][7]_i_9__0_n_0\
    );
\needs_delay.shift_register_reg[1][12]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \needs_delay.shift_register_reg[1][7]_i_1__2_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_needs_delay.shift_register_reg[1][12]_i_1__0_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \needs_delay.shift_register_reg[1][12]_i_1__0_n_4\,
      CO(2) => \needs_delay.shift_register_reg[1][12]_i_1__0_n_5\,
      CO(1) => \needs_delay.shift_register_reg[1][12]_i_1__0_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][12]_i_1__0_n_7\,
      DI(7 downto 2) => B"000010",
      DI(1 downto 0) => r_int(9 downto 8),
      O(7 downto 5) => \NLW_needs_delay.shift_register_reg[1][12]_i_1__0_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => minusOp(12 downto 8),
      S(7 downto 4) => B"0001",
      S(3 downto 2) => \needs_delay.shift_register_reg[1][12]\(1 downto 0),
      S(1) => \needs_delay.shift_register[1][12]_i_4_n_0\,
      S(0) => \needs_delay.shift_register[1][12]_i_5_n_0\
    );
\needs_delay.shift_register_reg[1][7]_i_1__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \needs_delay.shift_register_reg[1][7]\,
      CI_TOP => '0',
      CO(7) => \needs_delay.shift_register_reg[1][7]_i_1__2_n_0\,
      CO(6) => \needs_delay.shift_register_reg[1][7]_i_1__2_n_1\,
      CO(5) => \needs_delay.shift_register_reg[1][7]_i_1__2_n_2\,
      CO(4) => \needs_delay.shift_register_reg[1][7]_i_1__2_n_3\,
      CO(3) => \needs_delay.shift_register_reg[1][7]_i_1__2_n_4\,
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1__2_n_5\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1__2_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1__2_n_7\,
      DI(7 downto 0) => r_int(7 downto 0),
      O(7 downto 0) => minusOp(7 downto 0),
      S(7) => \needs_delay.shift_register[1][7]_i_2__2_n_0\,
      S(6) => \needs_delay.shift_register[1][7]_i_3__1_n_0\,
      S(5) => \needs_delay.shift_register[1][7]_i_4__1_n_0\,
      S(4) => \needs_delay.shift_register[1][7]_i_5__1_n_0\,
      S(3) => \needs_delay.shift_register[1][7]_i_6__1_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_7__1_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_8__1_n_0\,
      S(0) => \needs_delay.shift_register[1][7]_i_9__0_n_0\
    );
\needs_delay.shift_register_reg[4][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(0),
      Q => \needs_delay.shift_register_reg[4][0]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(1),
      Q => \needs_delay.shift_register_reg[4][1]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(2),
      Q => \needs_delay.shift_register_reg[4][2]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(3),
      Q => \needs_delay.shift_register_reg[4][3]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(4),
      Q => \needs_delay.shift_register_reg[4][4]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(5),
      Q => \needs_delay.shift_register_reg[4][5]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(6),
      Q => \needs_delay.shift_register_reg[4][6]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(7),
      Q => \needs_delay.shift_register_reg[4][7]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(8),
      Q => \needs_delay.shift_register_reg[4][8]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][9]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(9),
      Q => \needs_delay.shift_register_reg[4][9]_srl4_n_0\
    );
\needs_delay.shift_register_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][0]_srl4_n_0\,
      Q => r_int(0),
      R => '0'
    );
\needs_delay.shift_register_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][1]_srl4_n_0\,
      Q => r_int(1),
      R => '0'
    );
\needs_delay.shift_register_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][2]_srl4_n_0\,
      Q => r_int(2),
      R => '0'
    );
\needs_delay.shift_register_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][3]_srl4_n_0\,
      Q => r_int(3),
      R => '0'
    );
\needs_delay.shift_register_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][4]_srl4_n_0\,
      Q => r_int(4),
      R => '0'
    );
\needs_delay.shift_register_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][5]_srl4_n_0\,
      Q => r_int(5),
      R => '0'
    );
\needs_delay.shift_register_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][6]_srl4_n_0\,
      Q => r_int(6),
      R => '0'
    );
\needs_delay.shift_register_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][7]_srl4_n_0\,
      Q => r_int(7),
      R => '0'
    );
\needs_delay.shift_register_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][8]_srl4_n_0\,
      Q => r_int(8),
      R => '0'
    );
\needs_delay.shift_register_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][9]_srl4_n_0\,
      Q => r_int(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay__parameterized1\ is
  port (
    \needs_delay.shift_register_reg[3][11]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[3][10]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[3][9]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[3][8]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[3][7]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[3][6]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[3][5]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[3][4]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[3][3]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[3][2]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[3][1]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[3][0]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S : out STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \^s\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[0]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay__parameterized1\ : entity is "delay";
end \design_1_v_rgb2ycrcb_0_0_delay__parameterized1\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay__parameterized1\ is
  signal \needs_delay.shift_register_reg[2][0]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][10]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][11]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][1]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][2]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][3]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][4]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][5]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][6]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][7]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][8]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][9]_srl2_n_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][0]_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][10]_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][11]_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][1]_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][2]_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][3]_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][4]_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][5]_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][6]_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][7]_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][8]_0\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[3][9]_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][0]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name : string;
  attribute srl_name of \needs_delay.shift_register_reg[2][0]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][0]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][10]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][10]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][10]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][11]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][11]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][11]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][1]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][1]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][1]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][2]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][2]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][2]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][3]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][3]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][3]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][4]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][4]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][4]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][5]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][5]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][5]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][6]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][6]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][6]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][7]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][7]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][7]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][8]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][8]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][8]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][9]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][9]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][9]_srl2 ";
begin
  \needs_delay.shift_register_reg[3][0]_0\ <= \^needs_delay.shift_register_reg[3][0]_0\;
  \needs_delay.shift_register_reg[3][10]_0\ <= \^needs_delay.shift_register_reg[3][10]_0\;
  \needs_delay.shift_register_reg[3][11]_0\ <= \^needs_delay.shift_register_reg[3][11]_0\;
  \needs_delay.shift_register_reg[3][1]_0\ <= \^needs_delay.shift_register_reg[3][1]_0\;
  \needs_delay.shift_register_reg[3][2]_0\ <= \^needs_delay.shift_register_reg[3][2]_0\;
  \needs_delay.shift_register_reg[3][3]_0\ <= \^needs_delay.shift_register_reg[3][3]_0\;
  \needs_delay.shift_register_reg[3][4]_0\ <= \^needs_delay.shift_register_reg[3][4]_0\;
  \needs_delay.shift_register_reg[3][5]_0\ <= \^needs_delay.shift_register_reg[3][5]_0\;
  \needs_delay.shift_register_reg[3][6]_0\ <= \^needs_delay.shift_register_reg[3][6]_0\;
  \needs_delay.shift_register_reg[3][7]_0\ <= \^needs_delay.shift_register_reg[3][7]_0\;
  \needs_delay.shift_register_reg[3][8]_0\ <= \^needs_delay.shift_register_reg[3][8]_0\;
  \needs_delay.shift_register_reg[3][9]_0\ <= \^needs_delay.shift_register_reg[3][9]_0\;
\gtOp_carry_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][4]_0\,
      I1 => \core_control_regs[0]\(4),
      I2 => \^needs_delay.shift_register_reg[3][5]_0\,
      I3 => \core_control_regs[0]\(5),
      O => S(2)
    );
\gtOp_carry_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][2]_0\,
      I1 => \core_control_regs[0]\(2),
      I2 => \^needs_delay.shift_register_reg[3][3]_0\,
      I3 => \core_control_regs[0]\(3),
      O => S(1)
    );
\gtOp_carry_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][0]_0\,
      I1 => \core_control_regs[0]\(0),
      I2 => \^needs_delay.shift_register_reg[3][1]_0\,
      I3 => \core_control_regs[0]\(1),
      O => S(0)
    );
\gtOp_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][10]_0\,
      I1 => \^needs_delay.shift_register_reg[3][11]_0\,
      O => DI(5)
    );
\gtOp_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][8]_0\,
      I1 => \core_control_regs[0]\(8),
      I2 => \core_control_regs[0]\(9),
      I3 => \^needs_delay.shift_register_reg[3][9]_0\,
      O => DI(4)
    );
\gtOp_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][6]_0\,
      I1 => \core_control_regs[0]\(6),
      I2 => \core_control_regs[0]\(7),
      I3 => \^needs_delay.shift_register_reg[3][7]_0\,
      O => DI(3)
    );
\gtOp_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][4]_0\,
      I1 => \core_control_regs[0]\(4),
      I2 => \core_control_regs[0]\(5),
      I3 => \^needs_delay.shift_register_reg[3][5]_0\,
      O => DI(2)
    );
\gtOp_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][2]_0\,
      I1 => \core_control_regs[0]\(2),
      I2 => \core_control_regs[0]\(3),
      I3 => \^needs_delay.shift_register_reg[3][3]_0\,
      O => DI(1)
    );
\gtOp_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][0]_0\,
      I1 => \core_control_regs[0]\(0),
      I2 => \core_control_regs[0]\(1),
      I3 => \^needs_delay.shift_register_reg[3][1]_0\,
      O => DI(0)
    );
\gtOp_carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][10]_0\,
      I1 => \^needs_delay.shift_register_reg[3][11]_0\,
      O => S(5)
    );
\gtOp_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][8]_0\,
      I1 => \core_control_regs[0]\(8),
      I2 => \^needs_delay.shift_register_reg[3][9]_0\,
      I3 => \core_control_regs[0]\(9),
      O => S(4)
    );
\gtOp_carry_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[3][6]_0\,
      I1 => \core_control_regs[0]\(6),
      I2 => \^needs_delay.shift_register_reg[3][7]_0\,
      I3 => \core_control_regs[0]\(7),
      O => S(3)
    );
\needs_delay.shift_register_reg[2][0]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(0),
      Q => \needs_delay.shift_register_reg[2][0]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][10]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(10),
      Q => \needs_delay.shift_register_reg[2][10]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][11]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(11),
      Q => \needs_delay.shift_register_reg[2][11]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][1]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(1),
      Q => \needs_delay.shift_register_reg[2][1]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][2]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(2),
      Q => \needs_delay.shift_register_reg[2][2]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][3]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(3),
      Q => \needs_delay.shift_register_reg[2][3]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][4]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(4),
      Q => \needs_delay.shift_register_reg[2][4]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][5]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(5),
      Q => \needs_delay.shift_register_reg[2][5]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][6]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(6),
      Q => \needs_delay.shift_register_reg[2][6]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][7]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(7),
      Q => \needs_delay.shift_register_reg[2][7]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][8]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(8),
      Q => \needs_delay.shift_register_reg[2][8]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][9]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(9),
      Q => \needs_delay.shift_register_reg[2][9]_srl2_n_0\
    );
\needs_delay.shift_register_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][0]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][0]_0\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][10]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][10]_0\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][11]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][11]_0\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][1]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][1]_0\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][2]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][2]_0\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][3]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][3]_0\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][4]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][4]_0\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][5]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][5]_0\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][6]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][6]_0\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][7]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][7]_0\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][8]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][8]_0\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][9]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[3][9]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_delay_sclr is
  port (
    out_s : out STD_LOGIC_VECTOR ( 10 downto 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 19 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_delay_sclr : entity is "delay_sclr";
end design_1_v_rgb2ycrcb_0_0_delay_sclr;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_delay_sclr is
  signal \needs_delay.shift_register[1][10]_i_2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][10]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_10_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_6__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_7__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_8__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_9__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1_n_13\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1_n_14\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1_n_15\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_10\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_11\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_12\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_13\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_14\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_15\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_8\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_9\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_needs_delay.shift_register_reg[1][10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_needs_delay.shift_register_reg[1][10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
begin
  p_0_in(0) <= \^p_0_in\(0);
\needs_delay.shift_register[1][10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(19),
      I1 => Q(9),
      O => \needs_delay.shift_register[1][10]_i_2_n_0\
    );
\needs_delay.shift_register[1][10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(18),
      I1 => Q(8),
      O => \needs_delay.shift_register[1][10]_i_3_n_0\
    );
\needs_delay.shift_register[1][7]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(10),
      O => \needs_delay.shift_register[1][7]_i_10_n_0\
    );
\needs_delay.shift_register[1][7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => \^p_0_in\(0)
    );
\needs_delay.shift_register[1][7]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(17),
      I1 => Q(7),
      O => \needs_delay.shift_register[1][7]_i_3__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(16),
      I1 => Q(6),
      O => \needs_delay.shift_register[1][7]_i_4__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(15),
      I1 => Q(5),
      O => \needs_delay.shift_register[1][7]_i_5__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(14),
      I1 => Q(4),
      O => \needs_delay.shift_register[1][7]_i_6__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(13),
      I1 => Q(3),
      O => \needs_delay.shift_register[1][7]_i_7__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(12),
      I1 => Q(2),
      O => \needs_delay.shift_register[1][7]_i_8__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_9__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(11),
      I1 => Q(1),
      O => \needs_delay.shift_register[1][7]_i_9__1_n_0\
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_15\,
      Q => out_s(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][10]_i_1_n_13\,
      Q => out_s(10),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_needs_delay.shift_register_reg[1][10]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \needs_delay.shift_register_reg[1][10]_i_1_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][10]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => Q(19 downto 18),
      O(7 downto 3) => \NLW_needs_delay.shift_register_reg[1][10]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2) => \needs_delay.shift_register_reg[1][10]_i_1_n_13\,
      O(1) => \needs_delay.shift_register_reg[1][10]_i_1_n_14\,
      O(0) => \needs_delay.shift_register_reg[1][10]_i_1_n_15\,
      S(7 downto 2) => B"000001",
      S(1) => \needs_delay.shift_register[1][10]_i_2_n_0\,
      S(0) => \needs_delay.shift_register[1][10]_i_3_n_0\
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_14\,
      Q => out_s(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_13\,
      Q => out_s(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_12\,
      Q => out_s(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_11\,
      Q => out_s(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_10\,
      Q => out_s(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_9\,
      Q => out_s(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_8\,
      Q => out_s(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \^p_0_in\(0),
      CI_TOP => '0',
      CO(7) => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CO(6) => \needs_delay.shift_register_reg[1][7]_i_1_n_1\,
      CO(5) => \needs_delay.shift_register_reg[1][7]_i_1_n_2\,
      CO(4) => \needs_delay.shift_register_reg[1][7]_i_1_n_3\,
      CO(3) => \needs_delay.shift_register_reg[1][7]_i_1_n_4\,
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1_n_5\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1_n_7\,
      DI(7 downto 0) => Q(17 downto 10),
      O(7) => \needs_delay.shift_register_reg[1][7]_i_1_n_8\,
      O(6) => \needs_delay.shift_register_reg[1][7]_i_1_n_9\,
      O(5) => \needs_delay.shift_register_reg[1][7]_i_1_n_10\,
      O(4) => \needs_delay.shift_register_reg[1][7]_i_1_n_11\,
      O(3) => \needs_delay.shift_register_reg[1][7]_i_1_n_12\,
      O(2) => \needs_delay.shift_register_reg[1][7]_i_1_n_13\,
      O(1) => \needs_delay.shift_register_reg[1][7]_i_1_n_14\,
      O(0) => \needs_delay.shift_register_reg[1][7]_i_1_n_15\,
      S(7) => \needs_delay.shift_register[1][7]_i_3__0_n_0\,
      S(6) => \needs_delay.shift_register[1][7]_i_4__0_n_0\,
      S(5) => \needs_delay.shift_register[1][7]_i_5__0_n_0\,
      S(4) => \needs_delay.shift_register[1][7]_i_6__0_n_0\,
      S(3) => \needs_delay.shift_register[1][7]_i_7__0_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_8__0_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_9__1_n_0\,
      S(0) => \needs_delay.shift_register[1][7]_i_10_n_0\
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][10]_i_1_n_15\,
      Q => out_s(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][10]_i_1_n_14\,
      Q => out_s(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_delay_sclr_11 is
  port (
    out_s : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 18 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_delay_sclr_11 : entity is "delay_sclr";
end design_1_v_rgb2ycrcb_0_0_delay_sclr_11;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_delay_sclr_11 is
  signal \needs_delay.shift_register[1][10]_i_2__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][10]_i_3__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_2__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_6_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_7_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_8_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_9_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1__0_n_13\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1__0_n_14\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1__0_n_15\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1__0_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1__0_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_10\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_11\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_12\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_13\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_14\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_15\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_8\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_9\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[1][10]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_needs_delay.shift_register_reg[1][10]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
begin
\needs_delay.shift_register[1][10]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(18),
      I1 => Q(8),
      O => \needs_delay.shift_register[1][10]_i_2__0_n_0\
    );
\needs_delay.shift_register[1][10]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(17),
      I1 => Q(7),
      O => \needs_delay.shift_register[1][10]_i_3__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(16),
      I1 => Q(6),
      O => \needs_delay.shift_register[1][7]_i_2__1_n_0\
    );
\needs_delay.shift_register[1][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(15),
      I1 => Q(5),
      O => \needs_delay.shift_register[1][7]_i_3_n_0\
    );
\needs_delay.shift_register[1][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(14),
      I1 => Q(4),
      O => \needs_delay.shift_register[1][7]_i_4_n_0\
    );
\needs_delay.shift_register[1][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(13),
      I1 => Q(3),
      O => \needs_delay.shift_register[1][7]_i_5_n_0\
    );
\needs_delay.shift_register[1][7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(12),
      I1 => Q(2),
      O => \needs_delay.shift_register[1][7]_i_6_n_0\
    );
\needs_delay.shift_register[1][7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(11),
      I1 => Q(1),
      O => \needs_delay.shift_register[1][7]_i_7_n_0\
    );
\needs_delay.shift_register[1][7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(10),
      I1 => Q(0),
      O => \needs_delay.shift_register[1][7]_i_8_n_0\
    );
\needs_delay.shift_register[1][7]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      O => \needs_delay.shift_register[1][7]_i_9_n_0\
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_15\,
      Q => out_s(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][10]_i_1__0_n_13\,
      Q => out_s(10),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \needs_delay.shift_register_reg[1][7]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_needs_delay.shift_register_reg[1][10]_i_1__0_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \needs_delay.shift_register_reg[1][10]_i_1__0_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][10]_i_1__0_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => Q(18 downto 17),
      O(7 downto 3) => \NLW_needs_delay.shift_register_reg[1][10]_i_1__0_O_UNCONNECTED\(7 downto 3),
      O(2) => \needs_delay.shift_register_reg[1][10]_i_1__0_n_13\,
      O(1) => \needs_delay.shift_register_reg[1][10]_i_1__0_n_14\,
      O(0) => \needs_delay.shift_register_reg[1][10]_i_1__0_n_15\,
      S(7 downto 2) => B"000001",
      S(1) => \needs_delay.shift_register[1][10]_i_2__0_n_0\,
      S(0) => \needs_delay.shift_register[1][10]_i_3__0_n_0\
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_14\,
      Q => out_s(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_13\,
      Q => out_s(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_12\,
      Q => out_s(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_11\,
      Q => out_s(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_10\,
      Q => out_s(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_9\,
      Q => out_s(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_8\,
      Q => out_s(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => p_0_in(0),
      CI_TOP => '0',
      CO(7) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_0\,
      CO(6) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_1\,
      CO(5) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_2\,
      CO(4) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_3\,
      CO(3) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_4\,
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_5\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_7\,
      DI(7 downto 0) => Q(16 downto 9),
      O(7) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_8\,
      O(6) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_9\,
      O(5) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_10\,
      O(4) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_11\,
      O(3) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_12\,
      O(2) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_13\,
      O(1) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_14\,
      O(0) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_15\,
      S(7) => \needs_delay.shift_register[1][7]_i_2__1_n_0\,
      S(6) => \needs_delay.shift_register[1][7]_i_3_n_0\,
      S(5) => \needs_delay.shift_register[1][7]_i_4_n_0\,
      S(4) => \needs_delay.shift_register[1][7]_i_5_n_0\,
      S(3) => \needs_delay.shift_register[1][7]_i_6_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_7_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_8_n_0\,
      S(0) => \needs_delay.shift_register[1][7]_i_9_n_0\
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][10]_i_1__0_n_15\,
      Q => out_s(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][10]_i_1__0_n_14\,
      Q => out_s(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized0\ is
  port (
    P : out STD_LOGIC_VECTOR ( 27 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    sclr : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \core_control_regs[9]\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized0\ : entity is "delay_sclr";
end \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized0\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized0\ is
  signal \NLW_needs_delay.shift_register_reg[2]_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[2]_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[2]_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[2]_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 28 );
  signal \NLW_needs_delay.shift_register_reg[2]_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[2]_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \needs_delay.shift_register_reg[2]\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \needs_delay.shift_register_reg[2]\ : label is "{SYNTH-12 {cell *THIS*}}";
begin
\needs_delay.shift_register_reg[2]\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => \core_control_regs[9]\(16),
      A(28) => \core_control_regs[9]\(16),
      A(27) => \core_control_regs[9]\(16),
      A(26) => \core_control_regs[9]\(16),
      A(25) => \core_control_regs[9]\(16),
      A(24) => \core_control_regs[9]\(16),
      A(23) => \core_control_regs[9]\(16),
      A(22) => \core_control_regs[9]\(16),
      A(21) => \core_control_regs[9]\(16),
      A(20) => \core_control_regs[9]\(16),
      A(19) => \core_control_regs[9]\(16),
      A(18) => \core_control_regs[9]\(16),
      A(17) => \core_control_regs[9]\(16),
      A(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_needs_delay.shift_register_reg[2]_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => s(10),
      B(16) => s(10),
      B(15) => s(10),
      B(14) => s(10),
      B(13) => s(10),
      B(12) => s(10),
      B(11) => s(10),
      B(10 downto 0) => s(10 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_needs_delay.shift_register_reg[2]_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_needs_delay.shift_register_reg[2]_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_needs_delay.shift_register_reg[2]_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => E(0),
      CEP => E(0),
      CLK => aclk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_needs_delay.shift_register_reg[2]_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_needs_delay.shift_register_reg[2]_OVERFLOW_UNCONNECTED\,
      P(47 downto 28) => \NLW_needs_delay.shift_register_reg[2]_P_UNCONNECTED\(47 downto 28),
      P(27 downto 0) => P(27 downto 0),
      PATTERNBDETECT => \NLW_needs_delay.shift_register_reg[2]_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_needs_delay.shift_register_reg[2]_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_needs_delay.shift_register_reg[2]_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => sclr,
      RSTP => sclr,
      UNDERFLOW => \NLW_needs_delay.shift_register_reg[2]_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_needs_delay.shift_register_reg[2]_XOROUT_UNCONNECTED\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1\ is
  port (
    \needs_delay.shift_register_reg[1][10]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \needs_delay.shift_register_reg[1][8]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \core_control_regs[1]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1\ : entity is "delay_sclr";
end \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \needs_delay.shift_register_reg_n_0_[1][10]\ : STD_LOGIC;
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
\ltOp_carry_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[1]\(2),
      I1 => \^q\(2),
      I2 => \core_control_regs[1]\(3),
      I3 => \^q\(3),
      O => \needs_delay.shift_register_reg[1][10]_0\(1)
    );
\ltOp_carry_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[1]\(0),
      I1 => \^q\(0),
      I2 => \core_control_regs[1]\(1),
      I3 => \^q\(1),
      O => \needs_delay.shift_register_reg[1][10]_0\(0)
    );
\ltOp_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[1]\(8),
      I1 => \^q\(8),
      I2 => \^q\(9),
      I3 => \core_control_regs[1]\(9),
      O => \needs_delay.shift_register_reg[1][8]_0\(4)
    );
\ltOp_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[1]\(6),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \core_control_regs[1]\(7),
      O => \needs_delay.shift_register_reg[1][8]_0\(3)
    );
\ltOp_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[1]\(4),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \core_control_regs[1]\(5),
      O => \needs_delay.shift_register_reg[1][8]_0\(2)
    );
\ltOp_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[1]\(2),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \core_control_regs[1]\(3),
      O => \needs_delay.shift_register_reg[1][8]_0\(1)
    );
\ltOp_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[1]\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \core_control_regs[1]\(1),
      O => \needs_delay.shift_register_reg[1][8]_0\(0)
    );
\ltOp_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \needs_delay.shift_register_reg_n_0_[1][10]\,
      I1 => \^q\(10),
      O => \needs_delay.shift_register_reg[1][10]_0\(5)
    );
\ltOp_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[1]\(8),
      I1 => \^q\(8),
      I2 => \core_control_regs[1]\(9),
      I3 => \^q\(9),
      O => \needs_delay.shift_register_reg[1][10]_0\(4)
    );
ltOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[1]\(6),
      I1 => \^q\(6),
      I2 => \core_control_regs[1]\(7),
      I3 => \^q\(7),
      O => \needs_delay.shift_register_reg[1][10]_0\(3)
    );
\ltOp_carry_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[1]\(4),
      I1 => \^q\(4),
      I2 => \core_control_regs[1]\(5),
      I3 => \^q\(5),
      O => \needs_delay.shift_register_reg[1][10]_0\(2)
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(10),
      Q => \needs_delay.shift_register_reg_n_0_[1][10]\,
      R => sclr
    );
\needs_delay.shift_register_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(11),
      Q => \^q\(10),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => \^q\(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => \^q\(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => \^q\(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => \^q\(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_12\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \needs_delay.shift_register_reg[1][10]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \needs_delay.shift_register_reg[1][8]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    p : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \core_control_regs[5]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[4]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_12\ : entity is "delay_sclr";
end \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_12\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_12\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \needs_delay.shift_register_reg_n_0_[1][10]\ : STD_LOGIC;
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
\gtOp_carry_i_10__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(4),
      I1 => \core_control_regs[4]\(4),
      I2 => p(5),
      I3 => \core_control_regs[4]\(5),
      O => S(2)
    );
\gtOp_carry_i_11__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(2),
      I1 => \core_control_regs[4]\(2),
      I2 => p(3),
      I3 => \core_control_regs[4]\(3),
      O => S(1)
    );
\gtOp_carry_i_12__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(0),
      I1 => \core_control_regs[4]\(0),
      I2 => p(1),
      I3 => \core_control_regs[4]\(1),
      O => S(0)
    );
\gtOp_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(10),
      I1 => p(11),
      O => DI(5)
    );
\gtOp_carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(8),
      I1 => \core_control_regs[4]\(8),
      I2 => \core_control_regs[4]\(9),
      I3 => p(9),
      O => DI(4)
    );
\gtOp_carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(6),
      I1 => \core_control_regs[4]\(6),
      I2 => \core_control_regs[4]\(7),
      I3 => p(7),
      O => DI(3)
    );
\gtOp_carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(4),
      I1 => \core_control_regs[4]\(4),
      I2 => \core_control_regs[4]\(5),
      I3 => p(5),
      O => DI(2)
    );
\gtOp_carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(2),
      I1 => \core_control_regs[4]\(2),
      I2 => \core_control_regs[4]\(3),
      I3 => p(3),
      O => DI(1)
    );
\gtOp_carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(0),
      I1 => \core_control_regs[4]\(0),
      I2 => \core_control_regs[4]\(1),
      I3 => p(1),
      O => DI(0)
    );
\gtOp_carry_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p(10),
      I1 => p(11),
      O => S(5)
    );
\gtOp_carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(8),
      I1 => \core_control_regs[4]\(8),
      I2 => p(9),
      I3 => \core_control_regs[4]\(9),
      O => S(4)
    );
\gtOp_carry_i_9__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(6),
      I1 => \core_control_regs[4]\(6),
      I2 => p(7),
      I3 => \core_control_regs[4]\(7),
      O => S(3)
    );
\ltOp_carry_i_10__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[5]\(2),
      I1 => \^q\(2),
      I2 => \core_control_regs[5]\(3),
      I3 => \^q\(3),
      O => \needs_delay.shift_register_reg[1][10]_0\(1)
    );
\ltOp_carry_i_11__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[5]\(0),
      I1 => \^q\(0),
      I2 => \core_control_regs[5]\(1),
      I3 => \^q\(1),
      O => \needs_delay.shift_register_reg[1][10]_0\(0)
    );
\ltOp_carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[5]\(8),
      I1 => \^q\(8),
      I2 => \^q\(9),
      I3 => \core_control_regs[5]\(9),
      O => \needs_delay.shift_register_reg[1][8]_0\(4)
    );
\ltOp_carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[5]\(6),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \core_control_regs[5]\(7),
      O => \needs_delay.shift_register_reg[1][8]_0\(3)
    );
\ltOp_carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[5]\(4),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \core_control_regs[5]\(5),
      O => \needs_delay.shift_register_reg[1][8]_0\(2)
    );
\ltOp_carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[5]\(2),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \core_control_regs[5]\(3),
      O => \needs_delay.shift_register_reg[1][8]_0\(1)
    );
\ltOp_carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[5]\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \core_control_regs[5]\(1),
      O => \needs_delay.shift_register_reg[1][8]_0\(0)
    );
\ltOp_carry_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \needs_delay.shift_register_reg_n_0_[1][10]\,
      I1 => \^q\(10),
      O => \needs_delay.shift_register_reg[1][10]_0\(5)
    );
\ltOp_carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[5]\(8),
      I1 => \^q\(8),
      I2 => \core_control_regs[5]\(9),
      I3 => \^q\(9),
      O => \needs_delay.shift_register_reg[1][10]_0\(4)
    );
\ltOp_carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[5]\(6),
      I1 => \^q\(6),
      I2 => \core_control_regs[5]\(7),
      I3 => \^q\(7),
      O => \needs_delay.shift_register_reg[1][10]_0\(3)
    );
\ltOp_carry_i_9__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[5]\(4),
      I1 => \^q\(4),
      I2 => \core_control_regs[5]\(5),
      I3 => \^q\(5),
      O => \needs_delay.shift_register_reg[1][10]_0\(2)
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(10),
      Q => \needs_delay.shift_register_reg_n_0_[1][10]\,
      R => sclr
    );
\needs_delay.shift_register_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(11),
      Q => \^q\(10),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => \^q\(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => \^q\(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => \^q\(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => \^q\(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_13\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \needs_delay.shift_register_reg[1][10]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \needs_delay.shift_register_reg[1][8]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    p : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \core_control_regs[3]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[2]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_13\ : entity is "delay_sclr";
end \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_13\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_13\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \needs_delay.shift_register_reg_n_0_[1][10]\ : STD_LOGIC;
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
\gtOp_carry_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(4),
      I1 => \core_control_regs[2]\(4),
      I2 => p(5),
      I3 => \core_control_regs[2]\(5),
      O => S(2)
    );
\gtOp_carry_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(2),
      I1 => \core_control_regs[2]\(2),
      I2 => p(3),
      I3 => \core_control_regs[2]\(3),
      O => S(1)
    );
\gtOp_carry_i_12__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(0),
      I1 => \core_control_regs[2]\(0),
      I2 => p(1),
      I3 => \core_control_regs[2]\(1),
      O => S(0)
    );
\gtOp_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(10),
      I1 => p(11),
      O => DI(5)
    );
\gtOp_carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(8),
      I1 => \core_control_regs[2]\(8),
      I2 => \core_control_regs[2]\(9),
      I3 => p(9),
      O => DI(4)
    );
\gtOp_carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(6),
      I1 => \core_control_regs[2]\(6),
      I2 => \core_control_regs[2]\(7),
      I3 => p(7),
      O => DI(3)
    );
\gtOp_carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(4),
      I1 => \core_control_regs[2]\(4),
      I2 => \core_control_regs[2]\(5),
      I3 => p(5),
      O => DI(2)
    );
\gtOp_carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(2),
      I1 => \core_control_regs[2]\(2),
      I2 => \core_control_regs[2]\(3),
      I3 => p(3),
      O => DI(1)
    );
\gtOp_carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(0),
      I1 => \core_control_regs[2]\(0),
      I2 => \core_control_regs[2]\(1),
      I3 => p(1),
      O => DI(0)
    );
\gtOp_carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p(10),
      I1 => p(11),
      O => S(5)
    );
\gtOp_carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(8),
      I1 => \core_control_regs[2]\(8),
      I2 => p(9),
      I3 => \core_control_regs[2]\(9),
      O => S(4)
    );
\gtOp_carry_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(6),
      I1 => \core_control_regs[2]\(6),
      I2 => p(7),
      I3 => \core_control_regs[2]\(7),
      O => S(3)
    );
\ltOp_carry_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[3]\(2),
      I1 => \^q\(2),
      I2 => \core_control_regs[3]\(3),
      I3 => \^q\(3),
      O => \needs_delay.shift_register_reg[1][10]_0\(1)
    );
\ltOp_carry_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[3]\(0),
      I1 => \^q\(0),
      I2 => \core_control_regs[3]\(1),
      I3 => \^q\(1),
      O => \needs_delay.shift_register_reg[1][10]_0\(0)
    );
\ltOp_carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[3]\(8),
      I1 => \^q\(8),
      I2 => \^q\(9),
      I3 => \core_control_regs[3]\(9),
      O => \needs_delay.shift_register_reg[1][8]_0\(4)
    );
\ltOp_carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[3]\(6),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \core_control_regs[3]\(7),
      O => \needs_delay.shift_register_reg[1][8]_0\(3)
    );
\ltOp_carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[3]\(4),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \core_control_regs[3]\(5),
      O => \needs_delay.shift_register_reg[1][8]_0\(2)
    );
\ltOp_carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[3]\(2),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \core_control_regs[3]\(3),
      O => \needs_delay.shift_register_reg[1][8]_0\(1)
    );
\ltOp_carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[3]\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \core_control_regs[3]\(1),
      O => \needs_delay.shift_register_reg[1][8]_0\(0)
    );
\ltOp_carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \needs_delay.shift_register_reg_n_0_[1][10]\,
      I1 => \^q\(10),
      O => \needs_delay.shift_register_reg[1][10]_0\(5)
    );
\ltOp_carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[3]\(8),
      I1 => \^q\(8),
      I2 => \core_control_regs[3]\(9),
      I3 => \^q\(9),
      O => \needs_delay.shift_register_reg[1][10]_0\(4)
    );
\ltOp_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[3]\(6),
      I1 => \^q\(6),
      I2 => \core_control_regs[3]\(7),
      I3 => \^q\(7),
      O => \needs_delay.shift_register_reg[1][10]_0\(3)
    );
\ltOp_carry_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[3]\(4),
      I1 => \^q\(4),
      I2 => \core_control_regs[3]\(5),
      I3 => \^q\(5),
      O => \needs_delay.shift_register_reg[1][10]_0\(2)
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(10),
      Q => \needs_delay.shift_register_reg_n_0_[1][10]\,
      R => sclr
    );
\needs_delay.shift_register_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(11),
      Q => \^q\(10),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => \^q\(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => \^q\(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => \^q\(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => \^q\(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_14\ is
  port (
    da : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_14\ : entity is "delay_sclr";
end \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_14\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_14\ is
begin
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => da(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => da(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => da(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => da(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => da(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => da(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => da(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => da(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => da(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => da(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_15\ is
  port (
    da : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_15\ : entity is "delay_sclr";
end \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_15\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_15\ is
begin
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => da(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => da(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => da(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => da(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => da(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => da(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => da(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => da(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => da(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => da(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_16\ is
  port (
    da : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_16\ : entity is "delay_sclr";
end \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_16\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_16\ is
begin
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => da(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => da(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => da(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => da(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => da(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => da(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => da(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => da(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => da(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => da(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_17\ is
  port (
    \needs_delay.shift_register_reg[1][0]_0\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][11]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \needs_delay.shift_register_reg[1][11]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    plusOp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_17\ : entity is "delay_sclr";
end \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_17\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_17\ is
begin
\needs_delay.shift_register[1][12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(2),
      O => \needs_delay.shift_register_reg[1][11]_1\(1)
    );
\needs_delay.shift_register[1][12]_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(2),
      O => \needs_delay.shift_register_reg[1][11]_0\(1)
    );
\needs_delay.shift_register[1][12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(1),
      O => \needs_delay.shift_register_reg[1][11]_0\(0)
    );
\needs_delay.shift_register[1][12]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(1),
      O => \needs_delay.shift_register_reg[1][11]_1\(0)
    );
\needs_delay.shift_register[1][7]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(0),
      O => \needs_delay.shift_register_reg[1][0]_0\
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(0),
      Q => Q(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(10),
      Q => Q(10),
      R => sclr
    );
\needs_delay.shift_register_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(11),
      Q => Q(11),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(1),
      Q => Q(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(2),
      Q => Q(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(3),
      Q => Q(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(4),
      Q => Q(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(5),
      Q => Q(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(6),
      Q => Q(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(7),
      Q => Q(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(8),
      Q => Q(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(9),
      Q => Q(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    plusOp : in STD_LOGIC_VECTOR ( 12 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2\ : entity is "delay_sclr";
end \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2\ is
begin
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(0),
      Q => Q(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(10),
      Q => Q(10),
      R => sclr
    );
\needs_delay.shift_register_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(11),
      Q => Q(11),
      R => sclr
    );
\needs_delay.shift_register_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(12),
      Q => Q(12),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(1),
      Q => Q(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(2),
      Q => Q(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(3),
      Q => Q(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(4),
      Q => Q(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(5),
      Q => Q(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(6),
      Q => Q(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(7),
      Q => Q(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(8),
      Q => Q(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(9),
      Q => Q(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_7\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    resetn_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 12 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_7\ : entity is "delay_sclr";
end \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_7\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_7\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SR(0) <= \^sr\(0);
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(10),
      Q => Q(10),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(11),
      Q => Q(11),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(12),
      Q => Q(12),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => Q(8),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => Q(9),
      R => \^sr\(0)
    );
sof_late_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn_out,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_9\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 12 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_9\ : entity is "delay_sclr";
end \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_9\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_9\ is
begin
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(10),
      Q => Q(10),
      R => sclr
    );
\needs_delay.shift_register_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(11),
      Q => Q(11),
      R => sclr
    );
\needs_delay.shift_register_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(12),
      Q => Q(12),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => Q(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => Q(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_dp_ram is
  port (
    aclken_0 : out STD_LOGIC;
    ADDRA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclken : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_tready : in STD_LOGIC;
    axi_fifo_empty : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \read_ptr_int_reg[2]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wen : in STD_LOGIC;
    da : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \GenerateDoutWriteFirstB.t_qb_reg[29]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_dp_ram : entity is "dp_ram";
end design_1_v_rgb2ycrcb_0_0_dp_ram;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_dp_ram is
  signal \^addra\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_0\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_1\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_10\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_11\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_12\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_13\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_2\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_3\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_4\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_5\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_6\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_7\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_8\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_9\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_0\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_1\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_10\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_11\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_12\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_13\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_2\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_3\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_4\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_5\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_6\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_7\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_8\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_9\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_0\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_1\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_2\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_3\ : STD_LOGIC;
  signal \^aclken_0\ : STD_LOGIC;
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_13_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_14_27_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOE_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOF_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOG_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is "rgb2ycrcb_top_inst/axi_out_fifo/UOSD_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 13;
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is "";
  attribute RTL_RAM_BITS of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 512;
  attribute RTL_RAM_NAME of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is "rgb2ycrcb_top_inst/axi_out_fifo/UOSD_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem";
  attribute RTL_RAM_TYPE of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is "RAM_SDP";
  attribute ram_addr_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 0;
  attribute ram_addr_end of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 15;
  attribute ram_offset of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 0;
  attribute ram_slice_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 14;
  attribute ram_slice_end of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 27;
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is "";
  attribute RTL_RAM_BITS of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 512;
  attribute RTL_RAM_NAME of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is "rgb2ycrcb_top_inst/axi_out_fifo/UOSD_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem";
  attribute RTL_RAM_TYPE of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is "RAM_SDP";
  attribute ram_addr_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 0;
  attribute ram_addr_end of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 15;
  attribute ram_offset of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 0;
  attribute ram_slice_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 28;
  attribute ram_slice_end of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 31;
begin
  ADDRA(3 downto 0) <= \^addra\(3 downto 0);
  aclken_0 <= \^aclken_0\;
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^addra\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^addra\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^addra\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \^addra\(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => \^addra\(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => \^addra\(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => \^addra\(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => \GenerateDoutWriteFirstB.t_qb_reg[29]_0\(3 downto 0),
      DIA(1 downto 0) => da(1 downto 0),
      DIB(1 downto 0) => da(3 downto 2),
      DIC(1 downto 0) => da(5 downto 4),
      DID(1 downto 0) => da(7 downto 6),
      DIE(1 downto 0) => da(9 downto 8),
      DIF(1 downto 0) => da(11 downto 10),
      DIG(1 downto 0) => da(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_0\,
      DOA(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_1\,
      DOB(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_2\,
      DOB(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_3\,
      DOC(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_4\,
      DOC(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_5\,
      DOD(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_6\,
      DOD(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_7\,
      DOE(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_8\,
      DOE(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_9\,
      DOF(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_10\,
      DOF(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_11\,
      DOG(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_12\,
      DOG(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_13\,
      DOH(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_13_DOH_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => wen
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Q(3),
      I1 => \^aclken_0\,
      I2 => Q(2),
      O => \^addra\(3)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA6AAAAA"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => axi_fifo_empty,
      I4 => m_axis_video_tready,
      I5 => \read_ptr_int_reg[2]\,
      O => \^addra\(2)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => aclken,
      I2 => \genr_control_regs[0]\(0),
      I3 => m_axis_video_tready,
      I4 => axi_fifo_empty,
      I5 => Q(0),
      O => \^addra\(1)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => axi_fifo_empty,
      I2 => m_axis_video_tready,
      I3 => \genr_control_regs[0]\(0),
      I4 => aclken,
      O => \^addra\(0)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => aclken,
      I1 => \genr_control_regs[0]\(0),
      I2 => m_axis_video_tready,
      I3 => axi_fifo_empty,
      I4 => Q(0),
      I5 => Q(1),
      O => \^aclken_0\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_14_27\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^addra\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^addra\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^addra\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \^addra\(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => \^addra\(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => \^addra\(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => \^addra\(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => \GenerateDoutWriteFirstB.t_qb_reg[29]_0\(3 downto 0),
      DIA(1 downto 0) => da(15 downto 14),
      DIB(1 downto 0) => da(17 downto 16),
      DIC(1 downto 0) => da(19 downto 18),
      DID(1 downto 0) => da(21 downto 20),
      DIE(1 downto 0) => da(23 downto 22),
      DIF(1 downto 0) => da(25 downto 24),
      DIG(1 downto 0) => da(27 downto 26),
      DIH(1 downto 0) => B"00",
      DOA(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_0\,
      DOA(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_1\,
      DOB(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_2\,
      DOB(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_3\,
      DOC(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_4\,
      DOC(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_5\,
      DOD(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_6\,
      DOD(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_7\,
      DOE(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_8\,
      DOE(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_9\,
      DOF(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_10\,
      DOF(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_11\,
      DOG(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_12\,
      DOG(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_13\,
      DOH(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_14_27_DOH_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => wen
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_28_31\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^addra\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^addra\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^addra\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \^addra\(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => \^addra\(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => \^addra\(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => \^addra\(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => \GenerateDoutWriteFirstB.t_qb_reg[29]_0\(3 downto 0),
      DIA(1 downto 0) => da(29 downto 28),
      DIB(1 downto 0) => da(31 downto 30),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DIE(1 downto 0) => B"00",
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_0\,
      DOA(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_1\,
      DOB(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_2\,
      DOB(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_3\,
      DOC(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOD_UNCONNECTED\(1 downto 0),
      DOE(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOE_UNCONNECTED\(1 downto 0),
      DOF(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOF_UNCONNECTED\(1 downto 0),
      DOG(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOG_UNCONNECTED\(1 downto 0),
      DOH(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOH_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => wen
    );
\GenerateDoutWriteFirstB.t_qb_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_1\,
      Q => O13(0),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_11\,
      Q => O13(10),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_10\,
      Q => O13(11),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_13\,
      Q => O13(12),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_12\,
      Q => O13(13),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_1\,
      Q => O13(14),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_0\,
      Q => O13(15),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_3\,
      Q => O13(16),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_2\,
      Q => O13(17),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_5\,
      Q => O13(18),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_4\,
      Q => O13(19),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_0\,
      Q => O13(1),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_7\,
      Q => O13(20),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_6\,
      Q => O13(21),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_9\,
      Q => O13(22),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_8\,
      Q => O13(23),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_11\,
      Q => O13(24),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_10\,
      Q => O13(25),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_13\,
      Q => O13(26),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_12\,
      Q => O13(27),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_1\,
      Q => O13(28),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_0\,
      Q => O13(29),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_3\,
      Q => O13(2),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_3\,
      Q => O13(30),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_2\,
      Q => O13(31),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_2\,
      Q => O13(3),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_5\,
      Q => O13(4),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_4\,
      Q => O13(5),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_7\,
      Q => O13(6),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_6\,
      Q => O13(7),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_9\,
      Q => O13(8),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_8\,
      Q => O13(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_dp_ram_18 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    empty_match_reg : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    aclken_0 : out STD_LOGIC;
    \GenerateDoutWriteFirstB.t_qb_reg[30]_0\ : out STD_LOGIC;
    \GenerateDoutWriteFirstB.t_qb_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_update : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vid_empty : in STD_LOGIC;
    \read_ptr_reg[0]\ : in STD_LOGIC;
    \write_ptr_reg[0]\ : in STD_LOGIC;
    resetn_out : in STD_LOGIC;
    aclken : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \write_ptr_reg[0]_0\ : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    in_fifo_reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    da : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \GenerateDoutWriteFirstB.t_qb_reg[29]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_dp_ram_18 : entity is "dp_ram";
end design_1_v_rgb2ycrcb_0_0_dp_ram_18;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_dp_ram_18 is
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^generatedoutwritefirstb.t_qb_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^empty_match_reg\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal t_qb0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_13_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_14_27_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOE_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOF_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOG_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is "rgb2ycrcb_top_inst/axi_in_fifo/U_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13\ : label is 13;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_2__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_3__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_4__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_5__0\ : label is "soft_lutpair12";
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is "";
  attribute RTL_RAM_BITS of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 512;
  attribute RTL_RAM_NAME of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is "rgb2ycrcb_top_inst/axi_in_fifo/U_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem";
  attribute RTL_RAM_TYPE of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is "RAM_SDP";
  attribute ram_addr_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 0;
  attribute ram_addr_end of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 15;
  attribute ram_offset of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 0;
  attribute ram_slice_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 14;
  attribute ram_slice_end of \GenerateDoutWriteFirstA.mem_reg_0_15_14_27\ : label is 27;
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is "";
  attribute RTL_RAM_BITS of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 512;
  attribute RTL_RAM_NAME of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is "rgb2ycrcb_top_inst/axi_in_fifo/U_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem";
  attribute RTL_RAM_TYPE of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is "RAM_SDP";
  attribute ram_addr_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 0;
  attribute ram_addr_end of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 15;
  attribute ram_offset of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 0;
  attribute ram_slice_begin of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 28;
  attribute ram_slice_end of \GenerateDoutWriteFirstA.mem_reg_0_15_28_31\ : label is 31;
begin
  D(3 downto 0) <= \^d\(3 downto 0);
  \GenerateDoutWriteFirstB.t_qb_reg[31]_0\(31 downto 0) <= \^generatedoutwritefirstb.t_qb_reg[31]_0\(31 downto 0);
  empty_match_reg <= \^empty_match_reg\;
  p_0_in <= \^p_0_in\;
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^d\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^d\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^d\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \^d\(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => \^d\(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => \^d\(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => \^d\(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => \GenerateDoutWriteFirstB.t_qb_reg[29]_0\(3 downto 0),
      DIA(1 downto 0) => da(1 downto 0),
      DIB(1 downto 0) => da(3 downto 2),
      DIC(1 downto 0) => da(5 downto 4),
      DID(1 downto 0) => da(7 downto 6),
      DIE(1 downto 0) => da(9 downto 8),
      DIF(1 downto 0) => da(11 downto 10),
      DIG(1 downto 0) => da(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => t_qb0(1 downto 0),
      DOB(1 downto 0) => t_qb0(3 downto 2),
      DOC(1 downto 0) => t_qb0(5 downto 4),
      DOD(1 downto 0) => t_qb0(7 downto 6),
      DOE(1 downto 0) => t_qb0(9 downto 8),
      DOF(1 downto 0) => t_qb0(11 downto 10),
      DOG(1 downto 0) => t_qb0(13 downto 12),
      DOH(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_13_DOH_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => \^p_0_in\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \write_ptr_reg[0]\,
      I1 => resetn_out,
      I2 => aclken,
      I3 => \genr_control_regs[0]\(0),
      I4 => \write_ptr_reg[0]_0\,
      I5 => s_axis_video_tvalid,
      O => \^p_0_in\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => \^empty_match_reg\,
      I3 => Q(0),
      I4 => Q(2),
      O => \^d\(3)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => \^empty_match_reg\,
      I3 => Q(1),
      O => \^d\(2)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Q(1),
      I1 => \^empty_match_reg\,
      I2 => Q(0),
      O => \^d\(1)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(0),
      I1 => \^empty_match_reg\,
      O => \^d\(0)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vid_empty,
      I1 => \read_ptr_reg[0]\,
      O => \^empty_match_reg\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_14_27\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^d\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^d\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^d\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \^d\(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => \^d\(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => \^d\(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => \^d\(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => \GenerateDoutWriteFirstB.t_qb_reg[29]_0\(3 downto 0),
      DIA(1 downto 0) => da(15 downto 14),
      DIB(1 downto 0) => da(17 downto 16),
      DIC(1 downto 0) => da(19 downto 18),
      DID(1 downto 0) => da(21 downto 20),
      DIE(1 downto 0) => da(23 downto 22),
      DIF(1 downto 0) => da(25 downto 24),
      DIG(1 downto 0) => da(27 downto 26),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => t_qb0(15 downto 14),
      DOB(1 downto 0) => t_qb0(17 downto 16),
      DOC(1 downto 0) => t_qb0(19 downto 18),
      DOD(1 downto 0) => t_qb0(21 downto 20),
      DOE(1 downto 0) => t_qb0(23 downto 22),
      DOF(1 downto 0) => t_qb0(25 downto 24),
      DOG(1 downto 0) => t_qb0(27 downto 26),
      DOH(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_14_27_DOH_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => \^p_0_in\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_28_31\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^d\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^d\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^d\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \^d\(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => \^d\(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => \^d\(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => \^d\(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => \GenerateDoutWriteFirstB.t_qb_reg[29]_0\(3 downto 0),
      DIA(1 downto 0) => da(29 downto 28),
      DIB(1 downto 0) => da(31 downto 30),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DIE(1 downto 0) => B"00",
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => t_qb0(29 downto 28),
      DOB(1 downto 0) => t_qb0(31 downto 30),
      DOC(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOD_UNCONNECTED\(1 downto 0),
      DOE(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOE_UNCONNECTED\(1 downto 0),
      DOF(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOF_UNCONNECTED\(1 downto 0),
      DOG(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOG_UNCONNECTED\(1 downto 0),
      DOH(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOH_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => \^p_0_in\
    );
\GenerateDoutWriteFirstB.t_qb_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(0),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(0),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(10),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(10),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(11),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(11),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(12),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(12),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(13),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(13),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(14),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(14),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(15),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(15),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(16),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(16),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(17),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(17),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(18),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(18),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(19),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(19),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(1),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(1),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(20),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(20),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(21),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(21),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(22),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(22),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(23),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(23),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(24),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(24),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(25),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(25),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(26),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(26),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(27),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(27),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(28),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(28),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(29),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(29),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(2),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(2),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(30),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(30),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(31),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(31),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(3),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(3),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(4),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(4),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(5),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(5),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(6),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(6),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(7),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(7),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(8),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(8),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => t_qb0(9),
      Q => \^generatedoutwritefirstb.t_qb_reg[31]_0\(9),
      R => '0'
    );
U_VIDEO_CTRL_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^generatedoutwritefirstb.t_qb_reg[31]_0\(31),
      I1 => \genr_control_regs[0]\(1),
      O => reg_update
    );
eol_early_i_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \genr_control_regs[0]\(0),
      I1 => aclken,
      O => aclken_0
    );
eol_late_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^generatedoutwritefirstb.t_qb_reg[31]_0\(30),
      I1 => in_fifo_reset,
      O => \GenerateDoutWriteFirstB.t_qb_reg[30]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_mac is
  port (
    a : in STD_LOGIC_VECTOR ( 10 downto 0 );
    b : in STD_LOGIC_VECTOR ( 16 downto 0 );
    c : in STD_LOGIC_VECTOR ( 27 downto 0 );
    p : out STD_LOGIC_VECTOR ( 27 downto 0 );
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    sclr : in STD_LOGIC
  );
  attribute CREG : integer;
  attribute CREG of design_1_v_rgb2ycrcb_0_0_mac : entity is 0;
  attribute HAS_C : integer;
  attribute HAS_C of design_1_v_rgb2ycrcb_0_0_mac : entity is 1;
  attribute IWIDTHA : integer;
  attribute IWIDTHA of design_1_v_rgb2ycrcb_0_0_mac : entity is 11;
  attribute IWIDTHB : integer;
  attribute IWIDTHB of design_1_v_rgb2ycrcb_0_0_mac : entity is 17;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_mac : entity is "mac";
  attribute OWIDTH : integer;
  attribute OWIDTH of design_1_v_rgb2ycrcb_0_0_mac : entity is 28;
  attribute ROUND_MODE : integer;
  attribute ROUND_MODE of design_1_v_rgb2ycrcb_0_0_mac : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_v_rgb2ycrcb_0_0_mac : entity is "yes";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_v_rgb2ycrcb_0_0_mac : entity is "yes";
  attribute mult_style : string;
  attribute mult_style of design_1_v_rgb2ycrcb_0_0_mac : entity is "pipe_block";
  attribute register_balancing : string;
  attribute register_balancing of design_1_v_rgb2ycrcb_0_0_mac : entity is "yes";
  attribute use_dsp : string;
  attribute use_dsp of design_1_v_rgb2ycrcb_0_0_mac : entity is "yes";
end design_1_v_rgb2ycrcb_0_0_mac;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_mac is
  signal plusOp_n_58 : STD_LOGIC;
  signal plusOp_n_59 : STD_LOGIC;
  signal plusOp_n_60 : STD_LOGIC;
  signal plusOp_n_61 : STD_LOGIC;
  signal plusOp_n_62 : STD_LOGIC;
  signal plusOp_n_63 : STD_LOGIC;
  signal plusOp_n_64 : STD_LOGIC;
  signal plusOp_n_65 : STD_LOGIC;
  signal plusOp_n_66 : STD_LOGIC;
  signal plusOp_n_67 : STD_LOGIC;
  signal plusOp_n_68 : STD_LOGIC;
  signal plusOp_n_69 : STD_LOGIC;
  signal plusOp_n_70 : STD_LOGIC;
  signal plusOp_n_71 : STD_LOGIC;
  signal plusOp_n_72 : STD_LOGIC;
  signal plusOp_n_73 : STD_LOGIC;
  signal plusOp_n_74 : STD_LOGIC;
  signal plusOp_n_75 : STD_LOGIC;
  signal plusOp_n_76 : STD_LOGIC;
  signal plusOp_n_77 : STD_LOGIC;
  signal NLW_plusOp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_plusOp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_plusOp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_plusOp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_plusOp_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY of plusOp : label is "yes";
begin
plusOp: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => b(16),
      A(28) => b(16),
      A(27) => b(16),
      A(26) => b(16),
      A(25) => b(16),
      A(24) => b(16),
      A(23) => b(16),
      A(22) => b(16),
      A(21) => b(16),
      A(20) => b(16),
      A(19) => b(16),
      A(18) => b(16),
      A(17) => b(16),
      A(16 downto 0) => b(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_plusOp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => a(10),
      B(16) => a(10),
      B(15) => a(10),
      B(14) => a(10),
      B(13) => a(10),
      B(12) => a(10),
      B(11) => a(10),
      B(10 downto 0) => a(10 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_plusOp_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => c(27),
      C(46) => c(27),
      C(45) => c(27),
      C(44) => c(27),
      C(43) => c(27),
      C(42) => c(27),
      C(41) => c(27),
      C(40) => c(27),
      C(39) => c(27),
      C(38) => c(27),
      C(37) => c(27),
      C(36) => c(27),
      C(35) => c(27),
      C(34) => c(27),
      C(33) => c(27),
      C(32) => c(27),
      C(31) => c(27),
      C(30) => c(27),
      C(29) => c(27),
      C(28) => c(27),
      C(27 downto 0) => c(27 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_plusOp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_plusOp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => ce,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => ce,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => ce,
      CEP => ce,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_plusOp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_plusOp_OVERFLOW_UNCONNECTED,
      P(47) => plusOp_n_58,
      P(46) => plusOp_n_59,
      P(45) => plusOp_n_60,
      P(44) => plusOp_n_61,
      P(43) => plusOp_n_62,
      P(42) => plusOp_n_63,
      P(41) => plusOp_n_64,
      P(40) => plusOp_n_65,
      P(39) => plusOp_n_66,
      P(38) => plusOp_n_67,
      P(37) => plusOp_n_68,
      P(36) => plusOp_n_69,
      P(35) => plusOp_n_70,
      P(34) => plusOp_n_71,
      P(33) => plusOp_n_72,
      P(32) => plusOp_n_73,
      P(31) => plusOp_n_74,
      P(30) => plusOp_n_75,
      P(29) => plusOp_n_76,
      P(28) => plusOp_n_77,
      P(27 downto 0) => p(27 downto 0),
      PATTERNBDETECT => NLW_plusOp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_plusOp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_plusOp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => sclr,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => sclr,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => sclr,
      RSTP => sclr,
      UNDERFLOW => NLW_plusOp_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_plusOp_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ is
  port (
    a : in STD_LOGIC_VECTOR ( 12 downto 0 );
    b : in STD_LOGIC_VECTOR ( 16 downto 0 );
    c : in STD_LOGIC_VECTOR ( 13 downto 0 );
    p : out STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    sclr : in STD_LOGIC
  );
  attribute CREG : integer;
  attribute CREG of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 0;
  attribute HAS_C : integer;
  attribute HAS_C of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 1;
  attribute IWIDTHA : integer;
  attribute IWIDTHA of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 13;
  attribute IWIDTHB : integer;
  attribute IWIDTHB of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 17;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is "mac";
  attribute OWIDTH : integer;
  attribute OWIDTH of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 14;
  attribute ROUND_MODE : integer;
  attribute ROUND_MODE of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is "yes";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is "yes";
  attribute mult_style : string;
  attribute mult_style of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is "pipe_block";
  attribute register_balancing : string;
  attribute register_balancing of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is "yes";
  attribute use_dsp : string;
  attribute use_dsp of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is "yes";
end \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0\ is
  signal mac_reg_n_100 : STD_LOGIC;
  signal mac_reg_n_101 : STD_LOGIC;
  signal mac_reg_n_102 : STD_LOGIC;
  signal mac_reg_n_103 : STD_LOGIC;
  signal mac_reg_n_104 : STD_LOGIC;
  signal mac_reg_n_105 : STD_LOGIC;
  signal mac_reg_n_90 : STD_LOGIC;
  signal mac_reg_n_91 : STD_LOGIC;
  signal mac_reg_n_92 : STD_LOGIC;
  signal mac_reg_n_93 : STD_LOGIC;
  signal mac_reg_n_94 : STD_LOGIC;
  signal mac_reg_n_95 : STD_LOGIC;
  signal mac_reg_n_96 : STD_LOGIC;
  signal mac_reg_n_97 : STD_LOGIC;
  signal mac_reg_n_98 : STD_LOGIC;
  signal mac_reg_n_99 : STD_LOGIC;
  signal NLW_mac_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mac_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mac_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mac_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 30 );
  signal NLW_mac_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mac_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY of mac_reg : label is "yes";
begin
mac_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => b(16),
      A(28) => b(16),
      A(27) => b(16),
      A(26) => b(16),
      A(25) => b(16),
      A(24) => b(16),
      A(23) => b(16),
      A(22) => b(16),
      A(21) => b(16),
      A(20) => b(16),
      A(19) => b(16),
      A(18) => b(16),
      A(17) => b(16),
      A(16 downto 0) => b(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mac_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => a(12),
      B(16) => a(12),
      B(15) => a(12),
      B(14) => a(12),
      B(13) => a(12),
      B(12 downto 0) => a(12 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mac_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => c(13),
      C(46) => c(13),
      C(45) => c(13),
      C(44) => c(13),
      C(43) => c(13),
      C(42) => c(13),
      C(41) => c(13),
      C(40) => c(13),
      C(39) => c(13),
      C(38) => c(13),
      C(37) => c(13),
      C(36) => c(13),
      C(35) => c(13),
      C(34) => c(13),
      C(33) => c(13),
      C(32) => c(13),
      C(31) => c(13),
      C(30) => c(13),
      C(29 downto 16) => c(13 downto 0),
      C(15 downto 0) => B"0111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mac_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '1',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mac_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => ce,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => ce,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => ce,
      CEP => ce,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mac_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_mac_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 30) => NLW_mac_reg_P_UNCONNECTED(47 downto 30),
      P(29 downto 16) => p(13 downto 0),
      P(15) => mac_reg_n_90,
      P(14) => mac_reg_n_91,
      P(13) => mac_reg_n_92,
      P(12) => mac_reg_n_93,
      P(11) => mac_reg_n_94,
      P(10) => mac_reg_n_95,
      P(9) => mac_reg_n_96,
      P(8) => mac_reg_n_97,
      P(7) => mac_reg_n_98,
      P(6) => mac_reg_n_99,
      P(5) => mac_reg_n_100,
      P(4) => mac_reg_n_101,
      P(3) => mac_reg_n_102,
      P(2) => mac_reg_n_103,
      P(1) => mac_reg_n_104,
      P(0) => mac_reg_n_105,
      PATTERNBDETECT => NLW_mac_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mac_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mac_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => sclr,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => sclr,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => sclr,
      RSTP => sclr,
      UNDERFLOW => NLW_mac_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mac_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ is
  port (
    a : in STD_LOGIC_VECTOR ( 12 downto 0 );
    b : in STD_LOGIC_VECTOR ( 16 downto 0 );
    c : in STD_LOGIC_VECTOR ( 13 downto 0 );
    p : out STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    sclr : in STD_LOGIC
  );
  attribute CREG : integer;
  attribute CREG of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is 0;
  attribute HAS_C : integer;
  attribute HAS_C of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is 1;
  attribute IWIDTHA : integer;
  attribute IWIDTHA of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is 13;
  attribute IWIDTHB : integer;
  attribute IWIDTHB of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is 17;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is "mac";
  attribute OWIDTH : integer;
  attribute OWIDTH of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is 14;
  attribute ROUND_MODE : integer;
  attribute ROUND_MODE of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is "yes";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is "yes";
  attribute mult_style : string;
  attribute mult_style of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is "pipe_block";
  attribute register_balancing : string;
  attribute register_balancing of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is "yes";
  attribute use_dsp : string;
  attribute use_dsp of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ : entity is "yes";
end \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\ is
  signal mac_reg_n_100 : STD_LOGIC;
  signal mac_reg_n_101 : STD_LOGIC;
  signal mac_reg_n_102 : STD_LOGIC;
  signal mac_reg_n_103 : STD_LOGIC;
  signal mac_reg_n_104 : STD_LOGIC;
  signal mac_reg_n_105 : STD_LOGIC;
  signal mac_reg_n_90 : STD_LOGIC;
  signal mac_reg_n_91 : STD_LOGIC;
  signal mac_reg_n_92 : STD_LOGIC;
  signal mac_reg_n_93 : STD_LOGIC;
  signal mac_reg_n_94 : STD_LOGIC;
  signal mac_reg_n_95 : STD_LOGIC;
  signal mac_reg_n_96 : STD_LOGIC;
  signal mac_reg_n_97 : STD_LOGIC;
  signal mac_reg_n_98 : STD_LOGIC;
  signal mac_reg_n_99 : STD_LOGIC;
  signal NLW_mac_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mac_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mac_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mac_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 30 );
  signal NLW_mac_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mac_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY of mac_reg : label is "yes";
begin
mac_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => b(16),
      A(28) => b(16),
      A(27) => b(16),
      A(26) => b(16),
      A(25) => b(16),
      A(24) => b(16),
      A(23) => b(16),
      A(22) => b(16),
      A(21) => b(16),
      A(20) => b(16),
      A(19) => b(16),
      A(18) => b(16),
      A(17) => b(16),
      A(16 downto 0) => b(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mac_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => a(12),
      B(16) => a(12),
      B(15) => a(12),
      B(14) => a(12),
      B(13) => a(12),
      B(12 downto 0) => a(12 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mac_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => c(13),
      C(46) => c(13),
      C(45) => c(13),
      C(44) => c(13),
      C(43) => c(13),
      C(42) => c(13),
      C(41) => c(13),
      C(40) => c(13),
      C(39) => c(13),
      C(38) => c(13),
      C(37) => c(13),
      C(36) => c(13),
      C(35) => c(13),
      C(34) => c(13),
      C(33) => c(13),
      C(32) => c(13),
      C(31) => c(13),
      C(30) => c(13),
      C(29 downto 16) => c(13 downto 0),
      C(15 downto 0) => B"0111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mac_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '1',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mac_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => ce,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => ce,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => ce,
      CEP => ce,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mac_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_mac_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 30) => NLW_mac_reg_P_UNCONNECTED(47 downto 30),
      P(29 downto 16) => p(13 downto 0),
      P(15) => mac_reg_n_90,
      P(14) => mac_reg_n_91,
      P(13) => mac_reg_n_92,
      P(12) => mac_reg_n_93,
      P(11) => mac_reg_n_94,
      P(10) => mac_reg_n_95,
      P(9) => mac_reg_n_96,
      P(8) => mac_reg_n_97,
      P(7) => mac_reg_n_98,
      P(6) => mac_reg_n_99,
      P(5) => mac_reg_n_100,
      P(4) => mac_reg_n_101,
      P(3) => mac_reg_n_102,
      P(2) => mac_reg_n_103,
      P(1) => mac_reg_n_104,
      P(0) => mac_reg_n_105,
      PATTERNBDETECT => NLW_mac_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mac_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mac_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => sclr,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => sclr,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => sclr,
      RSTP => sclr,
      UNDERFLOW => NLW_mac_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mac_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_video_ctrl is
  port (
    aclk : in STD_LOGIC;
    aclk_en : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    vid_aclk : in STD_LOGIC;
    vid_aclk_en : in STD_LOGIC;
    vid_aresetn : in STD_LOGIC;
    reg_update : in STD_LOGIC;
    irq : out STD_LOGIC;
    resetn_out : out STD_LOGIC;
    core_d_out : out STD_LOGIC;
    ipif_addr_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ipif_rnw_out : out STD_LOGIC;
    ipif_cs_out : out STD_LOGIC;
    ipif_data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[1]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[2]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[3]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[4]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[5]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[6]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[7]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[2]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[3]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[4]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[5]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[6]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[7]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[1]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[1]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[2]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[3]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[4]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[5]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[6]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[7]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[8]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[9]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[10]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[11]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[12]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[2]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[3]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[4]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[5]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[6]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[7]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[8]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[9]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[10]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[11]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[12]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute C_COREGEN_PATCH : integer;
  attribute C_COREGEN_PATCH of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 0;
  attribute C_CORE_AXI_WRITE : string;
  attribute C_CORE_AXI_WRITE of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000111111111111111111000000000000001111111111111111110000000000000011111111111111111100000000000000111111111111111111";
  attribute C_CORE_DBUFFER : string;
  attribute C_CORE_DBUFFER of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111";
  attribute C_CORE_DEFAULT : string;
  attribute C_CORE_DEFAULT of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "416'b00000000000000000000001111111111000000000000000000000000000000000000000000000000000000111111111100000000000000000000000000000000000000000000000000000011111111110000000000000000000000000000000000000000000000000000000001000000000000000000000000000010000000000000000000000000000000100000000000000000000000000100110010001011000000000000000000011101001011110000000000000000111000001001010100000000000000000111110111111010";
  attribute C_CORE_NUM_REGS : integer;
  attribute C_CORE_NUM_REGS of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 13;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "zynquplus";
  attribute C_GENR_AXI_WRITE : string;
  attribute C_GENR_AXI_WRITE of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "256'b1100000000000000000000000011111100000000000000010000000000001111000000000000000000000000000011110000000000000001000000000000111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_DBUFFER : string;
  attribute C_GENR_DBUFFER of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "256'b0000000000000000000000000010110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_DEFAULT : string;
  attribute C_GENR_DEFAULT of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "256'b0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_NUM_REGS : integer;
  attribute C_GENR_NUM_REGS of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 8;
  attribute C_GENR_SELFCLR : string;
  attribute C_GENR_SELFCLR of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "256'b0000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_HAS_AXI4_LITE : integer;
  attribute C_HAS_AXI4_LITE of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 0;
  attribute C_HAS_IRQ : integer;
  attribute C_HAS_IRQ of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 1;
  attribute C_IS_EVAL : string;
  attribute C_IS_EVAL of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "FALSE";
  attribute C_REVISION_NUMBER : integer;
  attribute C_REVISION_NUMBER of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 1;
  attribute C_SRESET_LENGTH : integer;
  attribute C_SRESET_LENGTH of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 32;
  attribute C_TIMEOUT_HOURS : integer;
  attribute C_TIMEOUT_HOURS of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 8;
  attribute C_TIMEOUT_MINS : integer;
  attribute C_TIMEOUT_MINS of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 0;
  attribute C_TIME_AXI_WRITE : string;
  attribute C_TIME_AXI_WRITE of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "64'b1111111111111111111111111111111100000000000000000000000000000111";
  attribute C_TIME_DBUFFER : string;
  attribute C_TIME_DBUFFER of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "64'b1111111111111111111111111111111100000000000000000000000000000111";
  attribute C_TIME_DEFAULT : string;
  attribute C_TIME_DEFAULT of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "64'b0000001011010000000001010000000000000000000000000000000000000000";
  attribute C_TIME_NUM_REGS : integer;
  attribute C_TIME_NUM_REGS of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 2;
  attribute C_VERSION_MAJOR : integer;
  attribute C_VERSION_MAJOR of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 7;
  attribute C_VERSION_MINOR : integer;
  attribute C_VERSION_MINOR of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 1;
  attribute C_VERSION_REVISION : integer;
  attribute C_VERSION_REVISION of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "video_ctrl";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "yes";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_v_rgb2ycrcb_0_0_video_ctrl : entity is "yes";
end design_1_v_rgb2ycrcb_0_0_video_ctrl;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_video_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^vid_aresetn\ : STD_LOGIC;
begin
  \^vid_aresetn\ <= vid_aresetn;
  \core_control_regs[0]\(31) <= \<const0>\;
  \core_control_regs[0]\(30) <= \<const0>\;
  \core_control_regs[0]\(29) <= \<const0>\;
  \core_control_regs[0]\(28) <= \<const0>\;
  \core_control_regs[0]\(27) <= \<const0>\;
  \core_control_regs[0]\(26) <= \<const0>\;
  \core_control_regs[0]\(25) <= \<const0>\;
  \core_control_regs[0]\(24) <= \<const0>\;
  \core_control_regs[0]\(23) <= \<const0>\;
  \core_control_regs[0]\(22) <= \<const0>\;
  \core_control_regs[0]\(21) <= \<const0>\;
  \core_control_regs[0]\(20) <= \<const0>\;
  \core_control_regs[0]\(19) <= \<const0>\;
  \core_control_regs[0]\(18) <= \<const0>\;
  \core_control_regs[0]\(17) <= \<const0>\;
  \core_control_regs[0]\(16) <= \<const0>\;
  \core_control_regs[0]\(15) <= \<const0>\;
  \core_control_regs[0]\(14) <= \<const0>\;
  \core_control_regs[0]\(13) <= \<const0>\;
  \core_control_regs[0]\(12) <= \<const0>\;
  \core_control_regs[0]\(11) <= \<const0>\;
  \core_control_regs[0]\(10) <= \<const0>\;
  \core_control_regs[0]\(9) <= \<const1>\;
  \core_control_regs[0]\(8) <= \<const1>\;
  \core_control_regs[0]\(7) <= \<const1>\;
  \core_control_regs[0]\(6) <= \<const1>\;
  \core_control_regs[0]\(5) <= \<const1>\;
  \core_control_regs[0]\(4) <= \<const1>\;
  \core_control_regs[0]\(3) <= \<const1>\;
  \core_control_regs[0]\(2) <= \<const1>\;
  \core_control_regs[0]\(1) <= \<const1>\;
  \core_control_regs[0]\(0) <= \<const1>\;
  \core_control_regs[10]\(31) <= \<const0>\;
  \core_control_regs[10]\(30) <= \<const0>\;
  \core_control_regs[10]\(29) <= \<const0>\;
  \core_control_regs[10]\(28) <= \<const0>\;
  \core_control_regs[10]\(27) <= \<const0>\;
  \core_control_regs[10]\(26) <= \<const0>\;
  \core_control_regs[10]\(25) <= \<const0>\;
  \core_control_regs[10]\(24) <= \<const0>\;
  \core_control_regs[10]\(23) <= \<const0>\;
  \core_control_regs[10]\(22) <= \<const0>\;
  \core_control_regs[10]\(21) <= \<const0>\;
  \core_control_regs[10]\(20) <= \<const0>\;
  \core_control_regs[10]\(19) <= \<const0>\;
  \core_control_regs[10]\(18) <= \<const0>\;
  \core_control_regs[10]\(17) <= \<const0>\;
  \core_control_regs[10]\(16) <= \<const0>\;
  \core_control_regs[10]\(15) <= \<const0>\;
  \core_control_regs[10]\(14) <= \<const0>\;
  \core_control_regs[10]\(13) <= \<const0>\;
  \core_control_regs[10]\(12) <= \<const1>\;
  \core_control_regs[10]\(11) <= \<const1>\;
  \core_control_regs[10]\(10) <= \<const1>\;
  \core_control_regs[10]\(9) <= \<const0>\;
  \core_control_regs[10]\(8) <= \<const1>\;
  \core_control_regs[10]\(7) <= \<const0>\;
  \core_control_regs[10]\(6) <= \<const0>\;
  \core_control_regs[10]\(5) <= \<const1>\;
  \core_control_regs[10]\(4) <= \<const0>\;
  \core_control_regs[10]\(3) <= \<const1>\;
  \core_control_regs[10]\(2) <= \<const1>\;
  \core_control_regs[10]\(1) <= \<const1>\;
  \core_control_regs[10]\(0) <= \<const1>\;
  \core_control_regs[11]\(31) <= \<const0>\;
  \core_control_regs[11]\(30) <= \<const0>\;
  \core_control_regs[11]\(29) <= \<const0>\;
  \core_control_regs[11]\(28) <= \<const0>\;
  \core_control_regs[11]\(27) <= \<const0>\;
  \core_control_regs[11]\(26) <= \<const0>\;
  \core_control_regs[11]\(25) <= \<const0>\;
  \core_control_regs[11]\(24) <= \<const0>\;
  \core_control_regs[11]\(23) <= \<const0>\;
  \core_control_regs[11]\(22) <= \<const0>\;
  \core_control_regs[11]\(21) <= \<const0>\;
  \core_control_regs[11]\(20) <= \<const0>\;
  \core_control_regs[11]\(19) <= \<const0>\;
  \core_control_regs[11]\(18) <= \<const0>\;
  \core_control_regs[11]\(17) <= \<const0>\;
  \core_control_regs[11]\(16) <= \<const0>\;
  \core_control_regs[11]\(15) <= \<const1>\;
  \core_control_regs[11]\(14) <= \<const1>\;
  \core_control_regs[11]\(13) <= \<const1>\;
  \core_control_regs[11]\(12) <= \<const0>\;
  \core_control_regs[11]\(11) <= \<const0>\;
  \core_control_regs[11]\(10) <= \<const0>\;
  \core_control_regs[11]\(9) <= \<const0>\;
  \core_control_regs[11]\(8) <= \<const0>\;
  \core_control_regs[11]\(7) <= \<const1>\;
  \core_control_regs[11]\(6) <= \<const0>\;
  \core_control_regs[11]\(5) <= \<const0>\;
  \core_control_regs[11]\(4) <= \<const1>\;
  \core_control_regs[11]\(3) <= \<const0>\;
  \core_control_regs[11]\(2) <= \<const1>\;
  \core_control_regs[11]\(1) <= \<const0>\;
  \core_control_regs[11]\(0) <= \<const1>\;
  \core_control_regs[12]\(31) <= \<const0>\;
  \core_control_regs[12]\(30) <= \<const0>\;
  \core_control_regs[12]\(29) <= \<const0>\;
  \core_control_regs[12]\(28) <= \<const0>\;
  \core_control_regs[12]\(27) <= \<const0>\;
  \core_control_regs[12]\(26) <= \<const0>\;
  \core_control_regs[12]\(25) <= \<const0>\;
  \core_control_regs[12]\(24) <= \<const0>\;
  \core_control_regs[12]\(23) <= \<const0>\;
  \core_control_regs[12]\(22) <= \<const0>\;
  \core_control_regs[12]\(21) <= \<const0>\;
  \core_control_regs[12]\(20) <= \<const0>\;
  \core_control_regs[12]\(19) <= \<const0>\;
  \core_control_regs[12]\(18) <= \<const0>\;
  \core_control_regs[12]\(17) <= \<const0>\;
  \core_control_regs[12]\(16) <= \<const0>\;
  \core_control_regs[12]\(15) <= \<const0>\;
  \core_control_regs[12]\(14) <= \<const1>\;
  \core_control_regs[12]\(13) <= \<const1>\;
  \core_control_regs[12]\(12) <= \<const1>\;
  \core_control_regs[12]\(11) <= \<const1>\;
  \core_control_regs[12]\(10) <= \<const1>\;
  \core_control_regs[12]\(9) <= \<const0>\;
  \core_control_regs[12]\(8) <= \<const1>\;
  \core_control_regs[12]\(7) <= \<const1>\;
  \core_control_regs[12]\(6) <= \<const1>\;
  \core_control_regs[12]\(5) <= \<const1>\;
  \core_control_regs[12]\(4) <= \<const1>\;
  \core_control_regs[12]\(3) <= \<const1>\;
  \core_control_regs[12]\(2) <= \<const0>\;
  \core_control_regs[12]\(1) <= \<const1>\;
  \core_control_regs[12]\(0) <= \<const0>\;
  \core_control_regs[1]\(31) <= \<const0>\;
  \core_control_regs[1]\(30) <= \<const0>\;
  \core_control_regs[1]\(29) <= \<const0>\;
  \core_control_regs[1]\(28) <= \<const0>\;
  \core_control_regs[1]\(27) <= \<const0>\;
  \core_control_regs[1]\(26) <= \<const0>\;
  \core_control_regs[1]\(25) <= \<const0>\;
  \core_control_regs[1]\(24) <= \<const0>\;
  \core_control_regs[1]\(23) <= \<const0>\;
  \core_control_regs[1]\(22) <= \<const0>\;
  \core_control_regs[1]\(21) <= \<const0>\;
  \core_control_regs[1]\(20) <= \<const0>\;
  \core_control_regs[1]\(19) <= \<const0>\;
  \core_control_regs[1]\(18) <= \<const0>\;
  \core_control_regs[1]\(17) <= \<const0>\;
  \core_control_regs[1]\(16) <= \<const0>\;
  \core_control_regs[1]\(15) <= \<const0>\;
  \core_control_regs[1]\(14) <= \<const0>\;
  \core_control_regs[1]\(13) <= \<const0>\;
  \core_control_regs[1]\(12) <= \<const0>\;
  \core_control_regs[1]\(11) <= \<const0>\;
  \core_control_regs[1]\(10) <= \<const0>\;
  \core_control_regs[1]\(9) <= \<const0>\;
  \core_control_regs[1]\(8) <= \<const0>\;
  \core_control_regs[1]\(7) <= \<const0>\;
  \core_control_regs[1]\(6) <= \<const0>\;
  \core_control_regs[1]\(5) <= \<const0>\;
  \core_control_regs[1]\(4) <= \<const0>\;
  \core_control_regs[1]\(3) <= \<const0>\;
  \core_control_regs[1]\(2) <= \<const0>\;
  \core_control_regs[1]\(1) <= \<const0>\;
  \core_control_regs[1]\(0) <= \<const0>\;
  \core_control_regs[2]\(31) <= \<const0>\;
  \core_control_regs[2]\(30) <= \<const0>\;
  \core_control_regs[2]\(29) <= \<const0>\;
  \core_control_regs[2]\(28) <= \<const0>\;
  \core_control_regs[2]\(27) <= \<const0>\;
  \core_control_regs[2]\(26) <= \<const0>\;
  \core_control_regs[2]\(25) <= \<const0>\;
  \core_control_regs[2]\(24) <= \<const0>\;
  \core_control_regs[2]\(23) <= \<const0>\;
  \core_control_regs[2]\(22) <= \<const0>\;
  \core_control_regs[2]\(21) <= \<const0>\;
  \core_control_regs[2]\(20) <= \<const0>\;
  \core_control_regs[2]\(19) <= \<const0>\;
  \core_control_regs[2]\(18) <= \<const0>\;
  \core_control_regs[2]\(17) <= \<const0>\;
  \core_control_regs[2]\(16) <= \<const0>\;
  \core_control_regs[2]\(15) <= \<const0>\;
  \core_control_regs[2]\(14) <= \<const0>\;
  \core_control_regs[2]\(13) <= \<const0>\;
  \core_control_regs[2]\(12) <= \<const0>\;
  \core_control_regs[2]\(11) <= \<const0>\;
  \core_control_regs[2]\(10) <= \<const0>\;
  \core_control_regs[2]\(9) <= \<const1>\;
  \core_control_regs[2]\(8) <= \<const1>\;
  \core_control_regs[2]\(7) <= \<const1>\;
  \core_control_regs[2]\(6) <= \<const1>\;
  \core_control_regs[2]\(5) <= \<const1>\;
  \core_control_regs[2]\(4) <= \<const1>\;
  \core_control_regs[2]\(3) <= \<const1>\;
  \core_control_regs[2]\(2) <= \<const1>\;
  \core_control_regs[2]\(1) <= \<const1>\;
  \core_control_regs[2]\(0) <= \<const1>\;
  \core_control_regs[3]\(31) <= \<const0>\;
  \core_control_regs[3]\(30) <= \<const0>\;
  \core_control_regs[3]\(29) <= \<const0>\;
  \core_control_regs[3]\(28) <= \<const0>\;
  \core_control_regs[3]\(27) <= \<const0>\;
  \core_control_regs[3]\(26) <= \<const0>\;
  \core_control_regs[3]\(25) <= \<const0>\;
  \core_control_regs[3]\(24) <= \<const0>\;
  \core_control_regs[3]\(23) <= \<const0>\;
  \core_control_regs[3]\(22) <= \<const0>\;
  \core_control_regs[3]\(21) <= \<const0>\;
  \core_control_regs[3]\(20) <= \<const0>\;
  \core_control_regs[3]\(19) <= \<const0>\;
  \core_control_regs[3]\(18) <= \<const0>\;
  \core_control_regs[3]\(17) <= \<const0>\;
  \core_control_regs[3]\(16) <= \<const0>\;
  \core_control_regs[3]\(15) <= \<const0>\;
  \core_control_regs[3]\(14) <= \<const0>\;
  \core_control_regs[3]\(13) <= \<const0>\;
  \core_control_regs[3]\(12) <= \<const0>\;
  \core_control_regs[3]\(11) <= \<const0>\;
  \core_control_regs[3]\(10) <= \<const0>\;
  \core_control_regs[3]\(9) <= \<const0>\;
  \core_control_regs[3]\(8) <= \<const0>\;
  \core_control_regs[3]\(7) <= \<const0>\;
  \core_control_regs[3]\(6) <= \<const0>\;
  \core_control_regs[3]\(5) <= \<const0>\;
  \core_control_regs[3]\(4) <= \<const0>\;
  \core_control_regs[3]\(3) <= \<const0>\;
  \core_control_regs[3]\(2) <= \<const0>\;
  \core_control_regs[3]\(1) <= \<const0>\;
  \core_control_regs[3]\(0) <= \<const0>\;
  \core_control_regs[4]\(31) <= \<const0>\;
  \core_control_regs[4]\(30) <= \<const0>\;
  \core_control_regs[4]\(29) <= \<const0>\;
  \core_control_regs[4]\(28) <= \<const0>\;
  \core_control_regs[4]\(27) <= \<const0>\;
  \core_control_regs[4]\(26) <= \<const0>\;
  \core_control_regs[4]\(25) <= \<const0>\;
  \core_control_regs[4]\(24) <= \<const0>\;
  \core_control_regs[4]\(23) <= \<const0>\;
  \core_control_regs[4]\(22) <= \<const0>\;
  \core_control_regs[4]\(21) <= \<const0>\;
  \core_control_regs[4]\(20) <= \<const0>\;
  \core_control_regs[4]\(19) <= \<const0>\;
  \core_control_regs[4]\(18) <= \<const0>\;
  \core_control_regs[4]\(17) <= \<const0>\;
  \core_control_regs[4]\(16) <= \<const0>\;
  \core_control_regs[4]\(15) <= \<const0>\;
  \core_control_regs[4]\(14) <= \<const0>\;
  \core_control_regs[4]\(13) <= \<const0>\;
  \core_control_regs[4]\(12) <= \<const0>\;
  \core_control_regs[4]\(11) <= \<const0>\;
  \core_control_regs[4]\(10) <= \<const0>\;
  \core_control_regs[4]\(9) <= \<const1>\;
  \core_control_regs[4]\(8) <= \<const1>\;
  \core_control_regs[4]\(7) <= \<const1>\;
  \core_control_regs[4]\(6) <= \<const1>\;
  \core_control_regs[4]\(5) <= \<const1>\;
  \core_control_regs[4]\(4) <= \<const1>\;
  \core_control_regs[4]\(3) <= \<const1>\;
  \core_control_regs[4]\(2) <= \<const1>\;
  \core_control_regs[4]\(1) <= \<const1>\;
  \core_control_regs[4]\(0) <= \<const1>\;
  \core_control_regs[5]\(31) <= \<const0>\;
  \core_control_regs[5]\(30) <= \<const0>\;
  \core_control_regs[5]\(29) <= \<const0>\;
  \core_control_regs[5]\(28) <= \<const0>\;
  \core_control_regs[5]\(27) <= \<const0>\;
  \core_control_regs[5]\(26) <= \<const0>\;
  \core_control_regs[5]\(25) <= \<const0>\;
  \core_control_regs[5]\(24) <= \<const0>\;
  \core_control_regs[5]\(23) <= \<const0>\;
  \core_control_regs[5]\(22) <= \<const0>\;
  \core_control_regs[5]\(21) <= \<const0>\;
  \core_control_regs[5]\(20) <= \<const0>\;
  \core_control_regs[5]\(19) <= \<const0>\;
  \core_control_regs[5]\(18) <= \<const0>\;
  \core_control_regs[5]\(17) <= \<const0>\;
  \core_control_regs[5]\(16) <= \<const0>\;
  \core_control_regs[5]\(15) <= \<const0>\;
  \core_control_regs[5]\(14) <= \<const0>\;
  \core_control_regs[5]\(13) <= \<const0>\;
  \core_control_regs[5]\(12) <= \<const0>\;
  \core_control_regs[5]\(11) <= \<const0>\;
  \core_control_regs[5]\(10) <= \<const0>\;
  \core_control_regs[5]\(9) <= \<const0>\;
  \core_control_regs[5]\(8) <= \<const0>\;
  \core_control_regs[5]\(7) <= \<const0>\;
  \core_control_regs[5]\(6) <= \<const0>\;
  \core_control_regs[5]\(5) <= \<const0>\;
  \core_control_regs[5]\(4) <= \<const0>\;
  \core_control_regs[5]\(3) <= \<const0>\;
  \core_control_regs[5]\(2) <= \<const0>\;
  \core_control_regs[5]\(1) <= \<const0>\;
  \core_control_regs[5]\(0) <= \<const0>\;
  \core_control_regs[6]\(31) <= \<const0>\;
  \core_control_regs[6]\(30) <= \<const0>\;
  \core_control_regs[6]\(29) <= \<const0>\;
  \core_control_regs[6]\(28) <= \<const0>\;
  \core_control_regs[6]\(27) <= \<const0>\;
  \core_control_regs[6]\(26) <= \<const0>\;
  \core_control_regs[6]\(25) <= \<const0>\;
  \core_control_regs[6]\(24) <= \<const0>\;
  \core_control_regs[6]\(23) <= \<const0>\;
  \core_control_regs[6]\(22) <= \<const0>\;
  \core_control_regs[6]\(21) <= \<const0>\;
  \core_control_regs[6]\(20) <= \<const0>\;
  \core_control_regs[6]\(19) <= \<const0>\;
  \core_control_regs[6]\(18) <= \<const0>\;
  \core_control_regs[6]\(17) <= \<const0>\;
  \core_control_regs[6]\(16) <= \<const0>\;
  \core_control_regs[6]\(15) <= \<const0>\;
  \core_control_regs[6]\(14) <= \<const0>\;
  \core_control_regs[6]\(13) <= \<const0>\;
  \core_control_regs[6]\(12) <= \<const0>\;
  \core_control_regs[6]\(11) <= \<const0>\;
  \core_control_regs[6]\(10) <= \<const0>\;
  \core_control_regs[6]\(9) <= \<const0>\;
  \core_control_regs[6]\(8) <= \<const0>\;
  \core_control_regs[6]\(7) <= \<const0>\;
  \core_control_regs[6]\(6) <= \<const1>\;
  \core_control_regs[6]\(5) <= \<const0>\;
  \core_control_regs[6]\(4) <= \<const0>\;
  \core_control_regs[6]\(3) <= \<const0>\;
  \core_control_regs[6]\(2) <= \<const0>\;
  \core_control_regs[6]\(1) <= \<const0>\;
  \core_control_regs[6]\(0) <= \<const0>\;
  \core_control_regs[7]\(31) <= \<const0>\;
  \core_control_regs[7]\(30) <= \<const0>\;
  \core_control_regs[7]\(29) <= \<const0>\;
  \core_control_regs[7]\(28) <= \<const0>\;
  \core_control_regs[7]\(27) <= \<const0>\;
  \core_control_regs[7]\(26) <= \<const0>\;
  \core_control_regs[7]\(25) <= \<const0>\;
  \core_control_regs[7]\(24) <= \<const0>\;
  \core_control_regs[7]\(23) <= \<const0>\;
  \core_control_regs[7]\(22) <= \<const0>\;
  \core_control_regs[7]\(21) <= \<const0>\;
  \core_control_regs[7]\(20) <= \<const0>\;
  \core_control_regs[7]\(19) <= \<const0>\;
  \core_control_regs[7]\(18) <= \<const0>\;
  \core_control_regs[7]\(17) <= \<const0>\;
  \core_control_regs[7]\(16) <= \<const0>\;
  \core_control_regs[7]\(15) <= \<const0>\;
  \core_control_regs[7]\(14) <= \<const0>\;
  \core_control_regs[7]\(13) <= \<const0>\;
  \core_control_regs[7]\(12) <= \<const0>\;
  \core_control_regs[7]\(11) <= \<const0>\;
  \core_control_regs[7]\(10) <= \<const0>\;
  \core_control_regs[7]\(9) <= \<const1>\;
  \core_control_regs[7]\(8) <= \<const0>\;
  \core_control_regs[7]\(7) <= \<const0>\;
  \core_control_regs[7]\(6) <= \<const0>\;
  \core_control_regs[7]\(5) <= \<const0>\;
  \core_control_regs[7]\(4) <= \<const0>\;
  \core_control_regs[7]\(3) <= \<const0>\;
  \core_control_regs[7]\(2) <= \<const0>\;
  \core_control_regs[7]\(1) <= \<const0>\;
  \core_control_regs[7]\(0) <= \<const0>\;
  \core_control_regs[8]\(31) <= \<const0>\;
  \core_control_regs[8]\(30) <= \<const0>\;
  \core_control_regs[8]\(29) <= \<const0>\;
  \core_control_regs[8]\(28) <= \<const0>\;
  \core_control_regs[8]\(27) <= \<const0>\;
  \core_control_regs[8]\(26) <= \<const0>\;
  \core_control_regs[8]\(25) <= \<const0>\;
  \core_control_regs[8]\(24) <= \<const0>\;
  \core_control_regs[8]\(23) <= \<const0>\;
  \core_control_regs[8]\(22) <= \<const0>\;
  \core_control_regs[8]\(21) <= \<const0>\;
  \core_control_regs[8]\(20) <= \<const0>\;
  \core_control_regs[8]\(19) <= \<const0>\;
  \core_control_regs[8]\(18) <= \<const0>\;
  \core_control_regs[8]\(17) <= \<const0>\;
  \core_control_regs[8]\(16) <= \<const0>\;
  \core_control_regs[8]\(15) <= \<const0>\;
  \core_control_regs[8]\(14) <= \<const0>\;
  \core_control_regs[8]\(13) <= \<const0>\;
  \core_control_regs[8]\(12) <= \<const0>\;
  \core_control_regs[8]\(11) <= \<const0>\;
  \core_control_regs[8]\(10) <= \<const0>\;
  \core_control_regs[8]\(9) <= \<const1>\;
  \core_control_regs[8]\(8) <= \<const0>\;
  \core_control_regs[8]\(7) <= \<const0>\;
  \core_control_regs[8]\(6) <= \<const0>\;
  \core_control_regs[8]\(5) <= \<const0>\;
  \core_control_regs[8]\(4) <= \<const0>\;
  \core_control_regs[8]\(3) <= \<const0>\;
  \core_control_regs[8]\(2) <= \<const0>\;
  \core_control_regs[8]\(1) <= \<const0>\;
  \core_control_regs[8]\(0) <= \<const0>\;
  \core_control_regs[9]\(31) <= \<const0>\;
  \core_control_regs[9]\(30) <= \<const0>\;
  \core_control_regs[9]\(29) <= \<const0>\;
  \core_control_regs[9]\(28) <= \<const0>\;
  \core_control_regs[9]\(27) <= \<const0>\;
  \core_control_regs[9]\(26) <= \<const0>\;
  \core_control_regs[9]\(25) <= \<const0>\;
  \core_control_regs[9]\(24) <= \<const0>\;
  \core_control_regs[9]\(23) <= \<const0>\;
  \core_control_regs[9]\(22) <= \<const0>\;
  \core_control_regs[9]\(21) <= \<const0>\;
  \core_control_regs[9]\(20) <= \<const0>\;
  \core_control_regs[9]\(19) <= \<const0>\;
  \core_control_regs[9]\(18) <= \<const0>\;
  \core_control_regs[9]\(17) <= \<const0>\;
  \core_control_regs[9]\(16) <= \<const0>\;
  \core_control_regs[9]\(15) <= \<const0>\;
  \core_control_regs[9]\(14) <= \<const1>\;
  \core_control_regs[9]\(13) <= \<const0>\;
  \core_control_regs[9]\(12) <= \<const0>\;
  \core_control_regs[9]\(11) <= \<const1>\;
  \core_control_regs[9]\(10) <= \<const1>\;
  \core_control_regs[9]\(9) <= \<const0>\;
  \core_control_regs[9]\(8) <= \<const0>\;
  \core_control_regs[9]\(7) <= \<const1>\;
  \core_control_regs[9]\(6) <= \<const0>\;
  \core_control_regs[9]\(5) <= \<const0>\;
  \core_control_regs[9]\(4) <= \<const0>\;
  \core_control_regs[9]\(3) <= \<const1>\;
  \core_control_regs[9]\(2) <= \<const0>\;
  \core_control_regs[9]\(1) <= \<const1>\;
  \core_control_regs[9]\(0) <= \<const1>\;
  core_d_out <= \<const0>\;
  \genr_control_regs[0]\(31) <= \<const0>\;
  \genr_control_regs[0]\(30) <= \<const0>\;
  \genr_control_regs[0]\(29) <= \<const0>\;
  \genr_control_regs[0]\(28) <= \<const0>\;
  \genr_control_regs[0]\(27) <= \<const0>\;
  \genr_control_regs[0]\(26) <= \<const0>\;
  \genr_control_regs[0]\(25) <= \<const0>\;
  \genr_control_regs[0]\(24) <= \<const0>\;
  \genr_control_regs[0]\(23) <= \<const0>\;
  \genr_control_regs[0]\(22) <= \<const0>\;
  \genr_control_regs[0]\(21) <= \<const0>\;
  \genr_control_regs[0]\(20) <= \<const0>\;
  \genr_control_regs[0]\(19) <= \<const0>\;
  \genr_control_regs[0]\(18) <= \<const0>\;
  \genr_control_regs[0]\(17) <= \<const0>\;
  \genr_control_regs[0]\(16) <= \<const0>\;
  \genr_control_regs[0]\(15) <= \<const0>\;
  \genr_control_regs[0]\(14) <= \<const0>\;
  \genr_control_regs[0]\(13) <= \<const0>\;
  \genr_control_regs[0]\(12) <= \<const0>\;
  \genr_control_regs[0]\(11) <= \<const0>\;
  \genr_control_regs[0]\(10) <= \<const0>\;
  \genr_control_regs[0]\(9) <= \<const0>\;
  \genr_control_regs[0]\(8) <= \<const0>\;
  \genr_control_regs[0]\(7) <= \<const0>\;
  \genr_control_regs[0]\(6) <= \<const0>\;
  \genr_control_regs[0]\(5) <= \<const0>\;
  \genr_control_regs[0]\(4) <= \<const0>\;
  \genr_control_regs[0]\(3) <= \<const0>\;
  \genr_control_regs[0]\(2) <= \<const0>\;
  \genr_control_regs[0]\(1) <= \<const0>\;
  \genr_control_regs[0]\(0) <= \<const1>\;
  \genr_control_regs[1]\(31) <= \<const0>\;
  \genr_control_regs[1]\(30) <= \<const0>\;
  \genr_control_regs[1]\(29) <= \<const0>\;
  \genr_control_regs[1]\(28) <= \<const0>\;
  \genr_control_regs[1]\(27) <= \<const0>\;
  \genr_control_regs[1]\(26) <= \<const0>\;
  \genr_control_regs[1]\(25) <= \<const0>\;
  \genr_control_regs[1]\(24) <= \<const0>\;
  \genr_control_regs[1]\(23) <= \<const0>\;
  \genr_control_regs[1]\(22) <= \<const0>\;
  \genr_control_regs[1]\(21) <= \<const0>\;
  \genr_control_regs[1]\(20) <= \<const0>\;
  \genr_control_regs[1]\(19) <= \<const0>\;
  \genr_control_regs[1]\(18) <= \<const0>\;
  \genr_control_regs[1]\(17) <= \<const0>\;
  \genr_control_regs[1]\(16) <= \<const0>\;
  \genr_control_regs[1]\(15) <= \<const0>\;
  \genr_control_regs[1]\(14) <= \<const0>\;
  \genr_control_regs[1]\(13) <= \<const0>\;
  \genr_control_regs[1]\(12) <= \<const0>\;
  \genr_control_regs[1]\(11) <= \<const0>\;
  \genr_control_regs[1]\(10) <= \<const0>\;
  \genr_control_regs[1]\(9) <= \<const0>\;
  \genr_control_regs[1]\(8) <= \<const0>\;
  \genr_control_regs[1]\(7) <= \<const0>\;
  \genr_control_regs[1]\(6) <= \<const0>\;
  \genr_control_regs[1]\(5) <= \<const0>\;
  \genr_control_regs[1]\(4) <= \<const0>\;
  \genr_control_regs[1]\(3) <= \<const0>\;
  \genr_control_regs[1]\(2) <= \<const0>\;
  \genr_control_regs[1]\(1) <= \<const0>\;
  \genr_control_regs[1]\(0) <= \<const0>\;
  \genr_control_regs[2]\(31) <= \<const0>\;
  \genr_control_regs[2]\(30) <= \<const0>\;
  \genr_control_regs[2]\(29) <= \<const0>\;
  \genr_control_regs[2]\(28) <= \<const0>\;
  \genr_control_regs[2]\(27) <= \<const0>\;
  \genr_control_regs[2]\(26) <= \<const0>\;
  \genr_control_regs[2]\(25) <= \<const0>\;
  \genr_control_regs[2]\(24) <= \<const0>\;
  \genr_control_regs[2]\(23) <= \<const0>\;
  \genr_control_regs[2]\(22) <= \<const0>\;
  \genr_control_regs[2]\(21) <= \<const0>\;
  \genr_control_regs[2]\(20) <= \<const0>\;
  \genr_control_regs[2]\(19) <= \<const0>\;
  \genr_control_regs[2]\(18) <= \<const0>\;
  \genr_control_regs[2]\(17) <= \<const0>\;
  \genr_control_regs[2]\(16) <= \<const0>\;
  \genr_control_regs[2]\(15) <= \<const0>\;
  \genr_control_regs[2]\(14) <= \<const0>\;
  \genr_control_regs[2]\(13) <= \<const0>\;
  \genr_control_regs[2]\(12) <= \<const0>\;
  \genr_control_regs[2]\(11) <= \<const0>\;
  \genr_control_regs[2]\(10) <= \<const0>\;
  \genr_control_regs[2]\(9) <= \<const0>\;
  \genr_control_regs[2]\(8) <= \<const0>\;
  \genr_control_regs[2]\(7) <= \<const0>\;
  \genr_control_regs[2]\(6) <= \<const0>\;
  \genr_control_regs[2]\(5) <= \<const0>\;
  \genr_control_regs[2]\(4) <= \<const0>\;
  \genr_control_regs[2]\(3) <= \<const0>\;
  \genr_control_regs[2]\(2) <= \<const0>\;
  \genr_control_regs[2]\(1) <= \<const0>\;
  \genr_control_regs[2]\(0) <= \<const0>\;
  \genr_control_regs[3]\(31) <= \<const0>\;
  \genr_control_regs[3]\(30) <= \<const0>\;
  \genr_control_regs[3]\(29) <= \<const0>\;
  \genr_control_regs[3]\(28) <= \<const0>\;
  \genr_control_regs[3]\(27) <= \<const0>\;
  \genr_control_regs[3]\(26) <= \<const0>\;
  \genr_control_regs[3]\(25) <= \<const0>\;
  \genr_control_regs[3]\(24) <= \<const0>\;
  \genr_control_regs[3]\(23) <= \<const0>\;
  \genr_control_regs[3]\(22) <= \<const0>\;
  \genr_control_regs[3]\(21) <= \<const0>\;
  \genr_control_regs[3]\(20) <= \<const0>\;
  \genr_control_regs[3]\(19) <= \<const0>\;
  \genr_control_regs[3]\(18) <= \<const0>\;
  \genr_control_regs[3]\(17) <= \<const0>\;
  \genr_control_regs[3]\(16) <= \<const0>\;
  \genr_control_regs[3]\(15) <= \<const0>\;
  \genr_control_regs[3]\(14) <= \<const0>\;
  \genr_control_regs[3]\(13) <= \<const0>\;
  \genr_control_regs[3]\(12) <= \<const0>\;
  \genr_control_regs[3]\(11) <= \<const0>\;
  \genr_control_regs[3]\(10) <= \<const0>\;
  \genr_control_regs[3]\(9) <= \<const0>\;
  \genr_control_regs[3]\(8) <= \<const0>\;
  \genr_control_regs[3]\(7) <= \<const0>\;
  \genr_control_regs[3]\(6) <= \<const0>\;
  \genr_control_regs[3]\(5) <= \<const0>\;
  \genr_control_regs[3]\(4) <= \<const0>\;
  \genr_control_regs[3]\(3) <= \<const0>\;
  \genr_control_regs[3]\(2) <= \<const0>\;
  \genr_control_regs[3]\(1) <= \<const0>\;
  \genr_control_regs[3]\(0) <= \<const0>\;
  \genr_control_regs[4]\(31) <= \<const0>\;
  \genr_control_regs[4]\(30) <= \<const0>\;
  \genr_control_regs[4]\(29) <= \<const0>\;
  \genr_control_regs[4]\(28) <= \<const0>\;
  \genr_control_regs[4]\(27) <= \<const0>\;
  \genr_control_regs[4]\(26) <= \<const0>\;
  \genr_control_regs[4]\(25) <= \<const0>\;
  \genr_control_regs[4]\(24) <= \<const0>\;
  \genr_control_regs[4]\(23) <= \<const0>\;
  \genr_control_regs[4]\(22) <= \<const0>\;
  \genr_control_regs[4]\(21) <= \<const0>\;
  \genr_control_regs[4]\(20) <= \<const0>\;
  \genr_control_regs[4]\(19) <= \<const0>\;
  \genr_control_regs[4]\(18) <= \<const0>\;
  \genr_control_regs[4]\(17) <= \<const0>\;
  \genr_control_regs[4]\(16) <= \<const0>\;
  \genr_control_regs[4]\(15) <= \<const0>\;
  \genr_control_regs[4]\(14) <= \<const0>\;
  \genr_control_regs[4]\(13) <= \<const0>\;
  \genr_control_regs[4]\(12) <= \<const0>\;
  \genr_control_regs[4]\(11) <= \<const0>\;
  \genr_control_regs[4]\(10) <= \<const0>\;
  \genr_control_regs[4]\(9) <= \<const0>\;
  \genr_control_regs[4]\(8) <= \<const0>\;
  \genr_control_regs[4]\(7) <= \<const0>\;
  \genr_control_regs[4]\(6) <= \<const0>\;
  \genr_control_regs[4]\(5) <= \<const0>\;
  \genr_control_regs[4]\(4) <= \<const0>\;
  \genr_control_regs[4]\(3) <= \<const0>\;
  \genr_control_regs[4]\(2) <= \<const0>\;
  \genr_control_regs[4]\(1) <= \<const0>\;
  \genr_control_regs[4]\(0) <= \<const0>\;
  \genr_control_regs[5]\(31) <= \<const0>\;
  \genr_control_regs[5]\(30) <= \<const0>\;
  \genr_control_regs[5]\(29) <= \<const0>\;
  \genr_control_regs[5]\(28) <= \<const0>\;
  \genr_control_regs[5]\(27) <= \<const0>\;
  \genr_control_regs[5]\(26) <= \<const0>\;
  \genr_control_regs[5]\(25) <= \<const0>\;
  \genr_control_regs[5]\(24) <= \<const0>\;
  \genr_control_regs[5]\(23) <= \<const0>\;
  \genr_control_regs[5]\(22) <= \<const0>\;
  \genr_control_regs[5]\(21) <= \<const0>\;
  \genr_control_regs[5]\(20) <= \<const0>\;
  \genr_control_regs[5]\(19) <= \<const0>\;
  \genr_control_regs[5]\(18) <= \<const0>\;
  \genr_control_regs[5]\(17) <= \<const0>\;
  \genr_control_regs[5]\(16) <= \<const0>\;
  \genr_control_regs[5]\(15) <= \<const0>\;
  \genr_control_regs[5]\(14) <= \<const0>\;
  \genr_control_regs[5]\(13) <= \<const0>\;
  \genr_control_regs[5]\(12) <= \<const0>\;
  \genr_control_regs[5]\(11) <= \<const0>\;
  \genr_control_regs[5]\(10) <= \<const0>\;
  \genr_control_regs[5]\(9) <= \<const0>\;
  \genr_control_regs[5]\(8) <= \<const0>\;
  \genr_control_regs[5]\(7) <= \<const0>\;
  \genr_control_regs[5]\(6) <= \<const0>\;
  \genr_control_regs[5]\(5) <= \<const0>\;
  \genr_control_regs[5]\(4) <= \<const0>\;
  \genr_control_regs[5]\(3) <= \<const0>\;
  \genr_control_regs[5]\(2) <= \<const0>\;
  \genr_control_regs[5]\(1) <= \<const0>\;
  \genr_control_regs[5]\(0) <= \<const0>\;
  \genr_control_regs[6]\(31) <= \<const0>\;
  \genr_control_regs[6]\(30) <= \<const0>\;
  \genr_control_regs[6]\(29) <= \<const0>\;
  \genr_control_regs[6]\(28) <= \<const0>\;
  \genr_control_regs[6]\(27) <= \<const0>\;
  \genr_control_regs[6]\(26) <= \<const0>\;
  \genr_control_regs[6]\(25) <= \<const0>\;
  \genr_control_regs[6]\(24) <= \<const0>\;
  \genr_control_regs[6]\(23) <= \<const0>\;
  \genr_control_regs[6]\(22) <= \<const0>\;
  \genr_control_regs[6]\(21) <= \<const0>\;
  \genr_control_regs[6]\(20) <= \<const0>\;
  \genr_control_regs[6]\(19) <= \<const0>\;
  \genr_control_regs[6]\(18) <= \<const0>\;
  \genr_control_regs[6]\(17) <= \<const0>\;
  \genr_control_regs[6]\(16) <= \<const0>\;
  \genr_control_regs[6]\(15) <= \<const0>\;
  \genr_control_regs[6]\(14) <= \<const0>\;
  \genr_control_regs[6]\(13) <= \<const0>\;
  \genr_control_regs[6]\(12) <= \<const0>\;
  \genr_control_regs[6]\(11) <= \<const0>\;
  \genr_control_regs[6]\(10) <= \<const0>\;
  \genr_control_regs[6]\(9) <= \<const0>\;
  \genr_control_regs[6]\(8) <= \<const0>\;
  \genr_control_regs[6]\(7) <= \<const0>\;
  \genr_control_regs[6]\(6) <= \<const0>\;
  \genr_control_regs[6]\(5) <= \<const0>\;
  \genr_control_regs[6]\(4) <= \<const0>\;
  \genr_control_regs[6]\(3) <= \<const0>\;
  \genr_control_regs[6]\(2) <= \<const0>\;
  \genr_control_regs[6]\(1) <= \<const0>\;
  \genr_control_regs[6]\(0) <= \<const0>\;
  \genr_control_regs[7]\(31) <= \<const0>\;
  \genr_control_regs[7]\(30) <= \<const0>\;
  \genr_control_regs[7]\(29) <= \<const0>\;
  \genr_control_regs[7]\(28) <= \<const0>\;
  \genr_control_regs[7]\(27) <= \<const0>\;
  \genr_control_regs[7]\(26) <= \<const0>\;
  \genr_control_regs[7]\(25) <= \<const0>\;
  \genr_control_regs[7]\(24) <= \<const0>\;
  \genr_control_regs[7]\(23) <= \<const0>\;
  \genr_control_regs[7]\(22) <= \<const0>\;
  \genr_control_regs[7]\(21) <= \<const0>\;
  \genr_control_regs[7]\(20) <= \<const0>\;
  \genr_control_regs[7]\(19) <= \<const0>\;
  \genr_control_regs[7]\(18) <= \<const0>\;
  \genr_control_regs[7]\(17) <= \<const0>\;
  \genr_control_regs[7]\(16) <= \<const0>\;
  \genr_control_regs[7]\(15) <= \<const0>\;
  \genr_control_regs[7]\(14) <= \<const0>\;
  \genr_control_regs[7]\(13) <= \<const0>\;
  \genr_control_regs[7]\(12) <= \<const0>\;
  \genr_control_regs[7]\(11) <= \<const0>\;
  \genr_control_regs[7]\(10) <= \<const0>\;
  \genr_control_regs[7]\(9) <= \<const0>\;
  \genr_control_regs[7]\(8) <= \<const0>\;
  \genr_control_regs[7]\(7) <= \<const0>\;
  \genr_control_regs[7]\(6) <= \<const0>\;
  \genr_control_regs[7]\(5) <= \<const0>\;
  \genr_control_regs[7]\(4) <= \<const0>\;
  \genr_control_regs[7]\(3) <= \<const0>\;
  \genr_control_regs[7]\(2) <= \<const0>\;
  \genr_control_regs[7]\(1) <= \<const0>\;
  \genr_control_regs[7]\(0) <= \<const0>\;
  ipif_addr_out(8) <= \<const0>\;
  ipif_addr_out(7) <= \<const0>\;
  ipif_addr_out(6) <= \<const0>\;
  ipif_addr_out(5) <= \<const0>\;
  ipif_addr_out(4) <= \<const0>\;
  ipif_addr_out(3) <= \<const0>\;
  ipif_addr_out(2) <= \<const0>\;
  ipif_addr_out(1) <= \<const0>\;
  ipif_addr_out(0) <= \<const0>\;
  ipif_cs_out <= \<const0>\;
  ipif_data_out(31) <= \<const0>\;
  ipif_data_out(30) <= \<const0>\;
  ipif_data_out(29) <= \<const0>\;
  ipif_data_out(28) <= \<const0>\;
  ipif_data_out(27) <= \<const0>\;
  ipif_data_out(26) <= \<const0>\;
  ipif_data_out(25) <= \<const0>\;
  ipif_data_out(24) <= \<const0>\;
  ipif_data_out(23) <= \<const0>\;
  ipif_data_out(22) <= \<const0>\;
  ipif_data_out(21) <= \<const0>\;
  ipif_data_out(20) <= \<const0>\;
  ipif_data_out(19) <= \<const0>\;
  ipif_data_out(18) <= \<const0>\;
  ipif_data_out(17) <= \<const0>\;
  ipif_data_out(16) <= \<const0>\;
  ipif_data_out(15) <= \<const0>\;
  ipif_data_out(14) <= \<const0>\;
  ipif_data_out(13) <= \<const0>\;
  ipif_data_out(12) <= \<const0>\;
  ipif_data_out(11) <= \<const0>\;
  ipif_data_out(10) <= \<const0>\;
  ipif_data_out(9) <= \<const0>\;
  ipif_data_out(8) <= \<const0>\;
  ipif_data_out(7) <= \<const0>\;
  ipif_data_out(6) <= \<const0>\;
  ipif_data_out(5) <= \<const0>\;
  ipif_data_out(4) <= \<const0>\;
  ipif_data_out(3) <= \<const0>\;
  ipif_data_out(2) <= \<const0>\;
  ipif_data_out(1) <= \<const0>\;
  ipif_data_out(0) <= \<const0>\;
  ipif_rnw_out <= \<const1>\;
  irq <= \<const0>\;
  resetn_out <= \^vid_aresetn\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  \time_control_regs[0]\(31) <= \<const0>\;
  \time_control_regs[0]\(30) <= \<const0>\;
  \time_control_regs[0]\(29) <= \<const0>\;
  \time_control_regs[0]\(28) <= \<const0>\;
  \time_control_regs[0]\(27) <= \<const0>\;
  \time_control_regs[0]\(26) <= \<const0>\;
  \time_control_regs[0]\(25) <= \<const1>\;
  \time_control_regs[0]\(24) <= \<const0>\;
  \time_control_regs[0]\(23) <= \<const1>\;
  \time_control_regs[0]\(22) <= \<const1>\;
  \time_control_regs[0]\(21) <= \<const0>\;
  \time_control_regs[0]\(20) <= \<const1>\;
  \time_control_regs[0]\(19) <= \<const0>\;
  \time_control_regs[0]\(18) <= \<const0>\;
  \time_control_regs[0]\(17) <= \<const0>\;
  \time_control_regs[0]\(16) <= \<const0>\;
  \time_control_regs[0]\(15) <= \<const0>\;
  \time_control_regs[0]\(14) <= \<const0>\;
  \time_control_regs[0]\(13) <= \<const0>\;
  \time_control_regs[0]\(12) <= \<const0>\;
  \time_control_regs[0]\(11) <= \<const0>\;
  \time_control_regs[0]\(10) <= \<const1>\;
  \time_control_regs[0]\(9) <= \<const0>\;
  \time_control_regs[0]\(8) <= \<const1>\;
  \time_control_regs[0]\(7) <= \<const0>\;
  \time_control_regs[0]\(6) <= \<const0>\;
  \time_control_regs[0]\(5) <= \<const0>\;
  \time_control_regs[0]\(4) <= \<const0>\;
  \time_control_regs[0]\(3) <= \<const0>\;
  \time_control_regs[0]\(2) <= \<const0>\;
  \time_control_regs[0]\(1) <= \<const0>\;
  \time_control_regs[0]\(0) <= \<const0>\;
  \time_control_regs[1]\(31) <= \<const0>\;
  \time_control_regs[1]\(30) <= \<const0>\;
  \time_control_regs[1]\(29) <= \<const0>\;
  \time_control_regs[1]\(28) <= \<const0>\;
  \time_control_regs[1]\(27) <= \<const0>\;
  \time_control_regs[1]\(26) <= \<const0>\;
  \time_control_regs[1]\(25) <= \<const0>\;
  \time_control_regs[1]\(24) <= \<const0>\;
  \time_control_regs[1]\(23) <= \<const0>\;
  \time_control_regs[1]\(22) <= \<const0>\;
  \time_control_regs[1]\(21) <= \<const0>\;
  \time_control_regs[1]\(20) <= \<const0>\;
  \time_control_regs[1]\(19) <= \<const0>\;
  \time_control_regs[1]\(18) <= \<const0>\;
  \time_control_regs[1]\(17) <= \<const0>\;
  \time_control_regs[1]\(16) <= \<const0>\;
  \time_control_regs[1]\(15) <= \<const0>\;
  \time_control_regs[1]\(14) <= \<const0>\;
  \time_control_regs[1]\(13) <= \<const0>\;
  \time_control_regs[1]\(12) <= \<const0>\;
  \time_control_regs[1]\(11) <= \<const0>\;
  \time_control_regs[1]\(10) <= \<const0>\;
  \time_control_regs[1]\(9) <= \<const0>\;
  \time_control_regs[1]\(8) <= \<const0>\;
  \time_control_regs[1]\(7) <= \<const0>\;
  \time_control_regs[1]\(6) <= \<const0>\;
  \time_control_regs[1]\(5) <= \<const0>\;
  \time_control_regs[1]\(4) <= \<const0>\;
  \time_control_regs[1]\(3) <= \<const0>\;
  \time_control_regs[1]\(2) <= \<const0>\;
  \time_control_regs[1]\(1) <= \<const0>\;
  \time_control_regs[1]\(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_max_sat is
  port (
    S : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 4 downto 0 );
    p : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \core_control_regs[3]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[2]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_max_sat : entity is "max_sat";
end design_1_v_rgb2ycrcb_0_0_max_sat;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_max_sat is
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal gtOp_carry_n_4 : STD_LOGIC;
  signal gtOp_carry_n_5 : STD_LOGIC;
  signal gtOp_carry_n_6 : STD_LOGIC;
  signal gtOp_carry_n_7 : STD_LOGIC;
  signal \needs_delay.shift_register[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][10]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][11]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][9]_i_1_n_0\ : STD_LOGIC;
  signal reg_n_0 : STD_LOGIC;
  signal reg_n_1 : STD_LOGIC;
  signal reg_n_10 : STD_LOGIC;
  signal reg_n_11 : STD_LOGIC;
  signal reg_n_2 : STD_LOGIC;
  signal reg_n_3 : STD_LOGIC;
  signal reg_n_4 : STD_LOGIC;
  signal reg_n_5 : STD_LOGIC;
  signal reg_n_6 : STD_LOGIC;
  signal reg_n_7 : STD_LOGIC;
  signal reg_n_8 : STD_LOGIC;
  signal reg_n_9 : STD_LOGIC;
  signal NLW_gtOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of gtOp_carry : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][8]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][9]_i_1\ : label is "soft_lutpair41";
begin
gtOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_gtOp_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => gtOp_carry_n_2,
      CO(4) => gtOp_carry_n_3,
      CO(3) => gtOp_carry_n_4,
      CO(2) => gtOp_carry_n_5,
      CO(1) => gtOp_carry_n_6,
      CO(0) => gtOp_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => reg_n_0,
      DI(4) => reg_n_1,
      DI(3) => reg_n_2,
      DI(2) => reg_n_3,
      DI(1) => reg_n_4,
      DI(0) => reg_n_5,
      O(7 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => reg_n_6,
      S(4) => reg_n_7,
      S(3) => reg_n_8,
      S(2) => reg_n_9,
      S(1) => reg_n_10,
      S(0) => reg_n_11
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(0),
      I1 => p(0),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][0]_i_1_n_0\
    );
\needs_delay.shift_register[1][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(10),
      I1 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][10]_i_1_n_0\
    );
\needs_delay.shift_register[1][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(11),
      I1 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][11]_i_1_n_0\
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(1),
      I1 => p(1),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][1]_i_1_n_0\
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(2),
      I1 => p(2),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][2]_i_1_n_0\
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(3),
      I1 => p(3),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][3]_i_1_n_0\
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(4),
      I1 => p(4),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][4]_i_1_n_0\
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(5),
      I1 => p(5),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][5]_i_1_n_0\
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(6),
      I1 => p(6),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][6]_i_1_n_0\
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(7),
      I1 => p(7),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][7]_i_1_n_0\
    );
\needs_delay.shift_register[1][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(8),
      I1 => p(8),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][8]_i_1_n_0\
    );
\needs_delay.shift_register[1][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(9),
      I1 => p(9),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][9]_i_1_n_0\
    );
reg: entity work.\design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_13\
     port map (
      D(11) => \needs_delay.shift_register[1][11]_i_1_n_0\,
      D(10) => \needs_delay.shift_register[1][10]_i_1_n_0\,
      D(9) => \needs_delay.shift_register[1][9]_i_1_n_0\,
      D(8) => \needs_delay.shift_register[1][8]_i_1_n_0\,
      D(7) => \needs_delay.shift_register[1][7]_i_1_n_0\,
      D(6) => \needs_delay.shift_register[1][6]_i_1_n_0\,
      D(5) => \needs_delay.shift_register[1][5]_i_1_n_0\,
      D(4) => \needs_delay.shift_register[1][4]_i_1_n_0\,
      D(3) => \needs_delay.shift_register[1][3]_i_1_n_0\,
      D(2) => \needs_delay.shift_register[1][2]_i_1_n_0\,
      D(1) => \needs_delay.shift_register[1][1]_i_1_n_0\,
      D(0) => \needs_delay.shift_register[1][0]_i_1_n_0\,
      DI(5) => reg_n_0,
      DI(4) => reg_n_1,
      DI(3) => reg_n_2,
      DI(2) => reg_n_3,
      DI(1) => reg_n_4,
      DI(0) => reg_n_5,
      E(0) => E(0),
      Q(10 downto 0) => Q(10 downto 0),
      S(5) => reg_n_6,
      S(4) => reg_n_7,
      S(3) => reg_n_8,
      S(2) => reg_n_9,
      S(1) => reg_n_10,
      S(0) => reg_n_11,
      aclk => aclk,
      \core_control_regs[2]\(9 downto 0) => \core_control_regs[2]\(9 downto 0),
      \core_control_regs[3]\(9 downto 0) => \core_control_regs[3]\(9 downto 0),
      \needs_delay.shift_register_reg[1][10]_0\(5 downto 0) => S(5 downto 0),
      \needs_delay.shift_register_reg[1][8]_0\(4 downto 0) => DI(4 downto 0),
      p(11 downto 0) => p(11 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_max_sat_2 is
  port (
    S : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 4 downto 0 );
    p : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \core_control_regs[5]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[4]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_max_sat_2 : entity is "max_sat";
end design_1_v_rgb2ycrcb_0_0_max_sat_2;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_max_sat_2 is
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal gtOp_carry_n_4 : STD_LOGIC;
  signal gtOp_carry_n_5 : STD_LOGIC;
  signal gtOp_carry_n_6 : STD_LOGIC;
  signal gtOp_carry_n_7 : STD_LOGIC;
  signal \needs_delay.shift_register[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][10]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][11]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][9]_i_1_n_0\ : STD_LOGIC;
  signal reg_n_0 : STD_LOGIC;
  signal reg_n_1 : STD_LOGIC;
  signal reg_n_10 : STD_LOGIC;
  signal reg_n_11 : STD_LOGIC;
  signal reg_n_2 : STD_LOGIC;
  signal reg_n_3 : STD_LOGIC;
  signal reg_n_4 : STD_LOGIC;
  signal reg_n_5 : STD_LOGIC;
  signal reg_n_6 : STD_LOGIC;
  signal reg_n_7 : STD_LOGIC;
  signal reg_n_8 : STD_LOGIC;
  signal reg_n_9 : STD_LOGIC;
  signal NLW_gtOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of gtOp_carry : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][10]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][11]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][8]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][9]_i_1\ : label is "soft_lutpair47";
begin
gtOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_gtOp_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => gtOp_carry_n_2,
      CO(4) => gtOp_carry_n_3,
      CO(3) => gtOp_carry_n_4,
      CO(2) => gtOp_carry_n_5,
      CO(1) => gtOp_carry_n_6,
      CO(0) => gtOp_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => reg_n_0,
      DI(4) => reg_n_1,
      DI(3) => reg_n_2,
      DI(2) => reg_n_3,
      DI(1) => reg_n_4,
      DI(0) => reg_n_5,
      O(7 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => reg_n_6,
      S(4) => reg_n_7,
      S(3) => reg_n_8,
      S(2) => reg_n_9,
      S(1) => reg_n_10,
      S(0) => reg_n_11
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(0),
      I1 => p(0),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][0]_i_1_n_0\
    );
\needs_delay.shift_register[1][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(10),
      I1 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][10]_i_1_n_0\
    );
\needs_delay.shift_register[1][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(11),
      I1 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][11]_i_1_n_0\
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(1),
      I1 => p(1),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][1]_i_1_n_0\
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(2),
      I1 => p(2),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][2]_i_1_n_0\
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(3),
      I1 => p(3),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][3]_i_1_n_0\
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(4),
      I1 => p(4),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][4]_i_1_n_0\
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(5),
      I1 => p(5),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][5]_i_1_n_0\
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(6),
      I1 => p(6),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][6]_i_1_n_0\
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(7),
      I1 => p(7),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][7]_i_1_n_0\
    );
\needs_delay.shift_register[1][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(8),
      I1 => p(8),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][8]_i_1_n_0\
    );
\needs_delay.shift_register[1][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(9),
      I1 => p(9),
      I2 => gtOp_carry_n_2,
      O => \needs_delay.shift_register[1][9]_i_1_n_0\
    );
reg: entity work.\design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_12\
     port map (
      D(11) => \needs_delay.shift_register[1][11]_i_1_n_0\,
      D(10) => \needs_delay.shift_register[1][10]_i_1_n_0\,
      D(9) => \needs_delay.shift_register[1][9]_i_1_n_0\,
      D(8) => \needs_delay.shift_register[1][8]_i_1_n_0\,
      D(7) => \needs_delay.shift_register[1][7]_i_1_n_0\,
      D(6) => \needs_delay.shift_register[1][6]_i_1_n_0\,
      D(5) => \needs_delay.shift_register[1][5]_i_1_n_0\,
      D(4) => \needs_delay.shift_register[1][4]_i_1_n_0\,
      D(3) => \needs_delay.shift_register[1][3]_i_1_n_0\,
      D(2) => \needs_delay.shift_register[1][2]_i_1_n_0\,
      D(1) => \needs_delay.shift_register[1][1]_i_1_n_0\,
      D(0) => \needs_delay.shift_register[1][0]_i_1_n_0\,
      DI(5) => reg_n_0,
      DI(4) => reg_n_1,
      DI(3) => reg_n_2,
      DI(2) => reg_n_3,
      DI(1) => reg_n_4,
      DI(0) => reg_n_5,
      E(0) => E(0),
      Q(10 downto 0) => Q(10 downto 0),
      S(5) => reg_n_6,
      S(4) => reg_n_7,
      S(3) => reg_n_8,
      S(2) => reg_n_9,
      S(1) => reg_n_10,
      S(0) => reg_n_11,
      aclk => aclk,
      \core_control_regs[4]\(9 downto 0) => \core_control_regs[4]\(9 downto 0),
      \core_control_regs[5]\(9 downto 0) => \core_control_regs[5]\(9 downto 0),
      \needs_delay.shift_register_reg[1][10]_0\(5 downto 0) => S(5 downto 0),
      \needs_delay.shift_register_reg[1][8]_0\(4 downto 0) => DI(4 downto 0),
      p(11 downto 0) => p(11 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_max_sat_3 is
  port (
    \needs_delay.shift_register_reg[1][10]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \needs_delay.shift_register_reg[1][8]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \core_control_regs[1]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[0]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \needs_delay.shift_register_reg[1][0]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][1]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][2]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][3]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][4]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][5]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][6]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][7]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][8]_0\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][9]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][10]_0\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[1][11]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_max_sat_3 : entity is "max_sat";
end design_1_v_rgb2ycrcb_0_0_max_sat_3;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_max_sat_3 is
  signal c : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gtOp : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal gtOp_carry_n_4 : STD_LOGIC;
  signal gtOp_carry_n_5 : STD_LOGIC;
  signal gtOp_carry_n_6 : STD_LOGIC;
  signal gtOp_carry_n_7 : STD_LOGIC;
  signal NLW_gtOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of gtOp_carry : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][10]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][11]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][8]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][9]_i_1\ : label is "soft_lutpair53";
begin
gtOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_gtOp_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => gtOp,
      CO(4) => gtOp_carry_n_3,
      CO(3) => gtOp_carry_n_4,
      CO(2) => gtOp_carry_n_5,
      CO(1) => gtOp_carry_n_6,
      CO(0) => gtOp_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5 downto 0) => DI(5 downto 0),
      O(7 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5 downto 0) => S(5 downto 0)
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(0),
      I1 => \needs_delay.shift_register_reg[1][0]\,
      I2 => gtOp,
      O => c(0)
    );
\needs_delay.shift_register[1][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][10]_0\,
      I1 => gtOp,
      O => c(10)
    );
\needs_delay.shift_register[1][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][11]\,
      I1 => gtOp,
      O => c(11)
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(1),
      I1 => \needs_delay.shift_register_reg[1][1]\,
      I2 => gtOp,
      O => c(1)
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(2),
      I1 => \needs_delay.shift_register_reg[1][2]\,
      I2 => gtOp,
      O => c(2)
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(3),
      I1 => \needs_delay.shift_register_reg[1][3]\,
      I2 => gtOp,
      O => c(3)
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(4),
      I1 => \needs_delay.shift_register_reg[1][4]\,
      I2 => gtOp,
      O => c(4)
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(5),
      I1 => \needs_delay.shift_register_reg[1][5]\,
      I2 => gtOp,
      O => c(5)
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(6),
      I1 => \needs_delay.shift_register_reg[1][6]\,
      I2 => gtOp,
      O => c(6)
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(7),
      I1 => \needs_delay.shift_register_reg[1][7]\,
      I2 => gtOp,
      O => c(7)
    );
\needs_delay.shift_register[1][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(8),
      I1 => \needs_delay.shift_register_reg[1][8]_0\,
      I2 => gtOp,
      O => c(8)
    );
\needs_delay.shift_register[1][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(9),
      I1 => \needs_delay.shift_register_reg[1][9]\,
      I2 => gtOp,
      O => c(9)
    );
reg: entity work.\design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1\
     port map (
      D(11 downto 0) => c(11 downto 0),
      E(0) => E(0),
      Q(10 downto 0) => Q(10 downto 0),
      aclk => aclk,
      \core_control_regs[1]\(9 downto 0) => \core_control_regs[1]\(9 downto 0),
      \needs_delay.shift_register_reg[1][10]_0\(5 downto 0) => \needs_delay.shift_register_reg[1][10]\(5 downto 0),
      \needs_delay.shift_register_reg[1][8]_0\(4 downto 0) => \needs_delay.shift_register_reg[1][8]\(4 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_min_sat is
  port (
    da : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S : in STD_LOGIC_VECTOR ( 5 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[3]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_min_sat : entity is "min_sat";
end design_1_v_rgb2ycrcb_0_0_min_sat;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_min_sat is
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal ltOp_carry_n_4 : STD_LOGIC;
  signal ltOp_carry_n_5 : STD_LOGIC;
  signal ltOp_carry_n_6 : STD_LOGIC;
  signal ltOp_carry_n_7 : STD_LOGIC;
  signal \needs_delay.shift_register[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][9]_i_1_n_0\ : STD_LOGIC;
  signal NLW_ltOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of ltOp_carry : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][8]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][9]_i_1\ : label is "soft_lutpair26";
begin
ltOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_ltOp_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => ltOp_carry_n_2,
      CO(4) => ltOp_carry_n_3,
      CO(3) => ltOp_carry_n_4,
      CO(2) => ltOp_carry_n_5,
      CO(1) => ltOp_carry_n_6,
      CO(0) => ltOp_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => Q(10),
      DI(4 downto 0) => DI(4 downto 0),
      O(7 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5 downto 0) => S(5 downto 0)
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(0),
      I1 => Q(0),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][0]_i_1_n_0\
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(1),
      I1 => Q(1),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][1]_i_1_n_0\
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(2),
      I1 => Q(2),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][2]_i_1_n_0\
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(3),
      I1 => Q(3),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][3]_i_1_n_0\
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(4),
      I1 => Q(4),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][4]_i_1_n_0\
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(5),
      I1 => Q(5),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][5]_i_1_n_0\
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(6),
      I1 => Q(6),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][6]_i_1_n_0\
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(7),
      I1 => Q(7),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][7]_i_1_n_0\
    );
\needs_delay.shift_register[1][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(8),
      I1 => Q(8),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][8]_i_1_n_0\
    );
\needs_delay.shift_register[1][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(9),
      I1 => Q(9),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][9]_i_1_n_0\
    );
reg: entity work.\design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_16\
     port map (
      D(9) => \needs_delay.shift_register[1][9]_i_1_n_0\,
      D(8) => \needs_delay.shift_register[1][8]_i_1_n_0\,
      D(7) => \needs_delay.shift_register[1][7]_i_1_n_0\,
      D(6) => \needs_delay.shift_register[1][6]_i_1_n_0\,
      D(5) => \needs_delay.shift_register[1][5]_i_1_n_0\,
      D(4) => \needs_delay.shift_register[1][4]_i_1_n_0\,
      D(3) => \needs_delay.shift_register[1][3]_i_1_n_0\,
      D(2) => \needs_delay.shift_register[1][2]_i_1_n_0\,
      D(1) => \needs_delay.shift_register[1][1]_i_1_n_0\,
      D(0) => \needs_delay.shift_register[1][0]_i_1_n_0\,
      E(0) => E(0),
      aclk => aclk,
      da(9 downto 0) => da(9 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_min_sat_0 is
  port (
    da : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S : in STD_LOGIC_VECTOR ( 5 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[5]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_min_sat_0 : entity is "min_sat";
end design_1_v_rgb2ycrcb_0_0_min_sat_0;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_min_sat_0 is
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal ltOp_carry_n_4 : STD_LOGIC;
  signal ltOp_carry_n_5 : STD_LOGIC;
  signal ltOp_carry_n_6 : STD_LOGIC;
  signal ltOp_carry_n_7 : STD_LOGIC;
  signal \needs_delay.shift_register[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][9]_i_1_n_0\ : STD_LOGIC;
  signal NLW_ltOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of ltOp_carry : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][8]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][9]_i_1\ : label is "soft_lutpair31";
begin
ltOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_ltOp_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => ltOp_carry_n_2,
      CO(4) => ltOp_carry_n_3,
      CO(3) => ltOp_carry_n_4,
      CO(2) => ltOp_carry_n_5,
      CO(1) => ltOp_carry_n_6,
      CO(0) => ltOp_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => Q(10),
      DI(4 downto 0) => DI(4 downto 0),
      O(7 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5 downto 0) => S(5 downto 0)
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(0),
      I1 => Q(0),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][0]_i_1_n_0\
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(1),
      I1 => Q(1),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][1]_i_1_n_0\
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(2),
      I1 => Q(2),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][2]_i_1_n_0\
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(3),
      I1 => Q(3),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][3]_i_1_n_0\
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(4),
      I1 => Q(4),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][4]_i_1_n_0\
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(5),
      I1 => Q(5),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][5]_i_1_n_0\
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(6),
      I1 => Q(6),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][6]_i_1_n_0\
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(7),
      I1 => Q(7),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][7]_i_1_n_0\
    );
\needs_delay.shift_register[1][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(8),
      I1 => Q(8),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][8]_i_1_n_0\
    );
\needs_delay.shift_register[1][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(9),
      I1 => Q(9),
      I2 => ltOp_carry_n_2,
      O => \needs_delay.shift_register[1][9]_i_1_n_0\
    );
reg: entity work.\design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_15\
     port map (
      D(9) => \needs_delay.shift_register[1][9]_i_1_n_0\,
      D(8) => \needs_delay.shift_register[1][8]_i_1_n_0\,
      D(7) => \needs_delay.shift_register[1][7]_i_1_n_0\,
      D(6) => \needs_delay.shift_register[1][6]_i_1_n_0\,
      D(5) => \needs_delay.shift_register[1][5]_i_1_n_0\,
      D(4) => \needs_delay.shift_register[1][4]_i_1_n_0\,
      D(3) => \needs_delay.shift_register[1][3]_i_1_n_0\,
      D(2) => \needs_delay.shift_register[1][2]_i_1_n_0\,
      D(1) => \needs_delay.shift_register[1][1]_i_1_n_0\,
      D(0) => \needs_delay.shift_register[1][0]_i_1_n_0\,
      E(0) => E(0),
      aclk => aclk,
      da(9 downto 0) => da(9 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_min_sat_1 is
  port (
    da : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S : in STD_LOGIC_VECTOR ( 5 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[1]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_min_sat_1 : entity is "min_sat";
end design_1_v_rgb2ycrcb_0_0_min_sat_1;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_min_sat_1 is
  signal ltOp : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal ltOp_carry_n_4 : STD_LOGIC;
  signal ltOp_carry_n_5 : STD_LOGIC;
  signal ltOp_carry_n_6 : STD_LOGIC;
  signal ltOp_carry_n_7 : STD_LOGIC;
  signal \needs_delay.shift_register[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][9]_i_1_n_0\ : STD_LOGIC;
  signal NLW_ltOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of ltOp_carry : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][9]_i_1\ : label is "soft_lutpair36";
begin
ltOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_ltOp_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => ltOp,
      CO(4) => ltOp_carry_n_3,
      CO(3) => ltOp_carry_n_4,
      CO(2) => ltOp_carry_n_5,
      CO(1) => ltOp_carry_n_6,
      CO(0) => ltOp_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => Q(10),
      DI(4 downto 0) => DI(4 downto 0),
      O(7 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5 downto 0) => S(5 downto 0)
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(0),
      I1 => Q(0),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][0]_i_1_n_0\
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(1),
      I1 => Q(1),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][1]_i_1_n_0\
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(2),
      I1 => Q(2),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][2]_i_1_n_0\
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(3),
      I1 => Q(3),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][3]_i_1_n_0\
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(4),
      I1 => Q(4),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][4]_i_1_n_0\
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(5),
      I1 => Q(5),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][5]_i_1_n_0\
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(6),
      I1 => Q(6),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][6]_i_1_n_0\
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(7),
      I1 => Q(7),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][7]_i_1_n_0\
    );
\needs_delay.shift_register[1][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(8),
      I1 => Q(8),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][8]_i_1_n_0\
    );
\needs_delay.shift_register[1][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(9),
      I1 => Q(9),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][9]_i_1_n_0\
    );
reg: entity work.\design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_14\
     port map (
      D(9) => \needs_delay.shift_register[1][9]_i_1_n_0\,
      D(8) => \needs_delay.shift_register[1][8]_i_1_n_0\,
      D(7) => \needs_delay.shift_register[1][7]_i_1_n_0\,
      D(6) => \needs_delay.shift_register[1][6]_i_1_n_0\,
      D(5) => \needs_delay.shift_register[1][5]_i_1_n_0\,
      D(4) => \needs_delay.shift_register[1][4]_i_1_n_0\,
      D(3) => \needs_delay.shift_register[1][3]_i_1_n_0\,
      D(2) => \needs_delay.shift_register[1][2]_i_1_n_0\,
      D(1) => \needs_delay.shift_register[1][1]_i_1_n_0\,
      D(0) => \needs_delay.shift_register[1][0]_i_1_n_0\,
      E(0) => E(0),
      aclk => aclk,
      da(9 downto 0) => da(9 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_mult is
  port (
    P : out STD_LOGIC_VECTOR ( 27 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    sclr : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \core_control_regs[9]\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_mult : entity is "mult";
end design_1_v_rgb2ycrcb_0_0_mult;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_mult is
begin
reg: entity work.\design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized0\
     port map (
      E(0) => E(0),
      P(27 downto 0) => P(27 downto 0),
      aclk => aclk,
      \core_control_regs[9]\(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      s(10 downto 0) => s(10 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no is
  port (
    s : out STD_LOGIC_VECTOR ( 10 downto 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 19 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no : entity is "radd_sub_sclr_no";
end design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no is
  signal out_s : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP : string;
  attribute USE_DSP of out_s : signal is "no";
begin
  s(10 downto 0) <= out_s(10 downto 0);
reg: entity work.design_1_v_rgb2ycrcb_0_0_delay_sclr
     port map (
      E(0) => E(0),
      Q(19 downto 0) => Q(19 downto 0),
      aclk => aclk,
      out_s(10 downto 0) => out_s(10 downto 0),
      p_0_in(0) => p_0_in(0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no_10 is
  port (
    s : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 18 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no_10 : entity is "radd_sub_sclr_no";
end design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no_10;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no_10 is
  signal out_s : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP : string;
  attribute USE_DSP of out_s : signal is "no";
begin
  s(10 downto 0) <= out_s(10 downto 0);
reg: entity work.design_1_v_rgb2ycrcb_0_0_delay_sclr_11
     port map (
      E(0) => E(0),
      Q(18 downto 0) => Q(18 downto 0),
      aclk => aclk,
      out_s(10 downto 0) => out_s(10 downto 0),
      p_0_in(0) => p_0_in(0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0\ is
  port (
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \needs_delay.shift_register_reg[1][0]\ : out STD_LOGIC;
    \^s\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \needs_delay.shift_register_reg[1][11]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \needs_delay.shift_register_reg[1][11]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    y_intb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    a : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0\ : entity is "radd_sub_sclr_no";
end \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0\ is
  signal \needs_delay.shift_register[1][11]_i_2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][11]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][11]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_6_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_7_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_8_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][11]_i_1_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][11]_i_1_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][11]_i_1_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_7\ : STD_LOGIC;
  signal out_s : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP : string;
  attribute USE_DSP of out_s : signal is "no";
  signal plusOp : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[1][11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_needs_delay.shift_register_reg[1][11]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
begin
  \^s\(10 downto 0) <= out_s(10 downto 0);
\needs_delay.shift_register[1][11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(10),
      O => \needs_delay.shift_register[1][11]_i_2_n_0\
    );
\needs_delay.shift_register[1][11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(9),
      I1 => y_intb(9),
      O => \needs_delay.shift_register[1][11]_i_3_n_0\
    );
\needs_delay.shift_register[1][11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(8),
      I1 => y_intb(8),
      O => \needs_delay.shift_register[1][11]_i_4_n_0\
    );
\needs_delay.shift_register[1][12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_s(11),
      O => DI(0)
    );
\needs_delay.shift_register[1][12]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => out_s(11),
      I1 => \core_control_regs[6]\(0),
      O => S(0)
    );
\needs_delay.shift_register[1][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(7),
      I1 => y_intb(7),
      O => \needs_delay.shift_register[1][7]_i_2_n_0\
    );
\needs_delay.shift_register[1][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(6),
      I1 => y_intb(6),
      O => \needs_delay.shift_register[1][7]_i_3_n_0\
    );
\needs_delay.shift_register[1][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(5),
      I1 => y_intb(5),
      O => \needs_delay.shift_register[1][7]_i_4_n_0\
    );
\needs_delay.shift_register[1][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(4),
      I1 => y_intb(4),
      O => \needs_delay.shift_register[1][7]_i_5_n_0\
    );
\needs_delay.shift_register[1][7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(3),
      I1 => y_intb(3),
      O => \needs_delay.shift_register[1][7]_i_6_n_0\
    );
\needs_delay.shift_register[1][7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(2),
      I1 => y_intb(2),
      O => \needs_delay.shift_register[1][7]_i_7_n_0\
    );
\needs_delay.shift_register[1][7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(1),
      I1 => y_intb(1),
      O => \needs_delay.shift_register[1][7]_i_8_n_0\
    );
\needs_delay.shift_register_reg[1][11]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_needs_delay.shift_register_reg[1][11]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \needs_delay.shift_register_reg[1][11]_i_1_n_5\,
      CO(1) => \needs_delay.shift_register_reg[1][11]_i_1_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][11]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => \needs_delay.shift_register[1][11]_i_2_n_0\,
      DI(1 downto 0) => a(9 downto 8),
      O(7 downto 4) => \NLW_needs_delay.shift_register_reg[1][11]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => plusOp(11 downto 8),
      S(7 downto 3) => B"00001",
      S(2) => a(10),
      S(1) => \needs_delay.shift_register[1][11]_i_3_n_0\,
      S(0) => \needs_delay.shift_register[1][11]_i_4_n_0\
    );
\needs_delay.shift_register_reg[1][7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => y_intb(0),
      CI_TOP => '0',
      CO(7) => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CO(6) => \needs_delay.shift_register_reg[1][7]_i_1_n_1\,
      CO(5) => \needs_delay.shift_register_reg[1][7]_i_1_n_2\,
      CO(4) => \needs_delay.shift_register_reg[1][7]_i_1_n_3\,
      CO(3) => \needs_delay.shift_register_reg[1][7]_i_1_n_4\,
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1_n_5\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1_n_7\,
      DI(7 downto 0) => a(7 downto 0),
      O(7 downto 0) => plusOp(7 downto 0),
      S(7) => \needs_delay.shift_register[1][7]_i_2_n_0\,
      S(6) => \needs_delay.shift_register[1][7]_i_3_n_0\,
      S(5) => \needs_delay.shift_register[1][7]_i_4_n_0\,
      S(4) => \needs_delay.shift_register[1][7]_i_5_n_0\,
      S(3) => \needs_delay.shift_register[1][7]_i_6_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_7_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_8_n_0\,
      S(0) => a(0)
    );
reg: entity work.\design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_17\
     port map (
      E(0) => E(0),
      Q(11 downto 0) => out_s(11 downto 0),
      aclk => aclk,
      \needs_delay.shift_register_reg[1][0]_0\ => \needs_delay.shift_register_reg[1][0]\,
      \needs_delay.shift_register_reg[1][11]_0\(1 downto 0) => \needs_delay.shift_register_reg[1][11]\(1 downto 0),
      \needs_delay.shift_register_reg[1][11]_1\(1 downto 0) => \needs_delay.shift_register_reg[1][11]_0\(1 downto 0),
      \out\(2 downto 1) => out_s(11 downto 10),
      \out\(0) => out_s(0),
      plusOp(11 downto 0) => plusOp(11 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetn_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 12 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1\ : entity is "radd_sub_sclr_no";
end \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1\ is
  signal out_s : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP : string;
  attribute USE_DSP of out_s : signal is "no";
begin
  \out\(12 downto 0) <= out_s(12 downto 0);
reg: entity work.\design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_7\
     port map (
      D(12 downto 0) => D(12 downto 0),
      E(0) => E(0),
      Q(12 downto 0) => out_s(12 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      resetn_out => resetn_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1_8\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 12 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1_8\ : entity is "radd_sub_sclr_no";
end \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1_8\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1_8\ is
  signal out_s : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP : string;
  attribute USE_DSP of out_s : signal is "no";
begin
  \out\(12 downto 0) <= out_s(12 downto 0);
reg: entity work.\design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_9\
     port map (
      D(12 downto 0) => D(12 downto 0),
      E(0) => E(0),
      Q(12 downto 0) => out_s(12 downto 0),
      aclk => aclk,
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2\ is
  port (
    \^s\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \needs_delay.shift_register_reg[1][12]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2\ : entity is "radd_sub_sclr_no";
end \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2\ is
  signal \needs_delay.shift_register[1][12]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][12]_i_5_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][12]_i_6_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_6_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_7_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_8_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][12]_i_1_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_7\ : STD_LOGIC;
  signal out_s : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP : string;
  attribute USE_DSP of out_s : signal is "no";
  signal plusOp : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[1][12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_needs_delay.shift_register_reg[1][12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
begin
  \^s\(11 downto 0) <= out_s(11 downto 0);
\needs_delay.shift_register[1][12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][12]\(10),
      I1 => \core_control_regs[6]\(10),
      O => \needs_delay.shift_register[1][12]_i_4_n_0\
    );
\needs_delay.shift_register[1][12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][12]\(9),
      I1 => \core_control_regs[6]\(9),
      O => \needs_delay.shift_register[1][12]_i_5_n_0\
    );
\needs_delay.shift_register[1][12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][12]\(8),
      I1 => \core_control_regs[6]\(8),
      O => \needs_delay.shift_register[1][12]_i_6_n_0\
    );
\needs_delay.shift_register[1][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][12]\(7),
      I1 => \core_control_regs[6]\(7),
      O => \needs_delay.shift_register[1][7]_i_2_n_0\
    );
\needs_delay.shift_register[1][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][12]\(6),
      I1 => \core_control_regs[6]\(6),
      O => \needs_delay.shift_register[1][7]_i_3_n_0\
    );
\needs_delay.shift_register[1][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][12]\(5),
      I1 => \core_control_regs[6]\(5),
      O => \needs_delay.shift_register[1][7]_i_4_n_0\
    );
\needs_delay.shift_register[1][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][12]\(4),
      I1 => \core_control_regs[6]\(4),
      O => \needs_delay.shift_register[1][7]_i_5_n_0\
    );
\needs_delay.shift_register[1][7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][12]\(3),
      I1 => \core_control_regs[6]\(3),
      O => \needs_delay.shift_register[1][7]_i_6_n_0\
    );
\needs_delay.shift_register[1][7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][12]\(2),
      I1 => \core_control_regs[6]\(2),
      O => \needs_delay.shift_register[1][7]_i_7_n_0\
    );
\needs_delay.shift_register[1][7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][12]\(1),
      I1 => \core_control_regs[6]\(1),
      O => \needs_delay.shift_register[1][7]_i_8_n_0\
    );
\needs_delay.shift_register_reg[1][12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_needs_delay.shift_register_reg[1][12]_i_1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \needs_delay.shift_register_reg[1][12]_i_1_n_4\,
      CO(2) => \needs_delay.shift_register_reg[1][12]_i_1_n_5\,
      CO(1) => \needs_delay.shift_register_reg[1][12]_i_1_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][12]_i_1_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => DI(0),
      DI(2 downto 0) => \needs_delay.shift_register_reg[1][12]\(10 downto 8),
      O(7 downto 5) => \NLW_needs_delay.shift_register_reg[1][12]_i_1_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => plusOp(12 downto 8),
      S(7 downto 4) => B"0001",
      S(3) => S(0),
      S(2) => \needs_delay.shift_register[1][12]_i_4_n_0\,
      S(1) => \needs_delay.shift_register[1][12]_i_5_n_0\,
      S(0) => \needs_delay.shift_register[1][12]_i_6_n_0\
    );
\needs_delay.shift_register_reg[1][7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \core_control_regs[6]\(0),
      CI_TOP => '0',
      CO(7) => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CO(6) => \needs_delay.shift_register_reg[1][7]_i_1_n_1\,
      CO(5) => \needs_delay.shift_register_reg[1][7]_i_1_n_2\,
      CO(4) => \needs_delay.shift_register_reg[1][7]_i_1_n_3\,
      CO(3) => \needs_delay.shift_register_reg[1][7]_i_1_n_4\,
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1_n_5\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1_n_6\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1_n_7\,
      DI(7 downto 0) => \needs_delay.shift_register_reg[1][12]\(7 downto 0),
      O(7 downto 0) => plusOp(7 downto 0),
      S(7) => \needs_delay.shift_register[1][7]_i_2_n_0\,
      S(6) => \needs_delay.shift_register[1][7]_i_3_n_0\,
      S(5) => \needs_delay.shift_register[1][7]_i_4_n_0\,
      S(4) => \needs_delay.shift_register[1][7]_i_5_n_0\,
      S(3) => \needs_delay.shift_register[1][7]_i_6_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_7_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_8_n_0\,
      S(0) => \needs_delay.shift_register_reg[1][12]\(0)
    );
reg: entity work.\design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2\
     port map (
      E(0) => E(0),
      Q(12 downto 0) => out_s(12 downto 0),
      aclk => aclk,
      plusOp(12 downto 0) => plusOp(12 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_synch_fifo is
  port (
    \word_count_reg[4]_0\ : out STD_LOGIC;
    aclken_0 : out STD_LOGIC;
    empty_match_reg_0 : out STD_LOGIC;
    \GenerateDoutWriteFirstB.t_qb_reg[30]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_update : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    depth_match_reg_0 : in STD_LOGIC;
    resetn_out : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    \write_ptr_reg[0]_0\ : in STD_LOGIC;
    aclken : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_fifo_reset : in STD_LOGIC;
    da : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_synch_fifo : entity is "synch_fifo";
end design_1_v_rgb2ycrcb_0_0_synch_fifo;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_synch_fifo is
  signal \^aclken_0\ : STD_LOGIC;
  signal addra : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal addrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal depth_match_i_1_n_0 : STD_LOGIC;
  signal depth_match_i_2_n_0 : STD_LOGIC;
  signal depth_match_reg_n_0 : STD_LOGIC;
  signal empty_match_i_1_n_0 : STD_LOGIC;
  signal empty_match_i_2_n_0 : STD_LOGIC;
  signal empty_match_i_3_n_0 : STD_LOGIC;
  signal mem1_n_4 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_ptr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vid_empty : STD_LOGIC;
  signal \word_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \word_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \word_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \word_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \word_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \word_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \word_count_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of depth_match_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of empty_match_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \word_count[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \word_count[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \write_ptr[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \write_ptr[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \write_ptr[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \write_ptr[3]_i_1\ : label is "soft_lutpair15";
begin
  aclken_0 <= \^aclken_0\;
\col_cnt[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => vid_empty,
      I1 => depth_match_reg_0,
      I2 => \word_count_reg_n_0_[2]\,
      I3 => \word_count_reg_n_0_[3]\,
      I4 => \word_count_reg_n_0_[1]\,
      I5 => \word_count_reg_n_0_[4]\,
      O => empty_match_reg_0
    );
depth_match_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAF010000000000"
    )
        port map (
      I0 => depth_match_i_2_n_0,
      I1 => empty_match_i_2_n_0,
      I2 => \word_count_reg_n_0_[0]\,
      I3 => depth_match_reg_0,
      I4 => depth_match_reg_n_0,
      I5 => resetn_out,
      O => depth_match_i_1_n_0
    );
depth_match_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \word_count_reg_n_0_[4]\,
      I1 => \word_count_reg_n_0_[3]\,
      I2 => \word_count_reg_n_0_[2]\,
      I3 => \word_count_reg_n_0_[1]\,
      O => depth_match_i_2_n_0
    );
depth_match_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => depth_match_i_1_n_0,
      Q => depth_match_reg_n_0,
      R => '0'
    );
empty_match_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEF0080"
    )
        port map (
      I0 => \word_count_reg_n_0_[0]\,
      I1 => empty_match_i_2_n_0,
      I2 => empty_match_i_3_n_0,
      I3 => depth_match_reg_0,
      I4 => vid_empty,
      O => empty_match_i_1_n_0
    );
empty_match_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => \write_ptr_reg[0]_0\,
      I2 => \genr_control_regs[0]\(0),
      I3 => aclken,
      I4 => resetn_out,
      O => empty_match_i_2_n_0
    );
empty_match_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \word_count_reg_n_0_[2]\,
      I1 => \word_count_reg_n_0_[3]\,
      I2 => \word_count_reg_n_0_[1]\,
      I3 => \word_count_reg_n_0_[4]\,
      O => empty_match_i_3_n_0
    );
empty_match_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => empty_match_i_1_n_0,
      Q => vid_empty,
      S => SR(0)
    );
mem1: entity work.design_1_v_rgb2ycrcb_0_0_dp_ram_18
     port map (
      D(3 downto 0) => addrb(3 downto 0),
      \GenerateDoutWriteFirstB.t_qb_reg[29]_0\(3 downto 0) => addra(3 downto 0),
      \GenerateDoutWriteFirstB.t_qb_reg[30]_0\ => \GenerateDoutWriteFirstB.t_qb_reg[30]\,
      \GenerateDoutWriteFirstB.t_qb_reg[31]_0\(31 downto 0) => Q(31 downto 0),
      Q(3 downto 0) => read_ptr_reg(3 downto 0),
      aclk => aclk,
      aclken => aclken,
      aclken_0 => \^aclken_0\,
      da(31 downto 0) => da(31 downto 0),
      empty_match_reg => mem1_n_4,
      \genr_control_regs[0]\(1 downto 0) => \genr_control_regs[0]\(1 downto 0),
      in_fifo_reset => in_fifo_reset,
      p_0_in => p_0_in,
      \read_ptr_reg[0]\ => depth_match_reg_0,
      reg_update => reg_update,
      resetn_out => resetn_out,
      s_axis_video_tvalid => s_axis_video_tvalid,
      vid_empty => vid_empty,
      \write_ptr_reg[0]\ => depth_match_reg_n_0,
      \write_ptr_reg[0]_0\ => \write_ptr_reg[0]_0\
    );
\read_ptr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => addrb(0),
      Q => read_ptr_reg(0),
      S => SR(0)
    );
\read_ptr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => addrb(1),
      Q => read_ptr_reg(1),
      S => SR(0)
    );
\read_ptr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => addrb(2),
      Q => read_ptr_reg(2),
      S => SR(0)
    );
\read_ptr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => addrb(3),
      Q => read_ptr_reg(3),
      S => SR(0)
    );
s_axis_tready_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => \word_count_reg_n_0_[4]\,
      I1 => \word_count_reg_n_0_[3]\,
      I2 => \word_count_reg_n_0_[2]\,
      I3 => \word_count_reg_n_0_[1]\,
      O => \word_count_reg[4]_0\
    );
\word_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \word_count_reg_n_0_[0]\,
      O => \word_count[0]_i_1_n_0\
    );
\word_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A65"
    )
        port map (
      I0 => \word_count_reg_n_0_[0]\,
      I1 => mem1_n_4,
      I2 => p_0_in,
      I3 => \word_count_reg_n_0_[1]\,
      O => \word_count[1]_i_1_n_0\
    );
\word_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFF2200D"
    )
        port map (
      I0 => p_0_in,
      I1 => mem1_n_4,
      I2 => \word_count_reg_n_0_[0]\,
      I3 => \word_count_reg_n_0_[1]\,
      I4 => \word_count_reg_n_0_[2]\,
      O => \word_count[2]_i_1_n_0\
    );
\word_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFBA20000045"
    )
        port map (
      I0 => \word_count_reg_n_0_[0]\,
      I1 => mem1_n_4,
      I2 => p_0_in,
      I3 => \word_count_reg_n_0_[1]\,
      I4 => \word_count_reg_n_0_[2]\,
      I5 => \word_count_reg_n_0_[3]\,
      O => \word_count[3]_i_1_n_0\
    );
\word_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70008"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => \write_ptr_reg[0]_0\,
      I2 => \^aclken_0\,
      I3 => depth_match_reg_n_0,
      I4 => mem1_n_4,
      O => \word_count[4]_i_1_n_0\
    );
\word_count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAA9AAAA"
    )
        port map (
      I0 => \word_count_reg_n_0_[4]\,
      I1 => \word_count_reg_n_0_[3]\,
      I2 => \word_count_reg_n_0_[2]\,
      I3 => \word_count_reg_n_0_[0]\,
      I4 => \word_count[4]_i_3_n_0\,
      I5 => \word_count_reg_n_0_[1]\,
      O => \word_count[4]_i_2_n_0\
    );
\word_count[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFFFF"
    )
        port map (
      I0 => mem1_n_4,
      I1 => s_axis_video_tvalid,
      I2 => \write_ptr_reg[0]_0\,
      I3 => \^aclken_0\,
      I4 => resetn_out,
      I5 => depth_match_reg_n_0,
      O => \word_count[4]_i_3_n_0\
    );
\word_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \word_count[4]_i_1_n_0\,
      D => \word_count[0]_i_1_n_0\,
      Q => \word_count_reg_n_0_[0]\,
      R => SR(0)
    );
\word_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \word_count[4]_i_1_n_0\,
      D => \word_count[1]_i_1_n_0\,
      Q => \word_count_reg_n_0_[1]\,
      R => SR(0)
    );
\word_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \word_count[4]_i_1_n_0\,
      D => \word_count[2]_i_1_n_0\,
      Q => \word_count_reg_n_0_[2]\,
      R => SR(0)
    );
\word_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \word_count[4]_i_1_n_0\,
      D => \word_count[3]_i_1_n_0\,
      Q => \word_count_reg_n_0_[3]\,
      R => SR(0)
    );
\word_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \word_count[4]_i_1_n_0\,
      D => \word_count[4]_i_2_n_0\,
      Q => \word_count_reg_n_0_[4]\,
      R => SR(0)
    );
\write_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(0),
      O => \plusOp__0\(0)
    );
\write_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addra(1),
      I1 => addra(0),
      O => \plusOp__0\(1)
    );
\write_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => addra(2),
      I1 => addra(0),
      I2 => addra(1),
      O => \plusOp__0\(2)
    );
\write_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(0),
      I3 => addra(2),
      O => \plusOp__0\(3)
    );
\write_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => \plusOp__0\(0),
      Q => addra(0),
      R => SR(0)
    );
\write_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => \plusOp__0\(1),
      Q => addra(1),
      R => SR(0)
    );
\write_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => \plusOp__0\(2),
      Q => addra(2),
      R => SR(0)
    );
\write_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => \plusOp__0\(3),
      Q => addra(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_synch_fifo_fallthru is
  port (
    full_int_reg_0 : out STD_LOGIC;
    \write_ptr_int_reg[3]_0\ : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    O13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_tready : in STD_LOGIC;
    wen : in STD_LOGIC;
    \read_ptr_int_reg[2]_0\ : in STD_LOGIC;
    fifo_wr_i : in STD_LOGIC;
    core_d_out : in STD_LOGIC;
    intc_if : in STD_LOGIC_VECTOR ( 0 to 0 );
    da : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_synch_fifo_fallthru : entity is "synch_fifo_fallthru";
end design_1_v_rgb2ycrcb_0_0_synch_fifo_fallthru;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_synch_fifo_fallthru is
  signal L : STD_LOGIC_VECTOR ( 1 to 4 );
  signal axi_fifo_empty : STD_LOGIC;
  signal \col_cnt[12]_i_10_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_11_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_12_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_9_n_0\ : STD_LOGIC;
  signal empty_int_i_1_n_0 : STD_LOGIC;
  signal empty_int_i_2_n_0 : STD_LOGIC;
  signal empty_int_i_3_n_0 : STD_LOGIC;
  signal empty_int_i_4_n_0 : STD_LOGIC;
  signal eqOp0_out : STD_LOGIC;
  signal full_int_i_2_n_0 : STD_LOGIC;
  signal full_int_i_3_n_0 : STD_LOGIC;
  signal full_int_i_4_n_0 : STD_LOGIC;
  signal \^full_int_reg_0\ : STD_LOGIC;
  signal mem1_n_0 : STD_LOGIC;
  signal mem1_n_1 : STD_LOGIC;
  signal mem1_n_2 : STD_LOGIC;
  signal mem1_n_3 : STD_LOGIC;
  signal mem1_n_4 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal \read_ptr_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_ptr_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_ptr_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \read_ptr_int_reg_n_0_[3]\ : STD_LOGIC;
  signal \write_ptr_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_ptr_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_ptr_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_ptr_int[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \col_cnt[12]_i_10\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \col_cnt[12]_i_12\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of empty_int_i_4 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of full_int_i_3 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of full_int_i_4 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of m_axis_video_tvalid_INST_0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \read_ptr_int[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \write_ptr_int[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \write_ptr_int[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \write_ptr_int[3]_i_1\ : label is "soft_lutpair18";
begin
  full_int_reg_0 <= \^full_int_reg_0\;
\col_cnt[12]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in,
      I1 => p_1_in1_in,
      O => \col_cnt[12]_i_10_n_0\
    );
\col_cnt[12]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5D5DDF455D5D5D"
    )
        port map (
      I0 => full_int_i_4_n_0,
      I1 => \read_ptr_int_reg_n_0_[1]\,
      I2 => L(3),
      I3 => L(4),
      I4 => wen,
      I5 => \read_ptr_int_reg_n_0_[0]\,
      O => \col_cnt[12]_i_11_n_0\
    );
\col_cnt[12]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(2),
      I1 => \read_ptr_int_reg_n_0_[2]\,
      O => \col_cnt[12]_i_12_n_0\
    );
\col_cnt[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF38FBAE8EF3EFBA"
    )
        port map (
      I0 => \col_cnt[12]_i_9_n_0\,
      I1 => L(1),
      I2 => \read_ptr_int_reg_n_0_[3]\,
      I3 => \col_cnt[12]_i_10_n_0\,
      I4 => \col_cnt[12]_i_11_n_0\,
      I5 => \col_cnt[12]_i_12_n_0\,
      O => \write_ptr_int_reg[3]_0\
    );
\col_cnt[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02405415A82A0240"
    )
        port map (
      I0 => full_int_i_4_n_0,
      I1 => L(4),
      I2 => wen,
      I3 => \read_ptr_int_reg_n_0_[0]\,
      I4 => \read_ptr_int_reg_n_0_[1]\,
      I5 => L(3),
      O => \col_cnt[12]_i_9_n_0\
    );
empty_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0884400040000884"
    )
        port map (
      I0 => L(1),
      I1 => empty_int_i_2_n_0,
      I2 => \read_ptr_int_reg_n_0_[3]\,
      I3 => empty_int_i_3_n_0,
      I4 => p_0_in,
      I5 => p_1_in1_in,
      O => empty_int_i_1_n_0
    );
empty_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0041820082000082"
    )
        port map (
      I0 => full_int_i_4_n_0,
      I1 => L(4),
      I2 => mem1_n_4,
      I3 => L(3),
      I4 => \read_ptr_int_reg_n_0_[1]\,
      I5 => empty_int_i_4_n_0,
      O => empty_int_i_2_n_0
    );
empty_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \read_ptr_int_reg_n_0_[2]\,
      I1 => \read_ptr_int_reg_n_0_[1]\,
      I2 => \read_ptr_int_reg_n_0_[0]\,
      I3 => axi_fifo_empty,
      I4 => m_axis_video_tready,
      I5 => \read_ptr_int_reg[2]_0\,
      O => empty_int_i_3_n_0
    );
empty_int_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \read_ptr_int_reg_n_0_[0]\,
      I1 => axi_fifo_empty,
      I2 => m_axis_video_tready,
      I3 => \genr_control_regs[0]\(0),
      I4 => aclken,
      O => empty_int_i_4_n_0
    );
empty_int_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => empty_int_i_1_n_0,
      Q => axi_fifo_empty,
      S => SR(0)
    );
full_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009060006000006"
    )
        port map (
      I0 => p_0_in,
      I1 => p_1_in1_in,
      I2 => full_int_i_2_n_0,
      I3 => \read_ptr_int_reg_n_0_[3]\,
      I4 => L(1),
      I5 => full_int_i_3_n_0,
      O => eqOp0_out
    );
full_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D6BFFFD6FFFFBFFF"
    )
        port map (
      I0 => \read_ptr_int_reg_n_0_[0]\,
      I1 => wen,
      I2 => L(4),
      I3 => L(3),
      I4 => \read_ptr_int_reg_n_0_[1]\,
      I5 => full_int_i_4_n_0,
      O => full_int_i_2_n_0
    );
full_int_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => L(4),
      I1 => wen,
      I2 => L(3),
      I3 => L(2),
      O => full_int_i_3_n_0
    );
full_int_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(2),
      I1 => \read_ptr_int_reg_n_0_[2]\,
      O => full_int_i_4_n_0
    );
full_int_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => eqOp0_out,
      Q => \^full_int_reg_0\,
      R => SR(0)
    );
m_axis_video_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_fifo_empty,
      O => m_axis_video_tvalid
    );
mem1: entity work.design_1_v_rgb2ycrcb_0_0_dp_ram
     port map (
      ADDRA(3) => mem1_n_1,
      ADDRA(2) => mem1_n_2,
      ADDRA(1) => mem1_n_3,
      ADDRA(0) => mem1_n_4,
      \GenerateDoutWriteFirstB.t_qb_reg[29]_0\(3) => L(1),
      \GenerateDoutWriteFirstB.t_qb_reg[29]_0\(2) => L(2),
      \GenerateDoutWriteFirstB.t_qb_reg[29]_0\(1) => L(3),
      \GenerateDoutWriteFirstB.t_qb_reg[29]_0\(0) => L(4),
      O13(31 downto 0) => O13(31 downto 0),
      Q(3) => \read_ptr_int_reg_n_0_[3]\,
      Q(2) => \read_ptr_int_reg_n_0_[2]\,
      Q(1) => \read_ptr_int_reg_n_0_[1]\,
      Q(0) => \read_ptr_int_reg_n_0_[0]\,
      aclk => aclk,
      aclken => aclken,
      aclken_0 => mem1_n_0,
      axi_fifo_empty => axi_fifo_empty,
      da(31 downto 0) => da(31 downto 0),
      \genr_control_regs[0]\(0) => \genr_control_regs[0]\(0),
      m_axis_video_tready => m_axis_video_tready,
      \read_ptr_int_reg[2]\ => \read_ptr_int_reg[2]_0\,
      wen => wen
    );
\read_ptr_int[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => p_0_in,
      I1 => \read_ptr_int_reg_n_0_[2]\,
      I2 => mem1_n_0,
      I3 => \read_ptr_int_reg_n_0_[3]\,
      O => p_0_in0_in
    );
\read_ptr_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mem1_n_4,
      Q => \read_ptr_int_reg_n_0_[0]\,
      R => SR(0)
    );
\read_ptr_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mem1_n_3,
      Q => \read_ptr_int_reg_n_0_[1]\,
      R => SR(0)
    );
\read_ptr_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mem1_n_2,
      Q => \read_ptr_int_reg_n_0_[2]\,
      R => SR(0)
    );
\read_ptr_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mem1_n_1,
      Q => \read_ptr_int_reg_n_0_[3]\,
      R => SR(0)
    );
\read_ptr_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in0_in,
      Q => p_0_in,
      R => SR(0)
    );
\write_ptr_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA6"
    )
        port map (
      I0 => L(4),
      I1 => fifo_wr_i,
      I2 => \^full_int_reg_0\,
      I3 => core_d_out,
      I4 => intc_if(0),
      I5 => \read_ptr_int_reg[2]_0\,
      O => \write_ptr_int[0]_i_1_n_0\
    );
\write_ptr_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => L(4),
      I1 => wen,
      I2 => L(3),
      O => \write_ptr_int[1]_i_1_n_0\
    );
\write_ptr_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => L(2),
      I1 => L(4),
      I2 => wen,
      I3 => L(3),
      O => \write_ptr_int[2]_i_1_n_0\
    );
\write_ptr_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => L(1),
      I1 => L(2),
      I2 => L(3),
      I3 => wen,
      I4 => L(4),
      O => \write_ptr_int[3]_i_1_n_0\
    );
\write_ptr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => L(4),
      I2 => wen,
      I3 => L(3),
      I4 => L(2),
      I5 => L(1),
      O => p_1_in
    );
\write_ptr_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_ptr_int[0]_i_1_n_0\,
      Q => L(4),
      R => SR(0)
    );
\write_ptr_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_ptr_int[1]_i_1_n_0\,
      Q => L(3),
      R => SR(0)
    );
\write_ptr_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_ptr_int[2]_i_1_n_0\,
      Q => L(2),
      R => SR(0)
    );
\write_ptr_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_ptr_int[3]_i_1_n_0\,
      Q => L(1),
      R => SR(0)
    );
\write_ptr_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_1_in,
      Q => p_1_in1_in,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_axis_input_buffer is
  port (
    s_axis_tready_int_reg_0 : out STD_LOGIC;
    aclken_0 : out STD_LOGIC;
    empty_match_reg : out STD_LOGIC;
    \GenerateDoutWriteFirstB.t_qb_reg[30]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_update : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    master_en : in STD_LOGIC;
    aclk : in STD_LOGIC;
    depth_match_reg : in STD_LOGIC;
    resetn_out : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    aclken : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_fifo_reset : in STD_LOGIC;
    da : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_axis_input_buffer : entity is "axis_input_buffer";
end design_1_v_rgb2ycrcb_0_0_axis_input_buffer;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_axis_input_buffer is
  signal U_AXIS_SYNC_FIFO_n_0 : STD_LOGIC;
  signal \^s_axis_tready_int_reg_0\ : STD_LOGIC;
begin
  s_axis_tready_int_reg_0 <= \^s_axis_tready_int_reg_0\;
U_AXIS_SYNC_FIFO: entity work.design_1_v_rgb2ycrcb_0_0_synch_fifo
     port map (
      \GenerateDoutWriteFirstB.t_qb_reg[30]\ => \GenerateDoutWriteFirstB.t_qb_reg[30]\,
      Q(31 downto 0) => Q(31 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aclken => aclken,
      aclken_0 => aclken_0,
      da(31 downto 0) => da(31 downto 0),
      depth_match_reg_0 => depth_match_reg,
      empty_match_reg_0 => empty_match_reg,
      \genr_control_regs[0]\(1 downto 0) => \genr_control_regs[0]\(1 downto 0),
      in_fifo_reset => in_fifo_reset,
      reg_update => reg_update,
      resetn_out => resetn_out,
      s_axis_video_tvalid => s_axis_video_tvalid,
      \word_count_reg[4]_0\ => U_AXIS_SYNC_FIFO_n_0,
      \write_ptr_reg[0]_0\ => \^s_axis_tready_int_reg_0\
    );
s_axis_tready_int_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => master_en,
      D => U_AXIS_SYNC_FIFO_n_0,
      Q => \^s_axis_tready_int_reg_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_axis_output_buffer is
  port (
    full_int_reg : out STD_LOGIC;
    \write_ptr_int_reg[3]\ : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    O13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_tready : in STD_LOGIC;
    wen : in STD_LOGIC;
    \read_ptr_int_reg[2]\ : in STD_LOGIC;
    fifo_wr_i : in STD_LOGIC;
    core_d_out : in STD_LOGIC;
    intc_if : in STD_LOGIC_VECTOR ( 0 to 0 );
    da : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_axis_output_buffer : entity is "axis_output_buffer";
end design_1_v_rgb2ycrcb_0_0_axis_output_buffer;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_axis_output_buffer is
begin
UOSD_AXIS_SYNC_FIFO: entity work.design_1_v_rgb2ycrcb_0_0_synch_fifo_fallthru
     port map (
      O13(31 downto 0) => O13(31 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aclken => aclken,
      core_d_out => core_d_out,
      da(31 downto 0) => da(31 downto 0),
      fifo_wr_i => fifo_wr_i,
      full_int_reg_0 => full_int_reg,
      \genr_control_regs[0]\(0) => \genr_control_regs[0]\(0),
      intc_if(0) => intc_if(0),
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tvalid => m_axis_video_tvalid,
      \read_ptr_int_reg[2]_0\ => \read_ptr_int_reg[2]\,
      wen => wen,
      \write_ptr_int_reg[3]_0\ => \write_ptr_int_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_radd_sub_sclr is
  port (
    s : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 18 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_radd_sub_sclr : entity is "radd_sub_sclr";
end design_1_v_rgb2ycrcb_0_0_radd_sub_sclr;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_radd_sub_sclr is
begin
\use_fabric.adder\: entity work.design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no_10
     port map (
      E(0) => E(0),
      Q(18 downto 0) => Q(18 downto 0),
      aclk => aclk,
      p_0_in(0) => p_0_in(0),
      s(10 downto 0) => s(10 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_5 is
  port (
    s : out STD_LOGIC_VECTOR ( 10 downto 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 19 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_5 : entity is "radd_sub_sclr";
end design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_5;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_5 is
begin
\use_fabric.adder\: entity work.design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no
     port map (
      E(0) => E(0),
      Q(19 downto 0) => Q(19 downto 0),
      aclk => aclk,
      p_0_in(0) => p_0_in(0),
      s(10 downto 0) => s(10 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0\ is
  port (
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \^s\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \needs_delay.shift_register_reg[1][0]\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][11]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \needs_delay.shift_register_reg[1][11]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    y_intb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    a : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0\ : entity is "radd_sub_sclr";
end \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0\ is
begin
\use_fabric.adder\: entity work.\design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0\
     port map (
      DI(0) => DI(0),
      E(0) => E(0),
      S(0) => S(0),
      a(10 downto 0) => a(10 downto 0),
      aclk => aclk,
      \core_control_regs[6]\(0) => \core_control_regs[6]\(0),
      \needs_delay.shift_register_reg[1][0]\ => \needs_delay.shift_register_reg[1][0]\,
      \needs_delay.shift_register_reg[1][11]\(1 downto 0) => \needs_delay.shift_register_reg[1][11]\(1 downto 0),
      \needs_delay.shift_register_reg[1][11]_0\(1 downto 0) => \needs_delay.shift_register_reg[1][11]_0\(1 downto 0),
      \^s\(10 downto 0) => \^s\(10 downto 0),
      sclr => sclr,
      y_intb(9 downto 0) => y_intb(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 12 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1\ : entity is "radd_sub_sclr";
end \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1\ is
begin
\use_fabric.adder\: entity work.\design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1_8\
     port map (
      D(12 downto 0) => D(12 downto 0),
      E(0) => E(0),
      aclk => aclk,
      \out\(12 downto 0) => \out\(12 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1_6\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sclr : out STD_LOGIC;
    resetn_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 12 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1_6\ : entity is "radd_sub_sclr";
end \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1_6\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1_6\ is
begin
\use_fabric.adder\: entity work.\design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1\
     port map (
      D(12 downto 0) => D(12 downto 0),
      E(0) => E(0),
      SR(0) => sclr,
      aclk => aclk,
      \out\(12 downto 0) => \out\(12 downto 0),
      resetn_out => resetn_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2\ is
  port (
    \^s\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \needs_delay.shift_register_reg[1][12]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2\ : entity is "radd_sub_sclr";
end \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2\;

architecture STRUCTURE of \design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2\ is
begin
\use_fabric.adder\: entity work.\design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2\
     port map (
      DI(0) => DI(0),
      E(0) => E(0),
      S(0) => S(0),
      aclk => aclk,
      \core_control_regs[6]\(10 downto 0) => \core_control_regs[6]\(10 downto 0),
      \needs_delay.shift_register_reg[1][12]\(10 downto 0) => \needs_delay.shift_register_reg[1][12]\(10 downto 0),
      \^s\(11 downto 0) => \^s\(11 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_round is
  port (
    \^s\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \needs_delay.shift_register_reg[1][12]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_round : entity is "round";
end design_1_v_rgb2ycrcb_0_0_round;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_round is
begin
adder: entity work.\design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2\
     port map (
      DI(0) => DI(0),
      E(0) => E(0),
      S(0) => S(0),
      aclk => aclk,
      \core_control_regs[6]\(10 downto 0) => \core_control_regs[6]\(10 downto 0),
      \needs_delay.shift_register_reg[1][12]\(10 downto 0) => \needs_delay.shift_register_reg[1][12]\(10 downto 0),
      \^s\(11 downto 0) => \^s\(11 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_core is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    da : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \core_control_regs[10]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \core_control_regs[12]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \core_control_regs[7]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \core_control_regs[11]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \core_control_regs[8]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \core_control_regs[9]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    resetn_out : in STD_LOGIC;
    \core_control_regs[0]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[1]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[2]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[3]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[4]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[5]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_core : entity is "rgb2ycrcb_core";
end design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_core;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_core is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add_aRG_bBG_G_n_0 : STD_LOGIC;
  signal add_aRG_bBG_G_n_12 : STD_LOGIC;
  signal add_aRG_bBG_G_n_13 : STD_LOGIC;
  signal add_aRG_bBG_G_n_14 : STD_LOGIC;
  signal add_aRG_bBG_G_n_15 : STD_LOGIC;
  signal add_aRG_bBG_G_n_16 : STD_LOGIC;
  signal add_aRG_bBG_G_n_17 : STD_LOGIC;
  signal bg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal by : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \clip.max_Cb_n_0\ : STD_LOGIC;
  signal \clip.max_Cb_n_1\ : STD_LOGIC;
  signal \clip.max_Cb_n_10\ : STD_LOGIC;
  signal \clip.max_Cb_n_11\ : STD_LOGIC;
  signal \clip.max_Cb_n_12\ : STD_LOGIC;
  signal \clip.max_Cb_n_13\ : STD_LOGIC;
  signal \clip.max_Cb_n_14\ : STD_LOGIC;
  signal \clip.max_Cb_n_15\ : STD_LOGIC;
  signal \clip.max_Cb_n_16\ : STD_LOGIC;
  signal \clip.max_Cb_n_17\ : STD_LOGIC;
  signal \clip.max_Cb_n_18\ : STD_LOGIC;
  signal \clip.max_Cb_n_19\ : STD_LOGIC;
  signal \clip.max_Cb_n_2\ : STD_LOGIC;
  signal \clip.max_Cb_n_20\ : STD_LOGIC;
  signal \clip.max_Cb_n_21\ : STD_LOGIC;
  signal \clip.max_Cb_n_3\ : STD_LOGIC;
  signal \clip.max_Cb_n_4\ : STD_LOGIC;
  signal \clip.max_Cb_n_5\ : STD_LOGIC;
  signal \clip.max_Cb_n_6\ : STD_LOGIC;
  signal \clip.max_Cb_n_7\ : STD_LOGIC;
  signal \clip.max_Cb_n_8\ : STD_LOGIC;
  signal \clip.max_Cb_n_9\ : STD_LOGIC;
  signal \clip.max_Cr_n_0\ : STD_LOGIC;
  signal \clip.max_Cr_n_1\ : STD_LOGIC;
  signal \clip.max_Cr_n_10\ : STD_LOGIC;
  signal \clip.max_Cr_n_11\ : STD_LOGIC;
  signal \clip.max_Cr_n_12\ : STD_LOGIC;
  signal \clip.max_Cr_n_13\ : STD_LOGIC;
  signal \clip.max_Cr_n_14\ : STD_LOGIC;
  signal \clip.max_Cr_n_15\ : STD_LOGIC;
  signal \clip.max_Cr_n_16\ : STD_LOGIC;
  signal \clip.max_Cr_n_17\ : STD_LOGIC;
  signal \clip.max_Cr_n_18\ : STD_LOGIC;
  signal \clip.max_Cr_n_19\ : STD_LOGIC;
  signal \clip.max_Cr_n_2\ : STD_LOGIC;
  signal \clip.max_Cr_n_20\ : STD_LOGIC;
  signal \clip.max_Cr_n_21\ : STD_LOGIC;
  signal \clip.max_Cr_n_3\ : STD_LOGIC;
  signal \clip.max_Cr_n_4\ : STD_LOGIC;
  signal \clip.max_Cr_n_5\ : STD_LOGIC;
  signal \clip.max_Cr_n_6\ : STD_LOGIC;
  signal \clip.max_Cr_n_7\ : STD_LOGIC;
  signal \clip.max_Cr_n_8\ : STD_LOGIC;
  signal \clip.max_Cr_n_9\ : STD_LOGIC;
  signal \clip.max_Y_n_0\ : STD_LOGIC;
  signal \clip.max_Y_n_1\ : STD_LOGIC;
  signal \clip.max_Y_n_10\ : STD_LOGIC;
  signal \clip.max_Y_n_11\ : STD_LOGIC;
  signal \clip.max_Y_n_12\ : STD_LOGIC;
  signal \clip.max_Y_n_13\ : STD_LOGIC;
  signal \clip.max_Y_n_14\ : STD_LOGIC;
  signal \clip.max_Y_n_15\ : STD_LOGIC;
  signal \clip.max_Y_n_16\ : STD_LOGIC;
  signal \clip.max_Y_n_17\ : STD_LOGIC;
  signal \clip.max_Y_n_18\ : STD_LOGIC;
  signal \clip.max_Y_n_19\ : STD_LOGIC;
  signal \clip.max_Y_n_2\ : STD_LOGIC;
  signal \clip.max_Y_n_20\ : STD_LOGIC;
  signal \clip.max_Y_n_21\ : STD_LOGIC;
  signal \clip.max_Y_n_3\ : STD_LOGIC;
  signal \clip.max_Y_n_4\ : STD_LOGIC;
  signal \clip.max_Y_n_5\ : STD_LOGIC;
  signal \clip.max_Y_n_6\ : STD_LOGIC;
  signal \clip.max_Y_n_7\ : STD_LOGIC;
  signal \clip.max_Y_n_8\ : STD_LOGIC;
  signal \clip.max_Y_n_9\ : STD_LOGIC;
  signal del_B_n_0 : STD_LOGIC;
  signal del_B_n_1 : STD_LOGIC;
  signal del_B_n_10 : STD_LOGIC;
  signal del_B_n_11 : STD_LOGIC;
  signal del_B_n_12 : STD_LOGIC;
  signal del_B_n_2 : STD_LOGIC;
  signal del_B_n_3 : STD_LOGIC;
  signal del_B_n_4 : STD_LOGIC;
  signal del_B_n_5 : STD_LOGIC;
  signal del_B_n_6 : STD_LOGIC;
  signal del_B_n_7 : STD_LOGIC;
  signal del_B_n_8 : STD_LOGIC;
  signal del_B_n_9 : STD_LOGIC;
  signal del_R_n_0 : STD_LOGIC;
  signal del_R_n_1 : STD_LOGIC;
  signal del_R_n_10 : STD_LOGIC;
  signal del_R_n_11 : STD_LOGIC;
  signal del_R_n_12 : STD_LOGIC;
  signal del_R_n_2 : STD_LOGIC;
  signal del_R_n_3 : STD_LOGIC;
  signal del_R_n_4 : STD_LOGIC;
  signal del_R_n_5 : STD_LOGIC;
  signal del_R_n_6 : STD_LOGIC;
  signal del_R_n_7 : STD_LOGIC;
  signal del_R_n_8 : STD_LOGIC;
  signal del_R_n_9 : STD_LOGIC;
  signal del_Y_n_0 : STD_LOGIC;
  signal del_Y_n_1 : STD_LOGIC;
  signal del_Y_n_10 : STD_LOGIC;
  signal del_Y_n_11 : STD_LOGIC;
  signal del_Y_n_12 : STD_LOGIC;
  signal del_Y_n_13 : STD_LOGIC;
  signal del_Y_n_14 : STD_LOGIC;
  signal del_Y_n_15 : STD_LOGIC;
  signal del_Y_n_16 : STD_LOGIC;
  signal del_Y_n_17 : STD_LOGIC;
  signal del_Y_n_18 : STD_LOGIC;
  signal del_Y_n_19 : STD_LOGIC;
  signal del_Y_n_2 : STD_LOGIC;
  signal del_Y_n_20 : STD_LOGIC;
  signal del_Y_n_21 : STD_LOGIC;
  signal del_Y_n_22 : STD_LOGIC;
  signal del_Y_n_23 : STD_LOGIC;
  signal del_Y_n_3 : STD_LOGIC;
  signal del_Y_n_4 : STD_LOGIC;
  signal del_Y_n_5 : STD_LOGIC;
  signal del_Y_n_6 : STD_LOGIC;
  signal del_Y_n_7 : STD_LOGIC;
  signal del_Y_n_8 : STD_LOGIC;
  signal del_Y_n_9 : STD_LOGIC;
  signal rg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rgm : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal ry : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \use_fabric.adder/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \v4_mac23.mac_cBY_n_10\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_11\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_12\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_13\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_2\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_3\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_4\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_5\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_6\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_7\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_8\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_9\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_10\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_11\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_12\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_13\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_2\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_3\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_4\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_5\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_6\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_7\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_8\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_9\ : STD_LOGIC;
  signal y_int : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal y_int_round : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal y_inta_raw : STD_LOGIC_VECTOR ( 26 downto 16 );
  signal y_intb : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_v4_mac1.mult_aCr_p_UNCONNECTED\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \NLW_v4_mac23.mac_cBY_p_UNCONNECTED\ : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal \NLW_v4_mac23.mac_cRY_p_UNCONNECTED\ : STD_LOGIC_VECTOR ( 13 downto 12 );
  attribute CREG : integer;
  attribute CREG of \v4_mac1.mult_aCr\ : label is 0;
  attribute HAS_C : integer;
  attribute HAS_C of \v4_mac1.mult_aCr\ : label is 1;
  attribute IWIDTHA : integer;
  attribute IWIDTHA of \v4_mac1.mult_aCr\ : label is 11;
  attribute IWIDTHB : integer;
  attribute IWIDTHB of \v4_mac1.mult_aCr\ : label is 17;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \v4_mac1.mult_aCr\ : label is "yes";
  attribute OWIDTH : integer;
  attribute OWIDTH of \v4_mac1.mult_aCr\ : label is 28;
  attribute ROUND_MODE : integer;
  attribute ROUND_MODE of \v4_mac1.mult_aCr\ : label is 0;
  attribute USE_DSP : string;
  attribute USE_DSP of \v4_mac1.mult_aCr\ : label is "yes";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \v4_mac1.mult_aCr\ : label is "yes";
  attribute mult_style : string;
  attribute mult_style of \v4_mac1.mult_aCr\ : label is "pipe_block";
  attribute register_balancing : string;
  attribute register_balancing of \v4_mac1.mult_aCr\ : label is "yes";
  attribute CREG of \v4_mac23.mac_cBY\ : label is 0;
  attribute HAS_C of \v4_mac23.mac_cBY\ : label is 1;
  attribute IWIDTHA of \v4_mac23.mac_cBY\ : label is 13;
  attribute IWIDTHB of \v4_mac23.mac_cBY\ : label is 17;
  attribute KEEP_HIERARCHY of \v4_mac23.mac_cBY\ : label is "yes";
  attribute OWIDTH of \v4_mac23.mac_cBY\ : label is 14;
  attribute ROUND_MODE of \v4_mac23.mac_cBY\ : label is 0;
  attribute USE_DSP of \v4_mac23.mac_cBY\ : label is "yes";
  attribute downgradeipidentifiedwarnings of \v4_mac23.mac_cBY\ : label is "yes";
  attribute mult_style of \v4_mac23.mac_cBY\ : label is "pipe_block";
  attribute register_balancing of \v4_mac23.mac_cBY\ : label is "yes";
  attribute CREG of \v4_mac23.mac_cRY\ : label is 0;
  attribute HAS_C of \v4_mac23.mac_cRY\ : label is 1;
  attribute IWIDTHA of \v4_mac23.mac_cRY\ : label is 13;
  attribute IWIDTHB of \v4_mac23.mac_cRY\ : label is 17;
  attribute KEEP_HIERARCHY of \v4_mac23.mac_cRY\ : label is "yes";
  attribute OWIDTH of \v4_mac23.mac_cRY\ : label is 14;
  attribute ROUND_MODE of \v4_mac23.mac_cRY\ : label is 0;
  attribute USE_DSP of \v4_mac23.mac_cRY\ : label is "yes";
  attribute downgradeipidentifiedwarnings of \v4_mac23.mac_cRY\ : label is "yes";
  attribute mult_style of \v4_mac23.mac_cRY\ : label is "pipe_block";
  attribute register_balancing of \v4_mac23.mac_cRY\ : label is "yes";
begin
  SR(0) <= \^sr\(0);
add_aRG_bBG_G: entity work.\design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0\
     port map (
      DI(0) => add_aRG_bBG_G_n_15,
      E(0) => E(0),
      S(0) => add_aRG_bBG_G_n_0,
      a(10 downto 0) => y_inta_raw(26 downto 16),
      aclk => aclk,
      \core_control_regs[6]\(0) => \core_control_regs[6]\(10),
      \needs_delay.shift_register_reg[1][0]\ => add_aRG_bBG_G_n_12,
      \needs_delay.shift_register_reg[1][11]\(1) => add_aRG_bBG_G_n_13,
      \needs_delay.shift_register_reg[1][11]\(0) => add_aRG_bBG_G_n_14,
      \needs_delay.shift_register_reg[1][11]_0\(1) => add_aRG_bBG_G_n_16,
      \needs_delay.shift_register_reg[1][11]_0\(0) => add_aRG_bBG_G_n_17,
      \^s\(10 downto 0) => y_int(10 downto 0),
      sclr => \^sr\(0),
      y_intb(9 downto 0) => y_intb(9 downto 0)
    );
\clamp.min_Cb\: entity work.design_1_v_rgb2ycrcb_0_0_min_sat
     port map (
      DI(4) => \clip.max_Cb_n_17\,
      DI(3) => \clip.max_Cb_n_18\,
      DI(2) => \clip.max_Cb_n_19\,
      DI(1) => \clip.max_Cb_n_20\,
      DI(0) => \clip.max_Cb_n_21\,
      E(0) => E(0),
      Q(10) => \clip.max_Cb_n_6\,
      Q(9) => \clip.max_Cb_n_7\,
      Q(8) => \clip.max_Cb_n_8\,
      Q(7) => \clip.max_Cb_n_9\,
      Q(6) => \clip.max_Cb_n_10\,
      Q(5) => \clip.max_Cb_n_11\,
      Q(4) => \clip.max_Cb_n_12\,
      Q(3) => \clip.max_Cb_n_13\,
      Q(2) => \clip.max_Cb_n_14\,
      Q(1) => \clip.max_Cb_n_15\,
      Q(0) => \clip.max_Cb_n_16\,
      S(5) => \clip.max_Cb_n_0\,
      S(4) => \clip.max_Cb_n_1\,
      S(3) => \clip.max_Cb_n_2\,
      S(2) => \clip.max_Cb_n_3\,
      S(1) => \clip.max_Cb_n_4\,
      S(0) => \clip.max_Cb_n_5\,
      aclk => aclk,
      \core_control_regs[3]\(9 downto 0) => \core_control_regs[3]\(9 downto 0),
      da(9 downto 0) => da(19 downto 10),
      sclr => \^sr\(0)
    );
\clamp.min_Cr\: entity work.design_1_v_rgb2ycrcb_0_0_min_sat_0
     port map (
      DI(4) => \clip.max_Cr_n_17\,
      DI(3) => \clip.max_Cr_n_18\,
      DI(2) => \clip.max_Cr_n_19\,
      DI(1) => \clip.max_Cr_n_20\,
      DI(0) => \clip.max_Cr_n_21\,
      E(0) => E(0),
      Q(10) => \clip.max_Cr_n_6\,
      Q(9) => \clip.max_Cr_n_7\,
      Q(8) => \clip.max_Cr_n_8\,
      Q(7) => \clip.max_Cr_n_9\,
      Q(6) => \clip.max_Cr_n_10\,
      Q(5) => \clip.max_Cr_n_11\,
      Q(4) => \clip.max_Cr_n_12\,
      Q(3) => \clip.max_Cr_n_13\,
      Q(2) => \clip.max_Cr_n_14\,
      Q(1) => \clip.max_Cr_n_15\,
      Q(0) => \clip.max_Cr_n_16\,
      S(5) => \clip.max_Cr_n_0\,
      S(4) => \clip.max_Cr_n_1\,
      S(3) => \clip.max_Cr_n_2\,
      S(2) => \clip.max_Cr_n_3\,
      S(1) => \clip.max_Cr_n_4\,
      S(0) => \clip.max_Cr_n_5\,
      aclk => aclk,
      \core_control_regs[5]\(9 downto 0) => \core_control_regs[5]\(9 downto 0),
      da(9 downto 0) => da(29 downto 20),
      sclr => \^sr\(0)
    );
\clamp.min_Y\: entity work.design_1_v_rgb2ycrcb_0_0_min_sat_1
     port map (
      DI(4) => \clip.max_Y_n_17\,
      DI(3) => \clip.max_Y_n_18\,
      DI(2) => \clip.max_Y_n_19\,
      DI(1) => \clip.max_Y_n_20\,
      DI(0) => \clip.max_Y_n_21\,
      E(0) => E(0),
      Q(10) => \clip.max_Y_n_6\,
      Q(9) => \clip.max_Y_n_7\,
      Q(8) => \clip.max_Y_n_8\,
      Q(7) => \clip.max_Y_n_9\,
      Q(6) => \clip.max_Y_n_10\,
      Q(5) => \clip.max_Y_n_11\,
      Q(4) => \clip.max_Y_n_12\,
      Q(3) => \clip.max_Y_n_13\,
      Q(2) => \clip.max_Y_n_14\,
      Q(1) => \clip.max_Y_n_15\,
      Q(0) => \clip.max_Y_n_16\,
      S(5) => \clip.max_Y_n_0\,
      S(4) => \clip.max_Y_n_1\,
      S(3) => \clip.max_Y_n_2\,
      S(2) => \clip.max_Y_n_3\,
      S(1) => \clip.max_Y_n_4\,
      S(0) => \clip.max_Y_n_5\,
      aclk => aclk,
      \core_control_regs[1]\(9 downto 0) => \core_control_regs[1]\(9 downto 0),
      da(9 downto 0) => da(9 downto 0),
      sclr => \^sr\(0)
    );
\clip.max_Cb\: entity work.design_1_v_rgb2ycrcb_0_0_max_sat
     port map (
      DI(4) => \clip.max_Cb_n_17\,
      DI(3) => \clip.max_Cb_n_18\,
      DI(2) => \clip.max_Cb_n_19\,
      DI(1) => \clip.max_Cb_n_20\,
      DI(0) => \clip.max_Cb_n_21\,
      E(0) => E(0),
      Q(10) => \clip.max_Cb_n_6\,
      Q(9) => \clip.max_Cb_n_7\,
      Q(8) => \clip.max_Cb_n_8\,
      Q(7) => \clip.max_Cb_n_9\,
      Q(6) => \clip.max_Cb_n_10\,
      Q(5) => \clip.max_Cb_n_11\,
      Q(4) => \clip.max_Cb_n_12\,
      Q(3) => \clip.max_Cb_n_13\,
      Q(2) => \clip.max_Cb_n_14\,
      Q(1) => \clip.max_Cb_n_15\,
      Q(0) => \clip.max_Cb_n_16\,
      S(5) => \clip.max_Cb_n_0\,
      S(4) => \clip.max_Cb_n_1\,
      S(3) => \clip.max_Cb_n_2\,
      S(2) => \clip.max_Cb_n_3\,
      S(1) => \clip.max_Cb_n_4\,
      S(0) => \clip.max_Cb_n_5\,
      aclk => aclk,
      \core_control_regs[2]\(9 downto 0) => \core_control_regs[2]\(9 downto 0),
      \core_control_regs[3]\(9 downto 0) => \core_control_regs[3]\(9 downto 0),
      p(11) => \v4_mac23.mac_cBY_n_2\,
      p(10) => \v4_mac23.mac_cBY_n_3\,
      p(9) => \v4_mac23.mac_cBY_n_4\,
      p(8) => \v4_mac23.mac_cBY_n_5\,
      p(7) => \v4_mac23.mac_cBY_n_6\,
      p(6) => \v4_mac23.mac_cBY_n_7\,
      p(5) => \v4_mac23.mac_cBY_n_8\,
      p(4) => \v4_mac23.mac_cBY_n_9\,
      p(3) => \v4_mac23.mac_cBY_n_10\,
      p(2) => \v4_mac23.mac_cBY_n_11\,
      p(1) => \v4_mac23.mac_cBY_n_12\,
      p(0) => \v4_mac23.mac_cBY_n_13\,
      sclr => \^sr\(0)
    );
\clip.max_Cr\: entity work.design_1_v_rgb2ycrcb_0_0_max_sat_2
     port map (
      DI(4) => \clip.max_Cr_n_17\,
      DI(3) => \clip.max_Cr_n_18\,
      DI(2) => \clip.max_Cr_n_19\,
      DI(1) => \clip.max_Cr_n_20\,
      DI(0) => \clip.max_Cr_n_21\,
      E(0) => E(0),
      Q(10) => \clip.max_Cr_n_6\,
      Q(9) => \clip.max_Cr_n_7\,
      Q(8) => \clip.max_Cr_n_8\,
      Q(7) => \clip.max_Cr_n_9\,
      Q(6) => \clip.max_Cr_n_10\,
      Q(5) => \clip.max_Cr_n_11\,
      Q(4) => \clip.max_Cr_n_12\,
      Q(3) => \clip.max_Cr_n_13\,
      Q(2) => \clip.max_Cr_n_14\,
      Q(1) => \clip.max_Cr_n_15\,
      Q(0) => \clip.max_Cr_n_16\,
      S(5) => \clip.max_Cr_n_0\,
      S(4) => \clip.max_Cr_n_1\,
      S(3) => \clip.max_Cr_n_2\,
      S(2) => \clip.max_Cr_n_3\,
      S(1) => \clip.max_Cr_n_4\,
      S(0) => \clip.max_Cr_n_5\,
      aclk => aclk,
      \core_control_regs[4]\(9 downto 0) => \core_control_regs[4]\(9 downto 0),
      \core_control_regs[5]\(9 downto 0) => \core_control_regs[5]\(9 downto 0),
      p(11) => \v4_mac23.mac_cRY_n_2\,
      p(10) => \v4_mac23.mac_cRY_n_3\,
      p(9) => \v4_mac23.mac_cRY_n_4\,
      p(8) => \v4_mac23.mac_cRY_n_5\,
      p(7) => \v4_mac23.mac_cRY_n_6\,
      p(6) => \v4_mac23.mac_cRY_n_7\,
      p(5) => \v4_mac23.mac_cRY_n_8\,
      p(4) => \v4_mac23.mac_cRY_n_9\,
      p(3) => \v4_mac23.mac_cRY_n_10\,
      p(2) => \v4_mac23.mac_cRY_n_11\,
      p(1) => \v4_mac23.mac_cRY_n_12\,
      p(0) => \v4_mac23.mac_cRY_n_13\,
      sclr => \^sr\(0)
    );
\clip.max_Y\: entity work.design_1_v_rgb2ycrcb_0_0_max_sat_3
     port map (
      DI(5) => del_Y_n_12,
      DI(4) => del_Y_n_13,
      DI(3) => del_Y_n_14,
      DI(2) => del_Y_n_15,
      DI(1) => del_Y_n_16,
      DI(0) => del_Y_n_17,
      E(0) => E(0),
      Q(10) => \clip.max_Y_n_6\,
      Q(9) => \clip.max_Y_n_7\,
      Q(8) => \clip.max_Y_n_8\,
      Q(7) => \clip.max_Y_n_9\,
      Q(6) => \clip.max_Y_n_10\,
      Q(5) => \clip.max_Y_n_11\,
      Q(4) => \clip.max_Y_n_12\,
      Q(3) => \clip.max_Y_n_13\,
      Q(2) => \clip.max_Y_n_14\,
      Q(1) => \clip.max_Y_n_15\,
      Q(0) => \clip.max_Y_n_16\,
      S(5) => del_Y_n_18,
      S(4) => del_Y_n_19,
      S(3) => del_Y_n_20,
      S(2) => del_Y_n_21,
      S(1) => del_Y_n_22,
      S(0) => del_Y_n_23,
      aclk => aclk,
      \core_control_regs[0]\(9 downto 0) => \core_control_regs[0]\(9 downto 0),
      \core_control_regs[1]\(9 downto 0) => \core_control_regs[1]\(9 downto 0),
      \needs_delay.shift_register_reg[1][0]\ => del_Y_n_11,
      \needs_delay.shift_register_reg[1][10]\(5) => \clip.max_Y_n_0\,
      \needs_delay.shift_register_reg[1][10]\(4) => \clip.max_Y_n_1\,
      \needs_delay.shift_register_reg[1][10]\(3) => \clip.max_Y_n_2\,
      \needs_delay.shift_register_reg[1][10]\(2) => \clip.max_Y_n_3\,
      \needs_delay.shift_register_reg[1][10]\(1) => \clip.max_Y_n_4\,
      \needs_delay.shift_register_reg[1][10]\(0) => \clip.max_Y_n_5\,
      \needs_delay.shift_register_reg[1][10]_0\ => del_Y_n_1,
      \needs_delay.shift_register_reg[1][11]\ => del_Y_n_0,
      \needs_delay.shift_register_reg[1][1]\ => del_Y_n_10,
      \needs_delay.shift_register_reg[1][2]\ => del_Y_n_9,
      \needs_delay.shift_register_reg[1][3]\ => del_Y_n_8,
      \needs_delay.shift_register_reg[1][4]\ => del_Y_n_7,
      \needs_delay.shift_register_reg[1][5]\ => del_Y_n_6,
      \needs_delay.shift_register_reg[1][6]\ => del_Y_n_5,
      \needs_delay.shift_register_reg[1][7]\ => del_Y_n_4,
      \needs_delay.shift_register_reg[1][8]\(4) => \clip.max_Y_n_17\,
      \needs_delay.shift_register_reg[1][8]\(3) => \clip.max_Y_n_18\,
      \needs_delay.shift_register_reg[1][8]\(2) => \clip.max_Y_n_19\,
      \needs_delay.shift_register_reg[1][8]\(1) => \clip.max_Y_n_20\,
      \needs_delay.shift_register_reg[1][8]\(0) => \clip.max_Y_n_21\,
      \needs_delay.shift_register_reg[1][8]_0\ => del_Y_n_3,
      \needs_delay.shift_register_reg[1][9]\ => del_Y_n_2,
      sclr => \^sr\(0)
    );
del_B: entity work.\design_1_v_rgb2ycrcb_0_0_delay__parameterized0\
     port map (
      D(12) => del_B_n_0,
      D(11) => del_B_n_1,
      D(10) => del_B_n_2,
      D(9) => del_B_n_3,
      D(8) => del_B_n_4,
      D(7) => del_B_n_5,
      D(6) => del_B_n_6,
      D(5) => del_B_n_7,
      D(4) => del_B_n_8,
      D(3) => del_B_n_9,
      D(2) => del_B_n_10,
      D(1) => del_B_n_11,
      D(0) => del_B_n_12,
      E(0) => E(0),
      Q(9 downto 0) => Q(19 downto 10),
      aclk => aclk,
      \needs_delay.shift_register_reg[1][12]\(1) => add_aRG_bBG_G_n_16,
      \needs_delay.shift_register_reg[1][12]\(0) => add_aRG_bBG_G_n_17,
      \needs_delay.shift_register_reg[1][7]\ => add_aRG_bBG_G_n_12,
      s(8 downto 0) => y_int(9 downto 1)
    );
del_G: entity work.design_1_v_rgb2ycrcb_0_0_delay
     port map (
      E(0) => E(0),
      Q(9 downto 0) => Q(9 downto 0),
      aclk => aclk,
      y_intb(9 downto 0) => y_intb(9 downto 0)
    );
del_R: entity work.\design_1_v_rgb2ycrcb_0_0_delay__parameterized0_4\
     port map (
      E(0) => E(0),
      Q(9 downto 0) => Q(29 downto 20),
      aclk => aclk,
      minusOp(12) => del_R_n_0,
      minusOp(11) => del_R_n_1,
      minusOp(10) => del_R_n_2,
      minusOp(9) => del_R_n_3,
      minusOp(8) => del_R_n_4,
      minusOp(7) => del_R_n_5,
      minusOp(6) => del_R_n_6,
      minusOp(5) => del_R_n_7,
      minusOp(4) => del_R_n_8,
      minusOp(3) => del_R_n_9,
      minusOp(2) => del_R_n_10,
      minusOp(1) => del_R_n_11,
      minusOp(0) => del_R_n_12,
      \needs_delay.shift_register_reg[1][12]\(1) => add_aRG_bBG_G_n_13,
      \needs_delay.shift_register_reg[1][12]\(0) => add_aRG_bBG_G_n_14,
      \needs_delay.shift_register_reg[1][7]\ => add_aRG_bBG_G_n_12,
      s(8 downto 0) => y_int(9 downto 1)
    );
del_Y: entity work.\design_1_v_rgb2ycrcb_0_0_delay__parameterized1\
     port map (
      DI(5) => del_Y_n_12,
      DI(4) => del_Y_n_13,
      DI(3) => del_Y_n_14,
      DI(2) => del_Y_n_15,
      DI(1) => del_Y_n_16,
      DI(0) => del_Y_n_17,
      E(0) => E(0),
      S(5) => del_Y_n_18,
      S(4) => del_Y_n_19,
      S(3) => del_Y_n_20,
      S(2) => del_Y_n_21,
      S(1) => del_Y_n_22,
      S(0) => del_Y_n_23,
      aclk => aclk,
      \core_control_regs[0]\(9 downto 0) => \core_control_regs[0]\(9 downto 0),
      \needs_delay.shift_register_reg[3][0]_0\ => del_Y_n_11,
      \needs_delay.shift_register_reg[3][10]_0\ => del_Y_n_1,
      \needs_delay.shift_register_reg[3][11]_0\ => del_Y_n_0,
      \needs_delay.shift_register_reg[3][1]_0\ => del_Y_n_10,
      \needs_delay.shift_register_reg[3][2]_0\ => del_Y_n_9,
      \needs_delay.shift_register_reg[3][3]_0\ => del_Y_n_8,
      \needs_delay.shift_register_reg[3][4]_0\ => del_Y_n_7,
      \needs_delay.shift_register_reg[3][5]_0\ => del_Y_n_6,
      \needs_delay.shift_register_reg[3][6]_0\ => del_Y_n_5,
      \needs_delay.shift_register_reg[3][7]_0\ => del_Y_n_4,
      \needs_delay.shift_register_reg[3][8]_0\ => del_Y_n_3,
      \needs_delay.shift_register_reg[3][9]_0\ => del_Y_n_2,
      \^s\(11 downto 0) => y_int_round(11 downto 0)
    );
mult_aRG: entity work.design_1_v_rgb2ycrcb_0_0_mult
     port map (
      E(0) => E(0),
      P(27 downto 0) => rgm(27 downto 0),
      aclk => aclk,
      \core_control_regs[9]\(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      s(10 downto 0) => rg(10 downto 0),
      sclr => \^sr\(0)
    );
sub_BG: entity work.design_1_v_rgb2ycrcb_0_0_radd_sub_sclr
     port map (
      E(0) => E(0),
      Q(18 downto 0) => Q(19 downto 1),
      aclk => aclk,
      p_0_in(0) => \use_fabric.adder/p_0_in\(0),
      s(10 downto 0) => bg(10 downto 0),
      sclr => \^sr\(0)
    );
sub_BY: entity work.\design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1\
     port map (
      D(12) => del_B_n_0,
      D(11) => del_B_n_1,
      D(10) => del_B_n_2,
      D(9) => del_B_n_3,
      D(8) => del_B_n_4,
      D(7) => del_B_n_5,
      D(6) => del_B_n_6,
      D(5) => del_B_n_7,
      D(4) => del_B_n_8,
      D(3) => del_B_n_9,
      D(2) => del_B_n_10,
      D(1) => del_B_n_11,
      D(0) => del_B_n_12,
      E(0) => E(0),
      aclk => aclk,
      \out\(12 downto 0) => by(12 downto 0),
      sclr => \^sr\(0)
    );
sub_RG: entity work.design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_5
     port map (
      E(0) => E(0),
      Q(19 downto 10) => Q(29 downto 20),
      Q(9 downto 0) => Q(9 downto 0),
      aclk => aclk,
      p_0_in(0) => \use_fabric.adder/p_0_in\(0),
      s(10 downto 0) => rg(10 downto 0),
      sclr => \^sr\(0)
    );
sub_RY: entity work.\design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1_6\
     port map (
      D(12) => del_R_n_0,
      D(11) => del_R_n_1,
      D(10) => del_R_n_2,
      D(9) => del_R_n_3,
      D(8) => del_R_n_4,
      D(7) => del_R_n_5,
      D(6) => del_R_n_6,
      D(5) => del_R_n_7,
      D(4) => del_R_n_8,
      D(3) => del_R_n_9,
      D(2) => del_R_n_10,
      D(1) => del_R_n_11,
      D(0) => del_R_n_12,
      E(0) => E(0),
      aclk => aclk,
      \out\(12 downto 0) => ry(12 downto 0),
      resetn_out => resetn_out,
      sclr => \^sr\(0)
    );
\v4_mac1.mult_aCr\: entity work.design_1_v_rgb2ycrcb_0_0_mac
     port map (
      a(10 downto 0) => bg(10 downto 0),
      b(16 downto 0) => \core_control_regs[10]\(16 downto 0),
      c(27 downto 0) => rgm(27 downto 0),
      ce => E(0),
      clk => aclk,
      p(27) => \NLW_v4_mac1.mult_aCr_p_UNCONNECTED\(27),
      p(26 downto 16) => y_inta_raw(26 downto 16),
      p(15 downto 0) => \NLW_v4_mac1.mult_aCr_p_UNCONNECTED\(15 downto 0),
      sclr => \^sr\(0)
    );
\v4_mac23.mac_cBY\: entity work.\design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1\
     port map (
      a(12 downto 0) => by(12 downto 0),
      b(16 downto 0) => \core_control_regs[12]\(16 downto 0),
      c(13) => \core_control_regs[7]\(10),
      c(12) => \core_control_regs[7]\(10),
      c(11) => \core_control_regs[7]\(10),
      c(10 downto 0) => \core_control_regs[7]\(10 downto 0),
      ce => E(0),
      clk => aclk,
      p(13 downto 12) => \NLW_v4_mac23.mac_cBY_p_UNCONNECTED\(13 downto 12),
      p(11) => \v4_mac23.mac_cBY_n_2\,
      p(10) => \v4_mac23.mac_cBY_n_3\,
      p(9) => \v4_mac23.mac_cBY_n_4\,
      p(8) => \v4_mac23.mac_cBY_n_5\,
      p(7) => \v4_mac23.mac_cBY_n_6\,
      p(6) => \v4_mac23.mac_cBY_n_7\,
      p(5) => \v4_mac23.mac_cBY_n_8\,
      p(4) => \v4_mac23.mac_cBY_n_9\,
      p(3) => \v4_mac23.mac_cBY_n_10\,
      p(2) => \v4_mac23.mac_cBY_n_11\,
      p(1) => \v4_mac23.mac_cBY_n_12\,
      p(0) => \v4_mac23.mac_cBY_n_13\,
      sclr => \^sr\(0)
    );
\v4_mac23.mac_cRY\: entity work.\design_1_v_rgb2ycrcb_0_0_mac__parameterized0\
     port map (
      a(12 downto 0) => ry(12 downto 0),
      b(16 downto 0) => \core_control_regs[11]\(16 downto 0),
      c(13) => \core_control_regs[8]\(10),
      c(12) => \core_control_regs[8]\(10),
      c(11) => \core_control_regs[8]\(10),
      c(10 downto 0) => \core_control_regs[8]\(10 downto 0),
      ce => E(0),
      clk => aclk,
      p(13 downto 12) => \NLW_v4_mac23.mac_cRY_p_UNCONNECTED\(13 downto 12),
      p(11) => \v4_mac23.mac_cRY_n_2\,
      p(10) => \v4_mac23.mac_cRY_n_3\,
      p(9) => \v4_mac23.mac_cRY_n_4\,
      p(8) => \v4_mac23.mac_cRY_n_5\,
      p(7) => \v4_mac23.mac_cRY_n_6\,
      p(6) => \v4_mac23.mac_cRY_n_7\,
      p(5) => \v4_mac23.mac_cRY_n_8\,
      p(4) => \v4_mac23.mac_cRY_n_9\,
      p(3) => \v4_mac23.mac_cRY_n_10\,
      p(2) => \v4_mac23.mac_cRY_n_11\,
      p(1) => \v4_mac23.mac_cRY_n_12\,
      p(0) => \v4_mac23.mac_cRY_n_13\,
      sclr => \^sr\(0)
    );
\y_needs_round.round_Y\: entity work.design_1_v_rgb2ycrcb_0_0_round
     port map (
      DI(0) => add_aRG_bBG_G_n_15,
      E(0) => E(0),
      S(0) => add_aRG_bBG_G_n_0,
      aclk => aclk,
      \core_control_regs[6]\(10 downto 0) => \core_control_regs[6]\(10 downto 0),
      \needs_delay.shift_register_reg[1][12]\(10 downto 0) => y_int(10 downto 0),
      \^s\(11 downto 0) => y_int_round(11 downto 0),
      sclr => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_top is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready_int_reg : out STD_LOGIC;
    intc_if : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_update : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    \core_control_regs[10]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[12]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \core_control_regs[7]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \core_control_regs[11]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \core_control_regs[8]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \core_control_regs[9]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    aclken : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_tready : in STD_LOGIC;
    resetn_out : in STD_LOGIC;
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \time_control_regs[0]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \core_control_regs[0]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[1]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[2]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[3]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[4]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[5]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    da : in STD_LOGIC_VECTOR ( 31 downto 0 );
    core_d_out : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_top : entity is "rgb2ycrcb_top";
end design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_top;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_top is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \UOSD_AXIS_SYNC_FIFO/wen\ : STD_LOGIC;
  signal axi_control_n_15 : STD_LOGIC;
  signal axi_in_fifo_n_1 : STD_LOGIC;
  signal axi_in_fifo_n_10 : STD_LOGIC;
  signal axi_in_fifo_n_11 : STD_LOGIC;
  signal axi_in_fifo_n_12 : STD_LOGIC;
  signal axi_in_fifo_n_13 : STD_LOGIC;
  signal axi_in_fifo_n_14 : STD_LOGIC;
  signal axi_in_fifo_n_15 : STD_LOGIC;
  signal axi_in_fifo_n_16 : STD_LOGIC;
  signal axi_in_fifo_n_17 : STD_LOGIC;
  signal axi_in_fifo_n_18 : STD_LOGIC;
  signal axi_in_fifo_n_19 : STD_LOGIC;
  signal axi_in_fifo_n_2 : STD_LOGIC;
  signal axi_in_fifo_n_20 : STD_LOGIC;
  signal axi_in_fifo_n_21 : STD_LOGIC;
  signal axi_in_fifo_n_22 : STD_LOGIC;
  signal axi_in_fifo_n_23 : STD_LOGIC;
  signal axi_in_fifo_n_24 : STD_LOGIC;
  signal axi_in_fifo_n_25 : STD_LOGIC;
  signal axi_in_fifo_n_26 : STD_LOGIC;
  signal axi_in_fifo_n_27 : STD_LOGIC;
  signal axi_in_fifo_n_28 : STD_LOGIC;
  signal axi_in_fifo_n_29 : STD_LOGIC;
  signal axi_in_fifo_n_3 : STD_LOGIC;
  signal axi_in_fifo_n_30 : STD_LOGIC;
  signal axi_in_fifo_n_31 : STD_LOGIC;
  signal axi_in_fifo_n_32 : STD_LOGIC;
  signal axi_in_fifo_n_33 : STD_LOGIC;
  signal axi_in_fifo_n_34 : STD_LOGIC;
  signal axi_in_fifo_n_35 : STD_LOGIC;
  signal axi_in_fifo_n_6 : STD_LOGIC;
  signal axi_in_fifo_n_7 : STD_LOGIC;
  signal axi_in_fifo_n_8 : STD_LOGIC;
  signal axi_in_fifo_n_9 : STD_LOGIC;
  signal axi_out_fifo_n_0 : STD_LOGIC;
  signal axi_out_fifo_n_1 : STD_LOGIC;
  signal fifo_wr_i : STD_LOGIC;
  signal in_fifo_reset : STD_LOGIC;
  signal \^intc_if\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal intcore_n_1 : STD_LOGIC;
  signal intcore_n_10 : STD_LOGIC;
  signal intcore_n_11 : STD_LOGIC;
  signal intcore_n_12 : STD_LOGIC;
  signal intcore_n_13 : STD_LOGIC;
  signal intcore_n_14 : STD_LOGIC;
  signal intcore_n_15 : STD_LOGIC;
  signal intcore_n_16 : STD_LOGIC;
  signal intcore_n_17 : STD_LOGIC;
  signal intcore_n_18 : STD_LOGIC;
  signal intcore_n_19 : STD_LOGIC;
  signal intcore_n_2 : STD_LOGIC;
  signal intcore_n_20 : STD_LOGIC;
  signal intcore_n_21 : STD_LOGIC;
  signal intcore_n_22 : STD_LOGIC;
  signal intcore_n_23 : STD_LOGIC;
  signal intcore_n_24 : STD_LOGIC;
  signal intcore_n_25 : STD_LOGIC;
  signal intcore_n_26 : STD_LOGIC;
  signal intcore_n_27 : STD_LOGIC;
  signal intcore_n_28 : STD_LOGIC;
  signal intcore_n_29 : STD_LOGIC;
  signal intcore_n_3 : STD_LOGIC;
  signal intcore_n_30 : STD_LOGIC;
  signal intcore_n_4 : STD_LOGIC;
  signal intcore_n_5 : STD_LOGIC;
  signal intcore_n_6 : STD_LOGIC;
  signal intcore_n_7 : STD_LOGIC;
  signal intcore_n_8 : STD_LOGIC;
  signal intcore_n_9 : STD_LOGIC;
  signal master_en : STD_LOGIC;
  signal out_fifo_eol : STD_LOGIC;
  signal out_fifo_sof : STD_LOGIC;
  signal sclr : STD_LOGIC;
  signal vid_data_in_r : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal vid_eol_in : STD_LOGIC;
  signal vid_sof_in : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  intc_if(7 downto 0) <= \^intc_if\(7 downto 0);
axi_control: entity work.design_1_v_rgb2ycrcb_0_0_axi4s_control
     port map (
      E(0) => \^e\(0),
      \GenerateDoutWriteFirstB.t_qb_reg[29]\ => axi_out_fifo_n_0,
      SR(0) => sclr,
      aclk => aclk,
      aclken => aclken,
      \col_cnt_reg[0]_0\ => axi_in_fifo_n_2,
      \col_cnt_reg[0]_1\ => axi_out_fifo_n_1,
      core_d_out => core_d_out,
      da(1) => out_fifo_sof,
      da(0) => out_fifo_eol,
      eof_i_reg_0 => axi_in_fifo_n_1,
      eol_late_i_reg_0 => axi_in_fifo_n_3,
      fifo_rd_i_reg_0 => axi_control_n_15,
      fifo_wr_i => fifo_wr_i,
      \genr_control_regs[0]\(1) => \genr_control_regs[0]\(2),
      \genr_control_regs[0]\(0) => \genr_control_regs[0]\(0),
      in_fifo_reset => in_fifo_reset,
      intc_if(7 downto 0) => \^intc_if\(7 downto 0),
      master_en => master_en,
      resetn_out => resetn_out,
      t_qb(1) => vid_sof_in,
      t_qb(0) => vid_eol_in,
      \time_control_regs[0]\(25 downto 0) => \time_control_regs[0]\(25 downto 0),
      wen => \UOSD_AXIS_SYNC_FIFO/wen\
    );
axi_in_fifo: entity work.design_1_v_rgb2ycrcb_0_0_axis_input_buffer
     port map (
      \GenerateDoutWriteFirstB.t_qb_reg[30]\ => axi_in_fifo_n_3,
      Q(31) => vid_sof_in,
      Q(30) => vid_eol_in,
      Q(29) => axi_in_fifo_n_6,
      Q(28) => axi_in_fifo_n_7,
      Q(27) => axi_in_fifo_n_8,
      Q(26) => axi_in_fifo_n_9,
      Q(25) => axi_in_fifo_n_10,
      Q(24) => axi_in_fifo_n_11,
      Q(23) => axi_in_fifo_n_12,
      Q(22) => axi_in_fifo_n_13,
      Q(21) => axi_in_fifo_n_14,
      Q(20) => axi_in_fifo_n_15,
      Q(19) => axi_in_fifo_n_16,
      Q(18) => axi_in_fifo_n_17,
      Q(17) => axi_in_fifo_n_18,
      Q(16) => axi_in_fifo_n_19,
      Q(15) => axi_in_fifo_n_20,
      Q(14) => axi_in_fifo_n_21,
      Q(13) => axi_in_fifo_n_22,
      Q(12) => axi_in_fifo_n_23,
      Q(11) => axi_in_fifo_n_24,
      Q(10) => axi_in_fifo_n_25,
      Q(9) => axi_in_fifo_n_26,
      Q(8) => axi_in_fifo_n_27,
      Q(7) => axi_in_fifo_n_28,
      Q(6) => axi_in_fifo_n_29,
      Q(5) => axi_in_fifo_n_30,
      Q(4) => axi_in_fifo_n_31,
      Q(3) => axi_in_fifo_n_32,
      Q(2) => axi_in_fifo_n_33,
      Q(1) => axi_in_fifo_n_34,
      Q(0) => axi_in_fifo_n_35,
      SR(0) => sclr,
      aclk => aclk,
      aclken => aclken,
      aclken_0 => axi_in_fifo_n_1,
      da(31 downto 0) => da(31 downto 0),
      depth_match_reg => axi_control_n_15,
      empty_match_reg => axi_in_fifo_n_2,
      \genr_control_regs[0]\(1 downto 0) => \genr_control_regs[0]\(1 downto 0),
      in_fifo_reset => in_fifo_reset,
      master_en => master_en,
      reg_update => reg_update,
      resetn_out => resetn_out,
      s_axis_tready_int_reg_0 => s_axis_tready_int_reg,
      s_axis_video_tvalid => s_axis_video_tvalid
    );
axi_out_fifo: entity work.design_1_v_rgb2ycrcb_0_0_axis_output_buffer
     port map (
      O13(31 downto 0) => O13(31 downto 0),
      SR(0) => sclr,
      aclk => aclk,
      aclken => aclken,
      core_d_out => core_d_out,
      da(31) => out_fifo_sof,
      da(30) => out_fifo_eol,
      da(29) => intcore_n_1,
      da(28) => intcore_n_2,
      da(27) => intcore_n_3,
      da(26) => intcore_n_4,
      da(25) => intcore_n_5,
      da(24) => intcore_n_6,
      da(23) => intcore_n_7,
      da(22) => intcore_n_8,
      da(21) => intcore_n_9,
      da(20) => intcore_n_10,
      da(19) => intcore_n_11,
      da(18) => intcore_n_12,
      da(17) => intcore_n_13,
      da(16) => intcore_n_14,
      da(15) => intcore_n_15,
      da(14) => intcore_n_16,
      da(13) => intcore_n_17,
      da(12) => intcore_n_18,
      da(11) => intcore_n_19,
      da(10) => intcore_n_20,
      da(9) => intcore_n_21,
      da(8) => intcore_n_22,
      da(7) => intcore_n_23,
      da(6) => intcore_n_24,
      da(5) => intcore_n_25,
      da(4) => intcore_n_26,
      da(3) => intcore_n_27,
      da(2) => intcore_n_28,
      da(1) => intcore_n_29,
      da(0) => intcore_n_30,
      fifo_wr_i => fifo_wr_i,
      full_int_reg => axi_out_fifo_n_0,
      \genr_control_regs[0]\(0) => \genr_control_regs[0]\(0),
      intc_if(0) => \^intc_if\(5),
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tvalid => m_axis_video_tvalid,
      \read_ptr_int_reg[2]\ => axi_in_fifo_n_1,
      wen => \UOSD_AXIS_SYNC_FIFO/wen\,
      \write_ptr_int_reg[3]\ => axi_out_fifo_n_1
    );
intcore: entity work.design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_core
     port map (
      E(0) => \^e\(0),
      Q(29 downto 0) => vid_data_in_r(29 downto 0),
      SR(0) => sclr,
      aclk => aclk,
      \core_control_regs[0]\(9 downto 0) => \core_control_regs[0]\(9 downto 0),
      \core_control_regs[10]\(16 downto 0) => \core_control_regs[10]\(16 downto 0),
      \core_control_regs[11]\(16 downto 0) => \core_control_regs[11]\(16 downto 0),
      \core_control_regs[12]\(16 downto 0) => \core_control_regs[12]\(16 downto 0),
      \core_control_regs[1]\(9 downto 0) => \core_control_regs[1]\(9 downto 0),
      \core_control_regs[2]\(9 downto 0) => \core_control_regs[2]\(9 downto 0),
      \core_control_regs[3]\(9 downto 0) => \core_control_regs[3]\(9 downto 0),
      \core_control_regs[4]\(9 downto 0) => \core_control_regs[4]\(9 downto 0),
      \core_control_regs[5]\(9 downto 0) => \core_control_regs[5]\(9 downto 0),
      \core_control_regs[6]\(10 downto 0) => \core_control_regs[6]\(10 downto 0),
      \core_control_regs[7]\(10 downto 0) => \core_control_regs[7]\(10 downto 0),
      \core_control_regs[8]\(10 downto 0) => \core_control_regs[8]\(10 downto 0),
      \core_control_regs[9]\(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      da(29) => intcore_n_1,
      da(28) => intcore_n_2,
      da(27) => intcore_n_3,
      da(26) => intcore_n_4,
      da(25) => intcore_n_5,
      da(24) => intcore_n_6,
      da(23) => intcore_n_7,
      da(22) => intcore_n_8,
      da(21) => intcore_n_9,
      da(20) => intcore_n_10,
      da(19) => intcore_n_11,
      da(18) => intcore_n_12,
      da(17) => intcore_n_13,
      da(16) => intcore_n_14,
      da(15) => intcore_n_15,
      da(14) => intcore_n_16,
      da(13) => intcore_n_17,
      da(12) => intcore_n_18,
      da(11) => intcore_n_19,
      da(10) => intcore_n_20,
      da(9) => intcore_n_21,
      da(8) => intcore_n_22,
      da(7) => intcore_n_23,
      da(6) => intcore_n_24,
      da(5) => intcore_n_25,
      da(4) => intcore_n_26,
      da(3) => intcore_n_27,
      da(2) => intcore_n_28,
      da(1) => intcore_n_29,
      da(0) => intcore_n_30,
      resetn_out => resetn_out
    );
\vid_data_in_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_35,
      Q => vid_data_in_r(0),
      R => '0'
    );
\vid_data_in_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_25,
      Q => vid_data_in_r(10),
      R => '0'
    );
\vid_data_in_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_24,
      Q => vid_data_in_r(11),
      R => '0'
    );
\vid_data_in_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_23,
      Q => vid_data_in_r(12),
      R => '0'
    );
\vid_data_in_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_22,
      Q => vid_data_in_r(13),
      R => '0'
    );
\vid_data_in_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_21,
      Q => vid_data_in_r(14),
      R => '0'
    );
\vid_data_in_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_20,
      Q => vid_data_in_r(15),
      R => '0'
    );
\vid_data_in_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_19,
      Q => vid_data_in_r(16),
      R => '0'
    );
\vid_data_in_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_18,
      Q => vid_data_in_r(17),
      R => '0'
    );
\vid_data_in_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_17,
      Q => vid_data_in_r(18),
      R => '0'
    );
\vid_data_in_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_16,
      Q => vid_data_in_r(19),
      R => '0'
    );
\vid_data_in_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_34,
      Q => vid_data_in_r(1),
      R => '0'
    );
\vid_data_in_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_15,
      Q => vid_data_in_r(20),
      R => '0'
    );
\vid_data_in_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_14,
      Q => vid_data_in_r(21),
      R => '0'
    );
\vid_data_in_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_13,
      Q => vid_data_in_r(22),
      R => '0'
    );
\vid_data_in_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_12,
      Q => vid_data_in_r(23),
      R => '0'
    );
\vid_data_in_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_11,
      Q => vid_data_in_r(24),
      R => '0'
    );
\vid_data_in_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_10,
      Q => vid_data_in_r(25),
      R => '0'
    );
\vid_data_in_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_9,
      Q => vid_data_in_r(26),
      R => '0'
    );
\vid_data_in_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_8,
      Q => vid_data_in_r(27),
      R => '0'
    );
\vid_data_in_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_7,
      Q => vid_data_in_r(28),
      R => '0'
    );
\vid_data_in_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_6,
      Q => vid_data_in_r(29),
      R => '0'
    );
\vid_data_in_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_33,
      Q => vid_data_in_r(2),
      R => '0'
    );
\vid_data_in_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_32,
      Q => vid_data_in_r(3),
      R => '0'
    );
\vid_data_in_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_31,
      Q => vid_data_in_r(4),
      R => '0'
    );
\vid_data_in_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_30,
      Q => vid_data_in_r(5),
      R => '0'
    );
\vid_data_in_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_29,
      Q => vid_data_in_r(6),
      R => '0'
    );
\vid_data_in_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_28,
      Q => vid_data_in_r(7),
      R => '0'
    );
\vid_data_in_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_27,
      Q => vid_data_in_r(8),
      R => '0'
    );
\vid_data_in_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => axi_in_fifo_n_26,
      Q => vid_data_in_r(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    intc_if : out STD_LOGIC_VECTOR ( 8 downto 0 );
    irq : out STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    s_axis_video_tuser_sof : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser_sof : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute C_ACOEF : integer;
  attribute C_ACOEF of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 19595;
  attribute C_ACTIVE_COLS : integer;
  attribute C_ACTIVE_COLS of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1280;
  attribute C_ACTIVE_ROWS : integer;
  attribute C_ACTIVE_ROWS of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 720;
  attribute C_BCOEF : integer;
  attribute C_BCOEF of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 7471;
  attribute C_CBMAX : integer;
  attribute C_CBMAX of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1023;
  attribute C_CBMIN : integer;
  attribute C_CBMIN of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 0;
  attribute C_CBOFFSET : integer;
  attribute C_CBOFFSET of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 512;
  attribute C_CCOEF : integer;
  attribute C_CCOEF of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 57493;
  attribute C_CRMAX : integer;
  attribute C_CRMAX of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1023;
  attribute C_CRMIN : integer;
  attribute C_CRMIN of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 0;
  attribute C_CROFFSET : integer;
  attribute C_CROFFSET of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 512;
  attribute C_DCOEF : integer;
  attribute C_DCOEF of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 32250;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is "zynquplus";
  attribute C_HAS_AXI4_LITE : integer;
  attribute C_HAS_AXI4_LITE of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 0;
  attribute C_HAS_CLAMP : integer;
  attribute C_HAS_CLAMP of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1;
  attribute C_HAS_CLIP : integer;
  attribute C_HAS_CLIP of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1;
  attribute C_HAS_DEBUG : integer;
  attribute C_HAS_DEBUG of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 0;
  attribute C_HAS_INTC_IF : integer;
  attribute C_HAS_INTC_IF of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 0;
  attribute C_MAX_COLS : integer;
  attribute C_MAX_COLS of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1280;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 10;
  attribute C_M_AXIS_VIDEO_FORMAT : integer;
  attribute C_M_AXIS_VIDEO_FORMAT of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 32;
  attribute C_S_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_S_AXIS_VIDEO_DATA_WIDTH of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 10;
  attribute C_S_AXIS_VIDEO_FORMAT : integer;
  attribute C_S_AXIS_VIDEO_FORMAT of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 2;
  attribute C_S_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_S_AXIS_VIDEO_TDATA_WIDTH of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 9;
  attribute C_S_AXI_CLK_FREQ_HZ : integer;
  attribute C_S_AXI_CLK_FREQ_HZ of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 100000000;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 32;
  attribute C_YMAX : integer;
  attribute C_YMAX of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1023;
  attribute C_YMIN : integer;
  attribute C_YMIN of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 0;
  attribute C_YOFFSET : integer;
  attribute C_YOFFSET of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 64;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is "v_rgb2ycrcb";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is "yes";
end design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb is
  signal \<const0>\ : STD_LOGIC;
  signal U_VIDEO_CTRL_n_318 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_319 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_320 : STD_LOGIC;
  signal \core_control_regs[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[10]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[11]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[12]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[4]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[5]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[6]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[7]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[8]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[9]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal core_d : STD_LOGIC;
  signal \genr_control_regs[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^intc_if\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m_axis_video_tdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal reg_update : STD_LOGIC;
  signal resetn : STD_LOGIC;
  signal \time_control_regs[0]\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal NLW_U_VIDEO_CTRL_ipif_cs_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U_VIDEO_CTRL_ipif_rnw_out_UNCONNECTED : STD_LOGIC;
  signal \NLW_U_VIDEO_CTRL_core_control_regs[0]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[10]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[11]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[12]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[1]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[2]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[3]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[4]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[5]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[6]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[7]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[8]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[9]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[1]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[2]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[3]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[4]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[5]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[6]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[7]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U_VIDEO_CTRL_ipif_addr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U_VIDEO_CTRL_ipif_data_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[0]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 29 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[1]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_COREGEN_PATCH : integer;
  attribute C_COREGEN_PATCH of U_VIDEO_CTRL : label is 0;
  attribute C_CORE_AXI_WRITE : string;
  attribute C_CORE_AXI_WRITE of U_VIDEO_CTRL : label is "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000111111111111111111000000000000001111111111111111110000000000000011111111111111111100000000000000111111111111111111";
  attribute C_CORE_DBUFFER : string;
  attribute C_CORE_DBUFFER of U_VIDEO_CTRL : label is "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111";
  attribute C_CORE_DEFAULT : string;
  attribute C_CORE_DEFAULT of U_VIDEO_CTRL : label is "416'b00000000000000000000001111111111000000000000000000000000000000000000000000000000000000111111111100000000000000000000000000000000000000000000000000000011111111110000000000000000000000000000000000000000000000000000000001000000000000000000000000000010000000000000000000000000000000100000000000000000000000000100110010001011000000000000000000011101001011110000000000000000111000001001010100000000000000000111110111111010";
  attribute C_CORE_NUM_REGS : integer;
  attribute C_CORE_NUM_REGS of U_VIDEO_CTRL : label is 13;
  attribute C_FAMILY of U_VIDEO_CTRL : label is "zynquplus";
  attribute C_GENR_AXI_WRITE : string;
  attribute C_GENR_AXI_WRITE of U_VIDEO_CTRL : label is "256'b1100000000000000000000000011111100000000000000010000000000001111000000000000000000000000000011110000000000000001000000000000111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_DBUFFER : string;
  attribute C_GENR_DBUFFER of U_VIDEO_CTRL : label is "256'b0000000000000000000000000010110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_DEFAULT : string;
  attribute C_GENR_DEFAULT of U_VIDEO_CTRL : label is "256'b0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_NUM_REGS : integer;
  attribute C_GENR_NUM_REGS of U_VIDEO_CTRL : label is 8;
  attribute C_GENR_SELFCLR : string;
  attribute C_GENR_SELFCLR of U_VIDEO_CTRL : label is "256'b0000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_HAS_AXI4_LITE of U_VIDEO_CTRL : label is 0;
  attribute C_HAS_IRQ : integer;
  attribute C_HAS_IRQ of U_VIDEO_CTRL : label is 1;
  attribute C_IS_EVAL : string;
  attribute C_IS_EVAL of U_VIDEO_CTRL : label is "FALSE";
  attribute C_REVISION_NUMBER : integer;
  attribute C_REVISION_NUMBER of U_VIDEO_CTRL : label is 1;
  attribute C_SRESET_LENGTH : integer;
  attribute C_SRESET_LENGTH of U_VIDEO_CTRL : label is 1;
  attribute C_S_AXI_ADDR_WIDTH of U_VIDEO_CTRL : label is 9;
  attribute C_S_AXI_DATA_WIDTH of U_VIDEO_CTRL : label is 32;
  attribute C_TIMEOUT_HOURS : integer;
  attribute C_TIMEOUT_HOURS of U_VIDEO_CTRL : label is 8;
  attribute C_TIMEOUT_MINS : integer;
  attribute C_TIMEOUT_MINS of U_VIDEO_CTRL : label is 0;
  attribute C_TIME_AXI_WRITE : string;
  attribute C_TIME_AXI_WRITE of U_VIDEO_CTRL : label is "64'b1111111111111111111111111111111100000000000000000000000000000111";
  attribute C_TIME_DBUFFER : string;
  attribute C_TIME_DBUFFER of U_VIDEO_CTRL : label is "64'b1111111111111111111111111111111100000000000000000000000000000111";
  attribute C_TIME_DEFAULT : string;
  attribute C_TIME_DEFAULT of U_VIDEO_CTRL : label is "64'b0000001011010000000001010000000000000000000000000000000000000000";
  attribute C_TIME_NUM_REGS : integer;
  attribute C_TIME_NUM_REGS of U_VIDEO_CTRL : label is 2;
  attribute C_VERSION_MAJOR : integer;
  attribute C_VERSION_MAJOR of U_VIDEO_CTRL : label is 7;
  attribute C_VERSION_MINOR : integer;
  attribute C_VERSION_MINOR of U_VIDEO_CTRL : label is 1;
  attribute C_VERSION_REVISION : integer;
  attribute C_VERSION_REVISION of U_VIDEO_CTRL : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U_VIDEO_CTRL : label is "yes";
  attribute downgradeipidentifiedwarnings of U_VIDEO_CTRL : label is "yes";
  attribute sigis : string;
  attribute sigis of aclk : signal is "CLK";
  attribute sigis of aresetn : signal is "RST";
  attribute sigis of irq : signal is "INTR_LEVEL_HIGH";
  attribute sigis of s_axi_aclk : signal is "CLK";
  attribute sigis of s_axi_aresetn : signal is "RST";
begin
  intc_if(8 downto 0) <= \^intc_if\(8 downto 0);
  m_axis_video_tdata(31) <= \<const0>\;
  m_axis_video_tdata(30) <= \<const0>\;
  m_axis_video_tdata(29 downto 0) <= \^m_axis_video_tdata\(29 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U_VIDEO_CTRL: entity work.design_1_v_rgb2ycrcb_0_0_video_ctrl
     port map (
      aclk => s_axi_aclk,
      aclk_en => s_axi_aclken,
      aresetn => s_axi_aresetn,
      \core_control_regs[0]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[0]_UNCONNECTED\(31 downto 16),
      \core_control_regs[0]\(15 downto 0) => \core_control_regs[0]\(15 downto 0),
      \core_control_regs[10]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[10]_UNCONNECTED\(31 downto 17),
      \core_control_regs[10]\(16 downto 0) => \core_control_regs[10]\(16 downto 0),
      \core_control_regs[11]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[11]_UNCONNECTED\(31 downto 17),
      \core_control_regs[11]\(16 downto 0) => \core_control_regs[11]\(16 downto 0),
      \core_control_regs[12]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[12]_UNCONNECTED\(31 downto 17),
      \core_control_regs[12]\(16 downto 0) => \core_control_regs[12]\(16 downto 0),
      \core_control_regs[1]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[1]_UNCONNECTED\(31 downto 16),
      \core_control_regs[1]\(15 downto 0) => \core_control_regs[1]\(15 downto 0),
      \core_control_regs[2]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[2]_UNCONNECTED\(31 downto 16),
      \core_control_regs[2]\(15 downto 0) => \core_control_regs[2]\(15 downto 0),
      \core_control_regs[3]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[3]_UNCONNECTED\(31 downto 16),
      \core_control_regs[3]\(15 downto 0) => \core_control_regs[3]\(15 downto 0),
      \core_control_regs[4]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[4]_UNCONNECTED\(31 downto 16),
      \core_control_regs[4]\(15 downto 0) => \core_control_regs[4]\(15 downto 0),
      \core_control_regs[5]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[5]_UNCONNECTED\(31 downto 16),
      \core_control_regs[5]\(15 downto 0) => \core_control_regs[5]\(15 downto 0),
      \core_control_regs[6]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[6]_UNCONNECTED\(31 downto 17),
      \core_control_regs[6]\(16 downto 0) => \core_control_regs[6]\(16 downto 0),
      \core_control_regs[7]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[7]_UNCONNECTED\(31 downto 17),
      \core_control_regs[7]\(16 downto 0) => \core_control_regs[7]\(16 downto 0),
      \core_control_regs[8]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[8]_UNCONNECTED\(31 downto 17),
      \core_control_regs[8]\(16 downto 0) => \core_control_regs[8]\(16 downto 0),
      \core_control_regs[9]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[9]_UNCONNECTED\(31 downto 17),
      \core_control_regs[9]\(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      core_d_out => core_d,
      \core_status_regs[0]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[10]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[11]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[12]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[1]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[2]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[3]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[4]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[5]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[6]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[7]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[8]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[9]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_control_regs[0]\(31 downto 0) => \genr_control_regs[0]\(31 downto 0),
      \genr_control_regs[1]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[1]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[2]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[2]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[3]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[3]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[4]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[4]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[5]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[5]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[6]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[6]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[7]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[7]_UNCONNECTED\(31 downto 0),
      \genr_status_regs[0]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[1]\(31 downto 17) => B"000000000000000",
      \genr_status_regs[1]\(16) => \^intc_if\(4),
      \genr_status_regs[1]\(15 downto 4) => B"000000000000",
      \genr_status_regs[1]\(3 downto 0) => \^intc_if\(3 downto 0),
      \genr_status_regs[2]\(31 downto 4) => B"0000000000000000000000000000",
      \genr_status_regs[2]\(3 downto 0) => \^intc_if\(8 downto 5),
      \genr_status_regs[3]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[4]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[5]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[6]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[7]\(31 downto 0) => B"00000000000000000000000000000000",
      ipif_addr_out(8 downto 0) => NLW_U_VIDEO_CTRL_ipif_addr_out_UNCONNECTED(8 downto 0),
      ipif_cs_out => NLW_U_VIDEO_CTRL_ipif_cs_out_UNCONNECTED,
      ipif_data_out(31 downto 0) => NLW_U_VIDEO_CTRL_ipif_data_out_UNCONNECTED(31 downto 0),
      ipif_rnw_out => NLW_U_VIDEO_CTRL_ipif_rnw_out_UNCONNECTED,
      irq => irq,
      reg_update => reg_update,
      resetn_out => resetn,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \time_control_regs[0]\(31 downto 29) => \NLW_U_VIDEO_CTRL_time_control_regs[0]_UNCONNECTED\(31 downto 29),
      \time_control_regs[0]\(28 downto 16) => \time_control_regs[0]\(28 downto 16),
      \time_control_regs[0]\(15) => U_VIDEO_CTRL_n_318,
      \time_control_regs[0]\(14) => U_VIDEO_CTRL_n_319,
      \time_control_regs[0]\(13) => U_VIDEO_CTRL_n_320,
      \time_control_regs[0]\(12 downto 0) => \time_control_regs[0]\(12 downto 0),
      \time_control_regs[1]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[1]_UNCONNECTED\(31 downto 0),
      \time_status_regs[0]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[1]\(31 downto 0) => B"00000000000000000000000000000000",
      vid_aclk => aclk,
      vid_aclk_en => aclken,
      vid_aresetn => aresetn
    );
rgb2ycrcb_top_inst: entity work.design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_top
     port map (
      E(0) => \^intc_if\(0),
      O13(31) => m_axis_video_tuser_sof,
      O13(30) => m_axis_video_tlast,
      O13(29 downto 0) => \^m_axis_video_tdata\(29 downto 0),
      aclk => aclk,
      aclken => aclken,
      \core_control_regs[0]\(9 downto 0) => \core_control_regs[0]\(9 downto 0),
      \core_control_regs[10]\(16 downto 0) => \core_control_regs[10]\(16 downto 0),
      \core_control_regs[11]\(16 downto 0) => \core_control_regs[11]\(16 downto 0),
      \core_control_regs[12]\(16 downto 0) => \core_control_regs[12]\(16 downto 0),
      \core_control_regs[1]\(9 downto 0) => \core_control_regs[1]\(9 downto 0),
      \core_control_regs[2]\(9 downto 0) => \core_control_regs[2]\(9 downto 0),
      \core_control_regs[3]\(9 downto 0) => \core_control_regs[3]\(9 downto 0),
      \core_control_regs[4]\(9 downto 0) => \core_control_regs[4]\(9 downto 0),
      \core_control_regs[5]\(9 downto 0) => \core_control_regs[5]\(9 downto 0),
      \core_control_regs[6]\(10 downto 0) => \core_control_regs[6]\(10 downto 0),
      \core_control_regs[7]\(10 downto 0) => \core_control_regs[7]\(10 downto 0),
      \core_control_regs[8]\(10 downto 0) => \core_control_regs[8]\(10 downto 0),
      \core_control_regs[9]\(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      core_d_out => core_d,
      da(31) => s_axis_video_tuser_sof,
      da(30) => s_axis_video_tlast,
      da(29 downto 0) => s_axis_video_tdata(29 downto 0),
      \genr_control_regs[0]\(2) => \genr_control_regs[0]\(4),
      \genr_control_regs[0]\(1 downto 0) => \genr_control_regs[0]\(1 downto 0),
      intc_if(7 downto 0) => \^intc_if\(8 downto 1),
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tvalid => m_axis_video_tvalid,
      reg_update => reg_update,
      resetn_out => resetn,
      s_axis_tready_int_reg => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid,
      \time_control_regs[0]\(25 downto 13) => \time_control_regs[0]\(28 downto 16),
      \time_control_regs[0]\(12 downto 0) => \time_control_regs[0]\(12 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_rgb2ycrcb_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    s_axis_video_tuser_sof : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser_sof : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_v_rgb2ycrcb_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_v_rgb2ycrcb_0_0 : entity is "design_1_v_rgb2ycrcb_0_0,v_rgb2ycrcb,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_v_rgb2ycrcb_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_v_rgb2ycrcb_0_0 : entity is "v_rgb2ycrcb,Vivado 2020.1";
end design_1_v_rgb2ycrcb_0_0;

architecture STRUCTURE of design_1_v_rgb2ycrcb_0_0 is
  signal NLW_U0_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_intc_if_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ACOEF : integer;
  attribute C_ACOEF of U0 : label is 19595;
  attribute C_ACTIVE_COLS : integer;
  attribute C_ACTIVE_COLS of U0 : label is 1280;
  attribute C_ACTIVE_ROWS : integer;
  attribute C_ACTIVE_ROWS of U0 : label is 720;
  attribute C_BCOEF : integer;
  attribute C_BCOEF of U0 : label is 7471;
  attribute C_CBMAX : integer;
  attribute C_CBMAX of U0 : label is 1023;
  attribute C_CBMIN : integer;
  attribute C_CBMIN of U0 : label is 0;
  attribute C_CBOFFSET : integer;
  attribute C_CBOFFSET of U0 : label is 512;
  attribute C_CCOEF : integer;
  attribute C_CCOEF of U0 : label is 57493;
  attribute C_CRMAX : integer;
  attribute C_CRMAX of U0 : label is 1023;
  attribute C_CRMIN : integer;
  attribute C_CRMIN of U0 : label is 0;
  attribute C_CROFFSET : integer;
  attribute C_CROFFSET of U0 : label is 512;
  attribute C_DCOEF : integer;
  attribute C_DCOEF of U0 : label is 32250;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynquplus";
  attribute C_HAS_AXI4_LITE : integer;
  attribute C_HAS_AXI4_LITE of U0 : label is 0;
  attribute C_HAS_CLAMP : integer;
  attribute C_HAS_CLAMP of U0 : label is 1;
  attribute C_HAS_CLIP : integer;
  attribute C_HAS_CLIP of U0 : label is 1;
  attribute C_HAS_DEBUG : integer;
  attribute C_HAS_DEBUG of U0 : label is 0;
  attribute C_HAS_INTC_IF : integer;
  attribute C_HAS_INTC_IF of U0 : label is 0;
  attribute C_MAX_COLS : integer;
  attribute C_MAX_COLS of U0 : label is 1280;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH of U0 : label is 10;
  attribute C_M_AXIS_VIDEO_FORMAT : integer;
  attribute C_M_AXIS_VIDEO_FORMAT of U0 : label is 1;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH of U0 : label is 32;
  attribute C_S_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_S_AXIS_VIDEO_DATA_WIDTH of U0 : label is 10;
  attribute C_S_AXIS_VIDEO_FORMAT : integer;
  attribute C_S_AXIS_VIDEO_FORMAT of U0 : label is 2;
  attribute C_S_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_S_AXIS_VIDEO_TDATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_CLK_FREQ_HZ : integer;
  attribute C_S_AXI_CLK_FREQ_HZ of U0 : label is 100000000;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_YMAX : integer;
  attribute C_YMAX of U0 : label is 1023;
  attribute C_YMIN : integer;
  attribute C_YMIN of U0 : label is 0;
  attribute C_YOFFSET : integer;
  attribute C_YOFFSET of U0 : label is 64;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_in:video_out, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 148146667, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of aclken : signal is "xilinx.com:signal:clockenable:1.0 aclken_intf CE";
  attribute x_interface_parameter of aclken : signal is "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_LOW";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn_intf RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 video_out TLAST";
  attribute x_interface_info of m_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 video_out TREADY";
  attribute x_interface_info of m_axis_video_tuser_sof : signal is "xilinx.com:interface:axis:1.0 video_out TUSER";
  attribute x_interface_info of m_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 video_out TVALID";
  attribute x_interface_info of s_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 video_in TLAST";
  attribute x_interface_info of s_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 video_in TREADY";
  attribute x_interface_info of s_axis_video_tuser_sof : signal is "xilinx.com:interface:axis:1.0 video_in TUSER";
  attribute x_interface_info of s_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 video_in TVALID";
  attribute x_interface_info of m_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 video_out TDATA";
  attribute x_interface_parameter of m_axis_video_tdata : signal is "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148146667, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:Y_U_V_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_Y {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value Y} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_U {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value U} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 10} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_V {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value V} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 20} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 32}, INSERT_VIP 0";
  attribute x_interface_info of s_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 video_in TDATA";
  attribute x_interface_parameter of s_axis_video_tdata : signal is "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148146667, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
U0: entity work.design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb
     port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      intc_if(8 downto 0) => NLW_U0_intc_if_UNCONNECTED(8 downto 0),
      irq => NLW_U0_irq_UNCONNECTED,
      m_axis_video_tdata(31 downto 0) => m_axis_video_tdata(31 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser_sof => m_axis_video_tuser_sof,
      m_axis_video_tvalid => m_axis_video_tvalid,
      s_axi_aclk => '0',
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => B"000000000",
      s_axi_aresetn => '1',
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(8 downto 0) => B"000000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => '0',
      s_axis_video_tdata(31 downto 0) => s_axis_video_tdata(31 downto 0),
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tuser_sof => s_axis_video_tuser_sof,
      s_axis_video_tvalid => s_axis_video_tvalid
    );
end STRUCTURE;
