
library  ieee; 
use  ieee.std_logic_1164.all;

entity LabProject is
  port ( LEDG: out std_logic_vector(7 downto 0);
			KEY: in std_logic_vector(3 downto 0)
			TD_RESET: out std_logic;
			CLOCK_27: in std_logic
  );
end LabProject;

architecture topo_beh of LabProject is
	component ContaASCII
		port( valorASCII: out std_logic_vector(7 downto 0);
				clock: in std_logic;
				reset: in std_logic
		);
   
begin
	TD_RESET <= '1';
	L0: ContaASCII port map(LEDG, CLOCK_27, KEY(0));

end topo_beh;
