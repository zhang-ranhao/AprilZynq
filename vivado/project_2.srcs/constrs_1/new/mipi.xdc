#Camera 
set_property PACKAGE_PIN AH14 [get_ports {emio_tri_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {emio_tri_io[*]}]
set_property PULLUP true [get_ports {emio_tri_io[0]}]

set_property PACKAGE_PIN AH13 [get_ports cam0_i2c_scl_io]
set_property PACKAGE_PIN AE13 [get_ports cam0_i2c_sda_io]

set_property IOSTANDARD LVCMOS33 [get_ports cam0_i2c_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports cam0_i2c_sda_io]

set_property PULLUP true [get_ports cam0_i2c_scl_io]
set_property PULLUP true [get_ports cam0_i2c_sda_io]

#LED1
set_property PACKAGE_PIN W13 [get_ports {emio_tri_io[1]}]
#LED2
set_property PACKAGE_PIN Y12 [get_ports {emio_tri_io[2]}]
#LED3
set_property PACKAGE_PIN AA12 [get_ports {emio_tri_io[3]}]
#LED4
set_property PACKAGE_PIN AB13 [get_ports {emio_tri_io[4]}]

#KEY1
set_property PACKAGE_PIN AA13 [get_ports {emio_tri_io[5]}]
#KEY2
set_property PACKAGE_PIN AE14 [get_ports {emio_tri_io[6]}]
#KEY3
set_property PACKAGE_PIN AE15 [get_ports {emio_tri_io[7]}]
#KEY4
set_property PACKAGE_PIN AG14 [get_ports {emio_tri_io[8]}]

#UAV_UART
set_property PACKAGE_PIN A11 [get_ports uav_uart_rxd]
set_property PACKAGE_PIN A12 [get_ports uav_uart_txd]
set_property IOSTANDARD LVCMOS33 [get_ports uav_uart_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uav_uart_txd]


