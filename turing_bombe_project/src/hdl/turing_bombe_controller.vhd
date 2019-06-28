--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : mini_alu.vhd
-- Author      : Tobias Niggemeyer   
-- Description : This entity control the turing bombe
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-- 1.0     |Tobias Niggemeyer         | 23.05.2019 | - initial release
--         |                          |            |   
-----------+--------------------------+------------+----------------------------

-----------------
--  LIBRARIES  --                                                
-----------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
library work;
use work.turingBombArrays.all;
library xpm;
use xpm.vcomponents.all;

entity turing_bombe_controller is
    Port    ( 
             -- just for testbench
             ENABLE_BRAM_A_IN             : in STD_LOGIC                            := '0';
             ADDRESS_BRAM_A_IN            : in STD_LOGIC_VECTOR(5 DOWNTO 0)         := (others => '0');
             DATA_IN_BRAM_A               : in STD_LOGIC_VECTOR(31 DOWNTO 0)        := (others => '0');
             DATA_OUT_BRAM_A              : out STD_LOGIC_VECTOR(31 DOWNTO 0)       := (others => '0');
             WRITE_ENABLE_BRAM_IN         : in STD_LOGIC_VECTOR(0 DOWNTO 0)         := (others => '0');
             CLK_BRAM_A_IN                : in STD_LOGIC                            ;
             RST_BRAM_A_IN                : in STD_LOGIC                            ;
             --
    
             DB_IN_INPUT_VOLTAGE_OUT      : OUT STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');
             DB_IN_INPUT_REGISTER_OUT     : OUT STD_LOGIC_VECTOR ( 4 downto 0 )     := (others => '0');            
                          
             ENIGMAS_START_OUT            : out STD_LOGIC                           := '0';
             DRUM_IMPULS_OUT              : out STD_LOGIC                           := '0';
             ENIGMAS_DRUM_1_OUT           : out STD_LOGIC_VECTOR ( 2 downto 0 )  := (others => '0');
             ENIGMAS_DRUM_2_OUT           : out STD_LOGIC_VECTOR ( 2 downto 0 )  := (others => '0');
             ENIGMAS_DRUM_3_OUT           : out STD_LOGIC_VECTOR ( 2 downto 0 )  := (others => '0');
             
             -- indicator drum
                       
             POS_1_INDICATOR_DRUM_IN      : in STD_LOGIC_VECTOR(4 downto 0)         := (others => '0');
             POS_2_INDICATOR_DRUM_IN      : in STD_LOGIC_VECTOR(4 downto 0)         := (others => '0');
             POS_3_INDICATOR_DRUM_IN      : in STD_LOGIC_VECTOR(4 downto 0)         := (others => '0');
             CLK_IN                       : in STD_LOGIC                            := '0';
             DB_READY_IN                  : in STD_LOGIC                            := '0';
             DB_OUT_NO_CHANGES_IN         : STD_LOGIC                               := '0';
             RESET_OUT                    : out STD_LOGIC                           := '0';
             
             -- config engiams
             ENIGMA_1_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
             ENIGMA_1_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
             
             ENIGMA_1_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_1_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_1_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             
                                 
             ENIGMA_2_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
             ENIGMA_2_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
 
             ENIGMA_2_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_2_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_2_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
               
                         
             ENIGMA_3_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
             ENIGMA_3_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
  
             ENIGMA_3_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_3_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_3_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             
                        
             ENIGMA_4_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
             ENIGMA_4_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
 
             ENIGMA_4_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_4_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_4_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             
                         
             ENIGMA_5_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
             ENIGMA_5_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
   
             ENIGMA_5_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_5_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_5_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             
                       
             ENIGMA_6_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
             ENIGMA_6_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');

             ENIGMA_6_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_6_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_6_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             
                      
             ENIGMA_7_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
             ENIGMA_7_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');

             ENIGMA_7_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_7_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_7_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             
                         
             ENIGMA_8_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
             ENIGMA_8_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');

             ENIGMA_8_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_8_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_8_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             
                          
             ENIGMA_9_CHARACTERS_DB0_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');
             ENIGMA_9_CHARACTERS_DB1_OUT  : out STD_LOGIC_VECTOR ( 25 downto 0 )   := (others => '0');

             ENIGMA_9_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_9_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_9_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             
                         
             ENIGMA_10_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )  := (others => '0');
             ENIGMA_10_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )  := (others => '0');

             ENIGMA_10_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_10_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_10_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             
                         
             ENIGMA_11_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )  := (others => '0');
             ENIGMA_11_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )  := (others => '0');

             ENIGMA_11_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_11_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_11_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             
                         
             ENIGMA_12_CHARACTERS_DB0_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )  := (others => '0');
             ENIGMA_12_CHARACTERS_DB1_OUT : out STD_LOGIC_VECTOR ( 25 downto 0 )  := (others => '0');

             ENIGMA_12_DRUMPOS_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_12_DRUMPOS_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             ENIGMA_12_DRUMPOS_3_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             
                         
             --ENIGMA_1_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_1_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_2_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_2_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_3_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_3_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_4_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_4_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_5_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_5_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_6_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_6_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_7_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_7_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_8_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_8_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_9_DB_CON_1_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_9_DB_CON_2_OUT        : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_10_DB_CON_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_10_DB_CON_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_11_DB_CON_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_11_DB_CON_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_12_DB_CON_1_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
             --ENIGMA_12_DB_CON_2_OUT       : out STD_LOGIC_VECTOR ( 4 downto 0 )  := (others => '0');
                
             
             --config diagonalboard
             
             DB_IN_ENIGMA_1_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_1_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0');
             DB_IN_ENIGMA_2_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_2_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_3_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_3_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_4_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_4_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_5_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_5_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_6_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_6_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_7_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_7_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_8_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_8_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_9_DBCON0_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_9_DBCON1_OUT    : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_10_DBCON0_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_10_DBCON1_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_11_DBCON0_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_11_DBCON1_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_12_DBCON0_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0'); 
             DB_IN_ENIGMA_12_DBCON1_OUT   : out STD_LOGIC_VECTOR ( 4 downto 0 )      := (others => '0');
             
             
             
             -- result diagonalboard
             DB_OUT_ENIGMA_1_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_1_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');            
             DB_OUT_ENIGMA_2_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_2_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_3_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_3_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_4_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_4_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_5_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_5_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_6_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_6_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_7_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_7_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_8_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_8_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_9_DB0          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_9_DB1          : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');             
             DB_OUT_ENIGMA_10_DB0         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_10_DB1         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');            
             DB_OUT_ENIGMA_11_DB0         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_11_DB1         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');            
             DB_OUT_ENIGMA_12_DB0         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             DB_OUT_ENIGMA_12_DB1         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');
             
             
             
             DB_RESULT_RESIGER_IN         : in STD_LOGIC_VECTOR ( 25 downto 0 )     := (others => '0');

             

             --Visu Zybo

             LED_FIRST_STOP_OUT           : out STD_LOGIC                               := '0';
             LED_SECOND_STOP_OUT          : out STD_LOGIC                               := '0';
             LED_THIRD_STOP_OUT           : out STD_LOGIC                               := '0';
             LED_FOURTH_STOP_OUT          : out STD_LOGIC                               := '0'

             
            );                
end turing_bombe_controller;

--------------------
--  ARCHITECTURE  --
--------------------
architecture HDL of turing_bombe_controller is
      ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO of ENABLE_BRAM_A_IN: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_A EN";
  ATTRIBUTE X_INTERFACE_INFO of DATA_OUT_BRAM_A: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_A DOUT";
  ATTRIBUTE X_INTERFACE_INFO of DATA_IN_BRAM_A: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  ATTRIBUTE X_INTERFACE_INFO of WRITE_ENABLE_BRAM_IN: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_A WE";
  ATTRIBUTE X_INTERFACE_INFO of ADDRESS_BRAM_A_IN: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  ATTRIBUTE X_INTERFACE_INFO of CLK_BRAM_A_IN: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_A CLK";
  ATTRIBUTE X_INTERFACE_INFO of RST_BRAM_A_IN: SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_A RST";
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER of DATA_IN_BRAM_A: SIGNAL is "MASTER_TYPE BRAM_CTRL,MEM_ECC NONE,MEM_WIDTH 32,MEM_SIZE 8192, READ_WRITE_MODE READ_WRITE";
  
  
  ATTRIBUTE X_INTERFACE_INFO of CLK_IN: SIGNAL is "xilinx.com:signal:clock:1.0 CLK1 CLK";  
  ATTRIBUTE X_INTERFACE_PARAMETER of CLK_IN: SIGNAL is "FREQ_HZ 50000000";
  
  



