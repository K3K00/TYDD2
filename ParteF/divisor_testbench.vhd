library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisor_testbench is
end divisor_testbench;

architecture behaviour of divisor_testbench is
	component divisor
	port( 
		A : in std_logic_vector(5 downto 0);
		B : in std_logic_vector(5 downto 0);
		C : out std_logic_vector(15 downto 0));
	end component;
	
	signal A : std_logic_vector(5 downto 0);
	signal B : std_logic_vector(5 downto 0);
	
	signal C : std_logic_vector(15 downto 0);
	
	begin
	uut: divisor port map(
		A => A,
		B => B,
		C => C
	);
	
	stim_proc: process
	begin
		A <= "111100"; B <= "010100"; wait for 50ns;
		A <= "000000"; B <= "000000"; wait for 50ns;
		A <= "111100"; B <= "010100"; wait for 50ns;
		A <= "000000"; B <= "000000"; wait for 50ns;
	wait;
	end process;
end;
	