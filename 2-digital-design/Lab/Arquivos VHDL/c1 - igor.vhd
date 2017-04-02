-- Componente 1

library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all; -- para usar operador +

entity C1 is
port (A: in std_logic_vector(7 downto 0);
      B: in std_logic_vector(7 downto 0); 
      F: out std_logic_vector(7 downto 0)
     );
end C1;

architecture circuit of C1 is
begin 
  F <= A + B;
end circuit;
