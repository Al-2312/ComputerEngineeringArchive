library ieee;
use ieee.std_logic_1164.all;

entity final10sub_tb is 
end entity;

architecture arch of final10sub_tb is 
component Yunayev_Final_Project is
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
end component;
    constant ClockPeriod    : time    := 100 ps;-- to make 100 ps

	Signal CLK:  std_logic := '1';
	Signal Reset        : std_logic; 
        Signal Increment    :   std_logic;
	Signal Reg1Load: std_logic;
	Signal Reg2Load: std_logic;
	Signal Reg3Load:  std_logic;
	Signal Reg4Load: std_logic;
	Signal WriteEnable:  std_logic;
	Signal SelectDemux:  std_logic;
	Signal SelectMux: std_logic;
	Signal AddSub:  std_logic;
	Signal Sum: std_logic_vector(31 downto 0);
	Signal Overflow:  std_logic;

begin
	Porter_Potty: Yunayev_Final_Project
     port map(
	CLK => CLK,
	Reset => Reset,
   	Increment => Increment,
	Reg1Load => Reg1Load,
	Reg2Load => Reg2Load, 
	Reg3Load => Reg3Load,
	Reg4Load => Reg4Load,
	WriteEnable => WriteEnable,
	SelectDemux => SelectDemux,
	SelectMux => SelectMux,
	AddSub => AddSub,
	Sum => Sum,
	Overflow => Overflow
);
	CLK <= not CLK after ClockPeriod / 2;
	process is
	begin 
	-- Problem with ram where address 02 HEX is start for data 0 which is supposed to be address 00 Now has been resolve 
	Reset        <= '1';
        Increment    <= '0';
        WriteEnable  <= '0';
        Reg1Load     <= '0';
        Reg2Load     <= '0';
        Reg3Load     <= '0';
        Reg4Load     <= '0';
        SelectDemux  <= '0';
        SelectMux    <= '0';
        AddSub       <= '0';
	wait for ClockPeriod; -- wait as there is a delay 
	 Reset <= '0';
        wait for 2*ClockPeriod;
	Reg1Load <= '1'; -- Load 0 into Reg1
	wait for ClockPeriod;
	Reg1Load <= '0';
	Increment <= '1';
	SelectDemux <= '1'; -- for error turn demux to '0' 
	wait for ClockPeriod;
	Increment <= '0';
	wait for 2*ClockPeriod;
	Reg2Load <= '1';
	wait for ClockPeriod;
	Reg2Load <= '0';
	wait for ClockPeriod;
	Reg4Load <= '1';
	wait for ClockPeriod;
	Reg4Load <= '0';
	wait for ClockPeriod;
	Reg3Load <= '1'; 
	wait for ClockPeriod;
	Reg3Load <= '0';
	wait for ClockPeriod;
          -- End simulation
	-- change demux back to 0 and turn on mux to 1 
	SelectDemux <= '0';
	SelectMux <= '1';
	-- make loop
	for i in 0 to 13 loop -- 14 time for the full 10 numbers
   	   	Increment <= '1'; 
	   	wait for ClockPeriod;
	   	Increment <= '0';
	   	wait for 2*ClockPeriod;
		Reg1Load <= '1'; -- Load i into Reg1
		wait for ClockPeriod;
		Reg1Load <= '0';
		wait for ClockPeriod;
		Reg4Load <= '1'; -- Load reg3out into Reg4 
		wait for ClockPeriod;
		Reg4Load <= '0';
		wait for ClockPeriod;
		Reg3Load <= '1'; 
		wait for ClockPeriod;
		Reg3Load <= '0';
		wait for ClockPeriod;
	end loop;

		Increment <= '1';
		wait for ClockPeriod;
		Increment <= '0';
		WriteEnable <= '1';
		wait for ClockPeriod;
		WriteEnable <= '0';
		wait for 2*ClockPeriod;

	        wait;
		end process;
	
end arch;