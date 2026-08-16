// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Aug 13 15:07:16 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/ip/blk_mem_fin_line/blk_mem_fin_line_sim_netlist.v
// Design      : blk_mem_fin_line
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_fin_line,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_mem_fin_line
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [11:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [11:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [11:0]dina;
  wire [11:0]dinb;
  wire [11:0]douta;
  wire [11:0]doutb;
  wire enb;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3493 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_fin_line.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_fin_line_blk_mem_gen_v8_4_12 U0
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
        .ena(1'b0),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29664)
`pragma protect data_block
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
BDkELjQ0KS+gCQ5CX/mHk9vASVAGI4sf
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
