library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Yunayev_Adder_Package.all;

entity BitN_LPM_Add_Sub_AY is 
	  generic(
        N : integer := 32  -- Define N in entity or modelsim will not work
    );
	port(
			
			A:in std_logic_vector(N-1 downto 0);
			B:in std_logic_vector(N-1 downto 0);
			Cin: in std_logic;-- will be the same as Operational code if 0 do add, if 1 do subtratciton 
			S: out std_logic_vector(N-1 downto 0);
			Cout: out std_logic
		);
end;


architecture structural of BitN_LPM_Add_Sub_AY is
		signal CarryOuts:std_logic_vector(N downto 0);
		signal S_signal:std_logic_vector(N-1 downto 0);
		signal Carry:std_logic;
		
		signal overflow: std_logic;
		signal zero:std_logic;
		signal negative:std_logic;
begin 
		process(Cin)
		begin
		if Cin ='1'then
		 CarryOuts(0) <= '0';
		 else 
		 CarryOuts(0) <= '1';
		 end if;
		 end process;
		 
		forloop: for i in 0 to N-1 generate  
			Bit_add_sub: LPM_ADD_SUB_AY port map(
						dataa =>A(i downto i),
						datab => B(i downto i),
						add_sub => Cin,
						cin => CarryOuts(i),
						result => S(i downto i),
						cout => CarryOuts(i+1)
			);
		S_Signal(i) <= A(i) xor (B(i)xor (not Cin)) xor CarryOuts(i);	
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