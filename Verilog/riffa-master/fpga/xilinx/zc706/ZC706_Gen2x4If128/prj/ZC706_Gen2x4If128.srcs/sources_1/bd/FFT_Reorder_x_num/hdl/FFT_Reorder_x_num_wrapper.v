//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Mar 29 07:07:49 2021
//Host        : DESKTOP-9SQCBTG running 64-bit major release  (build 9200)
//Command     : generate_target FFT_Reorder_x_num_wrapper.bd
//Design      : FFT_Reorder_x_num_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module FFT_Reorder_x_num_wrapper
   (Imag_0_address0_0,
    Imag_0_ce0_0,
    Imag_0_d0_0,
    Imag_0_q0_0,
    Imag_0_we0_0,
    Imag_1_address0_0,
    Imag_1_ce0_0,
    Imag_1_d0_0,
    Imag_1_q0_0,
    Imag_1_we0_0,
    Imag_2_address0_0,
    Imag_2_ce0_0,
    Imag_2_d0_0,
    Imag_2_q0_0,
    Imag_2_we0_0,
    Imag_3_address0_0,
    Imag_3_ce0_0,
    Imag_3_d0_0,
    Imag_3_q0_0,
    Imag_3_we0_0,
    Real_0_address0_0,
    Real_0_ce0_0,
    Real_0_d0_0,
    Real_0_q0_0,
    Real_0_we0_0,
    Real_1_address0_0,
    Real_1_ce0_0,
    Real_1_d0_0,
    Real_1_q0_0,
    Real_1_we0_0,
    Real_2_address0_0,
    Real_2_ce0_0,
    Real_2_d0_0,
    Real_2_q0_0,
    Real_2_we0_0,
    Real_3_address0_0,
    Real_3_ce0_0,
    Real_3_d0_0,
    Real_3_q0_0,
    Real_3_we0_0,
    ap_clk_0,
    ap_done_0,
    ap_idle_0,
    ap_ready_0,
    ap_rst_0,
    ap_start_0,
    num_word_0);
  output [11:0]Imag_0_address0_0;
  output Imag_0_ce0_0;
  output [31:0]Imag_0_d0_0;
  input [31:0]Imag_0_q0_0;
  output Imag_0_we0_0;
  output [11:0]Imag_1_address0_0;
  output Imag_1_ce0_0;
  output [31:0]Imag_1_d0_0;
  input [31:0]Imag_1_q0_0;
  output Imag_1_we0_0;
  output [11:0]Imag_2_address0_0;
  output Imag_2_ce0_0;
  output [31:0]Imag_2_d0_0;
  input [31:0]Imag_2_q0_0;
  output Imag_2_we0_0;
  output [11:0]Imag_3_address0_0;
  output Imag_3_ce0_0;
  output [31:0]Imag_3_d0_0;
  input [31:0]Imag_3_q0_0;
  output Imag_3_we0_0;
  output [11:0]Real_0_address0_0;
  output Real_0_ce0_0;
  output [31:0]Real_0_d0_0;
  input [31:0]Real_0_q0_0;
  output Real_0_we0_0;
  output [11:0]Real_1_address0_0;
  output Real_1_ce0_0;
  output [31:0]Real_1_d0_0;
  input [31:0]Real_1_q0_0;
  output Real_1_we0_0;
  output [11:0]Real_2_address0_0;
  output Real_2_ce0_0;
  output [31:0]Real_2_d0_0;
  input [31:0]Real_2_q0_0;
  output Real_2_we0_0;
  output [11:0]Real_3_address0_0;
  output Real_3_ce0_0;
  output [31:0]Real_3_d0_0;
  input [31:0]Real_3_q0_0;
  output Real_3_we0_0;
  input ap_clk_0;
  output ap_done_0;
  output ap_idle_0;
  output ap_ready_0;
  input ap_rst_0;
  input ap_start_0;
  input [31:0]num_word_0;

  wire [11:0]Imag_0_address0_0;
  wire Imag_0_ce0_0;
  wire [31:0]Imag_0_d0_0;
  wire [31:0]Imag_0_q0_0;
  wire Imag_0_we0_0;
  wire [11:0]Imag_1_address0_0;
  wire Imag_1_ce0_0;
  wire [31:0]Imag_1_d0_0;
  wire [31:0]Imag_1_q0_0;
  wire Imag_1_we0_0;
  wire [11:0]Imag_2_address0_0;
  wire Imag_2_ce0_0;
  wire [31:0]Imag_2_d0_0;
  wire [31:0]Imag_2_q0_0;
  wire Imag_2_we0_0;
  wire [11:0]Imag_3_address0_0;
  wire Imag_3_ce0_0;
  wire [31:0]Imag_3_d0_0;
  wire [31:0]Imag_3_q0_0;
  wire Imag_3_we0_0;
  wire [11:0]Real_0_address0_0;
  wire Real_0_ce0_0;
  wire [31:0]Real_0_d0_0;
  wire [31:0]Real_0_q0_0;
  wire Real_0_we0_0;
  wire [11:0]Real_1_address0_0;
  wire Real_1_ce0_0;
  wire [31:0]Real_1_d0_0;
  wire [31:0]Real_1_q0_0;
  wire Real_1_we0_0;
  wire [11:0]Real_2_address0_0;
  wire Real_2_ce0_0;
  wire [31:0]Real_2_d0_0;
  wire [31:0]Real_2_q0_0;
  wire Real_2_we0_0;
  wire [11:0]Real_3_address0_0;
  wire Real_3_ce0_0;
  wire [31:0]Real_3_d0_0;
  wire [31:0]Real_3_q0_0;
  wire Real_3_we0_0;
  wire ap_clk_0;
  wire ap_done_0;
  wire ap_idle_0;
  wire ap_ready_0;
  wire ap_rst_0;
  wire ap_start_0;
  wire [31:0]num_word_0;

  FFT_Reorder_x_num FFT_Reorder_x_num_i
       (.Imag_0_address0_0(Imag_0_address0_0),
        .Imag_0_ce0_0(Imag_0_ce0_0),
        .Imag_0_d0_0(Imag_0_d0_0),
        .Imag_0_q0_0(Imag_0_q0_0),
        .Imag_0_we0_0(Imag_0_we0_0),
        .Imag_1_address0_0(Imag_1_address0_0),
        .Imag_1_ce0_0(Imag_1_ce0_0),
        .Imag_1_d0_0(Imag_1_d0_0),
        .Imag_1_q0_0(Imag_1_q0_0),
        .Imag_1_we0_0(Imag_1_we0_0),
        .Imag_2_address0_0(Imag_2_address0_0),
        .Imag_2_ce0_0(Imag_2_ce0_0),
        .Imag_2_d0_0(Imag_2_d0_0),
        .Imag_2_q0_0(Imag_2_q0_0),
        .Imag_2_we0_0(Imag_2_we0_0),
        .Imag_3_address0_0(Imag_3_address0_0),
        .Imag_3_ce0_0(Imag_3_ce0_0),
        .Imag_3_d0_0(Imag_3_d0_0),
        .Imag_3_q0_0(Imag_3_q0_0),
        .Imag_3_we0_0(Imag_3_we0_0),
        .Real_0_address0_0(Real_0_address0_0),
        .Real_0_ce0_0(Real_0_ce0_0),
        .Real_0_d0_0(Real_0_d0_0),
        .Real_0_q0_0(Real_0_q0_0),
        .Real_0_we0_0(Real_0_we0_0),
        .Real_1_address0_0(Real_1_address0_0),
        .Real_1_ce0_0(Real_1_ce0_0),
        .Real_1_d0_0(Real_1_d0_0),
        .Real_1_q0_0(Real_1_q0_0),
        .Real_1_we0_0(Real_1_we0_0),
        .Real_2_address0_0(Real_2_address0_0),
        .Real_2_ce0_0(Real_2_ce0_0),
        .Real_2_d0_0(Real_2_d0_0),
        .Real_2_q0_0(Real_2_q0_0),
        .Real_2_we0_0(Real_2_we0_0),
        .Real_3_address0_0(Real_3_address0_0),
        .Real_3_ce0_0(Real_3_ce0_0),
        .Real_3_d0_0(Real_3_d0_0),
        .Real_3_q0_0(Real_3_q0_0),
        .Real_3_we0_0(Real_3_we0_0),
        .ap_clk_0(ap_clk_0),
        .ap_done_0(ap_done_0),
        .ap_idle_0(ap_idle_0),
        .ap_ready_0(ap_ready_0),
        .ap_rst_0(ap_rst_0),
        .ap_start_0(ap_start_0),
        .num_word_0(num_word_0));
endmodule
