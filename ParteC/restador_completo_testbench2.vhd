library ieee;
use ieee.std_logic_1164.all;

entity restador_completo_testbench2 is
end restador_completo_testbench2;
architecture behavior of restador_completo_testbench2 is

	component restador_completo
	port(
		a 	 : in std_logic;
		b   : in std_logic;
		bin : in std_logic;
		clk  	 : in std_logic;
		f : out std_logic; 
		bout : out std_logic);
	end component;
	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal bin : std_logic := '0';
	signal clk : std_logic := '0';
	
	signal f : std_logic;
	signal bout : std_logic;
	
	constant clock_period : time := 20ns;
	
begin
	uut: restador_completo port map (
		a => a,
		b => b,
		bin => bin,
		clk => clk,
		f => f,
		bout => bout
	);

clock_process:process 
	begin
		clk <= '0';
		wait for clock_period/2;
		clk <= '1';
		wait for clock_period/2;
	end process;
	
stim_proc: process
	begin
		a <= '0'; b <= '0'; bin <= '0'; wait for 30ns;
		a <= '0'; b <= '0'; bin <= '1'; wait for 30ns;
		a <= '0'; b <= '1'; bin <= '0'; wait for 30ns;
		a <= '0'; b <= '1'; bin <= '1'; wait for 30ns;
		a <= '1'; b <= '0'; bin <= '0'; wait for 30ns;
		a <= '1'; b <= '0'; bin <= '1'; wait for 30ns;
		a <= '1'; b <= '1'; bin <= '0'; wait for 30ns;
		a <= '1'; b <= '1'; bin <= '1'; wait for 30ns;
		wait;
	end process;
end;