// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Aug 12 21:42:52 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_spr_att_sim_netlist.v
// Design      : blk_mem_gen_spr_att
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_att,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47424)
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
