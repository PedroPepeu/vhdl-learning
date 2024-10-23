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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/22/2024 16:26:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_vhd_vec_tst IS
END mux_vhd_vec_tst;
ARCHITECTURE mux_arch OF mux_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D0 : STD_LOGIC;
SIGNAL D1 : STD_LOGIC;
SIGNAL D2 : STD_LOGIC;
SIGNAL D3 : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT mux
	PORT (
	D0 : IN STD_LOGIC;
	D1 : IN STD_LOGIC;
	D2 : IN STD_LOGIC;
	D3 : IN STD_LOGIC;
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC;
	Y : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux
	PORT MAP (
-- list connections between master ports and signals
	D0 => D0,
	D1 => D1,
	D2 => D2,
	D3 => D3,
	S0 => S0,
	S1 => S1,
	Y => Y
	);

-- D0
t_prcs_D0: PROCESS
BEGIN
	D0 <= '0';
	WAIT FOR 40000 ps;
	D0 <= '1';
	WAIT FOR 340000 ps;
	D0 <= '0';
	WAIT FOR 140000 ps;
	D0 <= '1';
	WAIT FOR 100000 ps;
	D0 <= '0';
WAIT;
END PROCESS t_prcs_D0;

-- D1
t_prcs_D1: PROCESS
BEGIN
	D1 <= '0';
	WAIT FOR 140000 ps;
	D1 <= '1';
	WAIT FOR 180000 ps;
	D1 <= '0';
	WAIT FOR 200000 ps;
	D1 <= '1';
	WAIT FOR 100000 ps;
	D1 <= '0';
WAIT;
END PROCESS t_prcs_D1;

-- D2
t_prcs_D2: PROCESS
BEGIN
	D2 <= '0';
	WAIT FOR 140000 ps;
	D2 <= '1';
	WAIT FOR 180000 ps;
	D2 <= '0';
	WAIT FOR 200000 ps;
	D2 <= '1';
	WAIT FOR 100000 ps;
	D2 <= '0';
	WAIT FOR 80000 ps;
	D2 <= '1';
	WAIT FOR 20000 ps;
	D2 <= '0';
	WAIT FOR 80000 ps;
	D2 <= '1';
	WAIT FOR 80000 ps;
	D2 <= '0';
WAIT;
END PROCESS t_prcs_D2;

-- D3
t_prcs_D3: PROCESS
BEGIN
	D3 <= '0';
	WAIT FOR 320000 ps;
	D3 <= '1';
	WAIT FOR 160000 ps;
	D3 <= '0';
	WAIT FOR 40000 ps;
	D3 <= '1';
	WAIT FOR 100000 ps;
	D3 <= '0';
	WAIT FOR 80000 ps;
	D3 <= '1';
	WAIT FOR 20000 ps;
	D3 <= '0';
WAIT;
END PROCESS t_prcs_D3;

-- S0
t_prcs_S0: PROCESS
BEGIN
	S0 <= '0';
	WAIT FOR 320000 ps;
	S0 <= '1';
	WAIT FOR 160000 ps;
	S0 <= '0';
	WAIT FOR 40000 ps;
	S0 <= '1';
	WAIT FOR 100000 ps;
	S0 <= '0';
	WAIT FOR 120000 ps;
	S0 <= '1';
	WAIT FOR 100000 ps;
	S0 <= '0';
WAIT;
END PROCESS t_prcs_S0;

-- S1
t_prcs_S1: PROCESS
BEGIN
	S1 <= '0';
	WAIT FOR 100000 ps;
	S1 <= '1';
	WAIT FOR 160000 ps;
	S1 <= '0';
	WAIT FOR 260000 ps;
	S1 <= '1';
	WAIT FOR 20000 ps;
	S1 <= '0';
	WAIT FOR 200000 ps;
	S1 <= '1';
	WAIT FOR 100000 ps;
	S1 <= '0';
WAIT;
END PROCESS t_prcs_S1;
END mux_arch;
