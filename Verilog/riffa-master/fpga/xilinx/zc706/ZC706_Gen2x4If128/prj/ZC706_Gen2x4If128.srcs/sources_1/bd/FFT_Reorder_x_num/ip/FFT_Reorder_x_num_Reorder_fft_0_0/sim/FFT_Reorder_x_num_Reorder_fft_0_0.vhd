-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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
-- IP Revision: 2103282214

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY FFT_Reorder_x_num_Reorder_fft_0_0 IS
  PORT (
    Real_0_ce0 : OUT STD_LOGIC;
    Real_0_we0 : OUT STD_LOGIC;
    Real_1_ce0 : OUT STD_LOGIC;
    Real_1_we0 : OUT STD_LOGIC;
    Real_2_ce0 : OUT STD_LOGIC;
    Real_2_we0 : OUT STD_LOGIC;
    Real_3_ce0 : OUT STD_LOGIC;
    Real_3_we0 : OUT STD_LOGIC;
    Imag_0_ce0 : OUT STD_LOGIC;
    Imag_0_we0 : OUT STD_LOGIC;
    Imag_1_ce0 : OUT STD_LOGIC;
    Imag_1_we0 : OUT STD_LOGIC;
    Imag_2_ce0 : OUT STD_LOGIC;
    Imag_2_we0 : OUT STD_LOGIC;
    Imag_3_ce0 : OUT STD_LOGIC;
    Imag_3_we0 : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    num_word : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Real_0_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    Real_0_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Real_0_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Real_1_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    Real_1_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Real_1_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Real_2_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    Real_2_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Real_2_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Real_3_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    Real_3_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Real_3_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imag_0_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    Imag_0_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imag_0_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imag_1_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    Imag_1_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imag_1_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imag_2_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    Imag_2_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imag_2_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imag_3_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    Imag_3_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Imag_3_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END FFT_Reorder_x_num_Reorder_fft_0_0;

ARCHITECTURE FFT_Reorder_x_num_Reorder_fft_0_0_arch OF FFT_Reorder_x_num_Reorder_fft_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF FFT_Reorder_x_num_Reorder_fft_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Reorder_fft IS
    PORT (
      Real_0_ce0 : OUT STD_LOGIC;
      Real_0_we0 : OUT STD_LOGIC;
      Real_1_ce0 : OUT STD_LOGIC;
      Real_1_we0 : OUT STD_LOGIC;
      Real_2_ce0 : OUT STD_LOGIC;
      Real_2_we0 : OUT STD_LOGIC;
      Real_3_ce0 : OUT STD_LOGIC;
      Real_3_we0 : OUT STD_LOGIC;
      Imag_0_ce0 : OUT STD_LOGIC;
      Imag_0_we0 : OUT STD_LOGIC;
      Imag_1_ce0 : OUT STD_LOGIC;
      Imag_1_we0 : OUT STD_LOGIC;
      Imag_2_ce0 : OUT STD_LOGIC;
      Imag_2_we0 : OUT STD_LOGIC;
      Imag_3_ce0 : OUT STD_LOGIC;
      Imag_3_we0 : OUT STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      num_word : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      Real_0_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      Real_0_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Real_0_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      Real_1_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      Real_1_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Real_1_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      Real_2_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      Real_2_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Real_2_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      Real_3_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      Real_3_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Real_3_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      Imag_0_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      Imag_0_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Imag_0_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      Imag_1_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      Imag_1_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Imag_1_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      Imag_2_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      Imag_2_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Imag_2_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      Imag_3_address0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      Imag_3_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Imag_3_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT Reorder_fft;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF FFT_Reorder_x_num_Reorder_fft_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_3_q0: SIGNAL IS "XIL_INTERFACENAME Imag_3_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_3_q0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_3_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_3_d0: SIGNAL IS "XIL_INTERFACENAME Imag_3_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_3_d0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_3_d0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_3_address0: SIGNAL IS "XIL_INTERFACENAME Imag_3_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_3_address0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_3_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_2_q0: SIGNAL IS "XIL_INTERFACENAME Imag_2_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_2_q0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_2_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_2_d0: SIGNAL IS "XIL_INTERFACENAME Imag_2_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_2_d0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_2_d0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_2_address0: SIGNAL IS "XIL_INTERFACENAME Imag_2_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_2_address0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_2_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_1_q0: SIGNAL IS "XIL_INTERFACENAME Imag_1_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_1_q0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_1_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_1_d0: SIGNAL IS "XIL_INTERFACENAME Imag_1_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_1_d0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_1_d0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_1_address0: SIGNAL IS "XIL_INTERFACENAME Imag_1_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_1_address0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_1_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_0_q0: SIGNAL IS "XIL_INTERFACENAME Imag_0_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_0_q0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_0_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_0_d0: SIGNAL IS "XIL_INTERFACENAME Imag_0_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_0_d0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_0_d0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Imag_0_address0: SIGNAL IS "XIL_INTERFACENAME Imag_0_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Imag_0_address0: SIGNAL IS "xilinx.com:signal:data:1.0 Imag_0_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_3_q0: SIGNAL IS "XIL_INTERFACENAME Real_3_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_3_q0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_3_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_3_d0: SIGNAL IS "XIL_INTERFACENAME Real_3_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_3_d0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_3_d0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_3_address0: SIGNAL IS "XIL_INTERFACENAME Real_3_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_3_address0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_3_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_2_q0: SIGNAL IS "XIL_INTERFACENAME Real_2_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_2_q0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_2_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_2_d0: SIGNAL IS "XIL_INTERFACENAME Real_2_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_2_d0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_2_d0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_2_address0: SIGNAL IS "XIL_INTERFACENAME Real_2_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_2_address0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_2_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_1_q0: SIGNAL IS "XIL_INTERFACENAME Real_1_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_1_q0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_1_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_1_d0: SIGNAL IS "XIL_INTERFACENAME Real_1_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_1_d0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_1_d0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_1_address0: SIGNAL IS "XIL_INTERFACENAME Real_1_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_1_address0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_1_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_0_q0: SIGNAL IS "XIL_INTERFACENAME Real_0_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_0_q0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_0_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_0_d0: SIGNAL IS "XIL_INTERFACENAME Real_0_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {" & 
"}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_0_d0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_0_d0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Real_0_address0: SIGNAL IS "XIL_INTERFACENAME Real_0_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Real_0_address0: SIGNAL IS "xilinx.com:signal:data:1.0 Real_0_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF num_word: SIGNAL IS "XIL_INTERFACENAME num_word, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} valu" & 
"e true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF num_word: SIGNAL IS "xilinx.com:signal:data:1.0 num_word DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_start: SIGNAL IS "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum " & 
"{}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long" & 
" minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst: SIGNAL IS "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN FFT_Reorder_x_num_ap_clk_0, INSERT" & 
"_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : Reorder_fft
    PORT MAP (
      Real_0_ce0 => Real_0_ce0,
      Real_0_we0 => Real_0_we0,
      Real_1_ce0 => Real_1_ce0,
      Real_1_we0 => Real_1_we0,
      Real_2_ce0 => Real_2_ce0,
      Real_2_we0 => Real_2_we0,
      Real_3_ce0 => Real_3_ce0,
      Real_3_we0 => Real_3_we0,
      Imag_0_ce0 => Imag_0_ce0,
      Imag_0_we0 => Imag_0_we0,
      Imag_1_ce0 => Imag_1_ce0,
      Imag_1_we0 => Imag_1_we0,
      Imag_2_ce0 => Imag_2_ce0,
      Imag_2_we0 => Imag_2_we0,
      Imag_3_ce0 => Imag_3_ce0,
      Imag_3_we0 => Imag_3_we0,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      num_word => num_word,
      Real_0_address0 => Real_0_address0,
      Real_0_d0 => Real_0_d0,
      Real_0_q0 => Real_0_q0,
      Real_1_address0 => Real_1_address0,
      Real_1_d0 => Real_1_d0,
      Real_1_q0 => Real_1_q0,
      Real_2_address0 => Real_2_address0,
      Real_2_d0 => Real_2_d0,
      Real_2_q0 => Real_2_q0,
      Real_3_address0 => Real_3_address0,
      Real_3_d0 => Real_3_d0,
      Real_3_q0 => Real_3_q0,
      Imag_0_address0 => Imag_0_address0,
      Imag_0_d0 => Imag_0_d0,
      Imag_0_q0 => Imag_0_q0,
      Imag_1_address0 => Imag_1_address0,
      Imag_1_d0 => Imag_1_d0,
      Imag_1_q0 => Imag_1_q0,
      Imag_2_address0 => Imag_2_address0,
      Imag_2_d0 => Imag_2_d0,
      Imag_2_q0 => Imag_2_q0,
      Imag_3_address0 => Imag_3_address0,
      Imag_3_d0 => Imag_3_d0,
      Imag_3_q0 => Imag_3_q0
    );
END FFT_Reorder_x_num_Reorder_fft_0_0_arch;
