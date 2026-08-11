// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Aug 11 11:58:53 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/ip/blk_mem_fin_line/blk_mem_fin_line_sim_netlist.v
// Design      : blk_mem_fin_line
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
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
3R0hIcDm7SvKApVLqFhOn3JuZogXfeo53ItQ8GngD/uVYs59FaYtzsoZo6oHVEvB+E0vWVqAAm7r
nZobytlnWNq/82DCrTvcceA2sLeUA8FLl90ucoJkZao+0XvowHwzw+f3+Bdry4Ov8007elEvuxj8
jMHNz5tLaBbUdT6JtU5u8vzos3G2a4NqvZUR59OH9gmyy3x0aQYzs2GQ/i4qXQT8GQCAdwMc/WAO
AP74XMKIUGSHEoZfa3rDZjsVW1tj1URYVVo1E9/Rw6JAPHngCiCxp/bEIenOusNNkhGLaFEPGAmG
+bQ620uQKSxDR3UCdNL0zbu6WlfyyllVv16D623Vo8qGRJoT2KUJKcnhVrYUpsUj1Ts8keaT42Bd
U+idDDg3Fik05I6q7IzzBL9gKljmiRygsD2v10mmv+CBk6yuYn3z1cVyqRp3xEw+vhR5Gstf9mCJ
3Ijxiaevtvse4E6GF/x+z9YodUH0oP8mYvNrOxzHa2+iI2IW5VUdrHd1Waxi3uae80BcXGXzYUG4
K91IAxaZxWZLzvpAUA6c8YdqXCIgg+tBbndOB4GgDlxBUQST34ZBMCR/047mnivRyB/jW0sEp+Ho
X9gf94Dl1VGrPcNwWf4bV1sRIlK4fBAxclGq6x1a7MjTY2Aib4+VUKLU7sRPD31g5YtSjnNSVfD7
yzDFHLBkwz02F4ce4oTTHBn69PvxC7htBDaR3qQn7Hh8of0EvVdV9aCl9F/L7P0fS1XwXm+RJUhA
4V2Z4pH3OLzSKhwML0a3GKDClGoeH5PdeDxallL4MV4TVtNzGflACkG2E+YVh76leLiciPsKGxzF
5xnaULbfoLUPvYlLJUG5gPpG40XHtVGfooEJGmuDHcEP+xXD63swPvGTcP1PpwDxzDxvJEDCebly
sBK1CaY27C3VboW0B5+nRFFEJ83YCHSlZfHRTggUTJlSnJtPeW4l/i5tg2vxxIo62TWsanshnc6T
1YJp97sc+UQrLEfvrYsD1W9svY/4wlyJQBTElkuG0gs3ayNAJpuhPCqvZmddUgecMFtcOGlsVHYT
vjdF4n0cSMmr4phwdbvB47Xgjr3hJWvKnAHTYEVsMrO97eUCzRkst1f6sRkB92WEQGbIzKI/p5/S
k45yKUswuStpodqNmx4R4hFw3qd3TNth7knXHVwuwP5cRm+bzIU7zvIigNLQFqBeinkBFXEJTeXd
iYSn2iXzSrVdXPj05JnK5zAx20aw4H390vLntF/tdFENVLkvtk/1ZImsZpcJ3CSPVjcuYWX/A/R+
D5x99R9Ek+LphKfPdm1nK3SRWRwIf3KzibSjofLMvP15qZDrhfH+ZstNM/lJ285jrTr6Y7K8r8z6
vETkUYr9QBwlq/81/AYlDHEAbBtgaIZjx9t00kSOrwjqeoowsNi49W/KzfXTIXQbvSuaJE3LU0AO
ymaWduTg6qVq2on86ef7YodzmCtVtmCI5N33buSbfi+ev4y7pZtKIjPwx5vc3VpmS46ijQf3Wnhx
WoAGrBhCejQV+Su1MLlvZgR+lCPIDD8SAfFvKaqbXTXjgf2snV1yukD3K3DYQarZtsUZWluCxSQv
s2L2r9sq9C0FkJBq5bOG+LQH5A5+X7f1Ypts7SxaD140J0ChydAIIp1DVDe7CljhCybsSkJIE6zx
UgkNfNRgyCaKXGJLM5fctt5GUDAgnwuEtGQfDefBh3i7kxMmdBa0IIb7SoEUEZj5cS15Vxy6z7vb
Ku8QKw2CfPHPVIy2m/jngDEtOS30FQpzg9FQY8uFFfZld6ZNnHDBdMG1m4TQ5693mP55qnZzSgjH
RMCnOTAPZRhZjG3jPHILjSsQWNE2gvXUNBjHyPKXt6pb1L9+rUL1Ru0L1Z41otVLkoSduwfRZdMB
tLf1lf4nH2q3i5147+83RfCQcIrHRxFAnLj6CzdU4S4Mwgr2cJP1it/gVGmbHKJ5hppbEN3pF3Og
Nb2md1ProAzxCtXc/3Mj5V884HWhw++BJSS89w5sQOoVKx3GWcC6ifPDR12S8RZV/lIK5UohE40Z
KnMa7fJs2yadCQhBCCwIc/l11AUFMN7TRuF/S+EudAHadI3KKE+ldLcDmHNNlYMfL8glb2cacUBN
uAWHawvhleSsCtaQlWrd+a8aMudCxCWsPU705gokeaypf7UsISC12zKsPXMKgxWyWEKTzBE+KiQb
76jRIIJT1ItUGh2cAfe+kA4bRJDyM4pT3kZBUiL0KyX/lckSUtsadgBwZTeMxLsLt1SPa8pExlU/
kE09uIzZQH5cF6w64Ls7R9GPBi6OCRJULtKBVf7eVjqUdg2O/Y2tX1jRuYVprQBz/BeBLn+n2h/4
wNMOoPCc7ySVZPKt5kRrxslIgbR06s2RGNSUMyytfG1SqtGaRXyRz0j4gj3anB5klb+23TV9DseT
AddjsUleI0LdGCVXIYZlCThYaeEoN+NHLtM9mAKDrFxuFPLbfTVWmV7h5jAzp9/sjAtOtJrDXry6
egUFbB+jDmLjWFJ26n4fYVyfik2Mms4evWIWJgidzI1WS0KvrWt4Herd3+4HvEF/wveHP0sxFWM/
3hZHQai7gbj5gU8ey3IPKkGGeg41ZuxO6gbn3P1lSijY2l4G7mIAn3Zh909xMenmjTmSsjzqSKDp
fgPhn6HGrGMmmKG8crY0198Y3G9UkmaHn6TzIs6rYcyzOBsVQ7+iMMYl74PYbOMsHTM4uJmHlGFj
Kjo503dmsY6XMINZbtrArg/1v6jb2bFsNTwomXZAGUvqM5VN4j53NYpE09du9tNZVkAVkbQuMLno
69N9i8bUuOs+Kn14POTcb2N/9jw/O87IzUdKWdRvsuDO92e5lIyhxIqTO4hsgnr/v4YTyq/o39C0
Gpw4Sg32InmWfV3vt3YxKj5+YzfzSnBAYwgGLU/lEINWOwfMlvgNPJVRw2XKTdQl4jR9W6iO1iGu
gTY+Lb/XiCc/+CsFesyNkJXpMl2jizbjO2RZKE8jr5kN0tgq8V/FRLwpWIpgZY/2njkDOTIj0ki/
keZq0iSVZ9FL4KwUXA0lty4l35XFd6FG36WNPAn89PuQH/1UWxhmWQPanrptSyK1GlUfeDWRdsti
pojzX8snkyoS3I3cxs1x005zJypTNSRbPzgJZJT4yxcWMjvz5iahsfmEn2QQ3oRH7LDRBByVi2rA
kxvbcNHCmv6gk+n67eWmJ7i04YdQ74TQEqTUhg78JNdEI4xV6bLlwBmls0sOUMzxJ4h71miMLuJP
7lJYBLez5JZ68GgdpWSCXhfVtSBZeUBtQOmnJZbQV2KxrTElUXaZ6zNzpPvGqzo/tOsEab1l1550
T8itB8Co/bBjZVOyNrnTsT38SZwKK5rbf4wgpCG9sjJLdxrR+hZixYvskFK/3z1WDxi+LD1lxl0p
RNnapJqvQbNepDn/51rTt5k6QhbpkG8xDnstswIUkFZb2fLT51olq9b2cjiRvK5slT+h+AhPhOO2
a/65ke7cnwVhdHTqTW3Uh7uJAAl0AqgkIyV4ezxmoOjTA4cbtvipQbHNKliyuPExJBpmZYxRHw1w
/crQUkOqFey5+0Hi17Ibt/ftay+pNMS3SBbhHBzqRhRZ3o8ge2aD4mcReS+JJN8SHvu0b+jVWCB+
q+j/ODhxZ/oaepYgBvQBVULnT3gWuTmXyKNbJLK5oH2z67imfI2ndyGna9o92TAc89U5Iwdhk+KQ
Ocd7Jvj93Lkbi3qsfNGX4XShnOKrJGXTy/a7zMLjg1EnL7UAi6o8/AEiNiun+7Bd4xoiUwTNXQ/m
pTECETEvymQ7zCxfu5RWVaayMujA/jfHttcJnkpI5pkLKN1AeyVF8YPF6BPitis4iIxFc2X0TYoO
RtRfVRzXEUhFopeR6AfSzKphCg+c8mv3rZaCoLkkdzoUcfbueMBs+OqQLHYJWZPblD2M8Uh3cJAe
34hzIjI7DZ+UeCvFHN+G9ckWbdSgKwQx3yNMtCll+mTTg1ouZqjflAo/dewl4f8vGln3o4IBrvT4
pNISPaJHmexsobhj2/TlfKgsu9rBH3H5J3UKMo0DsYi/1itseYeSBbJmlTmZQBF8xOsuYbSOwVxu
esC4olsB6bCVajJdTw67wZc1hBy8/oW9Ys+dG+sHBYMZJ3JblZBq9yIYkSjFguVxnEbvtDbbrEL9
aC4+Ye3bDLMdNV5KxqLNHSLh+mSiFwkjueSXxCkCGr1ako6ThK5cAluRtMtXD5bn6SweHkJRxgAc
8cCFzpcASa/78y3izlv7XTEjQyxxh47BSx+PistTRj15l5EsSWgEC1yLAF75T5faxeDGl9en5CI0
mvmwoObdjCcZP5StIpCMJ1bWjAWB60Hs0PY+9nVyz+YQ4t9kvyK3j8x1sa+Jsmjk0UJ6PFtf2Uxl
/bVA98wdc9OW32W+2UxLGPATio8yYxPF0okSet5GnnaZvDyv7VX/tTQo/4YWhymFAPjlz8En0Qd7
U7nimi3kOLCpMgS0brY1tvBvvaMVJLXWcR5OqQELgnNMQtTo0Lr5MKS2Szqy0Bkm6I6uGyAtUANi
i83x73Tk1mWLyH6J0QzbQfBKWWNrROuTQezSUGkdvp7Gl9v9xPEsCvVhEIdxFk8sh17udskTyjzY
BmtuO4T7uPnnxwyDcTc0aYHD+B/y/4/QPj/tvlYexCUe299Q7pH0M7STxHt//Gs+FynyGPyDP1Jm
S8QFhnZw+ZRquWk8rDjwJVGKzscpo90EOTMDR3iQYtEhIN5U8/V0HSq0mQRx0/o0uS0SPzHC22ey
ZHcSSTm2IEGU2fjBrw23GtwACfrPbJg3OT08OKb9cBkeIA4CYwSjAdi5MP5l24FTfbqKR+h197RU
giXzQuOyS9RSxlH6a+WGIQ0jJEShn6bm6hD49wfqgmCM4NbstdumQr65qPd6M9Lo2PJ+D4SP9ljP
iSeX0hyagxVjnFSKe59K3nFR6ALlxtn3i/1AurEGsNebWKPrSCK2lHAMcXfuuEl82HO/DLEK2UN2
+KIhY6LN4rsL0BKdXqe1QIihJatwnZ9t7VPIqWrIsgPjll7Jo4EKLP+c0wB8AhalNIm7ccrFoRN0
kUTOC3QD8bragvtFUkdPpy/jhLa1GNUHYyiKm4dYbqsrAMRiidR9X5QbxpU6BoRjEYjJWthzBa0T
5szoaTaNaGOwFo7ASSGBHgFiGlS85I96U3/c4NsKkUOwGdvxIlbaK5BlpjaEKF/xCVtVLlZjR8Ca
haURH6DXYR0fDsAuqIGXkVYlVUHYhGrbzT2+eVMBu6dR7Wqjt8vweiP7dE+I3VwYTfCLKre/CQ2Z
ARSSwMWpXcJf1968jQjSAu14BHwJK4KU0/ENdsg0z7Rl5+c1TJRaVk5prEdZTLQngrzQvPmI6ZP8
8SoH7rc034TvHnL4gailrIMYfRhNebD33+nSf3i3Gljfdt7yOVlKAfWVtNm+DCfvKpiGd9JyjEf+
7Fac4nHkvOHGpUTr34YgQNmVCkPVMCm9fOwzFFGQrUkiE5JCotva4ydVxuDss+1U1AikoTOgniCZ
6AFVuXtuYvvfGTGp87EDCngcn5rPTT+AMVdkaxy/P8OR0nqZvnIYWwWmD2ybO+Z5L5o5WOzqMuf4
4CoHTBUxCRe3dw1OoZZIkFMDhHUFvjpRBuUgTHZg8aFRDmGMjVmiq9P07vj31HYX2YZu7I2Yggz5
PWDSpoqdAx1pdhHuAZLnbem0DE31u9LYmGLgBsJ8izPc645haPmGKPtP9WwNpu9d1/Sgfk/qlgb1
NoLDwNuS9wwZ1M53y5MaVehIKDasEmRCsz6ekDCJ/oOhAncoZayA4EwiVXymDRx3G9I/K8ZkuHp1
/ldGsoFxXJ97u+P1lRoAqz/fBIZrxalI2EB6vszNjJEtBQ7WIQCxFSY56O6HSecrPAkMmB/bULmo
zk+zHIy8Qjd++RARKadXSFdcVUqK+eCLwqfxWqjOjMyVvNiK5Pu9xJibM/8D8/Sv8riDX7tQIox2
P1+dYP0KzW9wqyLtj0uE+yw2CmgX0qmNLOMw+wByo3KZtg09uL7WG8QCn8+YMMI46Y1/uLhbolXE
N8fUOQCdb3qPO+0sPiQLDcFfysXRcgQYPomR2YJgutt+YsCfdcpQV3De49byPdCQnfDQMIVf+UMG
L5y0aBEiWAzPlYvFZyHcx6qVi0ZwcpEP8x91IUqiZbkLkAg/bFkbzys1esI7xsE7lM6nnHUxIvGS
tGMyDclF/Cb5ZyGpxCDkNihIpT7HyBZUKTXdqM94Sj8gX34oIuX0DCRL9EhImvJ2954B2Glm7hUH
isor24h8WnCwIe7sEAjU73+/AroQWhMGiitl8qXBRb2nYIDlKkNiNFApI1LYQZQ4xGPUJhE8AHGf
R+2l6Z4HCQ/UazLB/vOADwHyDtKbPFXSrHV6qKKy9rD/DF9VUrEey3jxijREjRmin9JWpSvu5vfu
OuNSE2OHVGroc9RtL9JpUqqSZVKY4PFBI3cdjRQp7TokL94S7PyMG2vseWoZ+IhvgAyZmE51eGNC
SXfsuQfY81jdmcctHpIi4U8746kiLCC1x/2HbY0EjJH1rwg479rFgCc+hNIh54z2Q2fOD5nJ1ZuK
G4yZx+LbSexewRZYOWXxWWQSd0sO1wXETjNdL5Zjv+5OlSUUvJ22W9qhNUAbeslxtf9Zn2JXZu6E
uOof8a3EiWbFaYJo1SN4aRS/QIChC+v32QqEwx8suY6ooxUxLEIX+lYFnvlkY/NGAdmpcTt7zME+
uGAQf2ftxgsuMxA1Io+fW1XyL9q+Q+qMwCzMkhmIQKlkNp5U77Mhjzj71QDNTYcB0QZvG6FVcqv0
miOq2xq3OaTuMoF4arBAVtcNwXxzJx47sOGYDgHys5NeFwqUNYS0toW6TxV4SHCberhOZcE6wVEl
FUeK02RwiYyqTh4Ha3QsKFMvsbf/IHAsslUlz2FwgjqkJhz5+rXCkDwbwLVB1Q/y4Fl0BHP2x9ht
LwSeb4bKCQE+TkGUn58JSV9NoUnL+oSR4uUVHsk8GcEH52BwTQI5CUwAAWNk7UXW2L6gkUgMCf3h
aYQxw+OF2v6U3F6MNSINgnOZvnuwMUh9RNcw6rZWBoYACMxAXwh8oOc5ljCODMxGEO2Rp/6J+cqO
VLYxoxdNQ3Adjb+SWXWDO4cXh9avT/QtUJzlYu52Eg4mz+gpgvpKytpe+EoMtI4hy7vKSKoPpDk7
UoQ7jL8Dosj1BFk1RhSK5u5/lJopqsFX7W8XqbACcUetH/5wWpE5OgaCXrY9TCiqayFyJzE8oZLy
mzATlMICxuk037bWG1MRN54MwxTIIcgJd5UHRIqIbdaTaZFy9Ss1+DtQ+Wsy97UZcm/tu7R5/+po
TEEwEVJam+pBRM6NjDxyoAo1W2/JT2YhnkXI66IrtGGYaRcIAgCEla3jo4W1izbrA/g90pie0V0w
Yodf+XfPmqOavxSWMscvHzcH7SwxWIcj43TxLaSvHI75x5MwmSb0JfvMA2JqXwSZB0FINCNfQcm3
BsXyEJzHtFJ6Qcj7HeHyOV/Uo8yrFe4u13nPUM3jd/IZsO9dASu5ZwkPo9ukzVKLLtN3/4zlvbjP
sOP5X55P5zULnDrBBrvbptg8gvtocLlYVxuDcJwKZ2S2bEUxIF4FcgsyyobtMh+HAk4KdkcX53fc
b/4qHNOs+D/0cjcF1FRyAksM+kvGkrOEQP8ZjO7Z2KZ6Dbx4B4PwQRRS+Ieyv/bA2ajU5WB2UDci
Z4avCVutEv9rbddIY4lc+xqq43KDZdhozC4Jx3zZNz6htGAzPmJeu5QAP/qryikvfz1X4AIsio2W
BlENjQUEmIF2ss5GbzM8R8ivwVtAzq7UEmyIM789JZdDH4M5FeEbfZWzNkC1ChyTOJ9Ujl/4sLY0
iLia1+8iYaIl3a1iVKGzQr7kUuO/mt2CHd9B41rdm6Vpm6JW/qSOSBfS9U4lYbA2xdqVRcvo3FKy
Acc+uZVuoZHGMQfNl1d0tNbsX80ZtS443BkWvaS686FmCBlRHGFyG3qyc4MSTPsbl1BOM7rVDvux
KKCxDOGroVuySu+lhTKdmVANJ673q+YpZR3qoDmU1Y6sGd1854NvNFQmN7Rks1DinMsx3HWvcbyF
AGHcSDuqUQj3X/8IhD3yuVcOl3fdrV9bU4gP1LuBj+LVJIs0Mo+pBloNm+3i6a0rOBWJRvzxj0da
bxusJWeN/dhueNNpOP5lj+6+HrWEP26PlNOtz9zfR9agQyRn7v+FQr1Nu2cuseoWkwt0jD7MBm8G
vuVwmPXMIFAgZLxLEHV6uZYvzFdd79SfO5frOScHmHHV32amIVqm4V2hV6rrYi4UsBrKVlq0HEpJ
Sx+utp97USUqgeb9muJOAizSYZl47on7qwAVIuv1CeDAa/Wlkpkz89a3l8z64LahBWdQR6vX6rt3
3UTEQyfJpJlFZuaeTokQtl6SVMzLMJoWKKxgIp8T8au75qPZt5Vwa3HmJaJ9TxVzxC3nyiHE0Mtr
4DZWd5cjbdGyiYyDtS6vcQsdBBSDEmIJpebegI6/VthJ+XCv9LxrKlV3zEnckngP7HshTwN2spDZ
3e8jZIzMVCHXIJGGYEMk1hI9TF3KKJ/BtRfeaaxVms7ivPoNqhK+JhdepVhlTc4/IjGy4NHx9du+
XzMA7E4nGjsgQ0wQhqLzy9VjEYzwArUc3ZsDomWZvDPJzmqR1yf3Xuz0630Qn/X4VViS1l/Ck5Pn
9GNEaY6O8rZvUerV5kE8ZR8V7Kwsr5IOf9RkakatCRKD+bPRJB2ICyeQCD1+9qg/UUxecifzRU7P
8rlACwwf/Ux7tg1ioa9B8nVRvkwhQxl9KBE2j9nPjQ+hfHUkaOtnSWV1qp6pz/TmBqKi4zj9MYqY
1GcNQocnzT282KXKjlkH7NygEo20JL2FW7UTmlh3I6meXJAfRQwQPYSiWPARzyn2D8YDGaYGB+Nc
D4b60lMD5eH/Gap02ziv2+hwxPSV00oSqYlL0purUYOkwph5t+oMJ7/47z39pe2d9s7t6paqOEJG
gHIACVDb+DH1qHyvvrdnn0QITcTf1JSTVCgPe0X3HuSOOc+6gnGarEvWhz1aoGV88utIZDK1+CP2
Dh+Kgy/oC3ne+4LgR66n8ulh/sSh4ybo3RPOdUWgT7pe1YElhMG53DEHk+Ocu/WPHVBLSwExgBqS
pJltTcd4HI3c6z275OJQ3palx2HYCVOlthgE4EWNMpLamQPjm2gV+qFq5c8IB/0kBvJoV+mbUKXV
bmNHusDisAPe1Z2+ViIIyqShIpwK0jGOEWCX9rwX3hIy6ghymWFgdqfYTRx3CpyippeSNV+MIFWK
deajP/RBSkyM6TaqlCRwPAaBHp4iWlvaYkYGCvFzmCc4JPNfwPdlzdkg/ikm8h1BTH+aiwj+KTj1
NWB7JTFqnKdmNvm4Pl81dXwkcdH81dUVmGx+oS2U27DMF1VKLjz0zKuSTrtP0sqnGeBXsh4o/7Kc
r5qn4L62Yi3BgVIamgnomaZ7vXNKl2vB5X2ry1A+NlLEYnefa7pZLCi4lQ9qYgqx5vK+OnDhvURP
t1HHeC64Ci3oc2hcHWDN4VO65KSWx8ljOJhlNa35gw4pBbDwaLQBpv2ncoUZny7QiK95CxHigqL5
Np3DMS25qrsT5mQJJhItaLEIf8LO1Uf89eHw6xUzRGYmuzNEdl6n8YoamjQpMtc3/HQ/PXVXN5Yc
c5X4b5wS21ks07NSWhvLcVvcfizEb1Sbp3dL/JBWSp16fCDiqdeJ27XFVVS8oOy44V+o2R9nAzPL
ocF7MJr3yuszSlfWzBJgxm8e0bRtu/h7ysU0vVqt1y/6OfarC4b7Lv7zc8CiFb64yCzNRqgWcB0a
9SBD1nD1kQUP+vxbZi99MYnc00/OnSx4a1HwdbrgyjH1LqXXRxnVax9YxYffU8nUWViBajD1dIDO
khzaQGZSlHaxFFPakmFSeA7hJUxKJbtsP2QRnBcR6sUYDXOzJG9gtk0VR4/uc77Uvk+fLu/2oMUG
50qCi70lS4LmyDo77Lg6oIpzmIXwye8WwD0/jPkfFEFnFa+/CRaQd+LGyzGOv5ZlpDgjOVgha/mi
FC9gyR1sLBmJIMVMXVJSNNFxq9tb46BlxYduqvvac/AiWeTDSCCRvY6heuF+z5mZjxk7vmiMpmey
q2df+nVWoqlW+q28aIZ2Lz/USvzfQyyn3GpKKDE8e4kWf1uvmOVEwy4sJMi/bjMTIoMWwZ826fOT
PgVm+R9ww9BpQczuaeJ0r+RRPIQpDCwD/hSoQnRCUSWj3+Skoa4ME9Pp9EtifWo/H3C0eSgsvyT9
T4ngyBJ3GXR2291mytFKv3NVlaOlZuKvBEldGrzlHn9hBEh3CPfpcZG+qD3nEws2GqSDyVJcgPIz
MQ4yB2qUL9MH6BTZyfSMvr8VPT98LR0YkcQDM4mZHzbwqF7KwJoXCaVyJ5HOscTsi5msKTbDMexH
EvoefUQJZToxX9KUxU7DI58qi+JlCmjLf1lbs+T6ivWg13exRhg8RZ5euErP1+QIkVGVyMD0xdoS
4xof7Z0j3QxtT0r9LkZsoOd1kV1NxspkeETUpzB59/KfyJAogz15CHiRo9OwuNuTnlUhDLM1TL6P
pAHlQDYXN0TicxTd75dqdQhWrIKCkeJBK29kVWLDZpXwUpKsXzxQ7JVD0ERxsYam4Lf9E0CHWZ/+
c6htBCkTDSQBObm5Vs1S+hLMkiUVNoUvfasNiQM73SsZvAV9Tt4Ib0jFEmLY32QF03hp9vR5xc8X
PAuXfOisiesMasGYVFXmjFAu1NdySTl2AsBZa2+o8naEPKCkqnrotj2qCxXR7mim8ZX+BL/BSk7O
9QkTPI/C88iWVTFClP2sI80djY1Fr0khEQA/aX1BvnVRMiI7k3+xFgWn+60eq+l1CfDWwvjYtEU5
LNc+a/XEfEi2Ea/fLG6OPViwHMm6NNl0n31H6E1LZk8Uokjt22/QXpApoRrLK4iDHhoDxXB9oVn5
HHgno+Gz36aekLB8ofa7n4CXVCEL4AzKQVymAXy7OuXBTd2wHwYn72YWxpvvDr9JJPCMmJt2HJH3
VWTxHnGJb8VALn3o49NV5Ehnec3UN0hAr59pGR6I22YcTyZ8BloBdVOduS5bPN4hDaCvJHzEU7p1
ERFLkHjJ/NhtxDHGA0Htc39Yf8hpj33wAbmS1jejxaQR3bbPyrd58bQe4NYldj3Ab6I3wjQQXglx
8VLBpwcrMdotbYUVCFEEa+mAVQhxNa/xY2tBEbC3QQkfsdN4fWDrMoo7yIwjOPsoTKYlifKXUUQb
gpB1BughIQKiU0+0M/FTM9MsFsXt5wFKMH1UTkyMaDrkdH6IW5z66hEo1ABMYQfZUMat8t0GIa9H
ACMF5JsiBqZo3Bwze8mOnzXk8li4CeeXu7cep0KK019LYDPODuai01zBhyvUl2lN3UNMQ6jlNz//
5PrIEggt3JQhFRBZq1G5PhTOnYucb51IGqPqrw9+3bFH8mGb0C0ILxhCoeOoh5qCkugylFpqv9vs
uRo174PZCnsnok61mshGk5EVeRYBFuJEDvyoMWQioax6JqP11t/TVCkRXrcFDXIRtu03qIOG0V94
CWjmIK50W9nsfKyl29NQjHPahqN0AErUqMnB5Wqq6QS1raIREd8jShYPGqliuXyOBIT50RMfxYzu
6WTuqANjbFtXPo98lpf1fgqwXrB/+a4ND/Z3cbISassWZ4q+HTZZwpM2685wWxuUysv6/8oISVLD
onUIow3Ey6POp2N0on2lZPVuiv59CzhjiF6nxa/ZcYul9YXzX4nIDUBwzyToF8oxKTUIKtOXI9p1
8wTSjah4RJL7PxZCrRrgsxeSBqL+1ngPVVH877kfqwrpRJEZylQZfkL0Qex13QzC4GL6fUybkUSt
E45tsRxS2kmj8KrrFkbcfeUQ8DsoDz/dkO5U080SvPMLUAXa5b/Vq3I2JfqALNV0AZn0yzKgb4WE
kYaWSD0CSn8BijSYCnCbZcO+k/5KPRQUz5EjIpFikhfBCU2J7elbSBN+26ZbIp8BWBZNpVOSmxy8
bQf+5n29WAbcXyW1XxunwChpXbHaDzZ9cDcnIPbiNzA+D67R3qpCzG8R7ZpWqE7WWOKtZosqm1os
s+PkVhJ/a2/JTV+gbtxtoq9jRGqYuL0LhIpjCWUsYozHR1kNy2XFl3X/DyL/5POK36nH5R9NaFzX
fHU7vKAUbqytXZRx24RN5QIIQ2oWg54G2HYXXMZhwy+LjIzz8spUYevEalsecFyA8D7gN6OQy4Ur
CG3wpIup6uEF7Iwnb/6wwOtgCspL8uAa1KxSmIzrMNqMN1eovW6TKZ42FY0ZcOLLQwcCPyYdQCeD
F1jh1jOAhge0upU5PS+yOWHBbj2EEK9NXrTi3ZEGxcGppbf7WncPKRHjcuU7zn2PNSS+AV4jJKn/
EOQbZqTWiymHUC9P5Zq5Zoh520/N0AXThfj5Y5TI5hlfjGIX4yiFr1hhYNKXGlQRvGdk/UHzrcnT
6WDQWEIEk9AM553uHeB8M1idPtVxTlkfKu8ZOJu3CmJY0gK/Lb/iGC2AI9ra/z85HMCDpbkNe82m
TYlF1qdHSXGCVNHEgbXjwCGWMo3CnZFmVZe3+2OhiI0brQE2ahMWuSIDVqd7ZYeeVrWANersyqQd
p1uogOAQ/G+90ieOFnAsrsGZ/NsZSsjd2xo+mUUKCP8oMaukOUZQ1ssUGWUYYR+Rt3hKgVrzXCLN
j7rW9cwkvRSTeC11q5ISMXYfzTwqmOvlSQC8hQQ//uvOd8OJvETE6+RKLJc01uQOxs9mV/ULLSOe
Hsd9Rx0KZXospwgOmkp6esRVgV3WIv09QZyh7L4a0Z/FpC2tEsTh+2YuZ01IEt+hB2TnQyE84GlX
/mb8P9MF+hBLhufCUIhR0vKIM2Zom6n1EOmggf8ZP7mPaq/ujGQSojbzM074e7moecivbSs4rTbU
0UK8GzBs58njavmvsGS8yiZnOQda9C6A6k4QaQat6q8awLvhvOERP0tGRQheNL48CnNX3wzGOXLU
3bfqeqoLd+ofAs62CxZLwKgTUbTFa1t/2lbmhsJi/oI/kYIQWfklGP2NIowWl8H06p/onBTRmMQd
Ffxy+V5nwEPV3alUl4ltaNQ0F4QJsI8TDzP20CKOIQVfHZKfn3oIj8V3YtvQq0sz2jXrxzuyBQtT
OZNL9pijdbDGzKSPffuzAnebwfEBRJvwr0aa3xJSaOfMYeNnA99R3sLx5qQaGmPdI+JQPvjLHpOp
l+d7OEzP2nEghL664DXUXYwg74t0rsECWaF9C//JqyjbIVkyJmEI9GJpN01EK/byq0ThmJ4u3tt3
1DXkth/O9XV3zokY18VjSIQtVAnamY/yL7MSjbxSlOb+MULeN9D9DI71OeUdedUj/Px2XVE22juZ
uSZKytx023N/V9nD4/lFjKI9CFi8Xl2VB/XJIKxEIbFBWI/60Ls3fqWWOg5jR4NFnNF+15rPlPi6
tMEk/ZRmvW1/kfA+refbmgF67rddgl0YqrunofoR1eeK7JPGbBOW+Dcl5xEIHtWnRfiRIdV7tsUM
JKCMLQlPKkqpb1WYKGvZFSMMZTo0nNUE4WBKbtgUf41M4/avyneUdUOVUTZyOVv/HV5EMm+glItc
v6AMHh09UTFG0ZoICjCVjwGDn39D5j4vR4HKuJU0GhIgNZwPFU40glo5VCNevtEcU0ZPOLG4fg3k
c2Ts7a0i7HJo7BC1pdDMBcRAm4bVdqiXNbWqJ87/m+wtt0IPcWavUL6JJ7brDj6TN3nmhgqVnbq+
J3cMglZyCPFG8jBIa/42ZnGMx8MAqp/5A7+SxcZR1QltMqprxs2hqRdyX7Ds16944j7UNfT0wQ/b
q4fBI+r247hu19xUhQJKWs1KoHaVqwvfFU0FtmQVR9nRiO8XO6dwhi+M8SW/mJf3SPDqKd4x1wH7
74b3iR6mWhlQLWB579WF3zp1uioxYc+L7n/KOXWtyaFl+Yb481hMsbRudJEMOcgGr1B81xDvTzNn
0P5PRQqHQzZilX/UcQuBi+irQrXa88CJO9B4XHd4pkNUoyVcbaH+7wLdrTQYJdkIPJmagH6iBsM3
/BAg3eUo2C1JvZRL/12B6ppqFgJxCMcFHi2wJ3KPPiORorPKFLLj4mLjwrimGWj6Js/aN4BKUFce
CmSGq/akX9QLvx6A7+duF13V7oQJqEx7qvNCYaOsUT7KGFr09WEYg2XCnJmTmYc1OEXGn7Kf0myO
blpfstXqoxKaGPqYaM+w1onhmwWrbMWhpygmOiK3YW4XT/OXwUNJhAqYYj4bNbl4NaaoWr7lndIo
+mpn4FZfZIZT0ek4hxba2Gpk18wep2h9KO6PG+5NAcFWUQEP6l8MJ1VIZB48rNDraKZlAG0UF3gs
6mSFo/Yh4wDwddEQYRllSG6NqDRQzf9P108zOtUKTUC2iu9KargzE8OyFvYi6phACDl1FXacLeUy
E7XKGaMZ4R/Xj4LhRD5Lf8VPANsGZPIyD9GIAXAhMCY4sQDYxt4LEqQNmmCRMRHA8wtVBvaVwk24
UkLOQlQREOLg1Xh+6Wczq1evYV1YhEjS6BlDKNL1gKhdSopCNAOF3oGTr0+3+Q9DBm2bExNHRViq
pjZNAuk2hnTWykuZLqhVzeEZ/505Q74BfcTV3tcSLAYhoGfcE4nEgV8RCCLgK17U9QH2wp1e2+U3
8y2JLrc9STm3bEJZS5bhZMh+ZrQ0ptlH2cDt1LlHnEdUu3dA1Ox6ly5yGuorMPaQxtIbH89r/+2c
Zv+NVSjkfEkF4QgT3s+lSoOAl6XlYK/MV5K3+zteO7+RzccJo4K1yVhsX5Yo/e1kLqmtwSxI1mcg
UuZUADClKJ3/jmHl38wLp3Yi7HBgMrBZDP4BpbO6NQd0hq0rp+bPU5iHZkq9/zb6uue9BzcY5RdE
2iLrf+y9iUIw4rIaUkeWG7PRPz4/m92NtTRL3gNgFOjl5gDj1gRadjgL/pSwoTPgQEs9xdlGdo+z
hELCBfWL1KveTuhq+V+mMEeyaIj6hk41mh3Ix9/lgy53FpQ5J24ZzV2XK2HFm0gOszKfzb9cqgW9
SmdaoFn0kwkz+rNuOkVYzXlA8FX8q15ZW8L3MCDVauKRoxCzHnysA4waGirUx+QZAHvdBkT7+Dcb
xfwQmB6GF3inAD/lvML+Piwy5XY2k3IKRAooQulYWqgM5+Vs57wS9ZI3KvcTuwY7UfFD+5Egecjn
mp/NIeHVV9lqEDVW96Y3xRqEc0pEbTLiYAKodt+cCAQDVvjj1umIcVtv/I7RV0gNQMGaui0nS7CE
02T2/Ih3Rts29Ddgw/RIKmuE/7LRKKc5O8hjSNMCwTk3N2YFWIkcw6QCo+H79PKXuKP4XyG+/DBx
j14mFOQpbRyMkuXl1rWc0B8KP2ZG1s29a/aQBqJiHTYduJrsvyLoc01DWXMXM6JUAU4IkvgM7g5G
dT+jkLBsdTSIOE0QNw4Qh/AAoWqvrwv9qAi2ivpYWmnxGhPlh/D4Q38Euoc4/zioTEKbKNsOspQu
QCu4RODtMOgZa9+TTd8gLws9fglF/mkjomBd/9j4baYL7wYgrYZ7v5t70C7LV5aam0U5F3mD53qw
KQsbDz1bCl23rEQdI+f23UC6qWy45oCWPZvI11J7H3MfEuZjFtLYebNV/g0wkLPr5/7XbiFAn/bm
DPKtjH3/q/CKlzuncl9o3veM463RDY3eDr4i+K+4tLco8Jq79IE20ItpCHibDF1kQBEyU4aG5ye5
DFVqCQtoA2vNIwoJ8sMnKSeiDTpzYXzEmC9xhs/vehJBQcdEIKfHNT+9d2zjDwL/mEqgDF13hgz0
au5BA8W75yxMCDJ3CL0THXItvstkyTNaukhj56xPqBg5LtnueivYJE1OTFII+1mxL/2KgOPV30pr
QHw8zoJr1EqqnWHlWiOWxkCQcmAiHhlPRkWknEwkuLBKM4Z58X7VS5FJj5zDqa1/Tg47v7iKKqEe
D4atglftp6MxAbXmpLFOZcACj6Mti9+C6YX88U8B9Qa4G9i7yJ2OODfsbq3UK3WX4Xt6OLePZhVA
EHTOw+A/GZVCsh3PVuNsh7d15LWavIhWuGng/dnXNE7aHCC9NL7HuNVaQNPH1jMiv6UWsEzPHAJW
QTGpErSwkmG06+OsIdE3NsNJkVB6je8+JHn7l38lrmjGEkuUwVOJJwBzhopIovVXqE7jEbQbXi1p
/Yvogl0kVWfT896wvJ25REL4/EpIMizDQMQ8qjJdIazFf7buqJ4GIfnKHow3VUOVTlobODkQrqTS
OkhNEQdTeUamLkV51PLShB29/pWb5jchFeg+68XvxE0XLrgV/9vvTIH7PRhA+lE43L4p7YILDLOc
3DEZOoKiw8dttwbDyw9NUOQc4BMUG0wDF2UJbCptCcpgMLhq84MpREEQeZ3GxGe4okYzSIKfUFl/
Xlq4Myn+FAdoqdn1+SGu+31iZUZoWNbEAMD/HtNixCszFJgUTctH3l24EHoBTVJQuBVzbGlUlU1w
cqujNN6nSqcW+0qCy1qoumAJw5Wr8nDk0HJrOUXRPYupJ3Z9RU8bEQIWx1KTl0Egjfkkkt/yLJQq
DFdfgWg8xRnOD9VOGduZZKpZcvdDOGh9QraythbXZjnl0US2TvsBGhMywLo1S3JttYnoXYJY2TXD
q9I+0zektCJCmLNEVhddN+rdTHpfmzS6Z9AaSNyOdKshyoGpQdH/7v4aOipdZILHNw/ihTNNFo1l
TwYW78fuWM8dY+ojZfpx4+k5nzmlol8BbD2g6QLd389DpQ+RVA9x9RcafcWIgDCdsH3Kyzh9OkCa
b2FdaWv/t2xD697mu/JGWRhOmdSXLuAsijwdZJ+teaw3SaqJ6BbuEJz5tQOI4GABUb6AuugT4jnq
45NlmTj0zyYosABAEYAvZMns6tXxm97gO2NBLldcb42sFVUmdWTLX76gOTveUvr7B6Mqw8HW0Z9m
Nvb1jVU1AN+5rOR76gjLEbefWfqRQMzpey/iuhbUPIz6dOhMWDZWRqUrgXcu+PU1R6ppEQfCYxlr
xyxD/wX8WrARJHq2wd9pF410qyq/clYNJgQx2ATmmSFJIeUsE1M21bSoYdxBcM7VGj5cIqFjQu8d
/RarqL+SThOuychGfvm5Kl3sEiHeocDEW0+ipy20Sz20it0ufNGtwAclk+R5oDog7HASE/mtQFGZ
LUcEk7bBn0ZEfUci4vvWvYgvLEik090fbf1YVoXM8wCIBElTnlRNn+lyolODWQ1SSvHtCBcCkyAf
DbLhRLiDGBKCVY0P+NaWE8yWct1ulnFCvnR25CaxSt1BeMKgovYV8VlSgH/Mtug5xkhQtAguArTt
axujzEed0R04+Xx4djtldkl18tG0TchSGUrYAu8QJ5hB2wHIO5lpAfrDplTFtTBuwHlRgOZ1PzyB
7WKNb85Ij3zeJqPSpm8CIAXfKmujzW8tuZ5zkiRp/pTbZqUjcYJYoWr8oawi/3LRPhboCHB2kea9
fbIB3G0j4TveytzMa3gJypaZcLiHvNjlzS0cmkcyBdKyLh4ERs9LM0LBBnsgXwuDPvKPt4bjo8sN
vyZQndwoUqKtmGpl3p4Aac7lOoOHI0v6Mlwy3KfrNZoxtkru99TYAQOO/z6Uy96oFwFW0mxxtE/5
ZQ2pQ0qXcHb9PHXlcscUkHelj7Y178QYRxMZQmlZBaewBL5+5CmN3meLF5Ll5jpukaiQgWnk8cN2
VKPnb3qwPlToCvq9dNjEPTQCeHWStJrCRhzofwTGdwUEjtK86xYIhno2dWJu+QxPhFUDUtiMXguJ
PaCeOTNEG8oKik/PSevH6+tkG0pE4AVQAeFLYkPY2izEZgTf3hxqw9HPexnBIIblR6f7lUUB2jJp
LmYENm2dISzCXHk8eeWSpEbGSDWZPpUBfuivWMQqfnQSyxgi/53MnwqfDbv+IlZ01zo4X0j4P27I
Ncbyodnp+lwl+34DcHIBmveLnz+CV6gDb7oFYm9Pl9uc4RckNDcuPfpmAXUt5aFuNEgL7MlJeu6b
+Qg8d5GoHWlo7X8plWrQ6E5DITdnLcfPLkJAAWIEFFkXNkG3aAFejY2FSkTWawoKwDGq3pWx1TmY
SYmmYYD8oSbMimdckPyStZdVekLiE0alYDEfzi8Q4Jx9nIc0HylCf01Eaqinsh4U3nm3fI0w2Sct
l+lvkQKfdxik7tW+JR4LhsI3yemIh/4a2ewsGBT51S/0N4FPuEDLnpK3htzt8vx+NGb3VKkSaWmh
AYEhRBYIJx4xB2YrWp9/BuxewIlPk9icZt17/HGTXGSY+zAooN+TsCWPLIKN3Pxy2LR6uJ3/ZGMH
AMWsKLPET3wBey/6YR7OFa0DOSQXpVabP+zDCeyTqHQOKkPhGMlWUnB0OqgVxTld5nyERX5Tq9bv
+Hn/kkOvmY3PS8lbqAEvLwEYid4GLNKLjMpFSpzpv4a8QYb8ZO2DmG4kF841IC5cP4tMRZgX3Uyh
PxvequiV3NdEZ2erCdjudPtpxw7O1NRmObUi4u+FWjJiH19YafeUQqjLenYPzTU5BTjLpSlUq+3C
nPDSkh/FJ3s6iAWU5KO3Z4hZMWfp9KWwwlTnBZtcZHLOhsO/2R71tAUGKweNQtk7oJJw0g6LIR6C
sy9Gl4/bSeu5WJRqo2Lg4Il1vcrN1HO2saQLOIdfMjAB7CqWCb/jbkrRsHS5WxW8lqAd//y0AWEx
Y6RzdgbJ7Z0bnu3dQCzSlpiTU3SKI1uWbSIGxG417xtT7khP1mwyEg8ByVn9Q/UAUmqp+gmApxQJ
H5oOPBGUd7GgoENF2Be43wYWS1fyFuEHKmFEr3/29xzrtw0casgEvgeBZiReGC0vVsQCUZGeM1Q+
/5Thb7MG1i8G+UGt4XhnkIJCXXjD4Kn1q6e43o7kflkM5qAB5jvV/VkQQF97Txj5QpJz8rAX2FlG
fH3lN1mJU0odUd/dk0jx8jDOmvsEbOOON4xVXfML+ou8rPmq3BJeocXbOJIjrxJDy8GDLkeFv+4L
a3KykQl06+8urJP0/TOWIuyjeVYJ4iZcK7brgxs2xS2vMHdQp1iX3QUgZ8eF8We0yHUJtVob3Bnk
tNCZCqTbAWYEZk2tg203hxel65hlqI0X1xvjiuUzl0IfBnhdxqO4DQ/kJCgpzMDnaY9a0HQPC7G7
8MB13vYUZrNS1J68afUGuqStwAPNTZ3Fz+ar1fg8sotP14v1uUVTnGxjU7nGUAv9JC2CRRI8XKzO
3S3rQbjykl5vFaVa+IlvHi65BAX2J6Pyx6A94PYIViSFGmQyYKLk3a1jaXoaVE1wHQ7S4w6Xw8/F
v3MKFdwromnrSSFdezAf7A7T9Am8mwrdSarlRy/NCynwyy70DId5DtmlzxldFWBalqDJMXTYFE4N
M38bxLAX0Sulg6Vn16UQXql9yLvnvFxWPkRJ3yO+EBLq1ou4J5Uxfdxxv+RO61HsgLVyDPJ9pitE
QT5m1BZsCyv0o0LhKx+phlGXtCfpRj4spsY8XTi8+t/nPfXH9BFXdqLDRFyfgcIHwaNtaDoqvRk8
FzfJhSGxvN+KRNF26xSaDOJjvkvA6nkcN/bMjAGt2z4gmHfLnhDpV//on/1Gzo916TdnEfcye5P9
d6THJYElYzzSMBBGkGY3p+jZMsKkZiLxWh7mtYubzW+IOnUS5DNl1uGeb/unxvfwsAV9FN1wQ3Eb
S/FRs147YjgZ7bhBFBLxvZE9WB+/aVaXv/ldmU1IdKcpFpTO3XtFVNjYvXNLIgD2UviCGTGiq5+a
lY1l/++msp9x/o/Fzux4HpMeJPyJ3LcAH7szPz3J7Geg/+w1hLy294SLdgbMiHB1c9e+YFQfMTsj
UgD/UPLhzjB+bEmO4y9X/5HcXcxIsc+zEbYz9e6KTn+DV6gEQDV+rUA1sXP6s6tO7s34J6Ts+6ka
veq60dRqkto1gBYNSQB6exYyHjFgBwd9mMAEoqXm4qA+v3/WTkca/HDRu7edJGSWtnScNIU81Dfa
4zWSXFi+4ZwHa8E0egkScdqBeq4uivEO2U7ZIknyjXsWflaibxo/mw4MSe+uxxprtmlbbJWSLLJt
vz/ApTYMprLrzvnPldkohQ9I465BXe482XN2pOPR3GaV0QQ6LNHIYuLDkB9FV6lXpOOvRegLeAAv
YTpcRkF80DkCYvF0tu2PUHrJQnWwsut+3jb5oTO6yBcvAboqVEin4DfkLx8P+V1oOER50919v/VO
FL4w2qQ5xlLIf7Vz6FPksB340K2o6M1gTjbpIRZutc/33O/G8+jOwQ5gbENcy+PTrI2X0//h+Cp4
SOSSSaPeKDFfUFmxbOipEgOr6SHgccONJhgrAldboiFKIthuQZE77lumKbfDHvFrk4FcFZjNUs5y
S2jEUMeLRo0Jj3hVte9EQkmJMDF7FJ/t2K1RP0nI6eeJ1BpdnN0CoEuFDVNXT/ETh0Ny71LLJ2pB
96p7egQ1RWlPl6a/gJDhFPOLdp6emCZ0t/FSerWxcoMktzlZO1RRUh0rKHuLJpGFDkLDkt+S18Oo
qsIVtYaTj6HWWk5u6dYLrXWc5XIdnqpNdOAgoJTRPQ96f4IPrdE92PZ+OmKzSrLcOgCfwyue606U
hLuGWhSFwiqqg5R/yY0o6eZZXb/klU07ClrDF8taK343MJctVC7FIL9M/0aDzLx7ku2eqhJplTtF
5Du53pOnH4nbFaVtHu655VG/mC+6p070N8l9iuerFKyJ1gJcLZye1ryQvpPuEcZn020zajGZAEa5
ZxjM/GF1ntU8hkH3Upm/QlpHULyuD3ipZrD490UFPwBfoXnzGnq4ipkxH51QXXSoQSzKlChSHEjJ
pizR0BahjCXVfCNZUJwMlzJTuF7+0KL15AQTZwEf+3eOBJUKU8MzsOOb/02QwVR6fPerWtfdi8Fk
pCRxE6KTe6DQgnEdaBaQCkzieYchGQEaavwOJVQbPTtiGOa1x9d+zntjZ487YObwgTKWkny5k9sl
7+//EHinfuTJVVR/GkrkrGfO+LdJbPW7PJQ0dRDI4F4zA7tcbpHfxtAZaM1uFg0u2FKG3ojx6nNY
eqn1G7rq1iwNVIqehzPd/AphhhkraL30gWx61LHUz4uuD5xL8rB6eSDnmxzoqEewJzVssvGOeM+f
qvyT8r2MEx8stEtv3L2lMyGENbVGm/goddpZtL6NURvFASC/J3e3BVHOmFAUSduDweqxI7Ws4Ip9
cuG6lXHJCK4BOUj4SjgbaVsARjI+Mvsrnhobg6xvIPB9KpS5405ILitIj80Ip/38yfg9VNUJRxbt
rmz6I2m/UtMIS3epZI6DtvgjLKdtw/TdV0uSOiqY1GQurpmsgpCMT8/P/wJE6NSHSqMJHgyt7ctc
FcOooY8JrSolqYydgbAuV1pG2lLRabC4k1FshGfJpQ8mglt9n+obByLsm3ksjHV7IHUfh5uKZD+F
PBPnJsUCwzoAsBEix56nXxqn/LyBscj0quYd8sYmbKj+/WLNKNKABwQvKKkXDoh/cuRcT0Ze9HkP
Z9JAYkYQOBSug6QFoqwb7xmealDgGZ0VMjmwUSNeHJ8jvCqPJYyMkbwRr2yhaD6P3U+AoJYC+PhD
aDWlzsMz68P1IkcNIUyI1di+odl8YLn6PmbtrAnfQ9eqcc89WSseF91w/fRh4Ot8dZREaRgFAgRW
njIn3mqzp5SmKazVErbJc7PesPpFqN8aSExpGZkvfSHkApm3yBXanaqYuInaKgx0Tq5dDIgwLgHW
9kGYNr9lBbqaHmycNHqgOXA/h+dXW3l1pmfIJIVGpY8RLKHUp++g+sztbMyxaV/7ki4Ma8f41wGi
CQbVhnpGyr8isMdVZL8Qd6Iz8pcNsa36W4MWzJLwEbvkwAJ8DzopoaurmFBMm9Bz0LkhFJfT9REm
QaCtwZszvwBa5/LF4mX62FVubZkP3i4wwUC5V75qzsM+lUJddteMLCc1W5ecvQnh4MpKgKWVVNMd
BzU6kU9fgGF3vcbaPmUp1GKipbSZEpjaKAR/fuP/dkod9MpciETdoS1Mhpf7mjv/bbbuvYnMG9AM
7gIWNPrbZVVXlk1coptBgz5jmr584TfYPaU3vKBqwO1jO61p6f53ZbI3EJOAczS1P3+LwpOrdaEr
I05u2IXwN692ZBTTOf1XS5hAk55fCwym+amDcFN/r+lw2BYrSZitOQMjQS3sYiHeybjZ8ysFQHAL
DwyJRgmy6Cdkhhm2FpHrYQysO5s67hnNdPQcIRshT9Pgrlg3e3AZWcMr16EvZeS81hA9N66Zy9fm
HRaJ822fYx5iNkkCUW66XGMO0PGCpTozym5jmtrqdMwUo05ysI20Z3uH70szanNiowYqOo/3XgWY
ib6UHHW7weTnEKNHku6dz1Jd+075soSZHO98p7ljaRiS0sHOWyyQKXCL9iLo8y8jMen/TZA1Hxqc
n3HJXsg7qDpC9uOBrXHwOIaEHpIDSQLL/qOoJL2031SHqa0UF243bbOg8VcUXlUBT/nL3B/ZnPSy
vXSJtBR2ET2hFl+X8dJPcjtB6Xk1AVnDWm1SeujBBhN4JBPCpQ3ksHjqmXerxyuQZG/t0yTErfXC
1Hb2ct0HNAAQnJrzL7+uHhgs1b1mGjErLuXMycMdPv5tg9Xkl8PVHRLgu8A6n+gNRmSLjKKg50B/
ctlNGdroDWKHOpeK4ZCUTwJfRAKyyJO/bQb4AD1DP2pVdsYzxbopDnpURXhba616SnKodoOf9p65
fNpT0sfI6mFCjCQdR8KDgaCeWs+dI9A7r6qas9E410L3OzU4CIq5h2XRbaUgCjUeoO+QRk7AY9Y0
OjNNE0v+0xYsUzDPelE9IAWhF32Ev5h+Fq2encD2d0CVHjCxuU+wfiMcTVqNev8wRlcuAfj8XzZ8
+2Q0I+wZBWTwOwxF3kOyzdppfjRTfb8G1Os8OEX1L6LuNml8IdGAQBoGslhsihKhqrIYisGY3brn
ygIdbLC0ThumJ98Gs1y2fx6lqF3gIg8c8IT833K/GwfulWrfBEk9i+hpo4ELTpRL0R01HartrAo6
NLfRyIrwFOJUqR5pvY4IaJHxkZwoLuXAncChfvaqsR/j02ePaID7EWNhLB292bvkrCquJ6ApJc3W
2wb0nhaZlNCk/Jtp1TsOatYiWQkchB8Q8nWJJGj44cwVNvT0U9bqyZ9z9htVkiDvXIZ7MYQgQUTu
ZepTbHouZyxW7M2NU5Y9tU4Kkd5fG/GUV6nqqu3OgV8dY9asuDtWZJQZvUXOfuyAt6rfGg+QAM1y
BS6D3nEilxbf5gYYSyzB1MWNRABdpMVXxkIxrSWqWXpfuCTcwcyWuTgFa865iXLGMUiQwCjLIULM
F/AkAfCy9sQzhHYWMYAmdTjo8WlI6UZN2m9NNygf/X2k/0kflLQCLX1nl9+wZRlBok0xRFsaLL+R
/UHdj2ieLLbxfriY0P69ZqSIqdSgyu61yIGX8vyKM50bIJZNVpAmjqCgh79yM/Ps6XzwCTN//wQZ
WbOc0XvpN61uGDuPZ/Xb6Ic9hb3bI4mF9S8k0UZlTho924Fmkccwi+AxNQI03FPFBQUULqqUVjCl
8LRNNqLXnB3jQdG+mSIMAEKqjSbdQbHo+NB5LICWOJbCnlXmPZ422j3Sw8uzv29Lz5DzE8P3b+6s
SKXNaIXD5NYUXzkXXkHiu0+ogTuJce6BSCdBPDUx5s8Lm3HDcpBfQEdpXDK+oVytpHajishwYZV7
sGgHml0z10D+58GY3jD8E8jVMB9pdgBjnKDvfHVwWJyxWmu7YR9F4T55ePKy6pBi5Q4qSnyhLlbp
8RYGR32xSSoDv1rqLlcpqBrwQlc8t2hweRs6fVi+9EM7vombUVongozjpoAiPmqczJgDb+XtJHgS
Bj48wsgxn9oag0X+VZ7fjdot34B7QPgOhCOsYpbDJcpqYOhvLp/91GMNHR/bewIy8LD/cptTqSPi
WzQWOiGOs1ORq0Rj1663/pSpyBDfmYXiDM9xt7to1amlJTDfX9hVVZ6xB3xqWDd5ul34pyvzSSCg
yzQZaUycdS9UBFT8qP8eJdOgt/jv6/Rwph0plQD1BqOLmIp01JxDvo3yMgCz7oWQTQDUrRHTWBVN
IJHp8qhKE7/RCvTOxmbQa1ALeerIthreGI0X2I3mqynTbbEd3cGIEuc6kd2PhA7A7MJYv9FRVre+
y/XNU4159ci2aoSQwopIk0D0EhCMG6r5BAZ8F69soBFrt/iRV1O4Fz/HXqHYVu6Vdtw0gK1plGXM
chN0jlsYNIqjuZJM38ZPZTkaI7kREzRaWGd2dtyP8kGyBhI6K22gfYZwIPCDLrGEdmw0+ONxGmQw
UGaUIvpzvI9hdvSowwahoZB2Xx+IXl4b7R9myx6sXujGp4zFNLgBo8ccic2A6vsW4QefPKQK1m2z
iqxmmj1OhxH3VJrxYsvsbJBNJkdo299EwadxEDkdmyH4txCSg6J9Si5MuoQnVWESzZEFlTYUGQZx
Bj07xXnCQ4eTo4Qu+XHGckWZx7LKTo85H1prfllsWiO2BFccGlnZvI9OjIC+9tntkhDSmsVnhq5A
9NvxzVnZy1Uo/fHAtQQpZ95mJz3smnPsms3HMhKlnco3H4Tnpf43uivYcNOq6ytiR4qBOKp7/ZTd
v9AHE8T8xCMfwhdoaF1Y5+NWgQ0u3qjU0bvdIOG7Bi8p6rQ9cQY37+KtDNbqFVx9t6n+5q4IPkJd
lSTdNv1Z/o5KzjZhIZFp60LfZ1lFuIQkljglGJjnJD4kUHj9gmHlcLvPzIvn66wcoF78La1DUbCj
gHdklkHS50w2wU4Msvgm4aff4sZ1lyGKeq5ZmfgCFzbckF6hSIpnaIXZUeyIemZ7MwevxgQ/haxd
lzuOlbC3aCXwzO9hw01fbSv6/Azqn8SEkFW6l+0mhgqrGxnzILs4UDNb/ISC3VH2nCfuiZMBHSO8
tWVjgrI5Jb9+SFt1f8MwYBstUJhWZUW0cAUOGQC3pHHO5dgDvDpfRbMxPT6PanUmJ/j206UNBqv/
33M/ysKLb1gNdzBXluHykJ+IgYGmbgnEFXUiXhaODsPTNspcCdSAyp88ykeikHE3VB7m0cvlWgLa
+9mLNa1EFWphpDqTFT3Fc4cWhrFjzqTqSXDxbzCMD4zW9u5CI0XSwCgtYtTyCe2iacLo2vxJXJcY
bCDyQecCTqHsuO8J45GUmEiU13YogKzCS+5XEBGnWZ4qP1FqWdlrrkX4iUMoq/yq6E0Y2nMAHjfV
zBFfzx1+di59OXmHEzGDKdRFpibAFrkOrwRyZl63/kzWoZfpHjWiqiw1IGneTxv5/quWXsSN8kOY
P942ETz5LVvaDUUWph8MuMWdz2D2GBE8tj69XKB9CbeUps5lDaiXrfp3fA1F50k0KUwES879Tpfi
d4ZxFGl8SskggoRvzz1u12eVnidiFqSDhw3UjKwOIkL1O0JuiFgHS2I1SLWJXAi6hG4RO01hrCq3
+AlK5SBIoz0CxKlH3Awvdg/qLPLZKXw6I4sxiMv18LuOduElZSKDU27rtvJDA85IpUomeBUdA3Bt
YMVL20xH5g+tAx25MwN6zCTDgN6scRjzIyHMJ0RFsPf8ZDLVlcI5hrDbXUtYyyY9QgklGhf8IKgi
yg8j8pHHDR3+wv9AkU80BktZMkRzzPN6/nMFjuCaezvhNcllQXwj0U51gLfT+YZaPbZVlG86RWtb
1xqUPLk/TKN9HrRg1cWRa1FrfiEklktbEM9N8Tt6NF+sR2U7DEIqtlSacyiGNP2AzTuy3XhbxfHu
BGPsCVotazRpvlVmBjOHOMbFSgA+/UZRvR8z762pLx4d5kx2rIDPq6B73eKg3Jt/lNMi1VT167oO
r2Hw9to65RmJzzLnsofd/ZuEvpcf5yymgdqv0ShVMc3o9T0FNJrwyHZ93TLIBj1p1DHCoXCDG5KC
Y+hfJbrvlyF3GDKuzRdxv3IpAAkJL1iSjOe6B9Nmt9keWAZIH0bQGGQmHCvSYoqcOuexhJifNtxX
Tzfs6Vwe3coTN4sIn5JY6s69qgT04IwijbPSERfFnIVwCc5ypsy8r+PpNwzAOH0Euj59dsQOkd8b
hj9rY/d1Eb6xTEGQ71Hh2jV9QH3nOH+Kmk81j88oxYedTVQxwtAxaw8S4UI/SqEoHWrAzbmHgUn/
udEohywiIRqlhod2vT2cvviwgZ3NlEA8RUYbUbV1fqT932EEMNvhe5dWO0XTyT69SyGbAyEuK1X7
8Lsf0M8jZv05Z2UHYOVrJA4Yjpg6RKauEzC/XBw60pjxCyeE9XrT4sNbJ772BS8DmgxlgFCXFTa0
ohTV2PZKDknQFFPi03i5GiVUIGkSTLK2Bt5c9t+3QHQCC2Bju5JIHOUB4NdJKWDPCS/Qc61hU7CW
ITdfY7MBpZqwKmP29JIZLEtC4yAA+cPlx4P6TlwsBt3QKjfM899aynzQSL7NB2AXKUozvmF0jqMq
ZTG52i6ktL9vmtjuU3z/y36AAGf4ObE7r+tGF1Yg0gE0XPKv1AEN+BKCQBjTpJeKdV6E7pWXEWbw
fSnaJlDUyRoTfosL0wLvO677B06E8EC4qpAyh7gpjJQKRTbudLar+IW4XaEFtVLbjFCy2Hmk3fnm
8dJjMRY4epjXgImTUOGSKX0EswCGmTMRMblssxeuAm+uUT8iXLv+QeZzVGbW+awpIa8PRd6ZvvHs
QOBh7WB4w0gyyZu4HCFpR+REAanBT+8jkckXAywXitGVTZdxxM8FA519tF0eI/jaY2sfOy7yQTjc
+/OOMBngtqoXt8jdI04YYYjKprWMIpMNL5mLYVUYixDgpA4QoqGivge7y8GdtoOvfELcDvy16LUM
GkaUsCMziDfZVTJL6NWS1t5g7dmtzq7pRB3QDo+P8nEOvrS6j/wktrmbcsbaa563/kwmNYoSXT4X
oG8u6yXX5i0JHEwnmmVMARJiTV880gdZq04Eomq4zpLid48y21rkHHjNaLdUVy2pJNEec4gxsdyu
3RFl8oGNih69nNa448TY/ABATbzInrJTA7CXlIpc2WrbpAMeIUELuP2ve7xT/qjuwDoB0LtSj5sd
TT0FR1S1C7qnmB2V1nKnlNLaZ6lkE+TlrCLRLbGsNr/MXVnDIpEUpjW73Axx3qTxXGyJR9N6v7Cl
EhXtFqMzsqILXhDNzgXRQf2jr+Rhlf0wuT1c0Ch/uHQfuR+JgPsKN2OVbzJHb9x4alWGLd6o/t7M
9NWAh5lYnQpTnj1+v27RkeS0eB8jpMZDXWQHYYE4tGTyGCZsZ1slls2MRriQpjXq4b/W/aAv51eg
qWgq4K2xDjPtPAPzNWbBD7cRAZkviCrbzjN17nGWhZfTheLlTlNHs/t4sv2zI61HRqVNis1f1dEU
EIklkEh599Sk4Nz+Cr5gVQwXQjiOKfOdkCXlxgD9Z58CouBdifr2Cz93LUARKI0K4O0G0X3xwZbj
iXo8ZdYS+8IAtGcxJH510lv6n4M/nN8lNtpdtm20h1FPRR696JOOsjhbk0N30Mj10QPBc+V4kkzk
2w/9p2d2rUsd7x7GVIN8rRNvkzSHJAZrix8TWWDchk00TehxYN+YuHhWFskILy3uo9VOLj08ZWo3
4suDMasst5fEGRdBZ3z4bE5Zxk2SPL65SWAxDVOGD14RJbrButnFdPnu+hcpD41AjoHiRf0iKnFy
VbZAlgthb6tQQXnr021q5RRVB122OWFzolCzoyRRnWMm5yGoWIDS/b/OL68i/37Svzyl/9KvgILs
1PkPnkXxXkAONdqyCue8wdVdUsD2cB6Iw9lXr2sWaY3Tan/M95wy0N+g4eMFFALecttLFc1ScJ15
bm+Og9ifTIxaAjYFbulmTQux9YgGGf8NwKpRAblXb6Xu3KDLOXIGw49592KSpGPj8UWhM5mO337E
cAOMSlqJWcJMRtgv8eO8x/Ybndkpz1IiWKe2eFxBqPLvGbwStXDmB86eeZL4/7nz+01JFjnWRVFY
7WmS6EIoSibqmBFz5cCecQLgM0t8RKzg9WqGUSToy9lCsGdLSiQT4Ou/oK43mscsIdmgtaTvLDjc
MGFQAPH2K3FzoAJa+1pM+r1J+rjEbdHdMAZQzXB4zDoMnDms8Wk0AFptCjmIE3mPP/yUHEsw2jmZ
SE0TOQ2VXS5JfcTTx3MZzSKpSDe4u8WVvPC2RMxpxCsZlmlWFie1vpSXnwJ9IiDjzgrbCZF5yhyZ
rY/XXxBgSPEJl+iEIFaKvP0lOtPXGJt+VMa/or2y5n7j9l84kFmY7IODbFgUEpu6TOkTzR01lu1S
fo5mBsFu7zOv81m8Hd8KxtOmYKBaHXUtCzk3bRyuC3+GiCvHglFSj1boqJzcFrjT+8UL5ralCIDj
8jq+cqWDy++iSqoNf514BtO/xXPk0ugEHX7wN+jXxcBPrOKXMVDWpjhthbFI7RKtvNnxecMLFO28
bc2TV7Tbm98QzOZPZbMbSO06aMLnP9npted822uccHpwu4YynnlCVTQ2ySSob9TNzX+E+lqB51ft
voC5J3jML9WGCZ3hjaya5Ma0oDACMBJyly1HwWOYNNotGGCO7q//7kxTa9tAwqRxWXXh3HjEBhXE
HcZjqh9gcEL8xMp2Eb+ngTuRClZdVMVH2B5af3Gn4JEAzNpEbZQBJurXv7si3pImXXz/hdxsK63b
YilC0QGMUTqbE3BteOA7hoMX627UKnSub6kuEvS35iy0XNOWye3VHsgK/HzeYP4pclWi6KTWgTfN
6Pnl3E9HU0PBa9zbXIg4bKMBxWY4rspUWqR2/WYEig3/Gckt4Eu2hl2zP1pJa0I7mnoxZqpvnxkQ
rdQbrHKRloNW15R1gpG0fG0aWBhGlK//M3O9e3PhfA/5dD4OyQ0pPpyKJvoiaAERaQySZre9j6OG
JsSlBUYfQw1L3z9GuL3b59kkvvPoAbliQjeOVv1H35k1jUa9NEWMjomxkBthPob/gIpVbamCbCiI
rF/3BNjxkgqotyueD2y4ZXTfSwxIuAUVdUXsAYzFDUaX1kWQCK9ZY+XLxtU+W4lstZIcVUsiRlJY
GURKERpSVCQJpu9OlqVvmRKVysPOkCaN8oKgBu4Jr23bxxwPrnr8Plq9dRUuopTbiSBtO7+KRsAP
av+d8u0lQrph4tDkAUI+7Q7zHFqO46oCq5yhoZ2LnYpUJGX2JZ2sNqQZYbDNSPjZzl/WmKZj1Ci6
j7OTKAC5zk6n2xoXlndVjhedwdeK18TnQ5Q2pkSLP/qp+6sd0gcMirlXl2BO07wKUIWs94GUkm1U
MIlCpGYeevuSxVxDwwk6wJhPsR9umGbF4IrLgK4XxxEXl6or6YIMxbQm/knCGHsE5lVFI2hMDh+w
YMnJji238TTBs5l34IxIQRPQ0QykFtzO4/AvkgA+WutfqrzMSPS0qDNByIZ1zUHOBfUGXbn3wD+y
p1W2K33nPbAElXRxQfR0WWisPcc6/Eh7qe6nq2SS45+pVP+2JxrBUk1QxJwyabOYJY/6EzmlLWUb
JKJj7kejNqLRSvgEu70Gvil52vgSb4hbbb+oSk/GADp1J2wZjSRLU37p5c9iIYf/nJKhDsBvH0zQ
/o/TcvY1jNhaKcakofSJKt0ZphmLM4K+NLbZNcdLBmsBkW+3TCThuuOg4Mo0gOoJKoCfFZqslUhD
pDUDozu4UY2wl1JRUcCpqq/D+KOqO0JvqKzk6AfsHWVSQNz1dQsIMsvuu+jNPeMCO3YlgIUogZSU
BM8MxHZ2sYBpdyJcvj0HRl2rKZhwH7m4gVO2qGT8Ilr1ZV55muAuCHd8VtEv0O4xgu3ZwLCHnqeh
/dhzYl749tQaC43C+cNjoSGXOoLLdBLDYFoWfzgFt8bMBLBycs6o2+SJPYtv5zr9dbO9+ilSEuaT
TjBfWmqSdSUwrvwRrpCwErfV2x3uVCA4rzQaq7RJcLgdIVMSMp8QlGdTSaLvXMyuAgtE8VlOMi4u
P8qAX0VE7gY4ru0UdypOHeSDK4xCY+hslTlq11boiJfX3liBn6YiW/E1b92At1Rq/BX4ly/MMMBP
37T6ySf6zXIYonk1wnijGMD8bIt4tx7oFXnHFOjcJ5I44RIYweG+xWqj72U1lfMmy0o4d7+LjrC4
xej3t5Gv5c6maKQhgiCyKTx+UV1ZC2piv8wapycF1Kpw/+JOM6pHxPY/fx3f4mqMXYljs+HGPRDC
COzfMdCaLar7tYd0GJidWRKze/ikNh+bAXHgURuCw7iRj+JLVHuOqFHhxjHeMn7DhO+VjVFlhLIm
nMjYMO5v3jz2Hu1mcOOgOis+qDbnD+EoT2ZHEiX8DukyCx+P5CXI+6i1icei9X/iGswBCFdpCRXC
7mbwGh20cRwBWqcS6GC1p55lYBoaej2yLIA3IryzNJfvSg6BkpbaqOy1zLgEI/zv+p3d/M41djO0
81U9c0NIEcoOwlIJsdHxrFZuse0qgjVp5u0QHwkdFS6fmPtzpJxwiRjiS0WPbaJuiavfxyI8Zael
Wquz6ExMZKLIib5lAZwAxd/l9U8mnqGDyvF3ooGLX28GGN2ufkHGjycJbAE6hnrXcFroujQseGx5
Yu7xsy63U1ViBkM7J3iEy7VvEMRkBMICukC9vHAsdPdPiR/cNLb98QjN9sxb/fbCjFWUhzZSiVEO
oO5dAdHMU5rshpIOXuRxeLG+lhAQpOCSbK5sR3gHuBemoPaxTyg1clVSRlrKowu3k3i8zeXjNTFp
vmSbJQQvHOmyqky7cvLI0RaVK2hPh3XXEmc2/V7hWXlFE1LlNyvi5sVY31/OxWTmNUh0OG+KA+52
aHG6y6wnyYR/YFLvjfFIk8IlM0Rtjdmir++GZAzLp6TTggMGPF48rnETvITYpgvy/e7lj+bd3Xg8
c2BnHZ1aFLY7RB9aUil/hS2m6zqSFvHHaVDqcJr0yPsibA8M7afsHCuJ6zI4cbCY0wwNoNFDc9ne
Cmn6MhptkiGze6mDZ09U19edGKQXQ+PSKGkoViaHGGxOUKLHXesihChXzC6HQG0y1rXkY5nWpgRc
iX+1qeQPzOkzbE+WEtXXMKe1nI4kEHYCA0NqHKtc22+RTxWZ45E3ggwRzqrQcPV2eIaHh2FTBfcy
ogeWMq4Sz9mLVDl2YIBu9IqcyGfdVcnJPqT65wx4sk8bWy5LU/YHNTsuOcaTcmMuihVSFZ/3a1Nx
x8/S7Xw/9+guVAjtSqPZiI9BRbwztL5ZD2UHKiUTMjKkLt7lQdnLi8SJhQLJ5KwEcbHayl3C9VvO
K+11sTRdA8zFZOnzGpBSbC2iq3yY2Ey2nlXuA88kJblGuho2KOviXZQ8zCg6FPDMuUXubCBySWlJ
zDlJJEizzdihgJHhoTzPTlZKNP+2FIW6DWSiSNQD/7fYTpDdp5MWpPNqs1giKPDv+FQyldZEOHAh
M1djqJa7cI/nnD+Eujp66ANgX9EH3x0nutW9TY1vLBeYOdah8Y/qn2iPh6wW/8gfTQPookIEOCJo
d2MkINRLGG73j6U95E3ONGW/42WGJ93MCPNAsEra0NLh+Z0/js8BcPDlPyiOCPSojvNKCbXitt2+
GuYRl0BfypAXRtCbC0aSkUZGIDRQa7Cy6Aj2yxmjFX+eRSJb/JCU0LKEvqffWa1PNFT4fYadr2cp
VSpsqgba+fsyqc/HOJhS2Rje2dnOxPZrQqeCLzMVWU0Elk1DjIQ041a/J+hTKTcaX4hxBIruKdFT
EwjcV2k5hvys3itCMaJO071L1CMb+070YYvQ6odNHAJCEfpBxihhGHCrclaTL5QITv9dnDqvC2dg
yKmX9OAMHVeX0cuOaNTkWiXmrgwzcvqH/y2MhKai5gYHnQg425nIh9vt3KOZlm3jfJtA61IhBjhf
afbDlyAaLE3NlrcqHvYNYj2/fJpI9Um8ZOsLTa0TzMMyg/t9+Eru2YduovcEG7YTooQnJGPg4SYv
u2L6i/V4Sd68nCs3UTIqqHXNbLUJ5ObFeWeaobLlmDvoPa5aulDn0lhyxBuRMAQ+CA0Li95OnkeD
jYzdZzIWLZ46NJdprKAJYFw0CPOtd6GGMO1B5vIt8sJdJw2sI8FOqU3SU3aYrzzl3dvFaaoZnpq1
Qp9bkJeb1rG3tk8ZjrTTiNymFZo/8XIGgcUb5iQa5Dq6vgRrhFMKOAhWlsLxSN9YidMcJiTD1tVq
nstx7W19Fdtwqk5ZLgAbdeH/2CS8ePRenropZ2Ef9J//a1vbJ2DRMQDcAn76w/mxpoNGYyJBo5AG
dfSnWdoNGaaKdoZDXMJKwVK5mRewwHAfQWtYsaPRoX2UGtxEc04Tp8WirhJmqQ2rsv7idcHIbD+v
xCMH+lYCNJ6uDdFtw73+UGqrtZ5DppsHXB2MAycEaAf/oGxEXly6es5r8QRLu2MAdvpZ4VTqG6jh
75pADcbMNP24Bz3B8CWahkmH0AlMQy90sGvCCJSMlj4KnsGQu+AZizAkxLsIWJzd6HXCGH/pyDbR
bj5WimgD9Y8w3ZucLX3bWYDf2RsSY65FRmX492U7z8c+h127svkgUErzthA1P9SeTwwcJfydIP4T
90vrqaLQOD43IoqlmJWecpCo8QXKNE2lcPMeKp++D9HDPDLN7+Yx+PyYaY2cIiIXi7wWdAdsgX9l
UZbuacnBJkAGzIpL1arTdvhg6yJB1FujgZWo08aJAbPAEIaP+d92T2fHNpGRXrl74apffeVPTunW
s0tX1PMoL0eNbEBY63f5aptD1zN3va+tiTVUcKRiCyRsYPpQDfwI+B/vil0CcWR/5VARr3kYdUaO
6DPe/ZfauHCxhugXf5iRwP5iT0+jAjigU8F4/4PonRKA3QyZTIZL8ByJbZ9P+923SUYbYozYCJ3j
467FX9Cv1GapgbhHnerEg/49gq+2xzzFOYGNmLHzD1WK+Q5+NT+NnJCo0vndPsU512iz1R4lGQTO
aynNbzU57iJqu46Ud7TmhBjnSESEdpr0mbs6gB5Myv14TGqxL/nNbt6jBJ7JKMhIXQAU2lfoRiJq
i7RMeEKtUfvufvxj4NXNstCLg056RdaQOdo32G2a61b7tzZSvVonk+nl8nDDTjA6LZFQ6EeybxOS
Va/zk9pOMmbe9JJBzKmJzOVO2G+DqxCK4NCX9OUdfIN2irYbfFMO14NdrQ3vqELf9ELLxSzlH3mG
2j4+26hXgmBM19JZ6kII+unR/JkrAAUwB6Xh2ijDnsI6Uh1Gv9KT4mIqEY1vIYoGBgfsDlGQXsxn
i/LzX9G11LWIS2/ryeLafCu+Y+LH7Q/O7s2Nrn1xKNjGCvMu2ByenzIK6iOaU84zUBHyCfb9EoCF
YfTSzY/wVEHAxt0gqr5w5HB8IZYqYR2y7mq1RqusonGh69WkfWEzHdG4/d5ZZkYjR+gGv0JZtkK2
ReLEFKAkhs+CD59vfBLM2o+8zVX6/Nvyuz9rq04jo5pzrJZbkCRB98dJn+QlYad0fCSR4/3zZoun
e+8o3npO6WssgORyQYMXB/+tHBvsmdJLBlGaIb4agH2tVnZtuXjQVh/xVMLJSMaTJbH4Ko4w0wPb
vUB46pmXx2m/hhXF4qKpj3bbLpR4PBVWsmxYqBj0a7iWWK053SGm3RsxinSzz9ro9rCVYQYKcxSy
uTSYIMENQqbcV3QnqnGbX6UKaKYKpXxMliyj7UpuykbXfZUrM11X7LmcgYuIn/WIUb7579lqsC60
723fG8Ok5kHWjpNWG/VzXCRcwe/QShh8vQASF6pn9voZWOBUemRVmwOZI75yapxW1hhwUW6v8tTj
+lE2lSDAEe39//252eaKrFUH7iJ0okIP/BdNb9QbSHPRWijVhGdAtTa6tcSsZYXfS9snuHMQPYh5
FoL5Og5+noadn+48PVTIQdaWkXg80EsNcXafAIPePBz3HWIM5P5YgJPoS6xY2JGj/OVCPefY0kpo
2aZCrmeTrPM+rKxR4Bf7/OZynRPzXYiyjOdGo28hS4E5NlIFGw7EHSPuDtAD1vIF3NXa3xRe6/MC
d9i+r0gziZf8LsTtI93Nz24zoB+yFyxCKacjUHCQVKmcpA8vVZNZyy7n83KPGhLiha/87FvNyn6M
iBmIyKc3B8zysVb/sBvfYmmnKuIIHhJBYfqNi9ThMLUGSlZXc6PDT/REoEeZQX9WglWAmlnF/oyD
vxJpCVom66myVb4DlMdJCGrn4UyYmwF+8EfvYflRczB0fA8biaW63pATqDQeWHHkggLElQmPc9ag
+M8wM3eP1bFdvJswS14QCoAMGdDB5eWrTQyjBdzYxkLYUZticVgoMdz0UyAWUHxgx9szu3o8/ptZ
0lfTcl3DGzQOBnHLyhCntO9lnSijwmglpm+bZJDrQyIdCQzaaJsJktqatKathNVFU2Lcwqr2Yb4B
Tb0NPxv8lUB/N2j3Mb3Rf8vcl6WIDUdUU/AQE+h0ICor0tLoskVeQEzsm+/MQUc0GElnR/q4VYkE
VyAOo1oAPMqj6J/4+5WTuYt9Q08Fjo4jQwJHXYDQmuSMbYk1GxxAUhONMSrQp2LaFTBB9TK/x5w4
U5VNzClgndPQ2LINF7cVxbhIs0pmbBFci3l97iCWQl/pL7SaAeYt6SkT/rV0j/CmpgcQ7DBC4f+p
7hmdaPhVLy9RnVtOqGy2YfURT7W7dfTj5EYK3wEScC+xDFJ4zgOb/I+4nCkPG7bHAl3aXi0SdSMT
3j0L+C5XP1d5CxXjKhSu4BIWqs56DgAlWo8Gc89oTWV2v+/Lm9wlOxSboHk348hJmxarWxcMgyw7
F42b550KtX4Dq0ZlKT0HBXwLjQpj6TyyrSlwQO0nS2PkuKxru+0PkDOJoxIcXPxuXxi0H/3Bc+ue
Hap9AB7WsQFhkn6KpwsW51Zio6vmDr78SkubEiB02ZdGPbUJKMCwqXTRU7S+bq9QioWsCKzdpStS
oZ7tyEnrBhHiTyKXiZgr8soWDqqf9VosGSATHszbxKfNJw0KU/C5diVqkPpC1ryxp4NclmY3bqO4
exHtfKKx9Uc8FykqM06wib98/3eGUw7PY69cDMH/a1yR5DNl9FLRqESchFsfV2j/xEQcgsNjv4iA
2TUpqvZ+s8gS9n6RJW8lCuphrWTmCbWI+SMdpttIUSD586YcchtPBF+DNAkldDx6P/nw3Gik70I8
531MXsWKCU1hKqCz5Uc25D2r8UOTevvHxeHYVoeOLltioBAByc2ZJI73gwgf+AUG13gyotw3b3rd
4kgeyojx1p+O9rpPcD7AaMZJgfRDbpQpYOkQxJpVP/FNfRSyKmQudmfIf2kdjAEvHAmikfgfcaOK
KuFpZOEoJrRKRIwH6+S9n/824q//JK4KtKKAng1pfU8En5j00ERtUKT/ARaST5GmgOLxF9pjPkg+
3YYz4BVSg9WsW/WhRxq3Qcd/CgpCs8l0nyPtpz1SLC5fByv+OsAq01/eHd0AxLVGdKTVFsdFHrWz
PBMpGHIoffcdtq4bqOdbSRgIYZILRLVrZicfcRqttmrx3eFObW0wNxVfqWonsMV4zFSJCaeerMQc
0cTkntF59cf7PSZlQLRE74CRy7xPNoj7DB8vy4z9PcFrOYNwUkVvG7v5sGU5NdZcVQth60ZHAwHz
O/yTXIf8H8c0f5TqszRiTmLEakamVIOsye7AKlWMFiemiwh66WWxvuOkSzrU+1bZoHmpePPDckcj
NfWjXqg4ugj7doce43Ny/bXpPwHziVqixhwX1wbV06rEbTnX+F7ouVVwna50WtPXJIerzaITrUhg
6euFz3bmnyXGkJUBepTfwySQeqUJ9hG3UrznO0izwb9TT1Df7YcazLMSy/7YfgRIc8MQFAPUAzi9
1gr63JpBap9uznR46uHKGXzlAOX94FxzvP921hU/AC1CMXzo6RQnHeZerW7x1gIjcwbourFE92Zk
RozIbFh4j7t8h16sS02AcPpYZmSwxqHXD3q39cvh+w9tCb2GJZ/gsbZPRFl4j0qwk6ju6IjfjVpx
E9pth5wO7vhB3DTd2XWI/oJNaFcsT4kkskYWvxswMCQX9RsZ9fynhS1CoX/dSWAZeITtSOCIeAjY
TzMmowF0MIXdhZn5G25I3OXTjdawKpygsqXKfSTLlESZHXfmRdu6ly58LNJH2i+87CDwQ7gHPxT3
IlhJrJRzxrTfilzOy09wmooStvfXXE8XJH9lPfC5N4/ir17qju3xTiFjOjSEAUPcjXVq3c3VbYpj
nRrpFfhxaojbikfCqNes1ILVmDf9tPzg+mX4Ayeehu7RCEERdjbs8EU3BKuHftrQ1G52uhhWn5cD
LWcWg49aiD98MrZKRjkdQ8zcl4Jp7SdTesKfU1MNPmOa8WGndosRK3GKxJUfhFLgHpgVgq47bqRK
AOyGSs9/WUaMhJAXZE+iIbjmygLPbyKHlRaqQPa0jbQSF75NQNL3k/kVieWv5ckikc6zRBgNsiRi
U1csnrDRYupT3nkXlRVUqj7ZrPXv2AIZSjMFGuev4zOxB8WMuWMrmR6XhoP6TmzM6H96liE88w3K
lXkfixJqA2OjwxiknVU+F5i9UNkfpX2Bv3c68ktlzGNpjmrEUvQAs3DQlD3E5+8ufevDmeH7yBfr
HnLQwSIgmBrFCqUzsgpZPgqILKzofSnfNgaYRtRDjhuF/0mlM1+6VUp8sk3AHC2+jfmowhL86yGO
NhrukcYSPoHntnmr0cYq0KCaNy0DJQN1LltZ8mHU1wI/ozH/KUQ3JyA66pC/LdcZDhoydoq37otV
24xPt0T3J2sBkFwx3ECc3m/LqQ2mPXUISdtFz8v/sB1csXLd5L10mMghx0jnMh7lKsGcV6pG+hSJ
VwuxvSTvi4jiBhNyy3w7m3cYSZBkwznROG0a0X58iPPdRRMcp78mUljpSpIiHbefLOQyuhtPdOqd
XWBt6j1z4Wx4ijBBZtOoqAdTRK3o20B/UKZ1PDZu5MkARwMnAqYFpgofiyusxo4NCZxBacX65DUo
W+YVquRs3wweE3Sr1iQ2NADdVTAIhmSIEh1o9s0+xnCwMZyZwOHKRlwr7qbKkXFLtqywTGpH2Sty
xb+q61zBBsyg2FNLhVskEJROPYZ3sfeyANQj0OOEGnpri0Hqci1zDEtg79/s7U34kHztOWiWXdSe
t3RJKdCvqmdjZcRXLAKEuCl40SolxZ0kn6SWh9uvT8n+vy9/Q98NHplpz9Xsp+ENjL5XtLuQ96ZU
DfdUQ4XO7pSJxHkOhSuTqcZKMMh7Kf5njZOt8GbCpwHcD0qwTzxYnOyhZjw7Lc4OTTnVAI3Oi9we
f76YPTd4nAaaWrsY4MLAObyX2gvdtjutyZxHafbgoZylrpffccVocBjKKKfmTnCPIqBNAXpz3dgg
6bWX1O2GU8qLL2PRbD6G5TTpQqKsVNtOZW7V/EDJcsQ9KQeerVNYC2ct4dhQRPZBXiccSvAS11Pa
a6NIl0MjRqT3GdiKBg7b5E6nJxl8TBTIgp3l+WE9gDW+hxZ+EBHQVGZ2nEEqLg0JQzYGNecnxsAs
U90nD5QuMINBLSceduDJe7Q9BcED92W5zb6j3r5oy9Y6v13tDqeZuyRni98mLFDj/Wnu+zJ0Hg/H
iJZYJ/5zz7FCITum3fFMSEjTaMhpABIuq1xcISoEGkli2XyC2aPgTCrW9hRd1KCVJ5fiDijd65F+
vexQX4B3pFFIOWsLjGygp3DuWfQg0UQO03jZSNUW61Bsn7C2ga5K+YA1TLOIc4BDjpHvVUSso6je
OHf4BmcS7h6ofV/HChMnn2JkF5nkRZde2uxjH/HxlFx0/NmTyPVvBqbPRqZihNMPJmJ7vD7gAWqp
bADU5l3yGiED8u/WJddkySrtdX+bUC1Xats15kzRtLeuZxYO2Cek9k0noZpctiH4kPTRwCWgsDLQ
1l5d9bG4tzTPndTvc/iKIud0OxDrJJQcDYjOyZXH5bqijk3EETbqRX0vCmofAua6PL/EdeMX070L
zyYcfTU79Hg8crpiojxoRWftfagRoygLTLxOFyRN91qnPH3Nal8SIB+Ixz1mKZsTsYc1HyufcSbe
Dm8A3TxiY9J1GB1eYBTQus8V70maBIj402jsk20Ss5NjnxPXRZDW9ct539UvW6hv77b1rIW5a5Ef
htoDlCLh/0ExbzVTyagPGcamwRYsQgVTOU9USjtrBaJyNY0vu+PtCh6JtEUhfJAXxUDiOaGYt295
H26V9If4l0TaHMIoXiEKKN8M6tPjbZ2XkYqYSQ9gAKUZ3YaI2kLZe6o1eCuOC397fIB5bHbuhdyI
UlU2HepI5gB+6/oDR1Pc0Ze+pt+lLyqHf6N277M1rDE75YwMMj7+jL/JyCc6GIS69UWG+jmHR0FK
QG2pJT5gwzYmplCwm4Ew//J5xhm7vxgXbyEh2WT2CtZxUbHFNq1bl7UmI30Gru9UJ3IAeWPQjMIi
JQKbo6KrYqMtoy76cqnS393vJeY0kTclCgkz3eQzyZx/hlg1dPPLx/dPRiYf75Amxoq8MKeSGf/H
WJ8M0yYtcpkeQe+hW0epZisJliZiubIWWvKIluRC9Xuk09vKid3YR4hpy3oKizZAMLT2wd3dTEgg
wI7WSceA2vYCwJhkfr4g8w62gatvKrLsiC4H2NTCy7D1yO1xt2QmGjLWkPaJpBd3UisCvgDj0gpQ
kKqc/OQc2sVMA/a8VJwpEBbojnmsSf/Gpaj4MTse9XlKMaGQ3lkND4+WN39/APNg9opxM5pu0O5o
ogzfcfzcKipevITq8kglKsO9+bEL/Kr1ufVevgfoSBpgqtVNlyYv9Vk9OBGJu/xFcn2pO9t1KOUI
HqbFxxBARH1njTIW4WSV6Gb00zl4b6c2gDgfrcX04ClDiXKalkuYytxk9Y86FCc9zZjOD7hpYkF3
YuFbN+gk82MzkmG9hDzdFBelVOLD4XMsjsw96rN/jmyPSIKwZZ5Zg8wBkjJFevEaZSj//99P86qZ
jgGfTlBkqxUzdz+iWLVXmsDZg7OO2rdPV6zAR9x7ZB8osgxcJc3ItiL/a7HovMoh1frPX9VaVed4
r+94B/UDsjWeqxjLebTMYkjbOyoFs3aMxw671iPhc3b21HgsC9zO2gPzDZTrQ9sBQ4FVbGmyTu1y
8PE8U8bQETR0nZGJBxPwF7r4vcPrNyK7jcUOgpSOuivklirGG5mtwWIop23NVdrwe3ZrUdsFQfAJ
2GTMWD9tMLqHYeqS93yOfcGZkTNzHsQRTVyCId2auzRe1aYdfjCmHmGHtYCKRWyw3hKwKzm7uRFj
4NuAaZDdhHh0Rq4+Yio01F0Kcca6wpvvMJMca9Zz/4f+8KIyQqztRKazS0+/pttOPDJcFHG/7506
ZMyMTWrfyWXvHZhUBHMGO3NRSelkwylkfdLyHWQGqyeXDWG/lWiIbenix3BFSjr5Me53WiK10mML
ty5OpF+1TsaNJFbjnsoZJqDudSmQQFhqdcKpoMrIBh/8PmpMau3RJbF6Pub2VWK+L/sU7ggVe0j1
wfcpVUxEVBX5lIuZJ3sax1rebbUFQI+c
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
