-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "10/22/2024 23:00:32"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ula IS
    PORT (
	Ai : IN std_logic_vector(7 DOWNTO 0);
	Bi : IN std_logic_vector(7 DOWNTO 0);
	S0 : IN std_logic;
	S1 : IN std_logic;
	M : IN std_logic;
	Fi : OUT std_logic_vector(7 DOWNTO 0)
	);
END ula;

-- Design Ports Information
-- Fi[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fi[1]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fi[2]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fi[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fi[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fi[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fi[6]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fi[7]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[5]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[5]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[6]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[6]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ai : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bi : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_Fi : std_logic_vector(7 DOWNTO 0);
SIGNAL \Fi[0]~output_o\ : std_logic;
SIGNAL \Fi[1]~output_o\ : std_logic;
SIGNAL \Fi[2]~output_o\ : std_logic;
SIGNAL \Fi[3]~output_o\ : std_logic;
SIGNAL \Fi[4]~output_o\ : std_logic;
SIGNAL \Fi[5]~output_o\ : std_logic;
SIGNAL \Fi[6]~output_o\ : std_logic;
SIGNAL \Fi[7]~output_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \Ai[0]~input_o\ : std_logic;
SIGNAL \Bi[0]~input_o\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \Fi~0_combout\ : std_logic;
SIGNAL \Ai[1]~input_o\ : std_logic;
SIGNAL \Bi[1]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Fi~1_combout\ : std_logic;
SIGNAL \Bi[2]~input_o\ : std_logic;
SIGNAL \Ai[2]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Fi~2_combout\ : std_logic;
SIGNAL \Ai[3]~input_o\ : std_logic;
SIGNAL \Bi[3]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Fi~3_combout\ : std_logic;
SIGNAL \Bi[4]~input_o\ : std_logic;
SIGNAL \Ai[4]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Fi~4_combout\ : std_logic;
SIGNAL \Bi[5]~input_o\ : std_logic;
SIGNAL \Ai[5]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Fi~5_combout\ : std_logic;
SIGNAL \Bi[6]~input_o\ : std_logic;
SIGNAL \Ai[6]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Fi~6_combout\ : std_logic;
SIGNAL \Bi[7]~input_o\ : std_logic;
SIGNAL \Ai[7]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Fi~7_combout\ : std_logic;
SIGNAL \ALT_INV_Ai[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bi[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ai[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bi[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ai[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bi[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ai[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bi[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ai[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bi[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_S0~input_o\ : std_logic;
SIGNAL \ALT_INV_S1~input_o\ : std_logic;
SIGNAL \ALT_INV_Ai[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_M~input_o\ : std_logic;
SIGNAL \ALT_INV_Bi[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ai[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bi[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ai[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bi[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;

BEGIN

ww_Ai <= Ai;
ww_Bi <= Bi;
ww_S0 <= S0;
ww_S1 <= S1;
ww_M <= M;
Fi <= ww_Fi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Ai[7]~input_o\ <= NOT \Ai[7]~input_o\;
\ALT_INV_Bi[7]~input_o\ <= NOT \Bi[7]~input_o\;
\ALT_INV_Ai[6]~input_o\ <= NOT \Ai[6]~input_o\;
\ALT_INV_Bi[6]~input_o\ <= NOT \Bi[6]~input_o\;
\ALT_INV_Ai[5]~input_o\ <= NOT \Ai[5]~input_o\;
\ALT_INV_Bi[5]~input_o\ <= NOT \Bi[5]~input_o\;
\ALT_INV_Ai[4]~input_o\ <= NOT \Ai[4]~input_o\;
\ALT_INV_Bi[4]~input_o\ <= NOT \Bi[4]~input_o\;
\ALT_INV_Ai[3]~input_o\ <= NOT \Ai[3]~input_o\;
\ALT_INV_Bi[3]~input_o\ <= NOT \Bi[3]~input_o\;
\ALT_INV_S0~input_o\ <= NOT \S0~input_o\;
\ALT_INV_S1~input_o\ <= NOT \S1~input_o\;
\ALT_INV_Ai[2]~input_o\ <= NOT \Ai[2]~input_o\;
\ALT_INV_M~input_o\ <= NOT \M~input_o\;
\ALT_INV_Bi[2]~input_o\ <= NOT \Bi[2]~input_o\;
\ALT_INV_Ai[1]~input_o\ <= NOT \Ai[1]~input_o\;
\ALT_INV_Bi[1]~input_o\ <= NOT \Bi[1]~input_o\;
\ALT_INV_Ai[0]~input_o\ <= NOT \Ai[0]~input_o\;
\ALT_INV_Bi[0]~input_o\ <= NOT \Bi[0]~input_o\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;

-- Location: IOOBUF_X30_Y0_N36
\Fi[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fi~0_combout\,
	devoe => ww_devoe,
	o => \Fi[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N33
\Fi[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fi~1_combout\,
	devoe => ww_devoe,
	o => \Fi[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N67
\Fi[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fi~2_combout\,
	devoe => ww_devoe,
	o => \Fi[2]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\Fi[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fi~3_combout\,
	devoe => ww_devoe,
	o => \Fi[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N98
\Fi[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fi~4_combout\,
	devoe => ww_devoe,
	o => \Fi[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N98
\Fi[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fi~5_combout\,
	devoe => ww_devoe,
	o => \Fi[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N36
\Fi[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fi~6_combout\,
	devoe => ww_devoe,
	o => \Fi[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N67
\Fi[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fi~7_combout\,
	devoe => ww_devoe,
	o => \Fi[7]~output_o\);

-- Location: IOIBUF_X9_Y0_N32
\S0~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X9_Y0_N94
\S1~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\Ai[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(0),
	o => \Ai[0]~input_o\);

-- Location: IOIBUF_X3_Y0_N32
\Bi[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(0),
	o => \Bi[0]~input_o\);

-- Location: MLABCELL_X16_Y4_N0
\Add0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(( VCC ) + ( (!\S1~input_o\ & \S0~input_o\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S1~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	cin => GND,
	cout => \Add0~2_cout\);

-- Location: MLABCELL_X16_Y4_N2
\Add0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \Ai[0]~input_o\ ) + ( (!\S0~input_o\ $ (!\Bi[0]~input_o\)) # (\S1~input_o\) ) + ( \Add0~2_cout\ ))
-- \Add0~6\ = CARRY(( \Ai[0]~input_o\ ) + ( (!\S0~input_o\ $ (!\Bi[0]~input_o\)) # (\S1~input_o\) ) + ( \Add0~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000100010000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_Ai[0]~input_o\,
	dataf => \ALT_INV_Bi[0]~input_o\,
	cin => \Add0~2_cout\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: IOIBUF_X9_Y0_N63
\M~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: MLABCELL_X16_Y4_N22
\Fi~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Fi~0_combout\ = ( \Ai[0]~input_o\ & ( \M~input_o\ & ( \Add0~5_sumout\ ) ) ) # ( !\Ai[0]~input_o\ & ( \M~input_o\ & ( \Add0~5_sumout\ ) ) ) # ( \Ai[0]~input_o\ & ( !\M~input_o\ & ( !\S1~input_o\ $ (((!\S0~input_o\ & !\Bi[0]~input_o\))) ) ) ) # ( 
-- !\Ai[0]~input_o\ & ( !\M~input_o\ & ( (!\S0~input_o\ & (\S1~input_o\ & \Bi[0]~input_o\)) # (\S0~input_o\ & ((\Bi[0]~input_o\) # (\S1~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111011001101100110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Bi[0]~input_o\,
	datae => \ALT_INV_Ai[0]~input_o\,
	dataf => \ALT_INV_M~input_o\,
	combout => \Fi~0_combout\);

-- Location: IOIBUF_X32_Y0_N1
\Ai[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(1),
	o => \Ai[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N32
\Bi[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(1),
	o => \Bi[1]~input_o\);

-- Location: MLABCELL_X16_Y4_N4
\Add0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \Ai[1]~input_o\ ) + ( !\S0~input_o\ $ (((!\Bi[1]~input_o\) # (\S1~input_o\))) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \Ai[1]~input_o\ ) + ( !\S0~input_o\ $ (((!\Bi[1]~input_o\) # (\S1~input_o\))) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_Ai[1]~input_o\,
	dataf => \ALT_INV_Bi[1]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X16_Y4_N24
\Fi~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Fi~1_combout\ = ( \Ai[1]~input_o\ & ( \Bi[1]~input_o\ & ( (!\M~input_o\ & ((!\S1~input_o\))) # (\M~input_o\ & (\Add0~9_sumout\)) ) ) ) # ( !\Ai[1]~input_o\ & ( \Bi[1]~input_o\ & ( (!\M~input_o\ & (((\S1~input_o\) # (\S0~input_o\)))) # (\M~input_o\ & 
-- (\Add0~9_sumout\)) ) ) ) # ( \Ai[1]~input_o\ & ( !\Bi[1]~input_o\ & ( (!\M~input_o\ & ((!\S0~input_o\ $ (!\S1~input_o\)))) # (\M~input_o\ & (\Add0~9_sumout\)) ) ) ) # ( !\Ai[1]~input_o\ & ( !\Bi[1]~input_o\ & ( (!\M~input_o\ & (((\S0~input_o\ & 
-- \S1~input_o\)))) # (\M~input_o\ & (\Add0~9_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000111011101000100011101110111011101110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~9_sumout\,
	datab => \ALT_INV_M~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_S1~input_o\,
	datae => \ALT_INV_Ai[1]~input_o\,
	dataf => \ALT_INV_Bi[1]~input_o\,
	combout => \Fi~1_combout\);

-- Location: IOIBUF_X9_Y0_N1
\Bi[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(2),
	o => \Bi[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N94
\Ai[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(2),
	o => \Ai[2]~input_o\);

-- Location: MLABCELL_X16_Y4_N6
\Add0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \Ai[2]~input_o\ ) + ( !\S0~input_o\ $ (((!\Bi[2]~input_o\) # (\S1~input_o\))) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \Ai[2]~input_o\ ) + ( !\S0~input_o\ $ (((!\Bi[2]~input_o\) # (\S1~input_o\))) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datad => \ALT_INV_Ai[2]~input_o\,
	dataf => \ALT_INV_Bi[2]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X15_Y4_N22
\Fi~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Fi~2_combout\ = ( \Ai[2]~input_o\ & ( \Add0~13_sumout\ & ( (!\S1~input_o\ $ (((!\Bi[2]~input_o\ & !\S0~input_o\)))) # (\M~input_o\) ) ) ) # ( !\Ai[2]~input_o\ & ( \Add0~13_sumout\ & ( ((!\S1~input_o\ & (\Bi[2]~input_o\ & \S0~input_o\)) # (\S1~input_o\ & 
-- ((\S0~input_o\) # (\Bi[2]~input_o\)))) # (\M~input_o\) ) ) ) # ( \Ai[2]~input_o\ & ( !\Add0~13_sumout\ & ( (!\M~input_o\ & (!\S1~input_o\ $ (((!\Bi[2]~input_o\ & !\S0~input_o\))))) ) ) ) # ( !\Ai[2]~input_o\ & ( !\Add0~13_sumout\ & ( (!\M~input_o\ & 
-- ((!\S1~input_o\ & (\Bi[2]~input_o\ & \S0~input_o\)) # (\S1~input_o\ & ((\S0~input_o\) # (\Bi[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110000011000001010000000011111011111110110111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1~input_o\,
	datab => \ALT_INV_Bi[2]~input_o\,
	datac => \ALT_INV_M~input_o\,
	datad => \ALT_INV_S0~input_o\,
	datae => \ALT_INV_Ai[2]~input_o\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \Fi~2_combout\);

-- Location: IOIBUF_X11_Y0_N94
\Ai[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(3),
	o => \Ai[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\Bi[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(3),
	o => \Bi[3]~input_o\);

-- Location: MLABCELL_X16_Y4_N8
\Add0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \Ai[3]~input_o\ ) + ( !\S0~input_o\ $ (((!\Bi[3]~input_o\) # (\S1~input_o\))) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \Ai[3]~input_o\ ) + ( !\S0~input_o\ $ (((!\Bi[3]~input_o\) # (\S1~input_o\))) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_Ai[3]~input_o\,
	dataf => \ALT_INV_Bi[3]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X16_Y4_N28
\Fi~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Fi~3_combout\ = ( \Add0~17_sumout\ & ( \Bi[3]~input_o\ & ( ((!\Ai[3]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (\Ai[3]~input_o\ & (!\S1~input_o\))) # (\M~input_o\) ) ) ) # ( !\Add0~17_sumout\ & ( \Bi[3]~input_o\ & ( (!\M~input_o\ & 
-- ((!\Ai[3]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) # (\Ai[3]~input_o\ & (!\S1~input_o\)))) ) ) ) # ( \Add0~17_sumout\ & ( !\Bi[3]~input_o\ & ( ((!\Ai[3]~input_o\ & (\S1~input_o\ & \S0~input_o\)) # (\Ai[3]~input_o\ & (!\S1~input_o\ $ 
-- (!\S0~input_o\)))) # (\M~input_o\) ) ) ) # ( !\Add0~17_sumout\ & ( !\Bi[3]~input_o\ & ( (!\M~input_o\ & ((!\Ai[3]~input_o\ & (\S1~input_o\ & \S0~input_o\)) # (\Ai[3]~input_o\ & (!\S1~input_o\ $ (!\S0~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000000000000101101111111101101110000000000110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Ai[3]~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_M~input_o\,
	datae => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_Bi[3]~input_o\,
	combout => \Fi~3_combout\);

-- Location: IOIBUF_X11_Y0_N63
\Bi[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(4),
	o => \Bi[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N63
\Ai[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(4),
	o => \Ai[4]~input_o\);

-- Location: MLABCELL_X16_Y4_N10
\Add0~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \Ai[4]~input_o\ ) + ( !\S0~input_o\ $ (((!\Bi[4]~input_o\) # (\S1~input_o\))) ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \Ai[4]~input_o\ ) + ( !\S0~input_o\ $ (((!\Bi[4]~input_o\) # (\S1~input_o\))) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_Bi[4]~input_o\,
	datad => \ALT_INV_Ai[4]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X15_Y4_N26
\Fi~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Fi~4_combout\ = ( \M~input_o\ & ( \Ai[4]~input_o\ & ( \Add0~21_sumout\ ) ) ) # ( !\M~input_o\ & ( \Ai[4]~input_o\ & ( !\S1~input_o\ $ (((!\Bi[4]~input_o\ & !\S0~input_o\))) ) ) ) # ( \M~input_o\ & ( !\Ai[4]~input_o\ & ( \Add0~21_sumout\ ) ) ) # ( 
-- !\M~input_o\ & ( !\Ai[4]~input_o\ & ( (!\S1~input_o\ & (\Bi[4]~input_o\ & \S0~input_o\)) # (\S1~input_o\ & ((\S0~input_o\) # (\Bi[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000011110000111101100110101010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1~input_o\,
	datab => \ALT_INV_Bi[4]~input_o\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_S0~input_o\,
	datae => \ALT_INV_M~input_o\,
	dataf => \ALT_INV_Ai[4]~input_o\,
	combout => \Fi~4_combout\);

-- Location: IOIBUF_X11_Y0_N1
\Bi[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(5),
	o => \Bi[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\Ai[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(5),
	o => \Ai[5]~input_o\);

-- Location: MLABCELL_X16_Y4_N12
\Add0~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \Ai[5]~input_o\ ) + ( !\S0~input_o\ $ (((!\Bi[5]~input_o\) # (\S1~input_o\))) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \Ai[5]~input_o\ ) + ( !\S0~input_o\ $ (((!\Bi[5]~input_o\) # (\S1~input_o\))) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_Bi[5]~input_o\,
	datad => \ALT_INV_Ai[5]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X16_Y4_N32
\Fi~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Fi~5_combout\ = ( \Ai[5]~input_o\ & ( \S0~input_o\ & ( (!\M~input_o\ & ((!\S1~input_o\))) # (\M~input_o\ & (\Add0~25_sumout\)) ) ) ) # ( !\Ai[5]~input_o\ & ( \S0~input_o\ & ( (!\M~input_o\ & (((\S1~input_o\)) # (\Bi[5]~input_o\))) # (\M~input_o\ & 
-- (((\Add0~25_sumout\)))) ) ) ) # ( \Ai[5]~input_o\ & ( !\S0~input_o\ & ( (!\M~input_o\ & (!\Bi[5]~input_o\ $ (((!\S1~input_o\))))) # (\M~input_o\ & (((\Add0~25_sumout\)))) ) ) ) # ( !\Ai[5]~input_o\ & ( !\S0~input_o\ & ( (!\M~input_o\ & (\Bi[5]~input_o\ & 
-- ((\S1~input_o\)))) # (\M~input_o\ & (((\Add0~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111010001111000101101000111110011111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bi[5]~input_o\,
	datab => \ALT_INV_M~input_o\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_S1~input_o\,
	datae => \ALT_INV_Ai[5]~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	combout => \Fi~5_combout\);

-- Location: IOIBUF_X5_Y0_N63
\Bi[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(6),
	o => \Bi[6]~input_o\);

-- Location: IOIBUF_X30_Y0_N94
\Ai[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(6),
	o => \Ai[6]~input_o\);

-- Location: MLABCELL_X16_Y4_N14
\Add0~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\S0~input_o\ $ (((!\Bi[6]~input_o\) # (\S1~input_o\))) ) + ( \Ai[6]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !\S0~input_o\ $ (((!\Bi[6]~input_o\) # (\S1~input_o\))) ) + ( \Ai[6]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_Bi[6]~input_o\,
	dataf => \ALT_INV_Ai[6]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X15_Y4_N10
\Fi~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Fi~6_combout\ = ( \Add0~29_sumout\ & ( \Ai[6]~input_o\ & ( (!\S1~input_o\ $ (((!\Bi[6]~input_o\ & !\S0~input_o\)))) # (\M~input_o\) ) ) ) # ( !\Add0~29_sumout\ & ( \Ai[6]~input_o\ & ( (!\M~input_o\ & (!\S1~input_o\ $ (((!\Bi[6]~input_o\ & 
-- !\S0~input_o\))))) ) ) ) # ( \Add0~29_sumout\ & ( !\Ai[6]~input_o\ & ( ((!\S1~input_o\ & (\Bi[6]~input_o\ & \S0~input_o\)) # (\S1~input_o\ & ((\S0~input_o\) # (\Bi[6]~input_o\)))) # (\M~input_o\) ) ) ) # ( !\Add0~29_sumout\ & ( !\Ai[6]~input_o\ & ( 
-- (!\M~input_o\ & ((!\S1~input_o\ & (\Bi[6]~input_o\ & \S0~input_o\)) # (\S1~input_o\ & ((\S0~input_o\) # (\Bi[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110000000111110111111101100000101000000110111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1~input_o\,
	datab => \ALT_INV_Bi[6]~input_o\,
	datac => \ALT_INV_M~input_o\,
	datad => \ALT_INV_S0~input_o\,
	datae => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_Ai[6]~input_o\,
	combout => \Fi~6_combout\);

-- Location: IOIBUF_X11_Y0_N32
\Bi[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(7),
	o => \Bi[7]~input_o\);

-- Location: IOIBUF_X29_Y0_N94
\Ai[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(7),
	o => \Ai[7]~input_o\);

-- Location: MLABCELL_X16_Y4_N16
\Add0~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\S0~input_o\ $ (((!\Bi[7]~input_o\) # (\S1~input_o\))) ) + ( \Ai[7]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_Bi[7]~input_o\,
	dataf => \ALT_INV_Ai[7]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\);

-- Location: MLABCELL_X16_Y4_N36
\Fi~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Fi~7_combout\ = ( \M~input_o\ & ( \Ai[7]~input_o\ & ( \Add0~33_sumout\ ) ) ) # ( !\M~input_o\ & ( \Ai[7]~input_o\ & ( !\S1~input_o\ $ (((!\Bi[7]~input_o\ & !\S0~input_o\))) ) ) ) # ( \M~input_o\ & ( !\Ai[7]~input_o\ & ( \Add0~33_sumout\ ) ) ) # ( 
-- !\M~input_o\ & ( !\Ai[7]~input_o\ & ( (!\Bi[7]~input_o\ & (\S1~input_o\ & \S0~input_o\)) # (\Bi[7]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000000001111111101101100011011000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bi[7]~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_Add0~33_sumout\,
	datae => \ALT_INV_M~input_o\,
	dataf => \ALT_INV_Ai[7]~input_o\,
	combout => \Fi~7_combout\);

ww_Fi(0) <= \Fi[0]~output_o\;

ww_Fi(1) <= \Fi[1]~output_o\;

ww_Fi(2) <= \Fi[2]~output_o\;

ww_Fi(3) <= \Fi[3]~output_o\;

ww_Fi(4) <= \Fi[4]~output_o\;

ww_Fi(5) <= \Fi[5]~output_o\;

ww_Fi(6) <= \Fi[6]~output_o\;

ww_Fi(7) <= \Fi[7]~output_o\;
END structure;


