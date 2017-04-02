library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 

entity contador_minutos is
	port (
		minutos: out std_logic_vector(7 downto 0);
		segundos: out std_logic_vector(7 downto 0);
		clock: in std_logic;
		reset: in std_logic
	);
end contador_minutos;

architecture FSM_beh of contador_minutos is
	type states is (INICIO, TESTES, INC_SEG, D1, D2, D3, D4);
	signal EA, PE: states;
	signal signal_clock: std_logic;
	signal atraso: std_logic_vector(23 downto 0);
	signal cont_s, cont_m: std_logic_vector(7 downto 0);
begin
process(clock, reset, EA) -- Ao usar o clock de 27MHz, esse process será
 begin -- executado 27 milhões de vezes por segundo.
	minutos <= cont_m;
	segundos <= cont_s;
	if reset='0' then
		EA <= INICIO;
	elsif clock'event AND clock = '1' then
		case EA is
			when INICIO =>
				cont_m <= (others => '0');
				cont_s <= (others => '0');
				EA <= INC_SEG;
				
			when INC_SEG =>
				cont_s(3 downto 0) <= cont_s(3 downto 0) +'1';
				EA <= TESTES;
				
			when TESTES =>
				if cont_s(3 downto 0) = "1010" then -- passou 10 segundos
					cont_s(7 downto 4) <= cont_s(7 downto 4)+1; -- aumenta o decimal do segundo
					cont_s(3 downto 0) <= (others => '0'); -- reseta as unidades
					
					EA <= TESTES; -- na primeira vez, aumenta o decimal do segundo, na segunda, testa o decimal do segundo
				elsif cont_s(7 downto 4) = "0110" then -- Passou 60s
					cont_m(3 downto 0) <= cont_m(3 downto 0)+1; -- incrementa unidade dos minutos
					cont_s(7 downto 4) <= (others => '0'); -- reseta dezena dos segundos
					
					EA <= TESTES;
				elsif cont_m(3 downto 0) = "1010" then -- Passou 10 min
					cont_m(7 downto 4) <= cont_m(7 downto 4)+1; -- incrementa dezena dos minutos
					cont_m(3 downto 0) <= (others => '0'); -- reseta unidade dos minutos
				elsif cont_m(7 downto 4) = "0110" then -- Passou 60 min
					EA <= INICIO; -- reseta tudo
				else
					EA <= D1;
				end if;
				
			when D1 => -- Estado para iniciar contador do atraso
				atraso <= ( others => '0' );
				EA <= D2;
				
			when D2 => -- Estado para gerar atraso ao mostrar dado no LEDG
				atraso <= atraso + 1; -- “atraso” foi inicializado com zero em D1.
				EA <= D3;
				
			when D3 => -- Estado para testar se atingiu o valor máximo.
				if atraso >= x"800000" then -- 8.388.608 / 27.000.000 = 0,3 * 3 = 1 s.
					EA <= INC_SEG; -- Ao atingir o valor máximo, sai do laço de atraso
				else -- e volta para o processamento do contador ASCII.
					EA <= D4; -- Permanece no laço de contagem para gerar atraso.
				end if;
				
			when D4 => -- Estado para continuar contagem do atraso.
				EA <= D2; -- Es
		end case;
	end if;
 end process;
end FSM_beh;