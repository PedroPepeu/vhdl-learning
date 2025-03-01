-- 4 bit sum
-- Autor: Pedro Pepeu
-- Data: 23/10/2024

-- Biblioteca e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- Entity
entity sum_4bit is
	port
	(
		A, B		:	in		std_logic_vector(3 downto 0);
		CARRY_IN	:	in		std_logic;
		S			:	out	std_logic_vector(3 downto 0);
		CARRY_OUT:	out	std_logic
	);
end entity sum_4bit;

-- Architecture
architecture main of sum_4bit is
	
	-- component
	component full_sum is
		port
		(
			A, B	:	in	std_logic;
			CARRY_IN:	in	std_logic;
			SUM	:	out	std_logic;
			CARRY	:	out	std_logic
		);
	end component full_sum;

	-- signals
	signal C1, C2, C3	:		std_logic;
	
begin
	
	FA1: full_sum
		port map(A(0), B(0), CARRY_IN, S(0), C1);
		
	FA2: full_sum
		port map
		(A(1), B(1), C1, S(1), C2	);
	
	FA3: full_sum
		port map(A(2), B(2), C2, S(2), C3	);
	
	FA4: full_sum
		port map(A(3), B(3), C3, S(3), CARRY_OUT	);

end architecture main;
