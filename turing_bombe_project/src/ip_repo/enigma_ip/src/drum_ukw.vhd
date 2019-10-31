--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : drum.vhd
-- Author      : Maximilian Exner
-- Description : This file implements one drum of the EnigmaTB (TURBOdeb Project)
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-----------+--------------------------+------------+----------------------------
-- 1.00    | Maximilian Exner         | 2019-05-22 | -first stable version
-----------+--------------------------+------------+----------------------------
-- 2.00    | Maximilian Exner         | 2019-05-28 | -change to own drum for ukw
-----------+--------------------------+------------+----------------------------
-- 2.01    | Maximilian Exner         | 2019-06-05 | -change i/o's to std_logic_vector
--         |                          |            |  (simulation can not simulate unsigned 
--         |                          |            |  ports when you use a block design)
-----------+--------------------------+------------+----------------------------    
-----------------
--  LIBRARIES  --                                                
-----------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--------------
--  ENTITY  --                                                
--------------

entity drum_ukw is
    Port (
        -- std inputs
        UB_CLK_IN                           : in    std_logic;
        SOFT_RESET_N_IN                     : in    std_logic;
        -- Inputs for the configuration
        --CONFIG_DRUM_TYP_IN                  : in    unsigned(2 downto 0);
        --CONFIG_START_POS                    : in    unsigned(4 downto 0);
        --CONFIG_DRUM_OVERFLOW                : in    std_logic; -- 0 means a overflow at 26 and 1 means a overflow at 39
        -- Inputs from other drums
        CHARACTERS_IN_FWD                   : in    std_logic_vector(25 downto 0);
        --CHARACTERS_IN_BWD                    : in    unsigned(25 downto 0);
        --DIRECTION_IN                        : in    std_logic; -- 1 means forrwoard, 0 means backwarts
        REQUEST_IN_FWD                      : in    std_logic;
        --REQUEST_IN_BWD                      : in    std_logic;
        --DRUM_IMPULS_IN                      : in    std_logic;
        -- Inputs from the LUT
        LUT_READY_IN                        : in    std_logic;
        LUT_BUSY_IN                         : in    std_logic;
        CHARACTERS_FROM_LUT                 : in    std_logic_vector(25 downto 0);
        
        --Outputs to LUT
        CHARACTERS_TO_LUT                   : out   std_logic_vector(25 downto 0);
        DRUM_TYP_TO_LUT                     : out   std_logic_vector(2 downto 0);
        --DIRECTION_TO_LUT                    : out   std_logic;
        REQUEST_TO_LUT                      : out   std_logic;
        
        -- Outputs to other drum
        CHARACTERS_OUT                      : out   std_logic_vector(25 downto 0);
        --DIRECTION_OUT                       : out   std_logic;
        --READY_OUT_FWD                       : out   std_logic;
        READY_OUT_BWD                       : out   std_logic    
        --DRUM_IMPULS_OUT                     : out   std_logic
    );
end drum_ukw;

--------------------
--  ARCHITECTURE  --
--------------------
architecture RTL of drum_ukw is

------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------
     

  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
  type status_typ is (IDLE,WORKING_1,WAITING,WORKING_2);  
  signal c_status, n_status: status_typ;
  -- character signals
  signal c_chars_in_process, n_chars_in_process : unsigned(25 downto 0);
  signal c_chars_out, n_chars_out               : unsigned(25 downto 0);
  -- signals for LUT comunication
  signal c_request_to_lut, n_request_to_lut     : std_logic;
  --signal c_dir_to_lut, n_dir_to_lut             : std_logic; --1 means forward, 0 means backwart
  -- internal signals
  --signal c_drum_count, n_drum_count             : unsigned(4 downto 0);  -- counts the relative position of the drum to its stator
  --signal c_overflow_count, n_overflow_count     : unsigned(5 downto 0);  -- counts the drum iterations for the overflow
  --signals for drum comunication
  --signal c_drum_impuls_out, n_drum_impuls_out   : std_logic;
  signal c_ready_out_fwd, n_ready_out_fwd       : std_logic;
  signal c_ready_out_bwd, n_ready_out_bwd       : std_logic;
   
  
   
  
  
--------
begin --
--------

 -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------     

  
  --------------------------------
  --  INPUT/OUTPUT ASSIGNMENTS  --
  --------------------------------
    --DRUM_IMPULS_OUT         <=  c_drum_impuls_out;
    REQUEST_TO_LUT          <=  c_request_to_lut;
    --DIRECTION_TO_LUT        <=  c_dir_to_lut;
    CHARACTERS_OUT          <=  std_logic_vector(c_chars_out);
    --READY_OUT_FWD           <=  c_ready_out_fwd;
    READY_OUT_BWD           <=  c_ready_out_bwd;
    CHARACTERS_OUT          <=  std_logic_vector(c_chars_out);
    DRUM_TYP_TO_LUT         <=  "110";
    CHARACTERS_TO_LUT       <=  std_logic_vector(c_chars_in_process);
    -----------------------------
  --  CONCURRENT STATEMENTS  --
  -----------------------------
 

  -----------------
  --  PROCESSES  --
  -----------------
  
  main_reg_p : process(UB_CLK_IN)
  begin
    if rising_edge(UB_CLK_IN)  then
	 if (SOFT_RESET_N_IN = '0') then -- ACHTUNG: RESET auf 0
        c_status                <=  IDLE;        
        c_chars_in_process      <=  (others => '0');
        c_chars_out             <=  (others => '0');
        c_request_to_lut        <=  '0';
        --c_dir_to_lut            <=  '1';        
        --c_ready_out_fwd         <=  '0';
        c_ready_out_bwd         <=  '0';
         		
      else
        c_status                <=  n_status;        
        c_chars_in_process 		<=  n_chars_in_process;
        c_chars_out             <=  n_chars_out;
        c_request_to_lut        <=  n_request_to_lut;
        --c_dir_to_lut            <=  n_dir_to_lut;        
        c_ready_out_fwd         <=  n_ready_out_fwd;
        c_ready_out_bwd	        <=  n_ready_out_bwd;
      end if;
		
	end if; 
  end process main_reg_p;   

  
  calc_p : process(c_status, REQUEST_IN_FWD, c_chars_in_process, c_request_to_lut, CHARACTERS_IN_FWD , LUT_BUSY_IN, LUT_READY_IN, CHARACTERS_FROM_LUT, c_chars_out)
  begin
    n_status <= c_status;  
    n_chars_in_process <= c_chars_in_process;
    n_request_to_lut <= c_request_to_lut;
    n_ready_out_fwd  <= '0';
    n_ready_out_bwd  <= '0';
    --n_dir_to_lut <= c_dir_to_lut;
    n_chars_out <= c_chars_out;   
    
    case c_status is
        when IDLE =>            
            if REQUEST_IN_FWD = '1' then
                n_chars_in_process <= unsigned(CHARACTERS_IN_FWD);
                n_status <= WORKING_1;
                --n_dir_to_lut <= '1';            
            end if;
        when WORKING_1=>
            if LUT_BUSY_IN = '0' then
                n_request_to_lut <= '1';
                n_status <= WAITING;
            end if;
        when WAITING =>
            if LUT_READY_IN = '1' then                
                n_chars_out <= unsigned(CHARACTERS_FROM_LUT);
                n_request_to_lut <= '0';
                n_status <= WORKING_2;
            end if;
        when WORKING_2 =>
            n_ready_out_bwd <= '1';
            n_status <= IDLE;            
    end case;
    
  end process calc_p;

end RTL;
