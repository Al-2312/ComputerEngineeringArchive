library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register32 is
    Port ( CLK      : in  STD_LOGIC;
           data_in  : in  STD_LOGIC_VECTOR(31 downto 0);
           load     : in  STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR(31 downto 0)
           );
end Register32;

architecture Behavioral of Register32 is

    component D_FF is
        Port ( D   : in  STD_LOGIC;
               CLK : in  STD_LOGIC;
               Q   : out STD_LOGIC
               );
    end component;
    
    signal Q : STD_LOGIC_VECTOR(31 downto 0);
    
begin

    gen_reg: for i in 0 to 31 generate
        U1: D_FF
            port map (
                D   => data_in(i),
                CLK => CLK,
                Q   => Q(i)
            );
    end generate;

    process(CLK)
    begin
        if rising_edge(CLK) then
            if load = '1' then
                data_out <= Q;
            end if;
        end if;
    end process;

end Behavioral;