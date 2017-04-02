------------------------------------------------------------------------------------------------------------------------------
------------------------------------------ UNIVERSIDADE FEDERAL DE SANTA CATARINA --------------------------------------------
------------------------------------------ DEPARTAMENTO DE AUTOMACAO E SISTEMAS --------------------------------------------
--------------- Sistemas Digitais ----------------- Projeto Final -------------------- EEL7020 -------------------------------
-------------- Equipe : Iago de Oliveira Silvestre, Fernando Battisti , Igor Assis R. Yamamoto -------------------------------
------ Professores: Eduardo Augusto Bezerra e Joni da Silva Fraga -- Data da ultima alteracao: 28 de Novembro de 2014.--------
------------------------------------------------------------------------------------------------------------------------------
-- Descrição do Componente : O Registrador é componente com a capacidade de armazenar um valor que será transmitido para a 
-- saída quando necessário. No projeto o único registrador presente é de 1 bit e está sendo utilizado pra armazenar o valor
-- da expressão (Ph(KEY(3)) or Dv(KEY(2)). -----------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity registrador is
	port ( 
			reset: in std_logic;	 ----------------- Sinal de reset recebido pela maquina de estados -------------------------
			k_IN : in std_logic_vector(1 downto 0);	------- Chaves de entrada, pedestre e sensor de carro --------------------
			k_OUT : out std_logic ------------------------ Sinal de Saida X --------------------------------------------------
			);
end entity;

architecture bhv of registrador is 
	signal rst: std_logic :='0'; --sinal de reset
	signal KEY : std_logic; -- sinal de x
begin 
	rst<=reset;
	KEY<=(k_IN(0) and k_IN(1));
	process (rst, KEY)
		begin
			if (rst = '0') then	-- Se Reset for recebido da maquina de estados, joga a saida pra 1 ---------------
				  k_OUT <= '1';				
			elsif rising_edge(KEY) then  -- Quando uma das chaves for solta, joga a saida pra 0 -------------
				  k_OUT <= '0';				
			end if;
	end process;
end bhv;