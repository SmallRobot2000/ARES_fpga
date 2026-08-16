// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Aug 13 15:07:13 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/ip/blk_mem_gen_spr_att/blk_mem_gen_spr_att_sim_netlist.v
// Design      : blk_mem_gen_spr_att
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_att,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_spr_att
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [7:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [5:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [31:0]dinb;
  wire [63:0]douta;
  wire [31:0]doutb;
  wire enb;
  wire [7:0]wea;
  wire [3:0]web;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     11.17235 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_spr_att.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_spr_att_blk_mem_gen_v8_4_12 U0
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47376)
`pragma protect data_block
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
NHFG/xd+qT2w
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
