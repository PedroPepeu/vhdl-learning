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

-- DATE "10/22/2024 16:26:23"

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

ENTITY 	mux IS
    PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	Y : BUFFER std_logic
	);
END mux;

-- Design Ports Information
-- Y	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_S0~input_o\ : std_logic;
SIGNAL \ALT_INV_S1~input_o\ : std_logic;
SIGNAL \ALT_INV_D3~input_o\ : std_logic;
SIGNAL \ALT_INV_D1~input_o\ : std_logic;
SIGNAL \ALT_INV_D2~input_o\ : std_logic;
SIGNAL \ALT_INV_D0~input_o\ : std_logic;

BEGIN

ww_D0 <= D0;
ww_D1 <= D1;
ww_D2 <= D2;
ww_D3 <= D3;
ww_S0 <= S0;
ww_S1 <= S1;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_S0~input_o\ <= NOT \S0~input_o\;
\ALT_INV_S1~input_o\ <= NOT \S1~input_o\;
\ALT_INV_D3~input_o\ <= NOT \D3~input_o\;
\ALT_INV_D1~input_o\ <= NOT \D1~input_o\;
\ALT_INV_D2~input_o\ <= NOT \D2~input_o\;
\ALT_INV_D0~input_o\ <= NOT \D0~input_o\;

-- Location: IOOBUF_X48_Y0_N67
\Y~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~0_combout\,
	devoe => ww_devoe,
	o => \Y~output_o\);

-- Location: IOIBUF_X47_Y0_N63
\D2~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

-- Location: IOIBUF_X47_Y0_N32
\S0~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X47_Y0_N94
\S1~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\D1~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

-- Location: IOIBUF_X48_Y0_N94
\D0~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\D3~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3,
	o => \D3~input_o\);

-- Location: LABCELL_X47_Y1_N22
\Y~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( \D0~input_o\ & ( \D3~input_o\ & ( (!\S0~input_o\ & (((!\S1~input_o\)) # (\D2~input_o\))) # (\S0~input_o\ & (((\D1~input_o\) # (\S1~input_o\)))) ) ) ) # ( !\D0~input_o\ & ( \D3~input_o\ & ( (!\S0~input_o\ & (\D2~input_o\ & 
-- (\S1~input_o\))) # (\S0~input_o\ & (((\D1~input_o\) # (\S1~input_o\)))) ) ) ) # ( \D0~input_o\ & ( !\D3~input_o\ & ( (!\S0~input_o\ & (((!\S1~input_o\)) # (\D2~input_o\))) # (\S0~input_o\ & (((!\S1~input_o\ & \D1~input_o\)))) ) ) ) # ( !\D0~input_o\ & ( 
-- !\D3~input_o\ & ( (!\S0~input_o\ & (\D2~input_o\ & (\S1~input_o\))) # (\S0~input_o\ & (((!\S1~input_o\ & \D1~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_S1~input_o\,
	datad => \ALT_INV_D1~input_o\,
	datae => \ALT_INV_D0~input_o\,
	dataf => \ALT_INV_D3~input_o\,
	combout => \Y~0_combout\);

ww_Y <= \Y~output_o\;
END structure;


