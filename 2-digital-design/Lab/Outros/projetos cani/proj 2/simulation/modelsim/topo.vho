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

-- DATE "09/26/2014 09:17:17"

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
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \L0|F[0]~0_combout\ : std_logic;
SIGNAL \L4|m[0]~0_combout\ : std_logic;
SIGNAL \L4|m[0]~1_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[2]~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \KEY[2]~clkctrl_outclk\ : std_logic;
SIGNAL \L0|F[0]~1\ : std_logic;
SIGNAL \L0|F[1]~2_combout\ : std_logic;
SIGNAL \L4|m[1]~14_combout\ : std_logic;
SIGNAL \L4|m[1]~15_combout\ : std_logic;
SIGNAL \L4|m[2]~12_combout\ : std_logic;
SIGNAL \L0|F[1]~3\ : std_logic;
SIGNAL \L0|F[2]~4_combout\ : std_logic;
SIGNAL \L4|m[2]~13_combout\ : std_logic;
SIGNAL \L0|F[2]~5\ : std_logic;
SIGNAL \L0|F[3]~6_combout\ : std_logic;
SIGNAL \L4|m[3]~10_combout\ : std_logic;
SIGNAL \L4|m[3]~11_combout\ : std_logic;
SIGNAL \L0|F[3]~7\ : std_logic;
SIGNAL \L0|F[4]~8_combout\ : std_logic;
SIGNAL \L4|m[4]~8_combout\ : std_logic;
SIGNAL \L4|m[4]~9_combout\ : std_logic;
SIGNAL \L0|F[4]~9\ : std_logic;
SIGNAL \L0|F[5]~10_combout\ : std_logic;
SIGNAL \L4|m[5]~6_combout\ : std_logic;
SIGNAL \L4|m[5]~7_combout\ : std_logic;
SIGNAL \L0|F[5]~11\ : std_logic;
SIGNAL \L0|F[6]~12_combout\ : std_logic;
SIGNAL \L4|m[6]~2_combout\ : std_logic;
SIGNAL \L4|m[6]~3_combout\ : std_logic;
SIGNAL \L0|F[6]~13\ : std_logic;
SIGNAL \L0|F[7]~14_combout\ : std_logic;
SIGNAL \L4|m[7]~4_combout\ : std_logic;
SIGNAL \L4|m[7]~5_combout\ : std_logic;
SIGNAL \L9|F[0]~0_combout\ : std_logic;
SIGNAL \L9|F[1]~1_combout\ : std_logic;
SIGNAL \L9|F[2]~2_combout\ : std_logic;
SIGNAL \L9|F[3]~3_combout\ : std_logic;
SIGNAL \L9|F[4]~4_combout\ : std_logic;
SIGNAL \L9|F[5]~5_combout\ : std_logic;
SIGNAL \L9|F[6]~6_combout\ : std_logic;
SIGNAL \L8|F[0]~0_combout\ : std_logic;
SIGNAL \L8|F[1]~1_combout\ : std_logic;
SIGNAL \L8|F[2]~2_combout\ : std_logic;
SIGNAL \L8|F[3]~3_combout\ : std_logic;
SIGNAL \L8|F[4]~4_combout\ : std_logic;
SIGNAL \L8|F[5]~5_combout\ : std_logic;
SIGNAL \L8|F[6]~6_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \L6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L8|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L9|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(3 DOWNTO 3);

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
\L8|ALT_INV_F[6]~6_combout\ <= NOT \L8|F[6]~6_combout\;
\L9|ALT_INV_F[6]~6_combout\ <= NOT \L9|F[6]~6_combout\;
\ALT_INV_KEY[2]~clkctrl_outclk\ <= NOT \KEY[2]~clkctrl_outclk\;
\ALT_INV_KEY~combout\(3) <= NOT \KEY~combout\(3);

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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

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
	padio => ww_SW(13),
	combout => \SW~combout\(13));

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
	padio => ww_SW(15),
	combout => \SW~combout\(15));

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
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: LCCOMB_X57_Y4_N10
\L0|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|F[0]~0_combout\ = (\SW~combout\(0) & (\SW~combout\(8) $ (VCC))) # (!\SW~combout\(0) & (\SW~combout\(8) & VCC))
-- \L0|F[0]~1\ = CARRY((\SW~combout\(0) & \SW~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \SW~combout\(8),
	datad => VCC,
	combout => \L0|F[0]~0_combout\,
	cout => \L0|F[0]~1\);

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

-- Location: LCCOMB_X58_Y4_N30
\L4|m[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[0]~0_combout\ = (\SW~combout\(16) & ((\SW~combout\(17) & ((!\SW~combout\(0)))) # (!\SW~combout\(17) & ((\SW~combout\(8)) # (\SW~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(16),
	datac => \SW~combout\(17),
	datad => \SW~combout\(0),
	combout => \L4|m[0]~0_combout\);

-- Location: LCCOMB_X58_Y4_N8
\L4|m[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[0]~1_combout\ = (\L4|m[0]~0_combout\) # ((\L0|F[0]~0_combout\ & !\SW~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|F[0]~0_combout\,
	datab => \SW~combout\(16),
	datad => \L4|m[0]~0_combout\,
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

-- Location: LCCOMB_X57_Y4_N12
\L0|F[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|F[1]~2_combout\ = (\SW~combout\(9) & ((\SW~combout\(1) & (\L0|F[0]~1\ & VCC)) # (!\SW~combout\(1) & (!\L0|F[0]~1\)))) # (!\SW~combout\(9) & ((\SW~combout\(1) & (!\L0|F[0]~1\)) # (!\SW~combout\(1) & ((\L0|F[0]~1\) # (GND)))))
-- \L0|F[1]~3\ = CARRY((\SW~combout\(9) & (!\SW~combout\(1) & !\L0|F[0]~1\)) # (!\SW~combout\(9) & ((!\L0|F[0]~1\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(1),
	datad => VCC,
	cin => \L0|F[0]~1\,
	combout => \L0|F[1]~2_combout\,
	cout => \L0|F[1]~3\);

-- Location: LCCOMB_X57_Y4_N30
\L4|m[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[1]~14_combout\ = (\SW~combout\(17) & (\SW~combout\(1) $ (((\SW~combout\(9)) # (\SW~combout\(16)))))) # (!\SW~combout\(17) & ((\SW~combout\(9)) # ((\SW~combout\(1)) # (!\SW~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(17),
	datac => \SW~combout\(16),
	datad => \SW~combout\(1),
	combout => \L4|m[1]~14_combout\);

-- Location: LCCOMB_X57_Y4_N28
\L4|m[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[1]~15_combout\ = (\L4|m[1]~14_combout\ & ((\L0|F[1]~2_combout\) # ((\SW~combout\(17)) # (\SW~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|F[1]~2_combout\,
	datab => \SW~combout\(17),
	datac => \SW~combout\(16),
	datad => \L4|m[1]~14_combout\,
	combout => \L4|m[1]~15_combout\);

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
	padio => ww_SW(10),
	combout => \SW~combout\(10));

-- Location: LCCOMB_X57_Y4_N4
\L4|m[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[2]~12_combout\ = (\SW~combout\(2) & (((!\SW~combout\(16) & !\SW~combout\(10))) # (!\SW~combout\(17)))) # (!\SW~combout\(2) & ((\SW~combout\(10)) # (\SW~combout\(16) $ (!\SW~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(16),
	datac => \SW~combout\(10),
	datad => \SW~combout\(17),
	combout => \L4|m[2]~12_combout\);

-- Location: LCCOMB_X57_Y4_N14
\L0|F[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|F[2]~4_combout\ = ((\SW~combout\(2) $ (\SW~combout\(10) $ (!\L0|F[1]~3\)))) # (GND)
-- \L0|F[2]~5\ = CARRY((\SW~combout\(2) & ((\SW~combout\(10)) # (!\L0|F[1]~3\))) # (!\SW~combout\(2) & (\SW~combout\(10) & !\L0|F[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(10),
	datad => VCC,
	cin => \L0|F[1]~3\,
	combout => \L0|F[2]~4_combout\,
	cout => \L0|F[2]~5\);

-- Location: LCCOMB_X57_Y4_N2
\L4|m[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[2]~13_combout\ = (\L4|m[2]~12_combout\ & ((\L0|F[2]~4_combout\) # ((\SW~combout\(16)) # (\SW~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4|m[2]~12_combout\,
	datab => \L0|F[2]~4_combout\,
	datac => \SW~combout\(16),
	datad => \SW~combout\(17),
	combout => \L4|m[2]~13_combout\);

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
	padio => ww_SW(11),
	combout => \SW~combout\(11));

-- Location: LCCOMB_X57_Y4_N16
\L0|F[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|F[3]~6_combout\ = (\SW~combout\(3) & ((\SW~combout\(11) & (\L0|F[2]~5\ & VCC)) # (!\SW~combout\(11) & (!\L0|F[2]~5\)))) # (!\SW~combout\(3) & ((\SW~combout\(11) & (!\L0|F[2]~5\)) # (!\SW~combout\(11) & ((\L0|F[2]~5\) # (GND)))))
-- \L0|F[3]~7\ = CARRY((\SW~combout\(3) & (!\SW~combout\(11) & !\L0|F[2]~5\)) # (!\SW~combout\(3) & ((!\L0|F[2]~5\) # (!\SW~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(11),
	datad => VCC,
	cin => \L0|F[2]~5\,
	combout => \L0|F[3]~6_combout\,
	cout => \L0|F[3]~7\);

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

-- Location: LCCOMB_X57_Y4_N26
\L4|m[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[3]~10_combout\ = (\SW~combout\(3) & (((!\SW~combout\(11) & !\SW~combout\(16))) # (!\SW~combout\(17)))) # (!\SW~combout\(3) & ((\SW~combout\(11)) # (\SW~combout\(16) $ (!\SW~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(16),
	datac => \SW~combout\(3),
	datad => \SW~combout\(17),
	combout => \L4|m[3]~10_combout\);

-- Location: LCCOMB_X57_Y4_N8
\L4|m[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[3]~11_combout\ = (\L4|m[3]~10_combout\ & ((\SW~combout\(17)) # ((\SW~combout\(16)) # (\L0|F[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \SW~combout\(16),
	datac => \L0|F[3]~6_combout\,
	datad => \L4|m[3]~10_combout\,
	combout => \L4|m[3]~11_combout\);

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
	padio => ww_SW(12),
	combout => \SW~combout\(12));

-- Location: LCCOMB_X57_Y4_N18
\L0|F[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|F[4]~8_combout\ = ((\SW~combout\(4) $ (\SW~combout\(12) $ (!\L0|F[3]~7\)))) # (GND)
-- \L0|F[4]~9\ = CARRY((\SW~combout\(4) & ((\SW~combout\(12)) # (!\L0|F[3]~7\))) # (!\SW~combout\(4) & (\SW~combout\(12) & !\L0|F[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(12),
	datad => VCC,
	cin => \L0|F[3]~7\,
	combout => \L0|F[4]~8_combout\,
	cout => \L0|F[4]~9\);

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

-- Location: LCCOMB_X58_Y4_N28
\L4|m[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[4]~8_combout\ = (\SW~combout\(17) & (\SW~combout\(4) $ (((\SW~combout\(12)) # (\SW~combout\(16)))))) # (!\SW~combout\(17) & ((\SW~combout\(12)) # ((\SW~combout\(4)) # (!\SW~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(16),
	datac => \SW~combout\(17),
	datad => \SW~combout\(4),
	combout => \L4|m[4]~8_combout\);

-- Location: LCCOMB_X58_Y4_N18
\L4|m[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[4]~9_combout\ = (\L4|m[4]~8_combout\ & ((\SW~combout\(16)) # ((\L0|F[4]~8_combout\) # (\SW~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \L0|F[4]~8_combout\,
	datac => \SW~combout\(17),
	datad => \L4|m[4]~8_combout\,
	combout => \L4|m[4]~9_combout\);

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

-- Location: LCCOMB_X57_Y4_N20
\L0|F[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|F[5]~10_combout\ = (\SW~combout\(13) & ((\SW~combout\(5) & (\L0|F[4]~9\ & VCC)) # (!\SW~combout\(5) & (!\L0|F[4]~9\)))) # (!\SW~combout\(13) & ((\SW~combout\(5) & (!\L0|F[4]~9\)) # (!\SW~combout\(5) & ((\L0|F[4]~9\) # (GND)))))
-- \L0|F[5]~11\ = CARRY((\SW~combout\(13) & (!\SW~combout\(5) & !\L0|F[4]~9\)) # (!\SW~combout\(13) & ((!\L0|F[4]~9\) # (!\SW~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \SW~combout\(5),
	datad => VCC,
	cin => \L0|F[4]~9\,
	combout => \L0|F[5]~10_combout\,
	cout => \L0|F[5]~11\);

-- Location: LCCOMB_X58_Y4_N10
\L4|m[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[5]~6_combout\ = (\SW~combout\(17) & (\SW~combout\(5) $ (((\SW~combout\(13)) # (\SW~combout\(16)))))) # (!\SW~combout\(17) & ((\SW~combout\(13)) # ((\SW~combout\(5)) # (!\SW~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \SW~combout\(16),
	datac => \SW~combout\(17),
	datad => \SW~combout\(5),
	combout => \L4|m[5]~6_combout\);

-- Location: LCCOMB_X58_Y4_N6
\L4|m[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[5]~7_combout\ = (\L4|m[5]~6_combout\ & ((\SW~combout\(17)) # ((\SW~combout\(16)) # (\L0|F[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \SW~combout\(16),
	datac => \L0|F[5]~10_combout\,
	datad => \L4|m[5]~6_combout\,
	combout => \L4|m[5]~7_combout\);

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

-- Location: LCCOMB_X57_Y4_N22
\L0|F[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|F[6]~12_combout\ = ((\SW~combout\(14) $ (\SW~combout\(6) $ (!\L0|F[5]~11\)))) # (GND)
-- \L0|F[6]~13\ = CARRY((\SW~combout\(14) & ((\SW~combout\(6)) # (!\L0|F[5]~11\))) # (!\SW~combout\(14) & (\SW~combout\(6) & !\L0|F[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(6),
	datad => VCC,
	cin => \L0|F[5]~11\,
	combout => \L0|F[6]~12_combout\,
	cout => \L0|F[6]~13\);

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
	padio => ww_SW(14),
	combout => \SW~combout\(14));

-- Location: LCCOMB_X58_Y4_N24
\L4|m[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[6]~2_combout\ = (\SW~combout\(17) & (\SW~combout\(6) $ (((\SW~combout\(16)) # (\SW~combout\(14)))))) # (!\SW~combout\(17) & (((\SW~combout\(6)) # (\SW~combout\(14))) # (!\SW~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \SW~combout\(16),
	datac => \SW~combout\(6),
	datad => \SW~combout\(14),
	combout => \L4|m[6]~2_combout\);

-- Location: LCCOMB_X58_Y4_N20
\L4|m[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[6]~3_combout\ = (\SW~combout\(16) & (((\L4|m[6]~2_combout\)))) # (!\SW~combout\(16) & ((\SW~combout\(17) & ((\L4|m[6]~2_combout\))) # (!\SW~combout\(17) & (\L0|F[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|F[6]~12_combout\,
	datab => \SW~combout\(16),
	datac => \L4|m[6]~2_combout\,
	datad => \SW~combout\(17),
	combout => \L4|m[6]~3_combout\);

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

-- Location: LCCOMB_X57_Y4_N24
\L0|F[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \L0|F[7]~14_combout\ = \SW~combout\(15) $ (\L0|F[6]~13\ $ (\SW~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datad => \SW~combout\(7),
	cin => \L0|F[6]~13\,
	combout => \L0|F[7]~14_combout\);

-- Location: LCCOMB_X57_Y4_N0
\L4|m[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[7]~4_combout\ = (\SW~combout\(17) & (\SW~combout\(7) $ (((\SW~combout\(15)) # (\SW~combout\(16)))))) # (!\SW~combout\(17) & ((\SW~combout\(15)) # ((\SW~combout\(7)) # (!\SW~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(17),
	datac => \SW~combout\(16),
	datad => \SW~combout\(7),
	combout => \L4|m[7]~4_combout\);

-- Location: LCCOMB_X57_Y4_N6
\L4|m[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L4|m[7]~5_combout\ = (\SW~combout\(17) & (((\L4|m[7]~4_combout\)))) # (!\SW~combout\(17) & ((\SW~combout\(16) & ((\L4|m[7]~4_combout\))) # (!\SW~combout\(16) & (\L0|F[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \SW~combout\(16),
	datac => \L0|F[7]~14_combout\,
	datad => \L4|m[7]~4_combout\,
	combout => \L4|m[7]~5_combout\);

-- Location: LCFF_X57_Y4_N3
\L6|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[2]~13_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \ALT_INV_KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L6|Q\(2));

-- Location: LCFF_X57_Y4_N29
\L6|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[1]~15_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \ALT_INV_KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L6|Q\(1));

-- Location: LCFF_X57_Y4_N9
\L6|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[3]~11_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \ALT_INV_KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L6|Q\(3));

-- Location: LCFF_X58_Y4_N9
\L6|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[0]~1_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \ALT_INV_KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L6|Q\(0));

-- Location: LCCOMB_X28_Y4_N0
\L9|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[0]~0_combout\ = (\L6|Q\(2) & (!\L6|Q\(1) & (\L6|Q\(3) $ (!\L6|Q\(0))))) # (!\L6|Q\(2) & (\L6|Q\(0) & (\L6|Q\(1) $ (!\L6|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(2),
	datab => \L6|Q\(1),
	datac => \L6|Q\(3),
	datad => \L6|Q\(0),
	combout => \L9|F[0]~0_combout\);

-- Location: LCCOMB_X28_Y4_N2
\L9|F[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[1]~1_combout\ = (\L6|Q\(1) & ((\L6|Q\(0) & ((\L6|Q\(3)))) # (!\L6|Q\(0) & (\L6|Q\(2))))) # (!\L6|Q\(1) & (\L6|Q\(2) & (\L6|Q\(3) $ (\L6|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(2),
	datab => \L6|Q\(1),
	datac => \L6|Q\(3),
	datad => \L6|Q\(0),
	combout => \L9|F[1]~1_combout\);

-- Location: LCCOMB_X28_Y4_N28
\L9|F[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[2]~2_combout\ = (\L6|Q\(2) & (\L6|Q\(3) & ((\L6|Q\(1)) # (!\L6|Q\(0))))) # (!\L6|Q\(2) & (\L6|Q\(1) & (!\L6|Q\(3) & !\L6|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(2),
	datab => \L6|Q\(1),
	datac => \L6|Q\(3),
	datad => \L6|Q\(0),
	combout => \L9|F[2]~2_combout\);

-- Location: LCCOMB_X28_Y4_N22
\L9|F[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[3]~3_combout\ = (\L6|Q\(1) & ((\L6|Q\(2) & ((\L6|Q\(0)))) # (!\L6|Q\(2) & (\L6|Q\(3) & !\L6|Q\(0))))) # (!\L6|Q\(1) & (!\L6|Q\(3) & (\L6|Q\(2) $ (\L6|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(2),
	datab => \L6|Q\(1),
	datac => \L6|Q\(3),
	datad => \L6|Q\(0),
	combout => \L9|F[3]~3_combout\);

-- Location: LCCOMB_X28_Y4_N8
\L9|F[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[4]~4_combout\ = (\L6|Q\(1) & (((!\L6|Q\(3) & \L6|Q\(0))))) # (!\L6|Q\(1) & ((\L6|Q\(2) & (!\L6|Q\(3))) # (!\L6|Q\(2) & ((\L6|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(2),
	datab => \L6|Q\(1),
	datac => \L6|Q\(3),
	datad => \L6|Q\(0),
	combout => \L9|F[4]~4_combout\);

-- Location: LCCOMB_X28_Y4_N10
\L9|F[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[5]~5_combout\ = (\L6|Q\(2) & (\L6|Q\(0) & (\L6|Q\(1) $ (\L6|Q\(3))))) # (!\L6|Q\(2) & (!\L6|Q\(3) & ((\L6|Q\(1)) # (\L6|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(2),
	datab => \L6|Q\(1),
	datac => \L6|Q\(3),
	datad => \L6|Q\(0),
	combout => \L9|F[5]~5_combout\);

-- Location: LCCOMB_X28_Y4_N12
\L9|F[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \L9|F[6]~6_combout\ = (\L6|Q\(0) & ((\L6|Q\(3)) # (\L6|Q\(2) $ (\L6|Q\(1))))) # (!\L6|Q\(0) & ((\L6|Q\(1)) # (\L6|Q\(2) $ (\L6|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Q\(2),
	datab => \L6|Q\(1),
	datac => \L6|Q\(3),
	datad => \L6|Q\(0),
	combout => \L9|F[6]~6_combout\);

-- Location: LCFF_X58_Y4_N7
\L5|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[5]~7_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \ALT_INV_KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L5|Q\(1));

-- Location: LCFF_X57_Y4_N7
\L5|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[7]~5_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \ALT_INV_KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L5|Q\(3));

-- Location: LCFF_X58_Y4_N21
\L5|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[6]~3_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \ALT_INV_KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L5|Q\(2));

-- Location: LCFF_X58_Y4_N19
\L5|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \L4|m[4]~9_combout\,
	aclr => \ALT_INV_KEY[2]~clkctrl_outclk\,
	ena => \ALT_INV_KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L5|Q\(0));

-- Location: LCCOMB_X58_Y4_N16
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

-- Location: LCCOMB_X58_Y4_N26
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

-- Location: LCCOMB_X58_Y4_N12
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

-- Location: LCCOMB_X58_Y4_N14
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

-- Location: LCCOMB_X58_Y4_N0
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

-- Location: LCCOMB_X58_Y4_N2
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

-- Location: LCCOMB_X58_Y4_N4
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
	outclkena => \ALT_INV_KEY~combout\(3),
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
	datain => \L4|m[1]~15_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \ALT_INV_KEY~combout\(3),
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
	datain => \L4|m[2]~13_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \ALT_INV_KEY~combout\(3),
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
	datain => \L4|m[3]~11_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \ALT_INV_KEY~combout\(3),
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
	outclkena => \ALT_INV_KEY~combout\(3),
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
	datain => \L4|m[5]~7_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \ALT_INV_KEY~combout\(3),
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
	datain => \L4|m[6]~3_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \ALT_INV_KEY~combout\(3),
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
	datain => \L4|m[7]~5_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \ALT_INV_KEY~combout\(3),
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
	datain => GND,
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
	datain => GND,
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


