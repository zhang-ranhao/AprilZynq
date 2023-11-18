-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Nov 16 00:39:02 2023
-- Host        : LAPTOP-LC3M2DQ5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/zrh463259112/Desktop/AprilZynq/main_system/prj/project_1.srcs/sources_1/bd/design_1/ip/design_1_De_Resolution_0_0/design_1_De_Resolution_0_0_stub.vhdl
-- Design      : design_1_De_Resolution_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu2cg-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_De_Resolution_0_0 is
  Port ( 
    ACLK : in STD_LOGIC;
    ARESET : in STD_LOGIC;
    TREADY : out STD_LOGIC;
    TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TLAST : in STD_LOGIC;
    TVALID : in STD_LOGIC;
    FSTART : in STD_LOGIC;
    DE_REL_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DE_REL_VALID : out STD_LOGIC;
    O_FSTART : out STD_LOGIC;
    O_TLAST : out STD_LOGIC
  );

end design_1_De_Resolution_0_0;

architecture stub of design_1_De_Resolution_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ACLK,ARESET,TREADY,TDATA[7:0],TLAST,TVALID,FSTART,DE_REL_DATA[7:0],DE_REL_VALID,O_FSTART,O_TLAST";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "De_Resolution,Vivado 2020.1";
begin
end;
