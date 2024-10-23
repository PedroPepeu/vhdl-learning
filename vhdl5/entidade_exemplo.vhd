-- Curso de VHDL #3
-- Exemplo de uma entidade
-- Autor: Pedro P. D. Freitas
-- Data: 22/10/2024

-- Bibliotecas e pacotes

-- Entidades
entity entidade_exemplo is
	generic(
	       n	:	tipo	:=	valor;
	       );
	port(
	    a, b	:	in	integer 	range 0 to 15;	-- entradas
	    z		: 	out	integer		range 0 to 15;  -- saidas
	    w		:	buffer	tipo_3;				-- saida
	    z1, z2	:	inout	tipo_4;				-- entrada/saida
	    );
end entity entidade_exemplo;

-- Arquitetura
architecture nome_arc of entidade_exemplo is
	-- declaracoes: -- sinais
	-- constantes
	-- componentes
	-- subprogramas
	-- novos tipos
	-- outros

begin
	-- comandos concorrentes
end architecture nome_arc; -- main

-- Configuracao
