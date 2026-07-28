library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.Yunayev_Final_Assignment_Package.all;

entity Yunayev_Final_Project is
port(
	CLK: in std_logic;
	Reset        : in  std_logic; 
   Increment    : in  std_logic;
	Reg1Load: in std_logic;
	Reg2Load: in std_logic;
	Reg3Load: in std_logic;
	Reg4Load: in std_logic;
	WriteEnable: in std_logic;
	SelectDemux: in std_logic;
	SelectMux: in std_logic;
	AddSub: in std_logic;
	Sum: out std_logic_vector(31 downto 0);
	Overflow: out std_logic
);
end Yunayev_Final_Project;


architecture Behavioral of Yunayev_Final_Project is
 signal Reg1LoadFF: STD_LOGIC;
 signal Reg2LoadFF: STD_LOGIC;
 signal Reg3LoadFF: STD_LOGIC;
 signal Reg4LoadFF: STD_LOGIC;
 signal WriteEnableFF: STD_logic;
 signal SelectDemuxFF: STD_logic;
 signal SelectMuxFF: STD_logic;
 signal AddSubFF: STD_logic;
 signal Address: Std_logic_vector (4 DOWNTO 0);
 signal Reg3In:Std_logic_vector (31 DOWNTO 0);
 signal Reg3Out:Std_logic_vector (31 DOWNTO 0);
 signal DataOut:Std_logic_vector (31 DOWNTO 0);
 signal Reg1In: STD_LOGIC_VECTOR(31 downto 0);
 signal Reg2In: STD_LOGIC_VECTOR(31 downto 0);
 signal Reg1Out: STD_LOGIC_VECTOR(31 downto 0);
 signal Reg2Out: STD_LOGIC_VECTOR(31 downto 0);
 signal Reg4In: STD_LOGIC_VECTOR(31 downto 0);
 signal Reg4Out: STD_LOGIC_VECTOR(31 downto 0);
 begin
	FFReg1: D_FF
	port map(
		D   => Reg1Load,
      CLK => CLK,
      Q   => Reg1LoadFF
);

	FFReg2: D_FF
		port map(
			D   => Reg2Load,
			CLK => CLK,
			Q   => Reg2LoadFF
);

	FFReg3: D_FF
		port map(
			D   => Reg3Load,
			CLK => CLK,
			Q   => Reg3LoadFF
);

	FFReg4: D_FF
		port map(
			D   => Reg4Load,
			CLK => CLK,
			Q   => Reg4LoadFF
);

	FFWriteEnable: D_FF
		port map(
			D   => WriteEnable,
			CLK => CLK,
			Q   => WriteEnableFF
);	

	FFSelectDemux: D_FF
		port map(
			D   => SelectDemux,
			CLK => CLK,
			Q   => SelectDemuxFF
);	

	FFSelectMux: D_FF
		port map(
			D   => SelectMux,
			CLK => CLK,
			Q   => SelectMuxFF
);	

	FFAddSub: D_FF
		port map(
			D   => AddSub,
			CLK => CLK,
			Q   => AddSubFF
);	

	AddressCU: MemAddrAccumulator
		port map(
		CLK  => CLK,     
      RESET  => Reset,   
		INCREMENT => Increment,
		ADDR  => Address
);

	Ram: lpm_ram
	port map(
		address	=> Address,
		clock	=> CLK,	
		data	=> Reg3Out, 
		wren	=> WriteEnableFF,	
		q =>	DataOut 
);
	
 Demux: Demux_1to2_32bit
	port map(
		D  => DataOut,
      S => SelectDemuxFF,
		Q0 => Reg1In,
		Q1 => Reg2In
	);
	
	Reg1: Register32
	port map(
		CLK => CLK,
      data_in => Reg1In, 
      load => Reg1LoadFF,
      data_out => Reg1Out 
	);
	
	Reg2: Register32
	port map(
		CLK => CLK,
      data_in => Reg2In, 
      load => Reg2LoadFF,
      data_out => Reg2Out 
	);
	
	Mux: LPM_MUXER
	port map(
	data0x => Reg2Out,
		data1x=> Reg3Out,	
		sel=> SelectMuxFF,	
		result => Reg4in	
	);
	
	reg4: Register32
	port map(
		CLK => CLK,
      data_in => Reg4In, 
      load => Reg4LoadFF,
      data_out => Reg4Out 
	);
	
	Add_Sub: LPM_ADDER_SUBER
	port map(
	add_sub => AddSubFF,
		dataa	=> Reg1Out,	
		datab	=> Reg4Out, 
		overflow	=>OverFlow,
		result => Reg3In	
);

reg3: Register32
	port map(
		CLK => CLK,
      data_in => Reg3In, 
      load => Reg3LoadFF,
      data_out => Reg3Out 
	);

	Sum <= Reg3Out;
end Behavioral;