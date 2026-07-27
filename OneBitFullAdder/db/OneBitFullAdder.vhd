library ieee;
use ieee.std_logic_1164.all;

entity OneBitFullAdder is 
	port(
		A,B,Cin : in std_logic;
		Cout,S : out std_logic 
	);
end;

architecture Dataflow of OneBitFullAdder is 
begin 
S <= A xor B xor Cin;
Cout <= ( A and B) or (Cin and (A xor B));
end Dataflow;