------------------------------
--  COMPONENT DECLARATIONS  --
------------------------------

-----------------
--  CONSTANTS  --
-----------------
    type fsm_states is (
                            SET_READY_FLAG,
                            IDLE,
                            RESET_READY_FLAG,
                            READ_CONFIG,
                            WAIT_FOR_COMPONENTS_TO_GET_READY,
                            PREPARE_ENIGMAS_AND_DB, 
                            START_ENIGMAS_WITHOUT_TURN_IMPULS,
                            SEND_START_IMPULS_WITHOUT_TURN,
                            SEND_START_IMPULS_WITH_TURN,
                            SEND_TURN_IMPULS, 
                            START_ENIGMAS_WITH_TURN_IMPULS,
                            WAIT_FOR_DIAGONALBOARD, 
                            CHECK_RESULT,
                            WRITE_RESULT_TO_BRAM,
                            WAIT_FOR_BRAM_WRITE_RESULT_1,
                            WAIT_FOR_BRAM_WRITE_RESULT_2,
                            WRITE_READY_TO_BRAM,
                            WAIT_FOR_BRAM_WRITE_READY_1,
                            WAIT_FOR_BRAM_WRITE_READY_2, 
                            WAIT_FOR_BRAM_WRITE_READY_3,
                            RESET
                        );
     
    type read_config_fsm_states is (
                                        IDLE,
                                        WAIT_FOR_BRAM_1,
                                        WAIT_FOR_BRAM_2,
                                        READ_ENIGMAS_12_POS, 
                                        READ_ENIGMAS_34_POS, 
                                        READ_ENIGMAS_56_POS,
                                        READ_ENIGMAS_78_POS,
                                        READ_ENIGMAS_910_POS,
                                        READ_ENIGMAS_1112_POS,
                                        READ_DRUMS_VOL_REG,
                                        READ_ENIGMAS_123_DB_CON,
                                        READ_ENIGMAS_456_DB_CON,
                                        READ_ENIGMAS_789_DB_CON,
                                        READ_ENIGMAS_101112_DB_CON
                                    );
    --this address addresses the following data
        -- Bit[0] StartBit
        -- Bit[1] ResetBit
    constant start_reset_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
       
    --this address addresses the following data
        -- Bit[0-4]   drum position of the first engima first drum
        -- Bit[5-9]   drum position of the first engima second drum
        -- Bit[10-14] drum position of the first engima third drum
                      
        -- Bit[15-19] drum position of the second engima first drum
        -- Bit[20-24] drum position of the second engima second drum
        -- Bit[24-29] drum position of the second engima third drum         
    constant enigmas_12_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000001";
    
    --this address addresses the following data
        -- Bit[0-4]   drum position of the third engima first drum
        -- Bit[5-9]   drum position of the third engima second drum
        -- Bit[10-14] drum position of the third engima third drum
        
        -- Bit[15-19] drum position of the fourth engima first drum
        -- Bit[20-24] drum position of the fourth engima second drum
        -- Bit[24-29] drum position of the fourth engima third drum         
    constant enigmas_34_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";
    
    --this address addresses the following data
        -- Bit[0-2]   drum position of the fifth engima first drum
        -- Bit[3-5]   drum position of the fifth engima second drum
        -- Bit[6-8]   drum position of the fifth engima third drum
        
        -- Bit[9-11]  drum position of the sixth engima first drum
        -- Bit[12-14] drum position of the sixth engima second drum
        -- Bit[15-17] drum position of the sixth engima third drum   
    constant enigmas_56_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000011";
    
    --this address addresses the following data
        -- Bit[0-2]   drum position of the seventh engima first drum
        -- Bit[3-5]   drum position of the seventh engima second drum
        -- Bit[6-8]   drum position of the seventh engima third drum
        
        -- Bit[9-11]  drum position of the eighth engima first drum
        -- Bit[12-14] drum position of the eighth engima second drum
        -- Bit[15-17] drum position of the eighth engima third drum      
    constant enigmas_78_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000100";

    --this address addresses the following data
        -- Bit[0-2]   drum position of the ninth engima first drum
        -- Bit[3-5]   drum position of the ninth engima second drum
        -- Bit[6-8]   drum position of the ninth engima third drum
        
        -- Bit[9-11]  drum position of the tenth engima first drum
        -- Bit[12-14] drum position of the tenth engima second drum
        -- Bit[15-17] drum position of the tenth engima third drum      
    constant enigmas_910_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000101";

    --this address addresses the following data
        -- Bit[0-2]   drum position of the eleventh engima first drum
        -- Bit[3-5]   drum position of the eleventh engima second drum
        -- Bit[6-8]   drum position of the eleventh engima third drum
        
        -- Bit[9-11]  drum position of the twelfth engima first drum
        -- Bit[12-14] drum position of the twelfth engima second drum
        -- Bit[15-17] drum position of the twelfth engima third drum      
    constant enigmas_1112_drumPos_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000110";
       
    --this address addresses the following data
        -- Bit[0-2] first drum of all enigmas
        -- Bit[3-5] second drum of all enigmas
        -- Bit[6-8] third drum of all enigmas 
        
        --Bit[9-13] testregister
        --Bit[14-18] testvoltage      
    constant enigma_drums_vol_reg_address : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000111";

    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the first enigma
        -- Bit[5-9] second diagonalboard connection of the first enigma
        
        -- Bit[10-14] first diagonalboard connection of the second enigma    
        -- Bit[15-19] second diagonalboard connection of the second enigma  
        
        -- Bit[20-24] first diagonalboard connection of the third enigma     
        -- Bit[25-29] second diagonalboard connection of the third enigma        
    constant enigmas_123_db_con_addess : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001000";      

    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the fourth enigma
        -- Bit[5-9] second diagonalboard connection of the fourth enigma
        
        -- Bit[10-14] first diagonalboard connection of the fifth enigma    
        -- Bit[15-19] second diagonalboard connection of the fifth enigma  
        
        -- Bit[20-24] first diagonalboard connection of the sixth enigma     
        -- Bit[25-29] second diagonalboard connection of the sixth enigma        
    constant enigmas_456_db_con_addess : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001001";      

    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the seventh enigma
        -- Bit[5-9] second diagonalboard connection of the seventh enigma
        
        -- Bit[10-14] first diagonalboard connection of the eighth enigma    
        -- Bit[15-19] second diagonalboard connection of the eighth enigma  
        
        -- Bit[20-24] first diagonalboard connection of the ninth enigma     
        -- Bit[25-29] second diagonalboard connection of the ninth enigma        
    constant enigmas_789_db_con_addess : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001010";        
 
    --this address addresses the following data
        -- Bit[0-4] first diagonalboard connection of the tenth enigma
        -- Bit[5-9] second diagonalboard connection of the tenth enigma
        
        -- Bit[10-14] first diagonalboard connection of the eleventh enigma    
        -- Bit[15-19] second diagonalboard connection of the eleventh enigma  
        
        -- Bit[20-24] first diagonalboard connection of the twelfth enigma     
        -- Bit[25-29] second diagonalboard connection of the twelfth enigma        
    constant enigmas_101112_db_con_addess : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001011"; 
    
    --this address addresses the following data
        -- Bit[0-4] indicator drum one 
        -- Bit[5-9] indicator drum two     
        -- Bit[10-14] indicator drum two    
        -- Bit[15-19] result diagonalboard      
    constant indicator_drum_result_address : result_registers_array :=  (
                                                                            "000000",
                                                                            "001100",
                                                                            "001101",
                                                                            "001110",
                                                                            "001111",
                                                                            "010000",
                                                                            "010001",
                                                                            "010010",
                                                                            "010011",
                                                                            "010100",
                                                                            "010101",
                                                                            "010110",
                                                                            "010111",
                                                                            "011000",
                                                                            "011001",
                                                                            "011010",
                                                                            "011011",
                                                                            "011100",
                                                                            "011101",
                                                                            "011110",
                                                                            "011111",
                                                                            "100000",
                                                                            "100001",
                                                                            "100010",
                                                                            "100011",
                                                                            "100100",
                                                                            "100101",
                                                                            "100110",
                                                                            "100111",
                                                                            "101000",
                                                                            "101001",
                                                                            "101010",
                                                                            "101011",
                                                                            "101100",
                                                                            "101101",
                                                                            "101110",
                                                                            "101111",
                                                                            "110000",
                                                                            "110001",
                                                                            "110010",
                                                                            "110011",
                                                                            "110100",
                                                                            "110101",
                                                                            "110110",
                                                                            "110111",
                                                                            "111000",
                                                                            "111001",
                                                                            "111010",
                                                                            "111011",
                                                                            "111100",
                                                                            "111101",
                                                                            "111110"
                                                                         );

    
    --possible solutions for the testregister
    constant possible_testregister_solutions : possible_testregister_solutions_array := (
                                                                                            "11111111111111111111111110", 
                                                                                            "11111111111111111111111101",
                                                                                            "11111111111111111111111011",
                                                                                            "11111111111111111111110111",
                                                                                            "11111111111111111111101111",
                                                                                            "11111111111111111111011111",
                                                                                            "11111111111111111110111111",
                                                                                            "11111111111111111101111111",
                                                                                            "11111111111111111011111111",
                                                                                            "11111111111111110111111111",
                                                                                            "11111111111111101111111111",
                                                                                            "11111111111111011111111111",
                                                                                            "11111111111110111111111111",
                                                                                            "11111111111101111111111111",
                                                                                            "11111111111011111111111111",
                                                                                            "11111111110111111111111111",
                                                                                            "11111111101111111111111111",
                                                                                            "11111111011111111111111111",
                                                                                            "11111110111111111111111111",
                                                                                            "11111101111111111111111111",
                                                                                            "11111011111111111111111111",
                                                                                            "11110111111111111111111111",
                                                                                            "11101111111111111111111111",
                                                                                            "11011111111111111111111111",
                                                                                            "10111111111111111111111111",
                                                                                            "01111111111111111111111111",
                                                                                            "11111111111111111111111110", 
                                                                                            "11111111111111111111111101",
                                                                                            "11111111111111111111111011",
                                                                                            "11111111111111111111110111",
                                                                                            "11111111111111111111101111",
                                                                                            "11111111111111111111011111",
                                                                                            "11111111111111111110111111",
                                                                                            "11111111111111111101111111",
                                                                                            "11111111111111111011111111",
                                                                                            "11111111111111110111111111",
                                                                                            "11111111111111101111111111",
                                                                                            "11111111111111011111111111",
                                                                                            "11111111111110111111111111",
                                                                                            "11111111111101111111111111",
                                                                                            "11111111111011111111111111",
                                                                                            "11111111110111111111111111",
                                                                                            "11111111101111111111111111",
                                                                                            "11111111011111111111111111",
                                                                                            "11111110111111111111111111",
                                                                                            "11111101111111111111111111",
                                                                                            "11111011111111111111111111",
                                                                                            "11110111111111111111111111",
                                                                                            "11101111111111111111111111",
                                                                                            "11011111111111111111111111",
                                                                                            "10111111111111111111111111",
                                                                                            "01111111111111111111111111"                                                                                            --"00000000000000000000000001",
                                                                                            --"00000000000000000000000010",
                                                                                            --"00000000000000000000000100",
                                                                                            --"00000000000000000000001000",
                                                                                            --"00000000000000000000010000",
                                                                                            --"00000000000000000000100000",
                                                                                            --"00000000000000000001000000",
                                                                                            --"00000000000000000010000000",
                                                                                            --"00000000000000000100000000",
                                                                                            --"00000000000000001000000000",
                                                                                            --"00000000000000010000000000",
                                                                                            --"00000000000000100000000000",
                                                                                            --"00000000000001000000000000",
                                                                                            --"00000000000010000000000000",
                                                                                            --"00000000000100000000000000",
                                                                                            --"00000000001000000000000000",
                                                                                            --"00000000010000000000000000",
                                                                                            --"00000000100000000000000000",
                                                                                            --"00000001000000000000000000",
                                                                                            --"00000010000000000000000000",
                                                                                            --"00000100000000000000000000",
                                                                                            --"00001000000000000000000000",
                                                                                            --"00010000000000000000000000",
                                                                                            --"00100000000000000000000000",
                                                                                            --"01000000000000000000000000",
                                                                                            --"10000000000000000000000000"    
                                                                                        );
