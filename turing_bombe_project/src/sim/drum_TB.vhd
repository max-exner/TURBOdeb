--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : pseudo_lut_TB.vhd
-- Author      : Maximilian Exner
-- Description : Test Bench for the pseudo LUT (Project TURBOdeb)
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-----------+--------------------------+------------+----------------------------
-- 1.00    | Maximilian Exner         | 2019-05-16 | - first stable version
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

entity drum_TB is
    --Port ();
end drum_TB;

--------------------
--  ARCHITECTURE  --
--------------------

architecture RTL of drum_TB is
  ------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------
    component drum is
        Port (
        -- std inputs
            UB_CLK_IN                           : in    std_logic;
            SOFT_RESET_N_IN                     : in    std_logic;
            -- Inputs for the configuration
            CONFIG_DRUM_TYP_IN                  : in    std_logic_vector(2 downto 0);
            CONFIG_START_POS                    : in    std_logic_vector(4 downto 0);
            CONFIG_DRUM_OVERFLOW                : in    std_logic; -- 0 means a overflow at 26 and 1 means a overflow at 39
            -- Inputs from other drums
            CHARACTERS_IN_FWD                   : in    std_logic_vector(25 downto 0);
            CHARACTERS_IN_BWD                   : in    std_logic_vector(25 downto 0);
            REQUEST_IN_FWD                      : in    std_logic; 
            REQUEST_IN_BWD                      : in    std_logic;
            DRUM_IMPULS_IN                      : in    std_logic;
            -- Inputs from the LUT
            LUT_READY_IN                        : in    std_logic;
            LUT_BUSY_IN                         : in    std_logic;
            CHARACTERS_FROM_LUT                 : in    std_logic_vector(25 downto 0);
            
            --Outputs to LUT
            CHARACTERS_TO_LUT                   : out   std_logic_vector(25 downto 0);
            DRUM_TYP_TO_LUT                     : out   std_logic_vector(2 downto 0);
            DIRECTION_TO_LUT                    : out   std_logic;
            REQUEST_TO_LUT                      : out   std_logic;
            
            -- Outputs to other drum
            CHARACTERS_OUT                      : out   std_logic_vector(25 downto 0);
            --DIRECTION_OUT                       : out   std_logic;
            READY_OUT_FWD                       : out   std_logic;
            READY_OUT_BWD                       : out   std_logic;       
            DRUM_IMPULS_OUT                     : out   std_logic
        );
    end component drum;
  
  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
    constant CLK_PERIOD : time := 10 ns;
    signal   clk          : std_logic;
    -- std inputs
   
    signal soft_reset_n_in      :   std_logic;
        -- Inputs for the configuration
    signal config_drum_typ   :   unsigned(2 downto 0);
    signal config_start_pos     :   unsigned(4 downto 0);
    signal config_drum_overflow :   std_logic; -- 0 means a overflow at 26 and 1 means a overflow at 39
        -- Inputs from other drums
    signal characters_in_fwd    :   unsigned(25 downto 0);
    signal characters_in_bwd    :   unsigned(25 downto 0);
    signal request_in_fwd       :   std_logic; -- 1 means forrwoard, 0 means backwarts
    signal request_in_bwd       :   std_logic;
    signal drum_impuls_in       :   std_logic;
        -- Inputs from the LUT
    signal lut_ready_in         :   std_logic;
    signal lut_busy_in          :   std_logic;
    signal characters_from_lut  :   unsigned(25 downto 0);
        
        --Outputs to LUT
    signal characters_to_lut    :   unsigned(25 downto 0);
    signal drum_typ_to_lut      :   unsigned(2 downto 0);
    signal direction_to_lut     :   std_logic;
    signal request_to_lut       :   std_logic;
        
        -- Outputs to other drum
    signal characters_out       :   unsigned(25 downto 0);
    signal ready_out_fwd        :   std_logic;
    signal ready_out_bwd        :   std_logic;    
    signal drum_impuls_out      :   std_logic;   
    

