//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
//Date        : Wed Oct 28 22:11:29 2020
//Host        : DESKTOP-PUKS9CF running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (Imag_PORTA_addr,
    Imag_PORTA_clk,
    Imag_PORTA_din,
    Imag_PORTA_dout,
    Imag_PORTA_en,
    Imag_PORTA_rst,
    Imag_PORTA_we,
    Real_r_PORTA_addr,
    Real_r_PORTA_clk,
    Real_r_PORTA_din,
    Real_r_PORTA_dout,
    Real_r_PORTA_en,
    Real_r_PORTA_rst,
    Real_r_PORTA_we,
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
  output [31:0]Imag_PORTA_addr;
  output Imag_PORTA_clk;
  output [31:0]Imag_PORTA_din;
  input [31:0]Imag_PORTA_dout;
  output Imag_PORTA_en;
  output Imag_PORTA_rst;
  output [3:0]Imag_PORTA_we;
  output [31:0]Real_r_PORTA_addr;
  output Real_r_PORTA_clk;
  output [31:0]Real_r_PORTA_din;
  input [31:0]Real_r_PORTA_dout;
  output Real_r_PORTA_en;
  output Real_r_PORTA_rst;
  output [3:0]Real_r_PORTA_we;
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

  wire [31:0]Imag_PORTA_addr;
  wire Imag_PORTA_clk;
  wire [31:0]Imag_PORTA_din;
  wire [31:0]Imag_PORTA_dout;
  wire Imag_PORTA_en;
  wire Imag_PORTA_rst;
  wire [3:0]Imag_PORTA_we;
  wire [31:0]Real_r_PORTA_addr;
  wire Real_r_PORTA_clk;
  wire [31:0]Real_r_PORTA_din;
  wire [31:0]Real_r_PORTA_dout;
  wire Real_r_PORTA_en;
  wire Real_r_PORTA_rst;
  wire [3:0]Real_r_PORTA_we;
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
       (.Imag_PORTA_addr(Imag_PORTA_addr),
        .Imag_PORTA_clk(Imag_PORTA_clk),
        .Imag_PORTA_din(Imag_PORTA_din),
        .Imag_PORTA_dout(Imag_PORTA_dout),
        .Imag_PORTA_en(Imag_PORTA_en),
        .Imag_PORTA_rst(Imag_PORTA_rst),
        .Imag_PORTA_we(Imag_PORTA_we),
        .Real_r_PORTA_addr(Real_r_PORTA_addr),
        .Real_r_PORTA_clk(Real_r_PORTA_clk),
        .Real_r_PORTA_din(Real_r_PORTA_din),
        .Real_r_PORTA_dout(Real_r_PORTA_dout),
        .Real_r_PORTA_en(Real_r_PORTA_en),
        .Real_r_PORTA_rst(Real_r_PORTA_rst),
        .Real_r_PORTA_we(Real_r_PORTA_we),
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
