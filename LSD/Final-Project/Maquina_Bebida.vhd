library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Maquina_bebida is 

	port(CLOCK_50	: in  std_logic;
		  KEY			: in  std_logic_vector(3 downto 0);
		  SW			: in  std_logic_vector(17 downto 0);
		  LEDR		: out std_logic_vector(17 downto 0);
		  LEDG 		: out std_logic_vector(7 downto 0);
		  HEX0 		: out std_logic_vector(6 downto 0);
		  HEX1 		: out std_logic_vector(6 downto 0);
		  HEX2 		: out std_logic_vector(6 downto 0);
		  HEX3 		: out std_logic_vector(6 downto 0));

end Maquina_bebida;

architecture Shell of Maquina_bebida is
	
	signal s_Fanta,s_lim,s_Pes,s_Gelo : std_logic;
	signal msg_display : std_logic_vector(15 downto 0);
	signal clock_1Hz 	 : std_logic;
	-- sinais globais
	signal sg_reset 	 : std_logic;
	-- sinais timer
	signal s_newTime, s_timeExp , timerWait	: std_logic;
	signal s_timeVal									: std_logic_vector(7 downto 0);
begin
	
	
	sg_reset <= SW(17);
	-- leds de teste
	LEDR(1) <= clock_1Hz;
	ledR(4) <= s_newTime;
	ledR(5) <= s_timeExp;
	ledG(7 downto 0) <= s_timeVal;
	LEDR(17) <= sg_reset;
	
	
-- Maquina de Escolha de produtos
Esc_Prod_FSM : entity work.Escolha_Prod_FSM(Behavioral)
						port map(reset	  => sg_reset,
									clk	  => CLOCK_50,
									--timer
									T_start => s_newTime,
									T_timeVal => s_timeVal,
									T_timeExp => not s_gelo,
									--pins
									p_Fan   => not s_Fanta, 
									p_SOLI  => not s_lim,
									p_SPES  => not s_Pes,
									inGelo => not s_Gelo,
									--mensagens
									l_Done  => LEDR(0),
									bin_Msg => msg_display,
									sel_Gelo => open
									);
-- Registo
Registo : entity work.Registo(Behavioral)
						port map(Clk => CLOCK_50,
									Reset => sg_reset,
									in_Fanta  => key(0),
									in_lim    => key(1),
									in_Pes    => key(2),
									in_Gelo   => key(3),
									out_Fanta => s_Fanta,
									out_lim   => s_lim,
									out_Pes   => s_Pes,
									out_Gelo  => s_Gelo
									);

-- Timer
Timer : entity work.Timer(v5)
						port map(NewTime => s_newTime,
									reset => sg_reset,
									TimerEnable => '1',
									clk => CLOCK_50,
									TimeValue	=> s_timeVal,
									Time_exp => s_timeExp
									);
--
---- Timer
--Timer : entity work.TimerAuxFSM(Behavioral)
--						port map(reset		 => sg_reset,
--								   clk		 => not clock_1Hz,
--								   newTime	 => s_newTime,
--								   timeVal	 => s_timeVal,
----								   timerWait => '0',
--								   timeExp	 => s_timeExp
----									debug => LEDR(2)
--									);
									
----	Divisor de frequência para 1hz
--FreqDiv : entity work.ClkDividerN(Behavioral)
--						generic map(divFactor => 50000000)
--						port map(clkIn	=> CLOCK_50,
--									clkOut => clock_1Hz
--									);

-- displays
display0 : entity work.Bin_to_char_7SegDecoder(Behavioral)
						port map(binInput => msg_display(3 downto 0),
									decOut_n => HEX0
									);
display1 : entity work.Bin_to_char_7SegDecoder(Behavioral)
						port map(binInput => msg_display(7 downto 4),
									decOut_n => HEX1
									);
display2 : entity work.Bin_to_char_7SegDecoder(Behavioral)
						port map(binInput => msg_display(11 downto 8),
									decOut_n => HEX2
									);
display3 : entity work.Bin_to_char_7SegDecoder(Behavioral)
						port map(binInput => msg_display(15 downto 12),
									decOut_n => HEX3
									);
end Shell;