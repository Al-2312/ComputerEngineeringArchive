library ieee;
use ieee.std_logic_1164.all;


package Yunayev_Adder_Package is 
constant N: integer := 4;
component Half_Adder_AY is 
	port (
			A : in std_logic;
			B : in std_logic;
			S : out std_logic;
			C : out std_logic
		);
end component;

component Full_Adder_AY is 
	port(
			A:in std_logic;
			B:in std_logic;
			Cin: in std_logic;
			S: out std_logic;
			Cout: out std_logic
		);
end component;

component BitNFull_Add_Sub_AY is 
port(
			
			A:in std_logic_vector(N-1 downto 0);
			B:in std_logic_vector(N-1 downto 0);
			Cin: in std_logic;-- will be the same as Operational code if 0 do add, if 1 do subtratciton 
			S: out std_logic_vector(N-1 downto 0);
			Cout: out std_logic
			
		);
end component;

component Full_Add_Sub_AY is 
	port(
			A:in std_logic;
			B:in std_logic;
			Cin: in std_logic;
			S: out std_logic;
			Cout: out std_logic;
			P: out std_logic; -- For Carry look 
			G: out std_logic -- For Carry Looks
		);
end component;


component LPM_ADD_SUB_AY
	PORT
	(
			add_sub	: IN STD_LOGIC ;
			cin	: IN STD_LOGIC ;
			dataa	: IN STD_LOGIC_VECTOR (0 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (0 DOWNTO 0);
			cout	: OUT STD_LOGIC ;
			overflow	: OUT STD_LOGIC ;
			result	: OUT STD_LOGIC_VECTOR (0 DOWNTO 0)
	);
end component;


component Flags_AY is 
port (
        S         : in std_logic_vector(N-1 downto 0);  -- Result of the add/sub operation
        Cin       : in std_logic;                       -- Carry-in for the MSB in add/sub
        Cout      : in std_logic;                       -- Carry-out from the MSB in add/sub
        OVERFLOW  : out std_logic;                      -- Overflow flag
        ZERO      : out std_logic;                      -- Zero flag
        NEGATIVE  : out std_logic                       -- Negative flag
    );
end component;


end package; 