
################################################################
# This is a generated script based on design: FFT_Reorder_Arra_p
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source FFT_Reorder_Arra_p_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z045ffg900-2
   set_property BOARD_PART xilinx.com:zc706:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name FFT_Reorder_Arra_p

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set Imag_0_address0_0 [ create_bd_port -dir O -from 7 -to 0 -type data Imag_0_address0_0 ]
  set Imag_0_ce0_0 [ create_bd_port -dir O Imag_0_ce0_0 ]
  set Imag_0_d0_0 [ create_bd_port -dir O -from 31 -to 0 -type data Imag_0_d0_0 ]
  set Imag_0_q0_0 [ create_bd_port -dir I -from 31 -to 0 -type data Imag_0_q0_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $Imag_0_q0_0
  set Imag_0_we0_0 [ create_bd_port -dir O Imag_0_we0_0 ]
  set Imag_1_address0_0 [ create_bd_port -dir O -from 7 -to 0 -type data Imag_1_address0_0 ]
  set Imag_1_ce0_0 [ create_bd_port -dir O Imag_1_ce0_0 ]
  set Imag_1_d0_0 [ create_bd_port -dir O -from 31 -to 0 -type data Imag_1_d0_0 ]
  set Imag_1_q0_0 [ create_bd_port -dir I -from 31 -to 0 -type data Imag_1_q0_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $Imag_1_q0_0
  set Imag_1_we0_0 [ create_bd_port -dir O Imag_1_we0_0 ]
  set Imag_2_address0_0 [ create_bd_port -dir O -from 7 -to 0 -type data Imag_2_address0_0 ]
  set Imag_2_ce0_0 [ create_bd_port -dir O Imag_2_ce0_0 ]
  set Imag_2_d0_0 [ create_bd_port -dir O -from 31 -to 0 -type data Imag_2_d0_0 ]
  set Imag_2_q0_0 [ create_bd_port -dir I -from 31 -to 0 -type data Imag_2_q0_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $Imag_2_q0_0
  set Imag_2_we0_0 [ create_bd_port -dir O Imag_2_we0_0 ]
  set Imag_3_address0_0 [ create_bd_port -dir O -from 7 -to 0 -type data Imag_3_address0_0 ]
  set Imag_3_ce0_0 [ create_bd_port -dir O Imag_3_ce0_0 ]
  set Imag_3_d0_0 [ create_bd_port -dir O -from 31 -to 0 -type data Imag_3_d0_0 ]
  set Imag_3_q0_0 [ create_bd_port -dir I -from 31 -to 0 -type data Imag_3_q0_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $Imag_3_q0_0
  set Imag_3_we0_0 [ create_bd_port -dir O Imag_3_we0_0 ]
  set Real_0_address0_0 [ create_bd_port -dir O -from 7 -to 0 -type data Real_0_address0_0 ]
  set Real_0_ce0_0 [ create_bd_port -dir O Real_0_ce0_0 ]
  set Real_0_d0_0 [ create_bd_port -dir O -from 31 -to 0 -type data Real_0_d0_0 ]
  set Real_0_q0_0 [ create_bd_port -dir I -from 31 -to 0 -type data Real_0_q0_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $Real_0_q0_0
  set Real_0_we0_0 [ create_bd_port -dir O Real_0_we0_0 ]
  set Real_1_address0_0 [ create_bd_port -dir O -from 7 -to 0 -type data Real_1_address0_0 ]
  set Real_1_ce0_0 [ create_bd_port -dir O Real_1_ce0_0 ]
  set Real_1_d0_0 [ create_bd_port -dir O -from 31 -to 0 -type data Real_1_d0_0 ]
  set Real_1_q0_0 [ create_bd_port -dir I -from 31 -to 0 -type data Real_1_q0_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $Real_1_q0_0
  set Real_1_we0_0 [ create_bd_port -dir O Real_1_we0_0 ]
  set Real_2_address0_0 [ create_bd_port -dir O -from 7 -to 0 -type data Real_2_address0_0 ]
  set Real_2_ce0_0 [ create_bd_port -dir O Real_2_ce0_0 ]
  set Real_2_d0_0 [ create_bd_port -dir O -from 31 -to 0 -type data Real_2_d0_0 ]
  set Real_2_q0_0 [ create_bd_port -dir I -from 31 -to 0 -type data Real_2_q0_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $Real_2_q0_0
  set Real_2_we0_0 [ create_bd_port -dir O Real_2_we0_0 ]
  set Real_3_address0_0 [ create_bd_port -dir O -from 7 -to 0 -type data Real_3_address0_0 ]
  set Real_3_ce0_0 [ create_bd_port -dir O Real_3_ce0_0 ]
  set Real_3_d0_0 [ create_bd_port -dir O -from 31 -to 0 -type data Real_3_d0_0 ]
  set Real_3_q0_0 [ create_bd_port -dir I -from 31 -to 0 -type data Real_3_q0_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $Real_3_q0_0
  set Real_3_we0_0 [ create_bd_port -dir O Real_3_we0_0 ]
  set ap_clk_0 [ create_bd_port -dir I -type clk ap_clk_0 ]
  set ap_done_0 [ create_bd_port -dir O ap_done_0 ]
  set ap_idle_0 [ create_bd_port -dir O ap_idle_0 ]
  set ap_ready_0 [ create_bd_port -dir O ap_ready_0 ]
  set ap_rst_0 [ create_bd_port -dir I -type rst ap_rst_0 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $ap_rst_0
  set ap_start_0 [ create_bd_port -dir I ap_start_0 ]

  # Create instance: Reorder_fft_0, and set properties
  set Reorder_fft_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:Reorder_fft:1.0 Reorder_fft_0 ]

  # Create port connections
  connect_bd_net -net Imag_0_q0_0_1 [get_bd_ports Imag_0_q0_0] [get_bd_pins Reorder_fft_0/Imag_0_q0]
  connect_bd_net -net Imag_1_q0_0_1 [get_bd_ports Imag_1_q0_0] [get_bd_pins Reorder_fft_0/Imag_1_q0]
  connect_bd_net -net Imag_2_q0_0_1 [get_bd_ports Imag_2_q0_0] [get_bd_pins Reorder_fft_0/Imag_2_q0]
  connect_bd_net -net Imag_3_q0_0_1 [get_bd_ports Imag_3_q0_0] [get_bd_pins Reorder_fft_0/Imag_3_q0]
  connect_bd_net -net Real_0_q0_0_1 [get_bd_ports Real_0_q0_0] [get_bd_pins Reorder_fft_0/Real_0_q0]
  connect_bd_net -net Real_1_q0_0_1 [get_bd_ports Real_1_q0_0] [get_bd_pins Reorder_fft_0/Real_1_q0]
  connect_bd_net -net Real_2_q0_0_1 [get_bd_ports Real_2_q0_0] [get_bd_pins Reorder_fft_0/Real_2_q0]
  connect_bd_net -net Real_3_q0_0_1 [get_bd_ports Real_3_q0_0] [get_bd_pins Reorder_fft_0/Real_3_q0]
  connect_bd_net -net Reorder_fft_0_Imag_0_address0 [get_bd_ports Imag_0_address0_0] [get_bd_pins Reorder_fft_0/Imag_0_address0]
  connect_bd_net -net Reorder_fft_0_Imag_0_ce0 [get_bd_ports Imag_0_ce0_0] [get_bd_pins Reorder_fft_0/Imag_0_ce0]
  connect_bd_net -net Reorder_fft_0_Imag_0_d0 [get_bd_ports Imag_0_d0_0] [get_bd_pins Reorder_fft_0/Imag_0_d0]
  connect_bd_net -net Reorder_fft_0_Imag_0_we0 [get_bd_ports Imag_0_we0_0] [get_bd_pins Reorder_fft_0/Imag_0_we0]
  connect_bd_net -net Reorder_fft_0_Imag_1_address0 [get_bd_ports Imag_1_address0_0] [get_bd_pins Reorder_fft_0/Imag_1_address0]
  connect_bd_net -net Reorder_fft_0_Imag_1_ce0 [get_bd_ports Imag_1_ce0_0] [get_bd_pins Reorder_fft_0/Imag_1_ce0]
  connect_bd_net -net Reorder_fft_0_Imag_1_d0 [get_bd_ports Imag_1_d0_0] [get_bd_pins Reorder_fft_0/Imag_1_d0]
  connect_bd_net -net Reorder_fft_0_Imag_1_we0 [get_bd_ports Imag_1_we0_0] [get_bd_pins Reorder_fft_0/Imag_1_we0]
  connect_bd_net -net Reorder_fft_0_Imag_2_address0 [get_bd_ports Imag_2_address0_0] [get_bd_pins Reorder_fft_0/Imag_2_address0]
  connect_bd_net -net Reorder_fft_0_Imag_2_ce0 [get_bd_ports Imag_2_ce0_0] [get_bd_pins Reorder_fft_0/Imag_2_ce0]
  connect_bd_net -net Reorder_fft_0_Imag_2_d0 [get_bd_ports Imag_2_d0_0] [get_bd_pins Reorder_fft_0/Imag_2_d0]
  connect_bd_net -net Reorder_fft_0_Imag_2_we0 [get_bd_ports Imag_2_we0_0] [get_bd_pins Reorder_fft_0/Imag_2_we0]
  connect_bd_net -net Reorder_fft_0_Imag_3_address0 [get_bd_ports Imag_3_address0_0] [get_bd_pins Reorder_fft_0/Imag_3_address0]
  connect_bd_net -net Reorder_fft_0_Imag_3_ce0 [get_bd_ports Imag_3_ce0_0] [get_bd_pins Reorder_fft_0/Imag_3_ce0]
  connect_bd_net -net Reorder_fft_0_Imag_3_d0 [get_bd_ports Imag_3_d0_0] [get_bd_pins Reorder_fft_0/Imag_3_d0]
  connect_bd_net -net Reorder_fft_0_Imag_3_we0 [get_bd_ports Imag_3_we0_0] [get_bd_pins Reorder_fft_0/Imag_3_we0]
  connect_bd_net -net Reorder_fft_0_Real_0_address0 [get_bd_ports Real_0_address0_0] [get_bd_pins Reorder_fft_0/Real_0_address0]
  connect_bd_net -net Reorder_fft_0_Real_0_ce0 [get_bd_ports Real_0_ce0_0] [get_bd_pins Reorder_fft_0/Real_0_ce0]
  connect_bd_net -net Reorder_fft_0_Real_0_d0 [get_bd_ports Real_0_d0_0] [get_bd_pins Reorder_fft_0/Real_0_d0]
  connect_bd_net -net Reorder_fft_0_Real_0_we0 [get_bd_ports Real_0_we0_0] [get_bd_pins Reorder_fft_0/Real_0_we0]
  connect_bd_net -net Reorder_fft_0_Real_1_address0 [get_bd_ports Real_1_address0_0] [get_bd_pins Reorder_fft_0/Real_1_address0]
  connect_bd_net -net Reorder_fft_0_Real_1_ce0 [get_bd_ports Real_1_ce0_0] [get_bd_pins Reorder_fft_0/Real_1_ce0]
  connect_bd_net -net Reorder_fft_0_Real_1_d0 [get_bd_ports Real_1_d0_0] [get_bd_pins Reorder_fft_0/Real_1_d0]
  connect_bd_net -net Reorder_fft_0_Real_1_we0 [get_bd_ports Real_1_we0_0] [get_bd_pins Reorder_fft_0/Real_1_we0]
  connect_bd_net -net Reorder_fft_0_Real_2_address0 [get_bd_ports Real_2_address0_0] [get_bd_pins Reorder_fft_0/Real_2_address0]
  connect_bd_net -net Reorder_fft_0_Real_2_ce0 [get_bd_ports Real_2_ce0_0] [get_bd_pins Reorder_fft_0/Real_2_ce0]
  connect_bd_net -net Reorder_fft_0_Real_2_d0 [get_bd_ports Real_2_d0_0] [get_bd_pins Reorder_fft_0/Real_2_d0]
  connect_bd_net -net Reorder_fft_0_Real_2_we0 [get_bd_ports Real_2_we0_0] [get_bd_pins Reorder_fft_0/Real_2_we0]
  connect_bd_net -net Reorder_fft_0_Real_3_address0 [get_bd_ports Real_3_address0_0] [get_bd_pins Reorder_fft_0/Real_3_address0]
  connect_bd_net -net Reorder_fft_0_Real_3_ce0 [get_bd_ports Real_3_ce0_0] [get_bd_pins Reorder_fft_0/Real_3_ce0]
  connect_bd_net -net Reorder_fft_0_Real_3_d0 [get_bd_ports Real_3_d0_0] [get_bd_pins Reorder_fft_0/Real_3_d0]
  connect_bd_net -net Reorder_fft_0_Real_3_we0 [get_bd_ports Real_3_we0_0] [get_bd_pins Reorder_fft_0/Real_3_we0]
  connect_bd_net -net Reorder_fft_0_ap_done [get_bd_ports ap_done_0] [get_bd_pins Reorder_fft_0/ap_done]
  connect_bd_net -net Reorder_fft_0_ap_idle [get_bd_ports ap_idle_0] [get_bd_pins Reorder_fft_0/ap_idle]
  connect_bd_net -net Reorder_fft_0_ap_ready [get_bd_ports ap_ready_0] [get_bd_pins Reorder_fft_0/ap_ready]
  connect_bd_net -net ap_clk_0_1 [get_bd_ports ap_clk_0] [get_bd_pins Reorder_fft_0/ap_clk]
  connect_bd_net -net ap_rst_0_1 [get_bd_ports ap_rst_0] [get_bd_pins Reorder_fft_0/ap_rst]
  connect_bd_net -net ap_start_0_1 [get_bd_ports ap_start_0] [get_bd_pins Reorder_fft_0/ap_start]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


