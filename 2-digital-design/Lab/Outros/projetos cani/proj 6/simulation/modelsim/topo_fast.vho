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

-- DATE "10/31/2014 09:19:49"

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
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 2)
	);
END topo;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 2);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L10|EA.INICIO~regout\ : std_logic;
SIGNAL \L10|WideOr8~0_combout\ : std_logic;
SIGNAL \L10|Selector2~1_combout\ : std_logic;
SIGNAL \L10|EA~12_combout\ : std_logic;
SIGNAL \KEY[2]~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \KEY[2]~clkctrl_outclk\ : std_logic;
SIGNAL \L10|EA.AGUARDA_SOLTAR_ENTER~regout\ : std_logic;
SIGNAL \L10|EA~13_combout\ : std_logic;
SIGNAL \L10|EA.OPERADOR~regout\ : std_logic;
SIGNAL \L10|Equal0~1_combout\ : std_logic;
SIGNAL \L10|Selector6~0_combout\ : std_logic;
SIGNAL \L10|EA.DIV_2~regout\ : std_logic;
SIGNAL \L10|Equal0~0_combout\ : std_logic;
SIGNAL \L10|Selector5~0_combout\ : std_logic;
SIGNAL \L10|EA.MULT_2~regout\ : std_logic;
SIGNAL \L10|Selector1~0_combout\ : std_logic;
SIGNAL \L10|Selector3~0_combout\ : std_logic;
SIGNAL \L10|EA.SOMA~regout\ : std_logic;
SIGNAL \L10|Selector2~0_combout\ : std_logic;
SIGNAL \L10|Selector7~0_combout\ : std_logic;
SIGNAL \L10|Selector7~1_combout\ : std_logic;
SIGNAL \L10|Selector4~0_combout\ : std_logic;
SIGNAL \L10|EA.OU~regout\ : std_logic;
SIGNAL \L10|Selector8~0_combout\ : std_logic;
SIGNAL \L10|Selector8~1_combout\ : std_logic;
SIGNAL \L10|Selector8~2_combout\ : std_logic;
SIGNAL \L10|Selector0~0_combout\ : std_logic;
SIGNAL \L10|en_1~regout\ : std_logic;
SIGNAL \L4|m[0]~0_combout\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[0]~0_combout\ : std_logic;
SIGNAL \L4|m[0]~1_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \L10|Selector1~1_combout\ : std_logic;
SIGNAL \L10|EA~14_combout\ : std_logic;
SIGNAL \L10|EA.ESCREVE_RES~regout\ : std_logic;
SIGNAL \L10|Selector1~2_combout\ : std_logic;
SIGNAL \L10|en_2~regout\ : std_logic;
SIGNAL \L3|sr[3]~feeder_combout\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[0]~1\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[1]~2_combout\ : std_logic;
SIGNAL \L4|m[1]~2_combout\ : std_logic;
SIGNAL \L4|m[1]~3_combout\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[1]~3\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[2]~4_combout\ : std_logic;
SIGNAL \L4|m[2]~4_combout\ : std_logic;
SIGNAL \L4|m[2]~5_combout\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[2]~5\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[3]~6_combout\ : std_logic;
SIGNAL \L4|m[3]~6_combout\ : std_logic;
SIGNAL \L4|m[3]~7_combout\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[3]~7\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[4]~8_combout\ : std_logic;
SIGNAL \L4|m[4]~8_combout\ : std_logic;
SIGNAL \L4|m[4]~9_combout\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[4]~9\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[5]~10_combout\ : std_logic;
SIGNAL \L4|m[5]~10_combout\ : std_logic;
SIGNAL \L4|m[5]~11_combout\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[5]~11\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[6]~12_combout\ : std_logic;
SIGNAL \L4|m[6]~12_combout\ : std_logic;
SIGNAL \L4|m[6]~13_combout\ : std_logic;
SIGNAL \L4|m[7]~14_combout\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[6]~13\ : std_logic;
SIGNAL \LHEAUHEUHAE|F[7]~14_combout\ : std_logic;
SIGNAL \L4|m[7]~15_combout\ : std_logic;
SIGNAL \L6|Q[2]~feeder_combout\ : std_logic;
SIGNAL \L9|F[0]~0_combout\ : std_logic;
SIGNAL \L9|F[1]~1_combout\ : std_logic;
SIGNAL \L9|F[2]~2_combout\ : std_logic;
SIGNAL \L9|F[3]~3_combout\ : std_logic;
SIGNAL \L9|F[4]~4_combout\ : std_logic;
SIGNAL \L9|F[5]~5_combout\ : std_logic;
SIGNAL \L9|F[6]~6_combout\ : std_logic;
SIGNAL \L5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \L8|F[0]~0_combout\ : std_logic;
SIGNAL \L8|F[1]~1_combout\ : std_logic;
SIGNAL \L8|F[2]~2_combout\ : std_logic;
SIGNAL \L8|F[3]~3_combout\ : std_logic;
SIGNAL \L8|F[4]~4_combout\ : std_logic;
SIGNAL \L8|F[5]~5_combout\ : std_logic;
SIGNAL \L8|F[6]~6_combout\ : std_logic;
SIGNAL \L6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L0|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L1|F\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L2|sr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L3|sr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \L10|selecao\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_KEY[2]~clkctrl_outclk\ : std_logic;
SIGNAL \L8|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L9|ALT_INV_F[6]~6_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\KEY[2]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY[2]~clk_delay_ctrl_clkout\);
\ALT_INV_KEY[2]~clkctrl_outclk\ <= NOT \KEY[2]~clkctrl_outclk\;
\L8|ALT_INV_F[6]~6_combout\ <= NOT \L8|F[6]~6_combout\;
\L9|ALT_INV_F[6]~6_combout\ <= NOT \L9|F[6]~6_combout\;

-- Location: LCFF_X63_Y1_N17
\L0|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \L10|en_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|Q\(3));

-- Location: LCFF_X61_Y1_N25
\L10|EA.INICIO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|Selector2~1_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|EA.INICIO~regout\);

