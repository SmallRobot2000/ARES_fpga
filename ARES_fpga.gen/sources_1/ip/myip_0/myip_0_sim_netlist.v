// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Jul 26 15:13:04 2026
// Host        : lovroRadiona running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim {/home/lovro/Documents/Alchistry_Labs/DDR3 test/cores/Alchitry
//               AMIX_RISCV/Alchitry AMIX_RISCV.gen/sources_1/ip/myip_0/myip_0_sim_netlist.v}
// Design      : myip_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "myip_0,myip,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module myip_0
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
    m00_axi_init_axi_txn,
    m00_axi_error,
    m00_axi_txn_done);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m00_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axi_aresetn;
  input m00_axi_init_axi_txn;
  output m00_axi_error;
  output m00_axi_txn_done;

  wire \<const0> ;
  wire \<const1> ;
  wire m00_axi_aclk;
  wire [31:2]\^m00_axi_araddr ;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:2]\^m00_axi_awaddr ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire m00_axi_wvalid;

  assign m00_axi_araddr[31:2] = \^m00_axi_araddr [31:2];
  assign m00_axi_araddr[1] = \<const0> ;
  assign m00_axi_araddr[0] = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const1> ;
  assign m00_axi_awaddr[31:2] = \^m00_axi_awaddr [31:2];
  assign m00_axi_awaddr[1] = \<const0> ;
  assign m00_axi_awaddr[0] = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  myip_0_myip inst
       (.axi_arvalid_reg(m00_axi_arvalid),
        .axi_awvalid_reg(m00_axi_awvalid),
        .axi_bready_reg(m00_axi_bready),
        .axi_rready_reg(m00_axi_rready),
        .axi_wvalid_reg(m00_axi_wvalid),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(\^m00_axi_araddr ),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_awaddr(\^m00_axi_awaddr ),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_bresp(m00_axi_bresp[1]),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_error(m00_axi_error),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rresp(m00_axi_rresp[1]),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_txn_done(m00_axi_txn_done),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready));
endmodule

