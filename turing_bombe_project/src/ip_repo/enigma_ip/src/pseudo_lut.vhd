--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : pseudo_lut.vhd
-- Author      : Maximilian Exner
-- Description : LUT for EnigmaTB (TURBOdeb Project)
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-----------+--------------------------+------------+----------------------------
-- 1.00    | Maximilian Exner         | 2019-05-22 | -first stable version
-----------+--------------------------+------------+----------------------------
-- 1.01    | Maximilian Exner         | 2019-06-05 | -change i/o's to std_logic_vector
--         |                          |            |  (simulation can not simulate unsigned 
--         |                          |            |  ports when you use a block design)
-----------+--------------------------+------------+---------------------------- 
-- 1.02    | Maximilian Exner         | 2019-05-22 | - correct rotor table
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
entity pseudo_lut is
  port(
    UB_CLK_IN                           : in   std_logic;
    SOFT_RESET_N_IN                     : in   std_logic;
	DIRECTION_1                         : in   std_logic;
	DIRECTION_2                         : in   std_logic;
	DIRECTION_3                         : in   std_logic;		
	-- inputs that include the charecters that should be coded
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
end pseudo_lut;

--------------------
--  ARCHITECTURE  --
--------------------
architecture RTL of pseudo_lut is

  ------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------

  

  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------

  type TABLE_TYPE is array (0 to 25)  of integer;
  
	-- input signales	
	signal c_chars_in       : unsigned(25 downto 0);
	signal n_chars_in 	    : unsigned(25 downto 0);
	
	
	-- output signales 
	signal c_chars_out       : unsigned(25 downto 0);
	signal n_chars_out 	     : unsigned(25 downto 0);
	signal c_ready           : unsigned(3 downto 0);
	signal n_ready           : unsigned(3 downto 0);

	
	
	
	-- internal signales		
	signal c_busy,  n_busy   : std_logic;
	signal c_direction, n_direction : std_logic;
	signal c_drum_typ, n_drum_typ    : unsigned(2 downto 0);
	signal c_table, n_table  : TABLE_TYPE;
	signal c_drum_inprocess, n_drum_inprocess    : integer;	
	
	
	type status_typ is (IDLE,CHOSEDRUM,WORKING,WAITING);  
	signal status, next_status: status_typ;
    signal next_counter: unsigned(2 downto 0);
    
	
	  
  constant A : integer := 0;
  constant B : integer := 1;
  constant C : integer := 2;
  constant D : integer := 3;
  constant E : integer := 4;
  constant F : integer := 5;
  constant G : integer := 6;
  constant H : integer := 7;
  constant I : integer := 8;
  constant J : integer := 9;
  constant K : integer := 10;
  constant L : integer := 11;
  constant M : integer := 12;
  constant N : integer := 13;
  constant O : integer := 14;
  constant P : integer := 15;
  constant Q : integer := 16;
  constant R : integer := 17;
  constant S : integer := 18;
  constant T : integer := 19;
  constant U : integer := 20;
  constant V : integer := 21;
  constant W : integer := 22;
  constant X : integer := 23;
  constant Y : integer := 24;
  constant Z : integer := 25;
	
	
	-- tables that define the coding of the drums (for- and backwarts)
	-- this tables include the core offset of the TURING BOMBE	
	                             -- coreoffset 0
	                             --  (  A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z);
	constant table1:TABLE_TYPE := 	 (	E,K,M,F,L,G,D,Q,V,Z,N,T,O,W,Y,H,X,U,S,P,A,I,B,R,C,J);	
	constant revTable1:TABLE_TYPE := (  U,W,Y,G,A,D,F,P,V,Z,B,E,C,K,M,T,H,X,S,L,R,I,N,Q,O,J);
	
	
	                             -- coreoffset 0 
	                             --  (  A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z);
	constant table2:TABLE_TYPE := 	 (	A,J,D,K,S,I,R,U,X,B,L,H,W,T,M,C,Q,G,Z,N,P,Y,F,V,O,E);
	constant revTable2:TABLE_TYPE := (	A,J,P,C,Z,W,R,L,F,B,D,K,O,T,Y,U,Q,G,E,N,H,X,M,I,V,S);
	
	                             -- coreoffset 0
	                             --  (  A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z);
	constant table3:TABLE_TYPE := 	 (	B,D,F,H,J,L,C,P,R,T,X,V,Z,N,Y,E,I,W,G,A,K,M,U,S,Q,O);
	constant revTable3:TABLE_TYPE := (	T,A,G,B,P,C,S,D,Q,E,U,F,V,N,Z,H,Y,I,X,J,W,L,R,K,O,M);
	
	                             -- coreoffset 1
	                             --  (  A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z);
	constant table4:TABLE_TYPE := 	 (	C,F,T,P,W,Q,A,K,B,Z,R,V,J,S,I,Y,M,O,G,U,H,L,E,D,N,X);
	constant revTable4:TABLE_TYPE := (	G,I,A,X,W,B,S,U,O,M,H,V,Q,Y,R,D,F,K,N,C,T,L,E,Z,P,J);
	
	                             -- coreoffset 2
	                             --  (  A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z);
	constant table5:TABLE_TYPE := 	 (  E,M,X,B,D,T,I,K,V,A,W,R,U,F,P,J,N,Z,C,Y,O,L,S,Q,H,G);
	constant revTable5:TABLE_TYPE := (	J,D,S,E,A,N,Z,Y,G,P,H,V,B,Q,U,O,X,L,W,F,M,I,K,C,T,R);
	
		                         --  (  A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z);
	constant tableUkwB:TABLE_TYPE := (	Y,R,U,H,Q,S,L,D,P,X,N,G,O,K,M,I,E,B,F,Z,C,W,V,J,A,T);    
	
---------
begin  --
---------

  -------------------------------
  --  COMPONENT INSTANTIAIONS  --
  -------------------------------     

  
  --------------------------------
  --  INPUT/OUTPUT ASSIGNMENTS  --
  --------------------------------
  

	-- outputs
	PROJECTION         <= std_logic_vector(c_chars_out);	
	BUSY_OUT           <= c_busy;
	
	READY_OUT_1	       <= c_ready(0);
	READY_OUT_2	       <= c_ready(1);
	READY_OUT_3	       <= c_ready(2);
	READY_OUT_UKW      <= c_ready(3);


	

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
        status      <= IDLE;		
		c_busy      <= '0';
		c_chars_out <= (others => '0');	
		c_chars_in  <= (others => '0');
		c_table     <= table1;
		c_drum_inprocess <= 0;
		c_ready <= (others => '0');
		c_drum_typ  <= (others => '0');
		c_direction <= '1';
      else
        status      <= next_status;		
		c_busy      <= n_busy;
		c_chars_out <= n_chars_out;
		c_chars_in  <= n_chars_in;
		c_table     <= n_table;
		c_drum_inprocess <= n_drum_inprocess;
		c_ready     <= n_ready;
		c_drum_typ  <= n_drum_typ;
		c_direction <= n_direction;
		
      end if;
		
	end if; 
  end process main_reg_p;  
  
  
  calc_p: process (c_drum_typ,DIRECTION_1, DIRECTION_2, DIRECTION_3,DRUM_TYP_IN_1,DRUM_TYP_IN_2,DRUM_TYP_IN_3, DRUM_TYP_IN_UKW,status,c_busy,c_chars_out,c_chars_in,REQUEST_1,REQUEST_2,REQUEST_3,REQUEST_UKW, c_direction, c_drum_inprocess, c_table, c_ready, CHARACTERS_FROM_DRUM_IN_1,CHARACTERS_FROM_DRUM_IN_2,CHARACTERS_FROM_DRUM_IN_3, CHARACTERS_FROM_DRUM_IN_UKW, n_drum_inprocess) 
  begin
    n_busy <= c_busy;
	n_chars_out <= c_chars_out;
	n_chars_in <= c_chars_in;
	n_table <= c_table;
	n_drum_inprocess <= c_drum_inprocess;
	n_ready <= c_ready;
	n_drum_typ <= c_drum_typ;
	n_direction <= c_direction;
		case status is
			when IDLE =>
				next_status <= IDLE;
				n_chars_out <= (others => '0'); 
				n_busy <= '0';
				n_ready <= (others => '0');				      
				if (REQUEST_1 = '1') then
					n_chars_in <= unsigned(CHARACTERS_FROM_DRUM_IN_1);
					next_status <= CHOSEDRUM;				
					n_busy <= '1';
					n_drum_inprocess <= 0;	
					n_drum_typ <= unsigned(DRUM_TYP_IN_1);
					n_direction <= DIRECTION_1; 				
                elsif (REQUEST_2 = '1') then
                    n_chars_in <= unsigned(CHARACTERS_FROM_DRUM_IN_2);
					next_status <= CHOSEDRUM;									
					n_busy <= '1';
					n_drum_inprocess <= 1;
					n_drum_typ <= unsigned(DRUM_TYP_IN_2);
					n_direction <= DIRECTION_2;
                elsif (REQUEST_3 = '1') then
					n_chars_in <= unsigned(CHARACTERS_FROM_DRUM_IN_3);
					next_status <= CHOSEDRUM;					
					n_busy <= '1';				
					n_drum_inprocess <= 2;
					n_drum_typ <= unsigned(DRUM_TYP_IN_3);
					n_direction <= DIRECTION_3;	
                elsif (REQUEST_UKW = '1') then
					n_chars_in <= unsigned(CHARACTERS_FROM_DRUM_IN_UKW);
					next_status <= CHOSEDRUM;										
					n_busy <= '1';
					n_drum_inprocess <= 3;
					n_drum_typ <= unsigned(DRUM_TYP_IN_UKW);
					n_direction <= '1'; --dont care!!!					
				end if;				
			when CHOSEDRUM =>				
				case c_drum_typ is
                    when "001" =>   
                        if c_direction = '1' then
                            n_table <= table1; 
                        else
                            n_table <= revTable1;
                        end if;
                    when "010" => 
                        if c_direction = '1' then
                            n_table <= table2; 
                        else
                            n_table <= revTable2;
                        end if;
                    when "011" => 
                        if c_direction = '1' then
                            n_table <= table3; 
                        else
                            n_table <= revTable3;
                        end if;
                    when "100" => 
                        if c_direction = '1' then
                            n_table <= table4; 
                        else
                            n_table <= revTable4;
                        end if;
                    when "101" => 
                        if c_direction = '1' then
                            n_table <= table5; 
                        else
                            n_table <= revTable5;
                        end if;
                    when "110" =>                                        
                            n_table <= tableUKWb;     
                    when others =>
                        n_table <= table1; 				
                 end case;
                 next_status <= WORKING;                 				
			when WORKING =>				
				--for loop that cryptes the current characters				
			    for i in 0 to 25 loop	
				    if c_chars_in(i) = '1' then				    
				        n_chars_out(c_table(i)) <= '1';
                    end if;
			    end loop;
			    next_status <= WAITING;
			
			when WAITING => -- wait until the drum stops its request
				next_status <= WAITING;
				--send ready to the right output
				n_ready(n_drum_inprocess) <= '1';
				if REQUEST_1 = '0' and c_drum_inprocess = 0 then				    
				    next_status <= IDLE;
				end if;
				if REQUEST_2 = '0' and c_drum_inprocess = 1 then				    
				    next_status <= IDLE;
				end if;
				if REQUEST_3 = '0' and c_drum_inprocess = 2 then				    
				    next_status <= IDLE;
				end if;
				if REQUEST_UKW = '0' and c_drum_inprocess = 3 then				    
				    next_status <= IDLE;
				end if;								
			end case;
  end process calc_p;

end RTL;
