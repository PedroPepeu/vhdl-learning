-- Curso de VHDL #5
-- Exemplo de um somador completo
-- Autor: Pedro P. D. Freitas
-- Data: 22/10/2024

-- Bibliotecas e pacotes

-- Entidades
entity somador_completo is
	port
	(
		A, B	:	in	bit;	-- entradas
		TE	:	in	bit;	-- transporte de entrada
		S	:	out	bit;	-- soma
		TS	:	out	bit	-- transporte de saida
	);
end entity somador_completo;
-- Arquitetura
architecture main of somador_completo is
begin

	S <= A xor B xor TE;
	TS <= (A and B) or (A and TE) or (B and TE);

end architecture main;

-- Configuracao
