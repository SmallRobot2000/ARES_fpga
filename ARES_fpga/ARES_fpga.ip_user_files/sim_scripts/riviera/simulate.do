transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Block_Testbench  -L xil_defaultlib -L xilinx_vip -L xpm -L util_vector_logic_v2_0_5 -L proc_sys_reset_v5_0_17 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_36 -L axi_vip_v1_1_22 -L axi_lite_ipif_v3_0_4 -L axi_uart16550_v2_0_39 -L xlconstant_v1_1_10 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Block_Testbench xil_defaultlib.glbl

do {Block_Testbench.udo}

run 1000ns

endsim

quit -force
