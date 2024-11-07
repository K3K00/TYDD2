library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisor is
	port( 
		A : in std_logic_vector(5 downto 0);
		B : in std_logic_vector(5 downto 0);
		C : out std_logic_vector(15 downto 0));
end divisor;

architecture behavioral of divisor is
	signal P : std_logic_vector(15 downto 0);
	signal cero6: std_logic_vector(5 downto 0);
	signal cero4: std_logic_vector(3 downto 0);
begin
--	Tengo que completar con ceros para realizar la division (6 ceros en la parte entera y 4 en la parte decimal)
	cero6 <= "000000";
	cero4 <= "0000";
	P <= cero6 & A & cero4;
	C <= std_logic_vector(unsigned(P)/unsigned(B));
end behavioral;
