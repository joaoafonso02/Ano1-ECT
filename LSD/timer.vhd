library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Timer is
	generic(CLK_FREQ_HZ	: positive := 50000000);
	port(	NewTime : in std_logic;
			reset : in std_logic;
			TimerEnable : in std_logic;
			clk : in std_logic;
			TimeVal	: in  std_logic_vector(3 downto 0);
			Timeexp : out std_logic);
end Timer;

architecture Behavioral of Timer is 
signal count: integer := 0;
--constant TIME_CYCLES : integer := 4; -- For simulation purposes only 
constant TIME_CYCLES : integer := to_integer(unsigned(TimeVal)) * CLK_FREQ_HZ;

begin
--	assert (N >= 2);
	process(clk)
	begin
		if (rising_edge(clk)) then
			if(reset = '1') then 
				count <= 0;
			elsif(timerEnable = '1') then
				if(newTime = '1') then
					count <= TIME_CYCLES;
				else
				 count <= count - 1;
				end if;
			end if;
		end if;
end process;

timeexp <= '1' when (count = 1)  else '0';

end Behavioral;