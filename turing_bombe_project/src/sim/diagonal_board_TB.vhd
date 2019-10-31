--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : diagonal_board_TB.vhd
-- Author      : Tobias Niggemeyer
-- Description : TURBOdeb
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-- 1.0     | Tobias Niggemeyer        | 23.05.2019 | - initial release
--         |                          |            |
-----------+--------------------------+------------+----------------------------


-----------------
--  LIBRARIES  --
-----------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--------------
--  ENTITY  --
--------------
entity diagonal_board_TB is
end diagonal_board_TB;

library work;
use work.turingBombArrays.all;
--------------------
--  ARCHITECTURE  --
--------------------
architecture BEH of diagonal_board_TB is
  ------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------
  component diagonal_board is
    Port (            
           CLK_IN                      : in STD_LOGIC                      := '0';
           RESET_IN                    : in STD_LOGIC                      := '0';  
              
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
           
           TEST_REGISTER_IN            : in STD_LOGIC_VECTOR (4 downto 0)  := (others => '0');
           INPUT_VOLTAGE_IN            : in STD_LOGIC_VECTOR (4 downto 0)  := (others => '0'); 
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
          
           RESULT_REGISTER_OUT         : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
           
           -- just for testbench purposes
          ACTIVE_OUT_DB1_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0'); 
          ACTIVE_OUT_DB2_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0'); 
          ACTIVE_OUT_DB3_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0'); 
          ACTIVE_OUT_DB4_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0'); 
          ACTIVE_OUT_DB5_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0'); 
          ACTIVE_OUT_DB6_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0'); 
          ACTIVE_OUT_DB7_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0'); 
          ACTIVE_OUT_DB8_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0'); 
          ACTIVE_OUT_DB9_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0'); 
          ACTIVE_OUT_DB10_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB11_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB12_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB13_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB14_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB15_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB16_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB17_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB18_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB19_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB20_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB21_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB22_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB23_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB24_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB25_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0');
          ACTIVE_OUT_DB26_OUT          : out STD_LOGIC_VECTOR(25 downto 0) := (others => '0') 
           
         );
    end component diagonal_board;
    
  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
  constant CLK_PERIOD : time := 10 ns;
  signal clk          : std_logic;    
 
  signal active_out_enigmas_in_tb   : enigma_array;           
  signal reset_in_tb                : STD_LOGIC;                                                
  signal active_out_db_out_tb       : diagonal_board_array;  
  signal start_in_tb                : STD_LOGIC_VECTOR (11 downto 0);  
  signal test_register_tb           : STD_LOGIC_VECTOR (4 downto 0);  
  signal input_voltage_tb           : STD_LOGIC_VECTOR (4 downto 0); 
  signal enigmas_db_con_in_tb       : enigma_db_con_array;  
  signal enigmas_db_out_tb          : enigma_array;
  signal ready_out_tb               : STD_LOGIC;  
  signal result_register_out_tb     : STD_LOGIC_VECTOR(25 downto 0);
  signal no_output_change_ou_tb     : STD_LOGIC;
                                                
begin

  -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------
