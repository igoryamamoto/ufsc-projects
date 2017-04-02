------------------------------------------------------------------------------------------------------------------------------
------------------------------------------ UNIVERSIDADE FEDERAL DE SANTA CATARINA --------------------------------------------
------------------------------------------ DEPARTAMENTO DE AUTOMACAO E SISTEMAS --------------------------------------------
--------------- Sistemas Digitais ----------------- Projeto Final -------------------- EEL7020 -------------------------------
-------------- Equipe : Iago de Oliveira Silvestre, Fernando Battisti , Igor Assis R. Yamamoto -------------------------------
------ Professores: Eduardo Augusto Bezerra e Joni da Silva Fraga -- Data da ultima alteracao: 28 de Novembro de 2014.--------
------------------------------------------------------------------------------------------------------------------------------
-- Descrição do Componente :  Contadores são circuitos que permitem contar pulsos de uma entrada. 
-- Eles tem inúmeras funções, dentre as quais podemos citar contagem de eventos, a divisão de frequência, o sequenciamento de 
-- operações, etc. Conforme especificado nas exigências do projeto, foram implementados dois contadores com o objetivo de
-- contar eventos (pulsos de clock de 1s) nomeados contadorH (para a via horizontal) e contadorV (para a via vertical). -----------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ContadorV is

	port
	(
		clk		   : in std_logic;
		reset	   	: in std_logic;
		enable	   : in std_logic;
		modcont	   : in std_logic;
		contagemV	: out std_logic_vector(2 downto 0)
	);

end entity;

architecture rtl of ContadorV is
	signal tempo : std_logic_vector(2 downto 0);
	signal cnt   : std_logic_vector(2 downto 0) :=(others => '0');
begin

	process (modcont)
	begin
		--> Determina quantos segundo o contador deve contar
		if (modcont = '1') then 		--> define 6s como tempo de contagem 
			tempo <= "101";
		else 	   							--> define 2s como tempo de contagem
			tempo <= "001";
		end if;
	end process;


	process (clk)
	begin
		if reset = '0' then 		--> Reseta o contador
				cnt <= "000";
				contagemV <= cnt;	
		elsif (rising_edge(clk)) then
			if enable = '1' then
				if (tempo = "000") then				--> Nao conta
					cnt <= "000";
				elsif (cnt = tempo) then			--> Se o contador atingiu o tempo estipulado, ele eh zerado
					cnt <= "000";
					
				else										--> Incrementa o contador
					cnt <= cnt + "001";
				end if;
			end if;
		end if;

		contagemV <= cnt;				--> Saida do contador
	end process;

end rtl;
