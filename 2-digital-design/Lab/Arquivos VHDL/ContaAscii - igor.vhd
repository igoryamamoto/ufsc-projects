library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity FMS is
port( valorASCII: out std_logic_vector(7 downto 0);
	   CLOCK_27: in std_logic;
		KEY: in std_logic
);

architecture FSM_beh of FMS is
	type states is (inicio, testefim, contaletra, D1, D2, D3, D4);
	signal EA: states;
	signal clock: std_logic;
	signal reset: std_logic;
	
begin
	clock <= CLOCK_27;
	reset <= KEY(0);
	valorASCII <= cont;

process (clock, reset)
	begin
		if reset = '0' then
				cont <= x"65";
				EA <= inicio;
		elsif clock'event and clock = '1' then
				case EA is
						when inicio => 
							cont <= x"65";
							EA <= testefim;
						when testefim => 
						
						when contaletra => 
						
						when D1 =>
							atraso <= (others => '0');
							EA <= D2;
							
						
											
				
				
				
				
				
				
				