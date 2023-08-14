onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+design_1 -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xil_defaultlib -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_21 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_20 -L axi_crossbar_v2_1_22 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L lib_fifo_v1_0_14 -L blk_mem_gen_v8_4_4 -L lib_bmg_v1_0_13 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_23 -L axi_vdma_v6_3_9 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_21 -L axis_subset_converter_v1_1_21 -L proc_sys_reset_v5_0_13 -L mipi_csi2_rx_ctrl_v1_0_8 -L high_speed_selectio_wiz_v3_6_0 -L mipi_dphy_v4_2_0 -L axis_dwidth_converter_v1_1_20 -L vfb_v1_0_15 -L v_demosaic_v1_0_7 -L v_gamma_lut_v1_0_7 -L xlconcat_v2_1_3 -L axi_lite_ipif_v3_0_4 -L v_tc_v6_1_13 -L v_rgb2ycrcb_v7_1_13 -L axis_broadcaster_v1_1_20 -L gigantic_mux -L axi_protocol_converter_v2_1_21 -L axi_clock_converter_v2_1_20 -L axi_dwidth_converter_v2_1_21 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
