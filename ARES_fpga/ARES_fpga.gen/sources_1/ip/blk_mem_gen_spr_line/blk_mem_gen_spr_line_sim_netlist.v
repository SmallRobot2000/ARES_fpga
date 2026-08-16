// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Aug 13 15:07:09 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/ip/blk_mem_gen_spr_line/blk_mem_gen_spr_line_sim_netlist.v
// Design      : blk_mem_gen_spr_line
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_line,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_spr_line
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
  blk_mem_gen_spr_line_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 46096)
`pragma protect data_block
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
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
