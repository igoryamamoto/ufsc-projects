------------------------------------------------------------------------------------------------------------------------------
------------------------------------------ UNIVERSIDADE FEDERAL DE SANTA CATARINA --------------------------------------------
------------------------------------------ DEPARTAMENTO DE AUTOMACAO E SISTEMAS --------------------------------------------
--------------- Sistemas Digitais ----------------- Projeto Final -------------------- EEL7020 -------------------------------
-------------- Equipe : Iago de Oliveira Silvestre, Fernando Battisti , Igor Assis R. Yamamoto -------------------------------
------ Professores: Eduardo Augusto Bezerra e Joni da Silva Fraga -- Data da ultima alteracao: 28 de Novembro de 2014.--------
------------------------------------------------------------------------------------------------------------------------------
-- Descrição do Componente : Contadores são circuitos que permitem contar pulsos de uma entrada. 
-- Eles tem inúmeras funções, dentre as quais podemos citar contagem de eventos, a divisão de frequência, o sequenciamento de 
-- operações, etc. Conforme especificado nas exigências do projeto, foram implementados dois contadores com o objetivo de
-- contar eventos (pulsos de clock de 1s) nomeados contadorH (para a via horizontal) e contadorV (para a via vertical).-----------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ContadorH is

	port
	(
		clk		   : in std_logic;
		reset	   	: in std_logic;
		enable	   : in std_logic;
		modcont	   : in std_logic;
		extensao		: in std_logic;
		contagemH  	: out std_logic_vector(4 downto 0)
	);

end entity;

architecture rtl of ContadorH is
	signal tempo : std_logic_vector(4 downto 0);
	signal cnt   : std_logic_vector(4 downto 0) :=(others => '0');
begin

	process (modcont)
	begin
		--> Determina quantos segundo o contador deve contar
		if (modcont = '1') then 		--> define 16s como tempo de contagem 
			tempo <= "01111";
		else 								 	--> define 2s como tempo de contagem
			tempo <= "00001";
		end if;
	end process;


	process (clk,reset)
	begin
		if reset = '0' then		--> Reseta o contador
				cnt <=(others =>'0');
				contagemH <= cnt;
		elsif (rising_edge(clk)) then
			if enable = '1' then
				if((tempo = "00001")and(cnt = tempo)) then
					cnt <= "00000";
				elsif (((extensao = '0') and (cnt = "01111" or cnt = "10011" or cnt = "10111" )) or (cnt = "11011")) then
																				--> Zera o contador se nao for concedida extensao
					cnt <= "00000";
										-- e o tempo de sinal verde tiver ultrapassado o min	
				else															--> Incrementa o contador
					cnt <= cnt + "00001";
				end if;
			contagemH <= cnt;
			end if;
			--> Saida do contador
		end if;
	

	end process;

end rtl;
