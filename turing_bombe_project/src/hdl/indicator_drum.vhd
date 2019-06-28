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
-- 1.01    | Maximilian Exner         | 2019-06-24 | -bug fix edge detection
-----------+--------------------------+------------+---------------------------

-----------------
--  LIBRARIES  --                                                
-----------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
library work;
use work.turingBombArrays.all;

entity indicator_drum is
    Port    ( 
                ROTATE_IMPULS_IN            : in STD_LOGIC;
                RESET_IN                    : in STD_LOGIC;
                POS_INDICATOR_DRUM_1_OUT    : out STD_LOGIC_VECTOR(4 downto 0);
                POS_INDICATOR_DRUM_2_OUT    : out STD_LOGIC_VECTOR(4 downto 0);
                POS_INDICATOR_DRUM_3_OUT    : out STD_LOGIC_VECTOR(4 downto 0);
                CLK_IN                      : in STD_LOGIC
            );
end indicator_drum;
--------------------
--  ARCHITECTURE  --
--------------------
architecture RTL of indicator_drum is

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
    type fsm_states is (IDLE, ROTATE);

---------------------------
--  SIGNAL DECLARATIONS  --
---------------------------
    signal c_position_out    : indicator_drum_array;
    signal n_position_out    : indicator_drum_array;        
    
    
    signal c_iteration : unsigned(5 downto 0);
    signal n_iteration : unsigned(5 downto 0);
    
    signal c_rotate_impuls_in, n_rotate_impuls_in : std_logic;
    signal edge_rotate_impuls_in                   : std_logic;
    
begin

       
    

--------------------------------
--  COMPONENT INSTANTIATIONS  --
--------------------------------
  
--------------------------------
--  INPUT/OUTPUT ASSIGNMENTS  --
--------------------------------
    POS_INDICATOR_DRUM_1_OUT <= c_position_out(0);
    POS_INDICATOR_DRUM_2_OUT <= c_position_out(1);
    POS_INDICATOR_DRUM_3_OUT <= c_position_out(2);
-----------------------------
--  CONCURRENT STATEMENTS  --
-----------------------------
    --edge detection
    edge_rotate_impuls_in   <= '1' when c_rotate_impuls_in='0' and n_rotate_impuls_in='1' else '0';
    n_rotate_impuls_in      <= ROTATE_IMPULS_IN;

                               ---------------------------
                               --      Process 1        --
--------------------------------------------------------------------------------------------------- 
-- the reg_sync_reset_p process handles the registration off all signals 
-- furthermore it handels the reset signal
---------------------------------------------------------------------------------------------------  
    increment_indicator_drum_p: process(c_position_out,c_iteration, ROTATE_IMPULS_IN,edge_rotate_impuls_in)
    begin
    
        n_position_out      <= c_position_out;        
        n_iteration         <= c_iteration;        
        
        if(edge_rotate_impuls_in) = '1' then
            
            if(c_iteration = "100110") then
                n_iteration <= "000000";
                if(c_position_out(1) = "00000")then
                    n_position_out(1) <= "11001";
                    if(c_position_out(2) = "00000")then
                        n_position_out(2) <= "11001";     
                    else
                        n_position_out(2) <= std_logic_vector(to_unsigned(to_integer(unsigned(c_position_out(2))-1),5));
                    end if;
                else
                    n_position_out(1) <= std_logic_vector(to_unsigned(to_integer(unsigned(c_position_out(1))-1),5));
                
                end if;
                              
            else
                n_iteration <= c_iteration + 1;                
            end if;
                   
            if(c_position_out(0) = "00000") then
                n_position_out(0) <= "11001";
            else
                n_position_out(0) <= std_logic_vector(to_unsigned(to_integer(unsigned(c_position_out(0))-1),5));
            end if;             
        end if;                 
            
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
               c_position_out(0)    <= "11001"; --Z
               c_position_out(1)    <= "11001";
               c_position_out(2)    <= "11001";
               c_iteration          <= "000000";
               c_rotate_impuls_in   <= '0';
               --c_rotate_impuls_in   <= '0';
               --c_fsm_state          <= IDLE;              
            else
               c_position_out       <= n_position_out;
               --c_fsm_state          <= n_fsm_state;
               c_iteration          <= n_iteration;
               c_rotate_impuls_in   <= n_rotate_impuls_in;
            end if;  
        end if;
    end process;
end RTL;
