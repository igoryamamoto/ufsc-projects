library IEEE;
use IEEE.Std_Logic_1164.all;

entity Decod2 is
port (C: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(6 downto 0)
		);
end Decod2;

architecture decod_bhv of Decod2 is
begin
	F <= "1000000" when C = "0000" else
		  "1111001" when C = "0001" else
		  "0100100" when C = "0010" else
		  "0110000" when C = "0011" else
		  "0011001" when C = "0100" else
		  "0010010" when C = "0101" else
		  "0000010" when C = "0110" else
		  "1111000" when C = "0111" else
		  "0000000" when C = "1000" else
		  "0010000" when C = "1001" else
		  "0001000" when C = "1010" else
		  "0000011" when C = "1011" else
		  "1000110" when C = "1100" else
		  "0100001" when C = "1101" else
		  "0000110" when C = "1110" else
		  "0001110";
end decod_bhv;