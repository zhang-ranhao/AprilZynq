set_property SRC_FILE_INFO {cfile:c:/Users/zrh463259112/Desktop/apriltag_demo/an5641_mipi_dp_stage2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_in_context.xdc rfile:../../../project_2.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_in_context.xdc id:1 order:EARLY scoped_inst:design_1_i/zynq_ultra_ps_e_0} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/zrh463259112/Desktop/apriltag_demo/an5641_mipi_dp_stage2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/design_1_mipi_csi2_rx_subsyst_0_0/design_1_mipi_csi2_rx_subsyst_0_0_in_context.xdc rfile:../../../project_2.srcs/sources_1/bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_0_0/design_1_mipi_csi2_rx_subsyst_0_0/design_1_mipi_csi2_rx_subsyst_0_0_in_context.xdc id:2 order:EARLY scoped_inst:design_1_i/mipi_csi2_rx_subsyst_0} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/zrh463259112/Desktop/apriltag_demo/an5641_mipi_dp_stage2/project_2/project_2.srcs/constrs_1/new/mipi.xdc rfile:../../../project_2.srcs/constrs_1/new/mipi.xdc id:3} [current_design]
current_instance design_1_i/zynq_ultra_ps_e_0
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 6.750 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 5.250 [get_ports {}]
current_instance
current_instance design_1_i/mipi_csi2_rx_subsyst_0
set_property src_info {type:SCOPED_XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 6.666 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 0.667 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:2 line:10 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.667 [get_ports {}]
current_instance
set_property src_info {type:XDC file:3 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH14 [get_ports {emio_tri_io[0]}]
set_property src_info {type:XDC file:3 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH13 [get_ports cam0_i2c_scl_io]
set_property src_info {type:XDC file:3 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE13 [get_ports cam0_i2c_sda_io]
set_property src_info {type:XDC file:3 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W13 [get_ports {emio_tri_io[1]}]
set_property src_info {type:XDC file:3 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y12 [get_ports {emio_tri_io[2]}]
set_property src_info {type:XDC file:3 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA12 [get_ports {emio_tri_io[3]}]
set_property src_info {type:XDC file:3 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB13 [get_ports {emio_tri_io[4]}]
set_property src_info {type:XDC file:3 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA13 [get_ports {emio_tri_io[5]}]
set_property src_info {type:XDC file:3 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE14 [get_ports {emio_tri_io[6]}]
set_property src_info {type:XDC file:3 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AE15 [get_ports {emio_tri_io[7]}]
set_property src_info {type:XDC file:3 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AG14 [get_ports {emio_tri_io[8]}]
set_property src_info {type:XDC file:3 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A11 [get_ports uav_uart_rxd]
set_property src_info {type:XDC file:3 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A12 [get_ports uav_uart_txd]
