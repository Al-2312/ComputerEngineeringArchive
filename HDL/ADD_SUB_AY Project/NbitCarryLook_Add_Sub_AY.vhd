library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Yunayev_Adder_Package.all;

entity NbitCarryLook_Add_Sub_AY is 
generic(
        N : integer := 32  -- Define N as a generic
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
						S => open,--S_signal(i),
						Cout => open --will use later 
						
			);
			end generate forloop;

	
			looker:for i in 0 to N-1 generate
			P(i) <= A(i) xor B_inverted(i);  -- For Carry Looks
			G(i) <= A(i) and B_inverted(i); -- For Carry Looks
			CarryIns(i+1) <= G(i) or (P(i) and CarryIns(i));
			S_signal(i) <= P(i) xor CarryIns(i);
			end generate looker;
			
			
--			process(S_signal,CarryIns)
--				begin
--					for i in 0 to N-1 loop
--						if i=0 then 
--							S(i) <= CarryIns(N);
--						else 
--						S(i)<= S_signal(i-1);
--						end if;
--					end loop;
--					Cout <= S_signal(N-1);
--				end process;
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

--entity NbitCarryLook_Add_Sub_AY is
--  generic (
--    g_WIDTH : integer := 32
--    );
--  port (
--    i_add1  : in std_logic_vector(g_WIDTH-1 downto 0);
--    i_add2  : in std_logic_vector(g_WIDTH-1 downto 0);
--    --
--    o_result   : out std_logic_vector(g_WIDTH downto 0)
--    );
--end NbitCarryLook_Add_Sub_AY;
-- 
-- 
--architecture rtl of NbitCarryLook_Add_Sub_AY is
--
-- 
--  signal w_G : std_logic_vector(g_WIDTH-1 downto 0); -- Generate
--  signal w_P : std_logic_vector(g_WIDTH-1 downto 0); -- Propagate
--  signal w_C : std_logic_vector(g_WIDTH downto 0);   -- Carry
-- 
--  signal w_SUM  : std_logic_vector(g_WIDTH-1 downto 0);
-- 
--begin
-- 
--  -- Create the Full Adders
--  GEN_FULL_ADDERS : for ii in 0 to g_WIDTH-1 generate
--    FULL_ADDER_INST : Full_Adder_AY
--      port map (
--        A  => i_add1(ii),
--        B  => i_add2(ii),
--        Cin => w_C(ii),        
--        S  => w_SUM(ii),
--        Cout => open
--        );
--  end generate GEN_FULL_ADDERS;
-- 
--  -- Create the Generate (G) Terms:  Gi=Ai*Bi
--  -- Create the Propagate Terms: Pi=Ai+Bi
--  -- Create the Carry Terms:  
--  GEN_CLA : for jj in 0 to g_WIDTH-1 generate
--    w_G(jj)   <= i_add1(jj) and i_add2(jj);
--    w_P(jj)   <= i_add1(jj) or i_add2(jj);
--    w_C(jj+1) <= w_G(jj) or (w_P(jj) and w_C(jj));
--  end generate GEN_CLA;
--     
--  w_C(0) <= '0'; -- no carry input
-- 
--  o_result <= w_C(g_WIDTH) & w_SUM;  -- VHDL Concatenation
--   
--end rtl;