---------------------------
--  SIGNAL DECLARATIONS  --
---------------------------
    
    signal c_fsm_state : fsm_states := IDLE;
    signal n_fsm_state : fsm_states;
    
    signal c_reset_all_components : STD_LOGIC := '1';
    signal n_reset_all_components : STD_LOGIC;
    
    signal c_read_config_fsm_states : read_config_fsm_states := IDLE;
    signal n_read_config_fsm_states : read_config_fsm_states; 
    

    signal c_address_bram_b : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
    signal n_address_bram_b : STD_LOGIC_VECTOR(5 DOWNTO 0);
    
    signal c_data_out_bram_b: STD_LOGIC_VECTOR(31 DOWNTO 0) := "00000000000000000000000000000000";
    signal n_data_out_bram_b : STD_LOGIC_VECTOR(31 DOWNTO 0);
    
    signal c_enigmas_drum_pos : enigmas_drumPos_array;
    signal n_enigmas_drum_pos : enigmas_drumPos_array;  
    
    signal c_enigmas_drums : enigmas_drum_array;
    signal n_enigmas_drums : enigmas_drum_array;
    
    signal c_input_register : STD_LOGIC_VECTOR(4 downto 0);     
    signal n_input_register : STD_LOGIC_VECTOR(4 downto 0); 

    signal c_input_voltage : STD_LOGIC_VECTOR(4 downto 0);     
    signal n_input_voltage : STD_LOGIC_VECTOR(4 downto 0); 
    
    signal c_start_enigma : STD_LOGIC := '0';
    signal n_start_enigma : STD_LOGIC;
    
    signal c_db_ready_in       : STD_LOGIC := '0';  
    signal n_db_ready_in       : STD_LOGIC := '0';  
    
    signal c_db_no_output_changes_in       : STD_LOGIC := '0';  
    signal n_db_no_output_changes_in       : STD_LOGIC := '0'; 

    
    signal c_enigma_rotate_impuls :  STD_LOGIC := '0';  
    signal n_enigma_rotate_impuls :  STD_LOGIC := '0'; 
    
    
    signal c_enigma_db_con : enigma_db_con_array := (others => (others => '0'));
    signal n_enigma_db_con : enigma_db_con_array := (others => (others => '0'));
    
    signal c_db_result_register : STD_LOGIC_VECTOR(25 downto 0);
    signal n_db_result_register : STD_LOGIC_VECTOR(25 downto 0);
    
    signal c_result_letter : STD_LOGIC_VECTOR(4 downto 0);
    signal n_result_letter : STD_LOGIC_VECTOR(4 downto 0);
         
    signal c_bram_reset : STD_LOGIC;
    signal n_bram_reset : STD_LOGIC;
 
    signal c_invers_bram_reset : STD_LOGIC;
    signal n_invers_bram_reset : STD_LOGIC;
    
    signal c_pos_indicator_drum_in : indicator_drum_array := (others => (others => '0'));
    signal n_pos_indicator_drum_in : indicator_drum_array;
    
    signal c_write_enable_bram_b :STD_LOGIC_VECTOR(0 DOWNTO 0)  := (others => '0');
    signal n_write_enable_bram_b :STD_LOGIC_VECTOR(0 DOWNTO 0);
    
    signal c_data_in_bram_b      :STD_LOGIC_VECTOR(31 downto 0) := (others=>'0');
    signal n_data_in_bram_b      :STD_LOGIC_VECTOR(31 downto 0);
    
    --count till 17575 (we need 15bit -> 32768)
    signal c_iteration           :STD_LOGIC_VECTOR(14 downto 0) := (others=>'0');
    signal n_iteration           :STD_LOGIC_VECTOR(14 downto 0);
    
    --count all vaild results till 51 (we have just 0-51 result register)
    signal c_vaild_result_counter:STD_LOGIC_VECTOR(6 downto 0) := (others=>'0');
    signal n_vaild_result_counter:STD_LOGIC_VECTOR(6 downto 0);
    
    signal c_db_out_enigmas_db : enigma_array := (others => (others => '0'));
    signal n_db_out_enigmas_db : enigma_array;
    
    signal c_enigmas_db_out : enigma_array := (others => (others => '0'));
    signal n_enigmas_db_out : enigma_array;    
    
    
    signal c_stop_leds_out              : unsigned(3 downto 0) := (others => '0');
    signal n_stop_leds_out              : unsigned(3 downto 0);


    signal debug_flag : STD_LOGIC := '0';
    
    
    
    ATTRIBUTE MAX_FANOUT : integer;
    ATTRIBUTE MAX_FANOUT of c_fsm_state :signal is 100;
    
    
