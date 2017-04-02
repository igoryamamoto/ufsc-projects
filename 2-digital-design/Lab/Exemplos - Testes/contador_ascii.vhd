library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 

entity contador_ascii is
	port (
		valorASCII: out std_logic_vector(7 downto 0);
		clock: in std_logic;
		reset: in std_logic
	);
end contador_ascii;

architecture FSM_beh of contador_ascii is
	type states is (INICIO, TESTE, INC, D1, D2, D3, D4);
	signal EA, PE: states;
	signal signal_clock: std_logic;
	signal atraso: std_logic_vector(23 downto 0);
	signal cont: std_logic_vector(7 downto 0);
begin
process(clock, reset, EA) -- Ao usar o clock de 27MHz, esse process será
 begin -- executado 27 milhões de vezes por segundo.
	valorASCII <= cont;
	if reset='0' then
		EA <= INICIO;
	elsif clock'event AND clock = '1' then
		case EA is
			when INICIO =>
				cont <= x"41";
				EA <= TESTE;
			when TESTE =>
				if cont = x"5A" then
					EA <= INICIO;
				else
					EA <= INC;
				end if;
			when INC =>
				cont <= cont +'1';
				EA <= D1;
			when D1 => -- Estado para iniciar contador do atraso
				atraso <= ( others => '0' );
				EA <= D2;
			when D2 => -- Estado para gerar atraso ao mostrar dado no LEDG
				atraso <= atraso + 1; -- “atraso” foi inicializado com zero em D1.
				EA <= D3;
			when D3 => -- Estado para testar se atingiu o valor máximo.
				if atraso >= x"800000" then -- 8.388.608 / 27.000.000 = 0,3 * 3 = 1 s.
					EA <= TESTE; -- Ao atingir o valor máximo, sai do laço de atraso
				else -- e volta para o processamento do contador ASCII.
					EA <= D4; -- Permanece no laço de contagem para gerar atraso.
				end if;
			when D4 => -- Estado para continuar contagem do atraso.
				EA <= D2; -- Es
		end case;
	end if;
 end process;
end FSM_beh;