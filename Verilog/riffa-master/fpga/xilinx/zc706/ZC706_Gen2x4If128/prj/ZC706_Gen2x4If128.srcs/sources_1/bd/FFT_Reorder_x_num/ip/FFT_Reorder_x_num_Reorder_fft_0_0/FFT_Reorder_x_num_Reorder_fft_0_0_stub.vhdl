-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Mar 29 07:10:17 2021
-- Host        : DESKTOP-9SQCBTG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/EMILIO/Desktop/Nueva
--               carpeta/riffa-master_6_v3_3/fpga/xilinx/zc706/ZC706_Gen2x4If128/prj/ZC706_Gen2x4If128.srcs/sources_1/bd/FFT_Reorder_x_num/ip/FFT_Reorder_x_num_Reorder_fft_0_0/FFT_Reorder_x_num_Reorder_fft_0_0_stub.vhdl}
-- Design      : FFT_Reorder_x_num_Reorder_fft_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FFT_Reorder_x_num_Reorder_fft_0_0 is
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
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    num_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_0_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Real_0_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_0_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_1_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Real_1_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_1_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_2_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Real_2_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_2_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_3_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Real_3_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Real_3_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_0_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Imag_0_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_0_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_1_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Imag_1_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_1_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_2_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Imag_2_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_2_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_3_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Imag_3_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Imag_3_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end FFT_Reorder_x_num_Reorder_fft_0_0;

architecture stub of FFT_Reorder_x_num_Reorder_fft_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Real_0_ce0,Real_0_we0,Real_1_ce0,Real_1_we0,Real_2_ce0,Real_2_we0,Real_3_ce0,Real_3_we0,Imag_0_ce0,Imag_0_we0,Imag_1_ce0,Imag_1_we0,Imag_2_ce0,Imag_2_we0,Imag_3_ce0,Imag_3_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,num_word[31:0],Real_0_address0[11:0],Real_0_d0[31:0],Real_0_q0[31:0],Real_1_address0[11:0],Real_1_d0[31:0],Real_1_q0[31:0],Real_2_address0[11:0],Real_2_d0[31:0],Real_2_q0[31:0],Real_3_address0[11:0],Real_3_d0[31:0],Real_3_q0[31:0],Imag_0_address0[11:0],Imag_0_d0[31:0],Imag_0_q0[31:0],Imag_1_address0[11:0],Imag_1_d0[31:0],Imag_1_q0[31:0],Imag_2_address0[11:0],Imag_2_d0[31:0],Imag_2_q0[31:0],Imag_3_address0[11:0],Imag_3_d0[31:0],Imag_3_q0[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Reorder_fft,Vivado 2018.3";
begin
end;
