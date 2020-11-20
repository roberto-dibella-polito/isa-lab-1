-------------------------------------------------------------
-- IIR FILTER 
-- Order 1, 8-bits IIR filter
--
-- Project: 		Lab 1.1
-- Authors: 		group 32 (Chatrasi, Di Bella, Zangeneh)
-------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity filter is
	port
	(	DIN, b0, b1, a1			: in std_logic_vector(numBit-1 downto 0);
		VIN, RST_n, CLK			: in std_logic;
		DOUT					: buffer std_logic_vector(numBit-1 downto 0);
		VOUT					: out std_logic
	);
end filter;

architecture bhv of filter is

	component reg_n 
		GENERIC 	( N : INTEGER := 8 );
		PORT		
		(	A		: In		std_logic_vector (N-1 downto 0);
			Q 		: buffer std_logic_vector (N-1 downto 0);
			CLK		: In 		std_logic;
			en		: in 		std_logic;
			RST_n	: In		std_logic );
	end component;
	
	component FD
		Port 
		(	D			:	In	std_logic;
			CK			:	In	std_logic;
			RESET_n		:	In	std_logic;
			Q			:	Out	std_logic);
	end component;
	

	signal delay1 : std_logic;
	
	signal x, y 					: std_logic_vector(numBit-1 downto 0);
	signal w_out					: std_logic_vector(numBit downto 0);
	signal w 						: signed(numBit downto 0);
	signal fb_tbs, ff_tbs, wb0_tbs 	: signed(2*numBit downto 0);
	
	signal y_tbs 					: signed(numBit-2 downto 0);
	
	signal fb, ff, wb0 				: signed(numBit-2 downto 0);
	
begin
	
	-- Input register
	reg_in: reg_n generic map( N => numBit ) port map
	(	A 		=> DIN,
		Q 		=> x,
		CLK	=> CLK,
		en		=> VIN,	
		RST_n => RST_n );

	w 		<= signed(x(numBit-1) & x) - fb;
	wb0_tbs <= w * signed(b0);
	wb0 	<= wb0_tbs(15 downto 9);
	
	-- Internal register
	reg_filter: reg_n generic map( N => numBit+1 ) port map
	(	A 		=> std_logic_vector(w),
		Q 		=> w_out,
		CLK 	=> CLK,
		EN	 	=> delay1,
		RST_n => RST_n );

	fb_tbs <= signed(w_out) * signed(a1);
	fb <= fb_tbs(15 downto 9);
	
	ff_tbs 	<= signed(w_out) * signed(b1);
	ff		<= ff_tbs(15 downto 9);
	
	y_tbs	<= wb0 + ff;
	y		<= std_logic_vector(y_tbs(numBit-3 downto 0)) & "00";	--Shifted left by two
	
		
	-- Output register
	reg_out: reg_n generic map( N => numBit ) port map
	(	A 		=> y,
		Q 		=> DOUT,
		CLK 	=> CLK,
		EN	 	=> delay1,
		RST_n => RST_n );
	
	
	f_d1: fd port map	
	(	D			=> VIN,
		CK			=> CLK,
		RESET_n	=>	RST_n,
		Q			=> delay1 );
	
	f_d2: fd port map	
	(	D			=> delay1,
		CK			=> CLK,
		RESET_n	=>	RST_n,
		Q			=> VOUT );
	
	
end bhv;
	
	
	
	
		
