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

entity filter_adv is
	port
	(	DIN, b0, b1, b2, b3, a1	: in std_logic_vector(numBit-1 downto 0);
		VIN, RST_n, CLK			: in std_logic;
		DOUT					: buffer std_logic_vector(numBit-1 downto 0);
		VOUT					: out std_logic
	);
end filter_adv;

architecture bhv of filter_adv is

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
	
	signal x, y						: std_logic_vector(numBit-1 downto 0);
	signal y_tbs					: signed(numBit-2 downto 0);
	signal w						: signed(numBit downto 0);
	signal w_out					: std_logic_vector(numBit downto 0);
	signal fb						: std_logic_vector(numBit-2 downto 0);
	signal partial_1, partial_2		: signed(numBit-2 downto 0);
	
	type sigArray_7 is array(3 downto 0) of std_logic_vector (numBit-2 downto 0);
	type sigArray_8 is array(3 downto 0) of std_logic_vector (numBit-1 downto 0);
	type sigArray_9 is array(2 downto 0) of std_logic_vector (numBit downto 0);
	type sigArray_9_mul is array(3 downto 0) of std_logic_vector(numBit downto 0);
	type sigArray_17 is array(3 downto 0) of signed (2*numBit downto 0);
	
	signal b 				: sigArray_8;
	signal pl1_in, pl1_out	: sigArray_9;
	signal mul_in			: sigArray_9_mul;
	signal pl2_in_tbs 		: sigArray_17;
	signal pl2_in, pl2_out	: sigArray_7;
	
	-- Signals coming out from multiplications, to be shifted (tbs)
	signal wa1_tbs, wb0_tbs, wb1_tbs, wb2_tbs, wb3_tbs : signed(2*numBit downto 0);
	
	signal delay1, delay_pl1, delay_pl2 : std_logic;
	
begin

	b(0) <= b0;
	b(1) <= b1;
	b(2) <= b2;
	b(3) <= b3;
	
	-- Validation Signal Propagation
	f_d1: fd port map	
	(	D			=> VIN,
		CK			=> CLK,
		RESET_n		=> RST_n,
		Q			=> delay1 );
		
	f_pipe1: fd port map
	(	D			=> delay1,
		CK			=> CLK,
		RESET_n		=> RST_n,
		Q			=> delay_pl1 );
		
	f_pipe2: fd port map	
	(	D			=> delay_pl1,
		CK			=> CLK,
		RESET_n		=> RST_n,
		Q			=> delay_pl2 );
	
	f_d2: fd port map	
	(	D			=> delay_pl2,
		CK			=> CLK,
		RESET_n		=> RST_n,
		Q			=> VOUT );
			
	
	-- Auto-regressive part
	
	-- Input register
	reg_in: reg_n generic map( N => numBit ) port map
	(	A 		=> DIN,
		Q 		=> x,
		CLK		=> CLK,
		en		=> VIN,	
		RST_n 	=> RST_n );
	
	w <= signed(x(numBit-1) & x) - signed(fb);
	
	-- Internal Register 1
	reg_filter_1: reg_n generic map( N => numBit+1 ) port map
	(	A 		=> std_logic_vector(w),
		Q 		=> w_out,
		CLK 	=> CLK,
		EN	 	=> delay1,
		RST_n 	=> RST_n );
	
	wa1_tbs <= signed(w_out) * signed(a1);
	
	-- Internal register 2
	reg_filter_2: reg_n generic map( N => numBit-1 ) port map
	(	A 		=> std_logic_vector(wa1_tbs(2*numBit-1 downto 9)),
		Q 		=> fb,
		CLK 	=> CLK,
		EN	 	=> delay1,
		RST_n	=> RST_n );
	
	-- Loop closed
	
	-- Moving-average part
	pl1_in(0) <= std_logic_vector(w);
	pl1_in(1) <= w_out;
	
	reg_w_2: reg_n generic map( N => numBit+1 ) port map
	(	A 		=> w_out,
		Q 		=> pl1_in(2),
		CLK 	=> CLK,
		EN	 	=> delay1,
		RST_n	=> RST_n );

	-- Pipeline registers layer 1 generation
	pl1_reg_gen: for i in 0 to 2 generate	
		
		pl1_reg: reg_n generic map ( N => numBit+1 ) port map
		(	A 		=> pl1_in(i),
			Q 		=> pl1_out(i),
			CLK 	=> CLK,
			EN	 	=> '1',
			RST_n	=> RST_n );
	
	end generate;

	-- Connection to the multipliers
	mul_in(0) <= pl1_out(0);
	mul_in(1) <= pl1_out(1);
	mul_in(2) <= pl1_out(1);
	mul_in(3) <= pl1_out(2);

	-- Pipeline registers layer 2 generation
	pl_reg_gen: for i in 0 to 3 generate
			
		-- Multipliers
		pl2_in_tbs(i) 	<= signed(mul_in(i)) * signed(b(i));
		pl2_in(i) 		<= std_logic_vector(pl2_in_tbs(i)(15 downto 9));
		
		pl2_reg: reg_n generic map( N => numBit-1 ) port map
		(	A 		=> pl2_in(i),
			Q 		=> pl2_out(i),
			CLK 	=> CLK,
			EN	 	=> '1',
			RST_n	=> RST_n );
		
	end generate;
	
	-- Feedforward signal
	partial_2 <= signed(pl2_out(3)) + signed(pl2_out(2));
	partial_1 <= signed(pl2_out(1)) - signed(partial_2);
	y_tbs <= signed(pl2_out(0)) + partial_1;
	y <= std_logic_vector(y_tbs(numBit-3 downto 0)) & "00";
	
	
		-- Output register
	reg_out: reg_n generic map( N => numBit ) port map
	(	A 		=> y,
		Q 		=> DOUT,
		CLK 	=> CLK,
		EN	 	=> delay_pl2,
		RST_n 	=> RST_n );
	
	
end bhv;
	
	
	
	
		