-- Location: LCCOMB_X61_Y1_N6
\L10|WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|WideOr8~0_combout\ = (\L10|EA.ESCREVE_RES~regout\) # ((\L10|EA.AGUARDA_SOLTAR_ENTER~regout\) # ((\L10|EA.OPERADOR~regout\) # (!\L10|EA.INICIO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|EA.ESCREVE_RES~regout\,
	datab => \L10|EA.AGUARDA_SOLTAR_ENTER~regout\,
	datac => \L10|EA.INICIO~regout\,
	datad => \L10|EA.OPERADOR~regout\,
	combout => \L10|WideOr8~0_combout\);

-- Location: LCCOMB_X61_Y1_N24
\L10|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector2~1_combout\ = (\L10|EA.AGUARDA_SOLTAR_ENTER~regout\) # (((\L10|EA.OPERADOR~regout\) # (!\KEY~combout\(3))) # (!\L10|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|EA.AGUARDA_SOLTAR_ENTER~regout\,
	datab => \L10|Selector2~0_combout\,
	datac => \L10|EA.OPERADOR~regout\,
	datad => \KEY~combout\(3),
	combout => \L10|Selector2~1_combout\);

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
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: LCCOMB_X61_Y1_N30
\L10|EA~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|EA~12_combout\ = (!\KEY~combout\(3) & ((\L10|EA.AGUARDA_SOLTAR_ENTER~regout\) # (!\L10|EA.INICIO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|EA.INICIO~regout\,
	datac => \L10|EA.AGUARDA_SOLTAR_ENTER~regout\,
	datad => \KEY~combout\(3),
	combout => \L10|EA~12_combout\);

-- Location: CLKDELAYCTRL_G5
\KEY[2]~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \KEY[2]~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G5
\KEY[2]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[2]~clkctrl_outclk\);

-- Location: LCFF_X61_Y1_N31
\L10|EA.AGUARDA_SOLTAR_ENTER\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|EA~12_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|EA.AGUARDA_SOLTAR_ENTER~regout\);

-- Location: LCCOMB_X61_Y1_N0
\L10|EA~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|EA~13_combout\ = (\L10|EA.AGUARDA_SOLTAR_ENTER~regout\ & \KEY~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L10|EA.AGUARDA_SOLTAR_ENTER~regout\,
	datad => \KEY~combout\(3),
	combout => \L10|EA~13_combout\);

-- Location: LCFF_X61_Y1_N1
\L10|EA.OPERADOR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|EA~13_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|EA.OPERADOR~regout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
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
	padio => ww_SW(16),
	combout => \SW~combout\(16));

-- Location: LCCOMB_X60_Y1_N2
\L10|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Equal0~1_combout\ = (\L10|EA.OPERADOR~regout\ & !\SW~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L10|EA.OPERADOR~regout\,
	datac => \SW~combout\(16),
	combout => \L10|Equal0~1_combout\);

-- Location: LCCOMB_X60_Y1_N22
\L10|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector6~0_combout\ = (\SW~combout\(17) & ((\L10|Equal0~1_combout\) # ((\L10|EA.DIV_2~regout\ & !\KEY~combout\(3))))) # (!\SW~combout\(17) & (((\L10|EA.DIV_2~regout\ & !\KEY~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \L10|Equal0~1_combout\,
	datac => \L10|EA.DIV_2~regout\,
	datad => \KEY~combout\(3),
	combout => \L10|Selector6~0_combout\);

-- Location: LCFF_X60_Y1_N23
\L10|EA.DIV_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|Selector6~0_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|EA.DIV_2~regout\);

-- Location: LCCOMB_X60_Y1_N0
\L10|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Equal0~0_combout\ = (\L10|EA.OPERADOR~regout\ & \SW~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L10|EA.OPERADOR~regout\,
	datac => \SW~combout\(16),
	combout => \L10|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y1_N16
\L10|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector5~0_combout\ = (\SW~combout\(17) & ((\L10|Equal0~0_combout\) # ((\L10|EA.MULT_2~regout\ & !\KEY~combout\(3))))) # (!\SW~combout\(17) & (((\L10|EA.MULT_2~regout\ & !\KEY~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \L10|Equal0~0_combout\,
	datac => \L10|EA.MULT_2~regout\,
	datad => \KEY~combout\(3),
	combout => \L10|Selector5~0_combout\);

-- Location: LCFF_X60_Y1_N17
\L10|EA.MULT_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|Selector5~0_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|EA.MULT_2~regout\);

-- Location: LCCOMB_X61_Y1_N20
\L10|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector1~0_combout\ = (!\L10|EA.DIV_2~regout\ & !\L10|EA.MULT_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L10|EA.DIV_2~regout\,
	datad => \L10|EA.MULT_2~regout\,
	combout => \L10|Selector1~0_combout\);

-- Location: LCCOMB_X60_Y1_N12
\L10|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector3~0_combout\ = (\SW~combout\(17) & (((\L10|EA.SOMA~regout\ & \KEY~combout\(3))))) # (!\SW~combout\(17) & ((\L10|Equal0~1_combout\) # ((\L10|EA.SOMA~regout\ & \KEY~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \L10|Equal0~1_combout\,
	datac => \L10|EA.SOMA~regout\,
	datad => \KEY~combout\(3),
	combout => \L10|Selector3~0_combout\);

-- Location: LCFF_X60_Y1_N13
\L10|EA.SOMA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|Selector3~0_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|EA.SOMA~regout\);

-- Location: LCCOMB_X61_Y1_N22
\L10|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector2~0_combout\ = (!\L10|EA.OU~regout\ & !\L10|EA.SOMA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|EA.OU~regout\,
	datad => \L10|EA.SOMA~regout\,
	combout => \L10|Selector2~0_combout\);

