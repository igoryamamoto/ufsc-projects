library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux is
port (
	w: in std_logic_vector(7 downto 0);
	x: in std_logic_vector(7 downto 0);
	y: in std_logic_vector(7 downto 0);
	z: in std_logic_vector(7 downto 0);
	s: in std_logic_vector(1 downto 0);
	m: out std_logic_vector(7 downto 0)
	);
end mux;

architecture mux_estr of mux is
begin
  m <= w when s = "00" else
		 x when s = "01" else
		 y when s = "10" else
		 z;
end mux_estr;

--architecture mux_estr of mux is
--begin
--	m <=  (w AND NOT(s(1)) AND NOT(s(0))) OR 
--			(x AND NOT(s(1)) AND s(0)) OR 
--			(y AND s(1) AND NOT(s(0))) OR 
--			(z AND s(1) AND s(0));
--end mux_estr;
