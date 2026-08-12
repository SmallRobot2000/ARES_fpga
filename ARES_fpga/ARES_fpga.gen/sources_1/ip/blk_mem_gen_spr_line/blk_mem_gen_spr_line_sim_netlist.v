// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Aug 12 21:42:52 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/ip/blk_mem_gen_spr_line/blk_mem_gen_spr_line_sim_netlist.v
// Design      : blk_mem_gen_spr_line
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
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
