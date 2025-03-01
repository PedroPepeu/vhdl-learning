-- FlipFlop JK Master - Slave
-- Autor: Pedro Pepeu
-- Data: 22/10/2024

-- Bibliotecas e pacotes

-- Entity
entity ffjs is
	port
	(
		j, k, clk	:	in			bit;
		q, q_bar		:	buffer	bit
	);
end entity ffjs;

-- Architecture
architecture main of ffjs is
	signal a	:	bit_vector(0 to 5);
begin
	
	a(0)	<=		not	(q_bar	and	j 	and 	clk);	-- nand
	a(1)	<=		not	(q		 	and	k	and	clk);	--	nand
	a(2)	<=		a(0)	nand	a(3);							--	nand
	a(3)	<=		a(1)	nand	a(2);							--	nand
	a(4)	<=		a(2)	nand	(not clk);					--	nand
	a(5)	<=		a(3)	nand	(not clk);					--	nand
	q		<=		a(4)	nand	q_bar;						--	nand
	q_bar	<=		a(5)	nand	q;								--	nand

end architecture main;

-- Configuracao