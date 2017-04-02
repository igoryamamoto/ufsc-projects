library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

entity FSMctrl is 
	port ( Clk, Rst, Enter : in std_logic; 
			Operacao: in std_logic_vector(1 downto 0); 
			Selecao: out std_logic_vector(1 downto 0); 
			Enable_1, Enable_2: out std_logic 
); 
end FSMctrl; 

architecture FSM_beh of FSMctrl is
	type states is (Inicio, S1, S2, Soma, Ou, xOu, Nope, S7);
	signal EA: states;
begin
	process (Clk, Rst, EA, Enter)
		begin 
			if Rst = '1' then 
				EA <= Inicio;
			elsif Clk'event and Clk = '1' then 
				case EA is
					when Inicio =>
						Enable_1 <= '0'; Enable_2 <= '0';
						if Enter = '1' then 
							EA <= Inicio;
						else 
							EA <= S1;
						end if;
					when S1 =>
						if Enter = '1' then
							EA <= S1;
							Enable_1 <= '1'; Enable_2 <= '0';
						else 
							EA <= S2;
						end if;
					when S2 =>
						Enable_1 <= '0'; Enable_2 <= '0';
						if Operacao = "00" then
							EA <= Soma;
						elsif Operacao = "01" then
							EA <= Ou;
						elsif Operacao = "10" then
							EA <= xOu;
						else 
							EA <= Nope;
						end if;
					when Soma =>
						if Enter = '0' then
							EA <= Soma;
						else 
							Selecao <= "00";
							EA <= S7;
						end if;
					when Ou =>
						if Enter = '0' then
							EA <= Ou;
						else
							Selecao <= "01";
							EA <= S7;
						end if;
					when xOu =>
						if Enter = '0' then 
							EA <= xOu;
						else 
							Selecao <= "10";
							EA <= S7;
						end if;
					when Nope =>
						Enable_1 <= '0'; Enable_2 <= '1';
						if Enter = '1' then
							EA <= Nope;
						else 
							EA <= Inicio;
						end if;
					when S7 =>
						Enable_1 <= '0'; Enable_2 <= '1';
						if Enter = '1' then
							EA <= S7;
						else
							EA <= Inicio;
						end if;	
					end case;
			end if;
	end process;
end FSM_beh;	