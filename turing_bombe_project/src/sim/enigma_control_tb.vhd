--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : pseudo_lut_TB.vhd
-- Author      : Maximilian Exner
-- Description : Test Bench for the control unit of the enigma (Project TURBOdeb)
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-----------+--------------------------+------------+----------------------------
-- 1.00    | Maximilian Exner         | 2019-05-31 | - first stable version
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

entity enigma_control_TB is
--  Port ( );
end enigma_control_TB;

--------------------
--  ARCHITECTURE  --
--------------------

architecture RTL of enigma_control_TB is
  ------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------
  component enigma_control is
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
    end component enigma_control;
  
  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
    constant CLK_PERIOD : time := 10 ns;
    signal clk          : std_logic;
    
                
    signal soft_reset_n_in                  : std_logic;     
    --configuration inputs      
    signal config_start_pos_drum_1_in       : unsigned(4 downto 0);
    signal config_start_pos_drum_2_in       : unsigned(4 downto 0);
    signal config_start_pos_drum_3_in       : unsigned(4 downto 0);
    signal config_drum_typ_1_in             : unsigned(2 downto 0);
    signal config_drum_typ_2_in             : unsigned(2 downto 0);     
    signal config_drum_typ_3_in             : unsigned(2 downto 0);    
    --inputs from TURBO         
    signal characters_in_db0                : unsigned(25 downto 0); 
    signal characters_in_db1                : unsigned(25 downto 0); 
    signal drum_impuls_in                   : std_logic;   
    signal start_in                         : std_logic;
    --inputs from first drum    
    signal characters_from_drum_in          : unsigned(25 downto 0);
    signal ready_from_drum_in               : std_logic;
    --outputs to drum 1         
    signal characters_to_frist_drum_out     : unsigned(25 downto 0);
    signal start_to_first_drum_out          : std_logic;
    --output to drum 3          
    signal drum_impuls_out                  : std_logic;
                            
    --outputs to TURBO          
    signal coded_characters_out_db0         : unsigned(25 downto 0);   
    signal coded_characters_out_db1         : unsigned(25 downto 0);
    signal ready_out                        : std_logic;
    --Configuration Outputs to o
    signal config_start_pos_drum_1_out      : unsigned(4 downto 0);
    signal config_start_pos_drum_2_out      : unsigned(4 downto 0);
    signal config_start_pos_drum_3_out      : unsigned(4 downto 0);
    signal config_drum_typ_1_out            : unsigned(2 downto 0);
    signal config_drum_typ_2_out            : unsigned(2 downto 0);
    signal config_drum_typ_3_out            : unsigned(2 downto 0);
    signal config_drum_overflow_2_out       : std_logic;
    signal config_drum_overflow_3_out       : std_logic;
    
    
    

