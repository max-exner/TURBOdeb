
################################################################
# This is a generated script based on design: TURBO_enigma_bd
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
# source TURBO_enigma_bd_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# enigma_top

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
set design_name TURBO_enigma_bd

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./TURBOdeb/turing_bombe_project/src/bd

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
  set CHARACTERS_IN_DB0 [ create_bd_port -dir I -from 25 -to 0 CHARACTERS_IN_DB0 ]
  set CHARACTERS_IN_DB1 [ create_bd_port -dir I -from 25 -to 0 CHARACTERS_IN_DB1 ]
  set CODED_CHARACTERS_OUT_DB0 [ create_bd_port -dir O -from 25 -to 0 CODED_CHARACTERS_OUT_DB0 ]
  set CODED_CHARACTERS_OUT_DB1 [ create_bd_port -dir O -from 25 -to 0 CODED_CHARACTERS_OUT_DB1 ]
  set CONFIG_DRUM_TYP_1_IN [ create_bd_port -dir I -from 2 -to 0 CONFIG_DRUM_TYP_1_IN ]
  set CONFIG_DRUM_TYP_2_IN [ create_bd_port -dir I -from 2 -to 0 CONFIG_DRUM_TYP_2_IN ]
  set CONFIG_DRUM_TYP_3_IN [ create_bd_port -dir I -from 2 -to 0 CONFIG_DRUM_TYP_3_IN ]
  set CONFIG_START_POS_DRUM_1_IN [ create_bd_port -dir I -from 4 -to 0 CONFIG_START_POS_DRUM_1_IN ]
  set CONFIG_START_POS_DRUM_2_IN [ create_bd_port -dir I -from 4 -to 0 CONFIG_START_POS_DRUM_2_IN ]
  set CONFIG_START_POS_DRUM_3_IN [ create_bd_port -dir I -from 4 -to 0 CONFIG_START_POS_DRUM_3_IN ]
  set DRUM_IMPULS_IN [ create_bd_port -dir I DRUM_IMPULS_IN ]
  set READY_OUT [ create_bd_port -dir O READY_OUT ]
  set SOFT_RESET_N_IN [ create_bd_port -dir I -type rst SOFT_RESET_N_IN ]
  set START_IN [ create_bd_port -dir I START_IN ]
  set UB_CLK_IN [ create_bd_port -dir I -type clk UB_CLK_IN ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
 ] $UB_CLK_IN

  # Create instance: enigma_top_0, and set properties
  set block_name enigma_top
  set block_cell_name enigma_top_0
  if { [catch {set enigma_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $enigma_top_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net CHARACTERS_IN_DB0_1 [get_bd_ports CHARACTERS_IN_DB0] [get_bd_pins enigma_top_0/CHARACTERS_IN_DB0]
  connect_bd_net -net CHARACTERS_IN_DB1_1 [get_bd_ports CHARACTERS_IN_DB1] [get_bd_pins enigma_top_0/CHARACTERS_IN_DB1]
  connect_bd_net -net CONFIG_DRUM_TYP_1_IN_1 [get_bd_ports CONFIG_DRUM_TYP_1_IN] [get_bd_pins enigma_top_0/CONFIG_DRUM_TYP_1_IN]
  connect_bd_net -net CONFIG_DRUM_TYP_2_IN_1 [get_bd_ports CONFIG_DRUM_TYP_2_IN] [get_bd_pins enigma_top_0/CONFIG_DRUM_TYP_2_IN]
  connect_bd_net -net CONFIG_DRUM_TYP_3_IN_1 [get_bd_ports CONFIG_DRUM_TYP_3_IN] [get_bd_pins enigma_top_0/CONFIG_DRUM_TYP_3_IN]
  connect_bd_net -net CONFIG_START_POS_DRUM_1_IN_1 [get_bd_ports CONFIG_START_POS_DRUM_1_IN] [get_bd_pins enigma_top_0/CONFIG_START_POS_DRUM_1_IN]
  connect_bd_net -net CONFIG_START_POS_DRUM_2_IN_1 [get_bd_ports CONFIG_START_POS_DRUM_2_IN] [get_bd_pins enigma_top_0/CONFIG_START_POS_DRUM_2_IN]
  connect_bd_net -net CONFIG_START_POS_DRUM_3_IN_1 [get_bd_ports CONFIG_START_POS_DRUM_3_IN] [get_bd_pins enigma_top_0/CONFIG_START_POS_DRUM_3_IN]
  connect_bd_net -net DRUM_IMPULS_IN_1 [get_bd_ports DRUM_IMPULS_IN] [get_bd_pins enigma_top_0/DRUM_IMPULS_IN]
  connect_bd_net -net SOFT_RESET_N_IN_1 [get_bd_ports SOFT_RESET_N_IN] [get_bd_pins enigma_top_0/SOFT_RESET_N_IN]
  connect_bd_net -net START_IN_1 [get_bd_ports START_IN] [get_bd_pins enigma_top_0/START_IN]
  connect_bd_net -net UB_CLK_IN_1 [get_bd_ports UB_CLK_IN] [get_bd_pins enigma_top_0/UB_CLK_IN]
  connect_bd_net -net enigma_top_0_CODED_CHARACTERS_OUT_DB0 [get_bd_ports CODED_CHARACTERS_OUT_DB0] [get_bd_pins enigma_top_0/CODED_CHARACTERS_OUT_DB0]
  connect_bd_net -net enigma_top_0_CODED_CHARACTERS_OUT_DB1 [get_bd_ports CODED_CHARACTERS_OUT_DB1] [get_bd_pins enigma_top_0/CODED_CHARACTERS_OUT_DB1]
  connect_bd_net -net enigma_top_0_READY_OUT [get_bd_ports READY_OUT] [get_bd_pins enigma_top_0/READY_OUT]

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


