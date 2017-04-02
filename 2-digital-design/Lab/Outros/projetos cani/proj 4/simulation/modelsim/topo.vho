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

-- DATE "10/10/2014 09:18:08"

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
	TD_RESET : OUT std_logic;
	CLOCK_27 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END topo;

-- Design Ports Information
-- TD_RESET	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_TD_RESET : std_logic;
SIGNAL ww_CLOCK_27 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L0|atraso[1]~26_combout\ : std_logic;
SIGNAL \L0|atraso[2]~28_combout\ : std_logic;
SIGNAL \L0|atraso[4]~32_combout\ : std_logic;
SIGNAL \L0|atraso[6]~36_combout\ : std_logic;
SIGNAL \L0|atraso[8]~40_combout\ : std_logic;
SIGNAL \L0|atraso[15]~54_combout\ : std_logic;
SIGNAL \L0|atraso[17]~58_combout\ : std_logic;
SIGNAL \L0|atraso[18]~60_combout\ : std_logic;
SIGNAL \L0|atraso[22]~68_combout\ : std_logic;
SIGNAL \L0|cont_s~9_combout\ : std_logic;
SIGNAL \L0|Add1~2_combout\ : std_logic;
SIGNAL \L0|cont_m~7_combout\ : std_logic;
SIGNAL \L0|Add2~0_combout\ : std_logic;
SIGNAL \L0|Selector22~0_combout\ : std_logic;
SIGNAL \L0|Selector26~0_combout\ : std_logic;
SIGNAL \L0|Selector27~0_combout\ : std_logic;
SIGNAL \L0|Selector29~0_combout\ : std_logic;
SIGNAL \L0|Selector36~0_combout\ : std_logic;
SIGNAL \L0|Selector38~0_combout\ : std_logic;
SIGNAL \L0|Selector40~0_combout\ : std_logic;
SIGNAL \L0|Selector42~0_combout\ : std_logic;
SIGNAL \L0|Selector43~0_combout\ : std_logic;
SIGNAL \CLOCK_27~combout\ : std_logic;
SIGNAL \CLOCK_27~clkctrl_outclk\ : std_logic;
SIGNAL \L0|Selector20~0_combout\ : std_logic;
SIGNAL \L0|EA.D4~regout\ : std_logic;
SIGNAL \L0|Add0~1_combout\ : std_logic;
SIGNAL \L0|cont_s[2]~7_combout\ : std_logic;
SIGNAL \L4|Equal14~0_combout\ : std_logic;
SIGNAL \L0|Selector11~0_combout\ : std_logic;
SIGNAL \L0|Add1~1_combout\ : std_logic;
SIGNAL \L0|cont_s[6]~0_combout\ : std_logic;
SIGNAL \L0|cont_m~8_combout\ : std_logic;
SIGNAL \L0|cont_m[0]~2_combout\ : std_logic;
SIGNAL \L0|Selector7~0_combout\ : std_logic;
SIGNAL \L0|cont_m~10_combout\ : std_logic;
SIGNAL \L0|cont_m[2]~0_combout\ : std_logic;
SIGNAL \L0|Selector5~0_combout\ : std_logic;
SIGNAL \L0|cont_m~9_combout\ : std_logic;
SIGNAL \L0|cont_m[3]~3_combout\ : std_logic;
SIGNAL \L0|Selector4~0_combout\ : std_logic;
SIGNAL \L0|cont_m~11_combout\ : std_logic;
SIGNAL \L0|cont_m[1]~1_combout\ : std_logic;
SIGNAL \L0|Selector6~0_combout\ : std_logic;
SIGNAL \L2|Equal14~0_combout\ : std_logic;
SIGNAL \L0|EA~18_combout\ : std_logic;
SIGNAL \L0|EA~19_combout\ : std_logic;
SIGNAL \L0|EA.INICIO~regout\ : std_logic;
SIGNAL \L0|Selector9~0_combout\ : std_logic;
SIGNAL \L0|cont_s~10_combout\ : std_logic;
SIGNAL \L0|cont_s[5]~1_combout\ : std_logic;
SIGNAL \L0|Selector10~0_combout\ : std_logic;
SIGNAL \L3|Equal14~0_combout\ : std_logic;
SIGNAL \L0|cont_m~12_combout\ : std_logic;
SIGNAL \L0|Selector3~0_combout\ : std_logic;
SIGNAL \L0|Add3~1_combout\ : std_logic;
SIGNAL \L0|cont_m[6]~4_combout\ : std_logic;
SIGNAL \L0|Selector1~0_combout\ : std_logic;
SIGNAL \L0|Add3~0_combout\ : std_logic;
SIGNAL \L0|cont_m[7]~6_combout\ : std_logic;
SIGNAL \L0|Selector0~0_combout\ : std_logic;
SIGNAL \L1|Equal14~0_combout\ : std_logic;
SIGNAL \L0|EA~20_combout\ : std_logic;
SIGNAL \L0|EA.D1~regout\ : std_logic;
SIGNAL \L0|Selector18~0_combout\ : std_logic;
SIGNAL \L0|EA.D2~regout\ : std_logic;
SIGNAL \L0|EA.D3~regout\ : std_logic;
SIGNAL \L0|atraso[0]~24_combout\ : std_logic;
SIGNAL \L0|Selector44~0_combout\ : std_logic;
SIGNAL \L0|atraso[0]~25\ : std_logic;
SIGNAL \L0|atraso[1]~27\ : std_logic;
SIGNAL \L0|atraso[2]~29\ : std_logic;
SIGNAL \L0|atraso[3]~30_combout\ : std_logic;
SIGNAL \L0|Selector41~0_combout\ : std_logic;
SIGNAL \L0|atraso[3]~31\ : std_logic;
SIGNAL \L0|atraso[4]~33\ : std_logic;
SIGNAL \L0|atraso[5]~34_combout\ : std_logic;
SIGNAL \L0|Selector39~0_combout\ : std_logic;
SIGNAL \L0|atraso[5]~35\ : std_logic;
SIGNAL \L0|atraso[6]~37\ : std_logic;
SIGNAL \L0|atraso[7]~38_combout\ : std_logic;
SIGNAL \L0|Selector37~0_combout\ : std_logic;
SIGNAL \L0|atraso[7]~39\ : std_logic;
SIGNAL \L0|atraso[8]~41\ : std_logic;
SIGNAL \L0|atraso[9]~42_combout\ : std_logic;
SIGNAL \L0|Selector35~0_combout\ : std_logic;
SIGNAL \L0|atraso[9]~43\ : std_logic;
SIGNAL \L0|atraso[10]~44_combout\ : std_logic;
SIGNAL \L0|Selector34~0_combout\ : std_logic;
SIGNAL \L0|atraso[10]~45\ : std_logic;
SIGNAL \L0|atraso[11]~46_combout\ : std_logic;
SIGNAL \L0|Selector33~0_combout\ : std_logic;
SIGNAL \L0|atraso[11]~47\ : std_logic;
SIGNAL \L0|atraso[12]~48_combout\ : std_logic;
SIGNAL \L0|Selector32~0_combout\ : std_logic;
SIGNAL \L0|atraso[12]~49\ : std_logic;
SIGNAL \L0|atraso[13]~50_combout\ : std_logic;
SIGNAL \L0|Selector31~0_combout\ : std_logic;
SIGNAL \L0|atraso[13]~51\ : std_logic;
SIGNAL \L0|atraso[14]~52_combout\ : std_logic;
SIGNAL \L0|Selector30~0_combout\ : std_logic;
SIGNAL \L0|atraso[14]~53\ : std_logic;
SIGNAL \L0|atraso[15]~55\ : std_logic;
SIGNAL \L0|atraso[16]~56_combout\ : std_logic;
SIGNAL \L0|Selector28~0_combout\ : std_logic;
SIGNAL \L0|atraso[16]~57\ : std_logic;
SIGNAL \L0|atraso[17]~59\ : std_logic;
SIGNAL \L0|atraso[18]~61\ : std_logic;
SIGNAL \L0|atraso[19]~62_combout\ : std_logic;
SIGNAL \L0|Selector25~0_combout\ : std_logic;
SIGNAL \L0|atraso[19]~63\ : std_logic;
SIGNAL \L0|atraso[20]~64_combout\ : std_logic;
SIGNAL \L0|Selector24~0_combout\ : std_logic;
SIGNAL \L0|atraso[20]~65\ : std_logic;
SIGNAL \L0|atraso[21]~66_combout\ : std_logic;
SIGNAL \L0|Selector23~0_combout\ : std_logic;
SIGNAL \L0|atraso[21]~67\ : std_logic;
SIGNAL \L0|atraso[22]~69\ : std_logic;
SIGNAL \L0|atraso[23]~70_combout\ : std_logic;
SIGNAL \L0|Selector21~0_combout\ : std_logic;
SIGNAL \L0|Selector17~0_combout\ : std_logic;
SIGNAL \L0|EA.INC_SEG~regout\ : std_logic;
SIGNAL \L0|Selector16~0_combout\ : std_logic;
SIGNAL \L0|Selector16~1_combout\ : std_logic;
SIGNAL \L0|EA.TESTES~regout\ : std_logic;
SIGNAL \L0|cont_s[0]~3_combout\ : std_logic;
SIGNAL \L0|cont_s[0]~4_combout\ : std_logic;
SIGNAL \L0|cont_s[0]~5_combout\ : std_logic;
SIGNAL \L0|cont_s[1]~8_combout\ : std_logic;
SIGNAL \L0|Add0~0_combout\ : std_logic;
SIGNAL \L0|cont_s[3]~6_combout\ : std_logic;
SIGNAL \L4|F[0]~0_combout\ : std_logic;
SIGNAL \L4|F[1]~1_combout\ : std_logic;
SIGNAL \L4|F[2]~2_combout\ : std_logic;
SIGNAL \L4|F[3]~3_combout\ : std_logic;
SIGNAL \L4|F[4]~4_combout\ : std_logic;
SIGNAL \L4|F[5]~5_combout\ : std_logic;
SIGNAL \L4|F[6]~6_combout\ : std_logic;
SIGNAL \L0|Add1~0_combout\ : std_logic;
SIGNAL \L0|cont_s[7]~2_combout\ : std_logic;
SIGNAL \L0|Selector8~0_combout\ : std_logic;
SIGNAL \L3|F[0]~0_combout\ : std_logic;
SIGNAL \L3|F[1]~1_combout\ : std_logic;
SIGNAL \L3|F[2]~2_combout\ : std_logic;
SIGNAL \L3|F[3]~3_combout\ : std_logic;
SIGNAL \L3|F[4]~4_combout\ : std_logic;
SIGNAL \L3|F[5]~5_combout\ : std_logic;
SIGNAL \L3|F[6]~6_combout\ : std_logic;
SIGNAL \L2|F[0]~0_combout\ : std_logic;
SIGNAL \L2|F[1]~1_combout\ : std_logic;
SIGNAL \L2|F[2]~2_combout\ : std_logic;
SIGNAL \L2|F[3]~3_combout\ : std_logic;
SIGNAL \L2|F[4]~4_combout\ : std_logic;
SIGNAL \L2|F[5]~5_combout\ : std_logic;
SIGNAL \L2|F[6]~6_combout\ : std_logic;
SIGNAL \L0|Add3~2_combout\ : std_logic;
SIGNAL \L0|cont_m[5]~5_combout\ : std_logic;
SIGNAL \L0|Selector2~0_combout\ : std_logic;
SIGNAL \L1|F[0]~0_combout\ : std_logic;
SIGNAL \L1|F[1]~1_combout\ : std_logic;
SIGNAL \L1|F[2]~2_combout\ : std_logic;
SIGNAL \L1|F[3]~3_combout\ : std_logic;
SIGNAL \L1|F[4]~4_combout\ : std_logic;
SIGNAL \L1|F[5]~5_combout\ : std_logic;
SIGNAL \L1|F[6]~6_combout\ : std_logic;
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L0|atraso\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \L0|cont_m\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L0|cont_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L0|ALT_INV_EA.D2~regout\ : std_logic;
SIGNAL \L0|ALT_INV_EA.TESTES~regout\ : std_logic;
SIGNAL \L1|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L2|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L3|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L4|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

