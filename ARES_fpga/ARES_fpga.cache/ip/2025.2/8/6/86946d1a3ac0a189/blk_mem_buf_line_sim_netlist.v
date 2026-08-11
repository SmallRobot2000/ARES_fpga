// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Aug 11 17:30:13 2026
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
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
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19680)
`pragma protect data_block
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
jw0ubvJhr0WvX4zswFHx
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