begin
--------------------------------
--  COMPONENT INSTANTIATIONS  --
--------------------------------
   -- xpm_memory_tdpram: True Dual Port RAM
   -- Xilinx Parameterized Macro, version 2018.3

   xpm_memory_tdpram_inst : xpm_memory_tdpram
   generic map (
      ADDR_WIDTH_A => 6,               -- DECIMAL
      ADDR_WIDTH_B => 6,               -- DECIMAL
      AUTO_SLEEP_TIME => 0,            -- DECIMAL
      BYTE_WRITE_WIDTH_A => 32,        -- DECIMAL
      BYTE_WRITE_WIDTH_B => 32,        -- DECIMAL
      CLOCKING_MODE => "common_clock", -- String
      ECC_MODE => "no_ecc",            -- String
      MEMORY_INIT_FILE => "none",      -- String
      MEMORY_INIT_PARAM => "0",        -- String
      MEMORY_OPTIMIZATION => "true",   -- String
      MEMORY_PRIMITIVE => "auto",      -- String
      MEMORY_SIZE => 2048,             -- DECIMAL
      MESSAGE_CONTROL => 0,            -- DECIMAL
      READ_DATA_WIDTH_A => 32,         -- DECIMAL
      READ_DATA_WIDTH_B => 32,         -- DECIMAL
      READ_LATENCY_A => 1,             -- DECIMAL
      READ_LATENCY_B => 1,             -- DECIMAL
      READ_RESET_VALUE_A => "0",       -- String
      READ_RESET_VALUE_B => "0",       -- String
      --RST_MODE_A => "SYNC",            -- String
      --RST_MODE_B => "SYNC",            -- String
      USE_EMBEDDED_CONSTRAINT => 0,    -- DECIMAL
      USE_MEM_INIT => 1,               -- DECIMAL
      WAKEUP_TIME => "disable_sleep",  -- String
      WRITE_DATA_WIDTH_A => 32,        -- DECIMAL
      WRITE_DATA_WIDTH_B => 32,        -- DECIMAL
      WRITE_MODE_A => "no_change",     -- String
      WRITE_MODE_B => "no_change"      -- String
   )
   port map (
      dbiterra => open,             -- 1-bit output: Status signal to indicate double bit error occurrence
                                        -- on the data output of port A.

      dbiterrb => open,             -- 1-bit output: Status signal to indicate double bit error occurrence
                                        -- on the data output of port A.

      douta => DATA_OUT_BRAM_A,                   -- READ_DATA_WIDTH_A-bit output: Data output for port A read operations.
      doutb => n_data_out_bram_b,                   -- READ_DATA_WIDTH_B-bit output: Data output for port B read operations.
      sbiterra => open,             -- 1-bit output: Status signal to indicate single bit error occurrence
                                        -- on the data output of port A.

      sbiterrb => open,             -- 1-bit output: Status signal to indicate single bit error occurrence
                                        -- on the data output of port B.

      addra => ADDRESS_BRAM_A_IN,                   -- ADDR_WIDTH_A-bit input: Address for port A write and read operations.
      addrb => c_address_bram_b,                   -- ADDR_WIDTH_B-bit input: Address for port B write and read operations.
      clka => CLK_IN,                     -- 1-bit input: Clock signal for port A. Also clocks port B when
                                        -- parameter CLOCKING_MODE is "common_clock".

      clkb => CLK_IN,                     -- 1-bit input: Clock signal for port B when parameter CLOCKING_MODE is
                                        -- "independent_clock". Unused when parameter CLOCKING_MODE is
                                        -- "common_clock".

      dina => DATA_IN_BRAM_A,                     -- WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
      dinb => c_data_in_bram_b,                     -- WRITE_DATA_WIDTH_B-bit input: Data input for port B write operations.
      ena => ENABLE_BRAM_A_IN,                       -- 1-bit input: Memory enable signal for port A. Must be high on clock
                                        -- cycles when read or write operations are initiated. Pipelined
                                        -- internally.

      enb => '1',                       -- 1-bit input: Memory enable signal for port B. Must be high on clock
                                        -- cycles when read or write operations are initiated. Pipelined
                                        -- internally.

      injectdbiterra => '0', -- 1-bit input: Controls double bit error injection on input data when
                                        -- ECC enabled (Error injection capability is not available in
                                        -- "decode_only" mode).

      injectdbiterrb => '0', -- 1-bit input: Controls double bit error injection on input data when
                                        -- ECC enabled (Error injection capability is not available in
                                        -- "decode_only" mode).

      injectsbiterra => '0', -- 1-bit input: Controls single bit error injection on input data when
                                        -- ECC enabled (Error injection capability is not available in
                                        -- "decode_only" mode).

      injectsbiterrb => '0', -- 1-bit input: Controls single bit error injection on input data when
                                        -- ECC enabled (Error injection capability is not available in
                                        -- "decode_only" mode).

      regcea => '1',                 -- 1-bit input: Clock Enable for the last register stage on the output
                                        -- data path.

      regceb => '1',                 -- 1-bit input: Clock Enable for the last register stage on the output
                                        -- data path.

      rsta => RST_BRAM_A_IN,                     -- 1-bit input: Reset signal for the final port A output register
                                        -- stage. Synchronously resets output port douta to the value specified
                                        -- by parameter READ_RESET_VALUE_A.

      rstb => c_invers_bram_reset,                     -- 1-bit input: Reset signal for the final port B output register
                                        -- stage. Synchronously resets output port doutb to the value specified
                                        -- by parameter READ_RESET_VALUE_B.

      sleep => '0',                   -- 1-bit input: sleep signal to enable the dynamic power saving feature.
      wea => WRITE_ENABLE_BRAM_IN,      -- WRITE_DATA_WIDTH_A-bit input: Write enable vector for port A input
                                        -- data port dina. 1 bit wide when word-wide writes are used. In
                                        -- byte-wide write configurations, each bit controls the writing one
                                        -- byte of dina to address addra. For example, to synchronously write
                                        -- only bits [15-8] of dina when WRITE_DATA_WIDTH_A is 32, wea would be
                                        -- 4'b0010.

      web => c_write_enable_bram_b      -- WRITE_DATA_WIDTH_B-bit input: Write enable vector for port B input
                                        -- data port dinb. 1 bit wide when word-wide writes are used. In
                                        -- byte-wide write configurations, each bit controls the writing one
                                        -- byte of dinb to address addrb. For example, to synchronously write
                                        -- only bits [15-8] of dinb when WRITE_DATA_WIDTH_B is 32, web would be
                                        -- 4'b0010.

   );