-- Location: LCCOMB_X61_Y1_N2
\L10|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector7~0_combout\ = (\KEY~combout\(3) & (((\L10|selecao\(1) & !\L10|Selector2~0_combout\)) # (!\L10|Selector1~0_combout\))) # (!\KEY~combout\(3) & (\L10|selecao\(1) & (!\L10|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(3),
	datab => \L10|selecao\(1),
	datac => \L10|Selector1~0_combout\,
	datad => \L10|Selector2~0_combout\,
	combout => \L10|Selector7~0_combout\);

-- Location: LCCOMB_X61_Y1_N18
\L10|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector7~1_combout\ = (\L10|Selector7~0_combout\) # ((\L10|WideOr8~0_combout\ & \L10|selecao\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|WideOr8~0_combout\,
	datac => \L10|selecao\(1),
	datad => \L10|Selector7~0_combout\,
	combout => \L10|Selector7~1_combout\);

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
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCFF_X61_Y1_N19
\L10|selecao[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|Selector7~1_combout\,
	ena => \KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|selecao\(1));

-- Location: LCCOMB_X60_Y1_N14
\L10|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector4~0_combout\ = (\SW~combout\(17) & (((\L10|EA.OU~regout\ & \KEY~combout\(3))))) # (!\SW~combout\(17) & ((\L10|Equal0~0_combout\) # ((\L10|EA.OU~regout\ & \KEY~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \L10|Equal0~0_combout\,
	datac => \L10|EA.OU~regout\,
	datad => \KEY~combout\(3),
	combout => \L10|Selector4~0_combout\);

-- Location: LCFF_X60_Y1_N15
\L10|EA.OU\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|Selector4~0_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|EA.OU~regout\);

-- Location: LCCOMB_X61_Y1_N8
\L10|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector8~0_combout\ = (\L10|EA.OU~regout\) # ((\KEY~combout\(3) & (\L10|EA.SOMA~regout\)) # (!\KEY~combout\(3) & ((\L10|EA.DIV_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|EA.SOMA~regout\,
	datab => \KEY~combout\(3),
	datac => \L10|EA.DIV_2~regout\,
	datad => \L10|EA.OU~regout\,
	combout => \L10|Selector8~0_combout\);

-- Location: LCCOMB_X61_Y1_N14
\L10|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector8~1_combout\ = (\L10|selecao\(0) & ((\L10|WideOr8~0_combout\) # ((\L10|EA.MULT_2~regout\) # (\L10|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|WideOr8~0_combout\,
	datab => \L10|EA.MULT_2~regout\,
	datac => \L10|Selector8~0_combout\,
	datad => \L10|selecao\(0),
	combout => \L10|Selector8~1_combout\);

-- Location: LCCOMB_X61_Y1_N28
\L10|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector8~2_combout\ = (\L10|Selector8~1_combout\) # ((\KEY~combout\(3) & ((\L10|EA.MULT_2~regout\))) # (!\KEY~combout\(3) & (\L10|EA.OU~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|EA.OU~regout\,
	datab => \L10|EA.MULT_2~regout\,
	datac => \L10|Selector8~1_combout\,
	datad => \KEY~combout\(3),
	combout => \L10|Selector8~2_combout\);

-- Location: LCFF_X61_Y1_N29
\L10|selecao[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|Selector8~2_combout\,
	ena => \KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|selecao\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCFF_X63_Y1_N27
\L3|sr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	aclr => \KEY[2]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L3|sr\(2));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X61_Y1_N16
\L10|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector0~0_combout\ = (\L10|en_1~regout\ & (((\L10|EA.AGUARDA_SOLTAR_ENTER~regout\) # (!\L10|Selector2~0_combout\)))) # (!\L10|en_1~regout\ & (!\KEY~combout\(3) & ((\L10|EA.AGUARDA_SOLTAR_ENTER~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(3),
	datab => \L10|Selector2~0_combout\,
	datac => \L10|en_1~regout\,
	datad => \L10|EA.AGUARDA_SOLTAR_ENTER~regout\,
	combout => \L10|Selector0~0_combout\);

-- Location: LCFF_X61_Y1_N17
\L10|en_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|Selector0~0_combout\,
	ena => \KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|en_1~regout\);

-- Location: LCFF_X63_Y1_N9
\L0|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \L10|en_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|Q\(0));

-- Location: LCCOMB_X64_Y1_N14
\L4|m[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[0]~0_combout\ = (\L10|selecao\(1) & (\L3|sr\(2))) # (!\L10|selecao\(1) & (((\SW~combout\(0)) # (\L0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|selecao\(1),
	datab => \L3|sr\(2),
	datac => \SW~combout\(0),
	datad => \L0|Q\(0),
	combout => \L4|m[0]~0_combout\);

