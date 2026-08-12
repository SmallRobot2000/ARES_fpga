// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Aug 12 21:42:51 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_spr_line_sim_netlist.v
// Design      : blk_mem_gen_spr_line
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_line,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [7:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [1:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [7:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [15:0]dinb;
  wire [63:0]douta;
  wire [15:0]doutb;
  wire [7:0]wea;
  wire [1:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.3375 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_spr_line.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "8" *) 
  (* C_WEB_WIDTH = "2" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 46128)
`pragma protect data_block
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
il15zikqgDbtb/FHLRfN
`pragma protect end_protected
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
