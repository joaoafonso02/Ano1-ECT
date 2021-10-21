library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Timer is
	generic(CLK_FREQ_HZ	: positive := 50000000);
	port(	NewTime : in std_logic;
			reset : in std_logic;
			TimerEnable : in std_logic;
			clk : in std_logic;
			TimeValue	: in  std_logic_vector(7 downto 0);
			Time_exp : out std_logic);
end Timer;



architecture v5 of Timer is 
signal count: integer := 0;
--	constant TIME_CYCLES : positive := 4; -- For simulation purposes only 
	constant TIME_CYCLES : positive := to_integer(unsigned(TimeValue)) * CLK_FREQ_HZ;

begin
--	assert (N >= 2);
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				Time_exp <= '0';
				count <= 0;
				
			elsif (TimerEnable = '1') then
				if (count = 0) then -- quando o contador está a zero não faz nada
					if (NewTime = '1') then 
						count <= count + 1;
					end if;
					Time_exp <= '0';
				else
					if (count = (TIME_CYCLES - 1)) then -- quando a contagem tiver a acabar
						Time_exp <= '1'; -- Time_exp fica a 1 
						count <= 0; -- contagem volta para 0
					else -- enquanto nao tiver acabado soma um a contagem
						Time_exp <= '0'; 
						count <= count + 1;
					end if;
				end if;
			end if;
		end if;
end process;
end v5;