--------------------------------
--  INPUT/OUTPUT ASSIGNMENTS  --
--------------------------------
    ENIGMAS_START_OUT            <= c_start_enigma;
    RESET_OUT                    <= c_reset_all_components;
    DRUM_IMPULS_OUT              <= c_enigma_rotate_impuls;
    n_db_ready_in                <= DB_READY_IN;
    n_db_result_register         <= DB_RESULT_RESIGER_IN;
    n_db_no_output_changes_in    <= DB_OUT_NO_CHANGES_IN;

    n_pos_indicator_drum_in(0)   <= POS_1_INDICATOR_DRUM_IN;
    n_pos_indicator_drum_in(1)   <= POS_2_INDICATOR_DRUM_IN;
    n_pos_indicator_drum_in(2)   <= POS_3_INDICATOR_DRUM_IN;

    ENIGMA_1_CHARACTERS_DB0_OUT  <= c_enigmas_db_out(0) ;
    ENIGMA_1_CHARACTERS_DB1_OUT  <= c_enigmas_db_out(1) ;
    ENIGMA_2_CHARACTERS_DB0_OUT  <= c_enigmas_db_out(2) ;
    ENIGMA_2_CHARACTERS_DB1_OUT  <= c_enigmas_db_out(3) ;
    ENIGMA_3_CHARACTERS_DB0_OUT  <= c_enigmas_db_out(4) ;
    ENIGMA_3_CHARACTERS_DB1_OUT  <= c_enigmas_db_out(5) ;
    ENIGMA_4_CHARACTERS_DB0_OUT  <= c_enigmas_db_out(6) ;
    ENIGMA_4_CHARACTERS_DB1_OUT  <= c_enigmas_db_out(7) ;
    ENIGMA_5_CHARACTERS_DB0_OUT  <= c_enigmas_db_out(8) ;
    ENIGMA_5_CHARACTERS_DB1_OUT  <= c_enigmas_db_out(9) ;
    ENIGMA_6_CHARACTERS_DB0_OUT  <= c_enigmas_db_out(10);
    ENIGMA_6_CHARACTERS_DB1_OUT  <= c_enigmas_db_out(11);
    ENIGMA_7_CHARACTERS_DB0_OUT  <= c_enigmas_db_out(12);
    ENIGMA_7_CHARACTERS_DB1_OUT  <= c_enigmas_db_out(13);
    ENIGMA_8_CHARACTERS_DB0_OUT  <= c_enigmas_db_out(14);
    ENIGMA_8_CHARACTERS_DB1_OUT  <= c_enigmas_db_out(15);
    ENIGMA_9_CHARACTERS_DB0_OUT  <= c_enigmas_db_out(16);
    ENIGMA_9_CHARACTERS_DB1_OUT  <= c_enigmas_db_out(17);
    ENIGMA_10_CHARACTERS_DB0_OUT <= c_enigmas_db_out(18);
    ENIGMA_10_CHARACTERS_DB1_OUT <= c_enigmas_db_out(19);
    ENIGMA_11_CHARACTERS_DB0_OUT <= c_enigmas_db_out(20);
    ENIGMA_11_CHARACTERS_DB1_OUT <= c_enigmas_db_out(21);
    ENIGMA_12_CHARACTERS_DB0_OUT <= c_enigmas_db_out(22);
    ENIGMA_12_CHARACTERS_DB1_OUT <= c_enigmas_db_out(23);
    
    
    
    n_db_out_enigmas_db(0) <= DB_OUT_ENIGMA_1_DB0 ;
    n_db_out_enigmas_db(1) <= DB_OUT_ENIGMA_1_DB1 ;
    n_db_out_enigmas_db(2) <= DB_OUT_ENIGMA_2_DB0 ;
    n_db_out_enigmas_db(3) <= DB_OUT_ENIGMA_2_DB1 ;
    n_db_out_enigmas_db(4) <= DB_OUT_ENIGMA_3_DB0 ;
    n_db_out_enigmas_db(5) <= DB_OUT_ENIGMA_3_DB1 ;
    n_db_out_enigmas_db(6) <= DB_OUT_ENIGMA_4_DB0 ;
    n_db_out_enigmas_db(7) <= DB_OUT_ENIGMA_4_DB1 ;
    n_db_out_enigmas_db(8) <= DB_OUT_ENIGMA_5_DB0 ;
    n_db_out_enigmas_db(9) <= DB_OUT_ENIGMA_5_DB1 ;
    n_db_out_enigmas_db(10) <= DB_OUT_ENIGMA_6_DB0 ;
    n_db_out_enigmas_db(11) <= DB_OUT_ENIGMA_6_DB1 ;
    n_db_out_enigmas_db(12) <= DB_OUT_ENIGMA_7_DB0 ;
    n_db_out_enigmas_db(13) <= DB_OUT_ENIGMA_7_DB1 ;
    n_db_out_enigmas_db(14) <= DB_OUT_ENIGMA_8_DB0 ;
    n_db_out_enigmas_db(15) <= DB_OUT_ENIGMA_8_DB1 ;
    n_db_out_enigmas_db(16) <= DB_OUT_ENIGMA_9_DB0 ;
    n_db_out_enigmas_db(17) <= DB_OUT_ENIGMA_9_DB1 ;
    n_db_out_enigmas_db(18) <= DB_OUT_ENIGMA_10_DB0;
    n_db_out_enigmas_db(19) <= DB_OUT_ENIGMA_10_DB1;
    n_db_out_enigmas_db(20) <= DB_OUT_ENIGMA_11_DB0;
    n_db_out_enigmas_db(21) <= DB_OUT_ENIGMA_11_DB1;
    n_db_out_enigmas_db(22) <= DB_OUT_ENIGMA_12_DB0;
    n_db_out_enigmas_db(23) <= DB_OUT_ENIGMA_12_DB1;
    
    
    ENIGMAS_DRUM_1_OUT           <= c_enigmas_drums(0);
    ENIGMAS_DRUM_2_OUT           <= c_enigmas_drums(1);
    ENIGMAS_DRUM_3_OUT           <= c_enigmas_drums(2);
   
    ENIGMA_1_DRUMPOS_1_OUT       <= c_enigmas_drum_pos(0);
    ENIGMA_1_DRUMPOS_2_OUT       <= c_enigmas_drum_pos(1);
    ENIGMA_1_DRUMPOS_3_OUT       <= c_enigmas_drum_pos(2);
                       
    ENIGMA_2_DRUMPOS_1_OUT       <= c_enigmas_drum_pos(3);
    ENIGMA_2_DRUMPOS_2_OUT       <= c_enigmas_drum_pos(4);
    ENIGMA_2_DRUMPOS_3_OUT       <= c_enigmas_drum_pos(5);
                    
    ENIGMA_3_DRUMPOS_1_OUT       <= c_enigmas_drum_pos(6);
    ENIGMA_3_DRUMPOS_2_OUT       <= c_enigmas_drum_pos(7);
    ENIGMA_3_DRUMPOS_3_OUT       <= c_enigmas_drum_pos(8);
                       
    ENIGMA_4_DRUMPOS_1_OUT       <= c_enigmas_drum_pos(9);
    ENIGMA_4_DRUMPOS_2_OUT       <= c_enigmas_drum_pos(10);
    ENIGMA_4_DRUMPOS_3_OUT       <= c_enigmas_drum_pos(11);
                              
    ENIGMA_5_DRUMPOS_1_OUT       <= c_enigmas_drum_pos(12);
    ENIGMA_5_DRUMPOS_2_OUT       <= c_enigmas_drum_pos(13);
    ENIGMA_5_DRUMPOS_3_OUT       <= c_enigmas_drum_pos(14);
                           
    ENIGMA_6_DRUMPOS_1_OUT       <= c_enigmas_drum_pos(15);
    ENIGMA_6_DRUMPOS_2_OUT       <= c_enigmas_drum_pos(16);
    ENIGMA_6_DRUMPOS_3_OUT       <= c_enigmas_drum_pos(17);
                      
    ENIGMA_7_DRUMPOS_1_OUT       <= c_enigmas_drum_pos(18);
    ENIGMA_7_DRUMPOS_2_OUT       <= c_enigmas_drum_pos(19);
    ENIGMA_7_DRUMPOS_3_OUT       <= c_enigmas_drum_pos(20);
                               
    ENIGMA_8_DRUMPOS_1_OUT       <= c_enigmas_drum_pos(21);
    ENIGMA_8_DRUMPOS_2_OUT       <= c_enigmas_drum_pos(22);
    ENIGMA_8_DRUMPOS_3_OUT       <= c_enigmas_drum_pos(23);
              
    ENIGMA_9_DRUMPOS_1_OUT       <= c_enigmas_drum_pos(24);
    ENIGMA_9_DRUMPOS_2_OUT       <= c_enigmas_drum_pos(25);
    ENIGMA_9_DRUMPOS_3_OUT       <= c_enigmas_drum_pos(26);
                        
    ENIGMA_10_DRUMPOS_1_OUT      <= c_enigmas_drum_pos(27); 
    ENIGMA_10_DRUMPOS_2_OUT      <= c_enigmas_drum_pos(28); 
    ENIGMA_10_DRUMPOS_3_OUT      <= c_enigmas_drum_pos(29); 
                       
    ENIGMA_11_DRUMPOS_1_OUT      <= c_enigmas_drum_pos(30); 
    ENIGMA_11_DRUMPOS_2_OUT      <= c_enigmas_drum_pos(31); 
    ENIGMA_11_DRUMPOS_3_OUT      <= c_enigmas_drum_pos(32); 
                           
    ENIGMA_12_DRUMPOS_1_OUT      <= c_enigmas_drum_pos(33); 
    ENIGMA_12_DRUMPOS_2_OUT      <= c_enigmas_drum_pos(34); 
    ENIGMA_12_DRUMPOS_3_OUT      <= c_enigmas_drum_pos(35);
     
    DB_IN_INPUT_VOLTAGE_OUT      <= c_input_voltage;
    DB_IN_INPUT_REGISTER_OUT     <= c_input_register; 

    DB_IN_ENIGMA_1_DBCON0_OUT    <= c_enigma_db_con(0);
    DB_IN_ENIGMA_1_DBCON1_OUT    <= c_enigma_db_con(1);
    DB_IN_ENIGMA_2_DBCON0_OUT    <= c_enigma_db_con(2);
    DB_IN_ENIGMA_2_DBCON1_OUT    <= c_enigma_db_con(3);
    DB_IN_ENIGMA_3_DBCON0_OUT    <= c_enigma_db_con(4);
    DB_IN_ENIGMA_3_DBCON1_OUT    <= c_enigma_db_con(5);
    DB_IN_ENIGMA_4_DBCON0_OUT    <= c_enigma_db_con(6);
    DB_IN_ENIGMA_4_DBCON1_OUT    <= c_enigma_db_con(7);
    DB_IN_ENIGMA_5_DBCON0_OUT    <= c_enigma_db_con(8);
    DB_IN_ENIGMA_5_DBCON1_OUT    <= c_enigma_db_con(9);
    DB_IN_ENIGMA_6_DBCON0_OUT    <= c_enigma_db_con(10);
    DB_IN_ENIGMA_6_DBCON1_OUT    <= c_enigma_db_con(11);
    DB_IN_ENIGMA_7_DBCON0_OUT    <= c_enigma_db_con(12);
    DB_IN_ENIGMA_7_DBCON1_OUT    <= c_enigma_db_con(13);
    DB_IN_ENIGMA_8_DBCON0_OUT    <= c_enigma_db_con(14);
    DB_IN_ENIGMA_8_DBCON1_OUT    <= c_enigma_db_con(15);
    DB_IN_ENIGMA_9_DBCON0_OUT    <= c_enigma_db_con(16);
    DB_IN_ENIGMA_9_DBCON1_OUT    <= c_enigma_db_con(17);
    DB_IN_ENIGMA_10_DBCON0_OUT   <= c_enigma_db_con(18);
    DB_IN_ENIGMA_10_DBCON1_OUT   <= c_enigma_db_con(19);
    DB_IN_ENIGMA_11_DBCON0_OUT   <= c_enigma_db_con(20);
    DB_IN_ENIGMA_11_DBCON1_OUT   <= c_enigma_db_con(21);
    DB_IN_ENIGMA_12_DBCON0_OUT   <= c_enigma_db_con(22);
    DB_IN_ENIGMA_12_DBCON1_OUT   <= c_enigma_db_con(23);
 
 
    -- LED-Port to show the current stop
    LED_FIRST_STOP_OUT           <= std_logic(c_stop_leds_out(0));
    LED_SECOND_STOP_OUT          <= std_logic(c_stop_leds_out(1));
    LED_THIRD_STOP_OUT           <= std_logic(c_stop_leds_out(2));
    LED_FOURTH_STOP_OUT          <= std_logic(c_stop_leds_out(3));
    
