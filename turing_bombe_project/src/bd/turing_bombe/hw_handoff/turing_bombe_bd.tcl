
################################################################
# This is a generated script based on design: turing_bombe
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
# source turing_bombe_script.tcl


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
set design_name turing_bombe

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
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set CLK [ create_bd_port -dir I -type clk CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
 ] $CLK
  set LED_FIRST_STOP_OUT [ create_bd_port -dir O LED_FIRST_STOP_OUT ]
  set LED_FOURTH_STOP_OUT [ create_bd_port -dir O LED_FOURTH_STOP_OUT ]
  set LED_SECOND_STOP_OUT [ create_bd_port -dir O LED_SECOND_STOP_OUT ]
  set LED_THIRD_STOP_OUT [ create_bd_port -dir O LED_THIRD_STOP_OUT ]

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

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

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

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {660} \
   CONFIG.PCW_ACT_CAN0_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN1_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {9} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_ACT_I2C_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {198} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {110} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {110} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {110} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {110} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {110} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {110} \
   CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {99} \
   CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {110} \
   CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666666} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN0_BASEADDR {0xE0008000} \
   CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN0_HIGHADDR {0xE0008FFF} \
   CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN0_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN1_BASEADDR {0xE0009000} \
   CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN1_HIGHADDR {0xE0009FFF} \
   CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN1_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
   CONFIG.PCW_CLK0_FREQ {10000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CORE0_FIQ_INTR {0} \
   CONFIG.PCW_CORE0_IRQ_INTR {0} \
   CONFIG.PCW_CORE1_FIQ_INTR {0} \
   CONFIG.PCW_CORE1_IRQ_INTR {0} \
   CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1320} \
   CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
   CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {53} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1056} \
   CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(0)/LPR(32)} \
   CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL {15} \
   CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_PORT0_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT1_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_RAM_BASEADDR {0x00100000} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
   CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DM_WIDTH {4} \
   CONFIG.PCW_DQS_WIDTH {4} \
   CONFIG.PCW_DQ_WIDTH {32} \
   CONFIG.PCW_ENET0_BASEADDR {0xE000B000} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {0} \
   CONFIG.PCW_ENET0_HIGHADDR {0xE000BFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_BASEADDR {0xE000C000} \
   CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {0} \
   CONFIG.PCW_ENET1_HIGHADDR {0xE000CFFF} \
   CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
   CONFIG.PCW_EN_4K_TIMER {0} \
   CONFIG.PCW_EN_CAN0 {0} \
   CONFIG.PCW_EN_CAN1 {0} \
   CONFIG.PCW_EN_CLK0_PORT {0} \
   CONFIG.PCW_EN_CLK1_PORT {0} \
   CONFIG.PCW_EN_CLK2_PORT {0} \
   CONFIG.PCW_EN_CLK3_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG1_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG2_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG3_PORT {0} \
   CONFIG.PCW_EN_DDR {1} \
   CONFIG.PCW_EN_EMIO_CAN0 {0} \
   CONFIG.PCW_EN_EMIO_CAN1 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_ENET0 {0} \
   CONFIG.PCW_EN_EMIO_ENET1 {0} \
   CONFIG.PCW_EN_EMIO_GPIO {0} \
   CONFIG.PCW_EN_EMIO_I2C0 {0} \
   CONFIG.PCW_EN_EMIO_I2C1 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
   CONFIG.PCW_EN_EMIO_PJTAG {0} \
   CONFIG.PCW_EN_EMIO_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_SPI0 {0} \
   CONFIG.PCW_EN_EMIO_SPI1 {0} \
   CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
   CONFIG.PCW_EN_EMIO_TRACE {0} \
   CONFIG.PCW_EN_EMIO_TTC0 {0} \
   CONFIG.PCW_EN_EMIO_TTC1 {0} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_EMIO_UART1 {0} \
   CONFIG.PCW_EN_EMIO_WDT {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
   CONFIG.PCW_EN_ENET0 {0} \
   CONFIG.PCW_EN_ENET1 {0} \
   CONFIG.PCW_EN_GPIO {0} \
   CONFIG.PCW_EN_I2C0 {0} \
   CONFIG.PCW_EN_I2C1 {0} \
   CONFIG.PCW_EN_MODEM_UART0 {0} \
   CONFIG.PCW_EN_MODEM_UART1 {0} \
   CONFIG.PCW_EN_PJTAG {0} \
   CONFIG.PCW_EN_PTP_ENET0 {0} \
   CONFIG.PCW_EN_PTP_ENET1 {0} \
   CONFIG.PCW_EN_QSPI {0} \
   CONFIG.PCW_EN_RST0_PORT {1} \
   CONFIG.PCW_EN_RST1_PORT {0} \
   CONFIG.PCW_EN_RST2_PORT {0} \
   CONFIG.PCW_EN_RST3_PORT {0} \
   CONFIG.PCW_EN_SDIO0 {0} \
   CONFIG.PCW_EN_SDIO1 {0} \
   CONFIG.PCW_EN_SMC {0} \
   CONFIG.PCW_EN_SPI0 {0} \
   CONFIG.PCW_EN_SPI1 {0} \
   CONFIG.PCW_EN_TRACE {0} \
   CONFIG.PCW_EN_TTC0 {0} \
   CONFIG.PCW_EN_TTC1 {0} \
   CONFIG.PCW_EN_UART0 {0} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {0} \
   CONFIG.PCW_EN_USB1 {0} \
   CONFIG.PCW_EN_WDT {0} \
   CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK1_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK2_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK3_BUF {FALSE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GP0_EN_MODIFIABLE_TXN {1} \
   CONFIG.PCW_GP0_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP0_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GP1_EN_MODIFIABLE_TXN {1} \
   CONFIG.PCW_GP1_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP1_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GPIO_BASEADDR {0xE000A000} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {64} \
   CONFIG.PCW_GPIO_HIGHADDR {0xE000AFFF} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {0} \
   CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_BASEADDR {0xE0004000} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_HIGHADDR {0xE0004FFF} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_BASEADDR {0xE0005000} \
   CONFIG.PCW_I2C1_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C1_HIGHADDR {0xE0005FFF} \
   CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_I2C_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
   CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
   CONFIG.PCW_INCLUDE_ACP_TRANS_CHECK {0} \
   CONFIG.PCW_INCLUDE_TRACE_BUFFER {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {48} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1584} \
   CONFIG.PCW_IRQ_F2P_INTR {0} \
   CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {in} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_PRIMITIVE {54} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#UART 1#UART 1#unassigned#unassigned#unassigned#unassigned} \
   CONFIG.PCW_MIO_TREE_SIGNALS {unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#tx#rx#unassigned#unassigned#unassigned#unassigned} \
   CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {0} \
   CONFIG.PCW_M_AXI_GP0_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP0_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP0_THREAD_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP1_ENABLE_STATIC_REMAP {0} \
   CONFIG.PCW_M_AXI_GP1_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP1_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP1_THREAD_ID_WIDTH {12} \
   CONFIG.PCW_NAND_CYCLES_T_AR {1} \
   CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
   CONFIG.PCW_NAND_CYCLES_T_RC {11} \
   CONFIG.PCW_NAND_CYCLES_T_REA {1} \
   CONFIG.PCW_NAND_CYCLES_T_RR {1} \
   CONFIG.PCW_NAND_CYCLES_T_WC {11} \
   CONFIG.PCW_NAND_CYCLES_T_WP {1} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_CS0_T_PC {1} \
   CONFIG.PCW_NOR_CS0_T_RC {11} \
   CONFIG.PCW_NOR_CS0_T_TR {1} \
   CONFIG.PCW_NOR_CS0_T_WC {11} \
   CONFIG.PCW_NOR_CS0_T_WP {1} \
   CONFIG.PCW_NOR_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_CS1_T_PC {1} \
   CONFIG.PCW_NOR_CS1_T_RC {11} \
   CONFIG.PCW_NOR_CS1_T_TR {1} \
   CONFIG.PCW_NOR_CS1_T_WC {11} \
   CONFIG.PCW_NOR_CS1_T_WP {1} \
   CONFIG.PCW_NOR_CS1_WE_TIME {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
   CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
   CONFIG.PCW_P2F_CAN0_INTR {0} \
   CONFIG.PCW_P2F_CAN1_INTR {0} \
   CONFIG.PCW_P2F_CTI_INTR {0} \
   CONFIG.PCW_P2F_DMAC0_INTR {0} \
   CONFIG.PCW_P2F_DMAC1_INTR {0} \
   CONFIG.PCW_P2F_DMAC2_INTR {0} \
   CONFIG.PCW_P2F_DMAC3_INTR {0} \
   CONFIG.PCW_P2F_DMAC4_INTR {0} \
   CONFIG.PCW_P2F_DMAC5_INTR {0} \
   CONFIG.PCW_P2F_DMAC6_INTR {0} \
   CONFIG.PCW_P2F_DMAC7_INTR {0} \
   CONFIG.PCW_P2F_DMAC_ABORT_INTR {0} \
   CONFIG.PCW_P2F_ENET0_INTR {0} \
   CONFIG.PCW_P2F_ENET1_INTR {0} \
   CONFIG.PCW_P2F_GPIO_INTR {0} \
   CONFIG.PCW_P2F_I2C0_INTR {0} \
   CONFIG.PCW_P2F_I2C1_INTR {0} \
   CONFIG.PCW_P2F_QSPI_INTR {0} \
   CONFIG.PCW_P2F_SDIO0_INTR {0} \
   CONFIG.PCW_P2F_SDIO1_INTR {0} \
   CONFIG.PCW_P2F_SMC_INTR {0} \
   CONFIG.PCW_P2F_SPI0_INTR {0} \
   CONFIG.PCW_P2F_SPI1_INTR {0} \
   CONFIG.PCW_P2F_UART0_INTR {0} \
   CONFIG.PCW_P2F_UART1_INTR {0} \
   CONFIG.PCW_P2F_USB0_INTR {0} \
   CONFIG.PCW_P2F_USB1_INTR {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {0} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0} \
   CONFIG.PCW_PACKAGE_NAME {clg400} \
   CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_PERIPHERAL_BOARD_PRESET {part0} \
   CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PS7_SI_REV {PRODUCTION} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
   CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SDIO0_BASEADDR {0xE0100000} \
   CONFIG.PCW_SDIO0_HIGHADDR {0xE0100FFF} \
   CONFIG.PCW_SDIO1_BASEADDR {0xE0101000} \
   CONFIG.PCW_SDIO1_HIGHADDR {0xE0101FFF} \
   CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {0} \
   CONFIG.PCW_SMC_CYCLE_T0 {NA} \
   CONFIG.PCW_SMC_CYCLE_T1 {NA} \
   CONFIG.PCW_SMC_CYCLE_T2 {NA} \
   CONFIG.PCW_SMC_CYCLE_T3 {NA} \
   CONFIG.PCW_SMC_CYCLE_T4 {NA} \
   CONFIG.PCW_SMC_CYCLE_T5 {NA} \
   CONFIG.PCW_SMC_CYCLE_T6 {NA} \
   CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
   CONFIG.PCW_SPI0_BASEADDR {0xE0006000} \
   CONFIG.PCW_SPI0_GRP_SS0_ENABLE {0} \
   CONFIG.PCW_SPI0_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI0_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI0_HIGHADDR {0xE0006FFF} \
   CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SPI1_BASEADDR {0xE0007000} \
   CONFIG.PCW_SPI1_GRP_SS0_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI1_HIGHADDR {0xE0007FFF} \
   CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
   CONFIG.PCW_SPI_PERIPHERAL_VALID {0} \
   CONFIG.PCW_S_AXI_ACP_ARUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_AWUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_ID_WIDTH {3} \
   CONFIG.PCW_S_AXI_GP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_GP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP2_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP3_ID_WIDTH {6} \
   CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_TRACE_BUFFER_CLOCK_DELAY {12} \
   CONFIG.PCW_TRACE_BUFFER_FIFO_SIZE {128} \
   CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
   CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TRACE_PIPELINE_WIDTH {8} \
   CONFIG.PCW_TTC0_BASEADDR {0xE0104000} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_HIGHADDR {0xE0104fff} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC1_BASEADDR {0xE0105000} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_HIGHADDR {0xE0105fff} \
   CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART0_BASEADDR {0xE0000000} \
   CONFIG.PCW_UART0_BAUD_RATE {115200} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_HIGHADDR {0xE0000FFF} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_UART1_BASEADDR {0xE0001000} \
   CONFIG.PCW_UART1_BAUD_RATE {115200} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_HIGHADDR {0xE0001FFF} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
   CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {16} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {528} \
   CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
   CONFIG.PCW_UIPARAM_DDR_AL {0} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {80.4535} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {80.4535} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {80.4535} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {80.4535} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {1024 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {105.056} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {66.904} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {89.1715} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {113.63} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {98.503} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {68.5855} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {90.295} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {103.977} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {8 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333333} \
   CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J128M8 JP-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {14} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {30.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.75} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
   CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NA} \
   CONFIG.PCW_USB0_BASEADDR {0xE0102000} \
   CONFIG.PCW_USB0_HIGHADDR {0xE0102fff} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB1_BASEADDR {0xE0103000} \
   CONFIG.PCW_USB1_HIGHADDR {0xE0103fff} \
   CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
   CONFIG.PCW_USE_AXI_FABRIC_IDLE {0} \
   CONFIG.PCW_USE_AXI_NONSECURE {0} \
   CONFIG.PCW_USE_CORESIGHT {0} \
   CONFIG.PCW_USE_CROSS_TRIGGER {0} \
   CONFIG.PCW_USE_CR_FABRIC {1} \
   CONFIG.PCW_USE_DDR_BYPASS {0} \
   CONFIG.PCW_USE_DEBUG {0} \
   CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {0} \
   CONFIG.PCW_USE_DMA0 {0} \
   CONFIG.PCW_USE_DMA1 {0} \
   CONFIG.PCW_USE_DMA2 {0} \
   CONFIG.PCW_USE_DMA3 {0} \
   CONFIG.PCW_USE_EXPANDED_IOP {0} \
   CONFIG.PCW_USE_EXPANDED_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {0} \
   CONFIG.PCW_USE_HIGH_OCM {0} \
   CONFIG.PCW_USE_M_AXI_GP0 {1} \
   CONFIG.PCW_USE_M_AXI_GP1 {0} \
   CONFIG.PCW_USE_PROC_EVENT_BUS {0} \
   CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_S_AXI_ACP {0} \
   CONFIG.PCW_USE_S_AXI_GP0 {0} \
   CONFIG.PCW_USE_S_AXI_GP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP0 {0} \
   CONFIG.PCW_USE_S_AXI_HP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP2 {0} \
   CONFIG.PCW_USE_S_AXI_HP3 {0} \
   CONFIG.PCW_USE_TRACE {0} \
   CONFIG.PCW_USE_TRACE_DATA_EDGE_DETECTOR {0} \
   CONFIG.PCW_VALUE_SILVERSION {3} \
   CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
 ] $processing_system7_0

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_0

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
  
  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins turing_bombe_control_0/BRAM_A]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins smartconnect_0/M00_AXI]

  # Create port connections
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
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins proc_sys_reset_0/interconnect_aresetn] [get_bd_pins smartconnect_0/aresetn]
  connect_bd_net -net sim_clk_gen_0_clk [get_bd_ports CLK] [get_bd_pins TURBO_enigma_0/UB_CLK_IN] [get_bd_pins TURBO_enigma_1/UB_CLK_IN] [get_bd_pins TURBO_enigma_10/UB_CLK_IN] [get_bd_pins TURBO_enigma_11/UB_CLK_IN] [get_bd_pins TURBO_enigma_12/UB_CLK_IN] [get_bd_pins TURBO_enigma_2/UB_CLK_IN] [get_bd_pins TURBO_enigma_4/UB_CLK_IN] [get_bd_pins TURBO_enigma_5/UB_CLK_IN] [get_bd_pins TURBO_enigma_6/UB_CLK_IN] [get_bd_pins TURBO_enigma_7/UB_CLK_IN] [get_bd_pins TURBO_enigma_8/UB_CLK_IN] [get_bd_pins TURBO_enigma_9/UB_CLK_IN] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins diagonal_board_0/CLK_IN] [get_bd_pins indicator_drum_0/CLK_IN] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins smartconnect_0/aclk] [get_bd_pins turing_bombe_control_0/CLK_IN]
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

  # Create address segments
  create_bd_addr_seg -range 0x00002000 -offset 0x40000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0


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


