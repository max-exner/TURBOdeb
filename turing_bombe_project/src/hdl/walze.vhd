--------------------------------------------------------------------------------
-- CITEC - Center of Excellence Cognitive Interaction Technology
-- Bielefeld University
-- Cognitronics & Sensor Systems
--
-- File Name   : walze.vhd
-- Author      : Sarah Pilz
-- Description : Walze für Enigma
--
-- Revision History:
--------------------------------------------------------------------------------
--
-- Version | Author                   | Date       | Changes
-----------+--------------------------+------------+----------------------------
-- 1.0     | Sarah Pilz               | 2015-04-07 | - initial release
-----------+--------------------------+------------+----------------------------
-- 1.01    | Mark Ugarov              | 2015-04-08 | - basics
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
entity walze is
  port(
    KONFIG_WALZE_AUSWAHL_IN           : in    unsigned(2 downto 0);
    KONFIG_WALZE_KERBE_IN             : in    unsigned(4 downto 0);
	KONFIG_WALZE_VERSATZ_IN		  	      : in 	  unsigned(4 downto 0);
    UB_CLK_IN                         : in    std_logic; 
    SOFT_RESET_N_IN                   : in    std_logic;
    SOFT_RESET_N_OUT					        : out std_logic;
	-- das Zeichen aus der vorherigen Walze - für die Hinrichtung
    ZEICHEN_IN_1                      : in    unsigned(4 downto 0);
	-- das Zeichen aus der nächsten Walze - für die Rückrichtung
    ZEICHEN_IN_2                      : in    unsigned(4 downto 0);
    ZEICHEN_OUT                       : out   unsigned(4 downto 0);
    ABGESCHLOSSEN_HIN_IN              : in    std_logic;
    ABGESCHLOSSEN_HIN_OUT             : out   std_logic;
    ABGESCHLOSSEN_RUECK_IN            : in    std_logic;
    ABGESCHLOSSEN_RUECK_OUT           : out   std_logic;
    DREHEN_IN                         : in    std_logic;
    DREHEN_OUT                        : out   std_logic;
    ZEICHEN_LUT_IN                    : in    unsigned(4 downto 0);
    ZEICHEN_LUT_OUT                   : out   unsigned(4 downto 0);
    NR_WALZE_LUT_OUT                  : out   unsigned(2 downto 0);
    HIN_LUT_OUT                       : out   std_logic;
	-- gibt ein Signal an die LUT, welches die Abfrage Initialisiert
	LUT_ANFRAGE_OUT						  : out	  std_logic;
	-- gibt an, dass das LUT fertig ist mit der Bearbeitung und das neue Zeichen anliegt
	LUT_ABGESCHLOSSEN_IN				  : in std_logic
	
    );
end walze;

