library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ParteA is
	Port ( SW1: in STD_LOGIC;
			 SW2: in STD_LOGIC;
			 SW3: in STD_LOGIC;
			 LED: out STD_LOGIC);
end ParteA;
--En esta primera parte declaro las entradas y salidas de la entidad

architecture Behavioral of ParteA is

begin

LED <= (SW1 xnor not(SW2)) or (not(SW2) and SW3);

end Behavioral;
--En esta segunda parte le doy "forma" a la circuiteria interna de mi entidad ParteA

