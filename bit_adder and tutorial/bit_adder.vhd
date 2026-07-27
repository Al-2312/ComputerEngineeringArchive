library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
--use work.my_package;

--package my_package is 
	--constant d : integer;
	
--end package my_package;

entity bit_adder is 
	port(
		single: out bit;
		A: in unsigned(3 downto 0);
		B: in unsigned(3 downto 0);
		X: out unsigned(3 downto 0)
-- last port does not need semicolon it will give error if it has	
	);
end; 

--types of port mode 
--in 
--out 
--buffer 
--inout



--types of port types 
--bit  -> 1 or 0 
--std_logic -> 1 or 0 or u(undefined) or x(unknown) or - (don't care) or w (weak unknown) or H( weak high) or L( weak low) 
--std_ulogic -> 1 or 0 or u(undefined) or x(unknown) or - (don't care)

--bit_vector(3 downto 0)
--std_logic_vector (3 downto 0)
--std_ulogic_vector(3 downto 0)

--unsigned(3 downto 0)
--signed  (3 downto 0)

architecture dataflow of bit_adder is 
constant something: bit_vector(3 downto 0) := "1001"; 
begin 
	--A,B are inputs 
	--C,D, are outputs 
	--A => 2 bits
	
	--we assign to C using A and B (A and B)
	--,D <= not C;  Only ,for, buffer as buffer is allowed to be on the right side.
	-- if '1-' showing dont care for std_ulogic type 
		--else if '00'
		--else if '01'
	--"1001"
	--X <= A+B after 10 ps;
	--x <= A or B
end; 