--------------------
--  ARCHITECTURE  --
--------------------
architecture RTL of walze is

  ------------------------------
  --  COMPONENT DECLARATIONS  --
  ------------------------------

  

  ---------------------------
  --  SIGNAL DECLARATIONS  --
  ---------------------------
	-- der c_zaehler startet dem start_zaehler 
	signal c_zaehler : unsigned(4 downto 0) := (others => '0');
	signal next_zaehler    : unsigned(4 downto 0);
	-- drehen befiehlt der naechsten Walze, c_zaehler zu erhöhen
	signal c_naechste_walze_drehen	 : std_logic; 
	signal next_naechste_walze_drehen : std_logic;
    signal c_registrier_drehung :std_logic;
    signal next_registrier_drehung : std_logic;
  
	-- die Weitergabe der Zeichen
	signal c_sign_to_lut : unsigned(4 downto 0);
	signal n_sign_to_lut : unsigned(4 downto 0);
    signal c_sign_to_next_walze: unsigned(4 downto 0);
	signal n_sign_to_next_walze :unsigned(4 downto 0);
	--zur Kommunikation mit dem LUT
	signal c_lut_anfrage : std_logic;
	signal n_lut_anfrage : std_logic;
	-- da wir mit modulo und Ringen arbeiten, brauchen wir zwischendurch einen größeren Vektor 
	signal c_zeichen_in_arbeit: unsigned(5 downto 0);
    signal next_zeichen_in_arbeit: unsigned(5 downto 0);
    signal tmp_zeichen_in_arbeit: unsigned(5 downto 0) := "000000";
	
	signal c_abgeschlossen_hin : std_logic;
	signal c_abgeschlossen_rueck : std_logic;
	signal next_abgeschlossen_hin		: std_logic;
	signal next_abgeschlossen_rueck		: std_logic;

	signal c_richtung		: std_logic;
	signal next_richtung  : std_logic;
  
	

	type status_typ is (IDLE,WORKING1,CHECK1,WAITING,CHECK2,WORKING2);  
	signal c_status: status_typ;  
	signal next_status : status_typ;
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
	ABGESCHLOSSEN_HIN_OUT <= c_abgeschlossen_hin;
	ABGESCHLOSSEN_RUECK_OUT <= c_abgeschlossen_rueck;
	HIN_LUT_OUT <= c_richtung;
	DREHEN_OUT <= c_naechste_walze_drehen;
	ZEICHEN_LUT_OUT <= c_sign_to_lut;
	ZEICHEN_OUT <= c_sign_to_next_walze;
	LUT_ANFRAGE_OUT <= c_lut_anfrage;
	
	
	--durchreichen
	NR_WALZE_LUT_OUT <= KONFIG_WALZE_AUSWAHL_IN;
	SOFT_RESET_N_OUT <= SOFT_RESET_N_IN;

  -----------------------------
  --  CONCURRENT STATEMENTS  --
  -----------------------------
 

  -----------------
  --  PROCESSES  --
  -----------------

    
 
  calc_pr : process(ABGESCHLOSSEN_HIN_IN, ABGESCHLOSSEN_RUECK_IN, ZEICHEN_IN_1,ZEICHEN_IN_2, c_zaehler, LUT_ABGESCHLOSSEN_IN,c_status,c_zeichen_in_arbeit,ZEICHEN_LUT_IN,c_richtung,tmp_zeichen_in_arbeit,c_sign_to_lut,c_sign_to_next_walze,c_lut_anfrage)
  begin
	next_abgeschlossen_hin    	<= '0';
	next_abgeschlossen_rueck  	<= '0';
	next_status 				<= c_status;
    next_richtung       <= c_richtung;
    next_zeichen_in_arbeit <= c_zeichen_in_arbeit;
    tmp_zeichen_in_arbeit <= c_zeichen_in_arbeit; -- damit kein Latch entsteht
	n_sign_to_lut <=c_sign_to_lut;
	n_sign_to_next_walze <= c_sign_to_next_walze;
	n_lut_anfrage <= c_lut_anfrage;
	case c_status is
		when IDLE =>
			if (ABGESCHLOSSEN_HIN_IN = '1') then
				next_richtung <= '1';
				next_status 	<= WORKING1;
				next_zeichen_in_arbeit <= ('0' & ZEICHEN_IN_1);
			elsif(ABGESCHLOSSEN_RUECK_IN = '1') then
				next_richtung <= '0';
				next_status 	<= WORKING1;
				next_zeichen_in_arbeit <= ('0' & ZEICHEN_IN_2);
			-- else next_status <= IDLE
			end if;
		when WORKING1 =>
			next_zeichen_in_arbeit <=(c_zeichen_in_arbeit + c_zaehler) ;
			next_status 	<= CHECK1;
		when CHECK1 =>
			tmp_zeichen_in_arbeit <=c_zeichen_in_arbeit -"011010";
			if (c_zeichen_in_arbeit>="011010") then
				n_sign_to_lut <= tmp_zeichen_in_arbeit (4 downto 0);
			else
				n_sign_to_lut <= c_zeichen_in_arbeit(4 downto 0);
			end if;
			n_lut_anfrage 	<= '1';
			next_status 	<= WAITING;
		when WAITING =>
			if LUT_ABGESCHLOSSEN_IN = '1' then
				n_lut_anfrage 	<= '0';
				if ZEICHEN_LUT_IN < c_zaehler then
					next_zeichen_in_arbeit <= '0' & ZEICHEN_LUT_IN + "011010";
				else 
					next_zeichen_in_arbeit <= '0' & ZEICHEN_LUT_IN ;
				end if;
				next_status 	<= 	CHECK2;
			end if;
		when CHECK2 =>
			next_zeichen_in_arbeit <= c_zeichen_in_arbeit - c_zaehler;
			next_status 	<= 	WORKING2;
		when WORKING2 =>
			n_sign_to_next_walze <= c_zeichen_in_arbeit(4 downto 0);
			if c_richtung = '1' then
				next_abgeschlossen_hin <= '1';
			else
				next_abgeschlossen_rueck <= '1';
			end if;
			next_status 	<= IDLE;
	end case;
  end process calc_pr;
  
  dreh_p : process(DREHEN_IN,c_zaehler,KONFIG_WALZE_KERBE_IN,c_registrier_drehung)
  begin
    next_naechste_walze_drehen <= '0';
    next_zaehler <= c_zaehler;
    next_registrier_drehung <= c_registrier_drehung;
    if (DREHEN_IN = '1') then
        next_zaehler <= (c_zaehler+"00001");
        next_registrier_drehung <= '1';
    else
      if (c_zaehler = KONFIG_WALZE_KERBE_IN and c_registrier_drehung = '1') then
        next_naechste_walze_drehen <= '1';
      elsif c_zaehler > "11001" then
        next_zaehler <= "00000";
      end if; 
      next_registrier_drehung <= '0';
    end if; 
  end process dreh_p;
  
  main_reg_p : process(UB_CLK_IN)
  begin
    if (rising_edge(UB_CLK_IN)) then
      if (SOFT_RESET_N_IN = '0') then -- ACHTUNG: RESET auf 0
        c_zaehler                   <= KONFIG_WALZE_VERSATZ_IN; -- für original Enigma: die Kerbenkonf. dazuaddieren. So repräsentiert dann die Kerbenposition die Drehung des äußeren Ringes. 
        c_abgeschlossen_hin 		<= '0';
        c_abgeschlossen_rueck       <= '0';
        c_status 					<= IDLE;
        c_richtung				  	<= '0';
        c_naechste_walze_drehen	  	<= '0';
        c_registrier_drehung 		<= '0';
		c_sign_to_lut 				<= "00000";
		c_sign_to_next_walze 		<= "00000";
		c_lut_anfrage 				<= '0';
      else
        c_richtung              	<= next_richtung;
        c_abgeschlossen_hin   		<= next_abgeschlossen_hin;
        c_abgeschlossen_rueck		<= next_abgeschlossen_rueck;
        c_zaehler             		<= next_zaehler; 
        c_naechste_walze_drehen   	<= next_naechste_walze_drehen;
        c_status 					<= next_status;
        c_zeichen_in_arbeit   		<= next_zeichen_in_arbeit;
        c_registrier_drehung 		<= next_registrier_drehung;
		c_sign_to_lut 				<= n_sign_to_lut;
		c_sign_to_next_walze 		<= n_sign_to_next_walze;
		c_lut_anfrage 				<= n_lut_anfrage;
      end if;
    end if;
  end process main_reg_p;
  

end RTL;
