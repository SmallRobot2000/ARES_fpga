// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Aug 12 21:42:52 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/ip/blk_mem_gen_spr_att/blk_mem_gen_spr_att_sim_netlist.v
// Design      : blk_mem_gen_spr_att
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
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
7joriwwGIRey
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
