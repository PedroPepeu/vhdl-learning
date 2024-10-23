-- ULA
-- Autor: Pedro Pepeu
-- Data: 22/10/2024

-- Bibliotecas e pacotes
library ieee;
use ieee.numeric_bit.all;

-- Entity
entity ula is
	port
	(
		Ai, Bi		:		in		unsigned(7 downto 0);
		S0, S1, M	:		in		bit;
		Fi				:		out	unsigned(7 downto 0)
	);
end entity ula;
-- Architecture
architecture main of ula is
	signal H, G		:			unsigned(7 downto 0);	-- G arith H log
	signal sel		:			bit_vector(1 downto 0);
begin
		
	sel 	<=		S1		&		S0;
		
	with	sel	select
		G	<=		Ai		+		Bi		when		"00",			-- add
					Ai		-		Bi		when		"01",			-- sub
					Ai		+		x"01"	when		"10",			-- increment
					Ai		-		x"01"	when		others;		-- decrement		
			
	with sel select
		H	<=		Ai		and	Bi		when		"00",			-- and
					Ai		or		Bi		when		"01",			-- or
					Ai		xor	Bi		when		"10",			-- xor
							not	Ai		when		others;		-- not
	
	Fi		<=		G 		when		M = '1'		else		H;
end architecture main;

-- Configuracao