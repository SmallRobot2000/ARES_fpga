// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Aug 13 15:07:08 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/ip/blk_mem_buf_line/blk_mem_buf_line_sim_netlist.v
// Design      : blk_mem_buf_line
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_buf_line,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_mem_buf_line
   (clka,
    ena,
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire [0:0]wea;
  wire [0:0]web;
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

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0901 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_buf_line.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_buf_line_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
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
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20112)
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
