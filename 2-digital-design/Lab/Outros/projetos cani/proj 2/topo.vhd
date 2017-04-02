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

entity topo is
  port ( SW : IN STD_LOGIC_VECTOR(17 downto 0);
         LEDR : OUT STD_LOGIC_VECTOR(17 downto 0);
			HEX0, HEX1: out std_logic_vector(6 downto 0);
			CLOCK_50: in std_logic;
			KEY: in std_logic_vector(3 downto 2)
  );
end topo;

architecture topo_estru of topo is
   signal F1, F2, F3, F4, F5, F6, F7: std_logic_vector(7 downto 0);

   component C1
      port (A: in std_logic_vector(7 downto 0);
				B: in std_logic_vector(7 downto 0); 
				F: out std_logic_vector(7 downto 0)
			);
   end component;

   component C2
      port (A: in std_logic_vector(7 downto 0);
				B: in std_logic_vector(7 downto 0);
				F: out std_logic_vector(7 downto 0)
			);
   end component;

-- INCLUIR AQUI O NOVO COMPONENTE C3
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
	
	component mux
	port (
		w: in std_logic_vector(7 downto 0);
		x: in std_logic_vector(7 downto 0);
		y: in std_logic_vector(7 downto 0);
		z: in std_logic_vector(7 downto 0);
		s: in std_logic_vector(1 downto 0);
		m: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component decog7seg
	port (
		C: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(6 downto 0)
	);
	end component;
	
	component reg_4bits
	port (
		CLK, RST: in std_logic;
		D: in std_logic_vector(3 downto 0);
		Q: out std_logic_vector(3 downto 0);
		EN: in std_logic
	);
	end component;
	
	component reg_8bits
	port (
		CLK, RST: in std_logic;
		D: in std_logic_vector(7 downto 0);
		Q: out std_logic_vector(7 downto 0);
		EN: in std_logic
	);
	end component;
	
begin

L0: C1 port map (SW(15 downto 8), SW(7 downto 0), F1);

L1: C2 port map (SW(15 downto 8), SW(7 downto 0), F2);

-- INCLUIR AQUI AS CONEXOES DO NOVO COMPONENTE C3
L2: C3 port map (SW(15 downto 8), SW(7 downto 0), F3);

L3: C4 port map (SW(7 downto 0), F4);

L4: mux port map (F1, F2, F3, F4, SW(17 downto 16), F5);

L5: reg_4bits port map (CLOCK_50, KEY(2), F5(7 downto 4), F6(7 downto 4), KEY(3));

L6: reg_4bits port map (CLOCK_50, KEY(2), F5(3 downto 0), F6(3 downto 0), KEY(3));

L7: reg_8bits port map (CLOCK_50, KEY(2), F5, F7, KEY(3));

LEDR(7 downto 0) <= F7;

L8: decog7seg port map (F6(7 downto 4), HEX1);

L9: decog7seg port map (F6(3 downto 0), HEX0);

end topo_estru;    -- esse e� o END da architecture
