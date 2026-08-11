// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Aug 11 21:52:23 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_buf_line_sim_netlist.v
// Design      : blk_mem_buf_line
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_buf_line,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
