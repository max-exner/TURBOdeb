--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : mini_alu.vhd
-- Author      : Martin Kaiser and Sarah Pilz
-- Description : File for Lab2 
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-- 1.0     |Tobias Niggemeyer         | 23.05.2019 | - initial release
--         |                          |            |   
-----------+--------------------------+------------+----------------------------
-- 1.01    |Maximilian Exner          | 25.06.2019 | - reduce reset signals
--         |                          |            |   
-----------+--------------------------+------------+----------------------------

-----------------
--  LIBRARIES  --                                                
-----------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.turingBombArrays.all;
-------------- 
--  ENTITY  --                                                
--------------
entity diagonal_board is
    Port (              
           CLK_IN                      : in STD_LOGIC                      := '0';
           RESET_IN                    : in STD_LOGIC                      := '0'; 
           INPUT_VOLTAGE_IN            : in STD_LOGIC_VECTOR (4 downto 0)  := (others => '0');
           TEST_REGISTER_IN            : in STD_LOGIC_VECTOR (4 downto 0)  := (others => '0');
               
           READY_ENIGMA_1              : in STD_LOGIC                      := '0';
           READY_ENIGMA_2              : in STD_LOGIC                      := '0';
           READY_ENIGMA_3              : in STD_LOGIC                      := '0';
           READY_ENIGMA_4              : in STD_LOGIC                      := '0';
           READY_ENIGMA_5              : in STD_LOGIC                      := '0';
           READY_ENIGMA_6              : in STD_LOGIC                      := '0';
           READY_ENIGMA_7              : in STD_LOGIC                      := '0';
           READY_ENIGMA_8              : in STD_LOGIC                      := '0';
           READY_ENIGMA_9              : in STD_LOGIC                      := '0';
           READY_ENIGMA_10              : in STD_LOGIC                     := '0';
           READY_ENIGMA_11              : in STD_LOGIC                     := '0';
           READY_ENIGMA_12              : in STD_LOGIC                     := '0';
          
           READY_OUT                   : out STD_LOGIC                     := '0'; 
           NO_OUTPUT_CHANGE_OUT        : out STD_LOGIC                     := '0'; 
           
           ACTIVE_OUT_1_ENIGMA_1_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_1_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_1_ENIGMA_2_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_2_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_1_ENIGMA_3_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_3_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_1_ENIGMA_4_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_4_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_1_ENIGMA_5_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_5_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_1_ENIGMA_6_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_6_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_1_ENIGMA_7_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_7_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_1_ENIGMA_8_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_8_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_1_ENIGMA_9_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_9_IN    : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_1_ENIGMA_10_IN   : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_10_IN   : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_1_ENIGMA_11_IN   : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_11_IN   : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_1_ENIGMA_12_IN   : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');
           ACTIVE_OUT_2_ENIGMA_12_IN   : in STD_LOGIC_VECTOR(25 downto 0)  := (others => '0');          
           
           ENIGMA_1_DB_CON_1_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');   
           ENIGMA_1_DB_CON_2_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_2_DB_CON_1_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_2_DB_CON_2_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_3_DB_CON_1_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_3_DB_CON_2_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_4_DB_CON_1_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_4_DB_CON_2_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_5_DB_CON_1_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_5_DB_CON_2_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_6_DB_CON_1_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_6_DB_CON_2_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_7_DB_CON_1_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_7_DB_CON_2_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_8_DB_CON_1_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_8_DB_CON_2_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_9_DB_CON_1_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_9_DB_CON_2_IN        : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_10_DB_CON_1_IN       : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_10_DB_CON_2_IN       : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_11_DB_CON_1_IN       : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_11_DB_CON_2_IN       : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_12_DB_CON_1_IN       : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
           ENIGMA_12_DB_CON_2_IN       : in STD_LOGIC_VECTOR(4 downto 0)   := (others => '0');
             
           ENIGMA_1_DB1_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_1_DB2_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_2_DB1_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_2_DB2_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_3_DB1_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_3_DB2_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_4_DB1_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_4_DB2_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_5_DB1_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_5_DB2_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_6_DB1_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_6_DB2_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_7_DB1_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_7_DB2_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_8_DB1_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_8_DB2_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_9_DB1_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_9_DB2_OUT            : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_10_DB1_OUT           : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_10_DB2_OUT           : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_11_DB1_OUT           : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_11_DB2_OUT           : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_12_DB1_OUT           : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           ENIGMA_12_DB2_OUT           : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           
           RESULT_REGISTER_OUT         : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0')
    
         );
         --
