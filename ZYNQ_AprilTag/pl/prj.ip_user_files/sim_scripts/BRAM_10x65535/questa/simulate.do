onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib BRAM_10x65535_opt

do {wave.do}

view wave
view structure
view signals

do {BRAM_10x65535.udo}

run -all

quit -force
