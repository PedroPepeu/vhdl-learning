-- Curso de VHDL #3
-- Exemplo de um somador de 4 bits
-- Autor: Pedro P. D. Freitas
-- Data: 22/10/2024

-- Bibliotecas e pacotes

-- Entidades
entity somador is
	port(
	    a, b	:	in	integer 	range 0 to 15;
	    z		: 	out	integer		range 0 to 15;
	    );
end entity somador;

-- Arquitetura
architecture main of somador is
begin
	z <= a + b;
end architecture main;

-- Configuracao