end diagonal_board;
--------------------
--  ARCHITECTURE  --
--------------------
architecture RTL of diagonal_board is
    

    ATTRIBUTE X_INTERFACE_INFO : STRING;
    ATTRIBUTE X_INTERFACE_INFO of CLK_IN: SIGNAL is "xilinx.com:signal:clock:1.0 CLK1 CLK";
    ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
    ATTRIBUTE X_INTERFACE_PARAMETER of CLK_IN: SIGNAL is "ASSOCIATED_RESET RESET_IN, FREQ_HZ 50000000";


------------------------------
--  COMPONENT DECLARATIONS  --
------------------------------

-----------------
--  CONSTANTS  --
-----------------
    type fsm_states is (IDLE, READ_DATA_FROM_INPUT,GENERATE_DB_OUTPUT, GENERATE_NEW_ENIGMA_INPUT, CHECK_OUTPUT ,READY, PREPARING);
    type fsm_calc_scal is   (
                                ENIGMA_0,
                                ENIGMA_1,
                                ENIGMA_2,
                                ENIGMA_3,
                                ENIGMA_4,
                                ENIGMA_5,
                                ENIGMA_6,
                                ENIGMA_7,
                                ENIGMA_8,
                                ENIGMA_9,
                                ENIGMA_10,
                                ENIGMA_11   
                            );

---------------------------
--  SIGNAL DECLARATIONS  --
---------------------------

    --signal c_input_voltage_in : diagonal_board_array;
    --signal n_input_voltage_in : diagonal_board_array;
    
    signal c_active_out_enigmas_in : enigma_array := (others => (others => '0'));
    signal n_active_out_enigmas_in : enigma_array;
    
    signal c_start : std_logic_vector (11 downto 0) := (others => '0');
    signal n_start : std_logic_vector (11 downto 0);

    signal c_hold_start : std_logic_vector (11 downto 0) := (others => '0');
    signal n_hold_start : std_logic_vector (11 downto 0);
        
    signal c_active_out_db_out : diagonal_board_array := (others => (others => '0'));
    signal n_active_out_db_out : diagonal_board_array;
    
    signal c_last_active_out_db : diagonal_board_array := (others => (others => '1'));
    signal n_last_active_out_db : diagonal_board_array;
    
    signal c_fsm_state : fsm_states := IDLE;
    signal n_fsm_state : fsm_states;
    
    signal c_fsm_calc_scal : fsm_calc_scal := ENIGMA_0;
    signal n_fsm_calc_scal : fsm_calc_scal;
    
    signal c_ready : STD_LOGIC := '0';
    signal n_ready : STD_LOGIC;

    signal c_no_output_change_out : STD_LOGIC := '0';
    signal n_no_output_change_out : STD_LOGIC;
    
    signal c_testRegister : std_logic_vector (4 downto 0);
    signal n_testRegister : std_logic_vector (4 downto 0);
    
    signal c_inputVoltage : std_logic_vector (4 downto 0);
    signal n_inputVoltage : std_logic_vector (4 downto 0);
    
    signal c_scaledInputVoltage : diagonal_board_array := (others => (others => '0'));
    signal n_scaledInputVoltage : diagonal_board_array;
    
    signal c_scaledActiveOutEnigmas : diagonal_board_array := (others => (others => '0'));
    signal n_scaledActiveOutEnigmas : diagonal_board_array;
    
    signal c_enigmas_db_con : enigma_db_con_array := (others => (others => '0'));
    signal n_enigmas_db_con : enigma_db_con_array;
    
    signal c_db_con_enigmas_out : enigma_array := (others => (others => '0'));
    signal n_db_con_enigmas_out : enigma_array;
    
    
    signal c_result_register : std_logic_vector (25 downto 0);
    signal n_result_register : std_logic_vector (25 downto 0);
    
    
    ATTRIBUTE MAX_FANOUT : integer;
    ATTRIBUTE MAX_FANOUT of c_fsm_state :signal is 100;
    ATTRIBUTE MAX_FANOUT of c_fsm_calc_scal :signal is 100;
    ATTRIBUTE MAX_FANOUT of c_enigmas_db_con :signal is 100;

    
    
    
  
