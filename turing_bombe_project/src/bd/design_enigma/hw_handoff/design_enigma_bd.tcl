
################################################################
# This is a generated script based on design: design_enigma
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
# source design_enigma_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# drum, drum, drum, drum_ukw, enigma_control, pseudo_lut

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
set design_name design_enigma

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
  set CHARACTERS_IN_DB0 [ create_bd_port -dir I -from 25 -to 0 -type data CHARACTERS_IN_DB0 ]
  set CHARACTERS_IN_DB1 [ create_bd_port -dir I -from 25 -to 0 -type data CHARACTERS_IN_DB1 ]
  set CODED_CHARACTERS_OUT_DB0 [ create_bd_port -dir O -from 25 -to 0 -type data CODED_CHARACTERS_OUT_DB0 ]
  set CODED_CHARACTERS_OUT_DB1 [ create_bd_port -dir O -from 25 -to 0 -type data CODED_CHARACTERS_OUT_DB1 ]
  set CONFIG_DRUM_TYP_1_IN [ create_bd_port -dir I -from 2 -to 0 -type data CONFIG_DRUM_TYP_1_IN ]
  set CONFIG_DRUM_TYP_2_IN [ create_bd_port -dir I -from 2 -to 0 -type data CONFIG_DRUM_TYP_2_IN ]
  set CONFIG_DRUM_TYP_3_IN [ create_bd_port -dir I -from 2 -to 0 -type data CONFIG_DRUM_TYP_3_IN ]
  set CONFIG_START_POS_DRUM_1_IN [ create_bd_port -dir I -from 4 -to 0 -type data CONFIG_START_POS_DRUM_1_IN ]
  set CONFIG_START_POS_DRUM_2_IN [ create_bd_port -dir I -from 4 -to 0 -type data CONFIG_START_POS_DRUM_2_IN ]
  set CONFIG_START_POS_DRUM_3_IN [ create_bd_port -dir I -from 4 -to 0 -type data CONFIG_START_POS_DRUM_3_IN ]
  set DRUM_IMPULS_IN [ create_bd_port -dir I -type data DRUM_IMPULS_IN ]
  set READY_OUT [ create_bd_port -dir O -type data READY_OUT ]
  set SOFT_RESET_IN [ create_bd_port -dir I -type rst SOFT_RESET_IN ]
  set START_IN [ create_bd_port -dir I -type data START_IN ]
  set UB_CLK_IN [ create_bd_port -dir I -type clk UB_CLK_IN ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $UB_CLK_IN

  # Create instance: drum_1, and set properties
  set block_name drum
  set block_cell_name drum_1
  if { [catch {set drum_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $drum_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: drum_2, and set properties
  set block_name drum
  set block_cell_name drum_2
  if { [catch {set drum_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $drum_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: drum_3, and set properties
  set block_name drum
  set block_cell_name drum_3
  if { [catch {set drum_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $drum_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: drum_ukw_0, and set properties
  set block_name drum_ukw
  set block_cell_name drum_ukw_0
  if { [catch {set drum_ukw_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $drum_ukw_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: enigma_control, and set properties
  set block_name enigma_control
  set block_cell_name enigma_control
  if { [catch {set enigma_control [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $enigma_control eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pseudo_lut, and set properties
  set block_name pseudo_lut
  set block_cell_name pseudo_lut
  if { [catch {set pseudo_lut [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pseudo_lut eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net CHARACTERS_IN_DB0_1 [get_bd_ports CHARACTERS_IN_DB0] [get_bd_pins enigma_control/CHARACTERS_IN_DB0]
  connect_bd_net -net CHARACTERS_IN_DB1_1 [get_bd_ports CHARACTERS_IN_DB1] [get_bd_pins enigma_control/CHARACTERS_IN_DB1]
  connect_bd_net -net CONFIG_DRUM_TYP_1_IN_1 [get_bd_ports CONFIG_DRUM_TYP_1_IN] [get_bd_pins enigma_control/CONFIG_DRUM_TYP_1_IN]
  connect_bd_net -net CONFIG_DRUM_TYP_2_IN_1 [get_bd_ports CONFIG_DRUM_TYP_2_IN] [get_bd_pins enigma_control/CONFIG_DRUM_TYP_2_IN]
  connect_bd_net -net CONFIG_DRUM_TYP_3_IN_1 [get_bd_ports CONFIG_DRUM_TYP_3_IN] [get_bd_pins enigma_control/CONFIG_DRUM_TYP_3_IN]
  connect_bd_net -net CONFIG_START_POS_DRUM_1_IN_1 [get_bd_ports CONFIG_START_POS_DRUM_1_IN] [get_bd_pins enigma_control/CONFIG_START_POS_DRUM_1_IN]
  connect_bd_net -net CONFIG_START_POS_DRUM_2_IN_1 [get_bd_ports CONFIG_START_POS_DRUM_2_IN] [get_bd_pins enigma_control/CONFIG_START_POS_DRUM_2_IN]
  connect_bd_net -net CONFIG_START_POS_DRUM_3_IN_1 [get_bd_ports CONFIG_START_POS_DRUM_3_IN] [get_bd_pins enigma_control/CONFIG_START_POS_DRUM_3_IN]
  connect_bd_net -net DRUM_IMPULS_IN_1 [get_bd_ports DRUM_IMPULS_IN] [get_bd_pins enigma_control/DRUM_IMPULS_IN]
  connect_bd_net -net SOFT_RESET_IN_1 [get_bd_ports SOFT_RESET_IN] [get_bd_pins drum_1/SOFT_RESET_N_IN] [get_bd_pins drum_2/SOFT_RESET_N_IN] [get_bd_pins drum_3/SOFT_RESET_N_IN] [get_bd_pins drum_ukw_0/SOFT_RESET_N_IN] [get_bd_pins enigma_control/SOFT_RESET_N_IN] [get_bd_pins pseudo_lut/SOFT_RESET_N_IN]
  connect_bd_net -net START_IN_1 [get_bd_ports START_IN] [get_bd_pins enigma_control/START_IN]
  connect_bd_net -net UB_CLK_IN_1 [get_bd_ports UB_CLK_IN] [get_bd_pins drum_1/UB_CLK_IN] [get_bd_pins drum_2/UB_CLK_IN] [get_bd_pins drum_3/UB_CLK_IN] [get_bd_pins drum_ukw_0/UB_CLK_IN] [get_bd_pins enigma_control/UB_CLK_IN] [get_bd_pins pseudo_lut/UB_CLK_IN]
  connect_bd_net -net drum_0_CHARACTERS_OUT [get_bd_pins drum_1/CHARACTERS_OUT] [get_bd_pins drum_2/CHARACTERS_IN_FWD] [get_bd_pins enigma_control/CHARACTERS_FROM_DRUM_IN]
  connect_bd_net -net drum_0_CHARACTERS_TO_LUT [get_bd_pins drum_1/CHARACTERS_TO_LUT] [get_bd_pins pseudo_lut/CHARACTERS_FROM_DRUM_IN_1]
  connect_bd_net -net drum_0_DIRECTION_TO_LUT [get_bd_pins drum_1/DIRECTION_TO_LUT] [get_bd_pins pseudo_lut/DIRECTION_1]
  connect_bd_net -net drum_0_DRUM_TYP_TO_LUT [get_bd_pins drum_1/DRUM_TYP_TO_LUT] [get_bd_pins pseudo_lut/DRUM_TYP_IN_1]
  connect_bd_net -net drum_0_READY_OUT_BWD [get_bd_pins drum_1/READY_OUT_BWD] [get_bd_pins enigma_control/READY_FROM_DRUM_IN]
  connect_bd_net -net drum_0_READY_OUT_FWD [get_bd_pins drum_1/READY_OUT_FWD] [get_bd_pins drum_2/REQUEST_IN_FWD]
  connect_bd_net -net drum_0_REQUEST_TO_LUT [get_bd_pins drum_1/REQUEST_TO_LUT] [get_bd_pins pseudo_lut/REQUEST_1]
  connect_bd_net -net drum_1_CHARACTERS_OUT [get_bd_pins drum_1/CHARACTERS_IN_BWD] [get_bd_pins drum_2/CHARACTERS_OUT] [get_bd_pins drum_3/CHARACTERS_IN_FWD]
  connect_bd_net -net drum_1_CHARACTERS_TO_LUT [get_bd_pins drum_2/CHARACTERS_TO_LUT] [get_bd_pins pseudo_lut/CHARACTERS_FROM_DRUM_IN_2]
  connect_bd_net -net drum_1_DIRECTION_TO_LUT [get_bd_pins drum_2/DIRECTION_TO_LUT] [get_bd_pins pseudo_lut/DIRECTION_2]
  connect_bd_net -net drum_1_DRUM_IMPULS_OUT [get_bd_pins drum_1/DRUM_IMPULS_IN] [get_bd_pins drum_2/DRUM_IMPULS_OUT]
  connect_bd_net -net drum_1_DRUM_TYP_TO_LUT [get_bd_pins drum_2/DRUM_TYP_TO_LUT] [get_bd_pins pseudo_lut/DRUM_TYP_IN_2]
  connect_bd_net -net drum_1_READY_OUT_BWD [get_bd_pins drum_1/REQUEST_IN_BWD] [get_bd_pins drum_2/READY_OUT_BWD]
  connect_bd_net -net drum_1_READY_OUT_FWD [get_bd_pins drum_2/READY_OUT_FWD] [get_bd_pins drum_3/REQUEST_IN_FWD]
  connect_bd_net -net drum_1_REQUEST_TO_LUT [get_bd_pins drum_2/REQUEST_TO_LUT] [get_bd_pins pseudo_lut/REQUEST_2]
  connect_bd_net -net drum_2_CHARACTERS_OUT [get_bd_pins drum_2/CHARACTERS_IN_BWD] [get_bd_pins drum_3/CHARACTERS_OUT] [get_bd_pins drum_ukw_0/CHARACTERS_IN_FWD]
  connect_bd_net -net drum_2_CHARACTERS_TO_LUT [get_bd_pins drum_3/CHARACTERS_TO_LUT] [get_bd_pins pseudo_lut/CHARACTERS_FROM_DRUM_IN_3]
  connect_bd_net -net drum_2_DIRECTION_TO_LUT [get_bd_pins drum_3/DIRECTION_TO_LUT] [get_bd_pins pseudo_lut/DIRECTION_3]
  connect_bd_net -net drum_2_DRUM_IMPULS_OUT [get_bd_pins drum_2/DRUM_IMPULS_IN] [get_bd_pins drum_3/DRUM_IMPULS_OUT]
  connect_bd_net -net drum_2_DRUM_TYP_TO_LUT [get_bd_pins drum_3/DRUM_TYP_TO_LUT] [get_bd_pins pseudo_lut/DRUM_TYP_IN_3]
  connect_bd_net -net drum_2_READY_OUT_BWD [get_bd_pins drum_2/REQUEST_IN_BWD] [get_bd_pins drum_3/READY_OUT_BWD]
  connect_bd_net -net drum_2_READY_OUT_FWD [get_bd_pins drum_3/READY_OUT_FWD] [get_bd_pins drum_ukw_0/REQUEST_IN_FWD]
  connect_bd_net -net drum_2_REQUEST_TO_LUT [get_bd_pins drum_3/REQUEST_TO_LUT] [get_bd_pins pseudo_lut/REQUEST_3]
  connect_bd_net -net drum_ukw_0_CHARACTERS_OUT [get_bd_pins drum_3/CHARACTERS_IN_BWD] [get_bd_pins drum_ukw_0/CHARACTERS_OUT]
  connect_bd_net -net drum_ukw_0_CHARACTERS_TO_LUT [get_bd_pins drum_ukw_0/CHARACTERS_TO_LUT] [get_bd_pins pseudo_lut/CHARACTERS_FROM_DRUM_IN_UKW]
  connect_bd_net -net drum_ukw_0_DRUM_TYP_TO_LUT [get_bd_pins drum_ukw_0/DRUM_TYP_TO_LUT] [get_bd_pins pseudo_lut/DRUM_TYP_IN_UKW]
  connect_bd_net -net drum_ukw_0_READY_OUT_BWD [get_bd_pins drum_3/REQUEST_IN_BWD] [get_bd_pins drum_ukw_0/READY_OUT_BWD]
  connect_bd_net -net drum_ukw_0_REQUEST_TO_LUT [get_bd_pins drum_ukw_0/REQUEST_TO_LUT] [get_bd_pins pseudo_lut/REQUEST_UKW]
  connect_bd_net -net enigma_control_0_CHARACTERS_TO_FIRST_DRUM_OUT [get_bd_pins drum_1/CHARACTERS_IN_FWD] [get_bd_pins enigma_control/CHARACTERS_TO_FIRST_DRUM_OUT]
  connect_bd_net -net enigma_control_0_CONFIG_DRUM_OVERFLOW_2_OUT [get_bd_pins drum_2/CONFIG_DRUM_OVERFLOW] [get_bd_pins enigma_control/CONFIG_DRUM_OVERFLOW_2_OUT]
  connect_bd_net -net enigma_control_0_CONFIG_DRUM_OVERFLOW_3_OUT [get_bd_pins drum_3/CONFIG_DRUM_OVERFLOW] [get_bd_pins enigma_control/CONFIG_DRUM_OVERFLOW_3_OUT]
  connect_bd_net -net enigma_control_0_CONFIG_DRUM_TYP_1_OUT [get_bd_pins drum_1/CONFIG_DRUM_TYP_IN] [get_bd_pins enigma_control/CONFIG_DRUM_TYP_1_OUT]
  connect_bd_net -net enigma_control_0_CONFIG_DRUM_TYP_2_OUT [get_bd_pins drum_2/CONFIG_DRUM_TYP_IN] [get_bd_pins enigma_control/CONFIG_DRUM_TYP_2_OUT]
  connect_bd_net -net enigma_control_0_CONFIG_DRUM_TYP_3_OUT [get_bd_pins drum_3/CONFIG_DRUM_TYP_IN] [get_bd_pins enigma_control/CONFIG_DRUM_TYP_3_OUT]
  connect_bd_net -net enigma_control_0_CONFIG_START_POS_DRUM_1_OUT [get_bd_pins drum_1/CONFIG_START_POS] [get_bd_pins enigma_control/CONFIG_START_POS_DRUM_1_OUT]
  connect_bd_net -net enigma_control_0_CONFIG_START_POS_DRUM_2_OUT [get_bd_pins drum_2/CONFIG_START_POS] [get_bd_pins enigma_control/CONFIG_START_POS_DRUM_2_OUT]
  connect_bd_net -net enigma_control_0_CONFIG_START_POS_DRUM_3_OUT [get_bd_pins drum_3/CONFIG_START_POS] [get_bd_pins enigma_control/CONFIG_START_POS_DRUM_3_OUT]
  connect_bd_net -net enigma_control_0_DRUM_IMPULS_OUT [get_bd_pins drum_3/DRUM_IMPULS_IN] [get_bd_pins enigma_control/DRUM_IMPULS_OUT]
  connect_bd_net -net enigma_control_0_START_TO_FIRST_DRUM_OUT [get_bd_pins drum_1/REQUEST_IN_FWD] [get_bd_pins enigma_control/START_TO_FIRST_DRUM_OUT]
  connect_bd_net -net enigma_control_CODED_CHARECTERS_OUT_DB0 [get_bd_ports CODED_CHARACTERS_OUT_DB0] [get_bd_pins enigma_control/CODED_CHARECTERS_OUT_DB0]
  connect_bd_net -net enigma_control_CODED_CHARECTERS_OUT_DB1 [get_bd_ports CODED_CHARACTERS_OUT_DB1] [get_bd_pins enigma_control/CODED_CHARECTERS_OUT_DB1]
  connect_bd_net -net enigma_control_READY_OUT [get_bd_ports READY_OUT] [get_bd_pins enigma_control/READY_OUT]
  connect_bd_net -net pseudo_lut_0_BUSY_OUT [get_bd_pins drum_1/LUT_BUSY_IN] [get_bd_pins drum_2/LUT_BUSY_IN] [get_bd_pins drum_3/LUT_BUSY_IN] [get_bd_pins drum_ukw_0/LUT_BUSY_IN] [get_bd_pins pseudo_lut/BUSY_OUT]
  connect_bd_net -net pseudo_lut_0_PROJECTION [get_bd_pins drum_1/CHARACTERS_FROM_LUT] [get_bd_pins drum_2/CHARACTERS_FROM_LUT] [get_bd_pins drum_3/CHARACTERS_FROM_LUT] [get_bd_pins drum_ukw_0/CHARACTERS_FROM_LUT] [get_bd_pins pseudo_lut/PROJECTION]
  connect_bd_net -net pseudo_lut_0_READY_OUT_1 [get_bd_pins drum_1/LUT_READY_IN] [get_bd_pins pseudo_lut/READY_OUT_1]
  connect_bd_net -net pseudo_lut_0_READY_OUT_2 [get_bd_pins drum_2/LUT_READY_IN] [get_bd_pins pseudo_lut/READY_OUT_2]
  connect_bd_net -net pseudo_lut_0_READY_OUT_3 [get_bd_pins drum_3/LUT_READY_IN] [get_bd_pins pseudo_lut/READY_OUT_3]
  connect_bd_net -net pseudo_lut_0_READY_OUT_UKW [get_bd_pins drum_ukw_0/LUT_READY_IN] [get_bd_pins pseudo_lut/READY_OUT_UKW]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins drum_1/CONFIG_DRUM_OVERFLOW] [get_bd_pins xlconstant_0/dout]

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


