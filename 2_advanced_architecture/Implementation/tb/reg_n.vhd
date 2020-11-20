-- Behavioral register

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_n is
	generic 	( N : integer := 8 );
	port		(	A		: In		std_logic_vector (N-1 downto 0);
					Q 		: buffer std_logic_vector (N-1 downto 0);
					CLK	: In 		std_logic;
					en		: in 		std_logic;
					RST_n	: In		std_logic );
end reg_n;

architecture bhv of reg_n is
begin
	
	reg: process(CLK,RST_n)
	begin
	
		if(RST_n = '0') then Q <= (others => '0');
		elsif CLK'event and CLK = '1' then 
			if en = '1' then
				Q <= A;
			end if;
		end if;
	
	end process reg;
	
end bhv;
