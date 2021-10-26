library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Escolha_Prod_FSM is
	port(reset		: in  std_logic;
		  clk		: in  std_logic;
		  
		  -- sinais de comunicação com o timer
		  T_start   : out std_logic; 
		  T_timeVal	: out std_logic_vector(3 downto 0); -- valor que passa ao timer quanto tempo esperar
		  T_timeExp	: in  std_logic; -- indica que o timer já acabou
		  
		  -- pins de seleção
		  KEY0: in std_logic; 
		  KEY1 : in std_logic;
		  KEY2 : in std_logic;
		  s_prog : in std_logic;
		  
		  -- sinais de informação
		  l_Done : out std_logic;
		  bin_Msg : out std_logic_vector(15 downto 0);
		  Msg_blink : out std_logic;
		  
		  --gelo
		  sel_gelo : out std_logic;
		  inGelo : in std_logic
		  
		 );
end Escolha_Prod_FSM;

architecture Behavioral of Escolha_Prod_FSM is
	
	-- Constantes de tempo
	signal BOOT_TIME				: std_logic_vector(3 downto 0) := "0110"; -- 6 s
	signal FAN_PREP_TIME			: std_logic_vector(3 downto 0) := "1000"; -- 8 s
	signal SOLI_PREP_TIME			: std_logic_vector(3 downto 0) := "1000"; -- 8 s
	signal SPES_PREP_TIME			: std_logic_vector(3 downto 0) := "1000"; -- 8 s
	signal DONE_TIME				: std_logic_vector(3 downto 0) := "0010"; -- 2 s

	-- mensagens
	--(4 bits para cada display )
	constant m_HIHI				: std_logic_vector(15 downto 0) := "0001001000010010"; -- HIHI
	constant m_EREF				: std_logic_vector(15 downto 0) := "0011010000110101"; -- EREF
	constant m_FAN	   			: std_logic_vector(15 downto 0) := "1101010101100111"; -- FAN
	constant m_SOLI				: std_logic_vector(15 downto 0) := "1010100010010010"; -- SOLI
	constant m_SPES				: std_logic_vector(15 downto 0) := "1010101100111010"; -- SPES
	constant m_Done				: std_logic_vector(15 downto 0) := "1100100001110011"; -- DONE
	
	type TState is (Init, Boot, Option, Done, St_Fan, St_Soli, St_Spes, Gelo, prog, st_progFan, st_progSoli, st_progSpes);
	signal state: TState := Init;
	signal current_state : TState;
	signal count : integer := 0;
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				state <= Init;
				l_Done <= '0';
				msg_blink <= '0';
			else
			    case state is
			        when Init =>
							l_Done <= '0';
							msg_blink <= '0';
            			
							T_timeVal <= BOOT_TIME;
            				T_start <= '1';
							
							bin_Msg <= m_HIHI;
							
							state <= Boot;
							
            		when Boot =>
							T_start <= '0';
							msg_blink <= '1';
							
            			if (T_timeExp = '1') then
            				state <= Option;
								current_state <= Boot;
							end if;
            			
            		when Option =>
            				bin_Msg <= m_EREF;
            				current_state <= Option;
							l_Done <= '0';
            				msg_blink <= '0';
							
						if (KEY0= '1') then
            				T_timeVal <= FAN_PREP_TIME;
            				T_start <= '1';
							state <= St_Fan;
								
            			elsif(KEY1 = '1') then
            				T_timeVal <= SOLI_PREP_TIME;
            				T_start <= '1';
								state <= St_Soli;
								
            			elsif(KEY2 = '1') then
            				T_timeVal <= SPES_PREP_TIME;
            				T_start <= '1';
								state <= St_Spes;
								
            			elsif(ingelo = '1') then
								state <= Gelo;
							elsif(s_prog = '1') then
								state <= prog;
            			end if;
							
						when prog =>
							if (KEY0= '1') then
								state <= St_progFan;
            			elsif(KEY1 = '1') then
								state <= St_progSoli;
            			elsif(KEY2 = '1') then
								state <= St_progSpes;
							elsif(s_prog ='0') then
								state <= Option;
							end if;
						
						when St_progFan =>
            			bin_Msg <= m_FAN;
            
            			if (inGelo = '1') then
								state <= prog;	
							elsif(s_prog = '0') then
								state <= Option;
							elsif(KEY0 = '1') then
								if(unsigned(FAN_PREP_TIME) < 15) then
								FAN_PREP_TIME <= std_logic_vector(unsigned(FAN_PREP_TIME)+1);
								end if;
							elsif(KEY1 = '1') then
								if(unsigned(FAN_PREP_TIME) > 0) then
								FAN_PREP_TIME <= std_logic_vector(unsigned(FAN_PREP_TIME)-1);
								end if;
							end if;
						
						when St_progSoli =>
            			bin_Msg <= m_SOLI;
            
            			if (inGelo = '1') then
								state <= prog;	
							elsif(s_prog = '0') then
								state <= Option;
							elsif(KEY0 = '1') then
								if(unsigned(SOLI_PREP_TIME) < 15) then
								SOLI_PREP_TIME <= std_logic_vector(unsigned(SOLI_PREP_TIME)+1);
								end if;
							elsif(KEY1 = '1') then
								if(unsigned(SOLI_PREP_TIME) > 0) then
								SOLI_PREP_TIME <= std_logic_vector(unsigned(SOLI_PREP_TIME)-1);
								end if;
							end if;
							
						when St_progSpes =>
            			bin_Msg <= m_sPES;
            
            			if (inGelo = '1') then
								state <= prog;	
							elsif(s_prog = '0') then
								state <= Option;
							elsif(KEY0 = '1') then
								if(unsigned(SPES_PREP_TIME) < 15) then
								SPES_PREP_TIME <= std_logic_vector(unsigned(SPES_PREP_TIME)+1);
								end if;
							elsif(KEY1 = '1') then
								if(unsigned(SPES_PREP_TIME) > 0) then
								SPES_PREP_TIME <= std_logic_vector(unsigned(SPES_PREP_TIME)-1);
								end if;
							end if;
						
            		when Done =>	-- acende o led informação durante 2 seg e depois para para o estado de escolher bebida
            			
							T_start <= '0';
            			l_Done <= '1';
            			bin_Msg <= m_Done;
							--current_state <= Done;
            			
            			if (T_timeExp = '1') then 
            			    state <= Option;
								 l_Done <= '0'; -- apaga o led
							end if;

            		when St_Fan =>
							current_state <= St_Fan;
            			bin_Msg <= m_FAN;
							T_start <= '0';
            
            			if (T_timeExp = '1') then
								state <=  Done;
							elsif(ingelo = '1') then
								 state <= Gelo;
							end if;
							
            		when St_Spes =>
							current_state <= St_Spes;
            			bin_Msg <= m_SPES;
							T_start <= '0';

            			if (T_timeExp = '1') then
            				state <= Done;
								T_timeVal <= DONE_TIME;
								T_start <= '1';
							elsif(ingelo = '1') then
								 state <= Gelo;
            			end if;
            		
            		when St_Soli =>
							current_state <= St_Soli;
            			bin_Msg <= m_SOLI;
							T_start <= '0';

            			if (T_timeExp = '1') then
            				state <= Done;
								T_timeVal <= DONE_TIME;
								T_start <= '1';
							elsif(ingelo = '1') then
								 state <= Gelo;
            			end if;
            		
            		when Gelo =>
            		   sel_gelo <= '1';
							if (inGelo = '0') then
            		        sel_gelo <= '0';
								  state <= current_state;
							end if;
            		when others =>
							state <= Boot;
            		
            		
		        end case;
			end if;
		end if;
	end process;
end Behavioral;