library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 

entity fsm_calculadora is
	port (
		clock: in std_logic;
		reset: in std_logic;
		enter: in std_logic;
		operacao: in std_logic_vector(1 downto 0);
		selecao: out std_logic_vector(1 downto 0);
		en_1, en_2: out std_logic
	);
end fsm_calculadora;

architecture FSM_beh of fsm_calculadora is
	type states is (INICIO, AGUARDA_SOLTAR_ENTER, OPERADOR, SOMA, OU, OU_EXCL, OP_NOT, ESCREVE_RES);
	signal EA: states;
begin
process(clock, reset, EA, enter) -- Ao usar o clock de 27MHz, esse process será
 begin -- executado 27 milhões de vezes por segundo.
	if reset='1' then
		EA <= INICIO;
	elsif clock'event AND clock = '1' then
		case EA is
			when INICIO =>
				en_1 <= '0'; -- Desliga registrador dos operandos
				en_2 <= '0'; -- Desliga registrador do resultado
				if enter='0' then
					EA <= INICIO;
				else
					EA <= AGUARDA_SOLTAR_ENTER;
				end if;
			when AGUARDA_SOLTAR_ENTER =>
				if enter='1' then
					EA <= AGUARDA_SOLTAR_ENTER;
					en_1 <= '1'; -- Armazena operando
					en_2 <= '0'; -- Desliga registrador do resultado
				else
					EA <= OPERADOR;
				end if;
			when OPERADOR =>
				en_1 <= '0'; -- Desliga registrador dos operandos
				en_2 <= '0'; -- Desliga registrador do resultado
				if operacao = "00" then -- Soma
					EA <= SOMA;
				elsif operacao = "01" then -- OR
					EA <= OU;
				elsif operacao = "10" then -- XOR
					EA <= OU_EXCL;
				else -- NOT
					EA <= OP_NOT;
				end if;
			when SOMA => -- Fazer soma
				if enter='0' then
					EA <= SOMA; -- Espera pressiona enter
				else
					selecao <= "00"; -- Escolhe a operação no mux
					EA <= ESCREVE_RES;
				end if;
			when OU => -- Fazer or
				if enter='0' then
					EA <= OU; -- Espera pressiona enter
				else
					selecao <= "01"; -- Escolhe a operação no mux
					EA <= ESCREVE_RES;
				end if;
			when OU_EXCL => -- Fazer xor
				if enter='0' then
					EA <= OU_EXCL; -- Espera pressiona enter
				else
					selecao <= "10"; -- Escolhe a operação no mux
					EA <= ESCREVE_RES;
				end if;
			when OP_NOT => -- Fazer not, é feito com apenas 1 operando
				en_1 <= '0'; -- Desabilita o de operando
				en_2 <= '1'; -- Habilita o de resultado
				if enter = '1' then -- Espera soltar o enter
					EA <= OP_NOT;
				else
					EA <= INICIO;
				end if;
			when ESCREVE_RES => -- Escreve o resultado, habilitando o registrador de resultado
				en_1 <= '0'; -- Desabilita o de operando
				en_2 <= '1'; -- Habilita o de resultado
				if enter = '1' then -- Espera soltar o enter
					EA <= ESCREVE_RES;
				else
					EA <= INICIO;
				end if;
		end case;
	end if;
 end process;
end FSM_beh;