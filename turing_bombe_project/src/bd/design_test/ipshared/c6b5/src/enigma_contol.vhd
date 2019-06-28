--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : drum.vhd
-- Author      : Maximilian Exner
-- Description : This file implements the control unit of the enigma for the turing bombe (TURBOdeb project)
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-----------+--------------------------+------------+----------------------------
-- 1.00    | Maximilian Exner         | 2019-05-22 | -first stable version
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

entity enigma_control is
    Port (
     -- std inputs
        UB_CLK_IN                           : in    std_logic;
        SOFT_RESET_N_IN                     : in    std_logic;
     -- configuration inputs
        CONFIG_START_POS_DRUM_1_IN          : in    std_logic_vector(4 downto 0);
        CONFIG_START_POS_DRUM_2_IN          : in    std_logic_vector(4 downto 0); 
        CONFIG_START_POS_DRUM_3_IN          : in    std_logic_vector(4 downto 0);
        CONFIG_DRUM_TYP_1_IN                : in    std_logic_vector(2 downto 0);  
        CONFIG_DRUM_TYP_2_IN                : in    std_logic_vector(2 downto 0);  
        CONFIG_DRUM_TYP_3_IN                : in    std_logic_vector(2 downto 0);  
     -- inputs from TURBO
        CHARACTERS_IN_DB0                   : in    std_logic_vector(25 downto 0);
        CHARACTERS_IN_DB1                   : in    std_logic_vector(25 downto 0); 
        DRUM_IMPULS_IN                      : in    std_logic;
        START_IN                            : in    std_logic;
     -- inputs from first drum  
        CHARACTERS_FROM_DRUM_IN             : in    std_logic_vector(25 downto 0);
        READY_FROM_DRUM_IN                  : in    std_logic;
     -- outputs to drum 1
        CHARACTERS_TO_FIRST_DRUM_OUT        : out   std_logic_vector(25 downto 0);
        START_TO_FIRST_DRUM_OUT             : out   std_logic;
     -- output to drum 3
        DRUM_IMPULS_OUT                     : out   std_logic;  
             
     -- outputs to TURBO
        CODED_CHARACTERS_OUT_DB0            : out   std_logic_vector(25 downto 0); -- Characters from coded from DB1 to DB0
        CODED_CHARACTERS_OUT_DB1            : out   std_logic_vector(25 downto 0);  -- Characters from coded from DB0 to DB1
        READY_OUT                           : out   std_logic;
     -- Configuration Outputs to other Drums
        CONFIG_START_POS_DRUM_1_OUT         : out   std_logic_vector(4 downto 0);
        CONFIG_START_POS_DRUM_2_OUT         : out   std_logic_vector(4 downto 0); 
        CONFIG_START_POS_DRUM_3_OUT         : out   std_logic_vector(4 downto 0);
        CONFIG_DRUM_TYP_1_OUT               : out   std_logic_vector(2 downto 0);  
        CONFIG_DRUM_TYP_2_OUT               : out   std_logic_vector(2 downto 0);  
        CONFIG_DRUM_TYP_3_OUT               : out   std_logic_vector(2 downto 0);
        CONFIG_DRUM_OVERFLOW_2_OUT          : out   std_logic;
        CONFIG_DRUM_OVERFLOW_3_OUT          : out   std_logic
           
    );
end enigma_control;

--------------------
--  ARCHITECTURE  --
--------------------
architecture RTL of enigma_control is

-- Declare the attributes in the architecture section
    ATTRIBUTE X_INTERFACE_INFO : STRING;
    ATTRIBUTE X_INTERFACE_INFO of UB_CLK_IN: SIGNAL is "xilinx.com:signal:clock:1.0 CLK1 CLK";
    -- Supported parameters: ASSOCIATED_CLKEN, ASSOCIATED_RESET, ASSOCIATED_ASYNC_RESET, ASSOCIATED_BUSIF, CLK_DOMAIN, PHASE, FREQ_HZ
    -- Most of these parameters are optional.  However, when using AXI, at least one clock must be associated to the AXI interface.
    -- Use the axi interface name for ASSOCIATED_BUSIF, if there are multiple interfaces, separate each name by ':'
    -- Use the port name for ASSOCIATED_RESET.
    -- Output clocks will require FREQ_HZ to be set (note the value is in HZ and an integer is expected).
    ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
    ATTRIBUTE X_INTERFACE_PARAMETER of UB_CLK_IN: SIGNAL is "ASSOCIATED_RESET SOFT_RESET_N_IN, FREQ_HZ 100000000";
    
    
    -- Declare the attributes in the architecture section   
    ATTRIBUTE X_INTERFACE_INFO of SOFT_RESET_N_IN: SIGNAL is "xilinx.com:signal:reset:1.0 RST1 RST";
    -- Supported parameter: POLARITY {ACTIVE_LOW, ACTIVE_HIGH}
    -- Normally active low is assumed.  Use this parameter to force the level    
    ATTRIBUTE X_INTERFACE_PARAMETER of SOFT_RESET_N_IN: SIGNAL is "POLARITY ACTIVE_LOW";
			
		
			

  ------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------
  

  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
  type status_typ is (IDLE,WAITING_1,WAITING_2);  
  signal c_status, n_status                             : status_typ;
  signal c_ready_out, n_ready_out                       : std_logic;
  signal c_start_to_first_drum, n_start_to_first_drum   : std_logic;
  signal c_chars_in_process, n_chars_in_process         : unsigned(25 downto 0);
  signal c_coded_chars_out_db0, n_coded_chars_out_db0   : unsigned(25 downto 0);
  signal c_coded_chars_out_db1, n_coded_chars_out_db1   : unsigned(25 downto 0);
  
  
  
  
  --------
