library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MemAddrAccumulator is
    Port ( CLK       : in  STD_LOGIC;
           RESET     : in  STD_LOGIC;
           INCREMENT : in  STD_LOGIC;
           ADDR      : out STD_LOGIC_VECTOR(4 downto 0)
           );
end MemAddrAccumulator;

architecture Behavioral of MemAddrAccumulator is
    signal address : STD_LOGIC_VECTOR(4 downto 0) := "00000";
begin
    process(CLK, RESET)
    begin
        if (RESET = '1') then
            address <= "00000";
        elsif (rising_edge(CLK)) then
            if (INCREMENT = '1') then
                address <= address + 1;
            end if;
        end if;
    end process;

    ADDR <= address;

end Behavioral;
