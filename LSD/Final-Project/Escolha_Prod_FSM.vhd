library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Escolha_Prod_FSM is
	port(reset		: in  std_logic;
		  clk		: in  std_logic;
		  
		  -- sinais de comunicação com o timer
		  T_start       : out std_logic; 
		  T_timeVal	: out std_logic_vector(7 downto 0); -- valor que passa ao timer quanto tempo esperar
		  T_timeExp	: in  std_logic; -- indica que o timer já acabou
		  
		  -- pins de seleção
		  p_Fan  : in std_logic; 
		  p_SOLI : in std_logic;
		  p_SPES : in std_logic;
		  
		  -- sinais de informação
		  l_Done  : out std_logic;
		  l_refrig: out std_logic;
		  bin_Msg : out std_logic_vector(15 downto 0);
		  
		  --gelo
		  sel_gelo : out std_logic;
		  inGelo   : in std_logic
		  
		 );
end Escolha_Prod_FSM;

architecture Behavioral of Escolha_Prod_FSM is
	
	-- Constantes de tempo
	constant BOOT_TIME				: std_logic_vector(7 downto 0) := "00000110"; -- 6 s
	constant FAN_PREP_TIME				: std_logic_vector(7 downto 0) := "00001000"; -- 8 s
	constant SOLI_PREP_TIME				: std_logic_vector(7 downto 0) := "00001000"; -- 8 s
	constant SPES_PREP_TIME				: std_logic_vector(7 downto 0) := "00001000"; -- 8 s
	constant DONE_TIME				: std_logic_vector(7 downto 0) := "00000010"; -- 2 s

	-- mensagens
	--(4 bits para cada display )
	constant m_HIHI				: std_logic_vector(15 downto 0) := "0001001000010010"; -- HIHI
	constant m_EREF				: std_logic_vector(15 downto 0) := "0011010000110101"; -- EREF
	constant m_FAN	   			: std_logic_vector(15 downto 0) := "1101010101100111"; -- FAN
	constant m_SOLI				: std_logic_vector(15 downto 0) := "1010100010010010"; -- SOLI
	constant m_SPES				: std_logic_vector(15 downto 0) := "1010101100111010"; -- SPES
	constant m_Done				: std_logic_vector(15 downto 0) := "1100100001110011"; -- DONE
	
	type TState is (Init, Boot, Option, Done, St_Fan, St_Soli, St_Spes, Gelo, Gelostate);
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
			else
			    case state is
			        when Init =>
							l_Done <= '0';
            			T_timeVal <= BOOT_TIME;
            			bin_Msg <= m_HIHI;
				T_start <= '1';
				
				if(count = 300000000) then --passados 6 segundos ocorre mudança de estado
					state <= Option;
					count <= 0;
				else 
					count <= count +1;
					state <= Init;
				end if;
							
            		--when Boot =>
            			--if (T_timeExp = '1') then
            				--state <= Option;
					--current_state <= Boot;
				--end if;
            			
            		when Option =>
            			bin_Msg <= m_EREF;
            			current_state <= Option;
				l_Done <= '0';
            			
				if (p_Fan = '1') then
            				T_timeVal <= FAN_PREP_TIME;
            				T_start <= '1';
					state <= St_Fan;
								
            			elsif(p_SoLI = '1') then
            				T_timeVal <= SOLI_PREP_TIME;
            				T_start <= '1';
								state <= St_Soli;
								
            			elsif(p_SPES = '1') then
            				T_timeVal <= SPES_PREP_TIME;
            				T_start <= '1';
								state <= St_Spes;
								
            			elsif(ingelo = '1') then
								 state <= Gelo;
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
							
				if(count = 250000000) then --passados 5 segundos ocorre mudança de estado
					state <=  Option;
					count <= 0;
				else 
					count <= count +1;
					--state <= Init; 
				end if;
							
            			
            			
            		when St_Fan =>
						current_state <= St_Fan;
            			bin_Msg <= m_FAN;
				T_start <= '0';
						
            			--if (T_timeExp = '1') then
				if(count = 400000000) then --8 segundos de preparação do refrigerante
					state <=  Done;
					count <= 0;
					l_refrig <= '1'; --acende LEDG após concluída a preparação
				else 
					count <= count +1;
					--state <= Init;
				end if;
					--T_timeVal <= DONE_TIME;
					--T_start <= '1';
            			--end if;
            		
            		when St_Spes =>
				current_state <= St_Spes;
            			bin_Msg <= m_SPES;
				T_start <= '0';
							
            			if(count = 400000000) then --8 segundos de preparação do refrigerante
					state <=  Done;
					count <= 0;
					l_refrig <= '1'; --acende LEDG após concluída a preparação
				else 
					count <= count +1;
					--state <= Init;
				end if;
							
            			if (T_timeExp = '1') then
            				state <= Done;
					T_timeVal <= DONE_TIME;
					T_start <= '1';
            			end if;
            		
            		when St_Soli =>
				current_state <= St_Soli;
            			bin_Msg <= m_SOLI;
				T_start <= '0';
							
				if(count = 400000000) then --8 segundos de preparação do refrigerante
					state <=  Done;
					count <= 0;
					l_refrig <= '1'; --acende LEDG após concluída a preparação
				else 
					count <= count +1;
					--state <= Init;
				end if;
							
            			if (T_timeExp = '1') then
            				state <= Done;
					T_timeVal <= DONE_TIME;
					T_start <= '1';
            			end if;
            		
            		when Gelo =>
            		    	sel_gelo <= '1';

				if (inGelo = '1') then
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
