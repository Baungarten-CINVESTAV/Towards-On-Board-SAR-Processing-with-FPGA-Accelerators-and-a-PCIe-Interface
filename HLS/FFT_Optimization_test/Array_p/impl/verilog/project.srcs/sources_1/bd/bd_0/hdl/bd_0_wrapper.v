//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
//Date        : Mon Nov  9 17:30:01 2020
//Host        : DESKTOP-PUKS9CF running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (Imag_0_address0,
    Imag_0_ce0,
    Imag_0_d0,
    Imag_0_q0,
    Imag_0_we0,
    Imag_1_address0,
    Imag_1_ce0,
    Imag_1_d0,
    Imag_1_q0,
    Imag_1_we0,
    Imag_2_address0,
    Imag_2_ce0,
    Imag_2_d0,
    Imag_2_q0,
    Imag_2_we0,
    Imag_3_address0,
    Imag_3_ce0,
    Imag_3_d0,
    Imag_3_q0,
    Imag_3_we0,
    Real_0_address0,
    Real_0_ce0,
    Real_0_d0,
    Real_0_q0,
    Real_0_we0,
    Real_1_address0,
    Real_1_ce0,
    Real_1_d0,
    Real_1_q0,
    Real_1_we0,
    Real_2_address0,
    Real_2_ce0,
    Real_2_d0,
    Real_2_q0,
    Real_2_we0,
    Real_3_address0,
    Real_3_ce0,
    Real_3_d0,
    Real_3_q0,
    Real_3_we0,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axi_AXILiteS_araddr,
    s_axi_AXILiteS_arready,
    s_axi_AXILiteS_arvalid,
    s_axi_AXILiteS_awaddr,
    s_axi_AXILiteS_awready,
    s_axi_AXILiteS_awvalid,
    s_axi_AXILiteS_bready,
    s_axi_AXILiteS_bresp,
    s_axi_AXILiteS_bvalid,
    s_axi_AXILiteS_rdata,
    s_axi_AXILiteS_rready,
    s_axi_AXILiteS_rresp,
    s_axi_AXILiteS_rvalid,
    s_axi_AXILiteS_wdata,
    s_axi_AXILiteS_wready,
    s_axi_AXILiteS_wstrb,
    s_axi_AXILiteS_wvalid);
  output [7:0]Imag_0_address0;
  output Imag_0_ce0;
  output [31:0]Imag_0_d0;
  input [31:0]Imag_0_q0;
  output Imag_0_we0;
  output [7:0]Imag_1_address0;
  output Imag_1_ce0;
  output [31:0]Imag_1_d0;
  input [31:0]Imag_1_q0;
  output Imag_1_we0;
  output [7:0]Imag_2_address0;
  output Imag_2_ce0;
  output [31:0]Imag_2_d0;
  input [31:0]Imag_2_q0;
  output Imag_2_we0;
  output [7:0]Imag_3_address0;
  output Imag_3_ce0;
  output [31:0]Imag_3_d0;
  input [31:0]Imag_3_q0;
  output Imag_3_we0;
  output [7:0]Real_0_address0;
  output Real_0_ce0;
  output [31:0]Real_0_d0;
  input [31:0]Real_0_q0;
  output Real_0_we0;
  output [7:0]Real_1_address0;
  output Real_1_ce0;
  output [31:0]Real_1_d0;
  input [31:0]Real_1_q0;
  output Real_1_we0;
  output [7:0]Real_2_address0;
  output Real_2_ce0;
  output [31:0]Real_2_d0;
  input [31:0]Real_2_q0;
  output Real_2_we0;
  output [7:0]Real_3_address0;
  output Real_3_ce0;
  output [31:0]Real_3_d0;
  input [31:0]Real_3_q0;
  output Real_3_we0;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input [3:0]s_axi_AXILiteS_araddr;
  output s_axi_AXILiteS_arready;
  input s_axi_AXILiteS_arvalid;
  input [3:0]s_axi_AXILiteS_awaddr;
  output s_axi_AXILiteS_awready;
  input s_axi_AXILiteS_awvalid;
  input s_axi_AXILiteS_bready;
  output [1:0]s_axi_AXILiteS_bresp;
  output s_axi_AXILiteS_bvalid;
  output [31:0]s_axi_AXILiteS_rdata;
  input s_axi_AXILiteS_rready;
  output [1:0]s_axi_AXILiteS_rresp;
  output s_axi_AXILiteS_rvalid;
  input [31:0]s_axi_AXILiteS_wdata;
  output s_axi_AXILiteS_wready;
  input [3:0]s_axi_AXILiteS_wstrb;
  input s_axi_AXILiteS_wvalid;

  wire [7:0]Imag_0_address0;
  wire Imag_0_ce0;
  wire [31:0]Imag_0_d0;
  wire [31:0]Imag_0_q0;
  wire Imag_0_we0;
  wire [7:0]Imag_1_address0;
  wire Imag_1_ce0;
  wire [31:0]Imag_1_d0;
  wire [31:0]Imag_1_q0;
  wire Imag_1_we0;
  wire [7:0]Imag_2_address0;
  wire Imag_2_ce0;
  wire [31:0]Imag_2_d0;
  wire [31:0]Imag_2_q0;
  wire Imag_2_we0;
  wire [7:0]Imag_3_address0;
  wire Imag_3_ce0;
  wire [31:0]Imag_3_d0;
  wire [31:0]Imag_3_q0;
  wire Imag_3_we0;
  wire [7:0]Real_0_address0;
  wire Real_0_ce0;
  wire [31:0]Real_0_d0;
  wire [31:0]Real_0_q0;
  wire Real_0_we0;
  wire [7:0]Real_1_address0;
  wire Real_1_ce0;
  wire [31:0]Real_1_d0;
  wire [31:0]Real_1_q0;
  wire Real_1_we0;
  wire [7:0]Real_2_address0;
  wire Real_2_ce0;
  wire [31:0]Real_2_d0;
  wire [31:0]Real_2_q0;
  wire Real_2_we0;
  wire [7:0]Real_3_address0;
  wire Real_3_ce0;
  wire [31:0]Real_3_d0;
  wire [31:0]Real_3_q0;
  wire Real_3_we0;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [3:0]s_axi_AXILiteS_araddr;
  wire s_axi_AXILiteS_arready;
  wire s_axi_AXILiteS_arvalid;
  wire [3:0]s_axi_AXILiteS_awaddr;
  wire s_axi_AXILiteS_awready;
  wire s_axi_AXILiteS_awvalid;
  wire s_axi_AXILiteS_bready;
  wire [1:0]s_axi_AXILiteS_bresp;
  wire s_axi_AXILiteS_bvalid;
  wire [31:0]s_axi_AXILiteS_rdata;
  wire s_axi_AXILiteS_rready;
  wire [1:0]s_axi_AXILiteS_rresp;
  wire s_axi_AXILiteS_rvalid;
  wire [31:0]s_axi_AXILiteS_wdata;
  wire s_axi_AXILiteS_wready;
  wire [3:0]s_axi_AXILiteS_wstrb;
  wire s_axi_AXILiteS_wvalid;

  bd_0 bd_0_i
       (.Imag_0_address0(Imag_0_address0),
        .Imag_0_ce0(Imag_0_ce0),
        .Imag_0_d0(Imag_0_d0),
        .Imag_0_q0(Imag_0_q0),
        .Imag_0_we0(Imag_0_we0),
        .Imag_1_address0(Imag_1_address0),
        .Imag_1_ce0(Imag_1_ce0),
        .Imag_1_d0(Imag_1_d0),
        .Imag_1_q0(Imag_1_q0),
        .Imag_1_we0(Imag_1_we0),
        .Imag_2_address0(Imag_2_address0),
        .Imag_2_ce0(Imag_2_ce0),
        .Imag_2_d0(Imag_2_d0),
        .Imag_2_q0(Imag_2_q0),
        .Imag_2_we0(Imag_2_we0),
        .Imag_3_address0(Imag_3_address0),
        .Imag_3_ce0(Imag_3_ce0),
        .Imag_3_d0(Imag_3_d0),
        .Imag_3_q0(Imag_3_q0),
        .Imag_3_we0(Imag_3_we0),
        .Real_0_address0(Real_0_address0),
        .Real_0_ce0(Real_0_ce0),
        .Real_0_d0(Real_0_d0),
        .Real_0_q0(Real_0_q0),
        .Real_0_we0(Real_0_we0),
        .Real_1_address0(Real_1_address0),
        .Real_1_ce0(Real_1_ce0),
        .Real_1_d0(Real_1_d0),
        .Real_1_q0(Real_1_q0),
        .Real_1_we0(Real_1_we0),
        .Real_2_address0(Real_2_address0),
        .Real_2_ce0(Real_2_ce0),
        .Real_2_d0(Real_2_d0),
        .Real_2_q0(Real_2_q0),
        .Real_2_we0(Real_2_we0),
        .Real_3_address0(Real_3_address0),
        .Real_3_ce0(Real_3_ce0),
        .Real_3_d0(Real_3_d0),
        .Real_3_q0(Real_3_q0),
        .Real_3_we0(Real_3_we0),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_AXILiteS_araddr(s_axi_AXILiteS_araddr),
        .s_axi_AXILiteS_arready(s_axi_AXILiteS_arready),
        .s_axi_AXILiteS_arvalid(s_axi_AXILiteS_arvalid),
        .s_axi_AXILiteS_awaddr(s_axi_AXILiteS_awaddr),
        .s_axi_AXILiteS_awready(s_axi_AXILiteS_awready),
        .s_axi_AXILiteS_awvalid(s_axi_AXILiteS_awvalid),
        .s_axi_AXILiteS_bready(s_axi_AXILiteS_bready),
        .s_axi_AXILiteS_bresp(s_axi_AXILiteS_bresp),
        .s_axi_AXILiteS_bvalid(s_axi_AXILiteS_bvalid),
        .s_axi_AXILiteS_rdata(s_axi_AXILiteS_rdata),
        .s_axi_AXILiteS_rready(s_axi_AXILiteS_rready),
        .s_axi_AXILiteS_rresp(s_axi_AXILiteS_rresp),
        .s_axi_AXILiteS_rvalid(s_axi_AXILiteS_rvalid),
        .s_axi_AXILiteS_wdata(s_axi_AXILiteS_wdata),
        .s_axi_AXILiteS_wready(s_axi_AXILiteS_wready),
        .s_axi_AXILiteS_wstrb(s_axi_AXILiteS_wstrb),
        .s_axi_AXILiteS_wvalid(s_axi_AXILiteS_wvalid));
endmodule