begin
--------------------------------
--  COMPONENT INSTANTIATIONS  --
--------------------------------
  
--------------------------------
--  INPUT/OUTPUT ASSIGNMENTS  --
--------------------------------

    
    n_start(0)                  <= READY_ENIGMA_1;
    n_start(1)                  <= READY_ENIGMA_2;
    n_start(2)                  <= READY_ENIGMA_3;
    n_start(3)                  <= READY_ENIGMA_4;
    n_start(4)                  <= READY_ENIGMA_5;
    n_start(5)                  <= READY_ENIGMA_6;
    n_start(6)                  <= READY_ENIGMA_7;
    n_start(7)                  <= READY_ENIGMA_8;
    n_start(8)                  <= READY_ENIGMA_9;
    n_start(9)                  <= READY_ENIGMA_10;
    n_start(10)                 <= READY_ENIGMA_11;
    n_start(11)                 <= READY_ENIGMA_12;

    
    
    
    n_testRegister              <= TEST_REGISTER_IN;
    n_inputVoltage              <= INPUT_VOLTAGE_IN;
    READY_OUT                   <= c_ready;
    NO_OUTPUT_CHANGE_OUT        <= c_no_output_change_out;
    
    n_enigmas_db_con(0)         <= ENIGMA_1_DB_CON_1_IN  ;
    n_enigmas_db_con(1)         <= ENIGMA_1_DB_CON_2_IN  ;
    n_enigmas_db_con(2)         <= ENIGMA_2_DB_CON_1_IN  ;
    n_enigmas_db_con(3)         <= ENIGMA_2_DB_CON_2_IN  ;
    n_enigmas_db_con(4)         <= ENIGMA_3_DB_CON_1_IN  ;
    n_enigmas_db_con(5)         <= ENIGMA_3_DB_CON_2_IN  ;
    n_enigmas_db_con(6)         <= ENIGMA_4_DB_CON_1_IN  ;
    n_enigmas_db_con(7)         <= ENIGMA_4_DB_CON_2_IN  ;
    n_enigmas_db_con(8)         <= ENIGMA_5_DB_CON_1_IN  ;
    n_enigmas_db_con(9)         <= ENIGMA_5_DB_CON_2_IN  ;
    n_enigmas_db_con(10)        <= ENIGMA_6_DB_CON_1_IN  ;
    n_enigmas_db_con(11)        <= ENIGMA_6_DB_CON_2_IN  ;
    n_enigmas_db_con(12)        <= ENIGMA_7_DB_CON_1_IN  ;
    n_enigmas_db_con(13)        <= ENIGMA_7_DB_CON_2_IN  ;
    n_enigmas_db_con(14)        <= ENIGMA_8_DB_CON_1_IN  ;
    n_enigmas_db_con(15)        <= ENIGMA_8_DB_CON_2_IN  ;
    n_enigmas_db_con(16)        <= ENIGMA_9_DB_CON_1_IN  ;
    n_enigmas_db_con(17)        <= ENIGMA_9_DB_CON_2_IN  ;
    n_enigmas_db_con(18)        <= ENIGMA_10_DB_CON_1_IN ;
    n_enigmas_db_con(19)        <= ENIGMA_10_DB_CON_2_IN ;
    n_enigmas_db_con(20)        <= ENIGMA_11_DB_CON_1_IN ;
    n_enigmas_db_con(21)        <= ENIGMA_11_DB_CON_2_IN ;
    n_enigmas_db_con(22)        <= ENIGMA_12_DB_CON_1_IN ;
    n_enigmas_db_con(23)        <= ENIGMA_12_DB_CON_2_IN ;
    
    n_active_out_enigmas_in(0)  <= ACTIVE_OUT_1_ENIGMA_1_IN;
    n_active_out_enigmas_in(1)  <= ACTIVE_OUT_2_ENIGMA_1_IN;
    n_active_out_enigmas_in(2)  <= ACTIVE_OUT_1_ENIGMA_2_IN;
    n_active_out_enigmas_in(3)  <= ACTIVE_OUT_2_ENIGMA_2_IN;
    n_active_out_enigmas_in(4)  <= ACTIVE_OUT_1_ENIGMA_3_IN;
    n_active_out_enigmas_in(5)  <= ACTIVE_OUT_2_ENIGMA_3_IN;
    n_active_out_enigmas_in(6)  <= ACTIVE_OUT_1_ENIGMA_4_IN;
    n_active_out_enigmas_in(7)  <= ACTIVE_OUT_2_ENIGMA_4_IN;
    n_active_out_enigmas_in(8)  <= ACTIVE_OUT_1_ENIGMA_5_IN;
    n_active_out_enigmas_in(9)  <= ACTIVE_OUT_2_ENIGMA_5_IN;
    n_active_out_enigmas_in(10) <= ACTIVE_OUT_1_ENIGMA_6_IN;
    n_active_out_enigmas_in(11) <= ACTIVE_OUT_2_ENIGMA_6_IN;
    n_active_out_enigmas_in(12) <= ACTIVE_OUT_1_ENIGMA_7_IN;
    n_active_out_enigmas_in(13) <= ACTIVE_OUT_2_ENIGMA_7_IN;
    n_active_out_enigmas_in(14) <= ACTIVE_OUT_1_ENIGMA_8_IN;
    n_active_out_enigmas_in(15) <= ACTIVE_OUT_2_ENIGMA_8_IN;
    n_active_out_enigmas_in(16) <= ACTIVE_OUT_1_ENIGMA_9_IN;
    n_active_out_enigmas_in(17) <= ACTIVE_OUT_2_ENIGMA_9_IN;
    n_active_out_enigmas_in(18) <= ACTIVE_OUT_1_ENIGMA_10_IN;
    n_active_out_enigmas_in(19) <= ACTIVE_OUT_2_ENIGMA_10_IN;
    n_active_out_enigmas_in(20) <= ACTIVE_OUT_1_ENIGMA_11_IN;
    n_active_out_enigmas_in(21) <= ACTIVE_OUT_2_ENIGMA_11_IN;
    n_active_out_enigmas_in(22) <= ACTIVE_OUT_1_ENIGMA_12_IN;
    n_active_out_enigmas_in(23) <= ACTIVE_OUT_2_ENIGMA_12_IN;

    
    
    
   
    ENIGMA_1_DB1_OUT            <=  c_db_con_enigmas_out(0) ;
    ENIGMA_1_DB2_OUT            <=  c_db_con_enigmas_out(1) ;
    ENIGMA_2_DB1_OUT            <=  c_db_con_enigmas_out(2) ;
    ENIGMA_2_DB2_OUT            <=  c_db_con_enigmas_out(3) ;
    ENIGMA_3_DB1_OUT            <=  c_db_con_enigmas_out(4) ;
    ENIGMA_3_DB2_OUT            <=  c_db_con_enigmas_out(5) ;
    ENIGMA_4_DB1_OUT            <=  c_db_con_enigmas_out(6) ;
    ENIGMA_4_DB2_OUT            <=  c_db_con_enigmas_out(7) ;
    ENIGMA_5_DB1_OUT            <=  c_db_con_enigmas_out(8) ;
    ENIGMA_5_DB2_OUT            <=  c_db_con_enigmas_out(9) ;
    ENIGMA_6_DB1_OUT            <=  c_db_con_enigmas_out(10);
    ENIGMA_6_DB2_OUT            <=  c_db_con_enigmas_out(11);
    ENIGMA_7_DB1_OUT            <=  c_db_con_enigmas_out(12);
    ENIGMA_7_DB2_OUT            <=  c_db_con_enigmas_out(13);
    ENIGMA_8_DB1_OUT            <=  c_db_con_enigmas_out(14);
    ENIGMA_8_DB2_OUT            <=  c_db_con_enigmas_out(15);
    ENIGMA_9_DB1_OUT            <=  c_db_con_enigmas_out(16);
    ENIGMA_9_DB2_OUT            <=  c_db_con_enigmas_out(17);
    ENIGMA_10_DB1_OUT           <=  c_db_con_enigmas_out(18);
    ENIGMA_10_DB2_OUT           <=  c_db_con_enigmas_out(19);
    ENIGMA_11_DB1_OUT           <=  c_db_con_enigmas_out(20);
    ENIGMA_11_DB2_OUT           <=  c_db_con_enigmas_out(21);
    ENIGMA_12_DB1_OUT           <=  c_db_con_enigmas_out(22);
    ENIGMA_12_DB2_OUT           <=  c_db_con_enigmas_out(23);
    
    RESULT_REGISTER_OUT         <= c_result_register;
      
