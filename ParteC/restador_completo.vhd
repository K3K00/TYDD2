library ieee;
use ieee.std_logic_1164.all;

entity restador_completo is
	port(
		a   : in std_logic;
		b 	 : in std_logic;
		bin : in std_logic;
		f	 : out std_logic;
		bout: out std_logic);
end restador_completo;

architecture behavioral of restador_completo is
begin
	f <= a xor b xor bin;
	bout <= (not(a) and b) or (b and bin) or (not(a) and bin);
end behavioral;