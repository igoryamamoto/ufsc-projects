------------------------------------------------------------------------------------------------------------------------------
------------------------------------------ UNIVERSIDADE FEDERAL DE SANTA CATARINA --------------------------------------------
------------------------------------------ DEPARTAMENTO DE AUTOMACAO E SISTEMAS --------------------------------------------
--------------- Sistemas Digitais ----------------- Projeto Final -------------------- EEL7020 -------------------------------
-------------- Equipe : Iago de Oliveira Silvestre, Fernando Battisti , Igor Assis R. Yamamoto -------------------------------
------ Professores: Eduardo Augusto Bezerra e Joni da Silva Fraga -- Data da ultima alteracao: 28 de Novembro de 2014.--------
------------------------------------------------------------------------------------------------------------------------------
-- Descrição do Componente : No projeto, a FSM é responsável por fazer a transição dos estados. Ela recebe os flags dos 
-- contadores (entradas flagH e flagV) para assim então ativar ou desativa-los(saídas EnableH e enableV) e ditar o módulo de
-- contagem dos mesmos (saídas modcontH e modcontV). Além disso ela também possui saídas para representar o estado atual
-- (saída state) e os estados semafóricos (saídas semafH e semafV).
------------------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity FSM is

	port
	(
		clk		: in	std_logic;
		reset	 	: in	std_logic;
		controle		: in  std_logic;
		flagH		: in  std_logic_vector(4 downto 0);
		flagV		: in  std_logic_vector(2 downto 0);
		enableH, enableV		: out std_logic;
		modcontH, modcontV 	: out std_logic;
		semafH, semafV   		: out std_logic_vector(2 downto 0);
		state    : out std_logic_vector(1 downto 0);
		resetFF  : out std_logic
	);

end entity;

architecture rtl of FSM is

	-- Build an enumerated type for the state machine
	type states is (VerdeH,AmareloH,VerdeV,AmareloV);

	-- Register to hold the current state
	signal EA, PE : states;

begin

process(clk, reset) -- 1Ã‚Âº Process, atualizaÃƒÂ§ao do estado atual
 begin
	if reset = '0' then
		EA <= VerdeH;   -- se reset for apertado, volta ao estado inicial
	elsif (rising_edge(clk) and reset='1') then
		EA <= PE;  -- atualiza estado atual
	end if;
end process;

process(EA,controle,flagH,flagV) -- 2Ã‚Âº Process , Proximos estados em funÃƒÂ§ao das entradas
	begin
		case EA is
			when VerdeH =>
			resetFF<='1';
				if (((controle = '0') and (flagH = "01111" or flagH = "10011" or flagH = "10111" )) or (flagH = "11011")) then
					PE <= AmareloH;
				else
					PE <= VerdeH;	
				end if;
			when AmareloH =>
			resetFF<='0';
				if (flagH = "00001") then
					PE <= VerdeV;
				else
					PE <= AmareloH;
				end if;
			when VerdeV =>
				if (flagV = "101") then
					PE <= AmareloV;
				else 
					PE <= VerdeV;
				end if;
			when AmareloV =>
				if (flagV = "001") then
					PE <= VerdeH;
				else
					PE <= AmareloV;
				end if;
		end case;
end process;

process(EA)   -- 3Ã‚Âº PROCESS - Saidas em funÃƒÂ§oes do estado atual
	begin
		case EA is
			when VerdeH =>   -- Estado Inicial || Horizontal = Verde , Vertical= Vermelho||
				enableH<='1';
				enableV<='0';
				semafH <= "001";
				semafV <= "100";
				modcontH <= '1'; -- Modulo de Contagem Horizontal ||16s-28s||
				modcontV <= '0'; -- Modulo de Contagem Vertical   ||0||
				state <= "00";    -- Estado || VerdeH ||
			when AmareloH =>
				enableH<='1';
				enableV<='0';
				semafH <= "010"; -- Horizontal = Amarelo
				semafV <= "100"; -- Vertical   = Vermelho
				modcontH <= '0';  -- Modulo de Contagem Horizontal || 2s ||
				modcontV <= '0';  -- Modulo de Contagem Vertical   || 0  ||
				state <= "01";     -- Estado || AmareloH ||
			when VerdeV =>
				enableH<='0';
				enableV<='1';
				semafH <= "100";  -- Horizontal = Vermelho
				semafV <= "001";  -- Vertical   = Verde
				modcontH <= '0'; -- Modulo de Contagem Horizontal || 0 ||
				modcontV <= '1'; -- Modulo de Contagem Vertical   || 6s||
				state <= "10";    -- Estado || VerdeV ||
			when AmareloV =>
				enableH<='0';
				enableV<='1';
				semafH <= "100";   -- Horizontal = Vermelho
				semafV <= "010";   -- Vertical = Amarelo
				modcontH <= '0'; -- Modulo de Contagem Horizontal || 0 ||
				modcontV <= '0'; -- Modulo de Contagem Vertical   || 2s||
				state <= "11";    -- Estado || AmareloV ||
		end case;
end process;
end rtl;
