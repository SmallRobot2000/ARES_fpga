vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/util_vector_logic_v2_0_5
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_36
vlib questa_lib/msim/axi_vip_v1_1_22
vlib questa_lib/msim/dist_mem_gen_v8_0_17
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_quad_spi_v3_2_35
vlib questa_lib/msim/axi_uartlite_v2_0_39
vlib questa_lib/msim/xlconcat_v2_1_7
vlib questa_lib/msim/xlconstant_v1_1_10
vlib questa_lib/msim/axi_datamover_v5_1_37
vlib questa_lib/msim/axi_sg_v4_1_21
vlib questa_lib/msim/axi_dma_v7_1_37

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_5 questa_lib/msim/util_vector_logic_v2_0_5
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 questa_lib/msim/axi_register_slice_v2_1_36
vmap axi_vip_v1_1_22 questa_lib/msim/axi_vip_v1_1_22
vmap dist_mem_gen_v8_0_17 questa_lib/msim/dist_mem_gen_v8_0_17
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_quad_spi_v3_2_35 questa_lib/msim/axi_quad_spi_v3_2_35
vmap axi_uartlite_v2_0_39 questa_lib/msim/axi_uartlite_v2_0_39
vmap xlconcat_v2_1_7 questa_lib/msim/xlconcat_v2_1_7
vmap xlconstant_v1_1_10 questa_lib/msim/xlconstant_v1_1_10
vmap axi_datamover_v5_1_37 questa_lib/msim/axi_datamover_v5_1_37
vmap axi_sg_v4_1_21 questa_lib/msim/axi_sg_v4_1_21
vmap axi_dma_v7_1_37 questa_lib/msim/axi_dma_v7_1_37

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_clk_wiz_0_0/Block_top_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/Block_top/ip/Block_top_clk_wiz_0_0/Block_top_clk_wiz_0_0.v" \

vlog -work util_vector_logic_v2_0_5 -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/e056/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_util_vector_logic_0_0/sim/Block_top_util_vector_logic_0_0.v" \
"../../../bd/Block_top/ip/Block_top_mig_axi_wrapper_0_0/sim/Block_top_mig_axi_wrapper_0_0.v" \
"../../../bd/Block_top/ip/Block_top_util_vector_logic_0_1/sim/Block_top_util_vector_logic_0_1.v" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/sim/bd_797d.v" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_797d_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_797d_arsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_797d_rsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_797d_awsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_797d_wsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_797d_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_797d_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_797d_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_797d_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_797d_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_797d_sarn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_797d_srn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_797d_sawn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_797d_swn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_797d_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_797d_m00s2a_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_797d_m00arn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_797d_m00rn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_797d_m00e_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_797d_m01s2a_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_797d_m01arn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_797d_m01rn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_797d_m01awn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_797d_m01wn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_797d_m01bn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_797d_m01e_0.sv" \

