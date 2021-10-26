library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Bin2BCD is

	port(binInput  : in std_logic_vector(3 downto 0);
		  BCDOut : out std_logic_vector(7 downto 0)
		  );

end Bin2BCD;

architecture Behavioral of Bin2BCD is
begin

  BCDOut <= "00000001" when (binInput = "0001") else  --1
				"00000010" when (binInput = "0010") else  --2	
				"00000011" when (binInput = "0011") else  --3
				"00000100" when (binInput = "0100") else  --4
				"00000101" when (binInput = "0101") else  --5
				"00000110" when (binInput = "0110") else  --6
				"00000111" when (binInput = "0111") else  --7
				"00001000" when (binInput = "1000") else  --8
				"00001001" when (binInput = "1001") else  --9
				"00010000" when (binInput = "1010") else  --10
				"00010001" when (binInput = "1011") else  --11
				"00010010" when (binInput = "1100") else  --12
				"00010011" when (binInput = "1101") else  --13
				"00010100" when (binInput = "1110") else  --14
				"00010101" when (binInput = "1111") else  --15
				"00000000";                               --0	
	
end Behavioral;