diagonal_board_inst : diagonal_board  
  port map
  (
    CLK_IN                      => clk,
    RESET_IN                    => reset_in_tb,
    READY_ENIGMA_1              => start_in_tb(0),
    READY_ENIGMA_2              => start_in_tb(1),
    READY_ENIGMA_3              => start_in_tb(2),
    READY_ENIGMA_4              => start_in_tb(3),
    READY_ENIGMA_5              => start_in_tb(4),
    READY_ENIGMA_6              => start_in_tb(5),
    READY_ENIGMA_7              => start_in_tb(6),
    READY_ENIGMA_8              => start_in_tb(7),
    READY_ENIGMA_9              => start_in_tb(8),
    READY_ENIGMA_10             => start_in_tb(9),
    READY_ENIGMA_11             => start_in_tb(10),
    READY_ENIGMA_12             => start_in_tb(11),
    TEST_REGISTER_IN            => test_register_tb,
    INPUT_VOLTAGE_IN            => input_voltage_tb,
    READY_OUT                   => ready_out_tb,
    NO_OUTPUT_CHANGE_OUT        => no_output_change_ou_tb,

    ACTIVE_OUT_1_ENIGMA_1_IN    => active_out_enigmas_in_tb(0) ,
    ACTIVE_OUT_2_ENIGMA_1_IN    => active_out_enigmas_in_tb(1) ,
    ACTIVE_OUT_1_ENIGMA_2_IN    => active_out_enigmas_in_tb(2) ,
    ACTIVE_OUT_2_ENIGMA_2_IN    => active_out_enigmas_in_tb(3) ,
    ACTIVE_OUT_1_ENIGMA_3_IN    => active_out_enigmas_in_tb(4) ,
    ACTIVE_OUT_2_ENIGMA_3_IN    => active_out_enigmas_in_tb(5) ,
    ACTIVE_OUT_1_ENIGMA_4_IN    => active_out_enigmas_in_tb(6) ,
    ACTIVE_OUT_2_ENIGMA_4_IN    => active_out_enigmas_in_tb(7) ,
    ACTIVE_OUT_1_ENIGMA_5_IN    => active_out_enigmas_in_tb(8) ,
    ACTIVE_OUT_2_ENIGMA_5_IN    => active_out_enigmas_in_tb(9) ,
    ACTIVE_OUT_1_ENIGMA_6_IN    => active_out_enigmas_in_tb(10),
    ACTIVE_OUT_2_ENIGMA_6_IN    => active_out_enigmas_in_tb(11),
    ACTIVE_OUT_1_ENIGMA_7_IN    => active_out_enigmas_in_tb(12),
    ACTIVE_OUT_2_ENIGMA_7_IN    => active_out_enigmas_in_tb(13),
    ACTIVE_OUT_1_ENIGMA_8_IN    => active_out_enigmas_in_tb(14),
    ACTIVE_OUT_2_ENIGMA_8_IN    => active_out_enigmas_in_tb(15),
    ACTIVE_OUT_1_ENIGMA_9_IN    => active_out_enigmas_in_tb(16),
    ACTIVE_OUT_2_ENIGMA_9_IN    => active_out_enigmas_in_tb(17),
    ACTIVE_OUT_1_ENIGMA_10_IN   => active_out_enigmas_in_tb(18),
    ACTIVE_OUT_2_ENIGMA_10_IN   => active_out_enigmas_in_tb(19),
    ACTIVE_OUT_1_ENIGMA_11_IN   => active_out_enigmas_in_tb(20),
    ACTIVE_OUT_2_ENIGMA_11_IN   => active_out_enigmas_in_tb(21),
    ACTIVE_OUT_1_ENIGMA_12_IN   => active_out_enigmas_in_tb(22),
    ACTIVE_OUT_2_ENIGMA_12_IN   => active_out_enigmas_in_tb(23),
                               
    ENIGMA_1_DB_CON_1_IN        => enigmas_db_con_in_tb(0) ,
    ENIGMA_1_DB_CON_2_IN        => enigmas_db_con_in_tb(1) ,
    ENIGMA_2_DB_CON_1_IN        => enigmas_db_con_in_tb(2) ,
    ENIGMA_2_DB_CON_2_IN        => enigmas_db_con_in_tb(3) ,
    ENIGMA_3_DB_CON_1_IN        => enigmas_db_con_in_tb(4) ,
    ENIGMA_3_DB_CON_2_IN        => enigmas_db_con_in_tb(5) ,
    ENIGMA_4_DB_CON_1_IN        => enigmas_db_con_in_tb(6) ,
    ENIGMA_4_DB_CON_2_IN        => enigmas_db_con_in_tb(7) ,
    ENIGMA_5_DB_CON_1_IN        => enigmas_db_con_in_tb(8) ,
    ENIGMA_5_DB_CON_2_IN        => enigmas_db_con_in_tb(9) ,
    ENIGMA_6_DB_CON_1_IN        => enigmas_db_con_in_tb(10),
    ENIGMA_6_DB_CON_2_IN        => enigmas_db_con_in_tb(11),
    ENIGMA_7_DB_CON_1_IN        => enigmas_db_con_in_tb(12),
    ENIGMA_7_DB_CON_2_IN        => enigmas_db_con_in_tb(13),
    ENIGMA_8_DB_CON_1_IN        => enigmas_db_con_in_tb(14),
    ENIGMA_8_DB_CON_2_IN        => enigmas_db_con_in_tb(15),
    ENIGMA_9_DB_CON_1_IN        => enigmas_db_con_in_tb(16),
    ENIGMA_9_DB_CON_2_IN        => enigmas_db_con_in_tb(17),
    ENIGMA_10_DB_CON_1_IN       => enigmas_db_con_in_tb(18),
    ENIGMA_10_DB_CON_2_IN       => enigmas_db_con_in_tb(19),
    ENIGMA_11_DB_CON_1_IN       => enigmas_db_con_in_tb(20),
    ENIGMA_11_DB_CON_2_IN       => enigmas_db_con_in_tb(21),
    ENIGMA_12_DB_CON_1_IN       => enigmas_db_con_in_tb(22),
    ENIGMA_12_DB_CON_2_IN       => enigmas_db_con_in_tb(23),
                                
    ENIGMA_1_DB1_OUT            => enigmas_db_out_tb(0) ,
    ENIGMA_1_DB2_OUT            => enigmas_db_out_tb(1) ,
    ENIGMA_2_DB1_OUT            => enigmas_db_out_tb(2) ,
    ENIGMA_2_DB2_OUT            => enigmas_db_out_tb(3) ,
    ENIGMA_3_DB1_OUT            => enigmas_db_out_tb(4) ,
    ENIGMA_3_DB2_OUT            => enigmas_db_out_tb(5) ,
    ENIGMA_4_DB1_OUT            => enigmas_db_out_tb(6) ,
    ENIGMA_4_DB2_OUT            => enigmas_db_out_tb(7) ,
    ENIGMA_5_DB1_OUT            => enigmas_db_out_tb(8) ,
    ENIGMA_5_DB2_OUT            => enigmas_db_out_tb(9) ,
    ENIGMA_6_DB1_OUT            => enigmas_db_out_tb(10),
    ENIGMA_6_DB2_OUT            => enigmas_db_out_tb(11),
    ENIGMA_7_DB1_OUT            => enigmas_db_out_tb(12),
    ENIGMA_7_DB2_OUT            => enigmas_db_out_tb(13),
    ENIGMA_8_DB1_OUT            => enigmas_db_out_tb(14),
    ENIGMA_8_DB2_OUT            => enigmas_db_out_tb(15),
    ENIGMA_9_DB1_OUT            => enigmas_db_out_tb(16),
    ENIGMA_9_DB2_OUT            => enigmas_db_out_tb(17),
    ENIGMA_10_DB1_OUT           => enigmas_db_out_tb(18),
    ENIGMA_10_DB2_OUT           => enigmas_db_out_tb(19),
    ENIGMA_11_DB1_OUT           => enigmas_db_out_tb(20),
    ENIGMA_11_DB2_OUT           => enigmas_db_out_tb(21),
    ENIGMA_12_DB1_OUT           => enigmas_db_out_tb(22),
    ENIGMA_12_DB2_OUT           => enigmas_db_out_tb(23),
                                
    RESULT_REGISTER_OUT         => result_register_out_tb,
    
    -- just for testbench purposes
    ACTIVE_OUT_DB1_OUT            => active_out_db_out_tb(0),
    ACTIVE_OUT_DB2_OUT            => active_out_db_out_tb(1),
    ACTIVE_OUT_DB3_OUT            => active_out_db_out_tb(2),
    ACTIVE_OUT_DB4_OUT            => active_out_db_out_tb(3),
    ACTIVE_OUT_DB5_OUT            => active_out_db_out_tb(4),
    ACTIVE_OUT_DB6_OUT            => active_out_db_out_tb(5),
    ACTIVE_OUT_DB7_OUT            => active_out_db_out_tb(6),
    ACTIVE_OUT_DB8_OUT            => active_out_db_out_tb(7),
    ACTIVE_OUT_DB9_OUT            => active_out_db_out_tb(8),
    ACTIVE_OUT_DB10_OUT           => active_out_db_out_tb(9),
    ACTIVE_OUT_DB11_OUT           => active_out_db_out_tb(10),
    ACTIVE_OUT_DB12_OUT           => active_out_db_out_tb(11),
    ACTIVE_OUT_DB13_OUT           => active_out_db_out_tb(12),
    ACTIVE_OUT_DB14_OUT           => active_out_db_out_tb(13),
    ACTIVE_OUT_DB15_OUT           => active_out_db_out_tb(14),
    ACTIVE_OUT_DB16_OUT           => active_out_db_out_tb(15),
    ACTIVE_OUT_DB17_OUT           => active_out_db_out_tb(16),
    ACTIVE_OUT_DB18_OUT           => active_out_db_out_tb(17),
    ACTIVE_OUT_DB19_OUT           => active_out_db_out_tb(18),
    ACTIVE_OUT_DB20_OUT           => active_out_db_out_tb(19),
    ACTIVE_OUT_DB21_OUT           => active_out_db_out_tb(20),
    ACTIVE_OUT_DB22_OUT           => active_out_db_out_tb(21),
    ACTIVE_OUT_DB23_OUT           => active_out_db_out_tb(22),
    ACTIVE_OUT_DB24_OUT           => active_out_db_out_tb(23),
    ACTIVE_OUT_DB25_OUT           => active_out_db_out_tb(24),
    ACTIVE_OUT_DB26_OUT           => active_out_db_out_tb(25)
  );

  --------------------------------
  --  INPUT/OUTPUT ASSIGNMENTS  --
  --------------------------------


  -----------------------------
  --  CONCURRENT STATEMENTS  --
  -----------------------------

  -----------------
  --  PROCESSES  --
  -----------------
  clk_gen_p : process
   begin
     clk <= '0';
     wait for CLK_PERIOD / 2;
     clk <= '1';
     wait for CLK_PERIOD / 2;
   end process clk_gen_p;
   
   
  testbench_p : process
  begin
    
                                  ---------------------------
                                  --        RESET          --
                                  ---------------------------
  --------------------------------------------------------------------------------------------------- 
  -- reset all signals 
  --------------------------------------------------------------------------------------------------- 
  
    reset_in_tb <= '0';
    wait until rising_edge(clk);
    reset_in_tb <= '1';
    test_register_tb <= "00000";
    input_voltage_tb <= "00000";
    start_in_tb <= "000000000000";
    active_out_enigmas_in_tb <= (others => (others => '0'));
    enigmas_db_con_in_tb <= (others => (others => '0'));    
    
    
    --test_register_tb <= "00011"; --D
    --input_voltage_tb <= "00001"; --B
    --enigmas_db_con_in_tb(0) <= "00100"; --E
    --enigmas_db_con_in_tb(1) <= "00101"; --F
    --active_out_enigmas_in_tb(0) <= "11000000000000000000000000";
    --active_out_enigmas_in_tb(1) <= "00000000000000000001100000";
    --start_in_tb <= "111111111111";
    --wait for 20 ns;
    --start_in_tb <= "000000000000";
    ----wait until rising_edge(ready_out_tb);
    --
    --
    --wait for 100 ns;
    --
    --start_in_tb <= "111111111111";
    --wait for 20 ns;
    --start_in_tb <= "000000000000";
    ----wait until rising_edge(ready_out_tb);
    --
    --
    wait for 100 ns;
    
    
    
    
    
    
                                  ---------------------------
                                  --      Testcase 1       --
  --------------------------------------------------------------------------------------------------- 
  -- in this testcase we test all connections of the diagonal board. For this task we stimulate one
  -- section with signals, this should result in signals at all other sections at one specific connection
  -- Example: Section A is stimulated (26 signals) now the A Letter in the B sections has to be one....
  -- the A letter should be one in all other scetion B -Z. All other signals should be zero.
  --------------------------------------------------------------------------------------------------- 
    active_out_enigmas_in_tb <= (others => (others => '0'));
    enigmas_db_con_in_tb <= (others => (others => '0'));
    
    for idx in 1 to 23 loop
        --reset the output of the diagonalboard
        reset_in_tb <= '0';
        wait until rising_edge(clk);
        reset_in_tb <= '1';
  
  
        test_register_tb <= "00000";
        input_voltage_tb <= "00000";
        active_out_enigmas_in_tb(idx) <= "11111111111111111111111111";
        enigmas_db_con_in_tb(idx) <= std_logic_vector(to_unsigned(idx,5));
        start_in_tb <= "111111111111";
        wait for 60 ns;
  
        assert(active_out_db_out_tb(0) (idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(1) (idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(2) (idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(3) (idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;   
        assert(active_out_db_out_tb(4) (idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(5) (idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(6) (idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(7) (idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;                                  ---------------------------
        assert(active_out_db_out_tb(8) (idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(9) (idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(10)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(11)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE; 
        assert(active_out_db_out_tb(12)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(13)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;     
        assert(active_out_db_out_tb(14)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(15)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE; 
        assert(active_out_db_out_tb(16)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(17)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;     
        assert(active_out_db_out_tb(18)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(19)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE; 
        assert(active_out_db_out_tb(20)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(21)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;     
        assert(active_out_db_out_tb(22)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(23)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE; 
        assert(active_out_db_out_tb(24)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
        assert(active_out_db_out_tb(25)(idx) = '1') report "Error: As descriped above this should be 1" severity FAILURE;   
        
        
        
        -- all other signals should be zer0
        for x in 0 to 25 loop
            if (x /= idx) then
                for y in 0 to 25 loop
                
                    --reset the output of the diagonalboard
                    reset_in_tb <= '1';
                    wait until rising_edge(clk);
                    reset_in_tb <= '0';
  
                    if(y /= idx) then
                        -- A-A is always on because the default value of the input voltage and input register is A A
                        if((x /= 0) and (y /= 0)) then
                            assert(active_out_db_out_tb(x)(y) = '0') report "Error: As descriped above this should be 1" severity FAILURE;  
                        end if; 
                    end if;
                end loop;        
            end if;                   
        end loop;
        
        active_out_enigmas_in_tb(idx) <= "00000000000000000000000000";
        enigmas_db_con_in_tb <= (others => (others => '0'));
    end loop;
    
    
                                      --      Testcase 2       --
  --------------------------------------------------------------------------------------------------- 
  -- check the input voltage at ervery port of the diagonalboard and just check if this signals
  -- is high. We dont have to check all other ports because we already did that in the previous 
  -- testcase
  ---------------------------------------------------------------------------------------------------         
        for x in 0 to 25 loop
            test_register_tb <= std_logic_vector(to_unsigned(x,5));
            for y in 0 to 25 loop
                --reset the output of the diagonalboard
                reset_in_tb <= '0';
                wait until rising_edge(clk);
                reset_in_tb <= '1';
                wait until rising_edge(clk);
                wait for 10 ns;
                --set one input voltage
                --input_voltage_in_tb(x)(y) <= '1';
                
                input_voltage_tb <= std_logic_vector(to_unsigned(y,5));
                
                start_in_tb <= "111111111111";
                wait for 50 ns;
                -- check the depending output
                assert(active_out_db_out_tb(x)(y) = '1') report "Error: As descriped above this should be 1" severity FAILURE;
                --reset the input voltage
                --input_voltage_in_tb(x)(y) <= '0';
                start_in_tb <= "000000000000";
            end loop;                          
        end loop;
  
  
  
  
  
        reset_in_tb <= '0';
        wait until rising_edge(clk);
        reset_in_tb <= '1';
        wait for 200 ns;
  
                                   ---------------------------
                                   --      Finishline       --
  --------------------------------------------------------------------------------------------------- 
  -- if it runs till this section, everything works fine
  ---------------------------------------------------------------------------------------------------       
    assert(1 = 0) report "Simulation complete. This is not an error :)"  severity FAILURE;
  end process testbench_p;
  
end BEH;
