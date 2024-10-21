library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity ParteA_testbench is

end ParteA_testbench;
architecture behavior of ParteA_testbench is

	component ParteA
	port(
		SW1 : in STD_LOGIC;
		SW2 : in STD_LOGIC;
		SW3 : in STD_LOGIC;
		LED : out STD_LOGIC
		);
	end component;
	
	signal SW1 : std_logic := '0';
	signal SW2 : std_logic := '0';
	signal SW3 : std_logic := '0';
	
	signal LED : std_logic;
	
BEGIN
	uut: ParteA port map(
	SW1 => SW1,
	SW2 => SW2,
	SW3 => SW3,
	LED => LED
	);	
	
	stim_proc: process
	begin
		SW1 <= '0'; SW2 <= '0'; SW3 <= '0'; wait for 10ns;
		SW1 <= '0'; SW2 <= '0'; SW3 <= '1'; wait for 10ns;
		SW1 <= '0'; SW2 <= '1'; SW3 <= '0'; wait for 10ns;
		SW1 <= '0'; SW2 <= '1'; SW3 <= '1'; wait for 10ns;
		SW1 <= '1'; SW2 <= '0'; SW3 <= '0'; wait for 10ns;
		SW1 <= '1'; SW2 <= '0'; SW3 <= '1'; wait for 10ns;
		SW1 <= '1'; SW2 <= '1'; SW3 <= '0'; wait for 10ns;
		SW1 <= '1'; SW2 <= '1'; SW3 <= '1'; wait for 10ns;
		wait;
	end process;
END;