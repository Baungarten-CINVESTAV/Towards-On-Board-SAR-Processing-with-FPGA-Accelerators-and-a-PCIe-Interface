-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Mon Nov  9 17:31:33 2020
-- Host        : DESKTOP-PUKS9CF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    Real_0_ce0 : out STD_LOGIC;
    Real_0_we0 : out STD_LOGIC;
    Real_1_ce0 : out STD_LOGIC;
    Real_1_we0 : out STD_LOGIC;
    Real_2_ce0 : out STD_LOGIC;
    Real_2_we0 : out STD_LOGIC;
    Real_3_ce0 : out STD_LOGIC;
    Real_3_we0 : out STD_LOGIC;
    Imag_0_ce0 : out STD_LOGIC;
    Imag_0_we0 : out STD_LOGIC;
    Imag_1_ce0 : out STD_LOGIC;
    Imag_1_we0 : out STD_LOGIC;
    Imag_2_ce0 : out STD_LOGIC;
    Imag_2_we0 : out STD_LOGIC;
    Imag_3_ce0 : out STD_LOGIC;
    Imag_3_we0 : out STD_LOGIC;
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    Real_0_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Real_0_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_0_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_1_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Real_1_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_1_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_2_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Real_2_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_2_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_3_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Real_3_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_3_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_0_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Imag_0_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_0_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_1_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Imag_1_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_1_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_2_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Imag_2_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_2_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_3_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Imag_3_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_3_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Real_0_ce0,Real_0_we0,Real_1_ce0,Real_1_we0,Real_2_ce0,Real_2_we0,Real_3_ce0,Real_3_we0,Imag_0_ce0,Imag_0_we0,Imag_1_ce0,Imag_1_we0,Imag_2_ce0,Imag_2_we0,Imag_3_ce0,Imag_3_we0,s_axi_AXILiteS_AWADDR[3:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[3:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,Real_0_address0[7:0],Real_0_d0[31:0],Real_0_q0[31:0],Real_1_address0[7:0],Real_1_d0[31:0],Real_1_q0[31:0],Real_2_address0[7:0],Real_2_d0[31:0],Real_2_q0[31:0],Real_3_address0[7:0],Real_3_d0[31:0],Real_3_q0[31:0],Imag_0_address0[7:0],Imag_0_d0[31:0],Imag_0_q0[31:0],Imag_1_address0[7:0],Imag_1_d0[31:0],Imag_1_q0[31:0],Imag_2_address0[7:0],Imag_2_d0[31:0],Imag_2_q0[31:0],Imag_3_address0[7:0],Imag_3_d0[31:0],Imag_3_q0[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Reorder_fft,Vivado 2019.1.3";
begin
end;