-----------------------------
--  CONCURRENT STATEMENTS  --
-----------------------------
                               ---------------------------
                               --      Process 1        --
----------------------------------------------------------------c_stop_leds_out----------------------------------- 
-- the reg_sync_reset_p process handles the registration off all signals 
-- furthermore it handels the reset signal
--------------------------------------------------------------------------------------------------- 
-- IDLE, PREPARE_ENIGMAS_AND_DB, START_ENIGMAS, WAIT_FOR_ENIGMAS, START_DIAGONALBOARD, WAIT_FOR_DIAGONALBOARD, CHECK_RESULT, READY, RESET
    tb_controller_p: process(
                                c_fsm_state,
                                c_data_out_bram_b, 
                                c_address_bram_b, 
                                c_read_config_fsm_states, 
                                c_enigmas_drum_pos,
                                c_enigmas_drums,
                                c_enigma_db_con,
                                c_bram_reset,
                                c_start_enigma,
                                c_db_ready_in,
                                c_db_result_register,
                                c_input_register,
                                c_input_voltage,
                                c_result_letter,
                                c_pos_indicator_drum_in,
                                c_data_in_bram_b,
                                c_write_enable_bram_b,
                                c_iteration,
                                c_vaild_result_counter,
                                c_db_no_output_changes_in,
                                c_invers_bram_reset,
                                c_enigmas_db_out,
                                c_db_out_enigmas_db, 
                                c_reset_all_components,
                                c_stop_leds_out
                             )
    begin
    
        n_fsm_state                 <= c_fsm_state;
        n_address_bram_b            <= c_address_bram_b;
        n_read_config_fsm_states    <= c_read_config_fsm_states;
        n_enigmas_drum_pos          <= c_enigmas_drum_pos;
        n_enigma_db_con             <= c_enigma_db_con;
        n_start_enigma              <= c_start_enigma;
        n_enigmas_drums             <= c_enigmas_drums;
        n_input_register            <= c_input_register;
        n_input_voltage             <= c_input_voltage;
        n_result_letter             <= c_result_letter;
        n_data_in_bram_b            <= c_data_in_bram_b;
        n_write_enable_bram_b       <= c_write_enable_bram_b;
        n_data_in_bram_b            <= c_data_in_bram_b;
        n_iteration                 <= c_iteration;
        n_vaild_result_counter      <= c_vaild_result_counter;
        n_enigmas_db_out            <= c_db_out_enigmas_db;
        --n_enigmas_db_out(6)         <= "00000000000000000001000000";
        --n_enigmas_db_out(0) <= "00000000000000000001000000";
        n_invers_bram_reset         <= '0';
        n_enigma_rotate_impuls      <= '0';
        n_bram_reset                <= '1';
        n_reset_all_components      <= c_reset_all_components;
        n_stop_leds_out             <= c_stop_leds_out;
        case c_fsm_state is

            when IDLE => 
                n_write_enable_bram_b <= "0";
                n_address_bram_b <= start_reset_address;
                --resetbit == 1
                if(c_data_out_bram_b(1) = '0') then
                    n_fsm_state <= RESET;
                
                --startbit == 1
                elsif (c_data_out_bram_b(0) = '1') then
                    n_fsm_state <= READ_CONFIG;
                
                else
                    n_fsm_state <= IDLE;
                end if;
                
            
            when  READ_CONFIG =>
                n_write_enable_bram_b   <= "0";
                case c_read_config_fsm_states is
                    when IDLE =>
                        n_address_bram_b <= enigmas_12_drumPos_address;
                        n_read_config_fsm_states <= WAIT_FOR_BRAM_1;
                        
                    when WAIT_FOR_BRAM_1 => 
                        n_address_bram_b <= enigmas_34_drumPos_address;      
                        n_read_config_fsm_states <= WAIT_FOR_BRAM_2; 
                        
                    when WAIT_FOR_BRAM_2 =>
                        n_address_bram_b <= enigmas_56_drumPos_address;      
                        n_read_config_fsm_states <= READ_ENIGMAS_12_POS;
                         
                    when READ_ENIGMAS_12_POS =>
                        n_enigmas_drum_pos(0) <= c_data_out_bram_b(4 downto 0);
                        n_enigmas_drum_pos(1) <= c_data_out_bram_b(9 downto 5);
                        n_enigmas_drum_pos(2) <= c_data_out_bram_b(14 downto 10);

                        n_enigmas_drum_pos(3) <= c_data_out_bram_b(19 downto 15);
                        n_enigmas_drum_pos(4) <= c_data_out_bram_b(24 downto 20);
                        n_enigmas_drum_pos(5) <= c_data_out_bram_b(29 downto 25);
                        
                        n_read_config_fsm_states <= READ_ENIGMAS_34_POS;
                        
                        n_address_bram_b <= enigmas_78_drumPos_address;
                        
                    when READ_ENIGMAS_34_POS =>
                        n_enigmas_drum_pos(6) <= c_data_out_bram_b(4 downto 0);
                        n_enigmas_drum_pos(7) <= c_data_out_bram_b(9 downto 5);
                        n_enigmas_drum_pos(8) <= c_data_out_bram_b(14 downto 10);

                        n_enigmas_drum_pos(9) <= c_data_out_bram_b(19 downto 15);
                        n_enigmas_drum_pos(10) <= c_data_out_bram_b(24 downto 20);
                        n_enigmas_drum_pos(11) <= c_data_out_bram_b(29 downto 25);
                        
                        n_address_bram_b <= enigmas_910_drumPos_address;
                        
                        n_read_config_fsm_states <= READ_ENIGMAS_56_POS;
                        
                    when READ_ENIGMAS_56_POS =>
                        n_enigmas_drum_pos(12) <= c_data_out_bram_b(4 downto 0);
                        n_enigmas_drum_pos(13) <= c_data_out_bram_b(9 downto 5);
                        n_enigmas_drum_pos(14) <= c_data_out_bram_b(14 downto 10);

                        n_enigmas_drum_pos(15) <= c_data_out_bram_b(19 downto 15);
                        n_enigmas_drum_pos(16) <= c_data_out_bram_b(24 downto 20);
                        n_enigmas_drum_pos(17) <= c_data_out_bram_b(29 downto 25);  
                        
                        n_address_bram_b <= enigmas_1112_drumPos_address; 
                        
                        n_read_config_fsm_states <= READ_ENIGMAS_78_POS;  
                                       
                    when READ_ENIGMAS_78_POS =>
                        n_enigmas_drum_pos(18) <= c_data_out_bram_b(4 downto 0);
                        n_enigmas_drum_pos(19) <= c_data_out_bram_b(9 downto 5);
                        n_enigmas_drum_pos(20) <= c_data_out_bram_b(14 downto 10);

                        n_enigmas_drum_pos(21) <= c_data_out_bram_b(19 downto 15);
                        n_enigmas_drum_pos(22) <= c_data_out_bram_b(24 downto 20);
                        n_enigmas_drum_pos(23) <= c_data_out_bram_b(29 downto 25);
                        
                        n_address_bram_b <= enigma_drums_vol_reg_address;
                        
                        n_read_config_fsm_states <= READ_ENIGMAS_910_POS;  
                                          
                    when READ_ENIGMAS_910_POS =>
                        n_enigmas_drum_pos(24) <= c_data_out_bram_b(4 downto 0);
                        n_enigmas_drum_pos(25) <= c_data_out_bram_b(9 downto 5);
                        n_enigmas_drum_pos(26) <= c_data_out_bram_b(14 downto 10);

                        n_enigmas_drum_pos(27) <= c_data_out_bram_b(19 downto 15);
                        n_enigmas_drum_pos(28) <= c_data_out_bram_b(24 downto 20);
                        n_enigmas_drum_pos(29) <= c_data_out_bram_b(29 downto 25);
                        
                        n_address_bram_b <= enigmas_123_db_con_addess;
                        
                        n_read_config_fsm_states <= READ_ENIGMAS_1112_POS; 
                        
                    when READ_ENIGMAS_1112_POS =>
                        n_enigmas_drum_pos(30) <= c_data_out_bram_b(4 downto 0);
                        n_enigmas_drum_pos(31) <= c_data_out_bram_b(9 downto 5);
                        n_enigmas_drum_pos(32) <= c_data_out_bram_b(14 downto 10);

                        n_enigmas_drum_pos(33) <= c_data_out_bram_b(19 downto 15);
                        n_enigmas_drum_pos(34) <= c_data_out_bram_b(24 downto 20);
                        n_enigmas_drum_pos(35) <= c_data_out_bram_b(29 downto 25);
                        
                        n_address_bram_b <= enigmas_456_db_con_addess;
                        
                        n_read_config_fsm_states <= READ_DRUMS_VOL_REG;
                        
                    when READ_DRUMS_VOL_REG =>
                        n_enigmas_drums(0)       <= c_data_out_bram_b(2 downto 0);
                        n_enigmas_drums(1)       <= c_data_out_bram_b(5 downto 3);
                        n_enigmas_drums(2)       <= c_data_out_bram_b(8 downto 6);
                        n_input_register       <= c_data_out_bram_b(13 downto 9);
                        n_input_voltage        <= c_data_out_bram_b(18 downto 14);
                        
                        n_address_bram_b <= enigmas_789_db_con_addess;
                        
                        n_read_config_fsm_states <= READ_ENIGMAS_123_DB_CON;
                        
                    when READ_ENIGMAS_123_DB_CON =>
                        n_enigma_db_con(0) <= c_data_out_bram_b(4 downto 0);
                        n_enigma_db_con(1) <= c_data_out_bram_b(9 downto 5);
                        n_enigma_db_con(2) <= c_data_out_bram_b(14 downto 10);
                        n_enigma_db_con(3) <= c_data_out_bram_b(19 downto 15);
                        n_enigma_db_con(4) <= c_data_out_bram_b(24 downto 20);
                        n_enigma_db_con(5) <= c_data_out_bram_b(29 downto 25);
                    
                    
                        n_address_bram_b <= enigmas_101112_db_con_addess;
                        
                        n_read_config_fsm_states <= READ_ENIGMAS_456_DB_CON;
                        
                    when READ_ENIGMAS_456_DB_CON =>
                        n_enigma_db_con(6) <= c_data_out_bram_b(4 downto 0);
                        n_enigma_db_con(7) <= c_data_out_bram_b(9 downto 5);
                        n_enigma_db_con(8) <= c_data_out_bram_b(14 downto 10);
                        n_enigma_db_con(9) <= c_data_out_bram_b(19 downto 15);
                        n_enigma_db_con(10) <= c_data_out_bram_b(24 downto 20);
                        n_enigma_db_con(11) <= c_data_out_bram_b(29 downto 25);
                        
                        --n_address_bram_b <= enigmas_101112_db_con_addess;
                        
                        n_read_config_fsm_states <= READ_ENIGMAS_789_DB_CON;
                        
                    when READ_ENIGMAS_789_DB_CON =>
                        n_enigma_db_con(12) <= c_data_out_bram_b(4 downto 0);
                        n_enigma_db_con(13) <= c_data_out_bram_b(9 downto 5);
                        n_enigma_db_con(14) <= c_data_out_bram_b(14 downto 10);
                        n_enigma_db_con(15) <= c_data_out_bram_b(19 downto 15);
                        n_enigma_db_con(16) <= c_data_out_bram_b(24 downto 20);
                        n_enigma_db_con(17) <= c_data_out_bram_b(29 downto 25);
                        
                        n_read_config_fsm_states <= READ_ENIGMAS_101112_DB_CON;
                        
                    when READ_ENIGMAS_101112_DB_CON =>
                        n_enigma_db_con(18) <= c_data_out_bram_b(4 downto 0);
                        n_enigma_db_con(19) <= c_data_out_bram_b(9 downto 5);
                        n_enigma_db_con(20) <= c_data_out_bram_b(14 downto 10);
                        n_enigma_db_con(21) <= c_data_out_bram_b(19 downto 15);
                        n_enigma_db_con(22) <= c_data_out_bram_b(24 downto 20);
                        n_enigma_db_con(23) <= c_data_out_bram_b(29 downto 25);
                        
                        n_read_config_fsm_states <= IDLE;
                        n_fsm_state <= WAIT_FOR_COMPONENTS_TO_GET_READY;
                        n_reset_all_components <= '1';
                    when others =>
                end case;

            when WAIT_FOR_COMPONENTS_TO_GET_READY => 
                 n_fsm_state <= SEND_START_IMPULS_WITHOUT_TURN;
                   
            when SEND_START_IMPULS_WITHOUT_TURN =>
                --n_enigmas_db_out <= (others => (others => '0'));
                --n_enigmas_db_out(6)         <= "00000000000000000001000000";
                --n_enigmas_db_out(0) <= "00000000000000000001000000";
                n_start_enigma <= '1';
                n_fsm_state <= START_ENIGMAS_WITHOUT_TURN_IMPULS;
            
            when SEND_START_IMPULS_WITH_TURN =>
                n_enigmas_db_out <= (others => (others => '0'));
               -- n_enigmas_db_out(6)         <= "00000000000000000001000000";
                --n_enigmas_db_out(0) <= "00000000000000000001000000";
                n_start_enigma <= '1';
                n_enigma_rotate_impuls <= '0';
                n_fsm_state <= SEND_TURN_IMPULS;
                        
            when START_ENIGMAS_WITHOUT_TURN_IMPULS =>
                n_start_enigma <= '0';
                if(c_db_ready_in = '0') then
                     n_fsm_state <= WAIT_FOR_DIAGONALBOARD; 
                else
                    n_fsm_state <= START_ENIGMAS_WITHOUT_TURN_IMPULS; 
                end if;
             
            when SEND_TURN_IMPULS =>
                n_enigma_rotate_impuls <= '0';
                n_enigmas_db_out <= (others => (others => '0'));
                --n_enigmas_db_out(6) <= "00000000000000000001000000";
                --n_enigmas_db_out(0) <= "00000000000000000001000000";
                n_fsm_state <= START_ENIGMAS_WITH_TURN_IMPULS;
                
                
            when START_ENIGMAS_WITH_TURN_IMPULS =>
                n_start_enigma <= '0';
                
                n_enigmas_db_out <= (others => (others => '0'));
                --n_enigmas_db_out(6) <= "00000000000000000001000000";
                --n_enigmas_db_out(0) <= "00000000000000000001000000";
                if(c_db_ready_in = '0') then
                     n_fsm_state <= WAIT_FOR_DIAGONALBOARD; 
                     n_iteration <= std_logic_vector(unsigned(c_iteration) + 1);
                else
                    n_fsm_state <= START_ENIGMAS_WITH_TURN_IMPULS; 
                end if;
                               
            when WAIT_FOR_DIAGONALBOARD =>
                n_start_enigma <= '0';
                if(c_db_ready_in = '1' and c_db_no_output_changes_in = '1') then
                     n_fsm_state <= CHECK_RESULT; 
                elsif(c_db_ready_in = '1') then
                     n_fsm_state <= SEND_START_IMPULS_WITHOUT_TURN;
                else
                    n_fsm_state <= WAIT_FOR_DIAGONALBOARD; 
                end if;
                

                             
            when CHECK_RESULT =>
                n_fsm_state <= SEND_START_IMPULS_WITH_TURN;
                n_enigma_rotate_impuls <= '1';
                
                    
                for j in 0 to 51 loop
                    if(c_db_result_register = possible_testregister_solutions(j)) then
                        n_fsm_state <= WRITE_RESULT_TO_BRAM;
                        n_result_letter <= STD_LOGIC_VECTOR(to_unsigned(j mod 26,5)); 
                        n_vaild_result_counter <= STD_LOGIC_VECTOR(unsigned(c_vaild_result_counter)+1);
                        debug_flag <= '1';
                    end if;
                end loop;
                
            when WRITE_RESULT_TO_BRAM =>
                n_data_in_bram_b                  <= (others => '0');
                n_data_in_bram_b(4 downto 0)      <= c_pos_indicator_drum_in(0);
                n_data_in_bram_b(9 downto 5)      <= c_pos_indicator_drum_in(1);
                n_data_in_bram_b(14 downto 10)    <= c_pos_indicator_drum_in(2);
                n_data_in_bram_b(19 downto 15)    <= c_result_letter;
                
                n_address_bram_b                  <= indicator_drum_result_address(to_integer(unsigned(c_vaild_result_counter)));
                
                n_write_enable_bram_b             <= "1";
                
                n_fsm_state <= WAIT_FOR_BRAM_WRITE_RESULT_1;
                
            when WAIT_FOR_BRAM_WRITE_RESULT_1 =>
                    n_write_enable_bram_b <= "0";
                    n_fsm_state <= WAIT_FOR_BRAM_WRITE_RESULT_2;
                    
            when WAIT_FOR_BRAM_WRITE_RESULT_2 =>
                n_stop_leds_out <= c_stop_leds_out +1;
                if (c_iteration = "100010010100111") then -- 17575
                    n_fsm_state <= WRITE_READY_TO_BRAM;
                else
                    n_fsm_state <= SEND_START_IMPULS_WITH_TURN;
                end if;
                  
            when WRITE_READY_TO_BRAM =>
                    n_data_in_bram_b                  <= (others => '0');
                    n_data_in_bram_b(2)               <= '1'; 
                    
                    n_address_bram_b                  <= start_reset_address;
                    
                    n_write_enable_bram_b             <= "1";
                          
                    n_fsm_state                       <= WAIT_FOR_BRAM_WRITE_READY_1;
              
            when WAIT_FOR_BRAM_WRITE_READY_1 =>    
                    n_fsm_state <= WAIT_FOR_BRAM_WRITE_READY_2;
                    n_write_enable_bram_b             <= "0";
                    
            when WAIT_FOR_BRAM_WRITE_READY_2 =>     
                    n_fsm_state <= WAIT_FOR_BRAM_WRITE_READY_3;
                
            when WAIT_FOR_BRAM_WRITE_READY_3 =>
                    n_fsm_state <= IDLE;
                    
            when RESET =>
                n_bram_reset <= '0';
                n_invers_bram_reset <= '1';
                if(c_data_out_bram_b(1) = '0') then
                    n_fsm_state <= RESET;   
                elsif (c_data_out_bram_b(1) = '1') then
                    n_fsm_state <= IDLE;
                    n_bram_reset <= '1';
                    n_invers_bram_reset <= '0';
                else
                  n_fsm_state <= IDLE;
                end if;
            when others =>
         end case;
    end process;
 
                               ---------------------------
                               --      Process X        --
