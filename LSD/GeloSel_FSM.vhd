library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity GeloSel_FSM is 

	port(Clk,Reset,Mais,Menos : in std_logic;
		  bin_Msg : out std_logic_vector(15 downto 0);
		  Gelo : out std_logic_vector(2 downto 0));

end GeloSel_FSM;

architecture Behavioral of GeloSel_FSM is

	type TState is (S0,S1,S2,S3,S4);
	signal s_currentState, s_nextState	: TState := S2;
	signal s_stateChanged : std_logic := '1';

begin 

sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= S2;
			else
				s_currentState	<= s_nextState;
			end if;
		end if;
	end process;
	

comb_proc : process(s_currentState)
	begin
		case (s_currentState) is
		when S0 =>
			Gelo <= "000";
			bin_Msg <= (others => '1');
			if(Mais = '1') then
				s_nextState <= S1;
			else
				s_nextState <= S0;
			end if;
			
		when S1 =>
			Gelo <= "001";
			bin_Msg <= ("1000111111111111");
			if(Mais = '1') then
				s_nextState <= S2;
			elsif(Menos = '1') then
				s_nextState <= S0;
			else
				s_nextState <= S1;
			end if;	

		when S2 =>
			Gelo <= "010";
			bin_Msg <= ("1000100011111111");
			if(Mais = '1') then
				s_nextState <= S3;
			elsif(Menos = '1') then
				s_nextState <= S1;
			else
				s_nextState <= S2;
			end if;	

		when S3 =>
			Gelo <= "011";
			bin_Msg <= ("1000100010001111");
			if(Mais = '1') then
				s_nextState <= S4;
			elsif(Menos = '1') then
				s_nextState <= S2;
			else
				s_nextState <= S3;
			end if;

		when S4 =>
			Gelo <= "100";
			bin_Msg <= ("1000100010001000");
			if(Menos = '1') then
				s_nextState <= S3;
			else
				s_nextState <= S4;
			end if;
		end case;
	end Process;
end Behavioral;