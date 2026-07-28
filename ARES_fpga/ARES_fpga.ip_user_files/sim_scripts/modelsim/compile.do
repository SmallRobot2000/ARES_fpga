vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/util_vector_logic_v2_0_5
vlib modelsim_lib/msim/proc_sys_reset_v5_0_17
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_36
vlib modelsim_lib/msim/axi_vip_v1_1_22
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/axi_uart16550_v2_0_39
vlib modelsim_lib/msim/xlconstant_v1_1_10

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_5 modelsim_lib/msim/util_vector_logic_v2_0_5
vmap proc_sys_reset_v5_0_17 modelsim_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 modelsim_lib/msim/axi_register_slice_v2_1_36
vmap axi_vip_v1_1_22 modelsim_lib/msim/axi_vip_v1_1_22
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_uart16550_v2_0_39 modelsim_lib/msim/axi_uart16550_v2_0_39
vmap xlconstant_v1_1_10 modelsim_lib/msim/xlconstant_v1_1_10

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Vivado/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/mig_7series_0_mig_sim.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/mig_7series_0.v" \
"../../../Alchitry AMIX_RISCV.srcs/sources_1/new/mig_axi_wrapper.v" \
"../../../Alchitry AMIX_RISCV.srcs/sources_1/imports/new/FLASH_SPI.v" \
"../../../Alchitry AMIX_RISCV.srcs/sources_1/new/FLASH_SPI_wrapper.v" \
"../../bd/CPU_block_inst_1/ip/CPU_block_inst_1_CPU_IO_converter_0_0/sim/CPU_block_inst_1_CPU_IO_converter_0_0.v" \
"../../bd/CPU_block_inst_1/ip/CPU_block_inst_1_VexiiRV_wrapper_0_0/sim/CPU_block_inst_1_VexiiRV_wrapper_0_0.v" \

vlog -work util_vector_logic_v2_0_5 -64 -incr -mfcu  "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/bd/CPU_block_inst_1/ipshared/e056/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../bd/CPU_block_inst_1/ip/CPU_block_inst_1_util_vector_logic_0_0/sim/CPU_block_inst_1_util_vector_logic_0_0.v" \
"../../bd/CPU_block_inst_1/sim/CPU_block_inst_1.v" \
"../../../Alchitry AMIX_RISCV.srcs/sources_1/new/CPU_IO_converter.v" \
"../../../../../../../VexiiRiscv/VexiiRiscv.v" \
"../../../Alchitry AMIX_RISCV.srcs/sources_1/new/VexiiRV_wrapper.v" \
"../../bd/Block_top/ip/Block_top_clk_wiz_0_0/Block_top_clk_wiz_0_0_clk_wiz.v" \
"../../bd/Block_top/ip/Block_top_clk_wiz_0_0/Block_top_clk_wiz_0_0.v" \
"../../bd/Block_top/ip/Block_top_util_vector_logic_0_0/sim/Block_top_util_vector_logic_0_0.v" \
"../../bd/Block_top/ip/Block_top_mig_axi_wrapper_0_0/sim/Block_top_mig_axi_wrapper_0_0.v" \
"../../bd/Block_top/ip/Block_top_util_vector_logic_0_1/sim/Block_top_util_vector_logic_0_1.v" \
"../../bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/sim/bd_797d.v" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_797d_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_797d_arsw_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_797d_rsw_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_797d_awsw_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_797d_wsw_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_797d_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_797d_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_797d_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_797d_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_797d_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_797d_sarn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_797d_srn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_797d_sawn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_797d_swn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_797d_sbn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_797d_s01mmu_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_797d_s01tr_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_797d_s01sic_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_797d_s01a2s_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_797d_sarn_1.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_797d_srn_1.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_797d_m00s2a_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_797d_m00arn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_797d_m00rn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_797d_m00e_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_797d_m01s2a_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_797d_m01arn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_797d_m01rn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_797d_m01awn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_797d_m01wn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_797d_m01bn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_797d_m01e_0.sv" \

vcom -work smartconnect_v1_0 -64 -93  \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36 -64 -incr -mfcu  "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22 -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../bd/Block_top/ip/Block_top_smartconnect_0_0/sim/Block_top_smartconnect_0_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_FLASH_SPI_wrapper_0_0/sim/Block_top_FLASH_SPI_wrapper_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_uart16550_v2_0_39 -64 -93  \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/5a21/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../bd/Block_top/ip/Block_top_axi_uart16550_0_0/sim/Block_top_axi_uart16550_0_0.vhd" \

vlog -work xlconstant_v1_1_10 -64 -incr -mfcu  "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../bd/Block_top/ip/Block_top_xlconstant_0_0/sim/Block_top_xlconstant_0_0.v" \
"../../bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/sim/bd_b9bc.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_1/sim/bd_b9bc_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_2/sim/bd_b9bc_s00mmu_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_3/sim/bd_b9bc_s00tr_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_4/sim/bd_b9bc_s00sic_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_5/sim/bd_b9bc_s00a2s_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_6/sim/bd_b9bc_sarn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_7/sim/bd_b9bc_srn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_8/sim/bd_b9bc_sawn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_9/sim/bd_b9bc_swn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_10/sim/bd_b9bc_sbn_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_11/sim/bd_b9bc_m00s2a_0.sv" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ip/Block_top_smartconnect_0_1/bd_0/ip/ip_12/sim/bd_b9bc_m00e_0.sv" \
"../../bd/Block_top/ip/Block_top_smartconnect_0_1/sim/Block_top_smartconnect_0_1.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/sim/Block_top.v" \
"../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/hdl/Block_top_wrapper.v" \
"../../../Alchitry AMIX_RISCV.srcs/sources_1/imports/new/FLASH_SIM.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.srcs/sim_1/imports/sim/ddr3_model.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/a415" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/00fe/hdl/verilog" "+incdir+../../../Alchitry AMIX_RISCV.gen/sources_1/bd/Block_top/ipshared/ec67/hdl" "+incdir+../../../../../../../tmp/mig_7series_0_ex/mig_7series_0_ex.gen/sources_1/ip/mig_7series_0/mig_7series_0/example_design/sim" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../Alchitry AMIX_RISCV.srcs/sim_1/new/Block_Testbench.v" \

vlog -work xil_defaultlib \
"glbl.v"

