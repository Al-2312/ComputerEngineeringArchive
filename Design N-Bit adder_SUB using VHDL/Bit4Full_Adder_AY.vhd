library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Yunayev_Adder_Package.all;


entity Bit4Full_Adder_AY is 
	generic(
	constant N: integer := 4 -- N can now be change was not oringally; 
	);
	port(
			
			A:in std_logic_vector(N-1 downto 0);
			B:in std_logic_vector(N-1 downto 0);
			Cin: in std_logic;
			S: out std_logic_vector(N-1 downto 0);
			Cout: out std_logic
		);
end;


architecture structural of Bit4Full_Adder_AY is

		signal CarryOuts:std_logic_vector(N downto 0);
begin 
		CarryOuts(0) <= Cin;
		forloop: for i in 0 to N-1 generate  
			fourBit_adder: Full_Adder_AY port map(
						A =>A(i),
						B => B(i),
						Cin => CarryOuts(i),
						S => S(i),
						Cout => CarryOuts(i+1)
			);
		end generate forloop;
			Cout <= CarryOuts(N);
end;