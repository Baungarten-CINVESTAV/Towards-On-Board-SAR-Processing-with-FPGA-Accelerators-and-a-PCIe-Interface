//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Mar 24 22:51:36 2021
//Host        : DESKTOP-9SQCBTG running 64-bit major release  (build 9200)
//Command     : generate_target HLS_FFT_wrapper.bd
//Design      : HLS_FFT_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module HLS_FFT_wrapper
   (addrb_Imag_0,
    addrb_Imag_1,
    addrb_Imag_2,
    addrb_Imag_3,
    addrb_Real_0,
    addrb_Real_1,
    addrb_Real_2,
    addrb_Real_3,
    ap_clk_0,
    ap_done_0,
    ap_idle_0,
    ap_ready_0,
    ap_rst_0,
    ap_start_0,
    dinb_Imag_0,
    dinb_Imag_1,
    dinb_Imag_2,
    dinb_Imag_3,
    dinb_Real_0,
    dinb_Real_1,
    dinb_Real_2,
    dinb_Real_3,
    doutb_Imag_0,
    doutb_Imag_1,
    doutb_Imag_2,
    doutb_Imag_3,
    doutb_Real_0,
    doutb_Real_1,
    doutb_Real_2,
    doutb_Real_3,
    web_Imag_0,
    web_Imag_1,
    web_Imag_2,
    web_Imag_3,
    web_Real_0,
    web_Real_1,
    web_Real_2,
    web_Real_3);
  input [8:0]addrb_Imag_0;
  input [8:0]addrb_Imag_1;
  input [8:0]addrb_Imag_2;
  input [8:0]addrb_Imag_3;
  input [8:0]addrb_Real_0;
  input [8:0]addrb_Real_1;
  input [8:0]addrb_Real_2;
  input [8:0]addrb_Real_3;
  input ap_clk_0;
  output ap_done_0;
  output ap_idle_0;
  output ap_ready_0;
  input ap_rst_0;
  input ap_start_0;
  input [31:0]dinb_Imag_0;
  input [31:0]dinb_Imag_1;
  input [31:0]dinb_Imag_2;
  input [31:0]dinb_Imag_3;
  input [31:0]dinb_Real_0;
  input [31:0]dinb_Real_1;
  input [31:0]dinb_Real_2;
  input [31:0]dinb_Real_3;
  output [31:0]doutb_Imag_0;
  output [31:0]doutb_Imag_1;
  output [31:0]doutb_Imag_2;
  output [31:0]doutb_Imag_3;
  output [31:0]doutb_Real_0;
  output [31:0]doutb_Real_1;
  output [31:0]doutb_Real_2;
  output [31:0]doutb_Real_3;
  input [0:0]web_Imag_0;
  input [0:0]web_Imag_1;
  input [0:0]web_Imag_2;
  input [0:0]web_Imag_3;
  input [0:0]web_Real_0;
  input [0:0]web_Real_1;
  input [0:0]web_Real_2;
  input [0:0]web_Real_3;

  wire [8:0]addrb_Imag_0;
  wire [8:0]addrb_Imag_1;
  wire [8:0]addrb_Imag_2;
  wire [8:0]addrb_Imag_3;
  wire [8:0]addrb_Real_0;
  wire [8:0]addrb_Real_1;
  wire [8:0]addrb_Real_2;
  wire [8:0]addrb_Real_3;
  wire ap_clk_0;
  wire ap_done_0;
  wire ap_idle_0;
  wire ap_ready_0;
  wire ap_rst_0;
  wire ap_start_0;
  wire [31:0]dinb_Imag_0;
  wire [31:0]dinb_Imag_1;
  wire [31:0]dinb_Imag_2;
  wire [31:0]dinb_Imag_3;
  wire [31:0]dinb_Real_0;
  wire [31:0]dinb_Real_1;
  wire [31:0]dinb_Real_2;
  wire [31:0]dinb_Real_3;
  wire [31:0]doutb_Imag_0;
  wire [31:0]doutb_Imag_1;
  wire [31:0]doutb_Imag_2;
  wire [31:0]doutb_Imag_3;
  wire [31:0]doutb_Real_0;
  wire [31:0]doutb_Real_1;
  wire [31:0]doutb_Real_2;
  wire [31:0]doutb_Real_3;
  wire [0:0]web_Imag_0;
  wire [0:0]web_Imag_1;
  wire [0:0]web_Imag_2;
  wire [0:0]web_Imag_3;
  wire [0:0]web_Real_0;
  wire [0:0]web_Real_1;
  wire [0:0]web_Real_2;
  wire [0:0]web_Real_3;

  HLS_FFT HLS_FFT_i
       (.addrb_Imag_0(addrb_Imag_0),
        .addrb_Imag_1(addrb_Imag_1),
        .addrb_Imag_2(addrb_Imag_2),
        .addrb_Imag_3(addrb_Imag_3),
        .addrb_Real_0(addrb_Real_0),
        .addrb_Real_1(addrb_Real_1),
        .addrb_Real_2(addrb_Real_2),
        .addrb_Real_3(addrb_Real_3),
        .ap_clk_0(ap_clk_0),
        .ap_done_0(ap_done_0),
        .ap_idle_0(ap_idle_0),
        .ap_ready_0(ap_ready_0),
        .ap_rst_0(ap_rst_0),
        .ap_start_0(ap_start_0),
        .dinb_Imag_0(dinb_Imag_0),
        .dinb_Imag_1(dinb_Imag_1),
        .dinb_Imag_2(dinb_Imag_2),
        .dinb_Imag_3(dinb_Imag_3),
        .dinb_Real_0(dinb_Real_0),
        .dinb_Real_1(dinb_Real_1),
        .dinb_Real_2(dinb_Real_2),
        .dinb_Real_3(dinb_Real_3),
        .doutb_Imag_0(doutb_Imag_0),
        .doutb_Imag_1(doutb_Imag_1),
        .doutb_Imag_2(doutb_Imag_2),
        .doutb_Imag_3(doutb_Imag_3),
        .doutb_Real_0(doutb_Real_0),
        .doutb_Real_1(doutb_Real_1),
        .doutb_Real_2(doutb_Real_2),
        .doutb_Real_3(doutb_Real_3),
        .web_Imag_0(web_Imag_0),
        .web_Imag_1(web_Imag_1),
        .web_Imag_2(web_Imag_2),
        .web_Imag_3(web_Imag_3),
        .web_Real_0(web_Real_0),
        .web_Real_1(web_Real_1),
        .web_Real_2(web_Real_2),
        .web_Real_3(web_Real_3));
endmodule
