onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+BRAM_10x65535 -L xilinx_vip -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BRAM_10x65535 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {BRAM_10x65535.udo}

run -all

endsim

quit -force
