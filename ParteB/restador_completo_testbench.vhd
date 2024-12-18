library ieee;
use ieee.std_logic_1164.all;

entity restador_completo_testbench is
end restador_completo_testbench;
architecture behavior of restador_completo_testbench is

	component restador_completo
	port(
		in_a 	 : in std_logic;
		in_b   : in std_logic;
		in_bin : in std_logic;
		clk  	 : in std_logic;
		o_rout : out std_logic; 
		o_bout : out std_logic);
	end component;
	signal in_a : std_logic := '0';
	signal in_b : std_logic := '0';
	signal in_bin : std_logic := '0';
	signal clk : std_logic := '0';
	
	signal o_rout : std_logic;
	signal o_bout : std_logic;
	
	constant clock_period : time := 20ns;
	
begin
	uut: restador_completo port map (
		in_a => in_a,
		in_b => in_b,
		in_bin => in_bin,
		clk => clk,
		o_rout => o_rout,
		o_bout => o_bout
	);

clock_process : process 
	begin
	clk <= '0';
	wait for clock_period/2;
	clk <= '1';
	wait for clock_period/2;
	end process;
	
stim_proc: process
	begin
		in_a <= '0'; in_b <= '0'; in_bin <= '0'; wait for 30ns;
		in_a <= '0'; in_b <= '0'; in_bin <= '1'; wait for 30ns;
		in_a <= '0'; in_b <= '1'; in_bin <= '0'; wait for 30ns;
		in_a <= '0'; in_b <= '1'; in_bin <= '1'; wait for 30ns;
		in_a <= '1'; in_b <= '0'; in_bin <= '0'; wait for 30ns;
		in_a <= '1'; in_b <= '0'; in_bin <= '1'; wait for 30ns;
		in_a <= '1'; in_b <= '1'; in_bin <= '0'; wait for 30ns;
		in_a <= '1'; in_b <= '1'; in_bin <= '1'; wait for 30ns;
		wait;
	end process;
end;