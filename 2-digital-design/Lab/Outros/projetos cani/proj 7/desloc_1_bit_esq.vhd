-- sr_in recebe palavra de N bits (vetor de N bits). A cada
-- pulso de clock, a palavra em sr_in é deslocada 1 bit para a
-- esquerda, e copiada para sr_out, também de N bits.
library ieee;
use ieee.std_logic_1164.all;
entity desloc_1_bit_esq is
	generic ( N : natural := 8 );
	port ( clk : in std_logic;
		reset : in std_logic;
		sr_in : in std_logic_vector((N - 1) downto 0);
		sr_out : out std_logic_vector((N - 1) downto 0)
	);
end entity;

architecture rtl of desloc_1_bit_esq is
	signal sr: std_logic_vector ((N - 1) downto 0); -- Registrador de N bits
	begin
		process (clk, reset)
		begin
			if (reset = '0') then -- Reset assíncrono do registrador
				sr <= (others => '0');
			elsif (rising_edge(clk)) then -- Sinal de clock do registrador (subida)
				-- Desloca 1 bit para a esquerda. Bit mais significativo é perdido.
				sr((N - 1) downto 1) <= sr_in((N - 2) downto 0);
				sr(0) <= '0';
			end if;
		end process;
	sr_out <= sr;
end rtl;