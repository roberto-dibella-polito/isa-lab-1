library IEEE;
use IEEE.std_logic_1164.all; 

entity FD is
	Port 
	(	D			:	In	std_logic;
		CK			:	In	std_logic;
		RESET_n	:	In	std_logic;
		Q			:	Out	std_logic);
end FD;


architecture structure of FD is -- flip flop D with syncronous reset

begin

	PSYNCH: process(CK,RESET_n)
	begin
		if RESET_n='0' then Q <= '0'; 
		elsif CK'event and CK='1' then -- positive edge triggered:
			Q <= D; -- input is written on output
		end if;
	end process;

end structure;


