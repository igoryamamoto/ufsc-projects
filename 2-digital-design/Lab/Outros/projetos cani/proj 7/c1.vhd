--
-- ver topo.vhd
--

library IEEE;
use IEEE.Std_Logic_1164.all;

entity C1 is
port (
		A: in std_logic_vector(7 downto 0);
      B: in std_logic_vector(7 downto 0); 
      F: out std_logic_vector(7 downto 0);
		flags: out std_logic_vector(3 downto 0)
     );
end C1;

architecture c1_estr of C1 is
	signal carry: std_logic_vector(7 downto 0);
	signal resultado: std_logic_vector(7 downto 0);
	component FullAdder
		port (
			a, b, c: in std_logic;
			soma, carry: out std_logic
		);
	end component;
	begin 
	FA0: FullAdder port map (A(0), B(0), '0', resultado(0), carry(0));
	FA1: FullAdder port map (A(1), B(1), carry(0), resultado(1), carry(1));
	FA2: FullAdder port map (A(2), B(2), carry(1), resultado(2), carry(2));
	FA3: FullAdder port map (A(3), B(3), carry(2), resultado(3), carry(3));
	FA4: FullAdder port map (A(4), B(4), carry(3), resultado(4), carry(4));
	FA5: FullAdder port map (A(5), B(5), carry(4), resultado(5), carry(5));
	FA6: FullAdder port map (A(6), B(6), carry(5), resultado(6), carry(6));
	FA7: FullAdder port map (A(7), B(7), carry(6), resultado(7), carry(7));
	F <= resultado;
	flags(0) <= carry(7); -- Carry out
	flags(1) <= (carry(6) xor carry(7)); -- Overflow
	flags(2) <= '1' when resultado(7) = '1' else '0'; -- Negativo
	flags(3) <= '1' when resultado = "00000000" else '0'; -- Zero
	
end c1_estr;
