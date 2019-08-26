library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

-- cin acarrreo de entrada
-- a, b entradas
-- s resultado de la suma
-- cout acarreo de salida
entity fullAdder is
	port ( cin : in std_logic; a : in std_logic; b : in std_logic; s : out std_logic; cout : out std_logic);
			 
	
end fullAdder;

architecture Behavioral of fullAdder is
	begin
		s <= a xor b xor cin;
		cout <= (a and b) or (cin and (a or b));
end Behavioral;
