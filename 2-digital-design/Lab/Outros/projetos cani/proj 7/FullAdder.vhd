library ieee;
use ieee.std_logic_1164.all;
-- somador completo (FA)
entity FullAdder is
port (
	a, b, c: in std_logic;
	soma, carry: out std_logic
);
end FullAdder;

architecture FA_beh of FullAdder is
begin
	soma <= (a xor b) xor c;
	carry <= b when ((a xor b) = '0') 
				else c;
end FA_beh;