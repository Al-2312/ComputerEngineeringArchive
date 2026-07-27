library ieee;
use ieee.std_logic_1164.all;

entity Full_Adder_AY is 
	port(
			A:in std_logic;
			B:in std_logic;
			Cin: in std_logic;
			S: out std_logic;
			Cout: out std_logic
		);
end;

architecture Behavioral of Full_Adder_AY is 
	component Half_Adder_AY is 
		port(
				A:in std_logic;
				B:in std_logic;
				C: out std_logic;
				S: out std_logic
			);
	 end component; 
	signal S1: std_logic; -- for 1st sum as A in 2nd half adder
	signal C1: std_logic;-- carry 1 will be used for cout 
	signal C2: std_logic;-- carry 2 will also be used for cout 
begin
	half_adder1: Half_Adder_AY port map(
			A => A,
			B => B, 
			S => S1,
			C => C1
	);
	
	half_adder2: Half_Adder_AY port map(
			A => S1,
			B => Cin, 
			S => S,
			C => C2
	);
	Cout <= C1 or C2;
end;
