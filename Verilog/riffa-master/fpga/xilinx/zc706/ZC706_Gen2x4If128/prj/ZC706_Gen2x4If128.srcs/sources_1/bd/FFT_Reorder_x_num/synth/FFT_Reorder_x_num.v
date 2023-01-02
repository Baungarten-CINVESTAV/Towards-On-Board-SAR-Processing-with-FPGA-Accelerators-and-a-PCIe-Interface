//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Mar 29 07:07:49 2021
//Host        : DESKTOP-9SQCBTG running 64-bit major release  (build 9200)
//Command     : generate_target FFT_Reorder_x_num.bd
//Design      : FFT_Reorder_x_num
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "FFT_Reorder_x_num,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FFT_Reorder_x_num,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "FFT_Reorder_x_num.hwdef" *) 
module FFT_Reorder_x_num
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_0_ADDRESS0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_0_ADDRESS0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [11:0]Imag_0_address0_0;
  output Imag_0_ce0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_0_D0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_0_D0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) output [31:0]Imag_0_d0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_0_Q0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_0_Q0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) input [31:0]Imag_0_q0_0;
  output Imag_0_we0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_1_ADDRESS0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_1_ADDRESS0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [11:0]Imag_1_address0_0;
  output Imag_1_ce0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_1_D0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_1_D0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) output [31:0]Imag_1_d0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_1_Q0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_1_Q0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) input [31:0]Imag_1_q0_0;
  output Imag_1_we0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_2_ADDRESS0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_2_ADDRESS0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [11:0]Imag_2_address0_0;
  output Imag_2_ce0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_2_D0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_2_D0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) output [31:0]Imag_2_d0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_2_Q0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_2_Q0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) input [31:0]Imag_2_q0_0;
  output Imag_2_we0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_3_ADDRESS0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_3_ADDRESS0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [11:0]Imag_3_address0_0;
  output Imag_3_ce0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_3_D0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_3_D0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) output [31:0]Imag_3_d0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAG_3_Q0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAG_3_Q0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) input [31:0]Imag_3_q0_0;
  output Imag_3_we0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_0_ADDRESS0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_0_ADDRESS0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [11:0]Real_0_address0_0;
  output Real_0_ce0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_0_D0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_0_D0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) output [31:0]Real_0_d0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_0_Q0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_0_Q0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) input [31:0]Real_0_q0_0;
  output Real_0_we0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_1_ADDRESS0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_1_ADDRESS0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [11:0]Real_1_address0_0;
  output Real_1_ce0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_1_D0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_1_D0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) output [31:0]Real_1_d0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_1_Q0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_1_Q0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) input [31:0]Real_1_q0_0;
  output Real_1_we0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_2_ADDRESS0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_2_ADDRESS0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [11:0]Real_2_address0_0;
  output Real_2_ce0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_2_D0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_2_D0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) output [31:0]Real_2_d0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_2_Q0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_2_Q0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) input [31:0]Real_2_q0_0;
  output Real_2_we0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_3_ADDRESS0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_3_ADDRESS0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [11:0]Real_3_address0_0;
  output Real_3_ce0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_3_D0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_3_D0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) output [31:0]Real_3_d0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.REAL_3_Q0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.REAL_3_Q0_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}" *) input [31:0]Real_3_q0_0;
  output Real_3_we0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK_0, ASSOCIATED_RESET ap_rst_0, CLK_DOMAIN FFT_Reorder_x_num_ap_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input ap_clk_0;
  output ap_done_0;
  output ap_idle_0;
  output ap_ready_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst_0;
  input ap_start_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.NUM_WORD_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.NUM_WORD_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}" *) input [31:0]num_word_0;

  wire [31:0]Imag_0_q0_0_1;
  wire [31:0]Imag_1_q0_0_1;
  wire [31:0]Imag_2_q0_0_1;
  wire [31:0]Imag_3_q0_0_1;
  wire [31:0]Real_0_q0_0_1;
  wire [31:0]Real_1_q0_0_1;
  wire [31:0]Real_2_q0_0_1;
  wire [31:0]Real_3_q0_0_1;
  wire [11:0]Reorder_fft_0_Imag_0_address0;
  wire Reorder_fft_0_Imag_0_ce0;
  wire [31:0]Reorder_fft_0_Imag_0_d0;
  wire Reorder_fft_0_Imag_0_we0;
  wire [11:0]Reorder_fft_0_Imag_1_address0;
  wire Reorder_fft_0_Imag_1_ce0;
  wire [31:0]Reorder_fft_0_Imag_1_d0;
  wire Reorder_fft_0_Imag_1_we0;
  wire [11:0]Reorder_fft_0_Imag_2_address0;
  wire Reorder_fft_0_Imag_2_ce0;
  wire [31:0]Reorder_fft_0_Imag_2_d0;
  wire Reorder_fft_0_Imag_2_we0;
  wire [11:0]Reorder_fft_0_Imag_3_address0;
  wire Reorder_fft_0_Imag_3_ce0;
  wire [31:0]Reorder_fft_0_Imag_3_d0;
  wire Reorder_fft_0_Imag_3_we0;
  wire [11:0]Reorder_fft_0_Real_0_address0;
  wire Reorder_fft_0_Real_0_ce0;
  wire [31:0]Reorder_fft_0_Real_0_d0;
  wire Reorder_fft_0_Real_0_we0;
  wire [11:0]Reorder_fft_0_Real_1_address0;
  wire Reorder_fft_0_Real_1_ce0;
  wire [31:0]Reorder_fft_0_Real_1_d0;
  wire Reorder_fft_0_Real_1_we0;
  wire [11:0]Reorder_fft_0_Real_2_address0;
  wire Reorder_fft_0_Real_2_ce0;
  wire [31:0]Reorder_fft_0_Real_2_d0;
  wire Reorder_fft_0_Real_2_we0;
  wire [11:0]Reorder_fft_0_Real_3_address0;
  wire Reorder_fft_0_Real_3_ce0;
  wire [31:0]Reorder_fft_0_Real_3_d0;
  wire Reorder_fft_0_Real_3_we0;
  wire Reorder_fft_0_ap_done;
  wire Reorder_fft_0_ap_idle;
  wire Reorder_fft_0_ap_ready;
  wire ap_clk_0_1;
  wire ap_rst_0_1;
  wire ap_start_0_1;
  wire [31:0]num_word_0_1;

  assign Imag_0_address0_0[11:0] = Reorder_fft_0_Imag_0_address0;
  assign Imag_0_ce0_0 = Reorder_fft_0_Imag_0_ce0;
  assign Imag_0_d0_0[31:0] = Reorder_fft_0_Imag_0_d0;
  assign Imag_0_q0_0_1 = Imag_0_q0_0[31:0];
  assign Imag_0_we0_0 = Reorder_fft_0_Imag_0_we0;
  assign Imag_1_address0_0[11:0] = Reorder_fft_0_Imag_1_address0;
  assign Imag_1_ce0_0 = Reorder_fft_0_Imag_1_ce0;
  assign Imag_1_d0_0[31:0] = Reorder_fft_0_Imag_1_d0;
  assign Imag_1_q0_0_1 = Imag_1_q0_0[31:0];
  assign Imag_1_we0_0 = Reorder_fft_0_Imag_1_we0;
  assign Imag_2_address0_0[11:0] = Reorder_fft_0_Imag_2_address0;
  assign Imag_2_ce0_0 = Reorder_fft_0_Imag_2_ce0;
  assign Imag_2_d0_0[31:0] = Reorder_fft_0_Imag_2_d0;
  assign Imag_2_q0_0_1 = Imag_2_q0_0[31:0];
  assign Imag_2_we0_0 = Reorder_fft_0_Imag_2_we0;
  assign Imag_3_address0_0[11:0] = Reorder_fft_0_Imag_3_address0;
  assign Imag_3_ce0_0 = Reorder_fft_0_Imag_3_ce0;
  assign Imag_3_d0_0[31:0] = Reorder_fft_0_Imag_3_d0;
  assign Imag_3_q0_0_1 = Imag_3_q0_0[31:0];
  assign Imag_3_we0_0 = Reorder_fft_0_Imag_3_we0;
  assign Real_0_address0_0[11:0] = Reorder_fft_0_Real_0_address0;
  assign Real_0_ce0_0 = Reorder_fft_0_Real_0_ce0;
  assign Real_0_d0_0[31:0] = Reorder_fft_0_Real_0_d0;
  assign Real_0_q0_0_1 = Real_0_q0_0[31:0];
  assign Real_0_we0_0 = Reorder_fft_0_Real_0_we0;
  assign Real_1_address0_0[11:0] = Reorder_fft_0_Real_1_address0;
  assign Real_1_ce0_0 = Reorder_fft_0_Real_1_ce0;
  assign Real_1_d0_0[31:0] = Reorder_fft_0_Real_1_d0;
  assign Real_1_q0_0_1 = Real_1_q0_0[31:0];
  assign Real_1_we0_0 = Reorder_fft_0_Real_1_we0;
  assign Real_2_address0_0[11:0] = Reorder_fft_0_Real_2_address0;
  assign Real_2_ce0_0 = Reorder_fft_0_Real_2_ce0;
  assign Real_2_d0_0[31:0] = Reorder_fft_0_Real_2_d0;
  assign Real_2_q0_0_1 = Real_2_q0_0[31:0];
  assign Real_2_we0_0 = Reorder_fft_0_Real_2_we0;
  assign Real_3_address0_0[11:0] = Reorder_fft_0_Real_3_address0;
  assign Real_3_ce0_0 = Reorder_fft_0_Real_3_ce0;
  assign Real_3_d0_0[31:0] = Reorder_fft_0_Real_3_d0;
  assign Real_3_q0_0_1 = Real_3_q0_0[31:0];
  assign Real_3_we0_0 = Reorder_fft_0_Real_3_we0;
  assign ap_clk_0_1 = ap_clk_0;
  assign ap_done_0 = Reorder_fft_0_ap_done;
  assign ap_idle_0 = Reorder_fft_0_ap_idle;
  assign ap_ready_0 = Reorder_fft_0_ap_ready;
  assign ap_rst_0_1 = ap_rst_0;
  assign ap_start_0_1 = ap_start_0;
  assign num_word_0_1 = num_word_0[31:0];
  FFT_Reorder_x_num_Reorder_fft_0_0 Reorder_fft_0
       (.Imag_0_address0(Reorder_fft_0_Imag_0_address0),
        .Imag_0_ce0(Reorder_fft_0_Imag_0_ce0),
        .Imag_0_d0(Reorder_fft_0_Imag_0_d0),
        .Imag_0_q0(Imag_0_q0_0_1),
        .Imag_0_we0(Reorder_fft_0_Imag_0_we0),
        .Imag_1_address0(Reorder_fft_0_Imag_1_address0),
        .Imag_1_ce0(Reorder_fft_0_Imag_1_ce0),
        .Imag_1_d0(Reorder_fft_0_Imag_1_d0),
        .Imag_1_q0(Imag_1_q0_0_1),
        .Imag_1_we0(Reorder_fft_0_Imag_1_we0),
        .Imag_2_address0(Reorder_fft_0_Imag_2_address0),
        .Imag_2_ce0(Reorder_fft_0_Imag_2_ce0),
        .Imag_2_d0(Reorder_fft_0_Imag_2_d0),
        .Imag_2_q0(Imag_2_q0_0_1),
        .Imag_2_we0(Reorder_fft_0_Imag_2_we0),
        .Imag_3_address0(Reorder_fft_0_Imag_3_address0),
        .Imag_3_ce0(Reorder_fft_0_Imag_3_ce0),
        .Imag_3_d0(Reorder_fft_0_Imag_3_d0),
        .Imag_3_q0(Imag_3_q0_0_1),
        .Imag_3_we0(Reorder_fft_0_Imag_3_we0),
        .Real_0_address0(Reorder_fft_0_Real_0_address0),
        .Real_0_ce0(Reorder_fft_0_Real_0_ce0),
        .Real_0_d0(Reorder_fft_0_Real_0_d0),
        .Real_0_q0(Real_0_q0_0_1),
        .Real_0_we0(Reorder_fft_0_Real_0_we0),
        .Real_1_address0(Reorder_fft_0_Real_1_address0),
        .Real_1_ce0(Reorder_fft_0_Real_1_ce0),
        .Real_1_d0(Reorder_fft_0_Real_1_d0),
        .Real_1_q0(Real_1_q0_0_1),
        .Real_1_we0(Reorder_fft_0_Real_1_we0),
        .Real_2_address0(Reorder_fft_0_Real_2_address0),
        .Real_2_ce0(Reorder_fft_0_Real_2_ce0),
        .Real_2_d0(Reorder_fft_0_Real_2_d0),
        .Real_2_q0(Real_2_q0_0_1),
        .Real_2_we0(Reorder_fft_0_Real_2_we0),
        .Real_3_address0(Reorder_fft_0_Real_3_address0),
        .Real_3_ce0(Reorder_fft_0_Real_3_ce0),
        .Real_3_d0(Reorder_fft_0_Real_3_d0),
        .Real_3_q0(Real_3_q0_0_1),
        .Real_3_we0(Reorder_fft_0_Real_3_we0),
        .ap_clk(ap_clk_0_1),
        .ap_done(Reorder_fft_0_ap_done),
        .ap_idle(Reorder_fft_0_ap_idle),
        .ap_ready(Reorder_fft_0_ap_ready),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_start_0_1),
        .num_word(num_word_0_1));
endmodule