--------------------------------------------------------------------------------------------------- 
-- the reg_sync_reset_p process handles the registration off all signals 
-- furthermore it handels the reset signal
---------------------------------------------------------------------------------------------------  
    reg_sync_reset_p: process (CLK_IN)
    begin
        if(rising_edge(CLK_IN)) then
            if(c_bram_reset = '0') then
                c_fsm_state                 <= RESET; 
                c_read_config_fsm_states    <= IDLE;
                c_address_bram_b            <= (others => '0');
                c_data_out_bram_b           <=  n_data_out_bram_b;
                c_bram_reset                <=  n_bram_reset;
                c_start_enigma              <= '0';
                c_db_ready_in               <= '0';
                c_enigmas_drum_pos          <= (others => (others => '0'));
                c_enigmas_drums             <= (others => (others => '0'));
                c_input_register            <= (others => '0');
                c_input_voltage             <= (others => '0');
                c_enigma_db_con             <= (others => (others => '0'));
                c_enigma_rotate_impuls      <= '0';
                c_db_result_register        <= (others => '0');
                c_result_letter             <= (others => '0');
                c_pos_indicator_drum_in     <= (others => (others => '0'));
                c_data_in_bram_b            <= (others => '0');
                c_write_enable_bram_b       <= (others => '0');
                c_iteration                 <= (others => '0');
                c_vaild_result_counter      <= (others => '0');
                c_db_no_output_changes_in   <= '0';
                c_invers_bram_reset         <= '0';
                c_db_out_enigmas_db         <= (others => (others => '0'));
                c_enigmas_db_out            <= (others => (others => '0'));
                c_reset_all_components      <= '0';
                c_stop_leds_out             <= "0000";
                --c_enigmas_db_out(6) <= "00000000000000000001000000";
                --c_enigmas_db_out(0) <= "00000000000000000001000000";

            else
                c_fsm_state                 <= n_fsm_state;
                c_read_config_fsm_states    <= n_read_config_fsm_states;
                c_address_bram_b            <= n_address_bram_b;
                c_data_out_bram_b           <= n_data_out_bram_b;
                c_start_enigma              <= n_start_enigma;
                c_db_ready_in               <= n_db_ready_in;
                c_enigmas_drum_pos          <= n_enigmas_drum_pos;
                c_enigmas_drums             <= n_enigmas_drums;
                c_input_register            <= n_input_register;
                c_input_voltage             <= n_input_voltage;
                c_enigma_db_con             <= n_enigma_db_con;
                c_enigma_rotate_impuls      <= n_enigma_rotate_impuls;
                c_db_result_register        <= n_db_result_register;
                c_bram_reset                <= n_bram_reset;
                c_result_letter             <= n_result_letter;
                c_pos_indicator_drum_in     <= n_pos_indicator_drum_in;
                c_data_in_bram_b            <= n_data_in_bram_b;
                c_write_enable_bram_b       <= n_write_enable_bram_b;
                c_iteration                 <= n_iteration;
                c_vaild_result_counter      <= n_vaild_result_counter;
                c_db_no_output_changes_in   <= n_db_no_output_changes_in;
                c_invers_bram_reset         <= n_invers_bram_reset;
                c_db_out_enigmas_db         <= n_db_out_enigmas_db;
                c_enigmas_db_out            <= n_enigmas_db_out;
                c_reset_all_components      <= n_reset_all_components;
                c_stop_leds_out             <= n_stop_leds_out;
            end if;  
        end if;
    end process;
end HDL;
