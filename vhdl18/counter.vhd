-- Counter
-- Autor: Pedro Pepeu
-- Data: 23/10/2024

library ieee;
use ieee.std_logic_1164.all;

entity counter is
	port
	(
		clk, rst	:	in	std_logic;
    		q		:	out	std_logic_vector(3 downto 0)	
    	);
end entity counter;

architecture top of counter is

	signal x, q_temp	:	std_logic_vector(3 downto 0);

begin

	q	<=	q_temp;

	-- somador
	U1: entity work.sum_4bits(main)
		port map
		(
			A		=>	q_temp,
			B		=>	x"1",
			CARRY_IN	=>	'0',
			S		=>	x,
			CARRY_OUT	=>	open
		);

	U2: entity work.reg(behavioral) -- code cloned from some github...
		generic map(4)	-- generic map posicional para reg de 4 bits
		port map
		(
			clk	=>	clk,
			rst	=>	rst,
			data	=>	x,
			q	=>	q_temp
		);

end architecture top;
