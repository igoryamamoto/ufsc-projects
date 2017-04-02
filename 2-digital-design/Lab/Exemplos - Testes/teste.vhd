library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity teste is
	port (
		CLOCK_50 : IN STD_LOGIC;
		KEY : IN STD_LOGIC_VECTOR(1 downto 0) ;
		HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
end teste;

architecture bhv of teste is
	signal s: std_logic_vector (6 downto 0);
	signal clock, reset: std_logic;
	
begin
    clock <= CLOCK_50;
	reset <= KEY(0);
	
  process (reset, clock)
  begin		
      if (reset = '0') then			
         s <= (others => '0');		
      elsif (rising_edge(clock)) then
	     s <= s + 1;  
      end if;
   end process;	
   
   HEX0 <= "1111111";
   HEX1 <= s(6 downto 0);
   HEX2 <= "1111111";
   HEX3 <= "1111111";
   HEX4 <= "1111111";

end bhv;
