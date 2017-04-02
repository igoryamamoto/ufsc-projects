library ieee;
use ieee.std_logic_1164.all;

entity reg_8bits is
port (
	CLK, RST: in std_logic;
	D: in std_logic_vector(7 downto 0);
	Q: out std_logic_vector(7 downto 0);
	EN: in std_logic
);
end reg_8bits;
architecture behv of reg_8bits is
begin
 process(CLK, D) 
 begin 
	if RST = '0' then
		Q <= "00000000";
	elsif (CLK'event and CLK = '1') then
		if EN = '0' then
			Q <= D;
		end if;
	end if; 
 end process;
end behv;