vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

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

vlog -work xpm -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/Vivado/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../../opt/Vivado/2025.2/data/rsb/busdef" "+incdir+/opt/Vivado/2025.2/data/xilinx_vip/include" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/mig_7series_0_mig_sim.v" \
"../../../../ARES_fpga.gen/sources_1/ip/mig_7series_0/mig_7series_0/user_design/rtl/mig_7series_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

