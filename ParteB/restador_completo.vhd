library ieee;
use ieee.std_logic_1164.all;

entity restador_completo is
	port(
		in_a 	 : in std_logic;
		in_b   : in std_logic;
		in_bin : in std_logic;
		clk  	 : in std_logic;
		o_rout : out std_logic; 
		o_bout : out std_logic);
end restador_completo;
architecture behavioral of restador_completo is

component D_FF
	port(D, CLOCK: in std_logic;
			Q: out std_logic);
	end component;
	
	signal a, b, bin, bout, rout : std_logic;
begin

	rout <= a xor b xor bin;
	bout <=(not(a) and bin) or (not(a) and b) or (b and bin);

D1: D_FF port map (in_a,clk,a);
D2: D_FF port map (in_b,clk,b);
D3: D_FF port map (in_bin,clk,bin);
D4: D_FF port map (bout,clk,o_bout);
D5: D_FF port map (rout,clk,o_rout);
end behavioral;