(* ORIG_REF_NAME = "myip" *) 
module myip_0_myip
   (axi_wvalid_reg,
    m00_axi_wdata,
    axi_rready_reg,
    axi_arvalid_reg,
    m00_axi_awaddr,
    m00_axi_araddr,
    axi_awvalid_reg,
    axi_bready_reg,
    m00_axi_txn_done,
    m00_axi_error,
    m00_axi_wready,
    m00_axi_aresetn,
    m00_axi_rdata,
    m00_axi_rvalid,
    m00_axi_arready,
    m00_axi_aclk,
    m00_axi_init_axi_txn,
    m00_axi_awready,
    m00_axi_bvalid,
    m00_axi_rresp,
    m00_axi_bresp);
  output axi_wvalid_reg;
  output [31:0]m00_axi_wdata;
  output axi_rready_reg;
  output axi_arvalid_reg;
  output [29:0]m00_axi_awaddr;
  output [29:0]m00_axi_araddr;
  output axi_awvalid_reg;
  output axi_bready_reg;
  output m00_axi_txn_done;
  output m00_axi_error;
  input m00_axi_wready;
  input m00_axi_aresetn;
  input [31:0]m00_axi_rdata;
  input m00_axi_rvalid;
  input m00_axi_arready;
  input m00_axi_aclk;
  input m00_axi_init_axi_txn;
  input m00_axi_awready;
  input m00_axi_bvalid;
  input [0:0]m00_axi_rresp;
  input [0:0]m00_axi_bresp;

  wire axi_arvalid_reg;
  wire axi_awvalid_reg;
  wire axi_bready_reg;
  wire axi_rready_reg;
  wire axi_wvalid_reg;
  wire m00_axi_aclk;
  wire [29:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire [29:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire [0:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire [0:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;

  myip_0_myip_master_lite_v1_0_M00_AXI myip_master_lite_v1_0_M00_AXI_inst
       (.axi_arvalid_reg_0(axi_arvalid_reg),
        .axi_awvalid_reg_0(axi_awvalid_reg),
        .axi_bready_reg_0(axi_bready_reg),
        .axi_rready_reg_0(axi_rready_reg),
        .axi_wvalid_reg_0(axi_wvalid_reg),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_error(m00_axi_error),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rresp(m00_axi_rresp),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_txn_done(m00_axi_txn_done),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready));
endmodule

(* ORIG_REF_NAME = "myip_master_lite_v1_0_M00_AXI" *) 
module myip_0_myip_master_lite_v1_0_M00_AXI
   (axi_wvalid_reg_0,
    m00_axi_wdata,
    axi_rready_reg_0,
    axi_arvalid_reg_0,
    m00_axi_awaddr,
    m00_axi_araddr,
    axi_awvalid_reg_0,
    axi_bready_reg_0,
    m00_axi_txn_done,
    m00_axi_error,
    m00_axi_wready,
    m00_axi_aresetn,
    m00_axi_rdata,
    m00_axi_rvalid,
    m00_axi_arready,
    m00_axi_aclk,
    m00_axi_init_axi_txn,
    m00_axi_awready,
    m00_axi_bvalid,
    m00_axi_rresp,
    m00_axi_bresp);
  output axi_wvalid_reg_0;
  output [31:0]m00_axi_wdata;
  output axi_rready_reg_0;
  output axi_arvalid_reg_0;
  output [29:0]m00_axi_awaddr;
  output [29:0]m00_axi_araddr;
  output axi_awvalid_reg_0;
  output axi_bready_reg_0;
  output m00_axi_txn_done;
  output m00_axi_error;
  input m00_axi_wready;
  input m00_axi_aresetn;
  input [31:0]m00_axi_rdata;
  input m00_axi_rvalid;
  input m00_axi_arready;
  input m00_axi_aclk;
  input m00_axi_init_axi_txn;
  input m00_axi_awready;
  input m00_axi_bvalid;
  input [0:0]m00_axi_rresp;
  input [0:0]m00_axi_bresp;

  wire ERROR_i_1_n_0;
  wire ERROR_i_2_n_0;
  wire \FSM_onehot_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[2]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[3]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[0] ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[1] ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[2] ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[0]_i_2_n_0 ;
  wire \FSM_sequential_state_read[0]_i_3_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_2_n_0 ;
  wire \FSM_sequential_state_write[0]_i_3_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_2_n_0 ;
  wire \FSM_sequential_state_write[1]_i_3_n_0 ;
  wire M_AXI_ARADDR_carry_i_1_n_0;
  wire M_AXI_ARADDR_carry_n_2;
  wire M_AXI_ARADDR_carry_n_3;
  wire M_AXI_AWADDR_carry_i_1_n_0;
  wire M_AXI_AWADDR_carry_n_2;
  wire M_AXI_AWADDR_carry_n_3;
  wire \axi_araddr[5]_i_2_n_0 ;
  wire [31:29]axi_araddr_reg;
  wire \axi_araddr_reg[13]_i_1_n_0 ;
  wire \axi_araddr_reg[13]_i_1_n_1 ;
  wire \axi_araddr_reg[13]_i_1_n_2 ;
  wire \axi_araddr_reg[13]_i_1_n_3 ;
  wire \axi_araddr_reg[13]_i_1_n_4 ;
  wire \axi_araddr_reg[13]_i_1_n_5 ;
  wire \axi_araddr_reg[13]_i_1_n_6 ;
  wire \axi_araddr_reg[13]_i_1_n_7 ;
  wire \axi_araddr_reg[17]_i_1_n_0 ;
  wire \axi_araddr_reg[17]_i_1_n_1 ;
  wire \axi_araddr_reg[17]_i_1_n_2 ;
  wire \axi_araddr_reg[17]_i_1_n_3 ;
  wire \axi_araddr_reg[17]_i_1_n_4 ;
  wire \axi_araddr_reg[17]_i_1_n_5 ;
  wire \axi_araddr_reg[17]_i_1_n_6 ;
  wire \axi_araddr_reg[17]_i_1_n_7 ;
  wire \axi_araddr_reg[21]_i_1_n_0 ;
  wire \axi_araddr_reg[21]_i_1_n_1 ;
  wire \axi_araddr_reg[21]_i_1_n_2 ;
  wire \axi_araddr_reg[21]_i_1_n_3 ;
  wire \axi_araddr_reg[21]_i_1_n_4 ;
  wire \axi_araddr_reg[21]_i_1_n_5 ;
  wire \axi_araddr_reg[21]_i_1_n_6 ;
  wire \axi_araddr_reg[21]_i_1_n_7 ;
  wire \axi_araddr_reg[25]_i_1_n_0 ;
  wire \axi_araddr_reg[25]_i_1_n_1 ;
  wire \axi_araddr_reg[25]_i_1_n_2 ;
  wire \axi_araddr_reg[25]_i_1_n_3 ;
  wire \axi_araddr_reg[25]_i_1_n_4 ;
  wire \axi_araddr_reg[25]_i_1_n_5 ;
  wire \axi_araddr_reg[25]_i_1_n_6 ;
  wire \axi_araddr_reg[25]_i_1_n_7 ;
  wire \axi_araddr_reg[28]_i_2_n_0 ;
  wire \axi_araddr_reg[28]_i_2_n_1 ;
  wire \axi_araddr_reg[28]_i_2_n_2 ;
  wire \axi_araddr_reg[28]_i_2_n_3 ;
  wire \axi_araddr_reg[28]_i_2_n_4 ;
  wire \axi_araddr_reg[28]_i_2_n_5 ;
  wire \axi_araddr_reg[28]_i_2_n_6 ;
  wire \axi_araddr_reg[28]_i_2_n_7 ;
  wire \axi_araddr_reg[30]_i_1_n_3 ;
  wire \axi_araddr_reg[30]_i_1_n_6 ;
  wire \axi_araddr_reg[30]_i_1_n_7 ;
  wire \axi_araddr_reg[5]_i_1_n_0 ;
  wire \axi_araddr_reg[5]_i_1_n_1 ;
  wire \axi_araddr_reg[5]_i_1_n_2 ;
  wire \axi_araddr_reg[5]_i_1_n_3 ;
  wire \axi_araddr_reg[5]_i_1_n_4 ;
  wire \axi_araddr_reg[5]_i_1_n_5 ;
  wire \axi_araddr_reg[5]_i_1_n_6 ;
  wire \axi_araddr_reg[5]_i_1_n_7 ;
  wire \axi_araddr_reg[9]_i_1_n_0 ;
  wire \axi_araddr_reg[9]_i_1_n_1 ;
  wire \axi_araddr_reg[9]_i_1_n_2 ;
  wire \axi_araddr_reg[9]_i_1_n_3 ;
  wire \axi_araddr_reg[9]_i_1_n_4 ;
  wire \axi_araddr_reg[9]_i_1_n_5 ;
  wire \axi_araddr_reg[9]_i_1_n_6 ;
  wire \axi_araddr_reg[9]_i_1_n_7 ;
  wire axi_arvalid_i_1_n_0;
  wire axi_arvalid_reg_0;
  wire [0:0]axi_awaddr;
  wire \axi_awaddr[28]_i_1_n_0 ;
  wire \axi_awaddr[5]_i_2_n_0 ;
  wire [31:29]axi_awaddr_reg;
  wire \axi_awaddr_reg[13]_i_1_n_0 ;
  wire \axi_awaddr_reg[13]_i_1_n_1 ;
  wire \axi_awaddr_reg[13]_i_1_n_2 ;
  wire \axi_awaddr_reg[13]_i_1_n_3 ;
  wire \axi_awaddr_reg[13]_i_1_n_4 ;
  wire \axi_awaddr_reg[13]_i_1_n_5 ;
  wire \axi_awaddr_reg[13]_i_1_n_6 ;
  wire \axi_awaddr_reg[13]_i_1_n_7 ;
  wire \axi_awaddr_reg[17]_i_1_n_0 ;
  wire \axi_awaddr_reg[17]_i_1_n_1 ;
  wire \axi_awaddr_reg[17]_i_1_n_2 ;
  wire \axi_awaddr_reg[17]_i_1_n_3 ;
  wire \axi_awaddr_reg[17]_i_1_n_4 ;
  wire \axi_awaddr_reg[17]_i_1_n_5 ;
  wire \axi_awaddr_reg[17]_i_1_n_6 ;
  wire \axi_awaddr_reg[17]_i_1_n_7 ;
  wire \axi_awaddr_reg[21]_i_1_n_0 ;
  wire \axi_awaddr_reg[21]_i_1_n_1 ;
  wire \axi_awaddr_reg[21]_i_1_n_2 ;
  wire \axi_awaddr_reg[21]_i_1_n_3 ;
  wire \axi_awaddr_reg[21]_i_1_n_4 ;
  wire \axi_awaddr_reg[21]_i_1_n_5 ;
  wire \axi_awaddr_reg[21]_i_1_n_6 ;
  wire \axi_awaddr_reg[21]_i_1_n_7 ;
  wire \axi_awaddr_reg[25]_i_1_n_0 ;
  wire \axi_awaddr_reg[25]_i_1_n_1 ;
  wire \axi_awaddr_reg[25]_i_1_n_2 ;
  wire \axi_awaddr_reg[25]_i_1_n_3 ;
  wire \axi_awaddr_reg[25]_i_1_n_4 ;
  wire \axi_awaddr_reg[25]_i_1_n_5 ;
  wire \axi_awaddr_reg[25]_i_1_n_6 ;
  wire \axi_awaddr_reg[25]_i_1_n_7 ;
  wire \axi_awaddr_reg[28]_i_3_n_0 ;
  wire \axi_awaddr_reg[28]_i_3_n_1 ;
  wire \axi_awaddr_reg[28]_i_3_n_2 ;
  wire \axi_awaddr_reg[28]_i_3_n_3 ;
  wire \axi_awaddr_reg[28]_i_3_n_4 ;
  wire \axi_awaddr_reg[28]_i_3_n_5 ;
  wire \axi_awaddr_reg[28]_i_3_n_6 ;
  wire \axi_awaddr_reg[28]_i_3_n_7 ;
  wire \axi_awaddr_reg[30]_i_1_n_3 ;
  wire \axi_awaddr_reg[30]_i_1_n_6 ;
  wire \axi_awaddr_reg[30]_i_1_n_7 ;
  wire \axi_awaddr_reg[5]_i_1_n_0 ;
  wire \axi_awaddr_reg[5]_i_1_n_1 ;
  wire \axi_awaddr_reg[5]_i_1_n_2 ;
  wire \axi_awaddr_reg[5]_i_1_n_3 ;
  wire \axi_awaddr_reg[5]_i_1_n_4 ;
  wire \axi_awaddr_reg[5]_i_1_n_5 ;
  wire \axi_awaddr_reg[5]_i_1_n_6 ;
  wire \axi_awaddr_reg[5]_i_1_n_7 ;
  wire \axi_awaddr_reg[9]_i_1_n_0 ;
  wire \axi_awaddr_reg[9]_i_1_n_1 ;
  wire \axi_awaddr_reg[9]_i_1_n_2 ;
  wire \axi_awaddr_reg[9]_i_1_n_3 ;
  wire \axi_awaddr_reg[9]_i_1_n_4 ;
  wire \axi_awaddr_reg[9]_i_1_n_5 ;
  wire \axi_awaddr_reg[9]_i_1_n_6 ;
  wire \axi_awaddr_reg[9]_i_1_n_7 ;
  wire axi_awvalid;
  wire axi_awvalid0__0;
  wire axi_awvalid1__0;
  wire axi_awvalid_i_1_n_0;
  wire axi_awvalid_i_3_n_0;
  wire axi_awvalid_i_5_n_0;
  wire axi_awvalid_reg_0;
  wire axi_bready;
  wire axi_bready0__0;
  wire axi_bready_i_1_n_0;
  wire axi_bready_reg_0;
  wire axi_rready_i_1_n_0;
  wire axi_rready_reg_0;
  wire \axi_wdata[11]_i_2_n_0 ;
  wire \axi_wdata[11]_i_3_n_0 ;
  wire \axi_wdata[11]_i_4_n_0 ;
  wire \axi_wdata[11]_i_5_n_0 ;
  wire \axi_wdata[15]_i_2_n_0 ;
  wire \axi_wdata[15]_i_3_n_0 ;
  wire \axi_wdata[15]_i_4_n_0 ;
  wire \axi_wdata[15]_i_5_n_0 ;
  wire \axi_wdata[19]_i_2_n_0 ;
  wire \axi_wdata[19]_i_3_n_0 ;
  wire \axi_wdata[19]_i_4_n_0 ;
  wire \axi_wdata[19]_i_5_n_0 ;
  wire \axi_wdata[23]_i_2_n_0 ;
  wire \axi_wdata[23]_i_3_n_0 ;
  wire \axi_wdata[23]_i_4_n_0 ;
  wire \axi_wdata[23]_i_5_n_0 ;
  wire \axi_wdata[27]_i_2_n_0 ;
  wire \axi_wdata[27]_i_3_n_0 ;
  wire \axi_wdata[27]_i_4_n_0 ;
  wire \axi_wdata[27]_i_5_n_0 ;
  wire \axi_wdata[31]_i_4_n_0 ;
  wire \axi_wdata[31]_i_5_n_0 ;
  wire \axi_wdata[31]_i_6_n_0 ;
  wire \axi_wdata[31]_i_7_n_0 ;
  wire \axi_wdata[3]_i_2_n_0 ;
  wire \axi_wdata[3]_i_3_n_0 ;
  wire \axi_wdata[3]_i_4_n_0 ;
  wire \axi_wdata[3]_i_5_n_0 ;
  wire \axi_wdata[3]_i_6_n_0 ;
  wire \axi_wdata[7]_i_2_n_0 ;
  wire \axi_wdata[7]_i_3_n_0 ;
  wire \axi_wdata[7]_i_4_n_0 ;
  wire \axi_wdata[7]_i_5_n_0 ;
  wire \axi_wdata_reg[11]_i_1_n_0 ;
  wire \axi_wdata_reg[11]_i_1_n_1 ;
  wire \axi_wdata_reg[11]_i_1_n_2 ;
  wire \axi_wdata_reg[11]_i_1_n_3 ;
  wire \axi_wdata_reg[11]_i_1_n_4 ;
  wire \axi_wdata_reg[11]_i_1_n_5 ;
  wire \axi_wdata_reg[11]_i_1_n_6 ;
  wire \axi_wdata_reg[11]_i_1_n_7 ;
  wire \axi_wdata_reg[15]_i_1_n_0 ;
  wire \axi_wdata_reg[15]_i_1_n_1 ;
  wire \axi_wdata_reg[15]_i_1_n_2 ;
  wire \axi_wdata_reg[15]_i_1_n_3 ;
  wire \axi_wdata_reg[15]_i_1_n_4 ;
  wire \axi_wdata_reg[15]_i_1_n_5 ;
  wire \axi_wdata_reg[15]_i_1_n_6 ;
  wire \axi_wdata_reg[15]_i_1_n_7 ;
  wire \axi_wdata_reg[19]_i_1_n_0 ;
  wire \axi_wdata_reg[19]_i_1_n_1 ;
  wire \axi_wdata_reg[19]_i_1_n_2 ;
  wire \axi_wdata_reg[19]_i_1_n_3 ;
  wire \axi_wdata_reg[19]_i_1_n_4 ;
  wire \axi_wdata_reg[19]_i_1_n_5 ;
  wire \axi_wdata_reg[19]_i_1_n_6 ;
  wire \axi_wdata_reg[19]_i_1_n_7 ;
  wire \axi_wdata_reg[23]_i_1_n_0 ;
  wire \axi_wdata_reg[23]_i_1_n_1 ;
  wire \axi_wdata_reg[23]_i_1_n_2 ;
  wire \axi_wdata_reg[23]_i_1_n_3 ;
  wire \axi_wdata_reg[23]_i_1_n_4 ;
  wire \axi_wdata_reg[23]_i_1_n_5 ;
  wire \axi_wdata_reg[23]_i_1_n_6 ;
  wire \axi_wdata_reg[23]_i_1_n_7 ;
  wire \axi_wdata_reg[27]_i_1_n_0 ;
  wire \axi_wdata_reg[27]_i_1_n_1 ;
  wire \axi_wdata_reg[27]_i_1_n_2 ;
  wire \axi_wdata_reg[27]_i_1_n_3 ;
  wire \axi_wdata_reg[27]_i_1_n_4 ;
  wire \axi_wdata_reg[27]_i_1_n_5 ;
  wire \axi_wdata_reg[27]_i_1_n_6 ;
  wire \axi_wdata_reg[27]_i_1_n_7 ;
  wire \axi_wdata_reg[31]_i_2_n_1 ;
  wire \axi_wdata_reg[31]_i_2_n_2 ;
  wire \axi_wdata_reg[31]_i_2_n_3 ;
  wire \axi_wdata_reg[31]_i_2_n_4 ;
  wire \axi_wdata_reg[31]_i_2_n_5 ;
  wire \axi_wdata_reg[31]_i_2_n_6 ;
  wire \axi_wdata_reg[31]_i_2_n_7 ;
  wire \axi_wdata_reg[3]_i_1_n_0 ;
  wire \axi_wdata_reg[3]_i_1_n_1 ;
  wire \axi_wdata_reg[3]_i_1_n_2 ;
  wire \axi_wdata_reg[3]_i_1_n_3 ;
  wire \axi_wdata_reg[3]_i_1_n_4 ;
  wire \axi_wdata_reg[3]_i_1_n_5 ;
  wire \axi_wdata_reg[3]_i_1_n_6 ;
  wire \axi_wdata_reg[3]_i_1_n_7 ;
  wire \axi_wdata_reg[7]_i_1_n_0 ;
  wire \axi_wdata_reg[7]_i_1_n_1 ;
  wire \axi_wdata_reg[7]_i_1_n_2 ;
  wire \axi_wdata_reg[7]_i_1_n_3 ;
  wire \axi_wdata_reg[7]_i_1_n_4 ;
  wire \axi_wdata_reg[7]_i_1_n_5 ;
  wire \axi_wdata_reg[7]_i_1_n_6 ;
  wire \axi_wdata_reg[7]_i_1_n_7 ;
  wire axi_wvalid_i_1_n_0;
  wire axi_wvalid_reg_0;
  wire compare_done;
  wire compare_done_i_1_n_0;
  wire error_reg;
  wire error_reg_i_1_n_0;
  wire [3:0]expected_rdata;
  wire [3:1]expected_rdata0;
  wire \expected_rdata[0]_i_1_n_0 ;
  wire init_txn_ff;
  wire init_txn_ff2;
  wire m00_axi_aclk;
  wire [29:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire [29:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire [0:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire [0:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire p_15_in;
  wire \read_index[0]_i_1_n_0 ;
  wire \read_index[1]_i_1_n_0 ;
  wire \read_index[2]_i_1_n_0 ;
  wire \read_index[2]_i_2_n_0 ;
  wire \read_index_reg_n_0_[0] ;
  wire \read_index_reg_n_0_[1] ;
  wire \read_index_reg_n_0_[2] ;
  wire read_mismatch;
  wire read_mismatch1;
  wire read_mismatch1_carry__0_i_1_n_0;
  wire read_mismatch1_carry__0_i_2_n_0;
  wire read_mismatch1_carry__0_i_3_n_0;
  wire read_mismatch1_carry__0_i_4_n_0;
  wire read_mismatch1_carry__0_n_0;
  wire read_mismatch1_carry__0_n_1;
  wire read_mismatch1_carry__0_n_2;
  wire read_mismatch1_carry__0_n_3;
  wire read_mismatch1_carry__1_i_1_n_0;
  wire read_mismatch1_carry__1_i_2_n_0;
  wire read_mismatch1_carry__1_i_3_n_0;
  wire read_mismatch1_carry__1_n_2;
  wire read_mismatch1_carry__1_n_3;
  wire read_mismatch1_carry_i_1_n_0;
  wire read_mismatch1_carry_i_2_n_0;
  wire read_mismatch1_carry_i_3_n_0;
  wire read_mismatch1_carry_i_4_n_0;
  wire read_mismatch1_carry_n_0;
  wire read_mismatch1_carry_n_1;
  wire read_mismatch1_carry_n_2;
  wire read_mismatch1_carry_n_3;
  wire read_mismatch_i_1_n_0;
  wire reads_done;
  wire reads_done_i_1_n_0;
  wire [1:0]state_read;
  wire [1:1]state_read__0;
  wire [1:0]state_write;
  wire [2:0]write_index;
  wire \write_index[0]_i_1_n_0 ;
  wire \write_index[1]_i_1_n_0 ;
  wire \write_index[2]_i_1_n_0 ;
  wire [0:0]write_index_0;
  wire writes_done;
  wire writes_done_i_1_n_0;
  wire [3:2]NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED;
  wire [3:3]NLW_M_AXI_ARADDR_carry_O_UNCONNECTED;
  wire [3:2]NLW_M_AXI_AWADDR_carry_CO_UNCONNECTED;
  wire [3:3]NLW_M_AXI_AWADDR_carry_O_UNCONNECTED;
  wire [3:1]\NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:0]NLW_read_mismatch1_carry_O_UNCONNECTED;
  wire [3:0]NLW_read_mismatch1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_read_mismatch1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_read_mismatch1_carry__1_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    ERROR_i_1
       (.I0(m00_axi_aresetn),
        .O(ERROR_i_1_n_0));
  LUT6 #(
    .INIT(64'hBB8BBBBB88888888)) 
    ERROR_i_2
       (.I0(error_reg),
        .I1(compare_done),
        .I2(init_txn_ff),
        .I3(init_txn_ff2),
        .I4(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .I5(m00_axi_error),
        .O(ERROR_i_2_n_0));
  FDRE ERROR_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(ERROR_i_2_n_0),
        .Q(m00_axi_error),
        .R(ERROR_i_1_n_0));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \FSM_onehot_mst_exec_state[0]_i_1 
       (.I0(compare_done),
        .I1(init_txn_ff),
        .I2(init_txn_ff2),
        .I3(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .O(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    \FSM_onehot_mst_exec_state[1]_i_1 
       (.I0(init_txn_ff),
        .I1(init_txn_ff2),
        .I2(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .I3(writes_done),
        .I4(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .O(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_mst_exec_state[2]_i_1 
       (.I0(writes_done),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I2(reads_done),
        .I3(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .O(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_mst_exec_state[3]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I1(reads_done),
        .O(\FSM_onehot_mst_exec_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_mst_exec_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .S(ERROR_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .R(ERROR_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .R(ERROR_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[3]_i_1_n_0 ),
        .Q(compare_done),
        .R(ERROR_i_1_n_0));
  LUT6 #(
    .INIT(64'h1515FFFFFF000000)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(state_read[1]),
        .I1(axi_arvalid_reg_0),
        .I2(m00_axi_arready),
        .I3(\FSM_sequential_state_read[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state_read[0]_i_3_n_0 ),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF070F070F070FF70)) 
    \FSM_sequential_state_read[0]_i_2 
       (.I0(m00_axi_rvalid),
        .I1(axi_rready_reg_0),
        .I2(state_read[1]),
        .I3(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I4(compare_done),
        .I5(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .O(\FSM_sequential_state_read[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000040FF)) 
    \FSM_sequential_state_read[0]_i_3 
       (.I0(state_read[0]),
        .I1(m00_axi_rvalid),
        .I2(axi_rready_reg_0),
        .I3(state_read[1]),
        .I4(\axi_awaddr[28]_i_1_n_0 ),
        .O(\FSM_sequential_state_read[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAC888EAAA)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(state_read[1]),
        .I1(state_read[0]),
        .I2(m00_axi_arready),
        .I3(axi_arvalid_reg_0),
        .I4(p_15_in),
        .I5(\axi_awaddr[28]_i_1_n_0 ),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDATA:10,RADDR:01,IDLE:00" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDATA:10,RADDR:01,IDLE:00" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(\FSM_sequential_state_write[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0D0DFFFFFF000000)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awvalid0__0),
        .I1(\FSM_sequential_state_write[0]_i_2_n_0 ),
        .I2(state_write[1]),
        .I3(\FSM_sequential_state_write[0]_i_3_n_0 ),
        .I4(\FSM_sequential_state_write[1]_i_3_n_0 ),
        .I5(state_write[0]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF700)) 
    \FSM_sequential_state_write[0]_i_2 
       (.I0(write_index[1]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(m00_axi_wready),
        .O(\FSM_sequential_state_write[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44444474)) 
    \FSM_sequential_state_write[0]_i_3 
       (.I0(axi_awvalid1__0),
        .I1(state_write[1]),
        .I2(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I3(compare_done),
        .I4(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .O(\FSM_sequential_state_write[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00080000)) 
    \FSM_sequential_state_write[1]_i_2 
       (.I0(state_write[0]),
        .I1(axi_awvalid0__0),
        .I2(m00_axi_wready),
        .I3(axi_awvalid1__0),
        .I4(\FSM_sequential_state_write[1]_i_3_n_0 ),
        .I5(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005540FFFF)) 
    \FSM_sequential_state_write[1]_i_3 
       (.I0(state_write[0]),
        .I1(axi_wvalid_reg_0),
        .I2(m00_axi_wready),
        .I3(axi_awvalid1__0),
        .I4(state_write[1]),
        .I5(\axi_awaddr[28]_i_1_n_0 ),
        .O(\FSM_sequential_state_write[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "WDATA:10,WADDR:01,IDLE:00" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WDATA:10,WADDR:01,IDLE:00" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_2_n_0 ),
        .Q(state_write[1]),
        .R(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXI_ARADDR_carry
       (.CI(1'b0),
        .CO({NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED[3:2],M_AXI_ARADDR_carry_n_2,M_AXI_ARADDR_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,axi_araddr_reg[30],1'b0}),
        .O({NLW_M_AXI_ARADDR_carry_O_UNCONNECTED[3],m00_axi_araddr[29:27]}),
        .S({1'b0,axi_araddr_reg[31],M_AXI_ARADDR_carry_i_1_n_0,axi_araddr_reg[29]}));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_ARADDR_carry_i_1
       (.I0(axi_araddr_reg[30]),
        .O(M_AXI_ARADDR_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXI_AWADDR_carry
       (.CI(1'b0),
        .CO({NLW_M_AXI_AWADDR_carry_CO_UNCONNECTED[3:2],M_AXI_AWADDR_carry_n_2,M_AXI_AWADDR_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,axi_awaddr_reg[30],1'b0}),
        .O({NLW_M_AXI_AWADDR_carry_O_UNCONNECTED[3],m00_axi_awaddr[29:27]}),
        .S({1'b0,axi_awaddr_reg[31],M_AXI_AWADDR_carry_i_1_n_0,axi_awaddr_reg[29]}));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_AWADDR_carry_i_1
       (.I0(axi_awaddr_reg[30]),
        .O(M_AXI_AWADDR_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    \axi_araddr[28]_i_1 
       (.I0(state_read[1]),
        .I1(state_read[0]),
        .I2(m00_axi_arready),
        .I3(axi_arvalid_reg_0),
        .O(state_read__0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_araddr[5]_i_2 
       (.I0(m00_axi_araddr[0]),
        .O(\axi_araddr[5]_i_2_n_0 ));
  FDRE \axi_araddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[13]_i_1_n_7 ),
        .Q(m00_axi_araddr[8]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[13]_i_1_n_6 ),
        .Q(m00_axi_araddr[9]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[13]_i_1_n_5 ),
        .Q(m00_axi_araddr[10]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[13]_i_1_n_4 ),
        .Q(m00_axi_araddr[11]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_reg[13]_i_1 
       (.CI(\axi_araddr_reg[9]_i_1_n_0 ),
        .CO({\axi_araddr_reg[13]_i_1_n_0 ,\axi_araddr_reg[13]_i_1_n_1 ,\axi_araddr_reg[13]_i_1_n_2 ,\axi_araddr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[13]_i_1_n_4 ,\axi_araddr_reg[13]_i_1_n_5 ,\axi_araddr_reg[13]_i_1_n_6 ,\axi_araddr_reg[13]_i_1_n_7 }),
        .S(m00_axi_araddr[11:8]));
  FDRE \axi_araddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[17]_i_1_n_7 ),
        .Q(m00_axi_araddr[12]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[17]_i_1_n_6 ),
        .Q(m00_axi_araddr[13]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[17]_i_1_n_5 ),
        .Q(m00_axi_araddr[14]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[17]_i_1_n_4 ),
        .Q(m00_axi_araddr[15]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_reg[17]_i_1 
       (.CI(\axi_araddr_reg[13]_i_1_n_0 ),
        .CO({\axi_araddr_reg[17]_i_1_n_0 ,\axi_araddr_reg[17]_i_1_n_1 ,\axi_araddr_reg[17]_i_1_n_2 ,\axi_araddr_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[17]_i_1_n_4 ,\axi_araddr_reg[17]_i_1_n_5 ,\axi_araddr_reg[17]_i_1_n_6 ,\axi_araddr_reg[17]_i_1_n_7 }),
        .S(m00_axi_araddr[15:12]));
  FDRE \axi_araddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[21]_i_1_n_7 ),
        .Q(m00_axi_araddr[16]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[21]_i_1_n_6 ),
        .Q(m00_axi_araddr[17]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[21]_i_1_n_5 ),
        .Q(m00_axi_araddr[18]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[21]_i_1_n_4 ),
        .Q(m00_axi_araddr[19]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_reg[21]_i_1 
       (.CI(\axi_araddr_reg[17]_i_1_n_0 ),
        .CO({\axi_araddr_reg[21]_i_1_n_0 ,\axi_araddr_reg[21]_i_1_n_1 ,\axi_araddr_reg[21]_i_1_n_2 ,\axi_araddr_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[21]_i_1_n_4 ,\axi_araddr_reg[21]_i_1_n_5 ,\axi_araddr_reg[21]_i_1_n_6 ,\axi_araddr_reg[21]_i_1_n_7 }),
        .S(m00_axi_araddr[19:16]));
  FDRE \axi_araddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[25]_i_1_n_7 ),
        .Q(m00_axi_araddr[20]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[25]_i_1_n_6 ),
        .Q(m00_axi_araddr[21]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[25]_i_1_n_5 ),
        .Q(m00_axi_araddr[22]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[25]_i_1_n_4 ),
        .Q(m00_axi_araddr[23]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_reg[25]_i_1 
       (.CI(\axi_araddr_reg[21]_i_1_n_0 ),
        .CO({\axi_araddr_reg[25]_i_1_n_0 ,\axi_araddr_reg[25]_i_1_n_1 ,\axi_araddr_reg[25]_i_1_n_2 ,\axi_araddr_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[25]_i_1_n_4 ,\axi_araddr_reg[25]_i_1_n_5 ,\axi_araddr_reg[25]_i_1_n_6 ,\axi_araddr_reg[25]_i_1_n_7 }),
        .S(m00_axi_araddr[23:20]));
  FDRE \axi_araddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[28]_i_2_n_7 ),
        .Q(m00_axi_araddr[24]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[28]_i_2_n_6 ),
        .Q(m00_axi_araddr[25]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[28]_i_2_n_5 ),
        .Q(m00_axi_araddr[26]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_reg[28]_i_2 
       (.CI(\axi_araddr_reg[25]_i_1_n_0 ),
        .CO({\axi_araddr_reg[28]_i_2_n_0 ,\axi_araddr_reg[28]_i_2_n_1 ,\axi_araddr_reg[28]_i_2_n_2 ,\axi_araddr_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[28]_i_2_n_4 ,\axi_araddr_reg[28]_i_2_n_5 ,\axi_araddr_reg[28]_i_2_n_6 ,\axi_araddr_reg[28]_i_2_n_7 }),
        .S({axi_araddr_reg[29],m00_axi_araddr[26:24]}));
  FDRE \axi_araddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[28]_i_2_n_4 ),
        .Q(axi_araddr_reg[29]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[5]_i_1_n_7 ),
        .Q(m00_axi_araddr[0]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[30]_i_1_n_7 ),
        .Q(axi_araddr_reg[30]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_reg[30]_i_1 
       (.CI(\axi_araddr_reg[28]_i_2_n_0 ),
        .CO({\NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED [3:1],\axi_araddr_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED [3:2],\axi_araddr_reg[30]_i_1_n_6 ,\axi_araddr_reg[30]_i_1_n_7 }),
        .S({1'b0,1'b0,axi_araddr_reg[31:30]}));
  FDRE \axi_araddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[30]_i_1_n_6 ),
        .Q(axi_araddr_reg[31]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[5]_i_1_n_6 ),
        .Q(m00_axi_araddr[1]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[5]_i_1_n_5 ),
        .Q(m00_axi_araddr[2]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[5]_i_1_n_4 ),
        .Q(m00_axi_araddr[3]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\axi_araddr_reg[5]_i_1_n_0 ,\axi_araddr_reg[5]_i_1_n_1 ,\axi_araddr_reg[5]_i_1_n_2 ,\axi_araddr_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\axi_araddr_reg[5]_i_1_n_4 ,\axi_araddr_reg[5]_i_1_n_5 ,\axi_araddr_reg[5]_i_1_n_6 ,\axi_araddr_reg[5]_i_1_n_7 }),
        .S({m00_axi_araddr[3:1],\axi_araddr[5]_i_2_n_0 }));
  FDRE \axi_araddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[9]_i_1_n_7 ),
        .Q(m00_axi_araddr[4]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[9]_i_1_n_6 ),
        .Q(m00_axi_araddr[5]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[9]_i_1_n_5 ),
        .Q(m00_axi_araddr[6]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(state_read__0),
        .D(\axi_araddr_reg[9]_i_1_n_4 ),
        .Q(m00_axi_araddr[7]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_araddr_reg[9]_i_1 
       (.CI(\axi_araddr_reg[5]_i_1_n_0 ),
        .CO({\axi_araddr_reg[9]_i_1_n_0 ,\axi_araddr_reg[9]_i_1_n_1 ,\axi_araddr_reg[9]_i_1_n_2 ,\axi_araddr_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[9]_i_1_n_4 ,\axi_araddr_reg[9]_i_1_n_5 ,\axi_araddr_reg[9]_i_1_n_6 ,\axi_araddr_reg[9]_i_1_n_7 }),
        .S(m00_axi_araddr[7:4]));
  LUT6 #(
    .INIT(64'hFD0F080CFDFF080C)) 
    axi_arvalid_i_1
       (.I0(p_15_in),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(axi_arvalid_reg_0),
        .I5(m00_axi_arready),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(axi_arvalid_reg_0),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \axi_awaddr[28]_i_1 
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(m00_axi_aresetn),
        .O(\axi_awaddr[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \axi_awaddr[28]_i_2 
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(axi_awvalid_reg_0),
        .I3(m00_axi_awready),
        .O(axi_awaddr));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awaddr[5]_i_2 
       (.I0(m00_axi_awaddr[0]),
        .O(\axi_awaddr[5]_i_2_n_0 ));
  FDRE \axi_awaddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_7 ),
        .Q(m00_axi_awaddr[8]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_6 ),
        .Q(m00_axi_awaddr[9]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_5 ),
        .Q(m00_axi_awaddr[10]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_4 ),
        .Q(m00_axi_awaddr[11]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_awaddr_reg[13]_i_1 
       (.CI(\axi_awaddr_reg[9]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[13]_i_1_n_0 ,\axi_awaddr_reg[13]_i_1_n_1 ,\axi_awaddr_reg[13]_i_1_n_2 ,\axi_awaddr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[13]_i_1_n_4 ,\axi_awaddr_reg[13]_i_1_n_5 ,\axi_awaddr_reg[13]_i_1_n_6 ,\axi_awaddr_reg[13]_i_1_n_7 }),
        .S(m00_axi_awaddr[11:8]));
  FDRE \axi_awaddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[17]_i_1_n_7 ),
        .Q(m00_axi_awaddr[12]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[17]_i_1_n_6 ),
        .Q(m00_axi_awaddr[13]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[17]_i_1_n_5 ),
        .Q(m00_axi_awaddr[14]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[17]_i_1_n_4 ),
        .Q(m00_axi_awaddr[15]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_awaddr_reg[17]_i_1 
       (.CI(\axi_awaddr_reg[13]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[17]_i_1_n_0 ,\axi_awaddr_reg[17]_i_1_n_1 ,\axi_awaddr_reg[17]_i_1_n_2 ,\axi_awaddr_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[17]_i_1_n_4 ,\axi_awaddr_reg[17]_i_1_n_5 ,\axi_awaddr_reg[17]_i_1_n_6 ,\axi_awaddr_reg[17]_i_1_n_7 }),
        .S(m00_axi_awaddr[15:12]));
  FDRE \axi_awaddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_7 ),
        .Q(m00_axi_awaddr[16]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_6 ),
        .Q(m00_axi_awaddr[17]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_5 ),
        .Q(m00_axi_awaddr[18]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_4 ),
        .Q(m00_axi_awaddr[19]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_awaddr_reg[21]_i_1 
       (.CI(\axi_awaddr_reg[17]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[21]_i_1_n_0 ,\axi_awaddr_reg[21]_i_1_n_1 ,\axi_awaddr_reg[21]_i_1_n_2 ,\axi_awaddr_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[21]_i_1_n_4 ,\axi_awaddr_reg[21]_i_1_n_5 ,\axi_awaddr_reg[21]_i_1_n_6 ,\axi_awaddr_reg[21]_i_1_n_7 }),
        .S(m00_axi_awaddr[19:16]));
  FDRE \axi_awaddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[25]_i_1_n_7 ),
        .Q(m00_axi_awaddr[20]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[25]_i_1_n_6 ),
        .Q(m00_axi_awaddr[21]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[25]_i_1_n_5 ),
        .Q(m00_axi_awaddr[22]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[25]_i_1_n_4 ),
        .Q(m00_axi_awaddr[23]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_awaddr_reg[25]_i_1 
       (.CI(\axi_awaddr_reg[21]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[25]_i_1_n_0 ,\axi_awaddr_reg[25]_i_1_n_1 ,\axi_awaddr_reg[25]_i_1_n_2 ,\axi_awaddr_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[25]_i_1_n_4 ,\axi_awaddr_reg[25]_i_1_n_5 ,\axi_awaddr_reg[25]_i_1_n_6 ,\axi_awaddr_reg[25]_i_1_n_7 }),
        .S(m00_axi_awaddr[23:20]));
  FDRE \axi_awaddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_7 ),
        .Q(m00_axi_awaddr[24]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_6 ),
        .Q(m00_axi_awaddr[25]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_5 ),
        .Q(m00_axi_awaddr[26]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_awaddr_reg[28]_i_3 
       (.CI(\axi_awaddr_reg[25]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[28]_i_3_n_0 ,\axi_awaddr_reg[28]_i_3_n_1 ,\axi_awaddr_reg[28]_i_3_n_2 ,\axi_awaddr_reg[28]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[28]_i_3_n_4 ,\axi_awaddr_reg[28]_i_3_n_5 ,\axi_awaddr_reg[28]_i_3_n_6 ,\axi_awaddr_reg[28]_i_3_n_7 }),
        .S({axi_awaddr_reg[29],m00_axi_awaddr[26:24]}));
  FDRE \axi_awaddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_4 ),
        .Q(axi_awaddr_reg[29]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[5]_i_1_n_7 ),
        .Q(m00_axi_awaddr[0]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[30]_i_1_n_7 ),
        .Q(axi_awaddr_reg[30]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_awaddr_reg[30]_i_1 
       (.CI(\axi_awaddr_reg[28]_i_3_n_0 ),
        .CO({\NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED [3:1],\axi_awaddr_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED [3:2],\axi_awaddr_reg[30]_i_1_n_6 ,\axi_awaddr_reg[30]_i_1_n_7 }),
        .S({1'b0,1'b0,axi_awaddr_reg[31:30]}));
  FDRE \axi_awaddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[30]_i_1_n_6 ),
        .Q(axi_awaddr_reg[31]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[5]_i_1_n_6 ),
        .Q(m00_axi_awaddr[1]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[5]_i_1_n_5 ),
        .Q(m00_axi_awaddr[2]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[5]_i_1_n_4 ),
        .Q(m00_axi_awaddr[3]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_awaddr_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\axi_awaddr_reg[5]_i_1_n_0 ,\axi_awaddr_reg[5]_i_1_n_1 ,\axi_awaddr_reg[5]_i_1_n_2 ,\axi_awaddr_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\axi_awaddr_reg[5]_i_1_n_4 ,\axi_awaddr_reg[5]_i_1_n_5 ,\axi_awaddr_reg[5]_i_1_n_6 ,\axi_awaddr_reg[5]_i_1_n_7 }),
        .S({m00_axi_awaddr[3:1],\axi_awaddr[5]_i_2_n_0 }));
  FDRE \axi_awaddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[9]_i_1_n_7 ),
        .Q(m00_axi_awaddr[4]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[9]_i_1_n_6 ),
        .Q(m00_axi_awaddr[5]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[9]_i_1_n_5 ),
        .Q(m00_axi_awaddr[6]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[9]_i_1_n_4 ),
        .Q(m00_axi_awaddr[7]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_awaddr_reg[9]_i_1 
       (.CI(\axi_awaddr_reg[5]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[9]_i_1_n_0 ,\axi_awaddr_reg[9]_i_1_n_1 ,\axi_awaddr_reg[9]_i_1_n_2 ,\axi_awaddr_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[9]_i_1_n_4 ,\axi_awaddr_reg[9]_i_1_n_5 ,\axi_awaddr_reg[9]_i_1_n_6 ,\axi_awaddr_reg[9]_i_1_n_7 }),
        .S(m00_axi_awaddr[7:4]));
  LUT6 #(
    .INIT(64'hFF04FFFFFF040000)) 
    axi_awvalid_i_1
       (.I0(state_write[1]),
        .I1(m00_axi_wready),
        .I2(axi_awvalid1__0),
        .I3(axi_awvalid_i_3_n_0),
        .I4(axi_awvalid),
        .I5(axi_awvalid_reg_0),
        .O(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awvalid_i_2
       (.I0(m00_axi_wready),
        .I1(write_index[2]),
        .I2(write_index[0]),
        .I3(write_index[1]),
        .O(axi_awvalid1__0));
  LUT5 #(
    .INIT(32'h00405555)) 
    axi_awvalid_i_3
       (.I0(state_write[0]),
        .I1(m00_axi_wready),
        .I2(axi_wvalid_reg_0),
        .I3(axi_awvalid1__0),
        .I4(state_write[1]),
        .O(axi_awvalid_i_3_n_0));
  LUT6 #(
    .INIT(64'h0CFA0C0A0C0A0C0A)) 
    axi_awvalid_i_4
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I1(axi_awvalid_i_5_n_0),
        .I2(state_write[0]),
        .I3(state_write[1]),
        .I4(m00_axi_awready),
        .I5(axi_awvalid_reg_0),
        .O(axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF000800)) 
    axi_awvalid_i_5
       (.I0(write_index[1]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(m00_axi_wready),
        .I4(axi_wvalid_reg_0),
        .O(axi_awvalid_i_5_n_0));
  FDRE axi_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_1_n_0),
        .Q(axi_awvalid_reg_0),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    axi_bready_i_1
       (.I0(write_index_0),
        .I1(axi_bready),
        .I2(axi_bready_reg_0),
        .O(axi_bready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0CF50CF00CF50C00)) 
    axi_bready_i_2
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I1(axi_awvalid_i_5_n_0),
        .I2(state_write[0]),
        .I3(state_write[1]),
        .I4(axi_bready0__0),
        .I5(axi_awvalid0__0),
        .O(axi_bready));
  FDRE axi_bready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_bready_i_1_n_0),
        .Q(axi_bready_reg_0),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rready_i_1
       (.I0(m00_axi_arready),
        .I1(axi_arvalid_reg_0),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(m00_axi_rvalid),
        .I5(axi_rready_reg_0),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(axi_rready_reg_0),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[11]_i_2 
       (.I0(m00_axi_wdata[11]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[11]_i_3 
       (.I0(m00_axi_wdata[10]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[11]_i_4 
       (.I0(m00_axi_wdata[9]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[11]_i_5 
       (.I0(m00_axi_wdata[8]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[15]_i_2 
       (.I0(m00_axi_wdata[15]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[15]_i_3 
       (.I0(m00_axi_wdata[14]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[15]_i_4 
       (.I0(m00_axi_wdata[13]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[15]_i_5 
       (.I0(m00_axi_wdata[12]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[19]_i_2 
       (.I0(m00_axi_wdata[19]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[19]_i_3 
       (.I0(m00_axi_wdata[18]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[19]_i_4 
       (.I0(m00_axi_wdata[17]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[19]_i_5 
       (.I0(m00_axi_wdata[16]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[23]_i_2 
       (.I0(m00_axi_wdata[23]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[23]_i_3 
       (.I0(m00_axi_wdata[22]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[23]_i_4 
       (.I0(m00_axi_wdata[21]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[23]_i_5 
       (.I0(m00_axi_wdata[20]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    \axi_wdata[27]_i_2 
       (.I0(write_index[1]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(m00_axi_wready),
        .I4(m00_axi_wdata[27]),
        .O(\axi_wdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[27]_i_3 
       (.I0(m00_axi_wdata[26]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    \axi_wdata[27]_i_4 
       (.I0(write_index[1]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(m00_axi_wready),
        .I4(m00_axi_wdata[25]),
        .O(\axi_wdata[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[27]_i_5 
       (.I0(m00_axi_wdata[24]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3838383838080000)) 
    \axi_wdata[31]_i_1 
       (.I0(axi_awvalid0__0),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(axi_wvalid_reg_0),
        .I4(m00_axi_wready),
        .I5(axi_awvalid1__0),
        .O(write_index_0));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_wdata[31]_i_3 
       (.I0(axi_awvalid_reg_0),
        .I1(m00_axi_awready),
        .O(axi_awvalid0__0));
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    \axi_wdata[31]_i_4 
       (.I0(write_index[1]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(m00_axi_wready),
        .I4(m00_axi_wdata[31]),
        .O(\axi_wdata[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[31]_i_5 
       (.I0(m00_axi_wdata[30]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    \axi_wdata[31]_i_6 
       (.I0(write_index[1]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(m00_axi_wready),
        .I4(m00_axi_wdata[29]),
        .O(\axi_wdata[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[31]_i_7 
       (.I0(m00_axi_wdata[28]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[3]_i_2 
       (.I0(m00_axi_wdata[0]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[3]_i_3 
       (.I0(m00_axi_wdata[3]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[3]_i_4 
       (.I0(m00_axi_wdata[2]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[3]_i_5 
       (.I0(m00_axi_wdata[1]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55155555)) 
    \axi_wdata[3]_i_6 
       (.I0(m00_axi_wdata[0]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[7]_i_2 
       (.I0(m00_axi_wdata[7]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[7]_i_3 
       (.I0(m00_axi_wdata[6]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[7]_i_4 
       (.I0(m00_axi_wdata[5]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \axi_wdata[7]_i_5 
       (.I0(m00_axi_wdata[4]),
        .I1(write_index[1]),
        .I2(write_index[0]),
        .I3(write_index[2]),
        .I4(m00_axi_wready),
        .O(\axi_wdata[7]_i_5_n_0 ));
  FDRE \axi_wdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[3]_i_1_n_7 ),
        .Q(m00_axi_wdata[0]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[11]_i_1_n_5 ),
        .Q(m00_axi_wdata[10]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[11]_i_1_n_4 ),
        .Q(m00_axi_wdata[11]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_wdata_reg[11]_i_1 
       (.CI(\axi_wdata_reg[7]_i_1_n_0 ),
        .CO({\axi_wdata_reg[11]_i_1_n_0 ,\axi_wdata_reg[11]_i_1_n_1 ,\axi_wdata_reg[11]_i_1_n_2 ,\axi_wdata_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[11]_i_1_n_4 ,\axi_wdata_reg[11]_i_1_n_5 ,\axi_wdata_reg[11]_i_1_n_6 ,\axi_wdata_reg[11]_i_1_n_7 }),
        .S({\axi_wdata[11]_i_2_n_0 ,\axi_wdata[11]_i_3_n_0 ,\axi_wdata[11]_i_4_n_0 ,\axi_wdata[11]_i_5_n_0 }));
  FDRE \axi_wdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[15]_i_1_n_7 ),
        .Q(m00_axi_wdata[12]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[15]_i_1_n_6 ),
        .Q(m00_axi_wdata[13]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[15]_i_1_n_5 ),
        .Q(m00_axi_wdata[14]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[15]_i_1_n_4 ),
        .Q(m00_axi_wdata[15]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_wdata_reg[15]_i_1 
       (.CI(\axi_wdata_reg[11]_i_1_n_0 ),
        .CO({\axi_wdata_reg[15]_i_1_n_0 ,\axi_wdata_reg[15]_i_1_n_1 ,\axi_wdata_reg[15]_i_1_n_2 ,\axi_wdata_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[15]_i_1_n_4 ,\axi_wdata_reg[15]_i_1_n_5 ,\axi_wdata_reg[15]_i_1_n_6 ,\axi_wdata_reg[15]_i_1_n_7 }),
        .S({\axi_wdata[15]_i_2_n_0 ,\axi_wdata[15]_i_3_n_0 ,\axi_wdata[15]_i_4_n_0 ,\axi_wdata[15]_i_5_n_0 }));
  FDRE \axi_wdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[19]_i_1_n_7 ),
        .Q(m00_axi_wdata[16]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[19]_i_1_n_6 ),
        .Q(m00_axi_wdata[17]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[19]_i_1_n_5 ),
        .Q(m00_axi_wdata[18]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[19]_i_1_n_4 ),
        .Q(m00_axi_wdata[19]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_wdata_reg[19]_i_1 
       (.CI(\axi_wdata_reg[15]_i_1_n_0 ),
        .CO({\axi_wdata_reg[19]_i_1_n_0 ,\axi_wdata_reg[19]_i_1_n_1 ,\axi_wdata_reg[19]_i_1_n_2 ,\axi_wdata_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[19]_i_1_n_4 ,\axi_wdata_reg[19]_i_1_n_5 ,\axi_wdata_reg[19]_i_1_n_6 ,\axi_wdata_reg[19]_i_1_n_7 }),
        .S({\axi_wdata[19]_i_2_n_0 ,\axi_wdata[19]_i_3_n_0 ,\axi_wdata[19]_i_4_n_0 ,\axi_wdata[19]_i_5_n_0 }));
  FDRE \axi_wdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[3]_i_1_n_6 ),
        .Q(m00_axi_wdata[1]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[23]_i_1_n_7 ),
        .Q(m00_axi_wdata[20]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[23]_i_1_n_6 ),
        .Q(m00_axi_wdata[21]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[23]_i_1_n_5 ),
        .Q(m00_axi_wdata[22]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[23]_i_1_n_4 ),
        .Q(m00_axi_wdata[23]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_wdata_reg[23]_i_1 
       (.CI(\axi_wdata_reg[19]_i_1_n_0 ),
        .CO({\axi_wdata_reg[23]_i_1_n_0 ,\axi_wdata_reg[23]_i_1_n_1 ,\axi_wdata_reg[23]_i_1_n_2 ,\axi_wdata_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[23]_i_1_n_4 ,\axi_wdata_reg[23]_i_1_n_5 ,\axi_wdata_reg[23]_i_1_n_6 ,\axi_wdata_reg[23]_i_1_n_7 }),
        .S({\axi_wdata[23]_i_2_n_0 ,\axi_wdata[23]_i_3_n_0 ,\axi_wdata[23]_i_4_n_0 ,\axi_wdata[23]_i_5_n_0 }));
  FDRE \axi_wdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[27]_i_1_n_7 ),
        .Q(m00_axi_wdata[24]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDSE \axi_wdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[27]_i_1_n_6 ),
        .Q(m00_axi_wdata[25]),
        .S(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[27]_i_1_n_5 ),
        .Q(m00_axi_wdata[26]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDSE \axi_wdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[27]_i_1_n_4 ),
        .Q(m00_axi_wdata[27]),
        .S(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_wdata_reg[27]_i_1 
       (.CI(\axi_wdata_reg[23]_i_1_n_0 ),
        .CO({\axi_wdata_reg[27]_i_1_n_0 ,\axi_wdata_reg[27]_i_1_n_1 ,\axi_wdata_reg[27]_i_1_n_2 ,\axi_wdata_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[27]_i_1_n_4 ,\axi_wdata_reg[27]_i_1_n_5 ,\axi_wdata_reg[27]_i_1_n_6 ,\axi_wdata_reg[27]_i_1_n_7 }),
        .S({\axi_wdata[27]_i_2_n_0 ,\axi_wdata[27]_i_3_n_0 ,\axi_wdata[27]_i_4_n_0 ,\axi_wdata[27]_i_5_n_0 }));
  FDRE \axi_wdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[31]_i_2_n_7 ),
        .Q(m00_axi_wdata[28]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDSE \axi_wdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[31]_i_2_n_6 ),
        .Q(m00_axi_wdata[29]),
        .S(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[3]_i_1_n_5 ),
        .Q(m00_axi_wdata[2]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[31]_i_2_n_5 ),
        .Q(m00_axi_wdata[30]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDSE \axi_wdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[31]_i_2_n_4 ),
        .Q(m00_axi_wdata[31]),
        .S(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_wdata_reg[31]_i_2 
       (.CI(\axi_wdata_reg[27]_i_1_n_0 ),
        .CO({\NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED [3],\axi_wdata_reg[31]_i_2_n_1 ,\axi_wdata_reg[31]_i_2_n_2 ,\axi_wdata_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[31]_i_2_n_4 ,\axi_wdata_reg[31]_i_2_n_5 ,\axi_wdata_reg[31]_i_2_n_6 ,\axi_wdata_reg[31]_i_2_n_7 }),
        .S({\axi_wdata[31]_i_4_n_0 ,\axi_wdata[31]_i_5_n_0 ,\axi_wdata[31]_i_6_n_0 ,\axi_wdata[31]_i_7_n_0 }));
  FDRE \axi_wdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[3]_i_1_n_4 ),
        .Q(m00_axi_wdata[3]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_wdata_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\axi_wdata_reg[3]_i_1_n_0 ,\axi_wdata_reg[3]_i_1_n_1 ,\axi_wdata_reg[3]_i_1_n_2 ,\axi_wdata_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\axi_wdata[3]_i_2_n_0 }),
        .O({\axi_wdata_reg[3]_i_1_n_4 ,\axi_wdata_reg[3]_i_1_n_5 ,\axi_wdata_reg[3]_i_1_n_6 ,\axi_wdata_reg[3]_i_1_n_7 }),
        .S({\axi_wdata[3]_i_3_n_0 ,\axi_wdata[3]_i_4_n_0 ,\axi_wdata[3]_i_5_n_0 ,\axi_wdata[3]_i_6_n_0 }));
  FDRE \axi_wdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[7]_i_1_n_7 ),
        .Q(m00_axi_wdata[4]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[7]_i_1_n_6 ),
        .Q(m00_axi_wdata[5]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[7]_i_1_n_5 ),
        .Q(m00_axi_wdata[6]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[7]_i_1_n_4 ),
        .Q(m00_axi_wdata[7]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axi_wdata_reg[7]_i_1 
       (.CI(\axi_wdata_reg[3]_i_1_n_0 ),
        .CO({\axi_wdata_reg[7]_i_1_n_0 ,\axi_wdata_reg[7]_i_1_n_1 ,\axi_wdata_reg[7]_i_1_n_2 ,\axi_wdata_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[7]_i_1_n_4 ,\axi_wdata_reg[7]_i_1_n_5 ,\axi_wdata_reg[7]_i_1_n_6 ,\axi_wdata_reg[7]_i_1_n_7 }),
        .S({\axi_wdata[7]_i_2_n_0 ,\axi_wdata[7]_i_3_n_0 ,\axi_wdata[7]_i_4_n_0 ,\axi_wdata[7]_i_5_n_0 }));
  FDRE \axi_wdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[11]_i_1_n_7 ),
        .Q(m00_axi_wdata[8]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \axi_wdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\axi_wdata_reg[11]_i_1_n_6 ),
        .Q(m00_axi_wdata[9]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1175FFFF11550000)) 
    axi_wvalid_i_1
       (.I0(state_write[1]),
        .I1(axi_awvalid1__0),
        .I2(m00_axi_wready),
        .I3(state_write[0]),
        .I4(axi_awvalid),
        .I5(axi_wvalid_reg_0),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(axi_wvalid_reg_0),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFFAAAA)) 
    compare_done_i_1
       (.I0(compare_done),
        .I1(init_txn_ff),
        .I2(init_txn_ff2),
        .I3(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .I4(m00_axi_txn_done),
        .O(compare_done_i_1_n_0));
  FDRE compare_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(compare_done_i_1_n_0),
        .Q(m00_axi_txn_done),
        .R(ERROR_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    error_reg_i_1
       (.I0(p_15_in),
        .I1(m00_axi_rresp),
        .I2(axi_bready0__0),
        .I3(m00_axi_bresp),
        .I4(read_mismatch),
        .I5(error_reg),
        .O(error_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    error_reg_i_2
       (.I0(m00_axi_bvalid),
        .I1(axi_bready_reg_0),
        .O(axi_bready0__0));
  FDRE error_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(error_reg_i_1_n_0),
        .Q(error_reg),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \expected_rdata[0]_i_1 
       (.I0(\read_index_reg_n_0_[0] ),
        .O(\expected_rdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \expected_rdata[1]_i_1 
       (.I0(\read_index_reg_n_0_[0] ),
        .I1(\read_index_reg_n_0_[1] ),
        .O(expected_rdata0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \expected_rdata[2]_i_1 
       (.I0(\read_index_reg_n_0_[0] ),
        .I1(\read_index_reg_n_0_[1] ),
        .I2(\read_index_reg_n_0_[2] ),
        .O(expected_rdata0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \expected_rdata[3]_i_1 
       (.I0(m00_axi_rvalid),
        .I1(axi_rready_reg_0),
        .O(p_15_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \expected_rdata[3]_i_2 
       (.I0(\read_index_reg_n_0_[2] ),
        .I1(\read_index_reg_n_0_[0] ),
        .I2(\read_index_reg_n_0_[1] ),
        .O(expected_rdata0[3]));
  FDRE \expected_rdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(\expected_rdata[0]_i_1_n_0 ),
        .Q(expected_rdata[0]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(expected_rdata0[1]),
        .Q(expected_rdata[1]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(expected_rdata0[2]),
        .Q(expected_rdata[2]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \expected_rdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(p_15_in),
        .D(expected_rdata0[3]),
        .Q(expected_rdata[3]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE init_txn_ff2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_txn_ff),
        .Q(init_txn_ff2),
        .R(ERROR_i_1_n_0));
  FDRE init_txn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(m00_axi_init_axi_txn),
        .Q(init_txn_ff),
        .R(ERROR_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF3FFF00008000)) 
    \read_index[0]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I1(axi_rready_reg_0),
        .I2(m00_axi_rvalid),
        .I3(state_read[1]),
        .I4(state_read[0]),
        .I5(\read_index_reg_n_0_[0] ),
        .O(\read_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4FFF00008000)) 
    \read_index[1]_i_1 
       (.I0(\read_index_reg_n_0_[0] ),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I2(p_15_in),
        .I3(state_read[1]),
        .I4(state_read[0]),
        .I5(\read_index_reg_n_0_[1] ),
        .O(\read_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7077FFFF80880000)) 
    \read_index[2]_i_1 
       (.I0(\read_index_reg_n_0_[1] ),
        .I1(\read_index_reg_n_0_[0] ),
        .I2(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I3(p_15_in),
        .I4(\read_index[2]_i_2_n_0 ),
        .I5(\read_index_reg_n_0_[2] ),
        .O(\read_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \read_index[2]_i_2 
       (.I0(axi_rready_reg_0),
        .I1(m00_axi_rvalid),
        .I2(state_read[1]),
        .I3(state_read[0]),
        .O(\read_index[2]_i_2_n_0 ));
  FDRE \read_index_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\read_index[0]_i_1_n_0 ),
        .Q(\read_index_reg_n_0_[0] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \read_index_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\read_index[1]_i_1_n_0 ),
        .Q(\read_index_reg_n_0_[1] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \read_index_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\read_index[2]_i_1_n_0 ),
        .Q(\read_index_reg_n_0_[2] ),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  CARRY4 read_mismatch1_carry
       (.CI(1'b0),
        .CO({read_mismatch1_carry_n_0,read_mismatch1_carry_n_1,read_mismatch1_carry_n_2,read_mismatch1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_read_mismatch1_carry_O_UNCONNECTED[3:0]),
        .S({read_mismatch1_carry_i_1_n_0,read_mismatch1_carry_i_2_n_0,read_mismatch1_carry_i_3_n_0,read_mismatch1_carry_i_4_n_0}));
  CARRY4 read_mismatch1_carry__0
       (.CI(read_mismatch1_carry_n_0),
        .CO({read_mismatch1_carry__0_n_0,read_mismatch1_carry__0_n_1,read_mismatch1_carry__0_n_2,read_mismatch1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_read_mismatch1_carry__0_O_UNCONNECTED[3:0]),
        .S({read_mismatch1_carry__0_i_1_n_0,read_mismatch1_carry__0_i_2_n_0,read_mismatch1_carry__0_i_3_n_0,read_mismatch1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    read_mismatch1_carry__0_i_1
       (.I0(m00_axi_rdata[23]),
        .I1(m00_axi_rdata[22]),
        .I2(m00_axi_rdata[21]),
        .O(read_mismatch1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_mismatch1_carry__0_i_2
       (.I0(m00_axi_rdata[20]),
        .I1(m00_axi_rdata[19]),
        .I2(m00_axi_rdata[18]),
        .O(read_mismatch1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_mismatch1_carry__0_i_3
       (.I0(m00_axi_rdata[17]),
        .I1(m00_axi_rdata[16]),
        .I2(m00_axi_rdata[15]),
        .O(read_mismatch1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_mismatch1_carry__0_i_4
       (.I0(m00_axi_rdata[14]),
        .I1(m00_axi_rdata[13]),
        .I2(m00_axi_rdata[12]),
        .O(read_mismatch1_carry__0_i_4_n_0));
  CARRY4 read_mismatch1_carry__1
       (.CI(read_mismatch1_carry__0_n_0),
        .CO({NLW_read_mismatch1_carry__1_CO_UNCONNECTED[3],read_mismatch1,read_mismatch1_carry__1_n_2,read_mismatch1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_read_mismatch1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,read_mismatch1_carry__1_i_1_n_0,read_mismatch1_carry__1_i_2_n_0,read_mismatch1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    read_mismatch1_carry__1_i_1
       (.I0(m00_axi_rdata[31]),
        .I1(m00_axi_rdata[30]),
        .O(read_mismatch1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    read_mismatch1_carry__1_i_2
       (.I0(m00_axi_rdata[27]),
        .I1(m00_axi_rdata[28]),
        .I2(m00_axi_rdata[29]),
        .O(read_mismatch1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    read_mismatch1_carry__1_i_3
       (.I0(m00_axi_rdata[26]),
        .I1(m00_axi_rdata[25]),
        .I2(m00_axi_rdata[24]),
        .O(read_mismatch1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_mismatch1_carry_i_1
       (.I0(m00_axi_rdata[11]),
        .I1(m00_axi_rdata[10]),
        .I2(m00_axi_rdata[9]),
        .O(read_mismatch1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_mismatch1_carry_i_2
       (.I0(m00_axi_rdata[8]),
        .I1(m00_axi_rdata[7]),
        .I2(m00_axi_rdata[6]),
        .O(read_mismatch1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0009)) 
    read_mismatch1_carry_i_3
       (.I0(m00_axi_rdata[3]),
        .I1(expected_rdata[3]),
        .I2(m00_axi_rdata[5]),
        .I3(m00_axi_rdata[4]),
        .O(read_mismatch1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_4
       (.I0(m00_axi_rdata[0]),
        .I1(expected_rdata[0]),
        .I2(expected_rdata[2]),
        .I3(m00_axi_rdata[2]),
        .I4(expected_rdata[1]),
        .I5(m00_axi_rdata[1]),
        .O(read_mismatch1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hFF80)) 
    read_mismatch_i_1
       (.I0(m00_axi_rvalid),
        .I1(axi_rready_reg_0),
        .I2(read_mismatch1),
        .I3(read_mismatch),
        .O(read_mismatch_i_1_n_0));
  FDRE read_mismatch_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(read_mismatch_i_1_n_0),
        .Q(read_mismatch),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    reads_done_i_1
       (.I0(\read_index_reg_n_0_[1] ),
        .I1(\read_index_reg_n_0_[2] ),
        .I2(\read_index_reg_n_0_[0] ),
        .I3(m00_axi_rvalid),
        .I4(axi_rready_reg_0),
        .I5(reads_done),
        .O(reads_done_i_1_n_0));
  FDRE reads_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(reads_done_i_1_n_0),
        .Q(reads_done),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_index[0]_i_1 
       (.I0(write_index[0]),
        .O(\write_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_index[1]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[0]),
        .O(\write_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7078)) 
    \write_index[2]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(m00_axi_wready),
        .O(\write_index[2]_i_1_n_0 ));
  FDRE \write_index_reg[0] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\write_index[0]_i_1_n_0 ),
        .Q(write_index[0]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \write_index_reg[1] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\write_index[1]_i_1_n_0 ),
        .Q(write_index[1]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  FDRE \write_index_reg[2] 
       (.C(m00_axi_aclk),
        .CE(write_index_0),
        .D(\write_index[2]_i_1_n_0 ),
        .Q(write_index[2]),
        .R(\axi_awaddr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    writes_done_i_1
       (.I0(write_index[1]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(m00_axi_bvalid),
        .I4(axi_bready_reg_0),
        .I5(writes_done),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(\axi_awaddr[28]_i_1_n_0 ));
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