begin --
--------

 -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------     

  
  --------------------------------
  --  INPUT/OUTPUT ASSIGNMENTS  --
  --------------------------------
  CHARACTERS_TO_FIRST_DRUM_OUT      <=      std_logic_vector(c_chars_in_process);  
  START_TO_FIRST_DRUM_OUT           <=      c_start_to_first_drum;
  CODED_CHARACTERS_OUT_DB0          <=      std_logic_vector(c_coded_chars_out_db0);
  CODED_CHARACTERS_OUT_DB1          <=      std_logic_vector(c_coded_chars_out_db1);
  READY_OUT                         <=      c_ready_out;
    
  -----------------------------
  --  CONCURRENT STATEMENTS  --
  -----------------------------
  CONFIG_START_POS_DRUM_1_OUT       <=      CONFIG_START_POS_DRUM_1_IN;
  CONFIG_START_POS_DRUM_2_OUT       <=      CONFIG_START_POS_DRUM_2_IN;
  CONFIG_START_POS_DRUM_3_OUT       <=      CONFIG_START_POS_DRUM_3_IN;
  CONFIG_DRUM_TYP_1_OUT             <=      CONFIG_DRUM_TYP_1_IN      ;
  CONFIG_DRUM_TYP_2_OUT             <=      CONFIG_DRUM_TYP_2_IN      ;
  CONFIG_DRUM_TYP_3_OUT             <=      CONFIG_DRUM_TYP_3_IN      ;
  CONFIG_DRUM_OVERFLOW_2_OUT        <=      '0';
  CONFIG_DRUM_OVERFLOW_3_OUT        <=      '1';
  DRUM_IMPULS_OUT                   <=      DRUM_IMPULS_IN;
 
 

  -----------------
  --  PROCESSES  --
  -----------------
  main_reg_p : process(UB_CLK_IN)
  begin
    if rising_edge(UB_CLK_IN)  then
	 if (SOFT_RESET_N_IN = '0') then -- ACHTUNG: RESET auf 0
        c_status                <=  IDLE;        
        c_ready_out             <=  '0';
        c_start_to_first_drum   <=  '0';
        c_chars_in_process      <=  (others => '0');
        c_coded_chars_out_db0   <=  (others => '0');
        c_coded_chars_out_db1   <=  (others => '0');
        		
      else
        c_status                <=  n_status;
        c_ready_out             <=  n_ready_out;
        c_start_to_first_drum   <=  n_start_to_first_drum;
        c_chars_in_process      <=  n_chars_in_process;
        c_coded_chars_out_db0   <=  n_coded_chars_out_db0;
        c_coded_chars_out_db1   <=  n_coded_chars_out_db1;
      end if;		
	end if; 
  end process main_reg_p;
  
  calc_p : process(c_status, c_ready_out, c_start_to_first_drum, c_chars_in_process, c_coded_chars_out_db0, c_coded_chars_out_db1,START_IN,READY_FROM_DRUM_IN,CHARACTERS_IN_DB0, CHARACTERS_IN_DB1,CHARACTERS_FROM_DRUM_IN)
  begin
    n_status                <=  c_status;
    n_ready_out             <=  c_ready_out;
    n_start_to_first_drum   <=  c_start_to_first_drum;
    n_chars_in_process      <=  c_chars_in_process;
    n_coded_chars_out_db0   <=  c_coded_chars_out_db0;
    n_coded_chars_out_db1   <=  c_coded_chars_out_db1;
    case c_status is
        when IDLE => 
            n_ready_out <= '0';
            if START_IN = '1' then
                n_chars_in_process <= unsigned(CHARACTERS_IN_DB0);
                n_start_to_first_drum <= '1';
                n_status <= WAITING_1;
            end if;
        when WAITING_1 =>
            n_start_to_first_drum <= '0';
            if READY_FROM_DRUM_IN = '1' then
                n_coded_chars_out_db1 <=  unsigned(CHARACTERS_FROM_DRUM_IN);        
                n_chars_in_process <= unsigned(CHARACTERS_IN_DB1);
                n_start_to_first_drum <= '1';
                n_status <= WAITING_2;
            end if;
        when WAITING_2 =>
            n_start_to_first_drum <= '0';
            if rising_edge(READY_FROM_DRUM_IN) then
                n_coded_chars_out_db0 <=  unsigned(CHARACTERS_FROM_DRUM_IN);
                n_ready_out <= '1';
                n_status <= IDLE;
            end if;        
    end case;
  end process calc_p;
  
  
end RTL;  