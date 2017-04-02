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
			LEDG: OUT STD_LOGIC_VECTOR(3 downto 0);
			HEX0, HEX1: out std_logic_vector(6 downto 0);
			CLOCK_50: in std_logic;
			KEY: in std_logic_vector(3 downto 2)
  );
end topo;

architecture topo_estru of topo is
   signal F1, F2, F3, F4, R1, R2, R3, R4: std_logic_vector(7 downto 0);
	signal EN1, EN2: std_logic;
	signal SEL: std_logic_vector(1 downto 0);
	signal FLAGS_SOMA: std_logic_vector(3 downto 0);
   component C1
      port (A: in std_logic_vector(7 downto 0);
				B: in std_logic_vector(7 downto 0); 
				F: out std_logic_vector(7 downto 0);
				flags: out std_logic_vector(3 downto 0)
			);
   end component;

   component C2
      port (A: in std_logic_vector(7 downto 0);
				B: in std_logic_vector(7 downto 0);
				F: out std_logic_vector(7 downto 0)
			);
   end component;
	
	component desloc_1_bit_esq
      generic ( N : natural := 8 );
		port ( clk : in std_logic;
			reset : in std_logic;
			sr_in : in std_logic_vector((N - 1) downto 0);
			sr_out : out std_logic_vector((N - 1) downto 0)
		);
   end component;
	
	component desloc_1_bit_dir
      generic ( N : natural := 8 );
		port ( clk : in std_logic;
			reset : in std_logic;
			sr_in : in std_logic_vector((N - 1) downto 0);
			sr_out : out std_logic_vector((N - 1) downto 0)
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
	
	component fsm_calculadora
	port (
		clock: in std_logic;
		reset: in std_logic;
		enter: in std_logic;
		operacao: in std_logic_vector(1 downto 0);
		selecao: out std_logic_vector(1 downto 0);
		en_1, en_2: out std_logic
	);
	end component;
	
begin

L0: reg_8bits port map (CLOCK_50, not KEY(2), SW(7 downto 0), F1, not EN1);

LHEAUHEUHAE: C1 port map (F1, SW(7 downto 0), R1, FLAGS_SOMA);
LEDG <= FLAGS_SOMA;

L1: C2 port map (F1, SW(7 downto 0), R2);

-- INCLUIR AQUI AS CONEXOES DO NOVO COMPONENTE C3
L2: desloc_1_bit_dir port map (CLOCK_50, not KEY(2), SW(7 downto 0), R3); -- Divisão por 2

L3: desloc_1_bit_esq port map (CLOCK_50, not KEY(2), SW(7 downto 0), R4); -- Mult por 2

L4: mux port map (R1, R2, R3, R4, SEL, F2);

L5: reg_4bits port map (CLOCK_50, not KEY(2), F2(7 downto 4), F3(7 downto 4), not EN2);

L6: reg_4bits port map (CLOCK_50, not KEY(2), F2(3 downto 0), F3(3 downto 0), not EN2);

L7: reg_8bits port map (CLOCK_50, not KEY(2), F2, F4, not EN2);

LEDR(7 downto 0) <= F4;
LEDR(17 downto 16) <= SW(17 downto 16);

L8: decog7seg port map (F3(7 downto 4), HEX1);

L9: decog7seg port map (F3(3 downto 0), HEX0);

L10: fsm_calculadora port map(CLOCK_50, not KEY(2), not KEY(3), SW(17 downto 16), SEL, EN1, EN2);

end topo_estru;    -- esse e� o END da architecture
