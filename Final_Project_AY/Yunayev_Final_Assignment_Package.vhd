library ieee;
use ieee.std_logic_1164.all;

package Yunayev_Final_Assignment_Package is 

component lpm_ram
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end component;


component Register32 is
    Port ( CLK      : in  STD_LOGIC;
           data_in  : in  STD_LOGIC_VECTOR(31 downto 0);
           load     : in  STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR(31 downto 0)
           );
end component;


component LPM_ADDER_SUBER
	PORT
	(
		add_sub		: IN STD_LOGIC ;
		dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		overflow		: OUT STD_LOGIC ;
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end component;

component LPM_MUXER
	PORT
	(
		data0x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data1x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		sel		: IN STD_LOGIC ;
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end component;

component MemAddrAccumulator is
    Port ( CLK       : in  STD_LOGIC;
           RESET     : in  STD_LOGIC;
           INCREMENT : in  STD_LOGIC;
           ADDR      : out STD_LOGIC_VECTOR(4 downto 0)
           );
end component;

component D_FF is
    Port ( D   : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q   : out STD_LOGIC
           );
end component;

component Demux_1to2_32bit is
    Port ( D  : in  STD_LOGIC_VECTOR(31 downto 0);
           S  : in  STD_LOGIC;
           Q0 : out STD_LOGIC_VECTOR(31 downto 0);
           Q1 : out STD_LOGIC_VECTOR(31 downto 0)
           );
end component;

end package;