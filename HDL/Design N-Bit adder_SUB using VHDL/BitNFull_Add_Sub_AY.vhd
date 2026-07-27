library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Yunayev_Adder_Package.all;

entity BitNFull_Add_Sub_AY is 
  generic(
        N : integer := 4  -- Define N as a generic
    );
	port(
			
			A:in std_logic_vector(N-1 downto 0);
			B:in std_logic_vector(N-1 downto 0);
			Cin: in std_logic;-- will be the same as Operational code if 0 do add, if 1 do subtratciton 
			S: out std_logic_vector(N-1 downto 0);
			Cout: out std_logic
		);
end;


architecture Behavioral of BitNFull_Add_Sub_AY is
		signal CarryOuts:std_logic_vector(N downto 0);
		signal overflow: std_logic;
		signal zero:std_logic;
		signal negative:std_logic;
		signal S_Signal:std_logic_vector(N-1 downto 0);
		signal B_inverted:std_logic_vector(N-1 downto 0);
		

begin 
		CarryOuts(0) <= Cin;
		forloop: for i in 0 to N-1 generate  
		B_inverted(i) <= B(i) xor Cin;
			fourBit_add_sub: Full_Adder_AY port map(
						A =>A(i),
						B => B_inverted(i), --B(i) WILL BE OUR ERROR 
						Cin => CarryOuts(i),
						S => S(i),
						Cout => CarryOuts(i+1)
			);
		S_Signal(i) <= A(i) xor (B(i)xor Cin) xor CarryOuts(i);
		
		end generate forloop;
		
			Cout <= CarryOuts(N);
			overflow <= CarryOuts(N) xor CarryOuts(N-1);
			negative <= S_Signal(N-1);
		
						
    process(S_Signal)
        variable all_zero : boolean := true;
    begin
        for i in 0 to N-1 loop
            if S_Signal(i) = '1' then
                all_zero := false;
                exit;
            end if;
        end loop;
        
        if all_zero then
            zero <= '1';
        else
            zero <= '0';
        end if;
		end process;


	 process(overflow, zero, negative)
    begin
	 
        if overflow = '1' then
            report "There is an overflow" severity warning;
        end if;
        
        if zero = '1' then
            report "The Sum is zero" severity warning;
        end if;
        
        if negative = '1' then
            report "The sum is negative" severity warning;
        end if;
    end process;
			
end;