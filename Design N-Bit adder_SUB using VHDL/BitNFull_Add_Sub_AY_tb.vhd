library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Yunayev_Adder_Package.all;

entity BitNFull_Add_Sub_AY_tb is 
generic(
N: integer := 16
);
end entity;

architecture arch of BitNFull_Add_Sub_AY_tb is 
component BitNFull_Add_Sub_AY is 
port(
			
			A:in std_logic_vector(N-1 downto 0);
			B:in std_logic_vector(N-1 downto 0);
			Cin: in std_logic;-- will be the same as Operational code if 0 do add, if 1 do subtratciton 
			S: out std_logic_vector(N-1 downto 0);
			Cout: out std_logic
			
		);
end component;

	signal A: std_logic_vector(N-1 downto 0);
	signal 	B:std_logic_vector(N-1 downto 0);
	signal 	Cin:  std_logic;-- will be the same as Operational code if 0 do add, if 1 do subtratciton 
	signal S: std_logic_vector(N-1 downto 0);
	signal Cout:  std_logic;
	
begin
	Nbit_Add_Sub: BitNFull_Add_Sub_AY port map (A=>A,B=>B,Cin=>Cin,S=>S,Cout => Cout );
	process
	begin

		A <= x"7ffe";
		B <= x"0001";
		Cin <= '1';
		wait for 10 ps;

		if S /= x"7ffd" then
			report "ERROR DETECTED: Instance A = "&to_hstring(A)&" minus Instance B = "&to_hstring(B)&"The sum should be 7FFD YOUR SUM IS " & to_hstring(S) severity warning;
		else 	
		     report "Instance A = "&to_hstring(A)&" minus Instance B = "&to_hstring(B)&" Is "& to_hstring(S);
		end if;
		wait for 10ps;
	end process;
end arch;