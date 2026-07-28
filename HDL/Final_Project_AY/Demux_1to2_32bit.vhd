library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demux_1to2_32bit is
    Port ( D  : in  STD_LOGIC_VECTOR(31 downto 0);
           S  : in  STD_LOGIC;
           Q0 : out STD_LOGIC_VECTOR(31 downto 0);
           Q1 : out STD_LOGIC_VECTOR(31 downto 0)
           );
end Demux_1to2_32bit;

architecture Behavioral of Demux_1to2_32bit is
begin
    process(S, D)
    begin
        if (S = '0') then
            Q0 <= D;
            Q1 <= (others => '0');
        else
            Q1 <= D;
            Q0 <= (others => '0');
        end if;
    end process;
end Behavioral;
