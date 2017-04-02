------------------------------------------------------------------------------------------------------------------------------
------------------------------------------ UNIVERSIDADE FEDERAL DE SANTA CATARINA --------------------------------------------
------------------------------------------ DEPARTAMENTO DE AUTOMACAO E SISTEMAS --------------------------------------------
--------------- Sistemas Digitais ----------------- Projeto Final -------------------- EEL7020 -------------------------------
-------------- Equipe : Iago de Oliveira Silvestre, Fernando Battisti , Igor Assis R. Yamamoto -------------------------------
------ Professores: Eduardo Augusto Bezerra e Joni da Silva Fraga -- Data da ultima alteracao: 28 de Novembro de 2014.--------
------------------------------------------------------------------------------------------------------------------------------
-- Descrição do Componente : Esse componente tem a função de gerar um clock de 1 segundo. Para o desenvolvimento do componente
-- foi usado a seguinte estratégia: Utilizamos 3 estados, cada qual com sua  função(s0: estado inicial, s1: estado
-- incrementador, s2: estado de verificação).O divisor funciona incrementando um contador em 1 a cada 2 pulsos de clock de
-- 50MHz, então deve-se contar até 25 milhões. -----------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity divisor50 is
port (clock_in: in std_logic;
		reset: in std_logic;
		clock_out: out std_logic
);
end entity;

architecture bhv of divisor50 is
	-- Declaração dos estados (3) e sinais utilizados
	type states is (s0, s1, s2);
	signal delay: std_logic_vector(27 downto 0);
	signal EA: states;
begin
	process(clock_in, reset)
	begin
		if(reset = '0') then
			EA <= s0;
		elsif(rising_edge(clock_in)) then
			-- O divisor funciona incrementando um contador em 1 a cada 2 pulsos de clock (um de incremento
			-- e outro de checagem), assim, para reduzir um clock de 50MHz à 1Hz, deve-se contar até 25 milhões.
			case EA is
				when s0 =>
					delay <= (others => '0');
					clock_out <= '0';
					EA <= s1;
				when s1 =>
					delay <= delay + 1;
					clock_out <= '0';
					EA <= s2;
				when s2 =>
					if(delay = x"17D7840") then -- 25.10^6 / 50.10^6 = 0,5 *  2 = 1s
						clock_out <= '1';
						EA <= s0;
					else
						clock_out <= '0';
						EA <= s1;
					end if;
			end case;
		end if;
	end process;
end bhv;