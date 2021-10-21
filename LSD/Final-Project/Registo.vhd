library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Registo is 

	port(Clk,Reset,in_Fanta,in_lim,in_Pes,in_Gelo : in std_logic;
		  out_Fanta,out_lim,out_Pes,out_Gelo : out std_logic);

end Registo;

architecture Behavioral of Registo is
begin 
	Process(Clk)
	begin
		if(rising_edge(clk)) then		
			if(reset = '1') then
				out_Fanta <= '0';
				out_lim <= '0';
				out_Pes   <= '0';
				out_Gelo  <= '0';
			else
				out_Fanta <= in_Fanta;
				out_Pes <= in_Pes;
				out_Gelo <= in_Gelo;
				Out_lim <= in_lim;
			end if;
		end if;
	end Process;
end Behavioral;
