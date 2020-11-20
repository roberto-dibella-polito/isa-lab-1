-- Testbench

library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;
use ieee.numeric_std.all;

entity tb_filter is
end tb_filter;

architecture bhv of tb_filter is

	component filter 
		port
		(	DIN, b0, b1, a1	: in std_logic_vector(numBit-1 downto 0);
			VIN, RST_n, CLK	: in std_logic;
			DOUT					: out std_logic_vector(numBit-1 downto 0);
			VOUT					: out std_logic
		);
	end component;
	
	signal data_in, data_out, b_0, a_1 : std_logic_vector(numBit-1 downto 0);
	signal v_out : std_logic;
	signal v_in, clk_in, rstn : std_logic := '0';
	
begin
	
	dut: filter port map
	(	DIN 	=> data_in,
		b0		=> b_0,
		b1		=> b_0,
		a1		=> a_1,
		VIN	=> v_in,
		RST_N	=> rstn,
		CLK	=> clk_in,
		DOUT	=> data_out,
		VOUT	=> v_out
	);
	
	
	-- Clock generator
	clk_gen: process(clk_in)
	begin
		clk_in <= not clk_in after 5 ns; --clock of 20 ns
	end process clk_gen;
	
	-- Test
	test: process
	begin
	
		b_0 <= std_logic_vector(to_signed(53,8));
		a_1 <= std_logic_vector(to_signed(-21,8));
		data_in <= std_logic_vector(to_signed(0,8));
		
		wait for 3 ns;
		v_in <= '1';
		rstn <= '1';
		
		wait for 2 ns;

		data_in <= std_logic_vector(to_signed(39,8));
		wait for 10 ns;
		data_in <= std_logic_vector(to_signed(0,8));
		wait for 10 ns;
		
	end process test;
	
end bhv;
		
		
		
	
	