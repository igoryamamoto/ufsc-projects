library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 

entity divisor50 is
	port (
		clock_in: in std_logic;
		clock_out: out std_logic
	);
end divisor50;

architecture bhv of divisor50 is
	signal cont: std_logic_vector(24 downto 0);
	signal temp: std_logic;
begin
cont <= (others => '0');
temp <= '0';
clock_out <= temp;
process(clock_in) -- Ao usar o clock de 27MHz, esse process será
 begin -- executado 27 milhões de vezes por segund
	if clock_in'event AND clock_in = '1' then
		if not(cont = "10111110101111000001111111") then
			cont <= cont+1;
		else
			temp <= not(temp)
			cont <= (others => '0');
			clock_out <= temp ;
		end if;
	end if;
 end process;
end bhv;