vcom -work smartconnect_v1_0 -64 -93  \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36 -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_0/sim/Block_top_smartconnect_0_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_FLASH_SPI_wrapper_0_0/sim/Block_top_FLASH_SPI_wrapper_0_0.v" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/sim/bd_b9bc.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_1/sim/bd_b9bc_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_2/sim/bd_b9bc_arinsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_3/sim/bd_b9bc_rinsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_4/sim/bd_b9bc_awinsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_5/sim/bd_b9bc_winsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_6/sim/bd_b9bc_binsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_7/sim/bd_b9bc_aroutsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_8/sim/bd_b9bc_routsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_9/sim/bd_b9bc_awoutsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_10/sim/bd_b9bc_woutsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_11/sim/bd_b9bc_boutsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_12/sim/bd_b9bc_arni_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_13/sim/bd_b9bc_rni_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_14/sim/bd_b9bc_awni_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_15/sim/bd_b9bc_wni_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_16/sim/bd_b9bc_bni_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_17/sim/bd_b9bc_s00mmu_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_18/sim/bd_b9bc_s00tr_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_19/sim/bd_b9bc_s00sic_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_20/sim/bd_b9bc_s00a2s_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_21/sim/bd_b9bc_sarn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_22/sim/bd_b9bc_srn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_23/sim/bd_b9bc_sawn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_24/sim/bd_b9bc_swn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_25/sim/bd_b9bc_sbn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_26/sim/bd_b9bc_m00s2a_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_27/sim/bd_b9bc_m00arn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_28/sim/bd_b9bc_m00rn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_29/sim/bd_b9bc_m00awn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_30/sim/bd_b9bc_m00wn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_31/sim/bd_b9bc_m00bn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_32/sim/bd_b9bc_m00e_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_33/sim/bd_b9bc_m01s2a_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_34/sim/bd_b9bc_m01arn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_35/sim/bd_b9bc_m01rn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_36/sim/bd_b9bc_m01awn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_37/sim/bd_b9bc_m01wn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_38/sim/bd_b9bc_m01bn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_39/sim/bd_b9bc_m01e_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_40/sim/bd_b9bc_m02s2a_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_41/sim/bd_b9bc_m02arn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_42/sim/bd_b9bc_m02rn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_43/sim/bd_b9bc_m02awn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_44/sim/bd_b9bc_m02wn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_45/sim/bd_b9bc_m02bn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_46/sim/bd_b9bc_m02e_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_47/sim/bd_b9bc_m03s2a_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_48/sim/bd_b9bc_m03arn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_49/sim/bd_b9bc_m03rn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_50/sim/bd_b9bc_m03awn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_51/sim/bd_b9bc_m03wn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_52/sim/bd_b9bc_m03bn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_53/sim/bd_b9bc_m03e_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_54/sim/bd_b9bc_m04s2a_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_55/sim/bd_b9bc_m04arn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_56/sim/bd_b9bc_m04rn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_57/sim/bd_b9bc_m04awn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_58/sim/bd_b9bc_m04wn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_59/sim/bd_b9bc_m04bn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_60/sim/bd_b9bc_m04e_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_61/sim/bd_b9bc_m05s2a_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_62/sim/bd_b9bc_m05arn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_63/sim/bd_b9bc_m05rn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_64/sim/bd_b9bc_m05awn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_65/sim/bd_b9bc_m05wn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_66/sim/bd_b9bc_m05bn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_67/sim/bd_b9bc_m05e_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_1/sim/Block_top_smartconnect_0_1.sv" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/Block_top/ip/Block_top_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/Block_top/ip/Block_top_util_ds_buf_0_0/sim/Block_top_util_ds_buf_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_17 -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ca90/simulation/dist_mem_gen_v8_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_35 -64 -93  \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/9bdf/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/Block_top/ip/Block_top_axi_quad_spi_0_1/sim/Block_top_axi_quad_spi_0_1.vhd" \
"../../../bd/Block_top/ip/Block_top_util_ds_buf_0_1/sim/Block_top_util_ds_buf_0_1.vhd" \
"../../../bd/Block_top/ip/Block_top_util_ds_buf_0_2/sim/Block_top_util_ds_buf_0_2.vhd" \
"../../../bd/Block_top/ip/Block_top_util_ds_buf_2_0/sim/Block_top_util_ds_buf_2_0.vhd" \

vcom -work axi_uartlite_v2_0_39 -64 -93  \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/eab1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/Block_top/ip/Block_top_axi_uartlite_0_0/sim/Block_top_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_VexiiSocWrapper_0_1/sim/Block_top_VexiiSocWrapper_0_1.v" \

vlog -work xlconcat_v2_1_7 -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_xlconcat_0_0/sim/Block_top_xlconcat_0_0.v" \
"../../../bd/Block_top/ip/Block_top_util_vector_logic_1_0/sim/Block_top_util_vector_logic_1_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/Block_top/ip/Block_top_axi_quad_spi_0_2/sim/Block_top_axi_quad_spi_0_2.vhd" \
"../../../bd/Block_top/ip/Block_top_util_ds_buf_0_3/sim/Block_top_util_ds_buf_0_3.vhd" \
"../../../bd/Block_top/ip/Block_top_util_ds_buf_1_0/sim/Block_top_util_ds_buf_1_0.vhd" \
"../../../bd/Block_top/ip/Block_top_util_ds_buf_2_1/sim/Block_top_util_ds_buf_2_1.vhd" \
"../../../bd/Block_top/ip/Block_top_util_ds_buf_3_0/sim/Block_top_util_ds_buf_3_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_axi_keyboard_0_0/sim/Block_top_axi_keyboard_0_0.v" \

