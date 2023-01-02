// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 26 17:43:58 2021
// Host        : DESKTOP-9SQCBTG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {C:/Users/EMILIO/Desktop/Nueva
//               carpeta/riffa-master_6_v3/fpga/xilinx/zc706/ZC706_Gen2x4If128/prj/ZC706_Gen2x4If128.srcs/sources_1/bd/FFT_Reorder_Arra_p/ip/FFT_Reorder_Arra_p_Reorder_fft_0_0/FFT_Reorder_Arra_p_Reorder_fft_0_0_stub.v}
// Design      : FFT_Reorder_Arra_p_Reorder_fft_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Reorder_fft,Vivado 2018.3" *)
module FFT_Reorder_Arra_p_Reorder_fft_0_0(Real_0_ce0, Real_0_we0, Real_1_ce0, Real_1_we0, 
  Real_2_ce0, Real_2_we0, Real_3_ce0, Real_3_we0, Imag_0_ce0, Imag_0_we0, Imag_1_ce0, Imag_1_we0, 
  Imag_2_ce0, Imag_2_we0, Imag_3_ce0, Imag_3_we0, ap_clk, ap_rst, ap_start, ap_done, ap_idle, 
  ap_ready, Real_0_address0, Real_0_d0, Real_0_q0, Real_1_address0, Real_1_d0, Real_1_q0, 
  Real_2_address0, Real_2_d0, Real_2_q0, Real_3_address0, Real_3_d0, Real_3_q0, 
  Imag_0_address0, Imag_0_d0, Imag_0_q0, Imag_1_address0, Imag_1_d0, Imag_1_q0, 
  Imag_2_address0, Imag_2_d0, Imag_2_q0, Imag_3_address0, Imag_3_d0, Imag_3_q0)
/* synthesis syn_black_box black_box_pad_pin="Real_0_ce0,Real_0_we0,Real_1_ce0,Real_1_we0,Real_2_ce0,Real_2_we0,Real_3_ce0,Real_3_we0,Imag_0_ce0,Imag_0_we0,Imag_1_ce0,Imag_1_we0,Imag_2_ce0,Imag_2_we0,Imag_3_ce0,Imag_3_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,Real_0_address0[7:0],Real_0_d0[31:0],Real_0_q0[31:0],Real_1_address0[7:0],Real_1_d0[31:0],Real_1_q0[31:0],Real_2_address0[7:0],Real_2_d0[31:0],Real_2_q0[31:0],Real_3_address0[7:0],Real_3_d0[31:0],Real_3_q0[31:0],Imag_0_address0[7:0],Imag_0_d0[31:0],Imag_0_q0[31:0],Imag_1_address0[7:0],Imag_1_d0[31:0],Imag_1_q0[31:0],Imag_2_address0[7:0],Imag_2_d0[31:0],Imag_2_q0[31:0],Imag_3_address0[7:0],Imag_3_d0[31:0],Imag_3_q0[31:0]" */;
  output Real_0_ce0;
  output Real_0_we0;
  output Real_1_ce0;
  output Real_1_we0;
  output Real_2_ce0;
  output Real_2_we0;
  output Real_3_ce0;
  output Real_3_we0;
  output Imag_0_ce0;
  output Imag_0_we0;
  output Imag_1_ce0;
  output Imag_1_we0;
  output Imag_2_ce0;
  output Imag_2_we0;
  output Imag_3_ce0;
  output Imag_3_we0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [7:0]Real_0_address0;
  output [31:0]Real_0_d0;
  input [31:0]Real_0_q0;
  output [7:0]Real_1_address0;
  output [31:0]Real_1_d0;
  input [31:0]Real_1_q0;
  output [7:0]Real_2_address0;
  output [31:0]Real_2_d0;
  input [31:0]Real_2_q0;
  output [7:0]Real_3_address0;
  output [31:0]Real_3_d0;
  input [31:0]Real_3_q0;
  output [7:0]Imag_0_address0;
  output [31:0]Imag_0_d0;
  input [31:0]Imag_0_q0;
  output [7:0]Imag_1_address0;
  output [31:0]Imag_1_d0;
  input [31:0]Imag_1_q0;
  output [7:0]Imag_2_address0;
  output [31:0]Imag_2_d0;
  input [31:0]Imag_2_q0;
  output [7:0]Imag_3_address0;
  output [31:0]Imag_3_d0;
  input [31:0]Imag_3_q0;
endmodule
