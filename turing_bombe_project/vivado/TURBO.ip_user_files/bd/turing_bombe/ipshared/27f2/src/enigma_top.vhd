--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : enigma_top.vhd
-- Author      : Maximilian Exner
-- Description : This file maps the part of the enigma (TURBOdeb Project)
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-----------+--------------------------+------------+----------------------------
-- 1.00    | Maximilian Exner         | 2019-06-18 | -first stable version
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

entity enigma_top is    
    Port (
        -- Inputs
        UB_CLK_IN                     :   in std_logic;
        SOFT_RESET_N_IN               :   in std_logic;
        -- Input Config
        CONFIG_START_POS_DRUM_1_IN    :   in std_logic_vector(4 downto 0);
        CONFIG_START_POS_DRUM_2_IN    :   in std_logic_vector(4 downto 0);
        CONFIG_START_POS_DRUM_3_IN    :   in std_logic_vector(4 downto 0);
        CONFIG_DRUM_TYP_1_IN          :   in std_logic_vector(2 downto 0);
        CONFIG_DRUM_TYP_2_IN          :   in std_logic_vector(2 downto 0);
        CONFIG_DRUM_TYP_3_IN          :   in std_logic_vector(2 downto 0);
        -- Input Data
        CHARACTERS_IN_DB0             :   in std_logic_vector(25 downto 0);
        CHARACTERS_IN_DB1             :   in std_logic_vector(25 downto 0);
        DRUM_IMPULS_IN                :   in std_logic;
        START_IN                      :   in std_logic;        
        --Outputs 
        CODED_CHARACTERS_OUT_DB0      :   out std_logic_vector(25 downto 0);
        CODED_CHARACTERS_OUT_DB1      :   out std_logic_vector(25 downto 0);
        READY_OUT                     :   out std_logic        
    );    
end enigma_top;

--------------------
--  ARCHITECTURE  --
--------------------
architecture RTL of enigma_top is

   -- Declare the attributes in the architecture section
    ATTRIBUTE X_INTERFACE_INFO : STRING;
    ATTRIBUTE X_INTERFACE_INFO of UB_CLK_IN: SIGNAL is "xilinx.com:signal:clock:1.0 CLK1 CLK";
    -- Supported parameters: ASSOCIATED_CLKEN, ASSOCIATED_RESET, ASSOCIATED_ASYNC_RESET, ASSOCIATED_BUSIF, CLK_DOMAIN, PHASE, FREQ_HZ
    -- Most of these parameters are optional.  However, when using AXI, at least one clock must be associated to the AXI interface.
    -- Use the axi interface name for ASSOCIATED_BUSIF, if there are multiple interfaces, separate each name by ':'
    -- Use the port name for ASSOCIATED_RESET.
    -- Output clocks will require FREQ_HZ to be set (note the value is in HZ and an integer is expected).
    ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
    ATTRIBUTE X_INTERFACE_PARAMETER of UB_CLK_IN: SIGNAL is "ASSOCIATED_RESET SOFT_RESET_N_IN, FREQ_HZ 50000000";
    
    
    -- Declare the attributes in the architecture section   
    ATTRIBUTE X_INTERFACE_INFO of SOFT_RESET_N_IN: SIGNAL is "xilinx.com:signal:reset:1.0 RST1 RST";
    -- Supported parameter: POLARITY {ACTIVE_LOW, ACTIVE_HIGH}
    -- Normally active low is assumed.  Use this parameter to force the level    
    ATTRIBUTE X_INTERFACE_PARAMETER of SOFT_RESET_N_IN: SIGNAL is "POLARITY ACTIVE_LOW";
			    
	

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
      CHARACTERS_IN_FWD                    : in    std_logic_vector(25 downto 0);
      CHARACTERS_IN_BWD                    : in    std_logic_vector(25 downto 0);
      --DIRECTION_IN                        : in    std_logic; -- 1 means forrwoard, 0 means backwarts
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

component drum_ukw is
  Port (
      -- std inputs
      UB_CLK_IN                           : in    std_logic;
      SOFT_RESET_N_IN                     : in    std_logic;      
      -- Inputs from other drums
      CHARACTERS_IN_FWD                   : in    std_logic_vector(25 downto 0);      
      REQUEST_IN_FWD                      : in    std_logic;      
      -- Inputs from the LUT
      LUT_READY_IN                        : in    std_logic;
      LUT_BUSY_IN                         : in    std_logic;
      CHARACTERS_FROM_LUT                 : in    std_logic_vector(25 downto 0);
      
      --Outputs to LUT
      CHARACTERS_TO_LUT                   : out   std_logic_vector(25 downto 0);
      DRUM_TYP_TO_LUT                     : out   std_logic_vector(2 downto 0);      
      REQUEST_TO_LUT                      : out   std_logic;
      
      -- Outputs to other drum
      CHARACTERS_OUT                      : out   std_logic_vector(25 downto 0);      
      READY_OUT_BWD                       : out   std_logic          
  );