-----------------------------
--  CONCURRENT STATEMENTS  --
-----------------------------



                               ---------------------------
                               --      Process 1        --
--------------------------------------------------------------------------------------------------- 
-- the reg_sync_reset_p process handles the registration off all signals 
-- furthermore it handels the reset signal
---------------------------------------------------------------------------------------------------  
    update_DB_p: process (
                            INPUT_VOLTAGE_IN, 
                            c_active_out_db_out,
                            c_fsm_state, 
                            c_start, 
                            c_scaledInputVoltage, 
                            c_enigmas_db_con, 
                            c_scaledActiveOutEnigmas, 
                            c_active_out_enigmas_in,
                            c_result_register,
                            c_last_active_out_db,
                            c_no_output_change_out,
                            c_hold_start,
                            c_fsm_calc_scal,
                            c_db_con_enigmas_out,
                            c_testRegister
                         )
    begin
    
        n_active_out_db_out         <= c_active_out_db_out;
        n_scaledInputVoltage        <= c_scaledInputVoltage;
        n_scaledActiveOutEnigmas    <= c_scaledActiveOutEnigmas;
        n_db_con_enigmas_out        <= c_db_con_enigmas_out;
        n_result_register           <= c_result_register;
        n_last_active_out_db        <= c_last_active_out_db;
        n_no_output_change_out      <= c_no_output_change_out;
        n_hold_start                <= c_start;
        
        
        case c_fsm_state is
            when IDLE =>
                n_ready <= '1';
                n_no_output_change_out <= '0';
                n_fsm_calc_scal <= ENIGMA_0;
                n_fsm_state <= IDLE;
                if(c_start = "111111111111") then
                    n_scaledInputVoltage <= (others => (others => '0'));
                    n_scaledInputVoltage(to_integer(unsigned(c_testRegister)))(to_integer(unsigned(c_inputVoltage))) <='1';  
                    n_fsm_state <= READ_DATA_FROM_INPUT;
                else
                    n_fsm_state <= IDLE; 
                     
                    n_scaledActiveOutEnigmas <= (others => (others => '0'));          
                end if;
                
            when READ_DATA_FROM_INPUT =>
                n_ready <= '0';
                
                n_fsm_state <= READ_DATA_FROM_INPUT;
                case c_fsm_calc_scal is
                    when ENIGMA_0 =>
                        n_scaledActiveOutEnigmas        <= c_active_out_db_out;
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(0 )))) <= c_active_out_enigmas_in(0 ) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(0 )))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(0 ))));
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(1 )))) <= c_active_out_enigmas_in(1 ) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(1 )))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(1 )))); 
                        n_fsm_calc_scal <= ENIGMA_1;
                        
                    when ENIGMA_1 =>
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(2 )))) <= c_active_out_enigmas_in(2 ) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(2 )))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(2 )))); 
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(3 )))) <= c_active_out_enigmas_in(3 ) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(3 )))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(3 ))));              
                        n_fsm_calc_scal <= ENIGMA_2;
                    when ENIGMA_2 =>
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(4 )))) <= c_active_out_enigmas_in(4 ) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(4 )))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(4 )))); 
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(5 )))) <= c_active_out_enigmas_in(5 ) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(5 )))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(5 )))); 
                        n_fsm_calc_scal <= ENIGMA_3;
                    when ENIGMA_3 =>
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(6 )))) <= c_active_out_enigmas_in(6 ) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(6 )))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(6 )))); 
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(7 )))) <= c_active_out_enigmas_in(7 ) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(7 )))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(7 )))); 
                        n_fsm_calc_scal <= ENIGMA_4;
                    when ENIGMA_4 =>
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(8 )))) <= c_active_out_enigmas_in(8 ) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(8 )))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(8 )))); 
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(9 )))) <= c_active_out_enigmas_in(9 ) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(9 )))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(9 )))); 
                        n_fsm_calc_scal <= ENIGMA_5;
                    when ENIGMA_5 =>
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(10)))) <= c_active_out_enigmas_in(10) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(10)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(10)))); 
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(11)))) <= c_active_out_enigmas_in(11) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(11)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(11)))); 
                        n_fsm_calc_scal <= ENIGMA_6;
                    when ENIGMA_6 =>
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(12)))) <= c_active_out_enigmas_in(12) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(12)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(12)))); 
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(13)))) <= c_active_out_enigmas_in(13) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(13)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(13)))); 
                        n_fsm_calc_scal <= ENIGMA_7;
                    when ENIGMA_7 =>
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(14)))) <= c_active_out_enigmas_in(14) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(14)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(14)))); 
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(15)))) <= c_active_out_enigmas_in(15) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(15)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(15)))); 
                        n_fsm_calc_scal <= ENIGMA_8;
                    when ENIGMA_8 =>
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(16)))) <= c_active_out_enigmas_in(16) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(16)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(16)))); 
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(17)))) <= c_active_out_enigmas_in(17) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(17)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(17)))); 
                        n_fsm_calc_scal <= ENIGMA_9;
                    when ENIGMA_9 =>
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(18)))) <= c_active_out_enigmas_in(18) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(18)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(18)))); 
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(19)))) <= c_active_out_enigmas_in(19) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(19)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(19)))); 
                        n_fsm_calc_scal <= ENIGMA_10;
                    when ENIGMA_10 =>
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(20)))) <= c_active_out_enigmas_in(20) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(20)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(20)))); 
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(21)))) <= c_active_out_enigmas_in(21) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(21)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(21)))); 
                        n_fsm_calc_scal <= ENIGMA_11;
                    when ENIGMA_11 =>
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(22)))) <= c_active_out_enigmas_in(22) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(22)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(22)))); 
                        n_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(23)))) <= c_active_out_enigmas_in(23) or c_scaledActiveOutEnigmas(to_integer(unsigned(c_enigmas_db_con(23)))) or c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(23)))); 
                        n_fsm_calc_scal <= ENIGMA_0;
                        n_fsm_state <= PREPARING; 
                        n_hold_start <= "000000000000";
                    when others =>
                        n_fsm_calc_scal <= ENIGMA_0;
                end case;             
            when PREPARING =>
                    n_ready <= '0';
                    n_fsm_state <= GENERATE_DB_OUTPUT;
                    n_fsm_calc_scal <= ENIGMA_0;   
    
            when GENERATE_DB_OUTPUT =>
                n_ready <= '0';
                for i in 0 to 25 loop
                    for j in 0 to 25 loop
                        n_active_out_db_out(i)(j)  <= c_scaledActiveOutEnigmas(i)(j)  or c_scaledInputVoltage(i)(j)  or c_scaledActiveOutEnigmas(j)(i)  or c_scaledInputVoltage(j)(i);
                    end loop;               
                end loop;
                
                   
                n_fsm_state <= GENERATE_NEW_ENIGMA_INPUT;  
                n_fsm_calc_scal <= ENIGMA_0;           
            when GENERATE_NEW_ENIGMA_INPUT =>
               n_ready <= '0';
               n_db_con_enigmas_out(0)   <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(0))));
               n_db_con_enigmas_out(1)  <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(1))));
               n_db_con_enigmas_out(2)  <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(2))));
               n_db_con_enigmas_out(3)  <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(3))));
               n_db_con_enigmas_out(4)  <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(4))));
               n_db_con_enigmas_out(5)  <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(5))));
               n_db_con_enigmas_out(6)  <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(6))));
               n_db_con_enigmas_out(7)  <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(7))));
               n_db_con_enigmas_out(8)  <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(8))));
               n_db_con_enigmas_out(9)  <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(9))));
               n_db_con_enigmas_out(10) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(10))));
               n_db_con_enigmas_out(11) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(11))));
               n_db_con_enigmas_out(12) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(12))));
               n_db_con_enigmas_out(13) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(13))));
               n_db_con_enigmas_out(14) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(14))));
               n_db_con_enigmas_out(15) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(15))));
               n_db_con_enigmas_out(16) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(16))));
               n_db_con_enigmas_out(17) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(17))));
               n_db_con_enigmas_out(18) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(18))));
               n_db_con_enigmas_out(19) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(19))));
               n_db_con_enigmas_out(20) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(20))));
               n_db_con_enigmas_out(21) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(21))));
               n_db_con_enigmas_out(22) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(22))));
               n_db_con_enigmas_out(23) <= c_active_out_db_out(to_integer(unsigned(c_enigmas_db_con(23))));
               
               n_result_register <= c_active_out_db_out(to_integer(unsigned(c_testRegister)));
               n_fsm_state <= READY;
               n_fsm_calc_scal <= ENIGMA_0; 

            when READY=>
               n_fsm_state <= IDLE;
               n_fsm_calc_scal <= ENIGMA_0; 
               n_ready <= '1';
               n_last_active_out_db <= c_active_out_db_out;
               if(c_last_active_out_db = c_active_out_db_out) then
                    n_no_output_change_out <= '1';
                    n_active_out_db_out <= (others => (others => '0'));
                    n_scaledActiveOutEnigmas <= (others => (others => '0'));
                    
               else
                    n_no_output_change_out <= '0';
               end if;      
            when others =>
                   n_ready <= '0';
                   n_fsm_state <= IDLE;
                   n_fsm_calc_scal <= ENIGMA_0; 
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
            if(RESET_IN = '0') then
                --c_active_out_db_out <= (others => (others => '0'));
                c_fsm_state <= IDLE;
                c_ready <= '0';
                c_start <= (others => '0');
                c_hold_start <= (others => '0');
                c_testRegister <= (others => '0');
                c_inputVoltage <= (others => '0');
                --c_scaledInputVoltage <= (others => (others => '0'));  
                --c_scaledActiveOutEnigmas  <= (others => (others => '0'));                                      
                --c_enigmas_db_con  <= (others => (others => '0')); 
                --c_active_out_enigmas_in  <= (others => (others => '0'));
                --c_last_active_out_db <= (others => (others => '1'));
                c_result_register    <= (others => '0');
                --c_db_con_enigmas_out <= (others => (others => '0'));
                c_no_output_change_out <= '0';   
                c_fsm_calc_scal      <= ENIGMA_0;   
                
            else
                c_start <= n_start;
                c_fsm_state <= n_fsm_state;
                c_ready <= n_ready; 
                c_active_out_db_out <= n_active_out_db_out;
                c_testRegister <= n_testRegister;
                c_inputVoltage <= n_inputVoltage;
                c_scaledInputVoltage <= n_scaledInputVoltage;
                c_scaledActiveOutEnigmas <= n_scaledActiveOutEnigmas;
                c_enigmas_db_con <= n_enigmas_db_con;
                c_active_out_enigmas_in <= n_active_out_enigmas_in;
                c_result_register    <= n_result_register;
                c_last_active_out_db <= n_last_active_out_db;
                c_no_output_change_out <= n_no_output_change_out;
                c_hold_start        <= n_hold_start;
                c_fsm_calc_scal         <= n_fsm_calc_scal;
                c_db_con_enigmas_out    <= n_db_con_enigmas_out;
                
            end if;  
        end if;
    end process;
end RTL;
