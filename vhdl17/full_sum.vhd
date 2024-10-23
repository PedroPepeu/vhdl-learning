-- Full Sum
-- Autor: Pedro Pepeu
-- Data: 23/10/2024

-- Bibliotecas e Pacotes
library ieee;
use ieee.std_logic_1164.all;

-- Entity
entity full_sum is
	port
	(
		A, B	:	in	std_logic;
		CARRY_IN:	in	std_logic;
		SUM	:	out	std_logic;
		CARRY	:	out	std_logic
	);
end entity full_sum;

-- Architectures
architecture rtl of full_sum is

	-- components
	component half_sum is
		port
		(
			A, B	:	in	std_logic;
			SUM	:	out	std_logic;
			CARRY	:	out	std_logic
		);
	end component half_sum;

	-- sinais internos
	signal x, y, z	:		std_logic;

begin

	CARRY <= z or y;

	hs1: half_sum	-- nominal
		port map
		(
			A	=>	A,
			B	=>	B,
			SUM	=>	x,
			CARRY	=>	y
		);
	
	hs2: half_sum	-- posicional
		port map(x, CARRY_IN, SUM, Z);

end architecture rtl;

-- Configuracoes
