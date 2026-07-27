library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Yunayev_Adder_Package.all;

entity NbitCarryLook_Add_Sub_AY is 
generic(
        N : integer := 32 
    );
port(
			
			A:in std_logic_vector(N-1 downto 0);
			B:in std_logic_vector(N-1 downto 0);
			Cin: in std_logic;-- will be the same as Operational code if 0 do add, if 1 do subtratciton 
			S: out std_logic_vector(N-1 downto 0);-- for carry out 
			Cout: out std_logic
			
		);
end;
	
-- SIMILAR TO THE FULL NBIT ADD/SUB	
architecture structural of NbitCarryLook_Add_Sub_AY is 
		signal B_inverted:std_logic_vector(N-1 downto 0);
		signal S_Signal:std_logic_vector(N-1 downto 0);
		signal CarryIns:std_logic_vector(N downto 0);
		signal P: std_logic_vector(N-1 downto 0);
		signal G: std_logic_vector(N-1 downto 0);
		
		signal overflow: std_logic;
		signal zero:std_logic;
		signal negative:std_logic;
		
begin
		CarryIns(0) <= Cin;
		forloop: for i in 0 to N-1 generate
		B_inverted(i) <= B(i) xor Cin;	
			NBit_add_Sub: Full_Adder_AY port map(
						A =>A(i),
						B => B_inverted(i),
						Cin => CarryIns(i),
						S => open,--S_signal(i) had a weird error so did the solution manually
						Cout => open --will use later 
						
			);
			end generate forloop;

	
			looker:for i in 0 to N-1 generate
			P(i) <= A(i) xor B_inverted(i);  -- For Carry Looks
			G(i) <= A(i) and B_inverted(i); -- For Carry Looks
			CarryIns(i+1) <= G(i) or (P(i) and CarryIns(i));
			S_signal(i) <= P(i) xor CarryIns(i);
			end generate looker;
		
	S <= S_signal;
	Cout <= CarryIns(N);
	
	overflow <= CarryIns(N) xor CarryIns(N-1);
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


