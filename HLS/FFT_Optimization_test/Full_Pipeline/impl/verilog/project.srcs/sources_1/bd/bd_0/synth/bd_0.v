//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
//Date        : Wed Oct 28 22:11:29 2020
//Host        : DESKTOP-PUKS9CF running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Imag_PORTA " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_PORTA, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 4, MEM_WIDTH 32, READ_LATENCY 1" *) output [31:0]Imag_PORTA_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Imag_PORTA " *) output Imag_PORTA_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Imag_PORTA " *) output [31:0]Imag_PORTA_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Imag_PORTA " *) input [31:0]Imag_PORTA_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Imag_PORTA " *) output Imag_PORTA_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Imag_PORTA " *) output Imag_PORTA_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Imag_PORTA " *) output [3:0]Imag_PORTA_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Real_r_PORTA " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_r_PORTA, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 4, MEM_WIDTH 32, READ_LATENCY 1" *) output [31:0]Real_r_PORTA_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Real_r_PORTA " *) output Real_r_PORTA_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Real_r_PORTA " *) output [31:0]Real_r_PORTA_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Real_r_PORTA " *) input [31:0]Real_r_PORTA_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Real_r_PORTA " *) output Real_r_PORTA_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Real_r_PORTA " *) output Real_r_PORTA_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 Real_r_PORTA " *) output [3:0]Real_r_PORTA_we;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axi_AXILiteS, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [3:0]s_axi_AXILiteS_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) output s_axi_AXILiteS_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) input s_axi_AXILiteS_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) input [3:0]s_axi_AXILiteS_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) output s_axi_AXILiteS_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) input s_axi_AXILiteS_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) input s_axi_AXILiteS_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) output [1:0]s_axi_AXILiteS_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) output s_axi_AXILiteS_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) output [31:0]s_axi_AXILiteS_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) input s_axi_AXILiteS_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) output [1:0]s_axi_AXILiteS_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) output s_axi_AXILiteS_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) input [31:0]s_axi_AXILiteS_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) output s_axi_AXILiteS_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) input [3:0]s_axi_AXILiteS_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS " *) input s_axi_AXILiteS_wvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [31:0]hls_inst_Imag_PORTA_ADDR;
  wire hls_inst_Imag_PORTA_CLK;
  wire [31:0]hls_inst_Imag_PORTA_DIN;
  wire [31:0]hls_inst_Imag_PORTA_DOUT;
  wire hls_inst_Imag_PORTA_EN;
  wire hls_inst_Imag_PORTA_RST;
  wire [3:0]hls_inst_Imag_PORTA_WE;
  wire [31:0]hls_inst_Real_r_PORTA_ADDR;
  wire hls_inst_Real_r_PORTA_CLK;
  wire [31:0]hls_inst_Real_r_PORTA_DIN;
  wire [31:0]hls_inst_Real_r_PORTA_DOUT;
  wire hls_inst_Real_r_PORTA_EN;
  wire hls_inst_Real_r_PORTA_RST;
  wire [3:0]hls_inst_Real_r_PORTA_WE;
  wire hls_inst_interrupt;
  wire [3:0]s_axi_AXILiteS_0_1_ARADDR;
  wire s_axi_AXILiteS_0_1_ARREADY;
  wire s_axi_AXILiteS_0_1_ARVALID;
  wire [3:0]s_axi_AXILiteS_0_1_AWADDR;
  wire s_axi_AXILiteS_0_1_AWREADY;
  wire s_axi_AXILiteS_0_1_AWVALID;
  wire s_axi_AXILiteS_0_1_BREADY;
  wire [1:0]s_axi_AXILiteS_0_1_BRESP;
  wire s_axi_AXILiteS_0_1_BVALID;
  wire [31:0]s_axi_AXILiteS_0_1_RDATA;
  wire s_axi_AXILiteS_0_1_RREADY;
  wire [1:0]s_axi_AXILiteS_0_1_RRESP;
  wire s_axi_AXILiteS_0_1_RVALID;
  wire [31:0]s_axi_AXILiteS_0_1_WDATA;
  wire s_axi_AXILiteS_0_1_WREADY;
  wire [3:0]s_axi_AXILiteS_0_1_WSTRB;
  wire s_axi_AXILiteS_0_1_WVALID;

  assign Imag_PORTA_addr[31:0] = hls_inst_Imag_PORTA_ADDR;
  assign Imag_PORTA_clk = hls_inst_Imag_PORTA_CLK;
  assign Imag_PORTA_din[31:0] = hls_inst_Imag_PORTA_DIN;
  assign Imag_PORTA_en = hls_inst_Imag_PORTA_EN;
  assign Imag_PORTA_rst = hls_inst_Imag_PORTA_RST;
  assign Imag_PORTA_we[3:0] = hls_inst_Imag_PORTA_WE;
  assign Real_r_PORTA_addr[31:0] = hls_inst_Real_r_PORTA_ADDR;
  assign Real_r_PORTA_clk = hls_inst_Real_r_PORTA_CLK;
  assign Real_r_PORTA_din[31:0] = hls_inst_Real_r_PORTA_DIN;
  assign Real_r_PORTA_en = hls_inst_Real_r_PORTA_EN;
  assign Real_r_PORTA_rst = hls_inst_Real_r_PORTA_RST;
  assign Real_r_PORTA_we[3:0] = hls_inst_Real_r_PORTA_WE;
  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_Imag_PORTA_DOUT = Imag_PORTA_dout[31:0];
  assign hls_inst_Real_r_PORTA_DOUT = Real_r_PORTA_dout[31:0];
  assign interrupt = hls_inst_interrupt;
  assign s_axi_AXILiteS_0_1_ARADDR = s_axi_AXILiteS_araddr[3:0];
  assign s_axi_AXILiteS_0_1_ARVALID = s_axi_AXILiteS_arvalid;
  assign s_axi_AXILiteS_0_1_AWADDR = s_axi_AXILiteS_awaddr[3:0];
  assign s_axi_AXILiteS_0_1_AWVALID = s_axi_AXILiteS_awvalid;
  assign s_axi_AXILiteS_0_1_BREADY = s_axi_AXILiteS_bready;
  assign s_axi_AXILiteS_0_1_RREADY = s_axi_AXILiteS_rready;
  assign s_axi_AXILiteS_0_1_WDATA = s_axi_AXILiteS_wdata[31:0];
  assign s_axi_AXILiteS_0_1_WSTRB = s_axi_AXILiteS_wstrb[3:0];
  assign s_axi_AXILiteS_0_1_WVALID = s_axi_AXILiteS_wvalid;
  assign s_axi_AXILiteS_arready = s_axi_AXILiteS_0_1_ARREADY;
  assign s_axi_AXILiteS_awready = s_axi_AXILiteS_0_1_AWREADY;
  assign s_axi_AXILiteS_bresp[1:0] = s_axi_AXILiteS_0_1_BRESP;
  assign s_axi_AXILiteS_bvalid = s_axi_AXILiteS_0_1_BVALID;
  assign s_axi_AXILiteS_rdata[31:0] = s_axi_AXILiteS_0_1_RDATA;
  assign s_axi_AXILiteS_rresp[1:0] = s_axi_AXILiteS_0_1_RRESP;
  assign s_axi_AXILiteS_rvalid = s_axi_AXILiteS_0_1_RVALID;
  assign s_axi_AXILiteS_wready = s_axi_AXILiteS_0_1_WREADY;
  bd_0_hls_inst_0 hls_inst
       (.Imag_Addr_A(hls_inst_Imag_PORTA_ADDR),
        .Imag_Clk_A(hls_inst_Imag_PORTA_CLK),
        .Imag_Din_A(hls_inst_Imag_PORTA_DIN),
        .Imag_Dout_A(hls_inst_Imag_PORTA_DOUT),
        .Imag_EN_A(hls_inst_Imag_PORTA_EN),
        .Imag_Rst_A(hls_inst_Imag_PORTA_RST),
        .Imag_WEN_A(hls_inst_Imag_PORTA_WE),
        .Real_r_Addr_A(hls_inst_Real_r_PORTA_ADDR),
        .Real_r_Clk_A(hls_inst_Real_r_PORTA_CLK),
        .Real_r_Din_A(hls_inst_Real_r_PORTA_DIN),
        .Real_r_Dout_A(hls_inst_Real_r_PORTA_DOUT),
        .Real_r_EN_A(hls_inst_Real_r_PORTA_EN),
        .Real_r_Rst_A(hls_inst_Real_r_PORTA_RST),
        .Real_r_WEN_A(hls_inst_Real_r_PORTA_WE),
        .ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .interrupt(hls_inst_interrupt),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_0_1_ARADDR),
        .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_0_1_ARREADY),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_0_1_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_0_1_AWADDR),
        .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_0_1_AWREADY),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_0_1_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_0_1_BREADY),
        .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_0_1_BRESP),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_0_1_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_0_1_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_0_1_RREADY),
        .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_0_1_RRESP),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_0_1_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_0_1_WDATA),
        .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_0_1_WREADY),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_0_1_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_0_1_WVALID));
endmodule
