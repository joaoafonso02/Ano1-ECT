library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin_to_char_7SegDecoder is 

	port(binInput : in  std_logic_vector(3 downto 0);
		  decOut_n: out std_logic_vector(6 downto 0));
		  
end Bin_to_char_7SegDecoder;

architecture Behavioral of Bin_to_char_7SegDecoder is
begin 
		decOut_n <= 	"0001001" when (binInput= "0001") else  --H
						"1001111" when (binInput= "0010") else  --I	
						"0000110" when (binInput= "0011") else  --E
						"0101111" when (binInput= "0100") else  --R
						"0001110" when (binInput= "0101") else  --F
						"0001000" when (binInput= "0110") else  --A
						"0101011" when (binInput= "0111") else  --N
						"1000000" when (binInput= "1000") else  --O
						"1000111" when (binInput= "1001") else  --L
						"0010010" when (binInput= "1010") else  --S
						"0001100" when (binInput= "1011") else  --P
						"0100001" when (binInput= "1100") else  --D
						"1111111" when (binInput= "1101") else  --apagado
						"0111111";                              --"-"(erro)						
end Behavioral;