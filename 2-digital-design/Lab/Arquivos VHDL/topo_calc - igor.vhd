--
-- Universidade Federal de Santa Catarina
-- Departamento de Engenharia Eletrica
-- EEL7020 - Sistemas Digitais
-- Prof. Eduardo Augusto Bezerra - <Eduardo.Bezerra@eel.ufsc.br>
-- Aluno Ígor Assis Rocha Yamamoto

library  ieee; 
use  ieee.std_logic_1164.all;

entity Labproject is
  port ( SW : in std_logic_vector(17 downto 0);
			HEX0,HEX1: out std_logic_vector(6 downto 0);
         LEDR : out std_logic_vector(17 downto 0);
			key: in std_logic_vector(1 downto 0);
			clock_50: in std_logic
  );
end Labproject;

architecture topo_estru of Labproject is
   signal F0, F1, F2, F3, F4, F, Q: std_logic_vector(7 downto 0);
	signal G1, G2: std_logic_vector(3 downto 0);
	signal sel: std_logic_vector(1 downto 0);
	signal en1, en2: std_logic;

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
	
	component mux4x1
	port (w, x, y, z: in std_logic_vector(7 downto 0);
			s: in std_logic_vector(1 downto 0);
			m: out std_logic_vector(7 downto 0)
     );
	end component;
	
	component decod7seg
	port (C: in std_logic_vector(3 downto 0);
			F: out std_logic_vector(6 downto 0)
		);
	end component;
	
	component reg4bits
	port (CLK, RST, EN: in std_logic;
			D: in std_logic_vector(3 downto 0);
			Q: out std_logic_vector(3 downto 0)
	);
	end component;
	
	component reg8bits
	port (CLK, RST, EN: in std_logic;
			D: in std_logic_vector(7 downto 0);
			Q: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component FSMctrl
	port ( Clk, Rst, Enter : in std_logic; 
			Operacao: in std_logic_vector(1 downto 0); 
			Selecao: out std_logic_vector(1 downto 0); 
			Enable_1, Enable_2: out std_logic 
	);
	end component;
begin

L0: FSMctrl port map(clock_50, key(0), key(1), SW(17 downto 16), sel, en1, en2 );

L1: reg8bits port map (clock_50, key(0), en1, SW(7 downto 0), F0 );

L2: C1 port map (SW(7 downto 0), F0, F1);

L3: C2 port map (SW(7 downto 0), F0, F2);

L4: C3 port map (SW(7 downto 0), F0, F3);

L5: C4 port map (SW(7 downto 0), F4);

L6: mux4x1 port map (F1, F2, F3, F4, sel, F);

L7: reg4bits port map(clock_50, key(0), en2, F(7 downto 4), G1);

L8: reg4bits port map(clock_50, key(0), en2, F(3 downto 0), G2);

L9: reg8bits port map(clock_50, key(0), en2, F(7 downto 0), Q);

L10: decod7seg port map(G1, HEX0);

L11: decod7seg port map(G2, HEX1);

LEDR(7 downto 0) <= Q;

end topo_estru;