-- Location: LCCOMB_X63_Y1_N10
\LHEAUHEUHAE|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LHEAUHEUHAE|F[0]~0_combout\ = (\SW~combout\(0) & (\L0|Q\(0) $ (VCC))) # (!\SW~combout\(0) & (\L0|Q\(0) & VCC))
-- \LHEAUHEUHAE|F[0]~1\ = CARRY((\SW~combout\(0) & \L0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \L0|Q\(0),
	datad => VCC,
	combout => \LHEAUHEUHAE|F[0]~0_combout\,
	cout => \LHEAUHEUHAE|F[0]~1\);

-- Location: LCCOMB_X64_Y1_N12
\L4|m[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[0]~1_combout\ = (\L10|selecao\(1) & (!\L10|selecao\(0) & (\L4|m[0]~0_combout\))) # (!\L10|selecao\(1) & ((\L10|selecao\(0) & (\L4|m[0]~0_combout\)) # (!\L10|selecao\(0) & ((\LHEAUHEUHAE|F[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|selecao\(1),
	datab => \L10|selecao\(0),
	datac => \L4|m[0]~0_combout\,
	datad => \LHEAUHEUHAE|F[0]~0_combout\,
	combout => \L4|m[0]~1_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X61_Y1_N4
\L10|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector1~1_combout\ = (\L10|EA.SOMA~regout\) # ((\L10|EA.OU~regout\) # ((\KEY~combout\(3) & \L10|EA.AGUARDA_SOLTAR_ENTER~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|EA.SOMA~regout\,
	datab => \KEY~combout\(3),
	datac => \L10|EA.AGUARDA_SOLTAR_ENTER~regout\,
	datad => \L10|EA.OU~regout\,
	combout => \L10|Selector1~1_combout\);

-- Location: LCCOMB_X61_Y1_N10
\L10|EA~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|EA~14_combout\ = (!\KEY~combout\(3) & ((\L10|EA.OU~regout\) # ((\L10|EA.ESCREVE_RES~regout\) # (\L10|EA.SOMA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|EA.OU~regout\,
	datab => \KEY~combout\(3),
	datac => \L10|EA.ESCREVE_RES~regout\,
	datad => \L10|EA.SOMA~regout\,
	combout => \L10|EA~14_combout\);

-- Location: LCFF_X61_Y1_N11
\L10|EA.ESCREVE_RES\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|EA~14_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|EA.ESCREVE_RES~regout\);

-- Location: LCCOMB_X61_Y1_N12
\L10|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L10|Selector1~2_combout\ = ((\L10|EA.ESCREVE_RES~regout\) # ((\L10|Selector1~1_combout\ & \L10|en_2~regout\))) # (!\L10|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|Selector1~0_combout\,
	datab => \L10|Selector1~1_combout\,
	datac => \L10|en_2~regout\,
	datad => \L10|EA.ESCREVE_RES~regout\,
	combout => \L10|Selector1~2_combout\);

-- Location: LCFF_X61_Y1_N13
\L10|en_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L10|Selector1~2_combout\,
	ena => \KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L10|en_2~regout\);

-- Location: LCFF_X64_Y1_N15
\L3|sr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	aclr => \KEY[2]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L3|sr\(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X64_Y1_N28
\L3|sr[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \L3|sr[3]~feeder_combout\ = \SW~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(2),
	combout => \L3|sr[3]~feeder_combout\);

-- Location: LCFF_X64_Y1_N29
\L3|sr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L3|sr[3]~feeder_combout\,
	aclr => \KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L3|sr\(3));

-- Location: LCFF_X63_Y1_N29
\L0|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \L10|en_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|Q\(1));

-- Location: LCCOMB_X63_Y1_N8
\L1|F[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F\(1) = (\SW~combout\(1)) # (\L0|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datad => \L0|Q\(1),
	combout => \L1|F\(1));

