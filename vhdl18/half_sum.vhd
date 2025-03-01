-- Half Sum
-- Autor: Pedro Pepeu
-- Data: 23/10/2024

-- Bibliotecas e Pacotes
library ieee;
use ieee.std_logic_1164.all;

-- Entity
entity half_sum is
	port
	(
		A, B	:	in	std_logic;
		SUM	:	out	std_logic;
		CARRY	:	out	std_logic
	);
end entity half_sum;
-- Architectures
architecture dataflow of half_sum is
begin
	SUM	<=	A xor B;
	CARRY	<=	A and B;
end architecture dataflow;

-- Configuracoes
