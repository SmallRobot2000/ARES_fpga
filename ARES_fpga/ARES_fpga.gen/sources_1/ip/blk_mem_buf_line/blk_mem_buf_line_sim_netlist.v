// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Aug 11 21:52:24 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/ip/blk_mem_buf_line/blk_mem_buf_line_sim_netlist.v
// Design      : blk_mem_buf_line
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
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
