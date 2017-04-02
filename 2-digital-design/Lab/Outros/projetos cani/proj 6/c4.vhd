library  ieee; 
use  ieee.std_logic_1164.all;

entity C4 is
port (A: in std_logic_vector(7 downto 0);
      F: out std_logic_vector(7 downto 0)
     );
end C4;

architecture c4_estr of C4 is
begin 
  F <= not A;
end c4_estr;
