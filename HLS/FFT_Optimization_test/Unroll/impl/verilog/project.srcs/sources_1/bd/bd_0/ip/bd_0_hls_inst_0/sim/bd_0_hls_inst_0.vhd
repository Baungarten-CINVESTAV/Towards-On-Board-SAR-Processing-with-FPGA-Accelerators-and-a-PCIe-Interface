-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:Reorder_fft:1.0
-- IP Revision: 2011091527

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bd_0_hls_inst_0 IS
  PORT (
    s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
    s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_AXILiteS_WVALID : IN STD_LOGIC;
    s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_BREADY : IN STD_LOGIC;
    s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
    s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    Real_r_Clk_A : OUT STD_LOGIC;
    Real_r_Rst_A : OUT STD_LOGIC;
    Real_r_EN_A : OUT STD_LOGIC;
    Real_r_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Real_r_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Real_r_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Real_r_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imag_Clk_A : OUT STD_LOGIC;
    Imag_Rst_A : OUT STD_LOGIC;
    Imag_EN_A : OUT STD_LOGIC;
    Imag_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Imag_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imag_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imag_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END bd_0_hls_inst_0;

ARCHITECTURE bd_0_hls_inst_0_arch OF bd_0_hls_inst_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Reorder_fft IS
    GENERIC (
      C_S_AXI_AXILITES_ADDR_WIDTH : INTEGER;
      C_S_AXI_AXILITES_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
      s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
      s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_AXILiteS_WVALID : IN STD_LOGIC;
      s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
      s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
      s_axi_AXILiteS_BREADY : IN STD_LOGIC;
      s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
      s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
      s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
      s_axi_AXILiteS_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      Real_r_Clk_A : OUT STD_LOGIC;
      Real_r_Rst_A : OUT STD_LOGIC;
      Real_r_EN_A : OUT STD_LOGIC;
      Real_r_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      Real_r_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Real_r_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Real_r_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      Imag_Clk_A : OUT STD_LOGIC;
      Imag_Rst_A : OUT STD_LOGIC;
      Imag_EN_A : OUT STD_LOGIC;
      Imag_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      Imag_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Imag_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Imag_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT Reorder_fft;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF Imag_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Imag_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Imag_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Imag_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Imag_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Imag_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Imag_PORTA RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_Clk_A: SIGNAL IS "XIL_INTERFACENAME Imag_PORTA, MEM_WIDTH 32, MEM_SIZE 4, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Imag_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF Real_r_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Real_r_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF Real_r_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Real_r_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF Real_r_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Real_r_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF Real_r_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Real_r_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF Real_r_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Real_r_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF Real_r_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Real_r_PORTA RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_r_Clk_A: SIGNAL IS "XIL_INTERFACENAME Real_r_PORTA, MEM_WIDTH 32, MEM_SIZE 4, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF Real_r_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 Real_r_PORTA CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_AXILiteS_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THR" & 
"EADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR";
BEGIN
  U0 : Reorder_fft
    GENERIC MAP (
      C_S_AXI_AXILITES_ADDR_WIDTH => 4,
      C_S_AXI_AXILITES_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_AXILiteS_AWADDR => s_axi_AXILiteS_AWADDR,
      s_axi_AXILiteS_AWVALID => s_axi_AXILiteS_AWVALID,
      s_axi_AXILiteS_AWREADY => s_axi_AXILiteS_AWREADY,
      s_axi_AXILiteS_WDATA => s_axi_AXILiteS_WDATA,
      s_axi_AXILiteS_WSTRB => s_axi_AXILiteS_WSTRB,
      s_axi_AXILiteS_WVALID => s_axi_AXILiteS_WVALID,
      s_axi_AXILiteS_WREADY => s_axi_AXILiteS_WREADY,
      s_axi_AXILiteS_BRESP => s_axi_AXILiteS_BRESP,
      s_axi_AXILiteS_BVALID => s_axi_AXILiteS_BVALID,
      s_axi_AXILiteS_BREADY => s_axi_AXILiteS_BREADY,
      s_axi_AXILiteS_ARADDR => s_axi_AXILiteS_ARADDR,
      s_axi_AXILiteS_ARVALID => s_axi_AXILiteS_ARVALID,
      s_axi_AXILiteS_ARREADY => s_axi_AXILiteS_ARREADY,
      s_axi_AXILiteS_RDATA => s_axi_AXILiteS_RDATA,
      s_axi_AXILiteS_RRESP => s_axi_AXILiteS_RRESP,
      s_axi_AXILiteS_RVALID => s_axi_AXILiteS_RVALID,
      s_axi_AXILiteS_RREADY => s_axi_AXILiteS_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      Real_r_Clk_A => Real_r_Clk_A,
      Real_r_Rst_A => Real_r_Rst_A,
      Real_r_EN_A => Real_r_EN_A,
      Real_r_WEN_A => Real_r_WEN_A,
      Real_r_Addr_A => Real_r_Addr_A,
      Real_r_Din_A => Real_r_Din_A,
      Real_r_Dout_A => Real_r_Dout_A,
      Imag_Clk_A => Imag_Clk_A,
      Imag_Rst_A => Imag_Rst_A,
      Imag_EN_A => Imag_EN_A,
      Imag_WEN_A => Imag_WEN_A,
      Imag_Addr_A => Imag_Addr_A,
      Imag_Din_A => Imag_Din_A,
      Imag_Dout_A => Imag_Dout_A
    );
END bd_0_hls_inst_0_arch;