vlog -work xlconstant_v1_1_10 -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_xlconstant_1_0/sim/Block_top_xlconstant_1_0.v" \
"../../../bd/Block_top/ip/Block_top_axi_cf_controller_0_0/sim/Block_top_axi_cf_controller_0_0.v" \
"../../../bd/Block_top/ip/Block_top_ARES_RasterIXWrapper_0_0/sim/Block_top_ARES_RasterIXWrapper_0_0.v" \

vcom -work axi_datamover_v5_1_37 -64 -93  \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_21 -64 -93  \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/b193/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_37 -64 -93  \
"../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/7f6a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/Block_top/ip/Block_top_axi_dma_0_0/sim/Block_top_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/sim/bd_b8fc.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_1/sim/bd_b8fc_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_2/sim/bd_b8fc_arsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_3/sim/bd_b8fc_rsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_4/sim/bd_b8fc_awsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_5/sim/bd_b8fc_wsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_6/sim/bd_b8fc_bsw_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_7/sim/bd_b8fc_s00mmu_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_8/sim/bd_b8fc_s00tr_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_9/sim/bd_b8fc_s00sic_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_10/sim/bd_b8fc_s00a2s_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_11/sim/bd_b8fc_sarn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_12/sim/bd_b8fc_srn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_13/sim/bd_b8fc_s01mmu_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_14/sim/bd_b8fc_s01tr_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_15/sim/bd_b8fc_s01sic_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_16/sim/bd_b8fc_s01a2s_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_17/sim/bd_b8fc_sawn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_18/sim/bd_b8fc_swn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_19/sim/bd_b8fc_sbn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_20/sim/bd_b8fc_s02mmu_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_21/sim/bd_b8fc_s02tr_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_22/sim/bd_b8fc_s02sic_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_23/sim/bd_b8fc_s02a2s_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_24/sim/bd_b8fc_sarn_1.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_25/sim/bd_b8fc_srn_1.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_26/sim/bd_b8fc_sawn_1.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_27/sim/bd_b8fc_swn_1.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_28/sim/bd_b8fc_sbn_1.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_29/sim/bd_b8fc_s03mmu_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_30/sim/bd_b8fc_s03tr_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_31/sim/bd_b8fc_s03sic_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_32/sim/bd_b8fc_s03a2s_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_33/sim/bd_b8fc_sarn_2.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_34/sim/bd_b8fc_srn_2.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_35/sim/bd_b8fc_m00s2a_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_36/sim/bd_b8fc_m00arn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_37/sim/bd_b8fc_m00rn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_38/sim/bd_b8fc_m00awn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_39/sim/bd_b8fc_m00wn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_40/sim/bd_b8fc_m00bn_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/bd_0/ip/ip_41/sim/bd_b8fc_m00e_0.sv" \
"../../../bd/Block_top/ip/Block_top_smartconnect_0_2/sim/Block_top_smartconnect_0_2.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/5431/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/4e08/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/0568/hdl/verilog" "+incdir+../../../../ARES_fpga.gen/sources_1/bd/Block_top/ipshared/3556/hdl/verilog" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../bd/Block_top/ip/Block_top_ARES_RaxyerIX_frameb_0_0/sim/Block_top_ARES_RaxyerIX_frameb_0_0.v" \
"../../../bd/Block_top/ip/Block_top_ila_0_0/sim/Block_top_ila_0_0.v" \
"../../../bd/Block_top/ip/Block_top_ila_0_1/sim/Block_top_ila_0_1.v" \
"../../../bd/Block_top/sim/Block_top.v" \

vlog -work xil_defaultlib \
"glbl.v"

