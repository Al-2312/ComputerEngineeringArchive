library ieee;
use ieee.std_logic_1164.all;

entity Half_Adder_AY is 
	port (
			A : in std_logic;
			B : in std_logic;
			S : out std_logic;
			C : out std_logic
		);
end;

architecture data_flow of Half_Adder_AY is 
begin 

Sum: process (A,B) -- for S
begin 
		S <= A xor B;
end process;

Carry: process(A,B) -- for C
begin
		C <= A and B; 
end process;

end; 