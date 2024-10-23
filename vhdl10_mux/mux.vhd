-- Multiplexador 4 entradas 1 saida
-- Autor: Pedro Pepeu
-- Data: 22/10/2024

-- Bibliotecas e pacotes

-- Entity
entity mux is
	port
	(
		D0, D1, D2, D3		:		in		bit;
		S0, S1				:		in		bit;
		Y						:		out	bit
	);
end entity mux;

-- Architecture
architecture main of mux is
	signal sel				:				bit_vector	(1 downto 0)	:=		"00";
begin

	sel	<=		S1		&		S0;	-- & = concat
	
	Y		<=		D0		when	sel	=	"00"	else
					D1		when	sel	=	"01"	else
					D2		when	sel	=	"10"	else
					D3;
	
end architecture main;
-- Configuracao