
################################################################
# This is a generated script based on design: bd_f60c
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_f60c_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu2cg-sfvc784-1-i
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_f60c

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set SLOT_0_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_0_AXI ]

  set SLOT_1_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_1_AXIS ]

  set SLOT_2_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_2_AXI ]

  set SLOT_3_AXIS [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:axis_rtl:1.0 SLOT_3_AXIS ]

  set SLOT_4_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_4_AXI ]

  set SLOT_5_AXI [ create_bd_intf_port -mode Monitor -vlnv xilinx.com:interface:aximm_rtl:1.0 SLOT_5_AXI ]


  # Create ports
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {SLOT_0_AXI:SLOT_1_AXIS:SLOT_2_AXI:SLOT_3_AXIS:SLOT_4_AXI:SLOT_5_AXI} \
   CONFIG.ASSOCIATED_RESET {resetn} \
 ] $clk
  set probe0 [ create_bd_port -dir I -from 0 -to 0 probe0 ]
  set probe1 [ create_bd_port -dir I -from 0 -to 0 probe1 ]
  set resetn [ create_bd_port -dir I -type rst resetn ]

  # Create instance: g_inst, and set properties
  set g_inst [ create_bd_cell -type ip -vlnv xilinx.com:ip:gigantic_mux:1.0 g_inst ]
  set_property -dict [ list \
   CONFIG.C_EN_GIGAMUX {false} \
   CONFIG.C_NUM_MONITOR_SLOTS {6} \
   CONFIG.C_NUM_OF_PROBES {0} \
   CONFIG.C_SLOT_0_AXI_ADDR_WIDTH {32} \
   CONFIG.C_SLOT_0_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_0_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_0_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_0_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_0_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_0_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_0_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_0_AXI_B_SEL {1} \
   CONFIG.C_SLOT_0_AXI_DATA_WIDTH {64} \
   CONFIG.C_SLOT_0_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_0_AXI_PROTOCOL {AXI4} \
   CONFIG.C_SLOT_0_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_0_AXI_R_SEL {1} \
   CONFIG.C_SLOT_0_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_0_AXI_W_SEL {1} \
   CONFIG.C_SLOT_0_HAS_BRESP {1} \
   CONFIG.C_SLOT_0_HAS_BURST {0} \
   CONFIG.C_SLOT_0_HAS_CACHE {1} \
   CONFIG.C_SLOT_0_HAS_LOCK {0} \
   CONFIG.C_SLOT_0_HAS_PROT {1} \
   CONFIG.C_SLOT_0_HAS_QOS {0} \
   CONFIG.C_SLOT_0_HAS_REGION {0} \
   CONFIG.C_SLOT_0_HAS_RRESP {0} \
   CONFIG.C_SLOT_0_HAS_WSTRB {1} \
   CONFIG.C_SLOT_0_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_0_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_0_MON_MODE {FT} \
   CONFIG.C_SLOT_0_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_1_AXIS_TDATA_WIDTH {32} \
   CONFIG.C_SLOT_1_AXIS_TDEST_WIDTH {1} \
   CONFIG.C_SLOT_1_AXIS_TID_WIDTH {1} \
   CONFIG.C_SLOT_1_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_1_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_1_HAS_TKEEP {1} \
   CONFIG.C_SLOT_1_HAS_TREADY {1} \
   CONFIG.C_SLOT_1_HAS_TSTRB {1} \
   CONFIG.C_SLOT_1_MON_MODE {FT} \
   CONFIG.C_SLOT_2_AXI_ADDR_WIDTH {32} \
   CONFIG.C_SLOT_2_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_2_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_2_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_2_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_2_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_B_SEL {1} \
   CONFIG.C_SLOT_2_AXI_DATA_WIDTH {64} \
   CONFIG.C_SLOT_2_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_PROTOCOL {AXI4} \
   CONFIG.C_SLOT_2_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_R_SEL {1} \
   CONFIG.C_SLOT_2_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_2_AXI_W_SEL {1} \
   CONFIG.C_SLOT_2_HAS_BRESP {1} \
   CONFIG.C_SLOT_2_HAS_BURST {0} \
   CONFIG.C_SLOT_2_HAS_CACHE {1} \
   CONFIG.C_SLOT_2_HAS_LOCK {0} \
   CONFIG.C_SLOT_2_HAS_PROT {1} \
   CONFIG.C_SLOT_2_HAS_QOS {0} \
   CONFIG.C_SLOT_2_HAS_REGION {0} \
   CONFIG.C_SLOT_2_HAS_RRESP {0} \
   CONFIG.C_SLOT_2_HAS_WSTRB {1} \
   CONFIG.C_SLOT_2_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_2_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_2_MON_MODE {FT} \
   CONFIG.C_SLOT_2_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_3_AXIS_TDATA_WIDTH {8} \
   CONFIG.C_SLOT_3_AXIS_TDEST_WIDTH {0} \
   CONFIG.C_SLOT_3_AXIS_TID_WIDTH {0} \
   CONFIG.C_SLOT_3_AXIS_TUSER_WIDTH {1} \
   CONFIG.C_SLOT_3_AXI_PROTOCOL {AXI4S} \
   CONFIG.C_SLOT_3_HAS_TKEEP {1} \
   CONFIG.C_SLOT_3_HAS_TREADY {1} \
   CONFIG.C_SLOT_3_HAS_TSTRB {0} \
   CONFIG.C_SLOT_3_MON_MODE {FT} \
   CONFIG.C_SLOT_4_AXI_ADDR_WIDTH {9} \
   CONFIG.C_SLOT_4_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_4_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_4_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_4_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_4_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_B_SEL {1} \
   CONFIG.C_SLOT_4_AXI_DATA_WIDTH {32} \
   CONFIG.C_SLOT_4_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_PROTOCOL {AXI4LITE} \
   CONFIG.C_SLOT_4_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_R_SEL {1} \
   CONFIG.C_SLOT_4_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_4_AXI_W_SEL {1} \
   CONFIG.C_SLOT_4_HAS_BRESP {1} \
   CONFIG.C_SLOT_4_HAS_BURST {0} \
   CONFIG.C_SLOT_4_HAS_CACHE {0} \
   CONFIG.C_SLOT_4_HAS_LOCK {0} \
   CONFIG.C_SLOT_4_HAS_PROT {1} \
   CONFIG.C_SLOT_4_HAS_QOS {0} \
   CONFIG.C_SLOT_4_HAS_REGION {0} \
   CONFIG.C_SLOT_4_HAS_RRESP {1} \
   CONFIG.C_SLOT_4_HAS_WSTRB {1} \
   CONFIG.C_SLOT_4_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_4_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_4_MON_MODE {FT} \
   CONFIG.C_SLOT_4_TXN_CNTR_EN {1} \
   CONFIG.C_SLOT_5_AXI_ADDR_WIDTH {9} \
   CONFIG.C_SLOT_5_AXI_ARUSER_WIDTH {0} \
   CONFIG.C_SLOT_5_AXI_AR_SEL {1} \
   CONFIG.C_SLOT_5_AXI_AWUSER_WIDTH {0} \
   CONFIG.C_SLOT_5_AXI_AW_SEL {1} \
   CONFIG.C_SLOT_5_AXI_AXLEN_WIDTH {8} \
   CONFIG.C_SLOT_5_AXI_AXLOCK_WIDTH {1} \
   CONFIG.C_SLOT_5_AXI_BUSER_WIDTH {0} \
   CONFIG.C_SLOT_5_AXI_B_SEL {1} \
   CONFIG.C_SLOT_5_AXI_DATA_WIDTH {32} \
   CONFIG.C_SLOT_5_AXI_ID_WIDTH {0} \
   CONFIG.C_SLOT_5_AXI_PROTOCOL {AXI4LITE} \
   CONFIG.C_SLOT_5_AXI_RUSER_WIDTH {0} \
   CONFIG.C_SLOT_5_AXI_R_SEL {1} \
   CONFIG.C_SLOT_5_AXI_WUSER_WIDTH {0} \
   CONFIG.C_SLOT_5_AXI_W_SEL {1} \
   CONFIG.C_SLOT_5_HAS_BRESP {1} \
   CONFIG.C_SLOT_5_HAS_BURST {0} \
   CONFIG.C_SLOT_5_HAS_CACHE {0} \
   CONFIG.C_SLOT_5_HAS_LOCK {0} \
   CONFIG.C_SLOT_5_HAS_PROT {1} \
   CONFIG.C_SLOT_5_HAS_QOS {0} \
   CONFIG.C_SLOT_5_HAS_REGION {0} \
   CONFIG.C_SLOT_5_HAS_RRESP {1} \
   CONFIG.C_SLOT_5_HAS_WSTRB {1} \
   CONFIG.C_SLOT_5_MAX_RD_BURSTS {1} \
   CONFIG.C_SLOT_5_MAX_WR_BURSTS {1} \
   CONFIG.C_SLOT_5_MON_MODE {FT} \
   CONFIG.C_SLOT_5_TXN_CNTR_EN {1} \
 ] $g_inst

  # Create instance: ila_lib, and set properties
  set ila_lib [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_lib ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU {true} \
   CONFIG.ALL_PROBE_SAME_MU_CNT {2} \
   CONFIG.C_ADV_TRIGGER {true} \
   CONFIG.C_DATA_DEPTH {4096} \
   CONFIG.C_EN_STRG_QUAL {1} \
   CONFIG.C_EN_TIME_TAG {0} \
   CONFIG.C_ILA_CLK_FREQ {148146667} \
   CONFIG.C_INPUT_PIPE_STAGES {0} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {99} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE0_WIDTH {1} \
   CONFIG.C_PROBE10_TYPE {0} \
   CONFIG.C_PROBE10_WIDTH {4} \
   CONFIG.C_PROBE11_TYPE {0} \
   CONFIG.C_PROBE11_WIDTH {8} \
   CONFIG.C_PROBE12_TYPE {0} \
   CONFIG.C_PROBE12_WIDTH {3} \
   CONFIG.C_PROBE13_TYPE {0} \
   CONFIG.C_PROBE13_WIDTH {3} \
   CONFIG.C_PROBE14_TYPE {0} \
   CONFIG.C_PROBE14_WIDTH {2} \
   CONFIG.C_PROBE15_TYPE {0} \
   CONFIG.C_PROBE15_WIDTH {2} \
   CONFIG.C_PROBE16_TYPE {0} \
   CONFIG.C_PROBE16_WIDTH {2} \
   CONFIG.C_PROBE17_TYPE {0} \
   CONFIG.C_PROBE17_WIDTH {64} \
   CONFIG.C_PROBE18_TYPE {0} \
   CONFIG.C_PROBE18_WIDTH {64} \
   CONFIG.C_PROBE19_TYPE {0} \
   CONFIG.C_PROBE19_WIDTH {8} \
   CONFIG.C_PROBE1_TYPE {0} \
   CONFIG.C_PROBE1_WIDTH {1} \
   CONFIG.C_PROBE20_TYPE {0} \
   CONFIG.C_PROBE20_WIDTH {2} \
   CONFIG.C_PROBE21_TYPE {0} \
   CONFIG.C_PROBE21_WIDTH {3} \
   CONFIG.C_PROBE22_TYPE {0} \
   CONFIG.C_PROBE22_WIDTH {2} \
   CONFIG.C_PROBE23_TYPE {0} \
   CONFIG.C_PROBE23_WIDTH {2} \
   CONFIG.C_PROBE24_TYPE {0} \
   CONFIG.C_PROBE24_WIDTH {3} \
   CONFIG.C_PROBE25_TYPE {0} \
   CONFIG.C_PROBE25_WIDTH {32} \
   CONFIG.C_PROBE26_TYPE {0} \
   CONFIG.C_PROBE26_WIDTH {1} \
   CONFIG.C_PROBE27_TYPE {0} \
   CONFIG.C_PROBE27_WIDTH {1} \
   CONFIG.C_PROBE28_TYPE {0} \
   CONFIG.C_PROBE28_WIDTH {4} \
   CONFIG.C_PROBE29_TYPE {0} \
   CONFIG.C_PROBE29_WIDTH {4} \
   CONFIG.C_PROBE2_TYPE {0} \
   CONFIG.C_PROBE2_WIDTH {2} \
   CONFIG.C_PROBE30_TYPE {0} \
   CONFIG.C_PROBE30_WIDTH {1} \
   CONFIG.C_PROBE31_TYPE {0} \
   CONFIG.C_PROBE31_WIDTH {1} \
   CONFIG.C_PROBE32_TYPE {0} \
   CONFIG.C_PROBE32_WIDTH {1} \
   CONFIG.C_PROBE33_TYPE {0} \
   CONFIG.C_PROBE33_WIDTH {1} \
   CONFIG.C_PROBE34_TYPE {0} \
   CONFIG.C_PROBE34_WIDTH {2} \
   CONFIG.C_PROBE35_TYPE {0} \
   CONFIG.C_PROBE35_WIDTH {32} \
   CONFIG.C_PROBE36_TYPE {0} \
   CONFIG.C_PROBE36_WIDTH {4} \
   CONFIG.C_PROBE37_TYPE {0} \
   CONFIG.C_PROBE37_WIDTH {8} \
   CONFIG.C_PROBE38_TYPE {0} \
   CONFIG.C_PROBE38_WIDTH {3} \
   CONFIG.C_PROBE39_TYPE {0} \
   CONFIG.C_PROBE39_WIDTH {3} \
   CONFIG.C_PROBE3_TYPE {0} \
   CONFIG.C_PROBE3_WIDTH {32} \
   CONFIG.C_PROBE40_TYPE {0} \
   CONFIG.C_PROBE40_WIDTH {2} \
   CONFIG.C_PROBE41_TYPE {0} \
   CONFIG.C_PROBE41_WIDTH {32} \
   CONFIG.C_PROBE42_TYPE {0} \
   CONFIG.C_PROBE42_WIDTH {4} \
   CONFIG.C_PROBE43_TYPE {0} \
   CONFIG.C_PROBE43_WIDTH {8} \
   CONFIG.C_PROBE44_TYPE {0} \
   CONFIG.C_PROBE44_WIDTH {3} \
   CONFIG.C_PROBE45_TYPE {0} \
   CONFIG.C_PROBE45_WIDTH {3} \
   CONFIG.C_PROBE46_TYPE {0} \
   CONFIG.C_PROBE46_WIDTH {2} \
   CONFIG.C_PROBE47_TYPE {0} \
   CONFIG.C_PROBE47_WIDTH {2} \
   CONFIG.C_PROBE48_TYPE {0} \
   CONFIG.C_PROBE48_WIDTH {2} \
   CONFIG.C_PROBE49_TYPE {0} \
   CONFIG.C_PROBE49_WIDTH {64} \
   CONFIG.C_PROBE4_TYPE {0} \
   CONFIG.C_PROBE4_WIDTH {4} \
   CONFIG.C_PROBE50_TYPE {0} \
   CONFIG.C_PROBE50_WIDTH {64} \
   CONFIG.C_PROBE51_TYPE {0} \
   CONFIG.C_PROBE51_WIDTH {8} \
   CONFIG.C_PROBE52_TYPE {0} \
   CONFIG.C_PROBE52_WIDTH {2} \
   CONFIG.C_PROBE53_TYPE {0} \
   CONFIG.C_PROBE53_WIDTH {3} \
   CONFIG.C_PROBE54_TYPE {0} \
   CONFIG.C_PROBE54_WIDTH {2} \
   CONFIG.C_PROBE55_TYPE {0} \
   CONFIG.C_PROBE55_WIDTH {2} \
   CONFIG.C_PROBE56_TYPE {0} \
   CONFIG.C_PROBE56_WIDTH {3} \
   CONFIG.C_PROBE57_TYPE {0} \
   CONFIG.C_PROBE57_WIDTH {32} \
   CONFIG.C_PROBE58_TYPE {0} \
   CONFIG.C_PROBE58_WIDTH {4} \
   CONFIG.C_PROBE59_TYPE {0} \
   CONFIG.C_PROBE59_WIDTH {1} \
   CONFIG.C_PROBE5_TYPE {0} \
   CONFIG.C_PROBE5_WIDTH {8} \
   CONFIG.C_PROBE60_TYPE {0} \
   CONFIG.C_PROBE60_WIDTH {1} \
   CONFIG.C_PROBE61_TYPE {0} \
   CONFIG.C_PROBE61_WIDTH {1} \
   CONFIG.C_PROBE62_TYPE {0} \
   CONFIG.C_PROBE62_WIDTH {1} \
   CONFIG.C_PROBE63_TYPE {0} \
   CONFIG.C_PROBE63_WIDTH {2} \
   CONFIG.C_PROBE64_TYPE {0} \
   CONFIG.C_PROBE64_WIDTH {9} \
   CONFIG.C_PROBE65_TYPE {0} \
   CONFIG.C_PROBE65_WIDTH {3} \
   CONFIG.C_PROBE66_TYPE {0} \
   CONFIG.C_PROBE66_WIDTH {2} \
   CONFIG.C_PROBE67_TYPE {0} \
   CONFIG.C_PROBE67_WIDTH {9} \
   CONFIG.C_PROBE68_TYPE {0} \
   CONFIG.C_PROBE68_WIDTH {3} \
   CONFIG.C_PROBE69_TYPE {0} \
   CONFIG.C_PROBE69_WIDTH {2} \
   CONFIG.C_PROBE6_TYPE {0} \
   CONFIG.C_PROBE6_WIDTH {3} \
   CONFIG.C_PROBE70_TYPE {0} \
   CONFIG.C_PROBE70_WIDTH {2} \
   CONFIG.C_PROBE71_TYPE {0} \
   CONFIG.C_PROBE71_WIDTH {2} \
   CONFIG.C_PROBE72_TYPE {0} \
   CONFIG.C_PROBE72_WIDTH {32} \
   CONFIG.C_PROBE73_TYPE {0} \
   CONFIG.C_PROBE73_WIDTH {2} \
   CONFIG.C_PROBE74_TYPE {0} \
   CONFIG.C_PROBE74_WIDTH {32} \
   CONFIG.C_PROBE75_TYPE {0} \
   CONFIG.C_PROBE75_WIDTH {4} \
   CONFIG.C_PROBE76_TYPE {0} \
   CONFIG.C_PROBE76_WIDTH {2} \
   CONFIG.C_PROBE77_TYPE {0} \
   CONFIG.C_PROBE77_WIDTH {2} \
   CONFIG.C_PROBE78_TYPE {0} \
   CONFIG.C_PROBE78_WIDTH {2} \
   CONFIG.C_PROBE79_TYPE {0} \
   CONFIG.C_PROBE79_WIDTH {2} \
   CONFIG.C_PROBE7_TYPE {0} \
   CONFIG.C_PROBE7_WIDTH {3} \
   CONFIG.C_PROBE80_TYPE {0} \
   CONFIG.C_PROBE80_WIDTH {2} \
   CONFIG.C_PROBE81_TYPE {0} \
   CONFIG.C_PROBE81_WIDTH {2} \
   CONFIG.C_PROBE82_TYPE {0} \
   CONFIG.C_PROBE82_WIDTH {9} \
   CONFIG.C_PROBE83_TYPE {0} \
   CONFIG.C_PROBE83_WIDTH {3} \
   CONFIG.C_PROBE84_TYPE {0} \
   CONFIG.C_PROBE84_WIDTH {2} \
   CONFIG.C_PROBE85_TYPE {0} \
   CONFIG.C_PROBE85_WIDTH {9} \
   CONFIG.C_PROBE86_TYPE {0} \
   CONFIG.C_PROBE86_WIDTH {3} \
   CONFIG.C_PROBE87_TYPE {0} \
   CONFIG.C_PROBE87_WIDTH {2} \
   CONFIG.C_PROBE88_TYPE {0} \
   CONFIG.C_PROBE88_WIDTH {2} \
   CONFIG.C_PROBE89_TYPE {0} \
   CONFIG.C_PROBE89_WIDTH {2} \
   CONFIG.C_PROBE8_TYPE {0} \
   CONFIG.C_PROBE8_WIDTH {2} \
   CONFIG.C_PROBE90_TYPE {0} \
   CONFIG.C_PROBE90_WIDTH {32} \
   CONFIG.C_PROBE91_TYPE {0} \
   CONFIG.C_PROBE91_WIDTH {2} \
   CONFIG.C_PROBE92_TYPE {0} \
   CONFIG.C_PROBE92_WIDTH {32} \
   CONFIG.C_PROBE93_TYPE {0} \
   CONFIG.C_PROBE93_WIDTH {4} \
   CONFIG.C_PROBE94_TYPE {0} \
   CONFIG.C_PROBE94_WIDTH {2} \
   CONFIG.C_PROBE95_TYPE {0} \
   CONFIG.C_PROBE95_WIDTH {2} \
   CONFIG.C_PROBE96_TYPE {0} \
   CONFIG.C_PROBE96_WIDTH {2} \
   CONFIG.C_PROBE97_TYPE {0} \
   CONFIG.C_PROBE97_WIDTH {2} \
   CONFIG.C_PROBE98_TYPE {0} \
   CONFIG.C_PROBE98_WIDTH {2} \
   CONFIG.C_PROBE9_TYPE {0} \
   CONFIG.C_PROBE9_WIDTH {32} \
   CONFIG.C_TIME_TAG_WIDTH {32} \
   CONFIG.C_TRIGIN_EN {false} \
   CONFIG.C_TRIGOUT_EN {false} \
   CONFIG.C_XLNX_HW_PROBE_INFO {DEFAULT} \
 ] $ila_lib

  # Create instance: slot_0_ar, and set properties
  set slot_0_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_0_ar ]

  # Create instance: slot_0_aw, and set properties
  set slot_0_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_0_aw ]

  # Create instance: slot_0_b, and set properties
  set slot_0_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_0_b ]

  # Create instance: slot_0_r, and set properties
  set slot_0_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_0_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_0_r

  # Create instance: slot_0_w, and set properties
  set slot_0_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_0_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_0_w

  # Create instance: slot_2_ar, and set properties
  set slot_2_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_2_ar ]

  # Create instance: slot_2_aw, and set properties
  set slot_2_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_2_aw ]

  # Create instance: slot_2_b, and set properties
  set slot_2_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_2_b ]

  # Create instance: slot_2_r, and set properties
  set slot_2_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_2_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_2_r

  # Create instance: slot_2_w, and set properties
  set slot_2_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_2_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $slot_2_w

  # Create instance: slot_4_ar, and set properties
  set slot_4_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_4_ar ]

  # Create instance: slot_4_aw, and set properties
  set slot_4_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_4_aw ]

  # Create instance: slot_4_b, and set properties
  set slot_4_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_4_b ]

  # Create instance: slot_4_r, and set properties
  set slot_4_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_4_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_4_r

  # Create instance: slot_4_w, and set properties
  set slot_4_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_4_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_4_w

  # Create instance: slot_5_ar, and set properties
  set slot_5_ar [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_5_ar ]

  # Create instance: slot_5_aw, and set properties
  set slot_5_aw [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_5_aw ]

  # Create instance: slot_5_b, and set properties
  set slot_5_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_5_b ]

  # Create instance: slot_5_r, and set properties
  set slot_5_r [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_5_r ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_5_r

  # Create instance: slot_5_w, and set properties
  set slot_5_w [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 slot_5_w ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $slot_5_w

  # Create interface connections
connect_bd_intf_net -intf_net Conn [get_bd_intf_ports SLOT_0_AXI] [get_bd_intf_pins g_inst/slot_0_axi]
connect_bd_intf_net -intf_net Conn1 [get_bd_intf_ports SLOT_1_AXIS] [get_bd_intf_pins g_inst/slot_1_axis]
connect_bd_intf_net -intf_net Conn2 [get_bd_intf_ports SLOT_2_AXI] [get_bd_intf_pins g_inst/slot_2_axi]
connect_bd_intf_net -intf_net Conn3 [get_bd_intf_ports SLOT_3_AXIS] [get_bd_intf_pins g_inst/slot_3_axis]
connect_bd_intf_net -intf_net Conn4 [get_bd_intf_ports SLOT_4_AXI] [get_bd_intf_pins g_inst/slot_4_axi]
connect_bd_intf_net -intf_net Conn5 [get_bd_intf_ports SLOT_5_AXI] [get_bd_intf_pins g_inst/slot_5_axi]

  # Create port connections
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins g_inst/aclk] [get_bd_pins ila_lib/clk]
  connect_bd_net -net net_slot_0_axi_ar_cnt [get_bd_pins g_inst/m_slot_0_axi_ar_cnt] [get_bd_pins ila_lib/probe2]
  connect_bd_net -net net_slot_0_axi_ar_ctrl [get_bd_pins ila_lib/probe23] [get_bd_pins slot_0_ar/dout]
  connect_bd_net -net net_slot_0_axi_araddr [get_bd_pins g_inst/m_slot_0_axi_araddr] [get_bd_pins ila_lib/probe3]
  connect_bd_net -net net_slot_0_axi_arcache [get_bd_pins g_inst/m_slot_0_axi_arcache] [get_bd_pins ila_lib/probe4]
  connect_bd_net -net net_slot_0_axi_arlen [get_bd_pins g_inst/m_slot_0_axi_arlen] [get_bd_pins ila_lib/probe5]
  connect_bd_net -net net_slot_0_axi_arprot [get_bd_pins g_inst/m_slot_0_axi_arprot] [get_bd_pins ila_lib/probe6]
  connect_bd_net -net net_slot_0_axi_arready [get_bd_pins g_inst/m_slot_0_axi_arready] [get_bd_pins slot_0_ar/In1]
  connect_bd_net -net net_slot_0_axi_arsize [get_bd_pins g_inst/m_slot_0_axi_arsize] [get_bd_pins ila_lib/probe7]
  connect_bd_net -net net_slot_0_axi_arvalid [get_bd_pins g_inst/m_slot_0_axi_arvalid] [get_bd_pins slot_0_ar/In0]
  connect_bd_net -net net_slot_0_axi_aw_cnt [get_bd_pins g_inst/m_slot_0_axi_aw_cnt] [get_bd_pins ila_lib/probe8]
  connect_bd_net -net net_slot_0_axi_aw_ctrl [get_bd_pins ila_lib/probe20] [get_bd_pins slot_0_aw/dout]
  connect_bd_net -net net_slot_0_axi_awaddr [get_bd_pins g_inst/m_slot_0_axi_awaddr] [get_bd_pins ila_lib/probe9]
  connect_bd_net -net net_slot_0_axi_awcache [get_bd_pins g_inst/m_slot_0_axi_awcache] [get_bd_pins ila_lib/probe10]
  connect_bd_net -net net_slot_0_axi_awlen [get_bd_pins g_inst/m_slot_0_axi_awlen] [get_bd_pins ila_lib/probe11]
  connect_bd_net -net net_slot_0_axi_awprot [get_bd_pins g_inst/m_slot_0_axi_awprot] [get_bd_pins ila_lib/probe12]
  connect_bd_net -net net_slot_0_axi_awready [get_bd_pins g_inst/m_slot_0_axi_awready] [get_bd_pins slot_0_aw/In1]
  connect_bd_net -net net_slot_0_axi_awsize [get_bd_pins g_inst/m_slot_0_axi_awsize] [get_bd_pins ila_lib/probe13]
  connect_bd_net -net net_slot_0_axi_awvalid [get_bd_pins g_inst/m_slot_0_axi_awvalid] [get_bd_pins slot_0_aw/In0]
  connect_bd_net -net net_slot_0_axi_b_cnt [get_bd_pins g_inst/m_slot_0_axi_b_cnt] [get_bd_pins ila_lib/probe14]
  connect_bd_net -net net_slot_0_axi_b_ctrl [get_bd_pins ila_lib/probe22] [get_bd_pins slot_0_b/dout]
  connect_bd_net -net net_slot_0_axi_bready [get_bd_pins g_inst/m_slot_0_axi_bready] [get_bd_pins slot_0_b/In1]
  connect_bd_net -net net_slot_0_axi_bresp [get_bd_pins g_inst/m_slot_0_axi_bresp] [get_bd_pins ila_lib/probe15]
  connect_bd_net -net net_slot_0_axi_bvalid [get_bd_pins g_inst/m_slot_0_axi_bvalid] [get_bd_pins slot_0_b/In0]
  connect_bd_net -net net_slot_0_axi_r_cnt [get_bd_pins g_inst/m_slot_0_axi_r_cnt] [get_bd_pins ila_lib/probe16]
  connect_bd_net -net net_slot_0_axi_r_ctrl [get_bd_pins ila_lib/probe24] [get_bd_pins slot_0_r/dout]
  connect_bd_net -net net_slot_0_axi_rdata [get_bd_pins g_inst/m_slot_0_axi_rdata] [get_bd_pins ila_lib/probe17]
  connect_bd_net -net net_slot_0_axi_rlast [get_bd_pins g_inst/m_slot_0_axi_rlast] [get_bd_pins slot_0_r/In2]
  connect_bd_net -net net_slot_0_axi_rready [get_bd_pins g_inst/m_slot_0_axi_rready] [get_bd_pins slot_0_r/In1]
  connect_bd_net -net net_slot_0_axi_rvalid [get_bd_pins g_inst/m_slot_0_axi_rvalid] [get_bd_pins slot_0_r/In0]
  connect_bd_net -net net_slot_0_axi_w_ctrl [get_bd_pins ila_lib/probe21] [get_bd_pins slot_0_w/dout]
  connect_bd_net -net net_slot_0_axi_wdata [get_bd_pins g_inst/m_slot_0_axi_wdata] [get_bd_pins ila_lib/probe18]
  connect_bd_net -net net_slot_0_axi_wlast [get_bd_pins g_inst/m_slot_0_axi_wlast] [get_bd_pins slot_0_w/In2]
  connect_bd_net -net net_slot_0_axi_wready [get_bd_pins g_inst/m_slot_0_axi_wready] [get_bd_pins slot_0_w/In1]
  connect_bd_net -net net_slot_0_axi_wstrb [get_bd_pins g_inst/m_slot_0_axi_wstrb] [get_bd_pins ila_lib/probe19]
  connect_bd_net -net net_slot_0_axi_wvalid [get_bd_pins g_inst/m_slot_0_axi_wvalid] [get_bd_pins slot_0_w/In0]
  connect_bd_net -net net_slot_1_axis_tdata [get_bd_pins g_inst/m_slot_1_axis_tdata] [get_bd_pins ila_lib/probe25]
  connect_bd_net -net net_slot_1_axis_tdest [get_bd_pins g_inst/m_slot_1_axis_tdest] [get_bd_pins ila_lib/probe26]
  connect_bd_net -net net_slot_1_axis_tid [get_bd_pins g_inst/m_slot_1_axis_tid] [get_bd_pins ila_lib/probe27]
  connect_bd_net -net net_slot_1_axis_tkeep [get_bd_pins g_inst/m_slot_1_axis_tkeep] [get_bd_pins ila_lib/probe28]
  connect_bd_net -net net_slot_1_axis_tlast [get_bd_pins g_inst/m_slot_1_axis_tlast] [get_bd_pins ila_lib/probe33]
  connect_bd_net -net net_slot_1_axis_tready [get_bd_pins g_inst/m_slot_1_axis_tready] [get_bd_pins ila_lib/probe32]
  connect_bd_net -net net_slot_1_axis_tstrb [get_bd_pins g_inst/m_slot_1_axis_tstrb] [get_bd_pins ila_lib/probe29]
  connect_bd_net -net net_slot_1_axis_tuser [get_bd_pins g_inst/m_slot_1_axis_tuser] [get_bd_pins ila_lib/probe30]
  connect_bd_net -net net_slot_1_axis_tvalid [get_bd_pins g_inst/m_slot_1_axis_tvalid] [get_bd_pins ila_lib/probe31]
  connect_bd_net -net net_slot_2_axi_ar_cnt [get_bd_pins g_inst/m_slot_2_axi_ar_cnt] [get_bd_pins ila_lib/probe34]
  connect_bd_net -net net_slot_2_axi_ar_ctrl [get_bd_pins ila_lib/probe55] [get_bd_pins slot_2_ar/dout]
  connect_bd_net -net net_slot_2_axi_araddr [get_bd_pins g_inst/m_slot_2_axi_araddr] [get_bd_pins ila_lib/probe35]
  connect_bd_net -net net_slot_2_axi_arcache [get_bd_pins g_inst/m_slot_2_axi_arcache] [get_bd_pins ila_lib/probe36]
  connect_bd_net -net net_slot_2_axi_arlen [get_bd_pins g_inst/m_slot_2_axi_arlen] [get_bd_pins ila_lib/probe37]
  connect_bd_net -net net_slot_2_axi_arprot [get_bd_pins g_inst/m_slot_2_axi_arprot] [get_bd_pins ila_lib/probe38]
  connect_bd_net -net net_slot_2_axi_arready [get_bd_pins g_inst/m_slot_2_axi_arready] [get_bd_pins slot_2_ar/In1]
  connect_bd_net -net net_slot_2_axi_arsize [get_bd_pins g_inst/m_slot_2_axi_arsize] [get_bd_pins ila_lib/probe39]
  connect_bd_net -net net_slot_2_axi_arvalid [get_bd_pins g_inst/m_slot_2_axi_arvalid] [get_bd_pins slot_2_ar/In0]
  connect_bd_net -net net_slot_2_axi_aw_cnt [get_bd_pins g_inst/m_slot_2_axi_aw_cnt] [get_bd_pins ila_lib/probe40]
  connect_bd_net -net net_slot_2_axi_aw_ctrl [get_bd_pins ila_lib/probe52] [get_bd_pins slot_2_aw/dout]
  connect_bd_net -net net_slot_2_axi_awaddr [get_bd_pins g_inst/m_slot_2_axi_awaddr] [get_bd_pins ila_lib/probe41]
  connect_bd_net -net net_slot_2_axi_awcache [get_bd_pins g_inst/m_slot_2_axi_awcache] [get_bd_pins ila_lib/probe42]
  connect_bd_net -net net_slot_2_axi_awlen [get_bd_pins g_inst/m_slot_2_axi_awlen] [get_bd_pins ila_lib/probe43]
  connect_bd_net -net net_slot_2_axi_awprot [get_bd_pins g_inst/m_slot_2_axi_awprot] [get_bd_pins ila_lib/probe44]
  connect_bd_net -net net_slot_2_axi_awready [get_bd_pins g_inst/m_slot_2_axi_awready] [get_bd_pins slot_2_aw/In1]
  connect_bd_net -net net_slot_2_axi_awsize [get_bd_pins g_inst/m_slot_2_axi_awsize] [get_bd_pins ila_lib/probe45]
  connect_bd_net -net net_slot_2_axi_awvalid [get_bd_pins g_inst/m_slot_2_axi_awvalid] [get_bd_pins slot_2_aw/In0]
  connect_bd_net -net net_slot_2_axi_b_cnt [get_bd_pins g_inst/m_slot_2_axi_b_cnt] [get_bd_pins ila_lib/probe46]
  connect_bd_net -net net_slot_2_axi_b_ctrl [get_bd_pins ila_lib/probe54] [get_bd_pins slot_2_b/dout]
  connect_bd_net -net net_slot_2_axi_bready [get_bd_pins g_inst/m_slot_2_axi_bready] [get_bd_pins slot_2_b/In1]
  connect_bd_net -net net_slot_2_axi_bresp [get_bd_pins g_inst/m_slot_2_axi_bresp] [get_bd_pins ila_lib/probe47]
  connect_bd_net -net net_slot_2_axi_bvalid [get_bd_pins g_inst/m_slot_2_axi_bvalid] [get_bd_pins slot_2_b/In0]
  connect_bd_net -net net_slot_2_axi_r_cnt [get_bd_pins g_inst/m_slot_2_axi_r_cnt] [get_bd_pins ila_lib/probe48]
  connect_bd_net -net net_slot_2_axi_r_ctrl [get_bd_pins ila_lib/probe56] [get_bd_pins slot_2_r/dout]
  connect_bd_net -net net_slot_2_axi_rdata [get_bd_pins g_inst/m_slot_2_axi_rdata] [get_bd_pins ila_lib/probe49]
  connect_bd_net -net net_slot_2_axi_rlast [get_bd_pins g_inst/m_slot_2_axi_rlast] [get_bd_pins slot_2_r/In2]
  connect_bd_net -net net_slot_2_axi_rready [get_bd_pins g_inst/m_slot_2_axi_rready] [get_bd_pins slot_2_r/In1]
  connect_bd_net -net net_slot_2_axi_rvalid [get_bd_pins g_inst/m_slot_2_axi_rvalid] [get_bd_pins slot_2_r/In0]
  connect_bd_net -net net_slot_2_axi_w_ctrl [get_bd_pins ila_lib/probe53] [get_bd_pins slot_2_w/dout]
  connect_bd_net -net net_slot_2_axi_wdata [get_bd_pins g_inst/m_slot_2_axi_wdata] [get_bd_pins ila_lib/probe50]
  connect_bd_net -net net_slot_2_axi_wlast [get_bd_pins g_inst/m_slot_2_axi_wlast] [get_bd_pins slot_2_w/In2]
  connect_bd_net -net net_slot_2_axi_wready [get_bd_pins g_inst/m_slot_2_axi_wready] [get_bd_pins slot_2_w/In1]
  connect_bd_net -net net_slot_2_axi_wstrb [get_bd_pins g_inst/m_slot_2_axi_wstrb] [get_bd_pins ila_lib/probe51]
  connect_bd_net -net net_slot_2_axi_wvalid [get_bd_pins g_inst/m_slot_2_axi_wvalid] [get_bd_pins slot_2_w/In0]
  connect_bd_net -net net_slot_3_axis_tdata [get_bd_pins g_inst/m_slot_3_axis_tdata] [get_bd_pins ila_lib/probe57]
  connect_bd_net -net net_slot_3_axis_tkeep [get_bd_pins g_inst/m_slot_3_axis_tkeep] [get_bd_pins ila_lib/probe58]
  connect_bd_net -net net_slot_3_axis_tlast [get_bd_pins g_inst/m_slot_3_axis_tlast] [get_bd_pins ila_lib/probe62]
  connect_bd_net -net net_slot_3_axis_tready [get_bd_pins g_inst/m_slot_3_axis_tready] [get_bd_pins ila_lib/probe61]
  connect_bd_net -net net_slot_3_axis_tuser [get_bd_pins g_inst/m_slot_3_axis_tuser] [get_bd_pins ila_lib/probe59]
  connect_bd_net -net net_slot_3_axis_tvalid [get_bd_pins g_inst/m_slot_3_axis_tvalid] [get_bd_pins ila_lib/probe60]
  connect_bd_net -net net_slot_4_axi_ar_cnt [get_bd_pins g_inst/m_slot_4_axi_ar_cnt] [get_bd_pins ila_lib/probe63]
  connect_bd_net -net net_slot_4_axi_ar_ctrl [get_bd_pins ila_lib/probe79] [get_bd_pins slot_4_ar/dout]
  connect_bd_net -net net_slot_4_axi_araddr [get_bd_pins g_inst/m_slot_4_axi_araddr] [get_bd_pins ila_lib/probe64]
  connect_bd_net -net net_slot_4_axi_arprot [get_bd_pins g_inst/m_slot_4_axi_arprot] [get_bd_pins ila_lib/probe65]
  connect_bd_net -net net_slot_4_axi_arready [get_bd_pins g_inst/m_slot_4_axi_arready] [get_bd_pins slot_4_ar/In1]
  connect_bd_net -net net_slot_4_axi_arvalid [get_bd_pins g_inst/m_slot_4_axi_arvalid] [get_bd_pins slot_4_ar/In0]
  connect_bd_net -net net_slot_4_axi_aw_cnt [get_bd_pins g_inst/m_slot_4_axi_aw_cnt] [get_bd_pins ila_lib/probe66]
  connect_bd_net -net net_slot_4_axi_aw_ctrl [get_bd_pins ila_lib/probe76] [get_bd_pins slot_4_aw/dout]
  connect_bd_net -net net_slot_4_axi_awaddr [get_bd_pins g_inst/m_slot_4_axi_awaddr] [get_bd_pins ila_lib/probe67]
  connect_bd_net -net net_slot_4_axi_awprot [get_bd_pins g_inst/m_slot_4_axi_awprot] [get_bd_pins ila_lib/probe68]
  connect_bd_net -net net_slot_4_axi_awready [get_bd_pins g_inst/m_slot_4_axi_awready] [get_bd_pins slot_4_aw/In1]
  connect_bd_net -net net_slot_4_axi_awvalid [get_bd_pins g_inst/m_slot_4_axi_awvalid] [get_bd_pins slot_4_aw/In0]
  connect_bd_net -net net_slot_4_axi_b_cnt [get_bd_pins g_inst/m_slot_4_axi_b_cnt] [get_bd_pins ila_lib/probe69]
  connect_bd_net -net net_slot_4_axi_b_ctrl [get_bd_pins ila_lib/probe78] [get_bd_pins slot_4_b/dout]
  connect_bd_net -net net_slot_4_axi_bready [get_bd_pins g_inst/m_slot_4_axi_bready] [get_bd_pins slot_4_b/In1]
  connect_bd_net -net net_slot_4_axi_bresp [get_bd_pins g_inst/m_slot_4_axi_bresp] [get_bd_pins ila_lib/probe70]
  connect_bd_net -net net_slot_4_axi_bvalid [get_bd_pins g_inst/m_slot_4_axi_bvalid] [get_bd_pins slot_4_b/In0]
  connect_bd_net -net net_slot_4_axi_r_cnt [get_bd_pins g_inst/m_slot_4_axi_r_cnt] [get_bd_pins ila_lib/probe71]
  connect_bd_net -net net_slot_4_axi_r_ctrl [get_bd_pins ila_lib/probe80] [get_bd_pins slot_4_r/dout]
  connect_bd_net -net net_slot_4_axi_rdata [get_bd_pins g_inst/m_slot_4_axi_rdata] [get_bd_pins ila_lib/probe72]
  connect_bd_net -net net_slot_4_axi_rready [get_bd_pins g_inst/m_slot_4_axi_rready] [get_bd_pins slot_4_r/In1]
  connect_bd_net -net net_slot_4_axi_rresp [get_bd_pins g_inst/m_slot_4_axi_rresp] [get_bd_pins ila_lib/probe73]
  connect_bd_net -net net_slot_4_axi_rvalid [get_bd_pins g_inst/m_slot_4_axi_rvalid] [get_bd_pins slot_4_r/In0]
  connect_bd_net -net net_slot_4_axi_w_ctrl [get_bd_pins ila_lib/probe77] [get_bd_pins slot_4_w/dout]
  connect_bd_net -net net_slot_4_axi_wdata [get_bd_pins g_inst/m_slot_4_axi_wdata] [get_bd_pins ila_lib/probe74]
  connect_bd_net -net net_slot_4_axi_wready [get_bd_pins g_inst/m_slot_4_axi_wready] [get_bd_pins slot_4_w/In1]
  connect_bd_net -net net_slot_4_axi_wstrb [get_bd_pins g_inst/m_slot_4_axi_wstrb] [get_bd_pins ila_lib/probe75]
  connect_bd_net -net net_slot_4_axi_wvalid [get_bd_pins g_inst/m_slot_4_axi_wvalid] [get_bd_pins slot_4_w/In0]
  connect_bd_net -net net_slot_5_axi_ar_cnt [get_bd_pins g_inst/m_slot_5_axi_ar_cnt] [get_bd_pins ila_lib/probe81]
  connect_bd_net -net net_slot_5_axi_ar_ctrl [get_bd_pins ila_lib/probe97] [get_bd_pins slot_5_ar/dout]
  connect_bd_net -net net_slot_5_axi_araddr [get_bd_pins g_inst/m_slot_5_axi_araddr] [get_bd_pins ila_lib/probe82]
  connect_bd_net -net net_slot_5_axi_arprot [get_bd_pins g_inst/m_slot_5_axi_arprot] [get_bd_pins ila_lib/probe83]
  connect_bd_net -net net_slot_5_axi_arready [get_bd_pins g_inst/m_slot_5_axi_arready] [get_bd_pins slot_5_ar/In1]
  connect_bd_net -net net_slot_5_axi_arvalid [get_bd_pins g_inst/m_slot_5_axi_arvalid] [get_bd_pins slot_5_ar/In0]
  connect_bd_net -net net_slot_5_axi_aw_cnt [get_bd_pins g_inst/m_slot_5_axi_aw_cnt] [get_bd_pins ila_lib/probe84]
  connect_bd_net -net net_slot_5_axi_aw_ctrl [get_bd_pins ila_lib/probe94] [get_bd_pins slot_5_aw/dout]
  connect_bd_net -net net_slot_5_axi_awaddr [get_bd_pins g_inst/m_slot_5_axi_awaddr] [get_bd_pins ila_lib/probe85]
  connect_bd_net -net net_slot_5_axi_awprot [get_bd_pins g_inst/m_slot_5_axi_awprot] [get_bd_pins ila_lib/probe86]
  connect_bd_net -net net_slot_5_axi_awready [get_bd_pins g_inst/m_slot_5_axi_awready] [get_bd_pins slot_5_aw/In1]
  connect_bd_net -net net_slot_5_axi_awvalid [get_bd_pins g_inst/m_slot_5_axi_awvalid] [get_bd_pins slot_5_aw/In0]
  connect_bd_net -net net_slot_5_axi_b_cnt [get_bd_pins g_inst/m_slot_5_axi_b_cnt] [get_bd_pins ila_lib/probe87]
  connect_bd_net -net net_slot_5_axi_b_ctrl [get_bd_pins ila_lib/probe96] [get_bd_pins slot_5_b/dout]
  connect_bd_net -net net_slot_5_axi_bready [get_bd_pins g_inst/m_slot_5_axi_bready] [get_bd_pins slot_5_b/In1]
  connect_bd_net -net net_slot_5_axi_bresp [get_bd_pins g_inst/m_slot_5_axi_bresp] [get_bd_pins ila_lib/probe88]
  connect_bd_net -net net_slot_5_axi_bvalid [get_bd_pins g_inst/m_slot_5_axi_bvalid] [get_bd_pins slot_5_b/In0]
  connect_bd_net -net net_slot_5_axi_r_cnt [get_bd_pins g_inst/m_slot_5_axi_r_cnt] [get_bd_pins ila_lib/probe89]
  connect_bd_net -net net_slot_5_axi_r_ctrl [get_bd_pins ila_lib/probe98] [get_bd_pins slot_5_r/dout]
  connect_bd_net -net net_slot_5_axi_rdata [get_bd_pins g_inst/m_slot_5_axi_rdata] [get_bd_pins ila_lib/probe90]
  connect_bd_net -net net_slot_5_axi_rready [get_bd_pins g_inst/m_slot_5_axi_rready] [get_bd_pins slot_5_r/In1]
  connect_bd_net -net net_slot_5_axi_rresp [get_bd_pins g_inst/m_slot_5_axi_rresp] [get_bd_pins ila_lib/probe91]
  connect_bd_net -net net_slot_5_axi_rvalid [get_bd_pins g_inst/m_slot_5_axi_rvalid] [get_bd_pins slot_5_r/In0]
  connect_bd_net -net net_slot_5_axi_w_ctrl [get_bd_pins ila_lib/probe95] [get_bd_pins slot_5_w/dout]
  connect_bd_net -net net_slot_5_axi_wdata [get_bd_pins g_inst/m_slot_5_axi_wdata] [get_bd_pins ila_lib/probe92]
  connect_bd_net -net net_slot_5_axi_wready [get_bd_pins g_inst/m_slot_5_axi_wready] [get_bd_pins slot_5_w/In1]
  connect_bd_net -net net_slot_5_axi_wstrb [get_bd_pins g_inst/m_slot_5_axi_wstrb] [get_bd_pins ila_lib/probe93]
  connect_bd_net -net net_slot_5_axi_wvalid [get_bd_pins g_inst/m_slot_5_axi_wvalid] [get_bd_pins slot_5_w/In0]
  connect_bd_net -net probe0_1 [get_bd_ports probe0] [get_bd_pins ila_lib/probe0]
  connect_bd_net -net probe1_1 [get_bd_ports probe1] [get_bd_pins ila_lib/probe1]
  connect_bd_net -net resetn_1 [get_bd_ports resetn] [get_bd_pins g_inst/aresetn]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


