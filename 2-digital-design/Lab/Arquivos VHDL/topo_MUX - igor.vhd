--
-- Universidade Federal de Santa Catarina
-- Departamento de Engenharia Eletrica
-- EEL7020 - Sistemas Digitais
-- Prof. Eduardo Augusto Bezerra - <Eduardo.Bezerra@eel.ufsc.br>
-- Exemplo de uso de componentes em VHDL.
-- Projeto desenvolvido como solucao para a tarefa do laboratorio 3 da disciplina 
-- EEL7020 - Sistemas Digitais

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

entity Labproject is
  port ( SW : in std_logic_vector(17 downto 0);
			HEX0,HEX1: out std_logic_vector(6 downto 0);
         LEDR : out std_logic_vector(17 downto 0)
  );
end Labproject;

architecture topo_estru of Labproject is
   signal F1, F2, F3, F4: std_logic_vector(7 downto 0);

   component C1
      port (A : in std_logic_vector(7 downto 0);
            B : in std_logic_vector(7 downto 0); 
            F : out std_logic_vector(7 downto 0)
			);
   end component;

   component C2
      port (A : in std_logic_vector(7 downto 0);
            B : in std_logic_vector(7 downto 0);
            F : out std_logic_vector(7 downto 0)
			);
   end component;

	component C3
	port (A: in std_logic_vector(7 downto 0);
			B: in std_logic_vector(7 downto 0); 
			F: out std_logic_vector(7 downto 0)
     );
	end component;

	component C4
	port (A: in std_logic_vector(7 downto 0);
			F: out std_logic_vector(7 downto 0)
     );
	end component;
	
	component MUX
	port (w, x, y, z: in std_logic_vector(7 downto 0);
			s: in std_logic_vector(1 downto 0);
			m: out std_logic_vector(7 downto 0)
     );
	end component;
	
begin

L1: C1 port map (SW(7 downto 0), SW(15 downto 8), F1);

L2: C2 port map (SW(7 downto 0), SW(15 downto 8), F2);

L3: C3 port map (SW(7 downto 0), SW(15 downto 8), F3);

L4: C4 port map (SW(7 downto 0), F4);

L5: MUX port map (F1, F2, F3, F4, SW(17 downto 16), F);

L6:

L7:

LEDR(7 downto 0) <= F;
end topo_estru;