------------
begin
------------
  -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------
  enigma_control_init : enigma_control
    port map(
        UB_CLK_IN                      =>   clk                              ,
        SOFT_RESET_N_IN                =>   soft_reset_n_in                  ,
        --configuration inputs                   , 
        CONFIG_START_POS_DRUM_1_IN     =>   std_logic_vector(config_start_pos_drum_1_in)       ,
        CONFIG_START_POS_DRUM_2_IN     =>   std_logic_vector(config_start_pos_drum_2_in)       ,
        CONFIG_START_POS_DRUM_3_IN     =>   std_logic_vector(config_start_pos_drum_3_in)       ,
        CONFIG_DRUM_TYP_1_IN           =>   std_logic_vector(config_drum_typ_1_in)             ,
        CONFIG_DRUM_TYP_2_IN           =>   std_logic_vector(config_drum_typ_2_in)             ,
        CONFIG_DRUM_TYP_3_IN           =>   std_logic_vector(config_drum_typ_3_in)             ,
        --inputs from TURBO                                ,
        CHARACTERS_IN_DB0              =>   std_logic_vector(characters_in_db0)                ,
        CHARACTERS_IN_DB1              =>   std_logic_vector(characters_in_db1)                ,
        DRUM_IMPULS_IN                 =>   drum_impuls_in                   ,
        START_IN                       =>   start_in                         ,
        --inputs from first drum       
        CHARACTERS_FROM_DRUM_IN        =>   std_logic_vector(characters_from_drum_in)          ,
        READY_FROM_DRUM_IN             =>   ready_from_drum_in               ,
        --outputs to drum 1            
        unsigned(CHARACTERS_TO_FIRST_DRUM_OUT)   =>   characters_to_frist_drum_out     ,
        START_TO_FIRST_DRUM_OUT        =>   start_to_first_drum_out          ,
        --output to drum 3             
        DRUM_IMPULS_OUT                =>   drum_impuls_out                  ,                                       
        --outputs to TURBO             
        unsigned(CODED_CHARACTERS_OUT_DB0)       =>   coded_characters_out_db0         ,
        unsigned(CODED_CHARACTERS_OUT_DB1)       =>   coded_characters_out_db1         ,
        READY_OUT                      =>   ready_out                        ,
        --Configuration Outputs to other
        unsigned(CONFIG_START_POS_DRUM_1_OUT)    =>   config_start_pos_drum_1_out      ,
        unsigned(CONFIG_START_POS_DRUM_2_OUT)    =>   config_start_pos_drum_2_out      ,
        unsigned(CONFIG_START_POS_DRUM_3_OUT)    =>   config_start_pos_drum_3_out      ,
        unsigned(CONFIG_DRUM_TYP_1_OUT)          =>   config_drum_typ_1_out            ,
        unsigned(CONFIG_DRUM_TYP_2_OUT)          =>   config_drum_typ_2_out            ,
        unsigned(CONFIG_DRUM_TYP_3_OUT)          =>   config_drum_typ_3_out            ,
        CONFIG_DRUM_OVERFLOW_2_OUT     =>   config_drum_overflow_2_out       ,
        CONFIG_DRUM_OVERFLOW_3_OUT     =>   config_drum_overflow_3_out       
               
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
  
    -- Test 0: Reset of entity    
    soft_reset_n_in <= '0';  
    start_in <= '0';
    ready_from_drum_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);    
    assert(characters_to_frist_drum_out = "00000000000000000000000000" ) report "Test 0: Init Error"  severity FAILURE;    
    soft_reset_n_in <= '1';
  
    -- Test 1: Check CONFIGURATION
    config_start_pos_drum_1_in <= "00001";
    config_start_pos_drum_2_in <= "00010";
    config_start_pos_drum_3_in <= "11001";
    config_drum_typ_1_in       <= "001";
    config_drum_typ_2_in       <= "010";
    config_drum_typ_3_in       <= "011";
    wait until rising_edge(clk);
    assert(config_start_pos_drum_1_out = "00001") report "Test 1: Wrong start configuration drum 1"  severity FAILURE;
    assert(config_start_pos_drum_2_out = "00010") report "Test 1: Wrong start configuration drum 2"  severity FAILURE;
    assert(config_start_pos_drum_3_out = "11001") report "Test 1: Wrong start configuratuin drum 3"  severity FAILURE;
    assert(config_drum_typ_1_out = "001") report "Test 1: Wrong typ configuration drum 1"  severity FAILURE;
    assert(config_drum_typ_2_out = "010") report "Test 1: Wrong typ configuration drum 2"  severity FAILURE;
    assert(config_drum_typ_3_out = "011") report "Test 1: Wrong typ configuration drum 3"  severity FAILURE;
    assert(config_drum_overflow_2_out = '0') report "Test 1: Wrong overflow configuration drum 2"  severity FAILURE;
    assert(config_drum_overflow_3_out = '1') report "Test 1: Wrong overflow configuration drum 3"  severity FAILURE;
   
    -- Test 2: Check new characters to code
    characters_in_db0 <= "01010101010101010101010101";
    characters_in_db1 <= "10101010101010101010101010";
    start_in <= '1';
    wait until rising_edge(clk);   
    wait until rising_edge(clk);
    start_in <= '0';
    assert(characters_to_frist_drum_out = "01010101010101010101010101") report "Test 2: Error while sending first DB characters"  severity FAILURE;
    assert(start_to_first_drum_out = '1') report "Test 2: Awaiting start signal for dirst drum"  severity FAILURE;   
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    characters_from_drum_in  <= "01101001000111100000011111" ;
    ready_from_drum_in       <= '0';   
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    ready_from_drum_in       <= '1';
    wait until rising_edge(clk);            
    ready_from_drum_in       <= '0';    
    wait until rising_edge(clk); 
    assert(coded_characters_out_db1 = "01101001000111100000011111") report "Test 2: Error with coded characters DB1"  severity FAILURE;
    assert(characters_to_frist_drum_out = "10101010101010101010101010") report "Test 2: Error while sending second DB characters"  severity FAILURE;
    assert(start_to_first_drum_out = '1') report "Test 2: Awaiting start signal for second drum"  severity FAILURE; 
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    characters_from_drum_in  <= "10110011100000011111001010" ;    
    ready_from_drum_in       <= '1';
    wait until rising_edge(clk);   
    ready_from_drum_in       <= '0';     
    wait until rising_edge(clk);    
    assert(coded_characters_out_db1 = "01101001000111100000011111") report "Test 2: Error with coded characters DB1"  severity FAILURE; 
    assert(coded_characters_out_db0 = "10110011100000011111001010") report "Test 2: Error with coded characters DB0"  severity FAILURE;
    assert(ready_out = '1') report "Test 2: Error with ready out signal to TURBO"  severity FAILURE;
    
    -- Test 3: drum_impuls
    drum_impuls_in <= '1';
    wait until rising_edge(clk);
    assert(drum_impuls_out = '1') report "Test 3: Wrong drum impulse"  severity FAILURE;
    drum_impuls_in <= '0';
    wait until rising_edge(clk);
    assert(drum_impuls_out = '0') report "Test 3: Wrong drum impulse"  severity FAILURE;
   
    wait for 100 ns;
    assert(1 = 0) report "Simulation complete. This is not an error :)"  severity FAILURE;
  end process testbench_p;
  
end RTL;
