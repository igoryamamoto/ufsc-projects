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
-- C1.vhd - F1 = A or B or C
-- C2.vhd - F2 = B xor C
-- C3.vhd - ver slides
-- C4.vhd - F = (F1 and F2) or F3
--
-- Funcionamento (operacao):
--
-- Utilizar as chaves SW(0), SW(1) e SW(2) para entrar com A, B e C. Observar o resultado
-- da operacao logica no LEDR(0).
--

library  ieee; 
use  ieee.std_logic_1164.all;

entity Aula3 is
  port ( SW : IN STD_LOGIC_VECTOR(17 downto 0);
         LEDR : OUT STD_LOGIC_VECTOR(17 downto 0)
  );
end Aula3;

architecture topo_estru of Aula3 is
   signal F1, F2, F3, F4: std_logic;

   component C1
      port (A : in std_logic;
            B : in std_logic; 
            C : in std_logic;
            F : out std_logic
			);
   end component;

   component C2
      port (A : in std_logic;
            B : in std_logic;
            F : out std_logic
			);
   end component;

	component C3
	port (A: in std_logic;
			B: in std_logic; 
			C: in std_logic;
			F: out std_logic
     );
	end component C3;

   component C4
      port (A : in std_logic;
            B : in std_logic;
            C : in std_logic;
            F : out std_logic
      );
   end component;
begin

L0: C1 port map (SW(0), SW(1), SW(2), F1);

L1: C2 port map (SW(1), SW(2), F2);

L2: C3 port map (SW(0), SW(1), SW(2), F3);

L3: C4 port map (F1, F2, F3, LEDR(0));

end topo_estru;    -- esse e� o END da architecture
