---- THIS VHD FILE IS NOT BEING USED 

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Yunayev_Adder_Package.all;

entity Full_Add_Sub_AY is 
	port(
			A:in std_logic;
			B:in std_logic;
			Cin: in std_logic;
			S: out std_logic;
			Cout: out std_logic
		);
end;

architecture Behavioral of Full_Add_Sub_AY is
signal Bcomp:std_logic; --B compliment 
begin
	Bcomp <= B xor Cin;
    S <= A xor Bcomp xor Cin;
    Cout <= (A and Bcomp) or (Cin and (A xor Bcomp));
end architecture;