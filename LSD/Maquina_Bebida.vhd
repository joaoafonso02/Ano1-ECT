library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Maquina_bebida is 

	port(CLOCK_50	: in  std_logic;
		  KEY		: in  std_logic_vector(3 downto 0);
		  SW		: in  std_logic_vector(17 downto 0);
		  LEDR		: out std_logic_vector(17 downto 0);
		  LEDG 		: out std_logic_vector(7 downto 0);
		  HEX0 		: out std_logic_vector(6 downto 0);
		  HEX1 		: out std_logic_vector(6 downto 0);
		  HEX2 		: out std_logic_vector(6 downto 0);
		  HEX3 		: out std_logic_vector(6 downto 0);
		  HEX4 		: out std_logic_vector(6 downto 0);
		  HEX5 		: out std_logic_vector(6 downto 0));

end Maquina_bebida;

architecture Shell of Maquina_bebida is
	
	signal S_prog,s_lim,s_Pes,s_Gelo, s_cleanKEY0, s_cleanKEY1,s_cleanKEY2,s_cleanKEY3 : std_logic;
	signal msg_display,msg_displaytmp, msgescolha_display, msggelo_display : std_logic_vector(15 downto 0);
	signal clock_6Hz 	 								: std_logic;
	-- sinais globais
	signal sg_reset,sg_Ddone,s_rgelo, m_gelo 	        : std_logic;
	-- sinais timer
	signal s_newTime, s_timeExp, timerWait, s_msgblink	: std_logic;
	signal s_timeVal									: std_logic_vector(3 downto 0);
	signal s_msgtimetemp,s_msgtime 						: std_logic_vector(7 downto 0);
	constant m_apagado									: std_logic_vector(7 downto 0) := "11011101"; -- apagado
begin
	
	
	sg_reset <= SW(17);
	-- leds de teste
--	LEDR(1) <= clock_6Hz;
--	ledR(4) <= s_newTime;
	ledR(5) <= m_gelo;	-- led de informação de escolha de gelo
	ledG(3 downto 0) <= s_timeVal;-- tempo que fica no estado
	LEDR(17) <= sg_reset; 
	
	S_prog <= KEY(1);
	LEDR(16) <= S_prog;
	ledR(1) <= sg_Ddone;--led quando a bebida ta feita
	
	msg_displaytmp <= msggelo_display when (m_gelo = '1') else msgescolha_display;--logica de escolha de qual a mensagem a colocar no display
	msg_display <= (m_apagado & m_apagado) when (s_msgblink = '1' and clock_6Hz = '1') else msg_displaytmp;
	
	s_rgelo <= sg_Ddone or sg_reset;	-- sinal para fazer reset ao gelo assim que a bebida é preparada

	-- Maquina de Escolha de produtos
Esc_Prod_FSM : entity work.Escolha_Prod_FSM(Behavioral)
						port map(	reset	=> sg_reset,
									clk	  => CLOCK_50,
									--timer
									T_start => s_newTime,
									T_timeVal => s_timeVal,
									T_timeExp => s_timeExp,
									--pins
									KEY0   => s_cleanKEY0, 
									KEY1  => s_cleanKEY1,
									KEY2  => s_cleanKEY2,
									inGelo => s_Gelo,
									--mensagens
									msg_blink => s_msgblink,
									l_Done  => sg_Ddone,
									bin_Msg => msgescolha_display,
									sel_Gelo => m_gelo,
									s_prog => S_prog
									);

GeloSel_FSM : entity work.GeloSel_FSM(Behavioral)
						port map(Clk => cloCK_50,
									Reset => s_rgelo,
									Mais => s_cleanKEY0,
									Menos => s_cleanKEY1,
									bin_Msg => msggelo_display,
									Gelo => open
									);

-- Registo
Registo : entity work.Registo(Behavioral)
						port map(Clk => CLOCK_50,
									Reset => sg_reset,
									in_Fanta  => SW(1),
									in_lim    => key(1),
									in_Pes    => key(2),
									in_Gelo   => SW(0),
									out_Fanta => open,
									out_lim   => open,
									out_Pes   => open,
									out_Gelo  => s_gelo
									);

-- Timer
Timer : entity work.Timer(Behavioral)
						port map(NewTime => s_newTime,
									reset => sg_reset,
									TimerEnable => not s_Gelo,
									clk => CLOCK_50,
									timeVal	=> s_timeVal,
									Timeexp => s_timeExp
									);
									

--Debouncers

debuncerKEY0 : entity work.DebounceUnit(v6)
							generic map(kHzClkFreq => 50000,
										mSecMinInWidth    => 100,
										inPolarity        => '0',
										outPolarity        => '1')
							port map(refClk => CLOCK_50,
								dirtyIn =>KEY(0),
								pulsedOut =>s_cleanKEY0);

debuncerKEY1 : entity work.DebounceUnit(v6)
							generic map(kHzClkFreq        => 50000,
										mSecMinInWidth    => 100,
										inPolarity        => '0',
										outPolarity        => '1')
							port map(refClk => CLOCK_50,
								dirtyIn =>KEY(1),
								pulsedOut =>s_cleanKEY1);

debuncerKEY2 : entity work.DebounceUnit(v6)
							generic map(kHzClkFreq        => 50000,
										mSecMinInWidth    => 100,
										inPolarity        => '0',
										outPolarity        => '1')
							port map(refClk => CLOCK_50,
									dirtyIn =>KEY(2),
									pulsedOut =>s_cleanKEY2);

debuncerKEY3 : entity work.DebounceUnit(v6)
							generic map(kHzClkFreq        => 50000,
										mSecMinInWidth    => 100,
										inPolarity        => '0',
										outPolarity        => '1')
							port map(refClk => CLOCK_50,
								dirtyIn =>KEY(3),
								pulsedOut =>s_cleanKEY3);

----	Divisor de frequência para 1hz
FreqDiv : entity work.ClkDividerN(RTL)
						generic map(k => 8333334)
						port map(clkIn	=> CLOCK_50,
									clkOut => clock_6Hz
								);

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
									

Bin2bcd : entity work.Bin2BCD(Behavioral)
						port map(binInput => s_timeVal,
									BCDOut => s_msgtimetemp
									);

s_msgtime <= s_msgtimetemp when(s_prog = '1') else m_apagado;

display4 : entity work.Bin7SegDecoder(Behavioral)
						port map(binInput => s_msgtime(3 downto 0),
									decOut_n => HEX4
									);
display5 : entity work.Bin7SegDecoder(Behavioral)
						port map(binInput => s_msgtime(7 downto 4),
									decOut_n => HEX5
									);

end Shell;