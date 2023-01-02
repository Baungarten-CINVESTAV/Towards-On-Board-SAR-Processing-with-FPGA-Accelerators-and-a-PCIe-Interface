// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:Reorder_fft:1.0
// IP Revision: 2103282214

(* X_CORE_INFO = "Reorder_fft,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "FFT_Reorder_x_num_Reorder_fft_0_0,Reorder_fft,{}" *)
(* CORE_GENERATION_INFO = "FFT_Reorder_x_num_Reorder_fft_0_0,Reorder_fft,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=Reorder_fft,x_ipVersion=1.0,x_ipCoreRevision=2103282214,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module FFT_Reorder_x_num_Reorder_fft_0_0 (
  Real_0_ce0,
  Real_0_we0,
  Real_1_ce0,
  Real_1_we0,
  Real_2_ce0,
  Real_2_we0,
  Real_3_ce0,
  Real_3_we0,
  Imag_0_ce0,
  Imag_0_we0,
  Imag_1_ce0,
  Imag_1_we0,
  Imag_2_ce0,
  Imag_2_we0,
  Imag_3_ce0,
  Imag_3_we0,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  num_word,
  Real_0_address0,
  Real_0_d0,
  Real_0_q0,
  Real_1_address0,
  Real_1_d0,
  Real_1_q0,
  Real_2_address0,
  Real_2_d0,
  Real_2_q0,
  Real_3_address0,
  Real_3_d0,
  Real_3_q0,
  Imag_0_address0,
  Imag_0_d0,
  Imag_0_q0,
  Imag_1_address0,
  Imag_1_d0,
  Imag_1_q0,
  Imag_2_address0,
  Imag_2_d0,
  Imag_2_q0,
  Imag_3_address0,
  Imag_3_d0,
  Imag_3_q0
);

output wire Real_0_ce0;
output wire Real_0_we0;
output wire Real_1_ce0;
output wire Real_1_we0;
output wire Real_2_ce0;
output wire Real_2_we0;
output wire Real_3_ce0;
output wire Real_3_we0;
output wire Imag_0_ce0;
output wire Imag_0_we0;
output wire Imag_1_ce0;
output wire Imag_1_we0;
output wire Imag_2_ce0;
output wire Imag_2_we0;
output wire Imag_3_ce0;
output wire Imag_3_we0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN FFT_Reorder_x_num_ap_clk_0, INSERT\
_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum \
{}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long\
 minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME num_word, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} valu\
e true}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 num_word DATA" *)
input wire [31 : 0] num_word;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_0_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_0_address0 DATA" *)
output wire [11 : 0] Real_0_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_0_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_0_d0 DATA" *)
output wire [31 : 0] Real_0_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_0_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_0_q0 DATA" *)
input wire [31 : 0] Real_0_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_1_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_1_address0 DATA" *)
output wire [11 : 0] Real_1_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_1_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_1_d0 DATA" *)
output wire [31 : 0] Real_1_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_1_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_1_q0 DATA" *)
input wire [31 : 0] Real_1_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_2_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_2_address0 DATA" *)
output wire [11 : 0] Real_2_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_2_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_2_d0 DATA" *)
output wire [31 : 0] Real_2_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_2_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_2_q0 DATA" *)
input wire [31 : 0] Real_2_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_3_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_3_address0 DATA" *)
output wire [11 : 0] Real_3_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_3_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_3_d0 DATA" *)
output wire [31 : 0] Real_3_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Real_3_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Real_3_q0 DATA" *)
input wire [31 : 0] Real_3_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_0_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_0_address0 DATA" *)
output wire [11 : 0] Imag_0_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_0_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_0_d0 DATA" *)
output wire [31 : 0] Imag_0_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_0_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_0_q0 DATA" *)
input wire [31 : 0] Imag_0_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_1_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_1_address0 DATA" *)
output wire [11 : 0] Imag_1_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_1_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_1_d0 DATA" *)
output wire [31 : 0] Imag_1_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_1_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_1_q0 DATA" *)
input wire [31 : 0] Imag_1_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_2_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_2_address0 DATA" *)
output wire [11 : 0] Imag_2_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_2_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_2_d0 DATA" *)
output wire [31 : 0] Imag_2_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_2_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_2_q0 DATA" *)
input wire [31 : 0] Imag_2_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_3_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_3_address0 DATA" *)
output wire [11 : 0] Imag_3_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_3_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_3_d0 DATA" *)
output wire [31 : 0] Imag_3_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Imag_3_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {\
}} value 24}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Imag_3_q0 DATA" *)
input wire [31 : 0] Imag_3_q0;

  Reorder_fft inst (
    .Real_0_ce0(Real_0_ce0),
    .Real_0_we0(Real_0_we0),
    .Real_1_ce0(Real_1_ce0),
    .Real_1_we0(Real_1_we0),
    .Real_2_ce0(Real_2_ce0),
    .Real_2_we0(Real_2_we0),
    .Real_3_ce0(Real_3_ce0),
    .Real_3_we0(Real_3_we0),
    .Imag_0_ce0(Imag_0_ce0),
    .Imag_0_we0(Imag_0_we0),
    .Imag_1_ce0(Imag_1_ce0),
    .Imag_1_we0(Imag_1_we0),
    .Imag_2_ce0(Imag_2_ce0),
    .Imag_2_we0(Imag_2_we0),
    .Imag_3_ce0(Imag_3_ce0),
    .Imag_3_we0(Imag_3_we0),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .num_word(num_word),
    .Real_0_address0(Real_0_address0),
    .Real_0_d0(Real_0_d0),
    .Real_0_q0(Real_0_q0),
    .Real_1_address0(Real_1_address0),
    .Real_1_d0(Real_1_d0),
    .Real_1_q0(Real_1_q0),
    .Real_2_address0(Real_2_address0),
    .Real_2_d0(Real_2_d0),
    .Real_2_q0(Real_2_q0),
    .Real_3_address0(Real_3_address0),
    .Real_3_d0(Real_3_d0),
    .Real_3_q0(Real_3_q0),
    .Imag_0_address0(Imag_0_address0),
    .Imag_0_d0(Imag_0_d0),
    .Imag_0_q0(Imag_0_q0),
    .Imag_1_address0(Imag_1_address0),
    .Imag_1_d0(Imag_1_d0),
    .Imag_1_q0(Imag_1_q0),
    .Imag_2_address0(Imag_2_address0),
    .Imag_2_d0(Imag_2_d0),
    .Imag_2_q0(Imag_2_q0),
    .Imag_3_address0(Imag_3_address0),
    .Imag_3_d0(Imag_3_d0),
    .Imag_3_q0(Imag_3_q0)
  );
endmodule
