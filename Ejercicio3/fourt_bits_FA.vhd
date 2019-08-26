LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY fourt_bits_FA IS 
	PORT
	(
		cin0 :  IN  STD_LOGIC;
		b1 :  IN  STD_LOGIC;
		a1 :  IN  STD_LOGIC;
		b2 :  IN  STD_LOGIC;
		a2 :  IN  STD_LOGIC;
		b3 :  IN  STD_LOGIC;
		a3 :  IN  STD_LOGIC;
		b0 :  IN  STD_LOGIC;
		a0 :  IN  STD_LOGIC;
		cout3 :  OUT  STD_LOGIC;
		s0 :  OUT  STD_LOGIC;
		s1 :  OUT  STD_LOGIC;
		s2 :  OUT  STD_LOGIC;
		s3 :  OUT  STD_LOGIC
	);
END fourt_bits_FA;

ARCHITECTURE bdf_type OF fourt_bits_FA IS 

COMPONENT fulladder
	PORT(cin : IN STD_LOGIC;
		 a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 s : OUT STD_LOGIC;
		 cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : fulladder
PORT MAP(cin => SYNTHESIZED_WIRE_0,
		 a => a3,
		 b => b3,
		 s => s3,
		 cout => cout3);


b2v_inst3 : fulladder
PORT MAP(cin => SYNTHESIZED_WIRE_1,
		 a => a2,
		 b => b2,
		 s => s2,
		 cout => SYNTHESIZED_WIRE_0);


b2v_inst4 : fulladder
PORT MAP(cin => SYNTHESIZED_WIRE_2,
		 a => a1,
		 b => b1,
		 s => s1,
		 cout => SYNTHESIZED_WIRE_1);


b2v_inst5 : fulladder
PORT MAP(cin => cin0,
		 a => a0,
		 b => b0,
		 s => s0,
		 cout => SYNTHESIZED_WIRE_2);


END bdf_type;
