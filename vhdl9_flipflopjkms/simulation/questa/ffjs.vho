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

-- DATE "10/22/2024 16:00:53"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
LIBRARY STD;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	ffjs IS
    PORT (
	j : IN std_logic;
	k : IN std_logic;
	clk : IN std_logic;
	q : BUFFER STD.STANDARD.bit;
	q_bar : BUFFER STD.STANDARD.bit
	);
END ffjs;

-- Design Ports Information
-- q	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_bar	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ffjs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_j : std_logic;
SIGNAL ww_k : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_q_bar : std_logic;
SIGNAL \q~output_o\ : std_logic;
SIGNAL \q_bar~output_o\ : std_logic;
SIGNAL \j~input_o\ : std_logic;
SIGNAL \k~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \a[2]~1_combout\ : std_logic;
SIGNAL \q~1_combout\ : std_logic;
SIGNAL \q_bar~0_combout\ : std_logic;
SIGNAL \ALT_INV_q~1_combout\ : std_logic;
SIGNAL \ALT_INV_a[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_j~input_o\ : std_logic;
SIGNAL \ALT_INV_k~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

BEGIN

ww_j <= j;
ww_k <= k;
ww_clk <= clk;
q <= IEEE.STD_LOGIC_1164.TO_BIT(ww_q);
q_bar <= IEEE.STD_LOGIC_1164.TO_BIT(ww_q_bar);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_q~1_combout\ <= NOT \q~1_combout\;
\ALT_INV_a[2]~1_combout\ <= NOT \a[2]~1_combout\;
\ALT_INV_j~input_o\ <= NOT \j~input_o\;
\ALT_INV_k~input_o\ <= NOT \k~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;

-- Location: IOOBUF_X31_Y56_N98
\q~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_q~1_combout\,
	devoe => ww_devoe,
	o => \q~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\q_bar~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_bar~0_combout\,
	devoe => ww_devoe,
	o => \q_bar~output_o\);

-- Location: IOIBUF_X31_Y56_N1
\j~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j,
	o => \j~input_o\);

-- Location: IOIBUF_X31_Y56_N32
\k~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k,
	o => \k~input_o\);

-- Location: IOIBUF_X31_Y56_N63
\clk~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: MLABCELL_X31_Y55_N24
\a[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \a[2]~1_combout\ = ( \q~1_combout\ & ( (\a[2]~1_combout\ & ((!\j~input_o\) # (!\clk~input_o\))) ) ) # ( !\q~1_combout\ & ( ((\k~input_o\ & \clk~input_o\)) # (\a[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100110011001000100011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_j~input_o\,
	datab => \ALT_INV_a[2]~1_combout\,
	datac => \ALT_INV_k~input_o\,
	datad => \ALT_INV_clk~input_o\,
	dataf => \ALT_INV_q~1_combout\,
	combout => \a[2]~1_combout\);

-- Location: MLABCELL_X31_Y55_N20
\q~1\ : arriaii_lcell_comb
-- Equation(s):
-- \q~1_combout\ = ( \a[2]~1_combout\ & ( \clk~input_o\ & ( \q~1_combout\ ) ) ) # ( !\a[2]~1_combout\ & ( \clk~input_o\ & ( \q~1_combout\ ) ) ) # ( \a[2]~1_combout\ & ( !\clk~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_q~1_combout\,
	datae => \ALT_INV_a[2]~1_combout\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \q~1_combout\);

-- Location: MLABCELL_X31_Y55_N26
\q_bar~0\ : arriaii_lcell_comb
-- Equation(s):
-- \q_bar~0_combout\ = ( \a[2]~1_combout\ & ( (!\clk~input_o\) # (\q~1_combout\) ) ) # ( !\a[2]~1_combout\ & ( \q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_q~1_combout\,
	datad => \ALT_INV_clk~input_o\,
	dataf => \ALT_INV_a[2]~1_combout\,
	combout => \q_bar~0_combout\);

ww_q <= \q~output_o\;

ww_q_bar <= \q_bar~output_o\;
END structure;