TD_RESET <= ww_TD_RESET;
ww_CLOCK_27 <= CLOCK_27;
ww_KEY <= KEY;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_27~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_27~combout\);
\L0|ALT_INV_EA.D2~regout\ <= NOT \L0|EA.D2~regout\;
\L0|ALT_INV_EA.TESTES~regout\ <= NOT \L0|EA.TESTES~regout\;
\L1|ALT_INV_F[6]~6_combout\ <= NOT \L1|F[6]~6_combout\;
\L2|ALT_INV_F[6]~6_combout\ <= NOT \L2|F[6]~6_combout\;
\L3|ALT_INV_F[6]~6_combout\ <= NOT \L3|F[6]~6_combout\;
\L4|ALT_INV_F[6]~6_combout\ <= NOT \L4|F[6]~6_combout\;
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);

-- Location: LCFF_X4_Y16_N21
\L0|atraso[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[22]~68_combout\,
	sdata => \L0|Selector22~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(22));

-- Location: LCFF_X4_Y16_N13
\L0|atraso[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[18]~60_combout\,
	sdata => \L0|Selector26~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(18));

-- Location: LCFF_X4_Y16_N11
\L0|atraso[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[17]~58_combout\,
	sdata => \L0|Selector27~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(17));

-- Location: LCFF_X4_Y16_N7
\L0|atraso[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[15]~54_combout\,
	sdata => \L0|Selector29~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(15));

-- Location: LCFF_X4_Y17_N25
\L0|atraso[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[8]~40_combout\,
	sdata => \L0|Selector36~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(8));

-- Location: LCFF_X4_Y17_N21
\L0|atraso[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[6]~36_combout\,
	sdata => \L0|Selector38~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(6));

-- Location: LCFF_X4_Y17_N17
\L0|atraso[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[4]~32_combout\,
	sdata => \L0|Selector40~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(4));

-- Location: LCFF_X4_Y17_N13
\L0|atraso[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[2]~28_combout\,
	sdata => \L0|Selector42~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(2));

-- Location: LCFF_X4_Y17_N11
\L0|atraso[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[1]~26_combout\,
	sdata => \L0|Selector43~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(1));

-- Location: LCCOMB_X4_Y17_N10
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

-- Location: LCCOMB_X4_Y17_N12
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

-- Location: LCCOMB_X4_Y17_N16
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

-- Location: LCCOMB_X4_Y17_N20
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

-- Location: LCCOMB_X4_Y17_N24
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

-- Location: LCCOMB_X4_Y16_N6
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

-- Location: LCCOMB_X4_Y16_N10
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

-- Location: LCCOMB_X4_Y16_N12
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

