// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue Nov 10 09:30:47 2020
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_AXILiteS_AWADDR, 
  s_axi_AXILiteS_AWVALID, s_axi_AXILiteS_AWREADY, s_axi_AXILiteS_WDATA, 
  s_axi_AXILiteS_WSTRB, s_axi_AXILiteS_WVALID, s_axi_AXILiteS_WREADY, 
  s_axi_AXILiteS_BRESP, s_axi_AXILiteS_BVALID, s_axi_AXILiteS_BREADY, 
  s_axi_AXILiteS_ARADDR, s_axi_AXILiteS_ARVALID, s_axi_AXILiteS_ARREADY, 
  s_axi_AXILiteS_RDATA, s_axi_AXILiteS_RRESP, s_axi_AXILiteS_RVALID, 
  s_axi_AXILiteS_RREADY, ap_clk, ap_rst_n, interrupt, Real_r_Clk_A, Real_r_Rst_A, Real_r_EN_A, 
  Real_r_WEN_A, Real_r_Addr_A, Real_r_Din_A, Real_r_Dout_A, Real_r_Clk_B, Real_r_Rst_B, 
  Real_r_EN_B, Real_r_WEN_B, Real_r_Addr_B, Real_r_Din_B, Real_r_Dout_B, Imag_Clk_A, 
  Imag_Rst_A, Imag_EN_A, Imag_WEN_A, Imag_Addr_A, Imag_Din_A, Imag_Dout_A, Imag_Clk_B, 
  Imag_Rst_B, Imag_EN_B, Imag_WEN_B, Imag_Addr_B, Imag_Din_B, Imag_Dout_B)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AXILiteS_AWADDR[3:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[3:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,Real_r_Clk_A,Real_r_Rst_A,Real_r_EN_A,Real_r_WEN_A[3:0],Real_r_Addr_A[31:0],Real_r_Din_A[31:0],Real_r_Dout_A[31:0],Real_r_Clk_B,Real_r_Rst_B,Real_r_EN_B,Real_r_WEN_B[3:0],Real_r_Addr_B[31:0],Real_r_Din_B[31:0],Real_r_Dout_B[31:0],Imag_Clk_A,Imag_Rst_A,Imag_EN_A,Imag_WEN_A[3:0],Imag_Addr_A[31:0],Imag_Din_A[31:0],Imag_Dout_A[31:0],Imag_Clk_B,Imag_Rst_B,Imag_EN_B,Imag_WEN_B[3:0],Imag_Addr_B[31:0],Imag_Din_B[31:0],Imag_Dout_B[31:0]" */;
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
  output Real_r_Clk_A;
  output Real_r_Rst_A;
  output Real_r_EN_A;
  output [3:0]Real_r_WEN_A;
  output [31:0]Real_r_Addr_A;
  output [31:0]Real_r_Din_A;
  input [31:0]Real_r_Dout_A;
  output Real_r_Clk_B;
  output Real_r_Rst_B;
  output Real_r_EN_B;
  output [3:0]Real_r_WEN_B;
  output [31:0]Real_r_Addr_B;
  output [31:0]Real_r_Din_B;
  input [31:0]Real_r_Dout_B;
  output Imag_Clk_A;
  output Imag_Rst_A;
  output Imag_EN_A;
  output [3:0]Imag_WEN_A;
  output [31:0]Imag_Addr_A;
  output [31:0]Imag_Din_A;
  input [31:0]Imag_Dout_A;
  output Imag_Clk_B;
  output Imag_Rst_B;
  output Imag_EN_B;
  output [3:0]Imag_WEN_B;
  output [31:0]Imag_Addr_B;
  output [31:0]Imag_Din_B;
  input [31:0]Imag_Dout_B;
endmodule
