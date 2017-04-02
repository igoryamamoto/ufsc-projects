-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/10/2014 08:42:37"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	topo IS
    PORT (
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	TD_RESET : OUT std_logic;
	CLOCK_27 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END topo;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- TD_RESET	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- CLOCK_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF topo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TD_RESET : std_logic;
SIGNAL ww_CLOCK_27 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L0|atraso[1]~26_combout\ : std_logic;
SIGNAL \L0|atraso[2]~28_combout\ : std_logic;
SIGNAL \L0|atraso[4]~32_combout\ : std_logic;
SIGNAL \L0|atraso[6]~36_combout\ : std_logic;
SIGNAL \L0|atraso[8]~40_combout\ : std_logic;
SIGNAL \L0|atraso[15]~54_combout\ : std_logic;
SIGNAL \L0|atraso[17]~58_combout\ : std_logic;
SIGNAL \L0|atraso[18]~60_combout\ : std_logic;
SIGNAL \L0|atraso[20]~64_combout\ : std_logic;
SIGNAL \L0|Selector12~0_combout\ : std_logic;
SIGNAL \L0|Selector14~0_combout\ : std_logic;
SIGNAL \L0|Selector15~0_combout\ : std_logic;
SIGNAL \L0|Selector17~0_combout\ : std_logic;
SIGNAL \L0|Selector24~0_combout\ : std_logic;
SIGNAL \L0|Selector26~0_combout\ : std_logic;
SIGNAL \L0|Selector28~0_combout\ : std_logic;
SIGNAL \L0|Selector30~0_combout\ : std_logic;
SIGNAL \L0|Selector31~0_combout\ : std_logic;
SIGNAL \L0|atraso[0]~24_combout\ : std_logic;
SIGNAL \L0|EA.D1~regout\ : std_logic;
SIGNAL \L0|Selector32~0_combout\ : std_logic;
SIGNAL \L0|EA.D3~feeder_combout\ : std_logic;
SIGNAL \L0|EA.D3~regout\ : std_logic;
SIGNAL \L0|EA~14_combout\ : std_logic;
SIGNAL \L0|EA.D4~regout\ : std_logic;
SIGNAL \L0|EA~13_combout\ : std_logic;
SIGNAL \L0|EA.D2~regout\ : std_logic;
SIGNAL \L0|atraso[0]~25\ : std_logic;
SIGNAL \L0|atraso[1]~27\ : std_logic;
SIGNAL \L0|atraso[2]~29\ : std_logic;
SIGNAL \L0|atraso[3]~30_combout\ : std_logic;
SIGNAL \L0|Selector29~0_combout\ : std_logic;
SIGNAL \L0|atraso[3]~31\ : std_logic;
SIGNAL \L0|atraso[4]~33\ : std_logic;
SIGNAL \L0|atraso[5]~34_combout\ : std_logic;
SIGNAL \L0|Selector27~0_combout\ : std_logic;
SIGNAL \L0|atraso[5]~35\ : std_logic;
SIGNAL \L0|atraso[6]~37\ : std_logic;
SIGNAL \L0|atraso[7]~38_combout\ : std_logic;
SIGNAL \L0|Selector25~0_combout\ : std_logic;
SIGNAL \L0|atraso[7]~39\ : std_logic;
SIGNAL \L0|atraso[8]~41\ : std_logic;
SIGNAL \L0|atraso[9]~42_combout\ : std_logic;
SIGNAL \L0|Selector23~0_combout\ : std_logic;
SIGNAL \L0|atraso[9]~43\ : std_logic;
SIGNAL \L0|atraso[10]~44_combout\ : std_logic;
SIGNAL \L0|Selector22~0_combout\ : std_logic;
SIGNAL \L0|atraso[10]~45\ : std_logic;
SIGNAL \L0|atraso[11]~46_combout\ : std_logic;
SIGNAL \L0|Selector21~0_combout\ : std_logic;
SIGNAL \L0|atraso[11]~47\ : std_logic;
SIGNAL \L0|atraso[12]~48_combout\ : std_logic;
SIGNAL \L0|Selector20~0_combout\ : std_logic;
SIGNAL \L0|atraso[12]~49\ : std_logic;
SIGNAL \L0|atraso[13]~50_combout\ : std_logic;
SIGNAL \L0|Selector19~0_combout\ : std_logic;
SIGNAL \L0|atraso[13]~51\ : std_logic;
SIGNAL \L0|atraso[14]~52_combout\ : std_logic;
SIGNAL \L0|Selector18~0_combout\ : std_logic;
SIGNAL \L0|atraso[14]~53\ : std_logic;
SIGNAL \L0|atraso[15]~55\ : std_logic;
SIGNAL \L0|atraso[16]~56_combout\ : std_logic;
SIGNAL \L0|Selector16~0_combout\ : std_logic;
SIGNAL \L0|atraso[16]~57\ : std_logic;
SIGNAL \L0|atraso[17]~59\ : std_logic;
SIGNAL \L0|atraso[18]~61\ : std_logic;
SIGNAL \L0|atraso[19]~62_combout\ : std_logic;
SIGNAL \L0|Selector13~0_combout\ : std_logic;
SIGNAL \L0|atraso[19]~63\ : std_logic;
SIGNAL \L0|atraso[20]~65\ : std_logic;
SIGNAL \L0|atraso[21]~66_combout\ : std_logic;
SIGNAL \L0|Selector11~0_combout\ : std_logic;
SIGNAL \L0|atraso[21]~67\ : std_logic;
SIGNAL \L0|atraso[22]~68_combout\ : std_logic;
SIGNAL \L0|Selector10~0_combout\ : std_logic;
SIGNAL \L0|atraso[22]~69\ : std_logic;
SIGNAL \L0|atraso[23]~70_combout\ : std_logic;
SIGNAL \L0|Selector9~0_combout\ : std_logic;
SIGNAL \L0|cont[0]~0_combout\ : std_logic;
SIGNAL \L0|cont[0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \L0|Add0~1\ : std_logic;
SIGNAL \L0|Add0~3_combout\ : std_logic;
SIGNAL \L0|Add0~5_combout\ : std_logic;
SIGNAL \L0|cont[1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \L0|Add0~4\ : std_logic;
SIGNAL \L0|Add0~6_combout\ : std_logic;
SIGNAL \L0|Add0~8_combout\ : std_logic;
SIGNAL \L0|cont[2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \L0|Add0~7\ : std_logic;
SIGNAL \L0|Add0~9_combout\ : std_logic;
SIGNAL \L0|Add0~11_combout\ : std_logic;
SIGNAL \L0|cont[3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \L0|Equal0~1_combout\ : std_logic;
SIGNAL \L0|Add0~10\ : std_logic;
SIGNAL \L0|Add0~12_combout\ : std_logic;
SIGNAL \L0|Add0~14_combout\ : std_logic;
SIGNAL \L0|cont[4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \L0|Add0~13\ : std_logic;
SIGNAL \L0|Add0~16\ : std_logic;
SIGNAL \L0|Add0~18_combout\ : std_logic;
SIGNAL \L0|Add0~20_combout\ : std_logic;
SIGNAL \L0|cont[6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \L0|Add0~15_combout\ : std_logic;
SIGNAL \L0|Add0~17_combout\ : std_logic;
SIGNAL \L0|cont[5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \L0|Add0~19\ : std_logic;
SIGNAL \L0|Add0~21_combout\ : std_logic;
SIGNAL \L0|Add0~23_combout\ : std_logic;
SIGNAL \L0|cont[7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \L0|Equal0~0_combout\ : std_logic;
SIGNAL \L0|EA~12_combout\ : std_logic;
SIGNAL \L0|EA.INICIO~regout\ : std_logic;
SIGNAL \L0|Selector8~0_combout\ : std_logic;
SIGNAL \L0|EA.TESTE~regout\ : std_logic;
SIGNAL \L0|EA~11_combout\ : std_logic;
SIGNAL \L0|EA.INC~regout\ : std_logic;
SIGNAL \L0|Add0~0_combout\ : std_logic;
SIGNAL \L0|Add0~2_combout\ : std_logic;
SIGNAL \CLOCK_27~combout\ : std_logic;
SIGNAL \CLOCK_27~clkctrl_outclk\ : std_logic;
SIGNAL \L2|F[0]~0_combout\ : std_logic;
SIGNAL \L2|F[1]~1_combout\ : std_logic;
SIGNAL \L2|F[2]~2_combout\ : std_logic;
SIGNAL \L2|F[3]~3_combout\ : std_logic;
SIGNAL \L2|F[4]~4_combout\ : std_logic;
SIGNAL \L2|F[5]~5_combout\ : std_logic;
SIGNAL \L2|F[6]~6_combout\ : std_logic;
SIGNAL \L1|F[0]~0_combout\ : std_logic;
SIGNAL \L1|F[1]~1_combout\ : std_logic;
SIGNAL \L1|F[2]~2_combout\ : std_logic;
SIGNAL \L1|F[3]~3_combout\ : std_logic;
SIGNAL \L1|F[4]~4_combout\ : std_logic;
SIGNAL \L1|F[5]~5_combout\ : std_logic;
SIGNAL \L1|F[6]~6_combout\ : std_logic;
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L0|atraso\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \L0|ALT_INV_EA.D2~regout\ : std_logic;
SIGNAL \L1|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L2|ALT_INV_F[6]~6_combout\ : std_logic;

BEGIN

LEDG <= ww_LEDG;
TD_RESET <= ww_TD_RESET;
ww_CLOCK_27 <= CLOCK_27;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_27~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_27~combout\);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\L0|ALT_INV_EA.D2~regout\ <= NOT \L0|EA.D2~regout\;
\L1|ALT_INV_F[6]~6_combout\ <= NOT \L1|F[6]~6_combout\;
\L2|ALT_INV_F[6]~6_combout\ <= NOT \L2|F[6]~6_combout\;

-- Location: LCFF_X57_Y2_N17
\L0|atraso[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[20]~64_combout\,
	sdata => \L0|Selector12~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(20));

-- Location: LCFF_X57_Y2_N13
\L0|atraso[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[18]~60_combout\,
	sdata => \L0|Selector14~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(18));

-- Location: LCFF_X57_Y2_N11
\L0|atraso[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[17]~58_combout\,
	sdata => \L0|Selector15~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(17));

-- Location: LCFF_X57_Y2_N7
\L0|atraso[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[15]~54_combout\,
	sdata => \L0|Selector17~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(15));

-- Location: LCFF_X57_Y3_N25
\L0|atraso[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[8]~40_combout\,
	sdata => \L0|Selector24~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(8));

-- Location: LCFF_X57_Y3_N21
\L0|atraso[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[6]~36_combout\,
	sdata => \L0|Selector26~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(6));

-- Location: LCFF_X57_Y3_N17
\L0|atraso[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[4]~32_combout\,
	sdata => \L0|Selector28~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(4));

-- Location: LCFF_X57_Y3_N13
\L0|atraso[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[2]~28_combout\,
	sdata => \L0|Selector30~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(2));

-- Location: LCFF_X57_Y3_N11
\L0|atraso[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[1]~26_combout\,
	sdata => \L0|Selector31~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(1));

-- Location: LCCOMB_X57_Y3_N10
\L0|atraso[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[1]~26_combout\ = (\L0|atraso\(1) & (!\L0|atraso[0]~25\)) # (!\L0|atraso\(1) & ((\L0|atraso[0]~25\) # (GND)))
-- \L0|atraso[1]~27\ = CARRY((!\L0|atraso[0]~25\) # (!\L0|atraso\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(1),
	datad => VCC,
	cin => \L0|atraso[0]~25\,
	combout => \L0|atraso[1]~26_combout\,
	cout => \L0|atraso[1]~27\);

-- Location: LCCOMB_X57_Y3_N12
\L0|atraso[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[2]~28_combout\ = (\L0|atraso\(2) & (\L0|atraso[1]~27\ $ (GND))) # (!\L0|atraso\(2) & (!\L0|atraso[1]~27\ & VCC))
-- \L0|atraso[2]~29\ = CARRY((\L0|atraso\(2) & !\L0|atraso[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(2),
	datad => VCC,
	cin => \L0|atraso[1]~27\,
	combout => \L0|atraso[2]~28_combout\,
	cout => \L0|atraso[2]~29\);

-- Location: LCCOMB_X57_Y3_N16
\L0|atraso[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[4]~32_combout\ = (\L0|atraso\(4) & (\L0|atraso[3]~31\ $ (GND))) # (!\L0|atraso\(4) & (!\L0|atraso[3]~31\ & VCC))
-- \L0|atraso[4]~33\ = CARRY((\L0|atraso\(4) & !\L0|atraso[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(4),
	datad => VCC,
	cin => \L0|atraso[3]~31\,
	combout => \L0|atraso[4]~32_combout\,
	cout => \L0|atraso[4]~33\);

-- Location: LCCOMB_X57_Y3_N20
\L0|atraso[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[6]~36_combout\ = (\L0|atraso\(6) & (\L0|atraso[5]~35\ $ (GND))) # (!\L0|atraso\(6) & (!\L0|atraso[5]~35\ & VCC))
-- \L0|atraso[6]~37\ = CARRY((\L0|atraso\(6) & !\L0|atraso[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(6),
	datad => VCC,
	cin => \L0|atraso[5]~35\,
	combout => \L0|atraso[6]~36_combout\,
	cout => \L0|atraso[6]~37\);

-- Location: LCCOMB_X57_Y3_N24
\L0|atraso[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[8]~40_combout\ = (\L0|atraso\(8) & (\L0|atraso[7]~39\ $ (GND))) # (!\L0|atraso\(8) & (!\L0|atraso[7]~39\ & VCC))
-- \L0|atraso[8]~41\ = CARRY((\L0|atraso\(8) & !\L0|atraso[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(8),
	datad => VCC,
	cin => \L0|atraso[7]~39\,
	combout => \L0|atraso[8]~40_combout\,
	cout => \L0|atraso[8]~41\);

-- Location: LCCOMB_X57_Y2_N6
\L0|atraso[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[15]~54_combout\ = (\L0|atraso\(15) & (!\L0|atraso[14]~53\)) # (!\L0|atraso\(15) & ((\L0|atraso[14]~53\) # (GND)))
-- \L0|atraso[15]~55\ = CARRY((!\L0|atraso[14]~53\) # (!\L0|atraso\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(15),
	datad => VCC,
	cin => \L0|atraso[14]~53\,
	combout => \L0|atraso[15]~54_combout\,
	cout => \L0|atraso[15]~55\);

-- Location: LCCOMB_X57_Y2_N10
\L0|atraso[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[17]~58_combout\ = (\L0|atraso\(17) & (!\L0|atraso[16]~57\)) # (!\L0|atraso\(17) & ((\L0|atraso[16]~57\) # (GND)))
-- \L0|atraso[17]~59\ = CARRY((!\L0|atraso[16]~57\) # (!\L0|atraso\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(17),
	datad => VCC,
	cin => \L0|atraso[16]~57\,
	combout => \L0|atraso[17]~58_combout\,
	cout => \L0|atraso[17]~59\);

-- Location: LCCOMB_X57_Y2_N12
\L0|atraso[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[18]~60_combout\ = (\L0|atraso\(18) & (\L0|atraso[17]~59\ $ (GND))) # (!\L0|atraso\(18) & (!\L0|atraso[17]~59\ & VCC))
-- \L0|atraso[18]~61\ = CARRY((\L0|atraso\(18) & !\L0|atraso[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(18),
	datad => VCC,
	cin => \L0|atraso[17]~59\,
	combout => \L0|atraso[18]~60_combout\,
	cout => \L0|atraso[18]~61\);

-- Location: LCCOMB_X57_Y2_N16
\L0|atraso[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[20]~64_combout\ = (\L0|atraso\(20) & (\L0|atraso[19]~63\ $ (GND))) # (!\L0|atraso\(20) & (!\L0|atraso[19]~63\ & VCC))
-- \L0|atraso[20]~65\ = CARRY((\L0|atraso\(20) & !\L0|atraso[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(20),
	datad => VCC,
	cin => \L0|atraso[19]~63\,
	combout => \L0|atraso[20]~64_combout\,
	cout => \L0|atraso[20]~65\);

-- Location: LCCOMB_X58_Y2_N14
\L0|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector12~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.D1~regout\,
	datad => \L0|atraso\(20),
	combout => \L0|Selector12~0_combout\);

-- Location: LCCOMB_X57_Y2_N28
\L0|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector14~0_combout\ = (\L0|atraso\(18) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(18),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector14~0_combout\);

-- Location: LCCOMB_X57_Y2_N26
\L0|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector15~0_combout\ = (\L0|atraso\(17) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(17),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector15~0_combout\);

-- Location: LCCOMB_X58_Y2_N2
\L0|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector17~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.D1~regout\,
	datac => \L0|atraso\(15),
	combout => \L0|Selector17~0_combout\);

-- Location: LCCOMB_X56_Y3_N20
\L0|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector24~0_combout\ = (\L0|atraso\(8) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(8),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector24~0_combout\);

-- Location: LCCOMB_X58_Y3_N12
\L0|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector26~0_combout\ = (\L0|atraso\(6) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(6),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector26~0_combout\);

-- Location: LCCOMB_X58_Y3_N0
\L0|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector28~0_combout\ = (\L0|atraso\(4) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(4),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector28~0_combout\);

-- Location: LCCOMB_X57_Y3_N2
\L0|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector30~0_combout\ = (\L0|atraso\(2) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(2),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector30~0_combout\);

-- Location: LCCOMB_X58_Y3_N14
\L0|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector31~0_combout\ = (\L0|atraso\(1) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(1),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector31~0_combout\);

-- Location: LCCOMB_X57_Y3_N8
\L0|atraso[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[0]~24_combout\ = \L0|atraso\(0) $ (VCC)
-- \L0|atraso[0]~25\ = CARRY(\L0|atraso\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(0),
	datad => VCC,
	combout => \L0|atraso[0]~24_combout\,
	cout => \L0|atraso[0]~25\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCFF_X58_Y2_N5
\L0|EA.D1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	sdata => \L0|EA.INC~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.D1~regout\);

-- Location: LCCOMB_X58_Y3_N16
\L0|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector32~0_combout\ = (\L0|atraso\(0) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(0),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector32~0_combout\);

-- Location: LCCOMB_X58_Y2_N20
\L0|EA.D3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|EA.D3~feeder_combout\ = \L0|EA.D2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \L0|EA.D2~regout\,
	combout => \L0|EA.D3~feeder_combout\);

-- Location: LCFF_X58_Y2_N21
\L0|EA.D3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|EA.D3~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.D3~regout\);

-- Location: LCCOMB_X58_Y2_N28
\L0|EA~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|EA~14_combout\ = (\L0|EA.D3~regout\ & !\L0|atraso\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.D3~regout\,
	datad => \L0|atraso\(23),
	combout => \L0|EA~14_combout\);

-- Location: LCFF_X58_Y2_N29
\L0|EA.D4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|EA~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.D4~regout\);

-- Location: LCCOMB_X58_Y2_N6
\L0|EA~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|EA~13_combout\ = (\L0|EA.D1~regout\) # (\L0|EA.D4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.D1~regout\,
	datad => \L0|EA.D4~regout\,
	combout => \L0|EA~13_combout\);

-- Location: LCFF_X58_Y2_N7
\L0|EA.D2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|EA~13_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.D2~regout\);

-- Location: LCFF_X57_Y3_N9
\L0|atraso[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[0]~24_combout\,
	sdata => \L0|Selector32~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(0));

-- Location: LCCOMB_X57_Y3_N14
\L0|atraso[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[3]~30_combout\ = (\L0|atraso\(3) & (!\L0|atraso[2]~29\)) # (!\L0|atraso\(3) & ((\L0|atraso[2]~29\) # (GND)))
-- \L0|atraso[3]~31\ = CARRY((!\L0|atraso[2]~29\) # (!\L0|atraso\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(3),
	datad => VCC,
	cin => \L0|atraso[2]~29\,
	combout => \L0|atraso[3]~30_combout\,
	cout => \L0|atraso[3]~31\);

-- Location: LCCOMB_X57_Y3_N4
\L0|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector29~0_combout\ = (\L0|atraso\(3) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(3),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector29~0_combout\);

-- Location: LCFF_X57_Y3_N15
\L0|atraso[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[3]~30_combout\,
	sdata => \L0|Selector29~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(3));

-- Location: LCCOMB_X57_Y3_N18
\L0|atraso[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[5]~34_combout\ = (\L0|atraso\(5) & (!\L0|atraso[4]~33\)) # (!\L0|atraso\(5) & ((\L0|atraso[4]~33\) # (GND)))
-- \L0|atraso[5]~35\ = CARRY((!\L0|atraso[4]~33\) # (!\L0|atraso\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(5),
	datad => VCC,
	cin => \L0|atraso[4]~33\,
	combout => \L0|atraso[5]~34_combout\,
	cout => \L0|atraso[5]~35\);

-- Location: LCCOMB_X58_Y3_N26
\L0|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector27~0_combout\ = (\L0|atraso\(5) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(5),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector27~0_combout\);

-- Location: LCFF_X57_Y3_N19
\L0|atraso[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[5]~34_combout\,
	sdata => \L0|Selector27~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(5));

-- Location: LCCOMB_X57_Y3_N22
\L0|atraso[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[7]~38_combout\ = (\L0|atraso\(7) & (!\L0|atraso[6]~37\)) # (!\L0|atraso\(7) & ((\L0|atraso[6]~37\) # (GND)))
-- \L0|atraso[7]~39\ = CARRY((!\L0|atraso[6]~37\) # (!\L0|atraso\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(7),
	datad => VCC,
	cin => \L0|atraso[6]~37\,
	combout => \L0|atraso[7]~38_combout\,
	cout => \L0|atraso[7]~39\);

-- Location: LCCOMB_X57_Y3_N6
\L0|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector25~0_combout\ = (\L0|atraso\(7) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(7),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector25~0_combout\);

-- Location: LCFF_X57_Y3_N23
\L0|atraso[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[7]~38_combout\,
	sdata => \L0|Selector25~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(7));

-- Location: LCCOMB_X57_Y3_N26
\L0|atraso[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[9]~42_combout\ = (\L0|atraso\(9) & (!\L0|atraso[8]~41\)) # (!\L0|atraso\(9) & ((\L0|atraso[8]~41\) # (GND)))
-- \L0|atraso[9]~43\ = CARRY((!\L0|atraso[8]~41\) # (!\L0|atraso\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(9),
	datad => VCC,
	cin => \L0|atraso[8]~41\,
	combout => \L0|atraso[9]~42_combout\,
	cout => \L0|atraso[9]~43\);

-- Location: LCCOMB_X58_Y3_N10
\L0|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector23~0_combout\ = (\L0|atraso\(9) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(9),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector23~0_combout\);

-- Location: LCFF_X57_Y3_N27
\L0|atraso[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[9]~42_combout\,
	sdata => \L0|Selector23~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(9));

-- Location: LCCOMB_X57_Y3_N28
\L0|atraso[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[10]~44_combout\ = (\L0|atraso\(10) & (\L0|atraso[9]~43\ $ (GND))) # (!\L0|atraso\(10) & (!\L0|atraso[9]~43\ & VCC))
-- \L0|atraso[10]~45\ = CARRY((\L0|atraso\(10) & !\L0|atraso[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(10),
	datad => VCC,
	cin => \L0|atraso[9]~43\,
	combout => \L0|atraso[10]~44_combout\,
	cout => \L0|atraso[10]~45\);

-- Location: LCCOMB_X58_Y3_N8
\L0|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector22~0_combout\ = (\L0|atraso\(10) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(10),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector22~0_combout\);

-- Location: LCFF_X57_Y3_N29
\L0|atraso[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[10]~44_combout\,
	sdata => \L0|Selector22~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(10));

-- Location: LCCOMB_X57_Y3_N30
\L0|atraso[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[11]~46_combout\ = (\L0|atraso\(11) & (!\L0|atraso[10]~45\)) # (!\L0|atraso\(11) & ((\L0|atraso[10]~45\) # (GND)))
-- \L0|atraso[11]~47\ = CARRY((!\L0|atraso[10]~45\) # (!\L0|atraso\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(11),
	datad => VCC,
	cin => \L0|atraso[10]~45\,
	combout => \L0|atraso[11]~46_combout\,
	cout => \L0|atraso[11]~47\);

-- Location: LCCOMB_X57_Y3_N0
\L0|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector21~0_combout\ = (\L0|atraso\(11) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(11),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector21~0_combout\);

-- Location: LCFF_X57_Y3_N31
\L0|atraso[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[11]~46_combout\,
	sdata => \L0|Selector21~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(11));

-- Location: LCCOMB_X57_Y2_N0
\L0|atraso[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[12]~48_combout\ = (\L0|atraso\(12) & (\L0|atraso[11]~47\ $ (GND))) # (!\L0|atraso\(12) & (!\L0|atraso[11]~47\ & VCC))
-- \L0|atraso[12]~49\ = CARRY((\L0|atraso\(12) & !\L0|atraso[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(12),
	datad => VCC,
	cin => \L0|atraso[11]~47\,
	combout => \L0|atraso[12]~48_combout\,
	cout => \L0|atraso[12]~49\);

-- Location: LCCOMB_X58_Y2_N26
\L0|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector20~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.D1~regout\,
	datac => \L0|atraso\(12),
	combout => \L0|Selector20~0_combout\);

-- Location: LCFF_X57_Y2_N1
\L0|atraso[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[12]~48_combout\,
	sdata => \L0|Selector20~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(12));

-- Location: LCCOMB_X57_Y2_N2
\L0|atraso[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[13]~50_combout\ = (\L0|atraso\(13) & (!\L0|atraso[12]~49\)) # (!\L0|atraso\(13) & ((\L0|atraso[12]~49\) # (GND)))
-- \L0|atraso[13]~51\ = CARRY((!\L0|atraso[12]~49\) # (!\L0|atraso\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(13),
	datad => VCC,
	cin => \L0|atraso[12]~49\,
	combout => \L0|atraso[13]~50_combout\,
	cout => \L0|atraso[13]~51\);

-- Location: LCCOMB_X58_Y2_N8
\L0|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector19~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.D1~regout\,
	datad => \L0|atraso\(13),
	combout => \L0|Selector19~0_combout\);

-- Location: LCFF_X57_Y2_N3
\L0|atraso[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[13]~50_combout\,
	sdata => \L0|Selector19~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(13));

-- Location: LCCOMB_X57_Y2_N4
\L0|atraso[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[14]~52_combout\ = (\L0|atraso\(14) & (\L0|atraso[13]~51\ $ (GND))) # (!\L0|atraso\(14) & (!\L0|atraso[13]~51\ & VCC))
-- \L0|atraso[14]~53\ = CARRY((\L0|atraso\(14) & !\L0|atraso[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(14),
	datad => VCC,
	cin => \L0|atraso[13]~51\,
	combout => \L0|atraso[14]~52_combout\,
	cout => \L0|atraso[14]~53\);

-- Location: LCCOMB_X57_Y2_N30
\L0|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector18~0_combout\ = (\L0|atraso\(14) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(14),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector18~0_combout\);

-- Location: LCFF_X57_Y2_N5
\L0|atraso[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[14]~52_combout\,
	sdata => \L0|Selector18~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(14));

-- Location: LCCOMB_X57_Y2_N8
\L0|atraso[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[16]~56_combout\ = (\L0|atraso\(16) & (\L0|atraso[15]~55\ $ (GND))) # (!\L0|atraso\(16) & (!\L0|atraso[15]~55\ & VCC))
-- \L0|atraso[16]~57\ = CARRY((\L0|atraso\(16) & !\L0|atraso[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(16),
	datad => VCC,
	cin => \L0|atraso[15]~55\,
	combout => \L0|atraso[16]~56_combout\,
	cout => \L0|atraso[16]~57\);

-- Location: LCCOMB_X57_Y2_N24
\L0|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector16~0_combout\ = (\L0|atraso\(16) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(16),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector16~0_combout\);

-- Location: LCFF_X57_Y2_N9
\L0|atraso[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[16]~56_combout\,
	sdata => \L0|Selector16~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(16));

-- Location: LCCOMB_X57_Y2_N14
\L0|atraso[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[19]~62_combout\ = (\L0|atraso\(19) & (!\L0|atraso[18]~61\)) # (!\L0|atraso\(19) & ((\L0|atraso[18]~61\) # (GND)))
-- \L0|atraso[19]~63\ = CARRY((!\L0|atraso[18]~61\) # (!\L0|atraso\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(19),
	datad => VCC,
	cin => \L0|atraso[18]~61\,
	combout => \L0|atraso[19]~62_combout\,
	cout => \L0|atraso[19]~63\);

-- Location: LCCOMB_X58_Y2_N12
\L0|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector13~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.D1~regout\,
	datad => \L0|atraso\(19),
	combout => \L0|Selector13~0_combout\);

-- Location: LCFF_X57_Y2_N15
\L0|atraso[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[19]~62_combout\,
	sdata => \L0|Selector13~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(19));

-- Location: LCCOMB_X57_Y2_N18
\L0|atraso[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[21]~66_combout\ = (\L0|atraso\(21) & (!\L0|atraso[20]~65\)) # (!\L0|atraso\(21) & ((\L0|atraso[20]~65\) # (GND)))
-- \L0|atraso[21]~67\ = CARRY((!\L0|atraso[20]~65\) # (!\L0|atraso\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(21),
	datad => VCC,
	cin => \L0|atraso[20]~65\,
	combout => \L0|atraso[21]~66_combout\,
	cout => \L0|atraso[21]~67\);

-- Location: LCCOMB_X58_Y2_N0
\L0|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector11~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.D1~regout\,
	datad => \L0|atraso\(21),
	combout => \L0|Selector11~0_combout\);

-- Location: LCFF_X57_Y2_N19
\L0|atraso[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[21]~66_combout\,
	sdata => \L0|Selector11~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(21));

-- Location: LCCOMB_X57_Y2_N20
\L0|atraso[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[22]~68_combout\ = (\L0|atraso\(22) & (\L0|atraso[21]~67\ $ (GND))) # (!\L0|atraso\(22) & (!\L0|atraso[21]~67\ & VCC))
-- \L0|atraso[22]~69\ = CARRY((\L0|atraso\(22) & !\L0|atraso[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(22),
	datad => VCC,
	cin => \L0|atraso[21]~67\,
	combout => \L0|atraso[22]~68_combout\,
	cout => \L0|atraso[22]~69\);

-- Location: LCCOMB_X58_Y2_N30
\L0|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector10~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.D1~regout\,
	datac => \L0|atraso\(22),
	combout => \L0|Selector10~0_combout\);

-- Location: LCFF_X57_Y2_N21
\L0|atraso[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[22]~68_combout\,
	sdata => \L0|Selector10~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(22));

-- Location: LCCOMB_X57_Y2_N22
\L0|atraso[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[23]~70_combout\ = \L0|atraso[22]~69\ $ (\L0|atraso\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L0|atraso\(23),
	cin => \L0|atraso[22]~69\,
	combout => \L0|atraso[23]~70_combout\);

-- Location: LCCOMB_X58_Y2_N10
\L0|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector9~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.D1~regout\,
	datad => \L0|atraso\(23),
	combout => \L0|Selector9~0_combout\);

-- Location: LCFF_X57_Y2_N23
\L0|atraso[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[23]~70_combout\,
	sdata => \L0|Selector9~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(23));

-- Location: LCCOMB_X58_Y2_N24
\L0|cont[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont[0]~0_combout\ = (\KEY~combout\(0) & ((\L0|EA.INC~regout\) # (!\L0|EA.INICIO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \L0|EA.INC~regout\,
	datad => \L0|EA.INICIO~regout\,
	combout => \L0|cont[0]~0_combout\);

-- Location: LCFF_X58_Y1_N1
\L0|cont[0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	sdata => \L0|Add0~2_combout\,
	sload => VCC,
	ena => \L0|cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont[0]~_Duplicate_1_regout\);

-- Location: LCCOMB_X58_Y1_N14
\L0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~0_combout\ = \L0|cont[0]~_Duplicate_1_regout\ $ (VCC)
-- \L0|Add0~1\ = CARRY(\L0|cont[0]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|cont[0]~_Duplicate_1_regout\,
	datad => VCC,
	combout => \L0|Add0~0_combout\,
	cout => \L0|Add0~1\);

-- Location: LCCOMB_X58_Y1_N16
\L0|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~3_combout\ = (\L0|cont[1]~_Duplicate_1_regout\ & (!\L0|Add0~1\)) # (!\L0|cont[1]~_Duplicate_1_regout\ & ((\L0|Add0~1\) # (GND)))
-- \L0|Add0~4\ = CARRY((!\L0|Add0~1\) # (!\L0|cont[1]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|cont[1]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \L0|Add0~1\,
	combout => \L0|Add0~3_combout\,
	cout => \L0|Add0~4\);

-- Location: LCCOMB_X58_Y1_N2
\L0|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~5_combout\ = (\L0|EA.INC~regout\ & (((\L0|Add0~3_combout\)))) # (!\L0|EA.INC~regout\ & (\L0|cont[1]~_Duplicate_1_regout\ & ((\L0|EA.INICIO~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INC~regout\,
	datab => \L0|cont[1]~_Duplicate_1_regout\,
	datac => \L0|Add0~3_combout\,
	datad => \L0|EA.INICIO~regout\,
	combout => \L0|Add0~5_combout\);

-- Location: LCFF_X58_Y1_N31
\L0|cont[1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	sdata => \L0|Add0~5_combout\,
	sload => VCC,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont[1]~_Duplicate_1_regout\);

-- Location: LCCOMB_X58_Y1_N18
\L0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~6_combout\ = (\L0|cont[2]~_Duplicate_1_regout\ & (\L0|Add0~4\ $ (GND))) # (!\L0|cont[2]~_Duplicate_1_regout\ & (!\L0|Add0~4\ & VCC))
-- \L0|Add0~7\ = CARRY((\L0|cont[2]~_Duplicate_1_regout\ & !\L0|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|cont[2]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \L0|Add0~4\,
	combout => \L0|Add0~6_combout\,
	cout => \L0|Add0~7\);

-- Location: LCCOMB_X58_Y1_N4
\L0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~8_combout\ = (\L0|EA.INC~regout\ & (((\L0|Add0~6_combout\)))) # (!\L0|EA.INC~regout\ & (\L0|EA.INICIO~regout\ & (\L0|cont[2]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INC~regout\,
	datab => \L0|EA.INICIO~regout\,
	datac => \L0|cont[2]~_Duplicate_1_regout\,
	datad => \L0|Add0~6_combout\,
	combout => \L0|Add0~8_combout\);

-- Location: LCFF_X58_Y1_N5
\L0|cont[2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Add0~8_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont[2]~_Duplicate_1_regout\);

-- Location: LCCOMB_X58_Y1_N20
\L0|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~9_combout\ = (\L0|cont[3]~_Duplicate_1_regout\ & (!\L0|Add0~7\)) # (!\L0|cont[3]~_Duplicate_1_regout\ & ((\L0|Add0~7\) # (GND)))
-- \L0|Add0~10\ = CARRY((!\L0|Add0~7\) # (!\L0|cont[3]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[3]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \L0|Add0~7\,
	combout => \L0|Add0~9_combout\,
	cout => \L0|Add0~10\);

-- Location: LCCOMB_X58_Y1_N10
\L0|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~11_combout\ = (\L0|EA.INC~regout\ & (((\L0|Add0~9_combout\)))) # (!\L0|EA.INC~regout\ & (\L0|EA.INICIO~regout\ & (\L0|cont[3]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INC~regout\,
	datab => \L0|EA.INICIO~regout\,
	datac => \L0|cont[3]~_Duplicate_1_regout\,
	datad => \L0|Add0~9_combout\,
	combout => \L0|Add0~11_combout\);

-- Location: LCFF_X58_Y1_N11
\L0|cont[3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Add0~11_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont[3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X58_Y1_N30
\L0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Equal0~1_combout\ = (\L0|cont[0]~_Duplicate_1_regout\) # ((\L0|cont[2]~_Duplicate_1_regout\) # ((!\L0|cont[3]~_Duplicate_1_regout\) # (!\L0|cont[1]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[0]~_Duplicate_1_regout\,
	datab => \L0|cont[2]~_Duplicate_1_regout\,
	datac => \L0|cont[1]~_Duplicate_1_regout\,
	datad => \L0|cont[3]~_Duplicate_1_regout\,
	combout => \L0|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y1_N22
\L0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~12_combout\ = (\L0|cont[4]~_Duplicate_1_regout\ & (\L0|Add0~10\ $ (GND))) # (!\L0|cont[4]~_Duplicate_1_regout\ & (!\L0|Add0~10\ & VCC))
-- \L0|Add0~13\ = CARRY((\L0|cont[4]~_Duplicate_1_regout\ & !\L0|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|cont[4]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \L0|Add0~10\,
	combout => \L0|Add0~12_combout\,
	cout => \L0|Add0~13\);

-- Location: LCCOMB_X58_Y1_N8
\L0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~14_combout\ = (\L0|EA.INC~regout\ & (((\L0|Add0~12_combout\)))) # (!\L0|EA.INC~regout\ & (\L0|EA.INICIO~regout\ & (\L0|cont[4]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INC~regout\,
	datab => \L0|EA.INICIO~regout\,
	datac => \L0|cont[4]~_Duplicate_1_regout\,
	datad => \L0|Add0~12_combout\,
	combout => \L0|Add0~14_combout\);

-- Location: LCFF_X58_Y1_N9
\L0|cont[4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Add0~14_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont[4]~_Duplicate_1_regout\);

-- Location: LCCOMB_X58_Y1_N24
\L0|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~15_combout\ = (\L0|cont[5]~_Duplicate_1_regout\ & (!\L0|Add0~13\)) # (!\L0|cont[5]~_Duplicate_1_regout\ & ((\L0|Add0~13\) # (GND)))
-- \L0|Add0~16\ = CARRY((!\L0|Add0~13\) # (!\L0|cont[5]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[5]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \L0|Add0~13\,
	combout => \L0|Add0~15_combout\,
	cout => \L0|Add0~16\);

-- Location: LCCOMB_X58_Y1_N26
\L0|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~18_combout\ = (\L0|cont[6]~_Duplicate_1_regout\ & (\L0|Add0~16\ $ (GND))) # (!\L0|cont[6]~_Duplicate_1_regout\ & (!\L0|Add0~16\ & VCC))
-- \L0|Add0~19\ = CARRY((\L0|cont[6]~_Duplicate_1_regout\ & !\L0|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|cont[6]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \L0|Add0~16\,
	combout => \L0|Add0~18_combout\,
	cout => \L0|Add0~19\);

-- Location: LCCOMB_X58_Y1_N0
\L0|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~20_combout\ = (\L0|Add0~18_combout\) # (!\L0|EA.INC~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INC~regout\,
	datad => \L0|Add0~18_combout\,
	combout => \L0|Add0~20_combout\);

-- Location: LCFF_X58_Y1_N15
\L0|cont[6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	sdata => \L0|Add0~20_combout\,
	sload => VCC,
	ena => \L0|cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont[6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X58_Y1_N6
\L0|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~17_combout\ = (\L0|EA.INC~regout\ & (((\L0|Add0~15_combout\)))) # (!\L0|EA.INC~regout\ & (\L0|EA.INICIO~regout\ & (\L0|cont[5]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INC~regout\,
	datab => \L0|EA.INICIO~regout\,
	datac => \L0|cont[5]~_Duplicate_1_regout\,
	datad => \L0|Add0~15_combout\,
	combout => \L0|Add0~17_combout\);

-- Location: LCFF_X58_Y1_N7
\L0|cont[5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Add0~17_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont[5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X58_Y1_N28
\L0|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~21_combout\ = \L0|Add0~19\ $ (\L0|cont[7]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L0|cont[7]~_Duplicate_1_regout\,
	cin => \L0|Add0~19\,
	combout => \L0|Add0~21_combout\);

-- Location: LCCOMB_X58_Y1_N12
\L0|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~23_combout\ = (\L0|EA.INC~regout\ & (((\L0|Add0~21_combout\)))) # (!\L0|EA.INC~regout\ & (\L0|EA.INICIO~regout\ & (\L0|cont[7]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INC~regout\,
	datab => \L0|EA.INICIO~regout\,
	datac => \L0|cont[7]~_Duplicate_1_regout\,
	datad => \L0|Add0~21_combout\,
	combout => \L0|Add0~23_combout\);

-- Location: LCFF_X58_Y1_N13
\L0|cont[7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Add0~23_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont[7]~_Duplicate_1_regout\);

-- Location: LCCOMB_X62_Y1_N6
\L0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Equal0~0_combout\ = (((\L0|cont[5]~_Duplicate_1_regout\) # (\L0|cont[7]~_Duplicate_1_regout\)) # (!\L0|cont[6]~_Duplicate_1_regout\)) # (!\L0|cont[4]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[4]~_Duplicate_1_regout\,
	datab => \L0|cont[6]~_Duplicate_1_regout\,
	datac => \L0|cont[5]~_Duplicate_1_regout\,
	datad => \L0|cont[7]~_Duplicate_1_regout\,
	combout => \L0|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y2_N18
\L0|EA~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|EA~12_combout\ = ((\L0|Equal0~1_combout\) # (\L0|Equal0~0_combout\)) # (!\L0|EA.TESTE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.TESTE~regout\,
	datac => \L0|Equal0~1_combout\,
	datad => \L0|Equal0~0_combout\,
	combout => \L0|EA~12_combout\);

-- Location: LCFF_X58_Y2_N19
\L0|EA.INICIO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|EA~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.INICIO~regout\);

-- Location: LCCOMB_X58_Y2_N22
\L0|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector8~0_combout\ = ((\L0|atraso\(23) & \L0|EA.D3~regout\)) # (!\L0|EA.INICIO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(23),
	datac => \L0|EA.D3~regout\,
	datad => \L0|EA.INICIO~regout\,
	combout => \L0|Selector8~0_combout\);

-- Location: LCFF_X58_Y2_N23
\L0|EA.TESTE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Selector8~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.TESTE~regout\);

-- Location: LCCOMB_X58_Y2_N16
\L0|EA~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|EA~11_combout\ = (\L0|EA.TESTE~regout\ & ((\L0|Equal0~1_combout\) # (\L0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.TESTE~regout\,
	datac => \L0|Equal0~1_combout\,
	datad => \L0|Equal0~0_combout\,
	combout => \L0|EA~11_combout\);

-- Location: LCFF_X58_Y2_N17
\L0|EA.INC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|EA~11_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.INC~regout\);

-- Location: LCCOMB_X59_Y1_N16
\L0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~2_combout\ = (\L0|Add0~0_combout\) # (!\L0|EA.INC~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.INC~regout\,
	datad => \L0|Add0~0_combout\,
	combout => \L0|Add0~2_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_27~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_27,
	combout => \CLOCK_27~combout\);

-- Location: CLKCTRL_G11
\CLOCK_27~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_27~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_27~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y1_N24
\L2|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[0]~0_combout\ = (\L0|cont[2]~_Duplicate_1_regout\ & (!\L0|cont[1]~_Duplicate_1_regout\ & (\L0|cont[0]~_Duplicate_1_regout\ $ (!\L0|cont[3]~_Duplicate_1_regout\)))) # (!\L0|cont[2]~_Duplicate_1_regout\ & (\L0|cont[0]~_Duplicate_1_regout\ & 
-- (\L0|cont[1]~_Duplicate_1_regout\ $ (!\L0|cont[3]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[2]~_Duplicate_1_regout\,
	datab => \L0|cont[1]~_Duplicate_1_regout\,
	datac => \L0|cont[0]~_Duplicate_1_regout\,
	datad => \L0|cont[3]~_Duplicate_1_regout\,
	combout => \L2|F[0]~0_combout\);

-- Location: LCCOMB_X28_Y1_N18
\L2|F[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[1]~1_combout\ = (\L0|cont[1]~_Duplicate_1_regout\ & ((\L0|cont[0]~_Duplicate_1_regout\ & ((\L0|cont[3]~_Duplicate_1_regout\))) # (!\L0|cont[0]~_Duplicate_1_regout\ & (\L0|cont[2]~_Duplicate_1_regout\)))) # (!\L0|cont[1]~_Duplicate_1_regout\ & 
-- (\L0|cont[2]~_Duplicate_1_regout\ & (\L0|cont[0]~_Duplicate_1_regout\ $ (\L0|cont[3]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[2]~_Duplicate_1_regout\,
	datab => \L0|cont[1]~_Duplicate_1_regout\,
	datac => \L0|cont[0]~_Duplicate_1_regout\,
	datad => \L0|cont[3]~_Duplicate_1_regout\,
	combout => \L2|F[1]~1_combout\);

-- Location: LCCOMB_X28_Y1_N12
\L2|F[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[2]~2_combout\ = (\L0|cont[2]~_Duplicate_1_regout\ & (\L0|cont[3]~_Duplicate_1_regout\ & ((\L0|cont[1]~_Duplicate_1_regout\) # (!\L0|cont[0]~_Duplicate_1_regout\)))) # (!\L0|cont[2]~_Duplicate_1_regout\ & (\L0|cont[1]~_Duplicate_1_regout\ & 
-- (!\L0|cont[0]~_Duplicate_1_regout\ & !\L0|cont[3]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[2]~_Duplicate_1_regout\,
	datab => \L0|cont[1]~_Duplicate_1_regout\,
	datac => \L0|cont[0]~_Duplicate_1_regout\,
	datad => \L0|cont[3]~_Duplicate_1_regout\,
	combout => \L2|F[2]~2_combout\);

-- Location: LCCOMB_X28_Y1_N26
\L2|F[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[3]~3_combout\ = (\L0|cont[1]~_Duplicate_1_regout\ & ((\L0|cont[2]~_Duplicate_1_regout\ & (\L0|cont[0]~_Duplicate_1_regout\)) # (!\L0|cont[2]~_Duplicate_1_regout\ & (!\L0|cont[0]~_Duplicate_1_regout\ & \L0|cont[3]~_Duplicate_1_regout\)))) # 
-- (!\L0|cont[1]~_Duplicate_1_regout\ & (!\L0|cont[3]~_Duplicate_1_regout\ & (\L0|cont[2]~_Duplicate_1_regout\ $ (\L0|cont[0]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[2]~_Duplicate_1_regout\,
	datab => \L0|cont[1]~_Duplicate_1_regout\,
	datac => \L0|cont[0]~_Duplicate_1_regout\,
	datad => \L0|cont[3]~_Duplicate_1_regout\,
	combout => \L2|F[3]~3_combout\);

-- Location: LCCOMB_X28_Y1_N20
\L2|F[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[4]~4_combout\ = (\L0|cont[1]~_Duplicate_1_regout\ & (((\L0|cont[0]~_Duplicate_1_regout\ & !\L0|cont[3]~_Duplicate_1_regout\)))) # (!\L0|cont[1]~_Duplicate_1_regout\ & ((\L0|cont[2]~_Duplicate_1_regout\ & ((!\L0|cont[3]~_Duplicate_1_regout\))) # 
-- (!\L0|cont[2]~_Duplicate_1_regout\ & (\L0|cont[0]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[2]~_Duplicate_1_regout\,
	datab => \L0|cont[1]~_Duplicate_1_regout\,
	datac => \L0|cont[0]~_Duplicate_1_regout\,
	datad => \L0|cont[3]~_Duplicate_1_regout\,
	combout => \L2|F[4]~4_combout\);

-- Location: LCCOMB_X28_Y1_N2
\L2|F[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[5]~5_combout\ = (\L0|cont[2]~_Duplicate_1_regout\ & (\L0|cont[0]~_Duplicate_1_regout\ & (\L0|cont[1]~_Duplicate_1_regout\ $ (\L0|cont[3]~_Duplicate_1_regout\)))) # (!\L0|cont[2]~_Duplicate_1_regout\ & (!\L0|cont[3]~_Duplicate_1_regout\ & 
-- ((\L0|cont[1]~_Duplicate_1_regout\) # (\L0|cont[0]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[2]~_Duplicate_1_regout\,
	datab => \L0|cont[1]~_Duplicate_1_regout\,
	datac => \L0|cont[0]~_Duplicate_1_regout\,
	datad => \L0|cont[3]~_Duplicate_1_regout\,
	combout => \L2|F[5]~5_combout\);

-- Location: LCCOMB_X28_Y1_N16
\L2|F[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[6]~6_combout\ = (\L0|cont[0]~_Duplicate_1_regout\ & ((\L0|cont[3]~_Duplicate_1_regout\) # (\L0|cont[2]~_Duplicate_1_regout\ $ (\L0|cont[1]~_Duplicate_1_regout\)))) # (!\L0|cont[0]~_Duplicate_1_regout\ & ((\L0|cont[1]~_Duplicate_1_regout\) # 
-- (\L0|cont[2]~_Duplicate_1_regout\ $ (\L0|cont[3]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[2]~_Duplicate_1_regout\,
	datab => \L0|cont[1]~_Duplicate_1_regout\,
	datac => \L0|cont[0]~_Duplicate_1_regout\,
	datad => \L0|cont[3]~_Duplicate_1_regout\,
	combout => \L2|F[6]~6_combout\);

-- Location: LCCOMB_X62_Y1_N20
\L1|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[0]~0_combout\ = (\L0|cont[6]~_Duplicate_1_regout\ & (!\L0|cont[5]~_Duplicate_1_regout\ & (\L0|cont[4]~_Duplicate_1_regout\ $ (!\L0|cont[7]~_Duplicate_1_regout\)))) # (!\L0|cont[6]~_Duplicate_1_regout\ & (\L0|cont[4]~_Duplicate_1_regout\ & 
-- (\L0|cont[5]~_Duplicate_1_regout\ $ (!\L0|cont[7]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[4]~_Duplicate_1_regout\,
	datab => \L0|cont[6]~_Duplicate_1_regout\,
	datac => \L0|cont[5]~_Duplicate_1_regout\,
	datad => \L0|cont[7]~_Duplicate_1_regout\,
	combout => \L1|F[0]~0_combout\);

-- Location: LCCOMB_X62_Y1_N22
\L1|F[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[1]~1_combout\ = (\L0|cont[5]~_Duplicate_1_regout\ & ((\L0|cont[4]~_Duplicate_1_regout\ & ((\L0|cont[7]~_Duplicate_1_regout\))) # (!\L0|cont[4]~_Duplicate_1_regout\ & (\L0|cont[6]~_Duplicate_1_regout\)))) # (!\L0|cont[5]~_Duplicate_1_regout\ & 
-- (\L0|cont[6]~_Duplicate_1_regout\ & (\L0|cont[4]~_Duplicate_1_regout\ $ (\L0|cont[7]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[4]~_Duplicate_1_regout\,
	datab => \L0|cont[6]~_Duplicate_1_regout\,
	datac => \L0|cont[5]~_Duplicate_1_regout\,
	datad => \L0|cont[7]~_Duplicate_1_regout\,
	combout => \L1|F[1]~1_combout\);

-- Location: LCCOMB_X62_Y1_N28
\L1|F[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[2]~2_combout\ = (\L0|cont[6]~_Duplicate_1_regout\ & (\L0|cont[7]~_Duplicate_1_regout\ & ((\L0|cont[5]~_Duplicate_1_regout\) # (!\L0|cont[4]~_Duplicate_1_regout\)))) # (!\L0|cont[6]~_Duplicate_1_regout\ & (!\L0|cont[4]~_Duplicate_1_regout\ & 
-- (\L0|cont[5]~_Duplicate_1_regout\ & !\L0|cont[7]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[4]~_Duplicate_1_regout\,
	datab => \L0|cont[6]~_Duplicate_1_regout\,
	datac => \L0|cont[5]~_Duplicate_1_regout\,
	datad => \L0|cont[7]~_Duplicate_1_regout\,
	combout => \L1|F[2]~2_combout\);

-- Location: LCCOMB_X62_Y1_N2
\L1|F[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[3]~3_combout\ = (\L0|cont[5]~_Duplicate_1_regout\ & ((\L0|cont[4]~_Duplicate_1_regout\ & (\L0|cont[6]~_Duplicate_1_regout\)) # (!\L0|cont[4]~_Duplicate_1_regout\ & (!\L0|cont[6]~_Duplicate_1_regout\ & \L0|cont[7]~_Duplicate_1_regout\)))) # 
-- (!\L0|cont[5]~_Duplicate_1_regout\ & (!\L0|cont[7]~_Duplicate_1_regout\ & (\L0|cont[4]~_Duplicate_1_regout\ $ (\L0|cont[6]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[4]~_Duplicate_1_regout\,
	datab => \L0|cont[6]~_Duplicate_1_regout\,
	datac => \L0|cont[5]~_Duplicate_1_regout\,
	datad => \L0|cont[7]~_Duplicate_1_regout\,
	combout => \L1|F[3]~3_combout\);

-- Location: LCCOMB_X62_Y1_N12
\L1|F[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[4]~4_combout\ = (\L0|cont[5]~_Duplicate_1_regout\ & (\L0|cont[4]~_Duplicate_1_regout\ & ((!\L0|cont[7]~_Duplicate_1_regout\)))) # (!\L0|cont[5]~_Duplicate_1_regout\ & ((\L0|cont[6]~_Duplicate_1_regout\ & ((!\L0|cont[7]~_Duplicate_1_regout\))) # 
-- (!\L0|cont[6]~_Duplicate_1_regout\ & (\L0|cont[4]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[4]~_Duplicate_1_regout\,
	datab => \L0|cont[6]~_Duplicate_1_regout\,
	datac => \L0|cont[5]~_Duplicate_1_regout\,
	datad => \L0|cont[7]~_Duplicate_1_regout\,
	combout => \L1|F[4]~4_combout\);

-- Location: LCCOMB_X62_Y1_N10
\L1|F[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[5]~5_combout\ = (\L0|cont[4]~_Duplicate_1_regout\ & (\L0|cont[7]~_Duplicate_1_regout\ $ (((\L0|cont[5]~_Duplicate_1_regout\) # (!\L0|cont[6]~_Duplicate_1_regout\))))) # (!\L0|cont[4]~_Duplicate_1_regout\ & (!\L0|cont[6]~_Duplicate_1_regout\ & 
-- (\L0|cont[5]~_Duplicate_1_regout\ & !\L0|cont[7]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[4]~_Duplicate_1_regout\,
	datab => \L0|cont[6]~_Duplicate_1_regout\,
	datac => \L0|cont[5]~_Duplicate_1_regout\,
	datad => \L0|cont[7]~_Duplicate_1_regout\,
	combout => \L1|F[5]~5_combout\);

-- Location: LCCOMB_X62_Y1_N4
\L1|F[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[6]~6_combout\ = (\L0|cont[4]~_Duplicate_1_regout\ & ((\L0|cont[7]~_Duplicate_1_regout\) # (\L0|cont[6]~_Duplicate_1_regout\ $ (\L0|cont[5]~_Duplicate_1_regout\)))) # (!\L0|cont[4]~_Duplicate_1_regout\ & ((\L0|cont[5]~_Duplicate_1_regout\) # 
-- (\L0|cont[6]~_Duplicate_1_regout\ $ (\L0|cont[7]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont[4]~_Duplicate_1_regout\,
	datab => \L0|cont[6]~_Duplicate_1_regout\,
	datac => \L0|cont[5]~_Duplicate_1_regout\,
	datad => \L0|cont[7]~_Duplicate_1_regout\,
	combout => \L1|F[6]~6_combout\);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L0|Add0~2_combout\,
	outclk => \CLOCK_27~clkctrl_outclk\,
	outclkena => \L0|cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L0|Add0~5_combout\,
	outclk => \CLOCK_27~clkctrl_outclk\,
	outclkena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L0|Add0~8_combout\,
	outclk => \CLOCK_27~clkctrl_outclk\,
	outclkena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L0|Add0~11_combout\,
	outclk => \CLOCK_27~clkctrl_outclk\,
	outclkena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L0|Add0~14_combout\,
	outclk => \CLOCK_27~clkctrl_outclk\,
	outclkena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L0|Add0~17_combout\,
	outclk => \CLOCK_27~clkctrl_outclk\,
	outclkena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L0|Add0~20_combout\,
	outclk => \CLOCK_27~clkctrl_outclk\,
	outclkena => \L0|cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L0|Add0~23_combout\,
	outclk => \CLOCK_27~clkctrl_outclk\,
	outclkena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\TD_RESET~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TD_RESET);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L2|F[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L2|F[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L2|F[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L2|F[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L2|F[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L2|F[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L2|ALT_INV_F[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L1|F[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L1|F[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L1|F[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L1|F[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L1|F[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L1|F[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L1|ALT_INV_F[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));
END structure;