------------
begin
------------
  -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------
  drum_init : drum
    port map(
        UB_CLK_IN                           => clk,
        SOFT_RESET_N_IN                     => soft_reset_n_in,
        -- Inputs for the configuration
        CONFIG_DRUM_TYP_IN                  => std_logic_vector(config_drum_typ),
        CONFIG_START_POS                    => std_logic_vector(config_start_pos),
        CONFIG_DRUM_OVERFLOW                => config_drum_overflow, -- 0 means a overflow at 26 and 1 means a overflow at 39
        -- Inputs from other drums
        CHARACTERS_IN_FWD                   => std_logic_vector(characters_in_fwd),
        CHARACTERS_IN_BWD                   => std_logic_vector(characters_in_bwd),
        --DIRECTION_IN                        => direction_in, -- 1 means forrwoard, 0 means backwarts
        REQUEST_IN_FWD                      => request_in_fwd,
        REQUEST_IN_BWD                      => request_in_bwd,
        DRUM_IMPULS_IN                      => drum_impuls_in,
        -- Inputs from the LUT
        LUT_READY_IN                        => lut_ready_in,
        LUT_BUSY_IN                         => lut_busy_in,
        CHARACTERS_FROM_LUT                 => std_logic_vector(characters_from_lut),
        
        --Outputs to LUT
        unsigned(CHARACTERS_TO_LUT)         => characters_to_lut,
        unsigned(DRUM_TYP_TO_LUT)           => drum_typ_to_lut,
        DIRECTION_TO_LUT                    => direction_to_lut,
        REQUEST_TO_LUT                      => request_to_lut,
        
        -- Outputs to other drum
        unsigned(CHARACTERS_OUT)            => characters_out,
        READY_OUT_FWD                       => ready_out_fwd,
        READY_OUT_BWD                       => ready_out_bwd,    
        DRUM_IMPULS_OUT                     => drum_impuls_out
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
  
-- Test 1: Drum Impulse Output after 26 Input Impulses  
    soft_reset_n_in <= '0';
    config_start_pos <= "00010";
    wait until rising_edge(clk);
    wait until rising_edge(clk);    
    assert(drum_impuls_out = '0') report "Init Error"  severity FAILURE;    
    soft_reset_n_in <= '1';    
    config_drum_typ <= "001";    
    config_drum_overflow <= '0';
    drum_impuls_in <= '0';
    for i in 0 to 25 loop   
        wait until rising_edge(clk);
        wait until rising_edge(clk);        
        drum_impuls_in <= '1';
        wait until rising_edge(clk);
        wait until rising_edge(clk);        
        drum_impuls_in <= '0';                    
    end loop;
    
    
    --wait until rising_edge(clk);
    assert(drum_impuls_out = '1') report "Test 1: Error with drum impuls after 26 impuls inputs"  severity FAILURE;    
    
    
    -- Test 2: Drum Impulse Output after 39 Input Impulses  
    soft_reset_n_in <= '0';
    config_start_pos <= "00010";
    wait until rising_edge(clk);
    wait until rising_edge(clk);    
    assert(drum_impuls_out = '0') report "Init Error"  severity FAILURE;    
    soft_reset_n_in <= '1';    
    config_drum_typ <= "001";    
    config_drum_overflow <= '1';
    drum_impuls_in <= '0';
    for i in 0 to 38 loop        
        wait until rising_edge(clk);
        wait until rising_edge(clk); 
        drum_impuls_in <= '1';
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        drum_impuls_in <= '0';   
    end loop;     
    assert(drum_impuls_out = '1') report "Test 2: Error with drum impuls after 39 impuls inputs"  severity FAILURE;
    drum_impuls_in <= '0';
    
    --Test 3: Encoding forward with init position and drum is "normal" drum
    soft_reset_n_in <= '0';
    config_start_pos <= "00001";
    wait until rising_edge(clk);
    assert(drum_impuls_out = '0') report "Init Error"  severity FAILURE;    
    soft_reset_n_in <= '1';
    lut_ready_in <= '0'; 
    config_drum_typ <= "001";
    CHARACTERS_IN_FWD <= "01010101010101010101010101";
    request_in_fwd <= '1';
    wait until rising_edge(clk);
    request_in_fwd <= '0';
    wait until rising_edge(clk);
    lut_busy_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    lut_busy_in <= '1';
    assert(request_to_lut = '1') report "Test 3: Error no request to LUT"  severity FAILURE;
    assert(direction_to_lut = '1') report "Test 3: Error wrong direction to LUT"  severity FAILURE;
    assert(drum_typ_to_lut = "001") report "Test 3: Error wrong drum typ to LUT"  severity FAILURE;
    assert(characters_to_lut = "10101010101010101010101010") report "Test 3: Error init shift of caracters does not work"  severity FAILURE;
    CHARACTERS_FROM_LUT <= "01101001000111100000011111";
    lut_ready_in <= '1';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(request_to_lut = '0') report "Test 3: Error request does not fall back"  severity FAILURE;
    assert(characters_out = "10110100100011110000001111") report "Test 3: Error back shift of output characters does not work"  severity FAILURE;
    assert(ready_out_fwd = '1') report "Test 3: Error wrong direction to next drum"  severity FAILURE;
       --Test 4: Encoding backwart with init position and one impuls and drum is "normal" drum
    soft_reset_n_in <= '0';
    config_start_pos <= "00001";
    wait until rising_edge(clk);
    assert(drum_impuls_out = '0') report "Init Error"  severity FAILURE;
    soft_reset_n_in <= '1';    
    drum_impuls_in <= '1';
    wait until rising_edge(clk);   
    wait until rising_edge(clk); 
    wait until rising_edge(clk);   
    drum_impuls_in <= '0';   
    lut_ready_in <= '0'; 
    config_drum_typ <= "010";
    CHARACTERS_IN_BWD <= "10101010101010101010101010";
    request_in_bwd <= '1';
    wait until rising_edge(clk);
    request_in_bwd <= '0';
    wait until rising_edge(clk);
    lut_busy_in <= '0';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    lut_busy_in <= '1';
    assert(request_to_lut = '1') report "Test 4: Error no request to LUT"  severity FAILURE;
    assert(direction_to_lut = '0') report "Test 4: Error wrong direction to LUT"  severity FAILURE;
    assert(drum_typ_to_lut = "010") report "Test 4: Error wrong drum typ to LUT"  severity FAILURE;
    assert(characters_to_lut = "10101010101010101010101010") report "Test 4: Error init shift of caracters does not work"  severity FAILURE;
    CHARACTERS_FROM_LUT <= "01101001000111100000011111";
    lut_ready_in <= '1';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(request_to_lut = '0') report "Test 4: Error request does not fall back"  severity FAILURE;
    assert(characters_out = "11011010010001111000000111") report "Test 4: Error back shift of output characters does not work"  severity FAILURE;
    assert(ready_out_bwd = '1') report "Test 4: Error wrong direction to next drum"  severity FAILURE;
       
    wait for 100 ns;
    assert(1 = 0) report "Simulation complete. This is not an error :)"  severity FAILURE;
  end process testbench_p;
  
end RTL;
