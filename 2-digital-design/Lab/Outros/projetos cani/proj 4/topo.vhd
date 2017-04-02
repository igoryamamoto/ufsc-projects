--
-- Universidade Federal de Santa Catarina
-- Departamento de Engenharia Eletrica
-- EEL7020 - Sistemas Digitais
-- Prof. Eduardo Augusto Bezerra - <Eduardo.Bezerra@eel.ufsc.br>
-- Exemplo de uso de componentes em VHDL.
-- Projeto desenvolvido como solucao para a tarefa do laboratorio 3 da disciplina 
-- EEL7020 - Sistemas Digitais
--
-- Autor: Eduardo Augusto Bezerra
-- Data da ultima alteracao: 1 de setembro de 2012.
--
-- Especificacao do projeto:
-- Desenvolver um cicuito baseado em portas logicas, de acordo com a especificacao dos slides do lab. 3.
--
-- Estrutura de arquivos componentes desse projeto:
--
-- topo.vhd - Topo da arquitetura (esse arquivo). Realiza a conexao de todos os componentes
--
-- Funcionamento (operacao):
--

library  ieee; 
use  ieee.std_logic_1164.all;

entity topo is
  port ( --LEDG: out std_logic_vector(7 downto 0);
         TD_RESET: out std_logic;
			CLOCK_27: in std_logic;
			KEY: in std_logic_vector(3 downto 0);
			HEX4: out std_logic_vector(6 downto 0);
			HEX5: out std_logic_vector(6 downto 0);
			HEX6: out std_logic_vector(6 downto 0);
			HEX7: out std_logic_vector(6 downto 0)
  );
end topo;

architecture topo_estru of topo is
	signal min, seg: std_logic_vector(7 downto 0);
	signal s1, s2, s3, s4: std_logic_vector(6 downto 0);
	
	component contador_minutos
	port (
		minutos: out std_logic_vector(7 downto 0);
		segundos: out std_logic_vector(7 downto 0);
		clock: in std_logic;
		reset: in std_logic	
	);
	end component;
	
	component decog7seg
	port (
		C: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(6 downto 0)
	);
	end component;
	
begin
TD_RESET <= '1';

L0: contador_minutos port map (min, seg, CLOCK_27, KEY(0));

L1: decog7seg port map (min(7 downto 4), s1);
L2: decog7seg port map (min(3 downto 0), s2);
L3: decog7seg port map (seg(7 downto 4), s3);
L4: decog7seg port map (seg(3 downto 0), s4);

HEX4 <= s4;
HEX5 <= s3;
HEX6 <= s2;
HEX7 <= s1;

end topo_estru;    -- esse e� o END da architecture
