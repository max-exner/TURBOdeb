
################################################################
# This is a generated script based on design: turing_bombe_without_zynq
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
# source turing_bombe_without_zynq_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# diagonal_board, indicator_drum, turing_bombe_controller

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART digilentinc.com:zybo-z7-20:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name turing_bombe_without_zynq

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./turing_bombe_project/src/bd

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

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
  set ADDRESS_BRAM_A [ create_bd_port -dir I -from 9 -to 0 ADDRESS_BRAM_A ]
  set CLK [ create_bd_port -dir I -type clk CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
 ] $CLK
  set DATA_IN_BRAM_A [ create_bd_port -dir I -from 31 -to 0 DATA_IN_BRAM_A ]
  set DATA_OUT_BRAM_A [ create_bd_port -dir O -from 31 -to 0 DATA_OUT_BRAM_A ]
  set ENABLE_BRAM_A [ create_bd_port -dir I ENABLE_BRAM_A ]
  set LED_FIRST_STOP_OUT [ create_bd_port -dir O LED_FIRST_STOP_OUT ]
  set LED_FOURTH_STOP_OUT [ create_bd_port -dir O LED_FOURTH_STOP_OUT ]
  set LED_SECOND_STOP_OUT [ create_bd_port -dir O LED_SECOND_STOP_OUT ]
  set LED_THIRD_STOP_OUT [ create_bd_port -dir O LED_THIRD_STOP_OUT ]
  set WRITE_ENABLE_BRAM_A [ create_bd_port -dir I -from 3 -to 0 -type data WRITE_ENABLE_BRAM_A ]

  # Create instance: TURBO_enigma_0, and set properties
  set TURBO_enigma_0 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_0 ]

  # Create instance: TURBO_enigma_1, and set properties
  set TURBO_enigma_1 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_1 ]

  # Create instance: TURBO_enigma_2, and set properties
  set TURBO_enigma_2 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_2 ]

  # Create instance: TURBO_enigma_4, and set properties
  set TURBO_enigma_4 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_4 ]

  # Create instance: TURBO_enigma_5, and set properties
  set TURBO_enigma_5 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_5 ]

  # Create instance: TURBO_enigma_6, and set properties
  set TURBO_enigma_6 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_6 ]

  # Create instance: TURBO_enigma_7, and set properties
  set TURBO_enigma_7 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_7 ]

  # Create instance: TURBO_enigma_8, and set properties
  set TURBO_enigma_8 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_8 ]

  # Create instance: TURBO_enigma_9, and set properties
  set TURBO_enigma_9 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_9 ]

  # Create instance: TURBO_enigma_10, and set properties
  set TURBO_enigma_10 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_10 ]

  # Create instance: TURBO_enigma_11, and set properties
  set TURBO_enigma_11 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_11 ]

  # Create instance: TURBO_enigma_12, and set properties
  set TURBO_enigma_12 [ create_bd_cell -type ip -vlnv user.org:user:TURBO_enigma:1.1 TURBO_enigma_12 ]

  # Create instance: diagonal_board_0, and set properties
  set block_name diagonal_board
  set block_cell_name diagonal_board_0
  if { [catch {set diagonal_board_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $diagonal_board_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: indicator_drum_0, and set properties
  set block_name indicator_drum
  set block_cell_name indicator_drum_0
  if { [catch {set indicator_drum_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $indicator_drum_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: turing_bombe_control_0, and set properties
  set block_name turing_bombe_controller
  set block_cell_name turing_bombe_control_0
  if { [catch {set turing_bombe_control_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $turing_bombe_control_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net ADRESS_BRAM_A_1 [get_bd_ports ADDRESS_BRAM_A] [get_bd_pins turing_bombe_control_0/ADDRESS_BRAM_A_IN]
  connect_bd_net -net DATA_IN_BRAM_A_1 [get_bd_ports DATA_IN_BRAM_A] [get_bd_pins turing_bombe_control_0/DATA_IN_BRAM_A]
  connect_bd_net -net ENABLE_BRAM_A_IN_1 [get_bd_ports ENABLE_BRAM_A] [get_bd_pins turing_bombe_control_0/ENABLE_BRAM_A_IN]
  connect_bd_net -net TURBO_enigma_0_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_0/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_1_IN]
  connect_bd_net -net TURBO_enigma_0_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_0/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_1_IN]
  connect_bd_net -net TURBO_enigma_0_READY_OUT [get_bd_pins TURBO_enigma_0/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_1]
  connect_bd_net -net TURBO_enigma_10_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_10/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_10_IN]
  connect_bd_net -net TURBO_enigma_10_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_10/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_10_IN]
  connect_bd_net -net TURBO_enigma_10_READY_OUT [get_bd_pins TURBO_enigma_10/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_10]
  connect_bd_net -net TURBO_enigma_11_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_11/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_11_IN]
  connect_bd_net -net TURBO_enigma_11_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_11/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_11_IN]
  connect_bd_net -net TURBO_enigma_11_READY_OUT [get_bd_pins TURBO_enigma_11/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_11]
  connect_bd_net -net TURBO_enigma_12_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_12/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_12_IN]
  connect_bd_net -net TURBO_enigma_12_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_12/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_12_IN]
  connect_bd_net -net TURBO_enigma_12_READY_OUT [get_bd_pins TURBO_enigma_12/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_12]
  connect_bd_net -net TURBO_enigma_1_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_1/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_2_IN]
  connect_bd_net -net TURBO_enigma_1_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_1/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_2_IN]
  connect_bd_net -net TURBO_enigma_1_READY_OUT [get_bd_pins TURBO_enigma_1/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_2]
  connect_bd_net -net TURBO_enigma_2_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_2/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_3_IN]
  connect_bd_net -net TURBO_enigma_2_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_2/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_3_IN]
  connect_bd_net -net TURBO_enigma_2_READY_OUT [get_bd_pins TURBO_enigma_2/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_3]
  connect_bd_net -net TURBO_enigma_4_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_4/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_5_IN]
  connect_bd_net -net TURBO_enigma_4_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_4/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_5_IN]
  connect_bd_net -net TURBO_enigma_4_READY_OUT [get_bd_pins TURBO_enigma_4/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_5]
  connect_bd_net -net TURBO_enigma_5_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_5/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_6_IN]
  connect_bd_net -net TURBO_enigma_5_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_5/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_6_IN]
  connect_bd_net -net TURBO_enigma_5_READY_OUT [get_bd_pins TURBO_enigma_5/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_6]
  connect_bd_net -net TURBO_enigma_6_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_6/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_7_IN]
  connect_bd_net -net TURBO_enigma_6_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_6/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_7_IN]
  connect_bd_net -net TURBO_enigma_6_READY_OUT [get_bd_pins TURBO_enigma_6/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_7]
  connect_bd_net -net TURBO_enigma_7_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_7/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_8_IN]
  connect_bd_net -net TURBO_enigma_7_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_7/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_8_IN]
  connect_bd_net -net TURBO_enigma_7_READY_OUT [get_bd_pins TURBO_enigma_7/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_8]
  connect_bd_net -net TURBO_enigma_8_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_8/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_9_IN]
  connect_bd_net -net TURBO_enigma_8_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_8/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_9_IN]
  connect_bd_net -net TURBO_enigma_8_READY_OUT [get_bd_pins TURBO_enigma_8/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_9]
  connect_bd_net -net TURBO_enigma_9_CODED_CHARACTERS_OUT_DB0 [get_bd_pins TURBO_enigma_9/CODED_CHARACTERS_OUT_DB0] [get_bd_pins diagonal_board_0/ACTIVE_OUT_1_ENIGMA_4_IN]
  connect_bd_net -net TURBO_enigma_9_CODED_CHARACTERS_OUT_DB1 [get_bd_pins TURBO_enigma_9/CODED_CHARACTERS_OUT_DB1] [get_bd_pins diagonal_board_0/ACTIVE_OUT_2_ENIGMA_4_IN]
  connect_bd_net -net TURBO_enigma_9_READY_OUT [get_bd_pins TURBO_enigma_9/READY_OUT] [get_bd_pins diagonal_board_0/READY_ENIGMA_4]
  connect_bd_net -net WRITE_ENABLE_BRAM_A_1 [get_bd_ports WRITE_ENABLE_BRAM_A] [get_bd_pins turing_bombe_control_0/WRITE_ENABLE_BRAM_IN]
  connect_bd_net -net diagonal_board_0_ENIGMA_10_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_10_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_10_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_10_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_10_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_10_DB1]
  connect_bd_net -net diagonal_board_0_ENIGMA_11_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_11_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_11_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_11_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_11_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_11_DB1]
  connect_bd_net -net diagonal_board_0_ENIGMA_12_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_12_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_12_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_12_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_12_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_12_DB1]
  connect_bd_net -net diagonal_board_0_ENIGMA_1_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_1_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_1_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_1_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_1_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_1_DB1]
  connect_bd_net -net diagonal_board_0_ENIGMA_2_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_2_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_2_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_2_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_2_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_2_DB1]
  connect_bd_net -net diagonal_board_0_ENIGMA_3_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_3_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_3_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_3_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_3_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_3_DB1]
  connect_bd_net -net diagonal_board_0_ENIGMA_4_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_4_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_4_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_4_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_4_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_4_DB1]
  connect_bd_net -net diagonal_board_0_ENIGMA_5_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_5_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_5_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_5_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_5_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_5_DB1]
  connect_bd_net -net diagonal_board_0_ENIGMA_6_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_6_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_6_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_6_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_6_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_6_DB1]
  connect_bd_net -net diagonal_board_0_ENIGMA_7_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_7_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_7_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_7_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_7_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_7_DB1]
  connect_bd_net -net diagonal_board_0_ENIGMA_8_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_8_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_8_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_8_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_8_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_8_DB1]
  connect_bd_net -net diagonal_board_0_ENIGMA_9_DB1_OUT [get_bd_pins diagonal_board_0/ENIGMA_9_DB1_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_9_DB0]
  connect_bd_net -net diagonal_board_0_ENIGMA_9_DB2_OUT [get_bd_pins diagonal_board_0/ENIGMA_9_DB2_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_ENIGMA_9_DB1]
  connect_bd_net -net diagonal_board_0_NO_OUTPUT_CHANGE_OUT [get_bd_pins diagonal_board_0/NO_OUTPUT_CHANGE_OUT] [get_bd_pins turing_bombe_control_0/DB_OUT_NO_CHANGES_IN]
  connect_bd_net -net diagonal_board_0_READY_OUT [get_bd_pins diagonal_board_0/READY_OUT] [get_bd_pins turing_bombe_control_0/DB_READY_IN]
  connect_bd_net -net diagonal_board_0_RESULT_REGISTER_OUT [get_bd_pins diagonal_board_0/RESULT_REGISTER_OUT] [get_bd_pins turing_bombe_control_0/DB_RESULT_RESIGER_IN]
  connect_bd_net -net indicator_drum_0_POS_INDICATOR_DRUM_1_OUT [get_bd_pins indicator_drum_0/POS_INDICATOR_DRUM_1_OUT] [get_bd_pins turing_bombe_control_0/POS_1_INDICATOR_DRUM_IN]
  connect_bd_net -net indicator_drum_0_POS_INDICATOR_DRUM_2_OUT [get_bd_pins indicator_drum_0/POS_INDICATOR_DRUM_2_OUT] [get_bd_pins turing_bombe_control_0/POS_2_INDICATOR_DRUM_IN]
  connect_bd_net -net indicator_drum_0_POS_INDICATOR_DRUM_3_OUT [get_bd_pins indicator_drum_0/POS_INDICATOR_DRUM_3_OUT] [get_bd_pins turing_bombe_control_0/POS_3_INDICATOR_DRUM_IN]
  connect_bd_net -net sim_clk_gen_0_clk [get_bd_ports CLK] [get_bd_pins TURBO_enigma_0/UB_CLK_IN] [get_bd_pins TURBO_enigma_1/UB_CLK_IN] [get_bd_pins TURBO_enigma_10/UB_CLK_IN] [get_bd_pins TURBO_enigma_11/UB_CLK_IN] [get_bd_pins TURBO_enigma_12/UB_CLK_IN] [get_bd_pins TURBO_enigma_2/UB_CLK_IN] [get_bd_pins TURBO_enigma_4/UB_CLK_IN] [get_bd_pins TURBO_enigma_5/UB_CLK_IN] [get_bd_pins TURBO_enigma_6/UB_CLK_IN] [get_bd_pins TURBO_enigma_7/UB_CLK_IN] [get_bd_pins TURBO_enigma_8/UB_CLK_IN] [get_bd_pins TURBO_enigma_9/UB_CLK_IN] [get_bd_pins diagonal_board_0/CLK_IN] [get_bd_pins indicator_drum_0/CLK_IN] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins turing_bombe_control_0/CLK_BRAM_A_IN] [get_bd_pins turing_bombe_control_0/CLK_IN]
  connect_bd_net -net turing_bombe_control_0_DATA_OUT_BRAM_A [get_bd_ports DATA_OUT_BRAM_A] [get_bd_pins turing_bombe_control_0/DATA_OUT_BRAM_A]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_10_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_10_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_10_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_10_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_10_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_10_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_11_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_11_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_11_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_11_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_11_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_11_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_12_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_12_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_12_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_12_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_12_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_12_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_1_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_1_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_1_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_1_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_1_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_1_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_2_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_2_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_2_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_2_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_2_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_2_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_3_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_3_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_3_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_3_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_3_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_3_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_4_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_4_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_4_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_4_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_4_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_4_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_5_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_5_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_5_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_5_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_5_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_5_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_6_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_6_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_6_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_6_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_6_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_6_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_7_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_7_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_7_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_7_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_7_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_7_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_8_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_8_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_8_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_8_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_8_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_8_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_9_DBCON0_OUT [get_bd_pins diagonal_board_0/ENIGMA_9_DB_CON_1_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_9_DBCON0_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_ENIGMA_9_DBCON1_OUT [get_bd_pins diagonal_board_0/ENIGMA_9_DB_CON_2_IN] [get_bd_pins turing_bombe_control_0/DB_IN_ENIGMA_9_DBCON1_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_INPUT_REGISTER_OUT [get_bd_pins diagonal_board_0/TEST_REGISTER_IN] [get_bd_pins turing_bombe_control_0/DB_IN_INPUT_REGISTER_OUT]
  connect_bd_net -net turing_bombe_control_0_DB_IN_INPUT_VOLTAGE_OUT [get_bd_pins diagonal_board_0/INPUT_VOLTAGE_IN] [get_bd_pins turing_bombe_control_0/DB_IN_INPUT_VOLTAGE_OUT]
  connect_bd_net -net turing_bombe_control_0_DRUM_IMPULS_OUT [get_bd_pins TURBO_enigma_0/DRUM_IMPULS_IN] [get_bd_pins TURBO_enigma_1/DRUM_IMPULS_IN] [get_bd_pins TURBO_enigma_10/DRUM_IMPULS_IN] [get_bd_pins TURBO_enigma_11/DRUM_IMPULS_IN] [get_bd_pins TURBO_enigma_12/DRUM_IMPULS_IN] [get_bd_pins TURBO_enigma_2/DRUM_IMPULS_IN] [get_bd_pins TURBO_enigma_4/DRUM_IMPULS_IN] [get_bd_pins TURBO_enigma_5/DRUM_IMPULS_IN] [get_bd_pins TURBO_enigma_6/DRUM_IMPULS_IN] [get_bd_pins TURBO_enigma_7/DRUM_IMPULS_IN] [get_bd_pins TURBO_enigma_8/DRUM_IMPULS_IN] [get_bd_pins TURBO_enigma_9/DRUM_IMPULS_IN] [get_bd_pins indicator_drum_0/ROTATE_IMPULS_IN] [get_bd_pins turing_bombe_control_0/DRUM_IMPULS_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMAS_DRUM_1_OUT [get_bd_pins TURBO_enigma_0/CONFIG_DRUM_TYP_1_IN] [get_bd_pins TURBO_enigma_1/CONFIG_DRUM_TYP_1_IN] [get_bd_pins TURBO_enigma_10/CONFIG_DRUM_TYP_1_IN] [get_bd_pins TURBO_enigma_11/CONFIG_DRUM_TYP_1_IN] [get_bd_pins TURBO_enigma_12/CONFIG_DRUM_TYP_1_IN] [get_bd_pins TURBO_enigma_2/CONFIG_DRUM_TYP_1_IN] [get_bd_pins TURBO_enigma_4/CONFIG_DRUM_TYP_1_IN] [get_bd_pins TURBO_enigma_5/CONFIG_DRUM_TYP_1_IN] [get_bd_pins TURBO_enigma_6/CONFIG_DRUM_TYP_1_IN] [get_bd_pins TURBO_enigma_7/CONFIG_DRUM_TYP_1_IN] [get_bd_pins TURBO_enigma_8/CONFIG_DRUM_TYP_1_IN] [get_bd_pins TURBO_enigma_9/CONFIG_DRUM_TYP_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMAS_DRUM_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMAS_DRUM_2_OUT [get_bd_pins TURBO_enigma_0/CONFIG_DRUM_TYP_2_IN] [get_bd_pins TURBO_enigma_1/CONFIG_DRUM_TYP_2_IN] [get_bd_pins TURBO_enigma_10/CONFIG_DRUM_TYP_2_IN] [get_bd_pins TURBO_enigma_11/CONFIG_DRUM_TYP_2_IN] [get_bd_pins TURBO_enigma_12/CONFIG_DRUM_TYP_2_IN] [get_bd_pins TURBO_enigma_2/CONFIG_DRUM_TYP_2_IN] [get_bd_pins TURBO_enigma_4/CONFIG_DRUM_TYP_2_IN] [get_bd_pins TURBO_enigma_5/CONFIG_DRUM_TYP_2_IN] [get_bd_pins TURBO_enigma_6/CONFIG_DRUM_TYP_2_IN] [get_bd_pins TURBO_enigma_7/CONFIG_DRUM_TYP_2_IN] [get_bd_pins TURBO_enigma_8/CONFIG_DRUM_TYP_2_IN] [get_bd_pins TURBO_enigma_9/CONFIG_DRUM_TYP_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMAS_DRUM_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMAS_DRUM_3_OUT [get_bd_pins TURBO_enigma_0/CONFIG_DRUM_TYP_3_IN] [get_bd_pins TURBO_enigma_1/CONFIG_DRUM_TYP_3_IN] [get_bd_pins TURBO_enigma_10/CONFIG_DRUM_TYP_3_IN] [get_bd_pins TURBO_enigma_11/CONFIG_DRUM_TYP_3_IN] [get_bd_pins TURBO_enigma_12/CONFIG_DRUM_TYP_3_IN] [get_bd_pins TURBO_enigma_2/CONFIG_DRUM_TYP_3_IN] [get_bd_pins TURBO_enigma_4/CONFIG_DRUM_TYP_3_IN] [get_bd_pins TURBO_enigma_5/CONFIG_DRUM_TYP_3_IN] [get_bd_pins TURBO_enigma_6/CONFIG_DRUM_TYP_3_IN] [get_bd_pins TURBO_enigma_7/CONFIG_DRUM_TYP_3_IN] [get_bd_pins TURBO_enigma_8/CONFIG_DRUM_TYP_3_IN] [get_bd_pins TURBO_enigma_9/CONFIG_DRUM_TYP_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMAS_DRUM_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMAS_START_OUT [get_bd_pins TURBO_enigma_0/START_IN] [get_bd_pins TURBO_enigma_1/START_IN] [get_bd_pins TURBO_enigma_10/START_IN] [get_bd_pins TURBO_enigma_11/START_IN] [get_bd_pins TURBO_enigma_12/START_IN] [get_bd_pins TURBO_enigma_2/START_IN] [get_bd_pins TURBO_enigma_4/START_IN] [get_bd_pins TURBO_enigma_5/START_IN] [get_bd_pins TURBO_enigma_6/START_IN] [get_bd_pins TURBO_enigma_7/START_IN] [get_bd_pins TURBO_enigma_8/START_IN] [get_bd_pins TURBO_enigma_9/START_IN] [get_bd_pins turing_bombe_control_0/ENIGMAS_START_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_10_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_10/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_10_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_10_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_10/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_10_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_10_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_10/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_10_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_10_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_10/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_10_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_10_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_10/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_10_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_11_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_11/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_11_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_11_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_11/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_11_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_11_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_11/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_11_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_11_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_11/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_11_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_11_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_11/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_11_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_12_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_12/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_12_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_12_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_12/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_12_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_12_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_12/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_12_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_12_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_12/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_12_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_12_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_12/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_12_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_1_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_0/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_1_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_1_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_0/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_1_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_1_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_0/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_1_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_1_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_0/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_1_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_1_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_0/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_1_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_2_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_1/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_2_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_2_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_1/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_2_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_2_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_1/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_2_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_2_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_1/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_2_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_2_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_1/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_2_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_3_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_2/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_3_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_3_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_2/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_3_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_3_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_2/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_3_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_3_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_2/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_3_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_3_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_2/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_3_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_4_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_9/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_4_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_4_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_9/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_4_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_4_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_9/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_4_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_4_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_9/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_4_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_4_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_9/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_4_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_5_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_4/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_5_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_5_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_4/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_5_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_5_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_4/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_5_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_5_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_4/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_5_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_5_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_4/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_5_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_6_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_5/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_6_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_6_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_5/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_6_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_6_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_5/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_6_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_6_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_5/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_6_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_6_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_5/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_6_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_7_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_6/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_7_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_7_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_6/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_7_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_7_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_6/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_7_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_7_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_6/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_7_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_7_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_6/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_7_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_8_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_7/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_8_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_8_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_7/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_8_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_8_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_7/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_8_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_8_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_7/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_8_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_8_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_7/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_8_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_9_CHARACTERS_DB0_OUT [get_bd_pins TURBO_enigma_8/CHARACTERS_IN_DB0] [get_bd_pins turing_bombe_control_0/ENIGMA_9_CHARACTERS_DB0_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_9_CHARACTERS_DB1_OUT [get_bd_pins TURBO_enigma_8/CHARACTERS_IN_DB1] [get_bd_pins turing_bombe_control_0/ENIGMA_9_CHARACTERS_DB1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_9_DRUMPOS_1_OUT [get_bd_pins TURBO_enigma_8/CONFIG_START_POS_DRUM_1_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_9_DRUMPOS_1_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_9_DRUMPOS_2_OUT [get_bd_pins TURBO_enigma_8/CONFIG_START_POS_DRUM_2_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_9_DRUMPOS_2_OUT]
  connect_bd_net -net turing_bombe_control_0_ENIGMA_9_DRUMPOS_3_OUT [get_bd_pins TURBO_enigma_8/CONFIG_START_POS_DRUM_3_IN] [get_bd_pins turing_bombe_control_0/ENIGMA_9_DRUMPOS_3_OUT]
  connect_bd_net -net turing_bombe_control_0_LED_FIRST_STOP_OUT [get_bd_ports LED_FIRST_STOP_OUT] [get_bd_pins turing_bombe_control_0/LED_FIRST_STOP_OUT]
  connect_bd_net -net turing_bombe_control_0_LED_FOURTH_STOP_OUT [get_bd_ports LED_FOURTH_STOP_OUT] [get_bd_pins turing_bombe_control_0/LED_FOURTH_STOP_OUT]
  connect_bd_net -net turing_bombe_control_0_LED_SECOND_STOP_OUT [get_bd_ports LED_SECOND_STOP_OUT] [get_bd_pins turing_bombe_control_0/LED_SECOND_STOP_OUT]
  connect_bd_net -net turing_bombe_control_0_LED_THIRD_STOP_OUT [get_bd_ports LED_THIRD_STOP_OUT] [get_bd_pins turing_bombe_control_0/LED_THIRD_STOP_OUT]
  connect_bd_net -net turing_bombe_control_0_RESET_ENIGMAS_OUT [get_bd_pins TURBO_enigma_0/SOFT_RESET_N_IN] [get_bd_pins TURBO_enigma_1/SOFT_RESET_N_IN] [get_bd_pins TURBO_enigma_10/SOFT_RESET_N_IN] [get_bd_pins TURBO_enigma_11/SOFT_RESET_N_IN] [get_bd_pins TURBO_enigma_12/SOFT_RESET_N_IN] [get_bd_pins TURBO_enigma_2/SOFT_RESET_N_IN] [get_bd_pins TURBO_enigma_4/SOFT_RESET_N_IN] [get_bd_pins TURBO_enigma_5/SOFT_RESET_N_IN] [get_bd_pins TURBO_enigma_6/SOFT_RESET_N_IN] [get_bd_pins TURBO_enigma_7/SOFT_RESET_N_IN] [get_bd_pins TURBO_enigma_8/SOFT_RESET_N_IN] [get_bd_pins TURBO_enigma_9/SOFT_RESET_N_IN] [get_bd_pins diagonal_board_0/RESET_IN] [get_bd_pins indicator_drum_0/RESET_IN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net turing_bombe_control_0_RESET_OUT [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins turing_bombe_control_0/RESET_OUT]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins turing_bombe_control_0/RST_BRAM_A_IN] [get_bd_pins xlconstant_0/dout]

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