end component drum_ukw;

component pseudo_lut is
  port(
    UB_CLK_IN                           : in   std_logic;
    SOFT_RESET_N_IN                     : in   std_logic;
	DIRECTION_1                         : in   std_logic;
	DIRECTION_2                         : in   std_logic;
	DIRECTION_3                         : in   std_logic;		
	-- inputs that include the characters that should be coded
    CHARACTERS_FROM_DRUM_IN_1	        : in   std_logic_vector(25 downto 0);
	CHARACTERS_FROM_DRUM_IN_2	        : in   std_logic_vector(25 downto 0);
	CHARACTERS_FROM_DRUM_IN_3	        : in   std_logic_vector(25 downto 0);
	CHARACTERS_FROM_DRUM_IN_UKW	        : in   std_logic_vector(25 downto 0);
	REQUEST_1						    : in   std_logic;
	REQUEST_2						    : in   std_logic;
	REQUEST_3						    : in   std_logic;
	REQUEST_UKW						    : in   std_logic;	
	DRUM_TYP_IN_1                       : in   std_logic_vector(2 downto 0);    -- this inputs configure the drum type
	DRUM_TYP_IN_2                       : in   std_logic_vector(2 downto 0);    -- this inputs configure the drum type
	DRUM_TYP_IN_3                       : in   std_logic_vector(2 downto 0);    -- this inputs configure the drum type
	DRUM_TYP_IN_UKW                     : in   std_logic_vector(2 downto 0);    -- this inputs configure the drum type
	-- outputs that include the codes characters
    PROJECTION                          : out   std_logic_vector(25 downto 0);	
	-- gives feedback to the drums when the characters are processed 
	BUSY_OUT                            : out    std_logic;	
	READY_OUT_1	                        : out    std_logic;
	READY_OUT_2	                        : out    std_logic;
	READY_OUT_3	                        : out    std_logic;
	READY_OUT_UKW                       : out    std_logic
    );
end component pseudo_lut;

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
end component;



  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
  -- config connections between control and drum
  signal config_start_pos_drum_1          : std_logic_vector(4 downto 0);
  signal config_start_pos_drum_2          : std_logic_vector(4 downto 0);
  signal config_start_pos_drum_3          : std_logic_vector(4 downto 0);
  signal config_drum_typ_1                : std_logic_vector(2 downto 0);
  signal config_drum_typ_2                : std_logic_vector(2 downto 0);
  signal config_drum_typ_3                : std_logic_vector(2 downto 0);
  signal config_drum_overflow_2           : std_logic;
  signal config_drum_overflow_3           : std_logic;
  signal characters_drum_1_in             : std_logic_vector(25 downto 0);
  
  -- signals between drum and LUT 
  signal lut_projection                   : std_logic_vector(25 downto 0);
  signal lut_busy                         : std_logic;
  signal lut_ready_to_drum_1              : std_logic;
  signal lut_ready_to_drum_2              : std_logic;
  signal lut_ready_to_drum_3              : std_logic;
  signal lut_ready_to_drum_ukw            : std_logic;
  signal characters_drum_1_lut            : std_logic_vector(25 downto 0);
  signal characters_drum_2_lut            : std_logic_vector(25 downto 0);
  signal characters_drum_3_lut            : std_logic_vector(25 downto 0);
  signal characters_drum_ukw_lut          : std_logic_vector(25 downto 0);
  signal drum_typ_1_lut                   : std_logic_vector(2 downto 0);
  signal drum_typ_2_lut                   : std_logic_vector(2 downto 0);
  signal drum_typ_3_lut                   : std_logic_vector(2 downto 0);
  signal drum_typ_ukw_lut                 : std_logic_vector(2 downto 0);
  signal lut_direction_drum_1             : std_logic;  
  signal lut_direction_drum_2             : std_logic; 
  signal lut_direction_drum_3             : std_logic; 
  signal lut_request_drum_1               : std_logic;
  signal lut_request_drum_2               : std_logic;
  signal lut_request_drum_3               : std_logic;
  signal lut_request_drum_ukw             : std_logic;
  
  -- signals between drums
  signal characters_drum_1_out            : std_logic_vector(25 downto 0);
  signal characters_drum_2_out            : std_logic_vector(25 downto 0);
  signal characters_drum_3_out            : std_logic_vector(25 downto 0);
  signal characters_drum_ukw_out          : std_logic_vector(25 downto 0);
  signal ready_out_drum_1_fwd             : std_logic;
  signal ready_out_drum_2_fwd             : std_logic;
  signal ready_out_drum_3_fwd             : std_logic;
  signal ready_out_drum_1_bwd             : std_logic;
  signal ready_out_drum_2_bwd             : std_logic;
  signal ready_out_drum_3_bwd             : std_logic;
  signal ready_out_drum_ukw_bwd           : std_logic;
  signal start_to_drum_1                  : std_logic;
  signal drum_impuls_to_drum_1            : std_logic;
  signal drum_impuls_to_drum_2            : std_logic;
  signal drum_impuls_to_drum_3            : std_logic;
 
  
  
  
  
