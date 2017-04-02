-- Componente 2

library IEEE;
use IEEE.Std_Logic_1164.all;

entity C2 is
port (A: in std_logic_vector(7 downto 0);
      B: in std_logic_vector(7 downto 0);
      F: out std_logic_vector(7 downto 0)
     );
end C2;

architecture circuit of C2 is
begin 
  F <= A or B;
end circuit;