-- Location: LCCOMB_X63_Y1_N12
\LHEAUHEUHAE|F[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LHEAUHEUHAE|F[1]~2_combout\ = (\SW~combout\(1) & ((\L0|Q\(1) & (\LHEAUHEUHAE|F[0]~1\ & VCC)) # (!\L0|Q\(1) & (!\LHEAUHEUHAE|F[0]~1\)))) # (!\SW~combout\(1) & ((\L0|Q\(1) & (!\LHEAUHEUHAE|F[0]~1\)) # (!\L0|Q\(1) & ((\LHEAUHEUHAE|F[0]~1\) # (GND)))))
-- \LHEAUHEUHAE|F[1]~3\ = CARRY((\SW~combout\(1) & (!\L0|Q\(1) & !\LHEAUHEUHAE|F[0]~1\)) # (!\SW~combout\(1) & ((!\LHEAUHEUHAE|F[0]~1\) # (!\L0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \L0|Q\(1),
	datad => VCC,
	cin => \LHEAUHEUHAE|F[0]~1\,
	combout => \LHEAUHEUHAE|F[1]~2_combout\,
	cout => \LHEAUHEUHAE|F[1]~3\);

-- Location: LCCOMB_X64_Y1_N26
\L4|m[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[1]~2_combout\ = (\L10|selecao\(1) & (\L10|selecao\(0))) # (!\L10|selecao\(1) & ((\L10|selecao\(0) & (\L1|F\(1))) # (!\L10|selecao\(0) & ((\LHEAUHEUHAE|F[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|selecao\(1),
	datab => \L10|selecao\(0),
	datac => \L1|F\(1),
	datad => \LHEAUHEUHAE|F[1]~2_combout\,
	combout => \L4|m[1]~2_combout\);

-- Location: LCCOMB_X64_Y1_N2
\L4|m[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[1]~3_combout\ = (\L10|selecao\(1) & ((\L4|m[1]~2_combout\ & (\L3|sr\(1))) # (!\L4|m[1]~2_combout\ & ((\L3|sr\(3)))))) # (!\L10|selecao\(1) & (((\L4|m[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|sr\(1),
	datab => \L3|sr\(3),
	datac => \L10|selecao\(1),
	datad => \L4|m[1]~2_combout\,
	combout => \L4|m[1]~3_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: LCFF_X63_Y1_N7
\L3|sr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	aclr => \KEY[2]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L3|sr\(4));

-- Location: LCFF_X63_Y1_N15
\L0|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \L10|en_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|Q\(2));

-- Location: LCCOMB_X64_Y1_N16
\L1|F[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F\(2) = (\SW~combout\(2)) # (\L0|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(2),
	datad => \L0|Q\(2),
	combout => \L1|F\(2));

-- Location: LCCOMB_X63_Y1_N14
\LHEAUHEUHAE|F[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LHEAUHEUHAE|F[2]~4_combout\ = ((\SW~combout\(2) $ (\L0|Q\(2) $ (!\LHEAUHEUHAE|F[1]~3\)))) # (GND)
-- \LHEAUHEUHAE|F[2]~5\ = CARRY((\SW~combout\(2) & ((\L0|Q\(2)) # (!\LHEAUHEUHAE|F[1]~3\))) # (!\SW~combout\(2) & (\L0|Q\(2) & !\LHEAUHEUHAE|F[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \L0|Q\(2),
	datad => VCC,
	cin => \LHEAUHEUHAE|F[1]~3\,
	combout => \LHEAUHEUHAE|F[2]~4_combout\,
	cout => \LHEAUHEUHAE|F[2]~5\);

-- Location: LCCOMB_X63_Y1_N0
\L4|m[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[2]~4_combout\ = (\L10|selecao\(0) & ((\L10|selecao\(1)) # ((\L1|F\(2))))) # (!\L10|selecao\(0) & (!\L10|selecao\(1) & ((\LHEAUHEUHAE|F[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|selecao\(0),
	datab => \L10|selecao\(1),
	datac => \L1|F\(2),
	datad => \LHEAUHEUHAE|F[2]~4_combout\,
	combout => \L4|m[2]~4_combout\);

-- Location: LCCOMB_X63_Y1_N26
\L4|m[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[2]~5_combout\ = (\L10|selecao\(1) & ((\L4|m[2]~4_combout\ & ((\L3|sr\(2)))) # (!\L4|m[2]~4_combout\ & (\L3|sr\(4))))) # (!\L10|selecao\(1) & (((\L4|m[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|sr\(4),
	datab => \L10|selecao\(1),
	datac => \L3|sr\(2),
	datad => \L4|m[2]~4_combout\,
	combout => \L4|m[2]~5_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: LCFF_X63_Y1_N13
\L3|sr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	aclr => \KEY[2]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L3|sr\(5));

-- Location: LCCOMB_X63_Y1_N28
\L1|F[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F\(3) = (\L0|Q\(3)) # (\SW~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Q\(3),
	datab => \SW~combout\(3),
	combout => \L1|F\(3));

-- Location: LCCOMB_X63_Y1_N16
\LHEAUHEUHAE|F[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LHEAUHEUHAE|F[3]~6_combout\ = (\L0|Q\(3) & ((\SW~combout\(3) & (\LHEAUHEUHAE|F[2]~5\ & VCC)) # (!\SW~combout\(3) & (!\LHEAUHEUHAE|F[2]~5\)))) # (!\L0|Q\(3) & ((\SW~combout\(3) & (!\LHEAUHEUHAE|F[2]~5\)) # (!\SW~combout\(3) & ((\LHEAUHEUHAE|F[2]~5\) # 
-- (GND)))))
-- \LHEAUHEUHAE|F[3]~7\ = CARRY((\L0|Q\(3) & (!\SW~combout\(3) & !\LHEAUHEUHAE|F[2]~5\)) # (!\L0|Q\(3) & ((!\LHEAUHEUHAE|F[2]~5\) # (!\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Q\(3),
	datab => \SW~combout\(3),
	datad => VCC,
	cin => \LHEAUHEUHAE|F[2]~5\,
	combout => \LHEAUHEUHAE|F[3]~6_combout\,
	cout => \LHEAUHEUHAE|F[3]~7\);

-- Location: LCCOMB_X64_Y1_N30
\L4|m[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[3]~6_combout\ = (\L10|selecao\(1) & (((\L10|selecao\(0))))) # (!\L10|selecao\(1) & ((\L10|selecao\(0) & (\L1|F\(3))) # (!\L10|selecao\(0) & ((\LHEAUHEUHAE|F[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|selecao\(1),
	datab => \L1|F\(3),
	datac => \L10|selecao\(0),
	datad => \LHEAUHEUHAE|F[3]~6_combout\,
	combout => \L4|m[3]~6_combout\);

-- Location: LCCOMB_X64_Y1_N18
\L4|m[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[3]~7_combout\ = (\L10|selecao\(1) & ((\L4|m[3]~6_combout\ & (\L3|sr\(3))) # (!\L4|m[3]~6_combout\ & ((\L3|sr\(5)))))) # (!\L10|selecao\(1) & (((\L4|m[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|selecao\(1),
	datab => \L3|sr\(3),
	datac => \L3|sr\(5),
	datad => \L4|m[3]~6_combout\,
	combout => \L4|m[3]~7_combout\);

-- Location: LCFF_X63_Y1_N19
\L0|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \L10|en_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|Q\(4));

-- Location: LCCOMB_X62_Y1_N14
\L1|F[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F\(4) = (\SW~combout\(4)) # (\L0|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datad => \L0|Q\(4),
	combout => \L1|F\(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCFF_X63_Y1_N31
\L3|sr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	aclr => \KEY[2]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L3|sr\(6));

-- Location: LCCOMB_X63_Y1_N18
\LHEAUHEUHAE|F[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LHEAUHEUHAE|F[4]~8_combout\ = ((\SW~combout\(4) $ (\L0|Q\(4) $ (!\LHEAUHEUHAE|F[3]~7\)))) # (GND)
-- \LHEAUHEUHAE|F[4]~9\ = CARRY((\SW~combout\(4) & ((\L0|Q\(4)) # (!\LHEAUHEUHAE|F[3]~7\))) # (!\SW~combout\(4) & (\L0|Q\(4) & !\LHEAUHEUHAE|F[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \L0|Q\(4),
	datad => VCC,
	cin => \LHEAUHEUHAE|F[3]~7\,
	combout => \LHEAUHEUHAE|F[4]~8_combout\,
	cout => \LHEAUHEUHAE|F[4]~9\);

-- Location: LCCOMB_X63_Y1_N30
\L4|m[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[4]~8_combout\ = (\L10|selecao\(0) & (\L10|selecao\(1))) # (!\L10|selecao\(0) & ((\L10|selecao\(1) & (\L3|sr\(6))) # (!\L10|selecao\(1) & ((\LHEAUHEUHAE|F[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|selecao\(0),
	datab => \L10|selecao\(1),
	datac => \L3|sr\(6),
	datad => \LHEAUHEUHAE|F[4]~8_combout\,
	combout => \L4|m[4]~8_combout\);

-- Location: LCCOMB_X63_Y1_N6
\L4|m[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[4]~9_combout\ = (\L10|selecao\(0) & ((\L4|m[4]~8_combout\ & ((\L3|sr\(4)))) # (!\L4|m[4]~8_combout\ & (\L1|F\(4))))) # (!\L10|selecao\(0) & (((\L4|m[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|F\(4),
	datab => \L10|selecao\(0),
	datac => \L3|sr\(4),
	datad => \L4|m[4]~8_combout\,
	combout => \L4|m[4]~9_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCFF_X63_Y1_N25
\L3|sr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	aclr => \KEY[2]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L3|sr\(7));

-- Location: LCFF_X63_Y1_N21
\L0|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \L10|en_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|Q\(5));

-- Location: LCCOMB_X62_Y1_N4
\L1|F[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F\(5) = (\SW~combout\(5)) # (\L0|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(5),
	datac => \L0|Q\(5),
	combout => \L1|F\(5));

-- Location: LCCOMB_X63_Y1_N20
\LHEAUHEUHAE|F[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LHEAUHEUHAE|F[5]~10_combout\ = (\L0|Q\(5) & ((\SW~combout\(5) & (\LHEAUHEUHAE|F[4]~9\ & VCC)) # (!\SW~combout\(5) & (!\LHEAUHEUHAE|F[4]~9\)))) # (!\L0|Q\(5) & ((\SW~combout\(5) & (!\LHEAUHEUHAE|F[4]~9\)) # (!\SW~combout\(5) & ((\LHEAUHEUHAE|F[4]~9\) # 
-- (GND)))))
-- \LHEAUHEUHAE|F[5]~11\ = CARRY((\L0|Q\(5) & (!\SW~combout\(5) & !\LHEAUHEUHAE|F[4]~9\)) # (!\L0|Q\(5) & ((!\LHEAUHEUHAE|F[4]~9\) # (!\SW~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Q\(5),
	datab => \SW~combout\(5),
	datad => VCC,
	cin => \LHEAUHEUHAE|F[4]~9\,
	combout => \LHEAUHEUHAE|F[5]~10_combout\,
	cout => \LHEAUHEUHAE|F[5]~11\);

-- Location: LCCOMB_X62_Y1_N26
\L4|m[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[5]~10_combout\ = (\L10|selecao\(1) & (\L10|selecao\(0))) # (!\L10|selecao\(1) & ((\L10|selecao\(0) & (\L1|F\(5))) # (!\L10|selecao\(0) & ((\LHEAUHEUHAE|F[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|selecao\(1),
	datab => \L10|selecao\(0),
	datac => \L1|F\(5),
	datad => \LHEAUHEUHAE|F[5]~10_combout\,
	combout => \L4|m[5]~10_combout\);

-- Location: LCCOMB_X62_Y1_N10
\L4|m[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[5]~11_combout\ = (\L10|selecao\(1) & ((\L4|m[5]~10_combout\ & (\L3|sr\(5))) # (!\L4|m[5]~10_combout\ & ((\L3|sr\(7)))))) # (!\L10|selecao\(1) & (((\L4|m[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|selecao\(1),
	datab => \L3|sr\(5),
	datac => \L3|sr\(7),
	datad => \L4|m[5]~10_combout\,
	combout => \L4|m[5]~11_combout\);

-- Location: LCFF_X63_Y1_N23
\L0|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \L10|en_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|Q\(6));

-- Location: LCCOMB_X62_Y1_N20
\L1|F[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \L1|F\(6) = (\SW~combout\(6)) # (\L0|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datac => \L0|Q\(6),
	combout => \L1|F\(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCFF_X63_Y1_N5
\L2|sr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	aclr => \KEY[2]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L2|sr\(6));

-- Location: LCCOMB_X63_Y1_N22
\LHEAUHEUHAE|F[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LHEAUHEUHAE|F[6]~12_combout\ = ((\SW~combout\(6) $ (\L0|Q\(6) $ (!\LHEAUHEUHAE|F[5]~11\)))) # (GND)
-- \LHEAUHEUHAE|F[6]~13\ = CARRY((\SW~combout\(6) & ((\L0|Q\(6)) # (!\LHEAUHEUHAE|F[5]~11\))) # (!\SW~combout\(6) & (\L0|Q\(6) & !\LHEAUHEUHAE|F[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \L0|Q\(6),
	datad => VCC,
	cin => \LHEAUHEUHAE|F[5]~11\,
	combout => \LHEAUHEUHAE|F[6]~12_combout\,
	cout => \LHEAUHEUHAE|F[6]~13\);

-- Location: LCCOMB_X63_Y1_N4
\L4|m[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[6]~12_combout\ = (\L10|selecao\(0) & (\L10|selecao\(1))) # (!\L10|selecao\(0) & ((\L10|selecao\(1) & (\L2|sr\(6))) # (!\L10|selecao\(1) & ((\LHEAUHEUHAE|F[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|selecao\(0),
	datab => \L10|selecao\(1),
	datac => \L2|sr\(6),
	datad => \LHEAUHEUHAE|F[6]~12_combout\,
	combout => \L4|m[6]~12_combout\);

-- Location: LCCOMB_X62_Y1_N16
\L4|m[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[6]~13_combout\ = (\L10|selecao\(0) & ((\L4|m[6]~12_combout\ & (\L3|sr\(6))) # (!\L4|m[6]~12_combout\ & ((\L1|F\(6)))))) # (!\L10|selecao\(0) & (((\L4|m[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L10|selecao\(0),
	datab => \L3|sr\(6),
	datac => \L1|F\(6),
	datad => \L4|m[6]~12_combout\,
	combout => \L4|m[6]~13_combout\);

-- Location: LCFF_X63_Y1_N3
\L0|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	sload => VCC,
	ena => \L10|en_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L0|Q\(7));

-- Location: LCCOMB_X63_Y1_N2
\L4|m[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[7]~14_combout\ = (\L10|selecao\(1) & (\L3|sr\(7))) # (!\L10|selecao\(1) & (((\SW~combout\(7)) # (\L0|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L3|sr\(7),
	datab => \SW~combout\(7),
	datac => \L0|Q\(7),
	datad => \L10|selecao\(1),
	combout => \L4|m[7]~14_combout\);

-- Location: LCCOMB_X63_Y1_N24
\LHEAUHEUHAE|F[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LHEAUHEUHAE|F[7]~14_combout\ = \SW~combout\(7) $ (\LHEAUHEUHAE|F[6]~13\ $ (\L0|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(7),
	datad => \L0|Q\(7),
	cin => \LHEAUHEUHAE|F[6]~13\,
	combout => \LHEAUHEUHAE|F[7]~14_combout\);

-- Location: LCCOMB_X62_Y1_N30
\L4|m[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[7]~15_combout\ = (\L10|selecao\(0) & (\L4|m[7]~14_combout\)) # (!\L10|selecao\(0) & (((!\L10|selecao\(1) & \LHEAUHEUHAE|F[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|m[7]~14_combout\,
	datab => \L10|selecao\(0),
	datac => \L10|selecao\(1),
	datad => \LHEAUHEUHAE|F[7]~14_combout\,
	combout => \L4|m[7]~15_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
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
	padio => ww_SW(17),
	combout => \SW~combout\(17));

-- Location: LCFF_X64_Y1_N13
\L6|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[0]~1_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \L10|en_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L6|Q\(0));

-- Location: LCFF_X64_Y1_N3
\L6|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[1]~3_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \L10|en_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L6|Q\(1));

-- Location: LCCOMB_X64_Y1_N24
\L6|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \L6|Q[2]~feeder_combout\ = \L4|m[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \L4|m[2]~5_combout\,
	combout => \L6|Q[2]~feeder_combout\);

-- Location: LCFF_X64_Y1_N25
\L6|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L6|Q[2]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \L10|en_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L6|Q\(2));

-- Location: LCFF_X64_Y1_N19
\L6|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[3]~7_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \L10|en_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L6|Q\(3));

-- Location: LCCOMB_X64_Y1_N20
\L9|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[0]~0_combout\ = (\L6|Q\(2) & (!\L6|Q\(1) & (\L6|Q\(0) $ (!\L6|Q\(3))))) # (!\L6|Q\(2) & (\L6|Q\(0) & (\L6|Q\(1) $ (!\L6|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(0),
	datab => \L6|Q\(1),
	datac => \L6|Q\(2),
	datad => \L6|Q\(3),
	combout => \L9|F[0]~0_combout\);

-- Location: LCCOMB_X64_Y1_N22
\L9|F[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[1]~1_combout\ = (\L6|Q\(1) & ((\L6|Q\(0) & ((\L6|Q\(3)))) # (!\L6|Q\(0) & (\L6|Q\(2))))) # (!\L6|Q\(1) & (\L6|Q\(2) & (\L6|Q\(0) $ (\L6|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(0),
	datab => \L6|Q\(1),
	datac => \L6|Q\(2),
	datad => \L6|Q\(3),
	combout => \L9|F[1]~1_combout\);

-- Location: LCCOMB_X64_Y1_N4
\L9|F[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[2]~2_combout\ = (\L6|Q\(2) & (\L6|Q\(3) & ((\L6|Q\(1)) # (!\L6|Q\(0))))) # (!\L6|Q\(2) & (!\L6|Q\(0) & (\L6|Q\(1) & !\L6|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(0),
	datab => \L6|Q\(1),
	datac => \L6|Q\(2),
	datad => \L6|Q\(3),
	combout => \L9|F[2]~2_combout\);

-- Location: LCCOMB_X64_Y1_N10
\L9|F[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[3]~3_combout\ = (\L6|Q\(1) & ((\L6|Q\(0) & (\L6|Q\(2))) # (!\L6|Q\(0) & (!\L6|Q\(2) & \L6|Q\(3))))) # (!\L6|Q\(1) & (!\L6|Q\(3) & (\L6|Q\(0) $ (\L6|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(0),
	datab => \L6|Q\(1),
	datac => \L6|Q\(2),
	datad => \L6|Q\(3),
	combout => \L9|F[3]~3_combout\);

-- Location: LCCOMB_X64_Y1_N0
\L9|F[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[4]~4_combout\ = (\L6|Q\(1) & (\L6|Q\(0) & ((!\L6|Q\(3))))) # (!\L6|Q\(1) & ((\L6|Q\(2) & ((!\L6|Q\(3)))) # (!\L6|Q\(2) & (\L6|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(0),
	datab => \L6|Q\(1),
	datac => \L6|Q\(2),
	datad => \L6|Q\(3),
	combout => \L9|F[4]~4_combout\);

-- Location: LCCOMB_X64_Y1_N6
\L9|F[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[5]~5_combout\ = (\L6|Q\(0) & (\L6|Q\(3) $ (((\L6|Q\(1)) # (!\L6|Q\(2)))))) # (!\L6|Q\(0) & (\L6|Q\(1) & (!\L6|Q\(2) & !\L6|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(0),
	datab => \L6|Q\(1),
	datac => \L6|Q\(2),
	datad => \L6|Q\(3),
	combout => \L9|F[5]~5_combout\);

-- Location: LCCOMB_X64_Y1_N8
\L9|F[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[6]~6_combout\ = (\L6|Q\(0) & ((\L6|Q\(3)) # (\L6|Q\(1) $ (\L6|Q\(2))))) # (!\L6|Q\(0) & ((\L6|Q\(1)) # (\L6|Q\(2) $ (\L6|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(0),
	datab => \L6|Q\(1),
	datac => \L6|Q\(2),
	datad => \L6|Q\(3),
	combout => \L9|F[6]~6_combout\);

-- Location: LCFF_X62_Y1_N11
\L5|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[5]~11_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \L10|en_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L5|Q\(1));

-- Location: LCFF_X62_Y1_N31
\L5|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[7]~15_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \L10|en_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L5|Q\(3));

-- Location: LCFF_X62_Y1_N17
\L5|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[6]~13_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \L10|en_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L5|Q\(2));

-- Location: LCCOMB_X62_Y1_N0
\L5|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \L5|Q[0]~feeder_combout\ = \L4|m[4]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \L4|m[4]~9_combout\,
	combout => \L5|Q[0]~feeder_combout\);

-- Location: LCFF_X62_Y1_N1
\L5|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L5|Q[0]~feeder_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \L10|en_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L5|Q\(0));

-- Location: LCCOMB_X62_Y1_N24
\L8|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L8|F[0]~0_combout\ = (\L5|Q\(3) & (\L5|Q\(0) & (\L5|Q\(1) $ (\L5|Q\(2))))) # (!\L5|Q\(3) & (!\L5|Q\(1) & (\L5|Q\(2) $ (\L5|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Q\(1),
	datab => \L5|Q\(3),
	datac => \L5|Q\(2),
	datad => \L5|Q\(0),
	combout => \L8|F[0]~0_combout\);

-- Location: LCCOMB_X62_Y1_N22
\L8|F[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L8|F[1]~1_combout\ = (\L5|Q\(1) & ((\L5|Q\(0) & (\L5|Q\(3))) # (!\L5|Q\(0) & ((\L5|Q\(2)))))) # (!\L5|Q\(1) & (\L5|Q\(2) & (\L5|Q\(3) $ (\L5|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Q\(1),
	datab => \L5|Q\(3),
	datac => \L5|Q\(2),
	datad => \L5|Q\(0),
	combout => \L8|F[1]~1_combout\);

-- Location: LCCOMB_X62_Y1_N28
\L8|F[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L8|F[2]~2_combout\ = (\L5|Q\(3) & (\L5|Q\(2) & ((\L5|Q\(1)) # (!\L5|Q\(0))))) # (!\L5|Q\(3) & (\L5|Q\(1) & (!\L5|Q\(2) & !\L5|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Q\(1),
	datab => \L5|Q\(3),
	datac => \L5|Q\(2),
	datad => \L5|Q\(0),
	combout => \L8|F[2]~2_combout\);

-- Location: LCCOMB_X62_Y1_N2
\L8|F[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L8|F[3]~3_combout\ = (\L5|Q\(1) & ((\L5|Q\(2) & ((\L5|Q\(0)))) # (!\L5|Q\(2) & (\L5|Q\(3) & !\L5|Q\(0))))) # (!\L5|Q\(1) & (!\L5|Q\(3) & (\L5|Q\(2) $ (\L5|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Q\(1),
	datab => \L5|Q\(3),
	datac => \L5|Q\(2),
	datad => \L5|Q\(0),
	combout => \L8|F[3]~3_combout\);

-- Location: LCCOMB_X62_Y1_N12
\L8|F[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L8|F[4]~4_combout\ = (\L5|Q\(1) & (!\L5|Q\(3) & ((\L5|Q\(0))))) # (!\L5|Q\(1) & ((\L5|Q\(2) & (!\L5|Q\(3))) # (!\L5|Q\(2) & ((\L5|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Q\(1),
	datab => \L5|Q\(3),
	datac => \L5|Q\(2),
	datad => \L5|Q\(0),
	combout => \L8|F[4]~4_combout\);

-- Location: LCCOMB_X62_Y1_N18
\L8|F[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L8|F[5]~5_combout\ = (\L5|Q\(1) & (!\L5|Q\(3) & ((\L5|Q\(0)) # (!\L5|Q\(2))))) # (!\L5|Q\(1) & (\L5|Q\(0) & (\L5|Q\(3) $ (!\L5|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Q\(1),
	datab => \L5|Q\(3),
	datac => \L5|Q\(2),
	datad => \L5|Q\(0),
	combout => \L8|F[5]~5_combout\);

-- Location: LCCOMB_X62_Y1_N8
\L8|F[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L8|F[6]~6_combout\ = (\L5|Q\(0) & ((\L5|Q\(3)) # (\L5|Q\(1) $ (\L5|Q\(2))))) # (!\L5|Q\(0) & ((\L5|Q\(1)) # (\L5|Q\(3) $ (\L5|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Q\(1),
	datab => \L5|Q\(3),
	datac => \L5|Q\(2),
	datad => \L5|Q\(0),
	combout => \L8|F[6]~6_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
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
	padio => ww_SW(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
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
	padio => ww_SW(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
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
	padio => ww_SW(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
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
	padio => ww_SW(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
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
	padio => ww_SW(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
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
	padio => ww_SW(15));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[0]~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L4|m[0]~1_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \L10|en_2~regout\,
	areset => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[1]~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L4|m[1]~3_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \L10|en_2~regout\,
	areset => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[2]~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L4|m[2]~5_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \L10|en_2~regout\,
	areset => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[3]~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L4|m[3]~7_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \L10|en_2~regout\,
	areset => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[4]~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L4|m[4]~9_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \L10|en_2~regout\,
	areset => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[5]~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L4|m[5]~11_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \L10|en_2~regout\,
	areset => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[6]~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L4|m[6]~13_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \L10|en_2~regout\,
	areset => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[7]~I\ : cycloneii_io
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
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \L4|m[7]~15_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \L10|en_2~regout\,
	areset => \ALT_INV_KEY[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[8]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[10]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[11]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[12]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[13]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[14]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[15]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[16]~I\ : cycloneii_io
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
	datain => \SW~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[17]~I\ : cycloneii_io
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
	datain => \SW~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(17));

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
	datain => \L9|F[0]~0_combout\,
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
	datain => \L9|F[1]~1_combout\,
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
	datain => \L9|F[2]~2_combout\,
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
	datain => \L9|F[3]~3_combout\,
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
	datain => \L9|F[4]~4_combout\,
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
	datain => \L9|F[5]~5_combout\,
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
	datain => \L9|ALT_INV_F[6]~6_combout\,
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
	datain => \L8|F[0]~0_combout\,
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
	datain => \L8|F[1]~1_combout\,
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
	datain => \L8|F[2]~2_combout\,
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
	datain => \L8|F[3]~3_combout\,
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
	datain => \L8|F[4]~4_combout\,
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
	datain => \L8|F[5]~5_combout\,
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
	datain => \L8|ALT_INV_F[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));
END structure;


