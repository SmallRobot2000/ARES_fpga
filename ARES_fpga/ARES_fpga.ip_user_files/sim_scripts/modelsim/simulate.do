onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xilinx_vip -L xpm -L util_vector_logic_v2_0_5 -L proc_sys_reset_v5_0_17 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_36 -L axi_vip_v1_1_22 -L axi_lite_ipif_v3_0_4 -L axi_uart16550_v2_0_39 -L xlconstant_v1_1_10 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.Block_Testbench xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Block_Testbench.udo}

run 1000ns

quit -force
