// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Mon Nov  9 17:31:33 2020
// Host        : DESKTOP-PUKS9CF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Reorder_fft,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Real_0_ce0, Real_0_we0, Real_1_ce0, Real_1_we0, 
  Real_2_ce0, Real_2_we0, Real_3_ce0, Real_3_we0, Imag_0_ce0, Imag_0_we0, Imag_1_ce0, Imag_1_we0, 
  Imag_2_ce0, Imag_2_we0, Imag_3_ce0, Imag_3_we0, s_axi_AXILiteS_AWADDR, 
  s_axi_AXILiteS_AWVALID, s_axi_AXILiteS_AWREADY, s_axi_AXILiteS_WDATA, 
  s_axi_AXILiteS_WSTRB, s_axi_AXILiteS_WVALID, s_axi_AXILiteS_WREADY, 
  s_axi_AXILiteS_BRESP, s_axi_AXILiteS_BVALID, s_axi_AXILiteS_BREADY, 
  s_axi_AXILiteS_ARADDR, s_axi_AXILiteS_ARVALID, s_axi_AXILiteS_ARREADY, 
  s_axi_AXILiteS_RDATA, s_axi_AXILiteS_RRESP, s_axi_AXILiteS_RVALID, 
  s_axi_AXILiteS_RREADY, ap_clk, ap_rst_n, interrupt, Real_0_address0, Real_0_d0, Real_0_q0, 
  Real_1_address0, Real_1_d0, Real_1_q0, Real_2_address0, Real_2_d0, Real_2_q0, 
  Real_3_address0, Real_3_d0, Real_3_q0, Imag_0_address0, Imag_0_d0, Imag_0_q0, 
  Imag_1_address0, Imag_1_d0, Imag_1_q0, Imag_2_address0, Imag_2_d0, Imag_2_q0, 
  Imag_3_address0, Imag_3_d0, Imag_3_q0)
/* synthesis syn_black_box black_box_pad_pin="Real_0_ce0,Real_0_we0,Real_1_ce0,Real_1_we0,Real_2_ce0,Real_2_we0,Real_3_ce0,Real_3_we0,Imag_0_ce0,Imag_0_we0,Imag_1_ce0,Imag_1_we0,Imag_2_ce0,Imag_2_we0,Imag_3_ce0,Imag_3_we0,s_axi_AXILiteS_AWADDR[3:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[3:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,Real_0_address0[7:0],Real_0_d0[31:0],Real_0_q0[31:0],Real_1_address0[7:0],Real_1_d0[31:0],Real_1_q0[31:0],Real_2_address0[7:0],Real_2_d0[31:0],Real_2_q0[31:0],Real_3_address0[7:0],Real_3_d0[31:0],Real_3_q0[31:0],Imag_0_address0[7:0],Imag_0_d0[31:0],Imag_0_q0[31:0],Imag_1_address0[7:0],Imag_1_d0[31:0],Imag_1_q0[31:0],Imag_2_address0[7:0],Imag_2_d0[31:0],Imag_2_q0[31:0],Imag_3_address0[7:0],Imag_3_d0[31:0],Imag_3_q0[31:0]" */;
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
  input [3:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  input [3:0]s_axi_AXILiteS_ARADDR;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
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