-- Location: LCCOMB_X4_Y16_N20
\L0|atraso[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[22]~68_combout\ = (\L0|atraso\(22) & (\L0|atraso[21]~67\ $ (GND))) # (!\L0|atraso\(22) & (!\L0|atraso[21]~67\ & VCC))
-- \L0|atraso[22]~69\ = CARRY((\L0|atraso\(22) & !\L0|atraso[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(22),
	datad => VCC,
	cin => \L0|atraso[21]~67\,
	combout => \L0|atraso[22]~68_combout\,
	cout => \L0|atraso[22]~69\);

-- Location: LCCOMB_X1_Y16_N20
\L0|cont_s~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_s~9_combout\ = (\L0|cont_s\(6) & ((\L0|cont_s\(7)) # ((\L0|cont_s\(4)) # (!\L0|cont_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(7),
	datab => \L0|cont_s\(6),
	datac => \L0|cont_s\(4),
	datad => \L0|cont_s\(5),
	combout => \L0|cont_s~9_combout\);

-- Location: LCCOMB_X1_Y16_N12
\L0|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add1~2_combout\ = \L0|cont_s\(5) $ (\L0|cont_s\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(5),
	datac => \L0|cont_s\(4),
	combout => \L0|Add1~2_combout\);

-- Location: LCCOMB_X3_Y16_N2
\L0|cont_m~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m~7_combout\ = (\L0|cont_m\(0)) # (!\L3|Equal14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|cont_m\(0),
	datad => \L3|Equal14~0_combout\,
	combout => \L0|cont_m~7_combout\);

-- Location: LCCOMB_X2_Y16_N10
\L0|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add2~0_combout\ = \L0|cont_m\(3) $ (((\L0|cont_m\(0) & (\L0|cont_m\(2) & \L0|cont_m\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(0),
	datab => \L0|cont_m\(2),
	datac => \L0|cont_m\(3),
	datad => \L0|cont_m\(1),
	combout => \L0|Add2~0_combout\);

-- Location: LCCOMB_X3_Y16_N4
\L0|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector22~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.D1~regout\,
	datad => \L0|atraso\(22),
	combout => \L0|Selector22~0_combout\);

-- Location: LCCOMB_X3_Y16_N6
\L0|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector26~0_combout\ = (\L0|atraso\(18) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(18),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector26~0_combout\);

-- Location: LCCOMB_X4_Y16_N26
\L0|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector27~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.D1~regout\,
	datad => \L0|atraso\(17),
	combout => \L0|Selector27~0_combout\);

-- Location: LCCOMB_X5_Y16_N14
\L0|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector29~0_combout\ = (\L0|atraso\(15) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(15),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector29~0_combout\);

-- Location: LCCOMB_X3_Y17_N30
\L0|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector36~0_combout\ = (\L0|atraso\(8) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(8),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector36~0_combout\);

-- Location: LCCOMB_X5_Y17_N14
\L0|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector38~0_combout\ = (\L0|atraso\(6) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(6),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector38~0_combout\);

-- Location: LCCOMB_X4_Y17_N6
\L0|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector40~0_combout\ = (\L0|atraso\(4) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(4),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector40~0_combout\);

-- Location: LCCOMB_X5_Y17_N26
\L0|Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector42~0_combout\ = (\L0|atraso\(2) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(2),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector42~0_combout\);

-- Location: LCCOMB_X4_Y17_N2
\L0|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector43~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.D1~regout\,
	datac => \L0|atraso\(1),
	combout => \L0|Selector43~0_combout\);

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

-- Location: LCCOMB_X3_Y16_N8
\L0|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector20~0_combout\ = (!\L0|atraso\(23) & \L0|EA.D3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(23),
	datac => \L0|EA.D3~regout\,
	combout => \L0|Selector20~0_combout\);

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

-- Location: LCFF_X3_Y16_N9
\L0|EA.D4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Selector20~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.D4~regout\);

-- Location: LCCOMB_X2_Y17_N12
\L0|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~1_combout\ = \L0|cont_s\(2) $ (((\L0|cont_s\(1) & \L0|cont_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(1),
	datab => \L0|cont_s\(0),
	datac => \L0|cont_s\(2),
	combout => \L0|Add0~1_combout\);

-- Location: LCCOMB_X2_Y17_N6
\L0|cont_s[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_s[2]~7_combout\ = (\L0|cont_s[0]~4_combout\ & (\L0|EA.INC_SEG~regout\ & (\L0|Add0~1_combout\))) # (!\L0|cont_s[0]~4_combout\ & (((\L0|cont_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INC_SEG~regout\,
	datab => \L0|Add0~1_combout\,
	datac => \L0|cont_s\(2),
	datad => \L0|cont_s[0]~4_combout\,
	combout => \L0|cont_s[2]~7_combout\);

-- Location: LCFF_X2_Y17_N7
\L0|cont_s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_s[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_s\(2));

-- Location: LCCOMB_X2_Y17_N10
\L4|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|Equal14~0_combout\ = (\L0|cont_s\(1) & (!\L0|cont_s\(0) & (\L0|cont_s\(3) & !\L0|cont_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(1),
	datab => \L0|cont_s\(0),
	datac => \L0|cont_s\(3),
	datad => \L0|cont_s\(2),
	combout => \L4|Equal14~0_combout\);

-- Location: LCCOMB_X2_Y16_N26
\L0|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector11~0_combout\ = (\L0|EA.TESTES~regout\ & ((\L0|cont_s\(4) $ (\L4|Equal14~0_combout\)))) # (!\L0|EA.TESTES~regout\ & (\L0|EA.INICIO~regout\ & (\L0|cont_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INICIO~regout\,
	datab => \L0|EA.TESTES~regout\,
	datac => \L0|cont_s\(4),
	datad => \L4|Equal14~0_combout\,
	combout => \L0|Selector11~0_combout\);

-- Location: LCFF_X2_Y16_N27
\L0|cont_s[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Selector11~0_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_s\(4));

-- Location: LCCOMB_X1_Y16_N2
\L0|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add1~1_combout\ = \L0|cont_s\(6) $ (((\L0|cont_s\(5) & \L0|cont_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(5),
	datab => \L0|cont_s\(6),
	datac => \L0|cont_s\(4),
	combout => \L0|Add1~1_combout\);

-- Location: LCCOMB_X1_Y16_N28
\L0|cont_s[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_s[6]~0_combout\ = (\L4|Equal14~0_combout\ & ((\L0|Add1~1_combout\))) # (!\L4|Equal14~0_combout\ & (\L0|cont_s~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s~9_combout\,
	datab => \L0|Add1~1_combout\,
	datad => \L4|Equal14~0_combout\,
	combout => \L0|cont_s[6]~0_combout\);

-- Location: LCCOMB_X2_Y16_N12
\L0|cont_m~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m~8_combout\ = (\L4|Equal14~0_combout\) # ((!\L3|Equal14~0_combout\ & !\L2|Equal14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L3|Equal14~0_combout\,
	datac => \L2|Equal14~0_combout\,
	datad => \L4|Equal14~0_combout\,
	combout => \L0|cont_m~8_combout\);

-- Location: LCCOMB_X2_Y16_N6
\L0|cont_m[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m[0]~2_combout\ = (\L0|cont_m~8_combout\ & ((\L0|cont_m\(0)))) # (!\L0|cont_m~8_combout\ & (!\L0|cont_m~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m~7_combout\,
	datac => \L0|cont_m\(0),
	datad => \L0|cont_m~8_combout\,
	combout => \L0|cont_m[0]~2_combout\);

-- Location: LCCOMB_X3_Y16_N16
\L0|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector7~0_combout\ = (\L0|cont_m\(0) & \L0|EA.INICIO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|cont_m\(0),
	datad => \L0|EA.INICIO~regout\,
	combout => \L0|Selector7~0_combout\);

-- Location: LCFF_X2_Y16_N7
\L0|cont_m[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_m[0]~2_combout\,
	sdata => \L0|Selector7~0_combout\,
	sload => \L0|ALT_INV_EA.TESTES~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_m\(0));

-- Location: LCCOMB_X3_Y16_N28
\L0|cont_m~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m~10_combout\ = (\L3|Equal14~0_combout\ & (\L0|cont_m\(2) $ (((\L0|cont_m\(1) & \L0|cont_m\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(1),
	datab => \L0|cont_m\(2),
	datac => \L0|cont_m\(0),
	datad => \L3|Equal14~0_combout\,
	combout => \L0|cont_m~10_combout\);

-- Location: LCCOMB_X2_Y16_N22
\L0|cont_m[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m[2]~0_combout\ = (\L0|cont_m~8_combout\ & ((\L0|cont_m\(2)))) # (!\L0|cont_m~8_combout\ & (\L0|cont_m~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|cont_m~10_combout\,
	datac => \L0|cont_m\(2),
	datad => \L0|cont_m~8_combout\,
	combout => \L0|cont_m[2]~0_combout\);

-- Location: LCCOMB_X3_Y16_N14
\L0|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector5~0_combout\ = (\L0|cont_m\(2) & \L0|EA.INICIO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|cont_m\(2),
	datad => \L0|EA.INICIO~regout\,
	combout => \L0|Selector5~0_combout\);

-- Location: LCFF_X2_Y16_N23
\L0|cont_m[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_m[2]~0_combout\,
	sdata => \L0|Selector5~0_combout\,
	sload => \L0|ALT_INV_EA.TESTES~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_m\(2));

-- Location: LCCOMB_X2_Y16_N4
\L0|cont_m~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m~9_combout\ = (\L0|Add2~0_combout\ & \L3|Equal14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add2~0_combout\,
	datad => \L3|Equal14~0_combout\,
	combout => \L0|cont_m~9_combout\);

-- Location: LCCOMB_X2_Y16_N20
\L0|cont_m[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m[3]~3_combout\ = (\L0|cont_m~8_combout\ & ((\L0|cont_m\(3)))) # (!\L0|cont_m~8_combout\ & (\L0|cont_m~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|cont_m~9_combout\,
	datac => \L0|cont_m\(3),
	datad => \L0|cont_m~8_combout\,
	combout => \L0|cont_m[3]~3_combout\);

-- Location: LCCOMB_X2_Y16_N18
\L0|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector4~0_combout\ = (\L0|cont_m\(3) & \L0|EA.INICIO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|cont_m\(3),
	datad => \L0|EA.INICIO~regout\,
	combout => \L0|Selector4~0_combout\);

-- Location: LCFF_X2_Y16_N21
\L0|cont_m[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_m[3]~3_combout\,
	sdata => \L0|Selector4~0_combout\,
	sload => \L0|ALT_INV_EA.TESTES~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_m\(3));

-- Location: LCCOMB_X3_Y16_N18
\L0|cont_m~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m~11_combout\ = (\L3|Equal14~0_combout\ & (\L0|cont_m\(1) $ (\L0|cont_m\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(1),
	datac => \L0|cont_m\(0),
	datad => \L3|Equal14~0_combout\,
	combout => \L0|cont_m~11_combout\);

-- Location: LCCOMB_X2_Y16_N8
\L0|cont_m[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m[1]~1_combout\ = (\L0|cont_m~8_combout\ & ((\L0|cont_m\(1)))) # (!\L0|cont_m~8_combout\ & (\L0|cont_m~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|cont_m~11_combout\,
	datac => \L0|cont_m\(1),
	datad => \L0|cont_m~8_combout\,
	combout => \L0|cont_m[1]~1_combout\);

-- Location: LCCOMB_X3_Y16_N26
\L0|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector6~0_combout\ = (\L0|EA.INICIO~regout\ & \L0|cont_m\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INICIO~regout\,
	datad => \L0|cont_m\(1),
	combout => \L0|Selector6~0_combout\);

-- Location: LCFF_X2_Y16_N9
\L0|cont_m[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_m[1]~1_combout\,
	sdata => \L0|Selector6~0_combout\,
	sload => \L0|ALT_INV_EA.TESTES~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_m\(1));

-- Location: LCCOMB_X2_Y16_N2
\L2|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|Equal14~0_combout\ = (!\L0|cont_m\(0) & (!\L0|cont_m\(2) & (\L0|cont_m\(3) & \L0|cont_m\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(0),
	datab => \L0|cont_m\(2),
	datac => \L0|cont_m\(3),
	datad => \L0|cont_m\(1),
	combout => \L2|Equal14~0_combout\);

-- Location: LCCOMB_X2_Y16_N14
\L0|EA~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|EA~18_combout\ = (\L0|EA.TESTES~regout\ & (!\L3|Equal14~0_combout\ & (!\L2|Equal14~0_combout\ & !\L4|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.TESTES~regout\,
	datab => \L3|Equal14~0_combout\,
	datac => \L2|Equal14~0_combout\,
	datad => \L4|Equal14~0_combout\,
	combout => \L0|EA~18_combout\);

-- Location: LCCOMB_X3_Y16_N12
\L0|EA~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|EA~19_combout\ = (!\L0|EA~18_combout\) # (!\L1|Equal14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Equal14~0_combout\,
	datad => \L0|EA~18_combout\,
	combout => \L0|EA~19_combout\);

-- Location: LCFF_X3_Y16_N13
\L0|EA.INICIO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|EA~19_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.INICIO~regout\);

-- Location: LCCOMB_X1_Y16_N24
\L0|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector9~0_combout\ = (\L0|EA.INICIO~regout\ & \L0|cont_s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.INICIO~regout\,
	datad => \L0|cont_s\(6),
	combout => \L0|Selector9~0_combout\);

-- Location: LCFF_X1_Y16_N29
\L0|cont_s[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_s[6]~0_combout\,
	sdata => \L0|Selector9~0_combout\,
	sload => \L0|ALT_INV_EA.TESTES~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_s\(6));

-- Location: LCCOMB_X1_Y16_N22
\L0|cont_s~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_s~10_combout\ = (\L0|cont_s\(5) & ((\L0|cont_s\(7)) # ((\L0|cont_s\(4)) # (!\L0|cont_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(7),
	datab => \L0|cont_s\(6),
	datac => \L0|cont_s\(4),
	datad => \L0|cont_s\(5),
	combout => \L0|cont_s~10_combout\);

-- Location: LCCOMB_X1_Y16_N6
\L0|cont_s[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_s[5]~1_combout\ = (\L4|Equal14~0_combout\ & (\L0|Add1~2_combout\)) # (!\L4|Equal14~0_combout\ & ((\L0|cont_s~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add1~2_combout\,
	datab => \L0|cont_s~10_combout\,
	datad => \L4|Equal14~0_combout\,
	combout => \L0|cont_s[5]~1_combout\);

-- Location: LCCOMB_X1_Y16_N14
\L0|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector10~0_combout\ = (\L0|EA.INICIO~regout\ & \L0|cont_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.INICIO~regout\,
	datad => \L0|cont_s\(5),
	combout => \L0|Selector10~0_combout\);

-- Location: LCFF_X1_Y16_N7
\L0|cont_s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_s[5]~1_combout\,
	sdata => \L0|Selector10~0_combout\,
	sload => \L0|ALT_INV_EA.TESTES~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_s\(5));

-- Location: LCCOMB_X2_Y16_N28
\L3|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|Equal14~0_combout\ = (!\L0|cont_s\(7) & (!\L0|cont_s\(4) & (\L0|cont_s\(5) & \L0|cont_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(7),
	datab => \L0|cont_s\(4),
	datac => \L0|cont_s\(5),
	datad => \L0|cont_s\(6),
	combout => \L3|Equal14~0_combout\);

-- Location: LCCOMB_X2_Y17_N22
\L0|cont_m~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m~12_combout\ = (\L4|Equal14~0_combout\) # ((\L3|Equal14~0_combout\) # (!\L2|Equal14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|Equal14~0_combout\,
	datac => \L3|Equal14~0_combout\,
	datad => \L2|Equal14~0_combout\,
	combout => \L0|cont_m~12_combout\);

-- Location: LCCOMB_X2_Y17_N30
\L0|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector3~0_combout\ = (\L0|EA.TESTES~regout\ & ((\L0|cont_m\(4) $ (!\L0|cont_m~12_combout\)))) # (!\L0|EA.TESTES~regout\ & (\L0|EA.INICIO~regout\ & (\L0|cont_m\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INICIO~regout\,
	datab => \L0|EA.TESTES~regout\,
	datac => \L0|cont_m\(4),
	datad => \L0|cont_m~12_combout\,
	combout => \L0|Selector3~0_combout\);

-- Location: LCFF_X2_Y17_N31
\L0|cont_m[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Selector3~0_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_m\(4));

-- Location: LCCOMB_X3_Y17_N0
\L0|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add3~1_combout\ = \L0|cont_m\(6) $ (((\L0|cont_m\(5) & \L0|cont_m\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(5),
	datab => \L0|cont_m\(6),
	datac => \L0|cont_m\(4),
	combout => \L0|Add3~1_combout\);

-- Location: LCCOMB_X2_Y17_N18
\L0|cont_m[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m[6]~4_combout\ = (\L0|cont_m~12_combout\ & ((\L0|cont_m\(6)))) # (!\L0|cont_m~12_combout\ & (\L0|Add3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add3~1_combout\,
	datac => \L0|cont_m\(6),
	datad => \L0|cont_m~12_combout\,
	combout => \L0|cont_m[6]~4_combout\);

-- Location: LCCOMB_X3_Y17_N14
\L0|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector1~0_combout\ = (\L0|cont_m\(6) & \L0|EA.INICIO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|cont_m\(6),
	datad => \L0|EA.INICIO~regout\,
	combout => \L0|Selector1~0_combout\);

-- Location: LCFF_X2_Y17_N19
\L0|cont_m[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_m[6]~4_combout\,
	sdata => \L0|Selector1~0_combout\,
	sload => \L0|ALT_INV_EA.TESTES~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_m\(6));

-- Location: LCCOMB_X3_Y17_N18
\L0|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add3~0_combout\ = \L0|cont_m\(7) $ (((\L0|cont_m\(5) & (\L0|cont_m\(6) & \L0|cont_m\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(5),
	datab => \L0|cont_m\(6),
	datac => \L0|cont_m\(7),
	datad => \L0|cont_m\(4),
	combout => \L0|Add3~0_combout\);

-- Location: LCCOMB_X2_Y17_N4
\L0|cont_m[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m[7]~6_combout\ = (\L0|cont_m~12_combout\ & ((\L0|cont_m\(7)))) # (!\L0|cont_m~12_combout\ & (\L0|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add3~0_combout\,
	datac => \L0|cont_m\(7),
	datad => \L0|cont_m~12_combout\,
	combout => \L0|cont_m[7]~6_combout\);

-- Location: LCCOMB_X2_Y17_N20
\L0|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector0~0_combout\ = (\L0|cont_m\(7) & \L0|EA.INICIO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|cont_m\(7),
	datac => \L0|EA.INICIO~regout\,
	combout => \L0|Selector0~0_combout\);

-- Location: LCFF_X2_Y17_N5
\L0|cont_m[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_m[7]~6_combout\,
	sdata => \L0|Selector0~0_combout\,
	sload => \L0|ALT_INV_EA.TESTES~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_m\(7));

-- Location: LCCOMB_X3_Y17_N26
\L1|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|Equal14~0_combout\ = (\L0|cont_m\(5) & (!\L0|cont_m\(4) & (!\L0|cont_m\(7) & \L0|cont_m\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(5),
	datab => \L0|cont_m\(4),
	datac => \L0|cont_m\(7),
	datad => \L0|cont_m\(6),
	combout => \L1|Equal14~0_combout\);

-- Location: LCCOMB_X3_Y16_N0
\L0|EA~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|EA~20_combout\ = (!\L1|Equal14~0_combout\ & \L0|EA~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Equal14~0_combout\,
	datad => \L0|EA~18_combout\,
	combout => \L0|EA~20_combout\);

-- Location: LCFF_X3_Y16_N1
\L0|EA.D1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|EA~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.D1~regout\);

-- Location: LCCOMB_X3_Y16_N10
\L0|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector18~0_combout\ = (\L0|EA.D4~regout\) # (\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.D4~regout\,
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector18~0_combout\);

-- Location: LCFF_X3_Y16_N11
\L0|EA.D2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Selector18~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.D2~regout\);

-- Location: LCFF_X3_Y16_N5
\L0|EA.D3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	sdata => \L0|EA.D2~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.D3~regout\);

-- Location: LCCOMB_X4_Y17_N8
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

-- Location: LCCOMB_X3_Y17_N6
\L0|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector44~0_combout\ = (\L0|atraso\(0) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(0),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector44~0_combout\);

-- Location: LCFF_X4_Y17_N9
\L0|atraso[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[0]~24_combout\,
	sdata => \L0|Selector44~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(0));

-- Location: LCCOMB_X4_Y17_N14
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

-- Location: LCCOMB_X4_Y17_N0
\L0|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector41~0_combout\ = (\L0|atraso\(3) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(3),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector41~0_combout\);

-- Location: LCFF_X4_Y17_N15
\L0|atraso[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[3]~30_combout\,
	sdata => \L0|Selector41~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(3));

-- Location: LCCOMB_X4_Y17_N18
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

-- Location: LCCOMB_X5_Y17_N0
\L0|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector39~0_combout\ = (\L0|atraso\(5) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(5),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector39~0_combout\);

-- Location: LCFF_X4_Y17_N19
\L0|atraso[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[5]~34_combout\,
	sdata => \L0|Selector39~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(5));

-- Location: LCCOMB_X4_Y17_N22
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

-- Location: LCCOMB_X3_Y17_N4
\L0|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector37~0_combout\ = (\L0|atraso\(7) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(7),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector37~0_combout\);

-- Location: LCFF_X4_Y17_N23
\L0|atraso[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[7]~38_combout\,
	sdata => \L0|Selector37~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(7));

-- Location: LCCOMB_X4_Y17_N26
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

-- Location: LCCOMB_X3_Y17_N20
\L0|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector35~0_combout\ = (\L0|atraso\(9) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(9),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector35~0_combout\);

-- Location: LCFF_X4_Y17_N27
\L0|atraso[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[9]~42_combout\,
	sdata => \L0|Selector35~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(9));

-- Location: LCCOMB_X4_Y17_N28
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

-- Location: LCCOMB_X4_Y17_N4
\L0|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector34~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.D1~regout\,
	datad => \L0|atraso\(10),
	combout => \L0|Selector34~0_combout\);

-- Location: LCFF_X4_Y17_N29
\L0|atraso[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[10]~44_combout\,
	sdata => \L0|Selector34~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(10));

-- Location: LCCOMB_X4_Y17_N30
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

-- Location: LCCOMB_X5_Y17_N16
\L0|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector33~0_combout\ = (\L0|atraso\(11) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(11),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector33~0_combout\);

-- Location: LCFF_X4_Y17_N31
\L0|atraso[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[11]~46_combout\,
	sdata => \L0|Selector33~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(11));

-- Location: LCCOMB_X4_Y16_N0
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

-- Location: LCCOMB_X4_Y16_N30
\L0|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector32~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.D1~regout\,
	datad => \L0|atraso\(12),
	combout => \L0|Selector32~0_combout\);

-- Location: LCFF_X4_Y16_N1
\L0|atraso[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[12]~48_combout\,
	sdata => \L0|Selector32~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(12));

-- Location: LCCOMB_X4_Y16_N2
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

-- Location: LCCOMB_X4_Y16_N24
\L0|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector31~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.D1~regout\,
	datad => \L0|atraso\(13),
	combout => \L0|Selector31~0_combout\);

-- Location: LCFF_X4_Y16_N3
\L0|atraso[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[13]~50_combout\,
	sdata => \L0|Selector31~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(13));

-- Location: LCCOMB_X4_Y16_N4
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

-- Location: LCCOMB_X5_Y16_N16
\L0|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector30~0_combout\ = (\L0|atraso\(14) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(14),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector30~0_combout\);

-- Location: LCFF_X4_Y16_N5
\L0|atraso[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[14]~52_combout\,
	sdata => \L0|Selector30~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(14));

-- Location: LCCOMB_X4_Y16_N8
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

-- Location: LCCOMB_X5_Y16_N0
\L0|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector28~0_combout\ = (\L0|atraso\(16) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|atraso\(16),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector28~0_combout\);

-- Location: LCFF_X4_Y16_N9
\L0|atraso[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[16]~56_combout\,
	sdata => \L0|Selector28~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(16));

-- Location: LCCOMB_X4_Y16_N14
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

-- Location: LCCOMB_X3_Y16_N20
\L0|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector25~0_combout\ = (\L0|atraso\(19) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(19),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector25~0_combout\);

-- Location: LCFF_X4_Y16_N15
\L0|atraso[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[19]~62_combout\,
	sdata => \L0|Selector25~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(19));

-- Location: LCCOMB_X4_Y16_N16
\L0|atraso[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|atraso[20]~64_combout\ = (\L0|atraso\(20) & (\L0|atraso[19]~63\ $ (GND))) # (!\L0|atraso\(20) & (!\L0|atraso[19]~63\ & VCC))
-- \L0|atraso[20]~65\ = CARRY((\L0|atraso\(20) & !\L0|atraso[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|atraso\(20),
	datad => VCC,
	cin => \L0|atraso[19]~63\,
	combout => \L0|atraso[20]~64_combout\,
	cout => \L0|atraso[20]~65\);

-- Location: LCCOMB_X3_Y16_N30
\L0|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector24~0_combout\ = (\L0|atraso\(20) & !\L0|EA.D1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|atraso\(20),
	datad => \L0|EA.D1~regout\,
	combout => \L0|Selector24~0_combout\);

-- Location: LCFF_X4_Y16_N17
\L0|atraso[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[20]~64_combout\,
	sdata => \L0|Selector24~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(20));

-- Location: LCCOMB_X4_Y16_N18
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

-- Location: LCCOMB_X4_Y16_N28
\L0|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector23~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.D1~regout\,
	datad => \L0|atraso\(21),
	combout => \L0|Selector23~0_combout\);

-- Location: LCFF_X4_Y16_N19
\L0|atraso[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[21]~66_combout\,
	sdata => \L0|Selector23~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(21));

-- Location: LCCOMB_X4_Y16_N22
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

-- Location: LCCOMB_X3_Y16_N24
\L0|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector21~0_combout\ = (!\L0|EA.D1~regout\ & \L0|atraso\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.D1~regout\,
	datac => \L0|atraso\(23),
	combout => \L0|Selector21~0_combout\);

-- Location: LCFF_X4_Y16_N23
\L0|atraso[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|atraso[23]~70_combout\,
	sdata => \L0|Selector21~0_combout\,
	sload => \L0|ALT_INV_EA.D2~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|atraso\(23));

-- Location: LCCOMB_X3_Y16_N22
\L0|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector17~0_combout\ = ((\L0|EA.D3~regout\ & \L0|atraso\(23))) # (!\L0|EA.INICIO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.D3~regout\,
	datac => \L0|atraso\(23),
	datad => \L0|EA.INICIO~regout\,
	combout => \L0|Selector17~0_combout\);

-- Location: LCFF_X3_Y16_N23
\L0|EA.INC_SEG\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Selector17~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.INC_SEG~regout\);

-- Location: LCCOMB_X2_Y16_N0
\L0|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector16~0_combout\ = (\L0|EA.TESTES~regout\ & ((\L2|Equal14~0_combout\) # ((\L4|Equal14~0_combout\) # (\L3|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.TESTES~regout\,
	datab => \L2|Equal14~0_combout\,
	datac => \L4|Equal14~0_combout\,
	datad => \L3|Equal14~0_combout\,
	combout => \L0|Selector16~0_combout\);

-- Location: LCCOMB_X2_Y16_N24
\L0|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector16~1_combout\ = (\L0|EA.INC_SEG~regout\) # (\L0|Selector16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.INC_SEG~regout\,
	datad => \L0|Selector16~0_combout\,
	combout => \L0|Selector16~1_combout\);

-- Location: LCFF_X2_Y16_N25
\L0|EA.TESTES\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|Selector16~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|EA.TESTES~regout\);

-- Location: LCCOMB_X2_Y17_N8
\L0|cont_s[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_s[0]~3_combout\ = (\KEY~combout\(0) & (((\L0|EA.TESTES~regout\) # (\L0|EA.INC_SEG~regout\)) # (!\L0|EA.INICIO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \L0|EA.INICIO~regout\,
	datac => \L0|EA.TESTES~regout\,
	datad => \L0|EA.INC_SEG~regout\,
	combout => \L0|cont_s[0]~3_combout\);

-- Location: LCCOMB_X2_Y17_N28
\L0|cont_s[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_s[0]~4_combout\ = (\L0|cont_s[0]~3_combout\ & ((\L4|Equal14~0_combout\) # (!\L0|EA.TESTES~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|EA.TESTES~regout\,
	datac => \L0|cont_s[0]~3_combout\,
	datad => \L4|Equal14~0_combout\,
	combout => \L0|cont_s[0]~4_combout\);

-- Location: LCCOMB_X2_Y17_N2
\L0|cont_s[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_s[0]~5_combout\ = (\L0|cont_s\(0) & ((!\L0|cont_s[0]~4_combout\))) # (!\L0|cont_s\(0) & (\L0|EA.INC_SEG~regout\ & \L0|cont_s[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INC_SEG~regout\,
	datac => \L0|cont_s\(0),
	datad => \L0|cont_s[0]~4_combout\,
	combout => \L0|cont_s[0]~5_combout\);

-- Location: LCFF_X2_Y17_N3
\L0|cont_s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_s[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_s\(0));

-- Location: LCCOMB_X2_Y17_N24
\L0|cont_s[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_s[1]~8_combout\ = (\L0|cont_s[0]~4_combout\ & (\L0|EA.INC_SEG~regout\ & (\L0|cont_s\(0) $ (\L0|cont_s\(1))))) # (!\L0|cont_s[0]~4_combout\ & (((\L0|cont_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INC_SEG~regout\,
	datab => \L0|cont_s\(0),
	datac => \L0|cont_s\(1),
	datad => \L0|cont_s[0]~4_combout\,
	combout => \L0|cont_s[1]~8_combout\);

-- Location: LCFF_X2_Y17_N25
\L0|cont_s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_s[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_s\(1));

-- Location: LCCOMB_X2_Y17_N26
\L0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add0~0_combout\ = \L0|cont_s\(3) $ (((\L0|cont_s\(0) & (\L0|cont_s\(2) & \L0|cont_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(3),
	datab => \L0|cont_s\(0),
	datac => \L0|cont_s\(2),
	datad => \L0|cont_s\(1),
	combout => \L0|Add0~0_combout\);

-- Location: LCCOMB_X2_Y17_N16
\L0|cont_s[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_s[3]~6_combout\ = (\L0|cont_s[0]~4_combout\ & (\L0|EA.INC_SEG~regout\ & (\L0|Add0~0_combout\))) # (!\L0|cont_s[0]~4_combout\ & (((\L0|cont_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|EA.INC_SEG~regout\,
	datab => \L0|Add0~0_combout\,
	datac => \L0|cont_s\(3),
	datad => \L0|cont_s[0]~4_combout\,
	combout => \L0|cont_s[3]~6_combout\);

-- Location: LCFF_X2_Y17_N17
\L0|cont_s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_s[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_s\(3));

-- Location: LCCOMB_X1_Y17_N20
\L4|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|F[0]~0_combout\ = (\L0|cont_s\(3) & (\L0|cont_s\(0) & (\L0|cont_s\(2) $ (\L0|cont_s\(1))))) # (!\L0|cont_s\(3) & (!\L0|cont_s\(1) & (\L0|cont_s\(2) $ (\L0|cont_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(3),
	datab => \L0|cont_s\(2),
	datac => \L0|cont_s\(1),
	datad => \L0|cont_s\(0),
	combout => \L4|F[0]~0_combout\);

-- Location: LCCOMB_X1_Y17_N2
\L4|F[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|F[1]~1_combout\ = (\L0|cont_s\(3) & ((\L0|cont_s\(0) & ((\L0|cont_s\(1)))) # (!\L0|cont_s\(0) & (\L0|cont_s\(2))))) # (!\L0|cont_s\(3) & (\L0|cont_s\(2) & (\L0|cont_s\(1) $ (\L0|cont_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(3),
	datab => \L0|cont_s\(2),
	datac => \L0|cont_s\(1),
	datad => \L0|cont_s\(0),
	combout => \L4|F[1]~1_combout\);

-- Location: LCCOMB_X1_Y17_N24
\L4|F[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|F[2]~2_combout\ = (\L0|cont_s\(3) & (\L0|cont_s\(2) & ((\L0|cont_s\(1)) # (!\L0|cont_s\(0))))) # (!\L0|cont_s\(3) & (!\L0|cont_s\(2) & (\L0|cont_s\(1) & !\L0|cont_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(3),
	datab => \L0|cont_s\(2),
	datac => \L0|cont_s\(1),
	datad => \L0|cont_s\(0),
	combout => \L4|F[2]~2_combout\);

-- Location: LCCOMB_X1_Y17_N22
\L4|F[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|F[3]~3_combout\ = (\L0|cont_s\(1) & ((\L0|cont_s\(2) & ((\L0|cont_s\(0)))) # (!\L0|cont_s\(2) & (\L0|cont_s\(3) & !\L0|cont_s\(0))))) # (!\L0|cont_s\(1) & (!\L0|cont_s\(3) & (\L0|cont_s\(2) $ (\L0|cont_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(3),
	datab => \L0|cont_s\(2),
	datac => \L0|cont_s\(1),
	datad => \L0|cont_s\(0),
	combout => \L4|F[3]~3_combout\);

-- Location: LCCOMB_X1_Y17_N0
\L4|F[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|F[4]~4_combout\ = (\L0|cont_s\(1) & (!\L0|cont_s\(3) & ((\L0|cont_s\(0))))) # (!\L0|cont_s\(1) & ((\L0|cont_s\(2) & (!\L0|cont_s\(3))) # (!\L0|cont_s\(2) & ((\L0|cont_s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(3),
	datab => \L0|cont_s\(2),
	datac => \L0|cont_s\(1),
	datad => \L0|cont_s\(0),
	combout => \L4|F[4]~4_combout\);

-- Location: LCCOMB_X1_Y17_N26
\L4|F[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|F[5]~5_combout\ = (\L0|cont_s\(2) & (\L0|cont_s\(0) & (\L0|cont_s\(3) $ (\L0|cont_s\(1))))) # (!\L0|cont_s\(2) & (!\L0|cont_s\(3) & ((\L0|cont_s\(1)) # (\L0|cont_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(3),
	datab => \L0|cont_s\(2),
	datac => \L0|cont_s\(1),
	datad => \L0|cont_s\(0),
	combout => \L4|F[5]~5_combout\);

-- Location: LCCOMB_X1_Y17_N16
\L4|F[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|F[6]~6_combout\ = (\L0|cont_s\(0) & ((\L0|cont_s\(3)) # (\L0|cont_s\(2) $ (\L0|cont_s\(1))))) # (!\L0|cont_s\(0) & ((\L0|cont_s\(1)) # (\L0|cont_s\(3) $ (\L0|cont_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(3),
	datab => \L0|cont_s\(2),
	datac => \L0|cont_s\(1),
	datad => \L0|cont_s\(0),
	combout => \L4|F[6]~6_combout\);

-- Location: LCCOMB_X1_Y16_N26
\L0|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add1~0_combout\ = \L0|cont_s\(7) $ (((\L0|cont_s\(6) & (\L0|cont_s\(4) & \L0|cont_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(7),
	datab => \L0|cont_s\(6),
	datac => \L0|cont_s\(4),
	datad => \L0|cont_s\(5),
	combout => \L0|Add1~0_combout\);

-- Location: LCCOMB_X2_Y16_N16
\L0|cont_s[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_s[7]~2_combout\ = (\L4|Equal14~0_combout\ & (\L0|Add1~0_combout\)) # (!\L4|Equal14~0_combout\ & ((\L0|cont_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|Equal14~0_combout\,
	datab => \L0|Add1~0_combout\,
	datac => \L0|cont_s\(7),
	combout => \L0|cont_s[7]~2_combout\);

-- Location: LCCOMB_X2_Y16_N30
\L0|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector8~0_combout\ = (\L0|cont_s\(7) & \L0|EA.INICIO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|cont_s\(7),
	datad => \L0|EA.INICIO~regout\,
	combout => \L0|Selector8~0_combout\);

-- Location: LCFF_X2_Y16_N17
\L0|cont_s[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_s[7]~2_combout\,
	sdata => \L0|Selector8~0_combout\,
	sload => \L0|ALT_INV_EA.TESTES~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_s\(7));

-- Location: LCCOMB_X1_Y16_N16
\L3|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|F[0]~0_combout\ = (\L0|cont_s\(7) & (\L0|cont_s\(4) & (\L0|cont_s\(6) $ (\L0|cont_s\(5))))) # (!\L0|cont_s\(7) & (!\L0|cont_s\(5) & (\L0|cont_s\(6) $ (\L0|cont_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(7),
	datab => \L0|cont_s\(6),
	datac => \L0|cont_s\(4),
	datad => \L0|cont_s\(5),
	combout => \L3|F[0]~0_combout\);

-- Location: LCCOMB_X1_Y16_N10
\L3|F[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|F[1]~1_combout\ = (\L0|cont_s\(7) & ((\L0|cont_s\(4) & ((\L0|cont_s\(5)))) # (!\L0|cont_s\(4) & (\L0|cont_s\(6))))) # (!\L0|cont_s\(7) & (\L0|cont_s\(6) & (\L0|cont_s\(4) $ (\L0|cont_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(7),
	datab => \L0|cont_s\(6),
	datac => \L0|cont_s\(4),
	datad => \L0|cont_s\(5),
	combout => \L3|F[1]~1_combout\);

-- Location: LCCOMB_X1_Y16_N8
\L3|F[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|F[2]~2_combout\ = (\L0|cont_s\(7) & (\L0|cont_s\(6) & ((\L0|cont_s\(5)) # (!\L0|cont_s\(4))))) # (!\L0|cont_s\(7) & (!\L0|cont_s\(6) & (!\L0|cont_s\(4) & \L0|cont_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(7),
	datab => \L0|cont_s\(6),
	datac => \L0|cont_s\(4),
	datad => \L0|cont_s\(5),
	combout => \L3|F[2]~2_combout\);

-- Location: LCCOMB_X1_Y16_N18
\L3|F[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|F[3]~3_combout\ = (\L0|cont_s\(5) & ((\L0|cont_s\(6) & ((\L0|cont_s\(4)))) # (!\L0|cont_s\(6) & (\L0|cont_s\(7) & !\L0|cont_s\(4))))) # (!\L0|cont_s\(5) & (!\L0|cont_s\(7) & (\L0|cont_s\(6) $ (\L0|cont_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(7),
	datab => \L0|cont_s\(6),
	datac => \L0|cont_s\(4),
	datad => \L0|cont_s\(5),
	combout => \L3|F[3]~3_combout\);

-- Location: LCCOMB_X1_Y16_N4
\L3|F[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|F[4]~4_combout\ = (\L0|cont_s\(5) & (!\L0|cont_s\(7) & ((\L0|cont_s\(4))))) # (!\L0|cont_s\(5) & ((\L0|cont_s\(6) & (!\L0|cont_s\(7))) # (!\L0|cont_s\(6) & ((\L0|cont_s\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(7),
	datab => \L0|cont_s\(6),
	datac => \L0|cont_s\(4),
	datad => \L0|cont_s\(5),
	combout => \L3|F[4]~4_combout\);

-- Location: LCCOMB_X1_Y16_N30
\L3|F[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|F[5]~5_combout\ = (\L0|cont_s\(6) & (\L0|cont_s\(4) & (\L0|cont_s\(7) $ (\L0|cont_s\(5))))) # (!\L0|cont_s\(6) & (!\L0|cont_s\(7) & ((\L0|cont_s\(4)) # (\L0|cont_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(7),
	datab => \L0|cont_s\(6),
	datac => \L0|cont_s\(4),
	datad => \L0|cont_s\(5),
	combout => \L3|F[5]~5_combout\);

-- Location: LCCOMB_X1_Y16_N0
\L3|F[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|F[6]~6_combout\ = (\L0|cont_s\(4) & ((\L0|cont_s\(7)) # (\L0|cont_s\(6) $ (\L0|cont_s\(5))))) # (!\L0|cont_s\(4) & ((\L0|cont_s\(5)) # (\L0|cont_s\(7) $ (\L0|cont_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_s\(7),
	datab => \L0|cont_s\(6),
	datac => \L0|cont_s\(4),
	datad => \L0|cont_s\(5),
	combout => \L3|F[6]~6_combout\);

-- Location: LCCOMB_X1_Y17_N30
\L2|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[0]~0_combout\ = (\L0|cont_m\(2) & (!\L0|cont_m\(1) & (\L0|cont_m\(0) $ (!\L0|cont_m\(3))))) # (!\L0|cont_m\(2) & (\L0|cont_m\(0) & (\L0|cont_m\(1) $ (!\L0|cont_m\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(2),
	datab => \L0|cont_m\(1),
	datac => \L0|cont_m\(0),
	datad => \L0|cont_m\(3),
	combout => \L2|F[0]~0_combout\);

-- Location: LCCOMB_X1_Y17_N28
\L2|F[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[1]~1_combout\ = (\L0|cont_m\(1) & ((\L0|cont_m\(0) & ((\L0|cont_m\(3)))) # (!\L0|cont_m\(0) & (\L0|cont_m\(2))))) # (!\L0|cont_m\(1) & (\L0|cont_m\(2) & (\L0|cont_m\(0) $ (\L0|cont_m\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(2),
	datab => \L0|cont_m\(1),
	datac => \L0|cont_m\(0),
	datad => \L0|cont_m\(3),
	combout => \L2|F[1]~1_combout\);

-- Location: LCCOMB_X1_Y17_N14
\L2|F[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[2]~2_combout\ = (\L0|cont_m\(2) & (\L0|cont_m\(3) & ((\L0|cont_m\(1)) # (!\L0|cont_m\(0))))) # (!\L0|cont_m\(2) & (\L0|cont_m\(1) & (!\L0|cont_m\(0) & !\L0|cont_m\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(2),
	datab => \L0|cont_m\(1),
	datac => \L0|cont_m\(0),
	datad => \L0|cont_m\(3),
	combout => \L2|F[2]~2_combout\);

-- Location: LCCOMB_X1_Y17_N8
\L2|F[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[3]~3_combout\ = (\L0|cont_m\(1) & ((\L0|cont_m\(2) & (\L0|cont_m\(0))) # (!\L0|cont_m\(2) & (!\L0|cont_m\(0) & \L0|cont_m\(3))))) # (!\L0|cont_m\(1) & (!\L0|cont_m\(3) & (\L0|cont_m\(2) $ (\L0|cont_m\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(2),
	datab => \L0|cont_m\(1),
	datac => \L0|cont_m\(0),
	datad => \L0|cont_m\(3),
	combout => \L2|F[3]~3_combout\);

-- Location: LCCOMB_X1_Y17_N6
\L2|F[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[4]~4_combout\ = (\L0|cont_m\(1) & (((\L0|cont_m\(0) & !\L0|cont_m\(3))))) # (!\L0|cont_m\(1) & ((\L0|cont_m\(2) & ((!\L0|cont_m\(3)))) # (!\L0|cont_m\(2) & (\L0|cont_m\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(2),
	datab => \L0|cont_m\(1),
	datac => \L0|cont_m\(0),
	datad => \L0|cont_m\(3),
	combout => \L2|F[4]~4_combout\);

-- Location: LCCOMB_X1_Y17_N12
\L2|F[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[5]~5_combout\ = (\L0|cont_m\(2) & (\L0|cont_m\(0) & (\L0|cont_m\(1) $ (\L0|cont_m\(3))))) # (!\L0|cont_m\(2) & (!\L0|cont_m\(3) & ((\L0|cont_m\(1)) # (\L0|cont_m\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(2),
	datab => \L0|cont_m\(1),
	datac => \L0|cont_m\(0),
	datad => \L0|cont_m\(3),
	combout => \L2|F[5]~5_combout\);

-- Location: LCCOMB_X1_Y17_N10
\L2|F[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L2|F[6]~6_combout\ = (\L0|cont_m\(0) & ((\L0|cont_m\(3)) # (\L0|cont_m\(2) $ (\L0|cont_m\(1))))) # (!\L0|cont_m\(0) & ((\L0|cont_m\(1)) # (\L0|cont_m\(2) $ (\L0|cont_m\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(2),
	datab => \L0|cont_m\(1),
	datac => \L0|cont_m\(0),
	datad => \L0|cont_m\(3),
	combout => \L2|F[6]~6_combout\);

-- Location: LCCOMB_X3_Y17_N24
\L0|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Add3~2_combout\ = \L0|cont_m\(5) $ (\L0|cont_m\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(5),
	datac => \L0|cont_m\(4),
	combout => \L0|Add3~2_combout\);

-- Location: LCCOMB_X2_Y17_N0
\L0|cont_m[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|cont_m[5]~5_combout\ = (\L0|cont_m~12_combout\ & ((\L0|cont_m\(5)))) # (!\L0|cont_m~12_combout\ & (\L0|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add3~2_combout\,
	datac => \L0|cont_m\(5),
	datad => \L0|cont_m~12_combout\,
	combout => \L0|cont_m[5]~5_combout\);

-- Location: LCCOMB_X2_Y17_N14
\L0|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|Selector2~0_combout\ = (\L0|EA.INICIO~regout\ & \L0|cont_m\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|EA.INICIO~regout\,
	datad => \L0|cont_m\(5),
	combout => \L0|Selector2~0_combout\);

-- Location: LCFF_X2_Y17_N1
\L0|cont_m[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \L0|cont_m[5]~5_combout\,
	sdata => \L0|Selector2~0_combout\,
	sload => \L0|ALT_INV_EA.TESTES~regout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|cont_m\(5));

-- Location: LCCOMB_X3_Y17_N28
\L1|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[0]~0_combout\ = (\L0|cont_m\(6) & (!\L0|cont_m\(5) & (\L0|cont_m\(7) $ (!\L0|cont_m\(4))))) # (!\L0|cont_m\(6) & (\L0|cont_m\(4) & (\L0|cont_m\(5) $ (!\L0|cont_m\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(5),
	datab => \L0|cont_m\(6),
	datac => \L0|cont_m\(7),
	datad => \L0|cont_m\(4),
	combout => \L1|F[0]~0_combout\);

-- Location: LCCOMB_X3_Y17_N10
\L1|F[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[1]~1_combout\ = (\L0|cont_m\(5) & ((\L0|cont_m\(4) & ((\L0|cont_m\(7)))) # (!\L0|cont_m\(4) & (\L0|cont_m\(6))))) # (!\L0|cont_m\(5) & (\L0|cont_m\(6) & (\L0|cont_m\(7) $ (\L0|cont_m\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(5),
	datab => \L0|cont_m\(6),
	datac => \L0|cont_m\(7),
	datad => \L0|cont_m\(4),
	combout => \L1|F[1]~1_combout\);

-- Location: LCCOMB_X3_Y17_N16
\L1|F[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[2]~2_combout\ = (\L0|cont_m\(6) & (\L0|cont_m\(7) & ((\L0|cont_m\(5)) # (!\L0|cont_m\(4))))) # (!\L0|cont_m\(6) & (\L0|cont_m\(5) & (!\L0|cont_m\(7) & !\L0|cont_m\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(5),
	datab => \L0|cont_m\(6),
	datac => \L0|cont_m\(7),
	datad => \L0|cont_m\(4),
	combout => \L1|F[2]~2_combout\);

-- Location: LCCOMB_X3_Y17_N2
\L1|F[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[3]~3_combout\ = (\L0|cont_m\(5) & ((\L0|cont_m\(6) & ((\L0|cont_m\(4)))) # (!\L0|cont_m\(6) & (\L0|cont_m\(7) & !\L0|cont_m\(4))))) # (!\L0|cont_m\(5) & (!\L0|cont_m\(7) & (\L0|cont_m\(6) $ (\L0|cont_m\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(5),
	datab => \L0|cont_m\(6),
	datac => \L0|cont_m\(7),
	datad => \L0|cont_m\(4),
	combout => \L1|F[3]~3_combout\);

-- Location: LCCOMB_X3_Y17_N8
\L1|F[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[4]~4_combout\ = (\L0|cont_m\(5) & (((!\L0|cont_m\(7) & \L0|cont_m\(4))))) # (!\L0|cont_m\(5) & ((\L0|cont_m\(6) & (!\L0|cont_m\(7))) # (!\L0|cont_m\(6) & ((\L0|cont_m\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(5),
	datab => \L0|cont_m\(6),
	datac => \L0|cont_m\(7),
	datad => \L0|cont_m\(4),
	combout => \L1|F[4]~4_combout\);

-- Location: LCCOMB_X3_Y17_N22
\L1|F[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[5]~5_combout\ = (\L0|cont_m\(5) & (!\L0|cont_m\(7) & ((\L0|cont_m\(4)) # (!\L0|cont_m\(6))))) # (!\L0|cont_m\(5) & (\L0|cont_m\(4) & (\L0|cont_m\(6) $ (!\L0|cont_m\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(5),
	datab => \L0|cont_m\(6),
	datac => \L0|cont_m\(7),
	datad => \L0|cont_m\(4),
	combout => \L1|F[5]~5_combout\);

-- Location: LCCOMB_X3_Y17_N12
\L1|F[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F[6]~6_combout\ = (\L0|cont_m\(4) & ((\L0|cont_m\(7)) # (\L0|cont_m\(5) $ (\L0|cont_m\(6))))) # (!\L0|cont_m\(4) & ((\L0|cont_m\(5)) # (\L0|cont_m\(6) $ (\L0|cont_m\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|cont_m\(5),
	datab => \L0|cont_m\(6),
	datac => \L0|cont_m\(7),
	datad => \L0|cont_m\(4),
	combout => \L1|F[6]~6_combout\);

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

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[0]~I\ : cycloneii_io
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
	datain => \L4|F[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[1]~I\ : cycloneii_io
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
	datain => \L4|F[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[2]~I\ : cycloneii_io
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
	datain => \L4|F[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[3]~I\ : cycloneii_io
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
	datain => \L4|F[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[4]~I\ : cycloneii_io
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
	datain => \L4|F[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[5]~I\ : cycloneii_io
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
	datain => \L4|F[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[6]~I\ : cycloneii_io
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
	datain => \L4|ALT_INV_F[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[0]~I\ : cycloneii_io
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
	datain => \L3|F[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[1]~I\ : cycloneii_io
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
	datain => \L3|F[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[2]~I\ : cycloneii_io
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
	datain => \L3|F[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[3]~I\ : cycloneii_io
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
	datain => \L3|F[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[4]~I\ : cycloneii_io
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
	datain => \L3|F[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[5]~I\ : cycloneii_io
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
	datain => \L3|F[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[6]~I\ : cycloneii_io
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
	datain => \L3|ALT_INV_F[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[0]~I\ : cycloneii_io
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
	padio => ww_HEX6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[1]~I\ : cycloneii_io
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
	padio => ww_HEX6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[2]~I\ : cycloneii_io
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
	padio => ww_HEX6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[3]~I\ : cycloneii_io
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
	padio => ww_HEX6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[4]~I\ : cycloneii_io
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
	padio => ww_HEX6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[5]~I\ : cycloneii_io
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
	padio => ww_HEX6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[6]~I\ : cycloneii_io
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
	padio => ww_HEX6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[0]~I\ : cycloneii_io
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
	padio => ww_HEX7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[1]~I\ : cycloneii_io
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
	padio => ww_HEX7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[2]~I\ : cycloneii_io
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
	padio => ww_HEX7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[3]~I\ : cycloneii_io
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
	padio => ww_HEX7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[4]~I\ : cycloneii_io
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
	padio => ww_HEX7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[5]~I\ : cycloneii_io
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
	padio => ww_HEX7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[6]~I\ : cycloneii_io
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
	padio => ww_HEX7(6));
END structure;


