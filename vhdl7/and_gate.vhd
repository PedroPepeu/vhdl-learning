-- Curso de VHDL #2
-- Exemplo de uma porta and
-- Autor: Pedro P. D. Freitas
-- Data: 22/10/2024

-- Bibliotecas e pacotes

-- Entidade
entity and_gate is
	port(
	a, b        :       in      bit;
	z           :       out     bit
	);
end entity and_gate;

-- Arquitetura
architecture main of and_gate is
begin

	z <= a and b;

end architecture main;

-- Configuracao