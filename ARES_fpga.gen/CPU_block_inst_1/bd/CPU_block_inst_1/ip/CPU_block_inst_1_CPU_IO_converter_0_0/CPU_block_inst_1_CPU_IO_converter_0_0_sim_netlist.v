// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Jul 27 16:30:13 2026
// Host        : lovroRadiona running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim {/home/lovro/Documents/Alchistry_Labs/DDR3 test/cores/Alchitry
//               AMIX_RISCV/Alchitry
//               AMIX_RISCV.gen/sources_1/bd/Block_top/bd/CPU_block_inst_1/ip/CPU_block_inst_1_CPU_IO_converter_0_0/CPU_block_inst_1_CPU_IO_converter_0_0_sim_netlist.v}
// Design      : CPU_block_inst_1_CPU_IO_converter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CPU_block_inst_1_CPU_IO_converter_0_0,CPU_IO_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "CPU_IO_converter,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module CPU_block_inst_1_CPU_IO_converter_0_0
   (m00_axi_awaddr,
    m00_axi_awprot,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bresp,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_araddr,
    m00_axi_arprot,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn,
    cpu_io_cmd_valid,
    cpu_io_cmd_ready,
    cpu_io_cmd_write,
    cpu_io_cmd_addr,
    cpu_io_cmd_dout,
    cpu_io_cmd_size,
    cpu_io_cmd_mask,
    cpu_io_cmd_io,
    cpu_io_cmd_fromHart,
    cpu_io_cmd_uopId,
    cpu_io_rsp_valid,
    cpu_io_rsp_error,
    cpu_io_rsp_din);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, RUSER_BITS_PER_BYTE 0" *) output [31:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output m00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axi_aresetn;
  input cpu_io_cmd_valid;
  output cpu_io_cmd_ready;
  input cpu_io_cmd_write;
  input [31:0]cpu_io_cmd_addr;
  input [31:0]cpu_io_cmd_dout;
  input [1:0]cpu_io_cmd_size;
  input [3:0]cpu_io_cmd_mask;
  input cpu_io_cmd_io;
  input cpu_io_cmd_fromHart;
  input [15:0]cpu_io_cmd_uopId;
  output cpu_io_rsp_valid;
  output cpu_io_rsp_error;
  output [31:0]cpu_io_rsp_din;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]cpu_io_cmd_addr;
  wire [31:0]cpu_io_cmd_dout;
  wire [3:0]cpu_io_cmd_mask;
  wire cpu_io_cmd_ready;
  wire cpu_io_cmd_valid;
  wire cpu_io_cmd_write;
  wire [31:0]cpu_io_rsp_din;
  wire cpu_io_rsp_valid;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire [3:0]m00_axi_wstrb;
  wire m00_axi_wvalid;

  assign cpu_io_rsp_error = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const1> ;
  assign m00_axi_arprot[0] = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const1> ;
  assign m00_axi_awprot[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CPU_block_inst_1_CPU_IO_converter_0_0_CPU_IO_converter inst
       (.cpu_io_cmd_addr(cpu_io_cmd_addr),
        .cpu_io_cmd_dout(cpu_io_cmd_dout),
        .cpu_io_cmd_mask(cpu_io_cmd_mask),
        .cpu_io_cmd_ready(cpu_io_cmd_ready),
        .cpu_io_cmd_valid(cpu_io_cmd_valid),
        .cpu_io_cmd_write(cpu_io_cmd_write),
        .cpu_io_rsp_din(cpu_io_rsp_din),
        .cpu_io_rsp_valid(cpu_io_rsp_valid),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "CPU_IO_converter" *) 
module CPU_block_inst_1_CPU_IO_converter_0_0_CPU_IO_converter
   (m00_axi_awaddr,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_araddr,
    cpu_io_cmd_ready,
    cpu_io_rsp_valid,
    cpu_io_rsp_din,
    m00_axi_awvalid,
    m00_axi_wvalid,
    m00_axi_bready,
    m00_axi_arvalid,
    m00_axi_rready,
    cpu_io_cmd_write,
    m00_axi_aclk,
    cpu_io_cmd_addr,
    cpu_io_cmd_dout,
    cpu_io_cmd_mask,
    m00_axi_rdata,
    cpu_io_cmd_valid,
    m00_axi_awready,
    m00_axi_bvalid,
    m00_axi_rvalid,
    m00_axi_wready,
    m00_axi_arready,
    m00_axi_aresetn);
  output [31:0]m00_axi_awaddr;
  output [31:0]m00_axi_wdata;
  output [3:0]m00_axi_wstrb;
  output [31:0]m00_axi_araddr;
  output cpu_io_cmd_ready;
  output cpu_io_rsp_valid;
  output [31:0]cpu_io_rsp_din;
  output m00_axi_awvalid;
  output m00_axi_wvalid;
  output m00_axi_bready;
  output m00_axi_arvalid;
  output m00_axi_rready;
  input cpu_io_cmd_write;
  input m00_axi_aclk;
  input [31:0]cpu_io_cmd_addr;
  input [31:0]cpu_io_cmd_dout;
  input [3:0]cpu_io_cmd_mask;
  input [31:0]m00_axi_rdata;
  input cpu_io_cmd_valid;
  input m00_axi_awready;
  input m00_axi_bvalid;
  input m00_axi_rvalid;
  input m00_axi_wready;
  input m00_axi_arready;
  input m00_axi_aresetn;

  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [31:0]cpu_io_cmd_addr;
  wire [31:0]cpu_io_cmd_dout;
  wire [3:0]cpu_io_cmd_mask;
  wire cpu_io_cmd_ready;
  wire cpu_io_cmd_valid;
  wire cpu_io_cmd_write;
  wire [31:0]cpu_io_rsp_din;
  wire \cpu_io_rsp_din[31]_i_1_n_0 ;
  wire cpu_io_rsp_valid;
  wire cpu_io_rsp_valid_i_1_n_0;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire \m00_axi_araddr[31]_i_1_n_0 ;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire m00_axi_arvalid_i_1_n_0;
  wire [31:0]m00_axi_awaddr;
  wire \m00_axi_awaddr[31]_i_1_n_0 ;
  wire \m00_axi_awaddr[31]_i_2_n_0 ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_awvalid_i_1_n_0;
  wire m00_axi_bready;
  wire m00_axi_bready_i_1_n_0;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire m00_axi_rready_i_1_n_0;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire \m00_axi_wdata[31]_i_1_n_0 ;
  wire m00_axi_wready;
  wire [3:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  wire m00_axi_wvalid_i_1_n_0;
  wire [5:1]state;
  wire [1:0]state__0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(state[3]),
        .I1(state[5]),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(cpu_io_cmd_write),
        .O(state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(cpu_io_cmd_write),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(m00_axi_awready),
        .I1(state[1]),
        .I2(cpu_io_cmd_valid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .I5(\FSM_onehot_state[5]_i_3_n_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(state[4]),
        .I1(m00_axi_arready),
        .I2(state[5]),
        .I3(m00_axi_rvalid),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(state[2]),
        .I1(m00_axi_wready),
        .I2(state[3]),
        .I3(m00_axi_bvalid),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(state__0[0]),
        .PRE(\m00_axi_awaddr[31]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(state__0[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(state[1]),
        .Q(state[2]));
  (* FSM_ENCODED_STATES = "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(state[2]),
        .Q(state[3]));
  (* FSM_ENCODED_STATES = "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(state[4]));
  (* FSM_ENCODED_STATES = "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(state[4]),
        .Q(state[5]));
  FDCE cpu_io_cmd_ready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(cpu_io_cmd_ready));
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_io_rsp_din[31]_i_1 
       (.I0(state[5]),
        .I1(m00_axi_rvalid),
        .O(\cpu_io_rsp_din[31]_i_1_n_0 ));
  FDCE \cpu_io_rsp_din_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[0]),
        .Q(cpu_io_rsp_din[0]));
  FDCE \cpu_io_rsp_din_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[10]),
        .Q(cpu_io_rsp_din[10]));
  FDCE \cpu_io_rsp_din_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[11]),
        .Q(cpu_io_rsp_din[11]));
  FDCE \cpu_io_rsp_din_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[12]),
        .Q(cpu_io_rsp_din[12]));
  FDCE \cpu_io_rsp_din_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[13]),
        .Q(cpu_io_rsp_din[13]));
  FDCE \cpu_io_rsp_din_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[14]),
        .Q(cpu_io_rsp_din[14]));
  FDCE \cpu_io_rsp_din_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[15]),
        .Q(cpu_io_rsp_din[15]));
  FDCE \cpu_io_rsp_din_reg[16] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[16]),
        .Q(cpu_io_rsp_din[16]));
  FDCE \cpu_io_rsp_din_reg[17] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[17]),
        .Q(cpu_io_rsp_din[17]));
  FDCE \cpu_io_rsp_din_reg[18] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[18]),
        .Q(cpu_io_rsp_din[18]));
  FDCE \cpu_io_rsp_din_reg[19] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[19]),
        .Q(cpu_io_rsp_din[19]));
  FDCE \cpu_io_rsp_din_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[1]),
        .Q(cpu_io_rsp_din[1]));
  FDCE \cpu_io_rsp_din_reg[20] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[20]),
        .Q(cpu_io_rsp_din[20]));
  FDCE \cpu_io_rsp_din_reg[21] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[21]),
        .Q(cpu_io_rsp_din[21]));
  FDCE \cpu_io_rsp_din_reg[22] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[22]),
        .Q(cpu_io_rsp_din[22]));
  FDCE \cpu_io_rsp_din_reg[23] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[23]),
        .Q(cpu_io_rsp_din[23]));
  FDCE \cpu_io_rsp_din_reg[24] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[24]),
        .Q(cpu_io_rsp_din[24]));
  FDCE \cpu_io_rsp_din_reg[25] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[25]),
        .Q(cpu_io_rsp_din[25]));
  FDCE \cpu_io_rsp_din_reg[26] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[26]),
        .Q(cpu_io_rsp_din[26]));
  FDCE \cpu_io_rsp_din_reg[27] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[27]),
        .Q(cpu_io_rsp_din[27]));
  FDCE \cpu_io_rsp_din_reg[28] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[28]),
        .Q(cpu_io_rsp_din[28]));
  FDCE \cpu_io_rsp_din_reg[29] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[29]),
        .Q(cpu_io_rsp_din[29]));
  FDCE \cpu_io_rsp_din_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[2]),
        .Q(cpu_io_rsp_din[2]));
  FDCE \cpu_io_rsp_din_reg[30] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[30]),
        .Q(cpu_io_rsp_din[30]));
  FDCE \cpu_io_rsp_din_reg[31] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[31]),
        .Q(cpu_io_rsp_din[31]));
  FDCE \cpu_io_rsp_din_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[3]),
        .Q(cpu_io_rsp_din[3]));
  FDCE \cpu_io_rsp_din_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[4]),
        .Q(cpu_io_rsp_din[4]));
  FDCE \cpu_io_rsp_din_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[5]),
        .Q(cpu_io_rsp_din[5]));
  FDCE \cpu_io_rsp_din_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[6]),
        .Q(cpu_io_rsp_din[6]));
  FDCE \cpu_io_rsp_din_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[7]),
        .Q(cpu_io_rsp_din[7]));
  FDCE \cpu_io_rsp_din_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[8]),
        .Q(cpu_io_rsp_din[8]));
  FDCE \cpu_io_rsp_din_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\cpu_io_rsp_din[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rdata[9]),
        .Q(cpu_io_rsp_din[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    cpu_io_rsp_valid_i_1
       (.I0(m00_axi_bvalid),
        .I1(state[3]),
        .I2(m00_axi_rvalid),
        .I3(state[5]),
        .O(cpu_io_rsp_valid_i_1_n_0));
  FDCE cpu_io_rsp_valid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_rsp_valid_i_1_n_0),
        .Q(cpu_io_rsp_valid));
  LUT3 #(
    .INIT(8'h20)) 
    \m00_axi_araddr[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(cpu_io_cmd_write),
        .I2(cpu_io_cmd_valid),
        .O(\m00_axi_araddr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[0]),
        .Q(m00_axi_araddr[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[10]),
        .Q(m00_axi_araddr[10]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[11]),
        .Q(m00_axi_araddr[11]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[12]),
        .Q(m00_axi_araddr[12]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[13]),
        .Q(m00_axi_araddr[13]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[14]),
        .Q(m00_axi_araddr[14]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[15]),
        .Q(m00_axi_araddr[15]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[16]),
        .Q(m00_axi_araddr[16]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[17]),
        .Q(m00_axi_araddr[17]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[18]),
        .Q(m00_axi_araddr[18]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[19]),
        .Q(m00_axi_araddr[19]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[1]),
        .Q(m00_axi_araddr[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[20]),
        .Q(m00_axi_araddr[20]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[21]),
        .Q(m00_axi_araddr[21]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[22]),
        .Q(m00_axi_araddr[22]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[23]),
        .Q(m00_axi_araddr[23]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[24]),
        .Q(m00_axi_araddr[24]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[25]),
        .Q(m00_axi_araddr[25]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[26]),
        .Q(m00_axi_araddr[26]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[27]),
        .Q(m00_axi_araddr[27]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[28]),
        .Q(m00_axi_araddr[28]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[29]),
        .Q(m00_axi_araddr[29]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[2]),
        .Q(m00_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[30]),
        .Q(m00_axi_araddr[30]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[31]),
        .Q(m00_axi_araddr[31]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[3]),
        .Q(m00_axi_araddr[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[4]),
        .Q(m00_axi_araddr[4]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[5]),
        .Q(m00_axi_araddr[5]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[6]),
        .Q(m00_axi_araddr[6]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[7]),
        .Q(m00_axi_araddr[7]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[8]),
        .Q(m00_axi_araddr[8]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) 
  FDCE \m00_axi_araddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_araddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[9]),
        .Q(m00_axi_araddr[9]));
  LUT6 #(
    .INIT(64'h404F4F4F40404040)) 
    m00_axi_arvalid_i_1
       (.I0(cpu_io_cmd_write),
        .I1(cpu_io_cmd_valid),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(m00_axi_arready),
        .I4(state[4]),
        .I5(m00_axi_arvalid),
        .O(m00_axi_arvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) 
  FDCE m00_axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_arvalid_i_1_n_0),
        .Q(m00_axi_arvalid));
  LUT3 #(
    .INIT(8'h80)) 
    \m00_axi_awaddr[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(cpu_io_cmd_write),
        .I2(cpu_io_cmd_valid),
        .O(\m00_axi_awaddr[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m00_axi_awaddr[31]_i_2 
       (.I0(m00_axi_aresetn),
        .O(\m00_axi_awaddr[31]_i_2_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[0]),
        .Q(m00_axi_awaddr[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[10]),
        .Q(m00_axi_awaddr[10]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[11]),
        .Q(m00_axi_awaddr[11]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[12]),
        .Q(m00_axi_awaddr[12]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[13]),
        .Q(m00_axi_awaddr[13]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[14]),
        .Q(m00_axi_awaddr[14]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[15]),
        .Q(m00_axi_awaddr[15]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[16]),
        .Q(m00_axi_awaddr[16]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[17]),
        .Q(m00_axi_awaddr[17]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[18]),
        .Q(m00_axi_awaddr[18]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[19]),
        .Q(m00_axi_awaddr[19]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[1]),
        .Q(m00_axi_awaddr[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[20]),
        .Q(m00_axi_awaddr[20]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[21]),
        .Q(m00_axi_awaddr[21]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[22]),
        .Q(m00_axi_awaddr[22]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[23]),
        .Q(m00_axi_awaddr[23]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[24]),
        .Q(m00_axi_awaddr[24]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[25]),
        .Q(m00_axi_awaddr[25]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[26]),
        .Q(m00_axi_awaddr[26]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[27]),
        .Q(m00_axi_awaddr[27]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[28]),
        .Q(m00_axi_awaddr[28]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[29]),
        .Q(m00_axi_awaddr[29]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[2]),
        .Q(m00_axi_awaddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[30]),
        .Q(m00_axi_awaddr[30]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[31]),
        .Q(m00_axi_awaddr[31]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[3]),
        .Q(m00_axi_awaddr[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[4]),
        .Q(m00_axi_awaddr[4]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[5]),
        .Q(m00_axi_awaddr[5]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[6]),
        .Q(m00_axi_awaddr[6]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[7]),
        .Q(m00_axi_awaddr[7]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[8]),
        .Q(m00_axi_awaddr[8]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) 
  (* X_INTERFACE_MODE = "master" *) 
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) 
  FDCE \m00_axi_awaddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_awaddr[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_addr[9]),
        .Q(m00_axi_awaddr[9]));
  LUT6 #(
    .INIT(64'h808F8F8F80808080)) 
    m00_axi_awvalid_i_1
       (.I0(cpu_io_cmd_write),
        .I1(cpu_io_cmd_valid),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(m00_axi_awready),
        .I4(state[1]),
        .I5(m00_axi_awvalid),
        .O(m00_axi_awvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) 
  FDCE m00_axi_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_awvalid_i_1_n_0),
        .Q(m00_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    m00_axi_bready_i_1
       (.I0(m00_axi_wready),
        .I1(state[2]),
        .I2(m00_axi_bvalid),
        .I3(state[3]),
        .I4(m00_axi_bready),
        .O(m00_axi_bready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) 
  FDCE m00_axi_bready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_bready_i_1_n_0),
        .Q(m00_axi_bready));
  LUT6 #(
    .INIT(64'hFF151515FF000000)) 
    m00_axi_rready_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(state[5]),
        .I2(m00_axi_rvalid),
        .I3(state[4]),
        .I4(m00_axi_arready),
        .I5(m00_axi_rready),
        .O(m00_axi_rready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) 
  FDCE m00_axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_rready_i_1_n_0),
        .Q(m00_axi_rready));
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axi_wdata[31]_i_1 
       (.I0(state[1]),
        .I1(m00_axi_awready),
        .O(\m00_axi_wdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[0]),
        .Q(m00_axi_wdata[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[10]),
        .Q(m00_axi_wdata[10]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[11]),
        .Q(m00_axi_wdata[11]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[12]),
        .Q(m00_axi_wdata[12]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[13]),
        .Q(m00_axi_wdata[13]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[14]),
        .Q(m00_axi_wdata[14]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[15]),
        .Q(m00_axi_wdata[15]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[16]),
        .Q(m00_axi_wdata[16]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[17]),
        .Q(m00_axi_wdata[17]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[18]),
        .Q(m00_axi_wdata[18]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[19]),
        .Q(m00_axi_wdata[19]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[1]),
        .Q(m00_axi_wdata[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[20]),
        .Q(m00_axi_wdata[20]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[21]),
        .Q(m00_axi_wdata[21]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[22]),
        .Q(m00_axi_wdata[22]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[23]),
        .Q(m00_axi_wdata[23]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[24]),
        .Q(m00_axi_wdata[24]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[25]),
        .Q(m00_axi_wdata[25]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[26]),
        .Q(m00_axi_wdata[26]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[27]),
        .Q(m00_axi_wdata[27]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[28]),
        .Q(m00_axi_wdata[28]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[29]),
        .Q(m00_axi_wdata[29]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[2]),
        .Q(m00_axi_wdata[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[30]),
        .Q(m00_axi_wdata[30]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[31]),
        .Q(m00_axi_wdata[31]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[3]),
        .Q(m00_axi_wdata[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[4]),
        .Q(m00_axi_wdata[4]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[5]),
        .Q(m00_axi_wdata[5]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[6]),
        .Q(m00_axi_wdata[6]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[7]),
        .Q(m00_axi_wdata[7]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[8]),
        .Q(m00_axi_wdata[8]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) 
  FDCE \m00_axi_wdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_dout[9]),
        .Q(m00_axi_wdata[9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) 
  FDCE \m00_axi_wstrb_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_mask[0]),
        .Q(m00_axi_wstrb[0]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) 
  FDCE \m00_axi_wstrb_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_mask[1]),
        .Q(m00_axi_wstrb[1]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) 
  FDCE \m00_axi_wstrb_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_mask[2]),
        .Q(m00_axi_wstrb[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) 
  FDCE \m00_axi_wstrb_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\m00_axi_wdata[31]_i_1_n_0 ),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(cpu_io_cmd_mask[3]),
        .Q(m00_axi_wstrb[3]));
  LUT6 #(
    .INIT(64'hFF151515FF000000)) 
    m00_axi_wvalid_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(state[2]),
        .I2(m00_axi_wready),
        .I3(state[1]),
        .I4(m00_axi_awready),
        .I5(m00_axi_wvalid),
        .O(m00_axi_wvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) 
  FDCE m00_axi_wvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\m00_axi_awaddr[31]_i_2_n_0 ),
        .D(m00_axi_wvalid_i_1_n_0),
        .Q(m00_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
