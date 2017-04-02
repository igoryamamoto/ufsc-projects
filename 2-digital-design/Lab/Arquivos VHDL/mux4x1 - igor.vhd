-- Multiplexador

library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux4x1 is
port (w, x, y, z: in std_logic_vector(7 downto 0);
		s: in std_logic_vector(1 downto 0);
		m: out std_logic_vector(7 downto 0)
     );
end mux4x1;

architecture circuit of mux4x1 is
begin 
-- Forma Comportamental:
  m <= w when s = "00" else
		 x when s = "01" else
		 y when s = "10" else
		 z;
-- Forma estrutural:
--	m <= (w and ((not(s(1)))and(not(s(0))))) or 
--			(x and ((not(s(1)))and(s(0)))) or
--			(y and ((s(1))and(not(s(0))))) or
--			(z and ((s(1))and(s(0))));
end circuit;
