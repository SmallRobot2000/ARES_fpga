// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Aug 11 11:58:53 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_fin_line_sim_netlist.v
// Design      : blk_mem_fin_line
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_fin_line,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29648)
`pragma protect data_block
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
yDFeDN6raMY=
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