--------
begin --
--------

 -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------     
  enigma_control_init : enigma_control
  port map(
    UB_CLK_IN                           =>  UB_CLK_IN,
    SOFT_RESET_N_IN                     =>  SOFT_RESET_N_IN,
    CONFIG_START_POS_DRUM_1_IN          =>  CONFIG_START_POS_DRUM_1_IN,
    CONFIG_START_POS_DRUM_2_IN          =>  CONFIG_START_POS_DRUM_2_IN,
    CONFIG_START_POS_DRUM_3_IN          =>  CONFIG_START_POS_DRUM_3_IN,
    CONFIG_DRUM_TYP_1_IN                =>  CONFIG_DRUM_TYP_1_IN      ,
    CONFIG_DRUM_TYP_2_IN                =>  CONFIG_DRUM_TYP_2_IN      ,
    CONFIG_DRUM_TYP_3_IN                =>  CONFIG_DRUM_TYP_3_IN      ,
    --inputs from TURBO
    CHARACTERS_IN_DB0                   =>  CHARACTERS_IN_DB0,
    CHARACTERS_IN_DB1                   =>  CHARACTERS_IN_DB1,    
    DRUM_IMPULS_IN                      =>  DRUM_IMPULS_IN,
    START_IN                            =>  START_IN,
    --inputs from first drum  
    CHARACTERS_FROM_DRUM_IN             =>  characters_drum_1_out,
    READY_FROM_DRUM_IN                  =>  ready_out_drum_1_bwd,
    --outputs to drum 1
    CHARACTERS_TO_FIRST_DRUM_OUT        =>  characters_drum_1_in,
    START_TO_FIRST_DRUM_OUT             =>  start_to_drum_1,
    --output to drum 3
    DRUM_IMPULS_OUT                     =>  drum_impuls_to_drum_3,  
         
    --outputs to TURBO
    CODED_CHARACTERS_OUT_DB0            =>  CODED_CHARACTERS_OUT_DB0, -- Characters from coded from DB1 to DB0
    CODED_CHARACTERS_OUT_DB1            =>  CODED_CHARACTERS_OUT_DB1,  -- Characters from coded from DB0 to DB1
    READY_OUT                           =>  READY_OUT,
    --Configuration Outputs to other Drums
    CONFIG_START_POS_DRUM_1_OUT         =>  config_start_pos_drum_1,
    CONFIG_START_POS_DRUM_2_OUT         =>  config_start_pos_drum_2, 
    CONFIG_START_POS_DRUM_3_OUT         =>  config_start_pos_drum_3,
    CONFIG_DRUM_TYP_1_OUT               =>  config_drum_typ_1,        
    CONFIG_DRUM_TYP_2_OUT               =>  config_drum_typ_2,        
    CONFIG_DRUM_TYP_3_OUT               =>  config_drum_typ_3,      
    CONFIG_DRUM_OVERFLOW_2_OUT          =>  config_drum_overflow_2,
    CONFIG_DRUM_OVERFLOW_3_OUT          =>  config_drum_overflow_3
 
  );
  
  drum_1_init   :   drum
  port map(
    -- std inputs
    UB_CLK_IN                           =>  UB_CLK_IN,
    SOFT_RESET_N_IN                     =>  SOFT_RESET_N_IN,
    -- Inputs for the configuration
    CONFIG_DRUM_TYP_IN                  =>  config_drum_typ_1,
    CONFIG_START_POS                    =>  config_start_pos_drum_1,
    CONFIG_DRUM_OVERFLOW                =>  '0', -- 0 means a overflow at 26 and 1 means a overflow at 39
    -- Inputs from other drums
    CHARACTERS_IN_FWD                   =>  characters_drum_1_in,
    CHARACTERS_IN_BWD                   =>  characters_drum_2_out,    
    REQUEST_IN_FWD                      =>  start_to_drum_1,
    REQUEST_IN_BWD                      =>  ready_out_drum_2_bwd,
    DRUM_IMPULS_IN                      =>  drum_impuls_to_drum_1,
    -- Inputs from the LUT
    LUT_READY_IN                        =>  lut_ready_to_drum_1,
    LUT_BUSY_IN                         =>  lut_busy,
    CHARACTERS_FROM_LUT                 =>  lut_projection,
    
    --Outputs to LUT
    CHARACTERS_TO_LUT                   =>  characters_drum_1_lut,
    DRUM_TYP_TO_LUT                     =>  drum_typ_1_lut,
    DIRECTION_TO_LUT                    =>  lut_direction_drum_1,
    REQUEST_TO_LUT                      =>  lut_request_drum_1,
    
    -- Outputs to other drum
    CHARACTERS_OUT                      =>  characters_drum_1_out,
    --DIRECTION_OUT                       : out   std_logic;
    READY_OUT_FWD                       =>  ready_out_drum_1_fwd,
    READY_OUT_BWD                       =>  ready_out_drum_1_bwd    
    --DRUM_IMPULS_OUT                     : out   std_logic --this port does not need a connection
  ); 
  
  drum_2_init   :   drum
  port map(
    -- std inputs
    UB_CLK_IN                           =>  UB_CLK_IN,
    SOFT_RESET_N_IN                     =>  SOFT_RESET_N_IN,
    -- Inputs for the configuration
    CONFIG_DRUM_TYP_IN                  =>  config_drum_typ_2,
    CONFIG_START_POS                    =>  config_start_pos_drum_2,
    CONFIG_DRUM_OVERFLOW                =>  config_drum_overflow_2, -- 0 means a overflow at 26 and 1 means a overflow at 39
    -- Inputs from other drums
    CHARACTERS_IN_FWD                   =>  characters_drum_1_out,
    CHARACTERS_IN_BWD                   =>  characters_drum_3_out,
    REQUEST_IN_FWD                      =>  ready_out_drum_1_fwd,
    REQUEST_IN_BWD                      =>  ready_out_drum_3_bwd,
    DRUM_IMPULS_IN                      =>  drum_impuls_to_drum_2,
    -- Inputs from the LUT
    LUT_READY_IN                        =>  lut_ready_to_drum_2,
    LUT_BUSY_IN                         =>  lut_busy,
    CHARACTERS_FROM_LUT                 =>  lut_projection,
    
    --Outputs to LUT
    CHARACTERS_TO_LUT                   =>  characters_drum_2_lut,
    DRUM_TYP_TO_LUT                     =>  drum_typ_2_lut,
    DIRECTION_TO_LUT                    =>  lut_direction_drum_2,
    REQUEST_TO_LUT                      =>  lut_request_drum_2,
    
    -- Outputs to other drum
    CHARACTERS_OUT                      =>  characters_drum_2_out,
    --DIRECTION_OUT                       : out   std_logic;
    READY_OUT_FWD                       =>  ready_out_drum_2_fwd,
    READY_OUT_BWD                       =>  ready_out_drum_2_bwd,   
    DRUM_IMPULS_OUT                     =>  drum_impuls_to_drum_1
  ); 
  
  drum_3_init   :   drum
  port map(
    -- std inputs
    UB_CLK_IN                           =>  UB_CLK_IN,
    SOFT_RESET_N_IN                     =>  SOFT_RESET_N_IN,
    -- Inputs for the configuration
    CONFIG_DRUM_TYP_IN                  =>  config_drum_typ_3,
    CONFIG_START_POS                    =>  config_start_pos_drum_3,
    CONFIG_DRUM_OVERFLOW                =>  config_drum_overflow_3, -- 0 means a overflow at 26 and 1 means a overflow at 39
    -- Inputs from other drums
    CHARACTERS_IN_FWD                   =>  characters_drum_2_out,
    CHARACTERS_IN_BWD                   =>  characters_drum_ukw_out,    
    REQUEST_IN_FWD                      =>  ready_out_drum_2_fwd,
    REQUEST_IN_BWD                      =>  ready_out_drum_ukw_bwd,
    DRUM_IMPULS_IN                      =>  drum_impuls_to_drum_3,
    -- Inputs from the LUT
    LUT_READY_IN                        =>  lut_ready_to_drum_3,
    LUT_BUSY_IN                         =>  lut_busy,
    CHARACTERS_FROM_LUT                 =>  lut_projection,
    
    --Outputs to LUT
    CHARACTERS_TO_LUT                   =>  characters_drum_3_lut,
    DRUM_TYP_TO_LUT                     =>  drum_typ_3_lut,
    DIRECTION_TO_LUT                    =>  lut_direction_drum_3,
    REQUEST_TO_LUT                      =>  lut_request_drum_3,
    
    -- Outputs to other drum
    CHARACTERS_OUT                      =>  characters_drum_3_out,
    --DIRECTION_OUT                       : out   std_logic;
    READY_OUT_FWD                       =>  ready_out_drum_3_fwd,
    READY_OUT_BWD                       =>  ready_out_drum_3_bwd,   
    DRUM_IMPULS_OUT                     =>  drum_impuls_to_drum_2
  ); 
  
  drum_ukw_init :   drum_ukw
  port map(
    -- std inputs
    UB_CLK_IN                           =>  UB_CLK_IN,      
    SOFT_RESET_N_IN                     =>  SOFT_RESET_N_IN,      
    -- Inputs from other drums
    CHARACTERS_IN_FWD                   =>  characters_drum_3_out,      
    REQUEST_IN_FWD                      =>  ready_out_drum_3_fwd,      
    -- Inputs from the LUT
    LUT_READY_IN                        =>  lut_ready_to_drum_ukw,
    LUT_BUSY_IN                         =>  lut_busy,
    CHARACTERS_FROM_LUT                 =>  lut_projection,    
    --Outputs to LUT
    CHARACTERS_TO_LUT                   =>  characters_drum_ukw_lut,
    DRUM_TYP_TO_LUT                     =>  drum_typ_ukw_lut,      
    REQUEST_TO_LUT                      =>  lut_request_drum_ukw,
    
    -- Outputs to other drum
    CHARACTERS_OUT                      =>  characters_drum_ukw_out,      
    READY_OUT_BWD                       =>  ready_out_drum_ukw_bwd
  );
  
  pseudo_lut_init   :   pseudo_lut
  port map(
    UB_CLK_IN                           =>  UB_CLK_IN,      
    SOFT_RESET_N_IN                     =>  SOFT_RESET_N_IN,
	DIRECTION_1                         =>  lut_direction_drum_1,
	DIRECTION_2                         =>  lut_direction_drum_2,
	DIRECTION_3                         =>  lut_direction_drum_3,		
	-- inputs that include the characters that should be coded
    CHARACTERS_FROM_DRUM_IN_1	        =>  characters_drum_1_lut,
	CHARACTERS_FROM_DRUM_IN_2	        =>  characters_drum_2_lut,
	CHARACTERS_FROM_DRUM_IN_3	        =>  characters_drum_3_lut,
	CHARACTERS_FROM_DRUM_IN_UKW	        =>  characters_drum_ukw_lut,
	REQUEST_1						    =>  lut_request_drum_1,
	REQUEST_2						    =>  lut_request_drum_2,
	REQUEST_3						    =>  lut_request_drum_3,
	REQUEST_UKW						    =>  lut_request_drum_ukw,	
	DRUM_TYP_IN_1                       =>  drum_typ_1_lut,    -- this inputs configure the drum type
	DRUM_TYP_IN_2                       =>  drum_typ_2_lut,    -- this inputs configure the drum type
	DRUM_TYP_IN_3                       =>  drum_typ_3_lut,    -- this inputs configure the drum type
	DRUM_TYP_IN_UKW                     =>  drum_typ_ukw_lut,    -- this inputs configure the drum type
	-- outputs that include the codes characters
    PROJECTION                          =>  lut_projection,	
	-- gives feedback to the drums when the characters are processed 
	BUSY_OUT                            =>  lut_busy,
	READY_OUT_1	                        =>  lut_ready_to_drum_1,
	READY_OUT_2	                        =>  lut_ready_to_drum_2,
	READY_OUT_3	                        =>  lut_ready_to_drum_3,
	READY_OUT_UKW                       =>  lut_ready_to_drum_ukw
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
 

end RTL;
