------------------------------------------------------------------------------------------------------------------------------
------------------------------------------ UNIVERSIDADE FEDERAL DE SANTA CATARINA --------------------------------------------
------------------------------------------ DEPARTAMENTO DE AUTOMACAO E SISTEMAS --------------------------------------------
--------------- Sistemas Digitais ----------------- Projeto Final -------------------- EEL7020 -------------------------------
-------------- Equipe : Iago de Oliveira Silvestre, Fernando Battisti , Igor Assis R. Yamamoto -------------------------------
------ Professores: Eduardo Augusto Bezerra e Joni da Silva Fraga -- Data da ultima alteracao: 28 de Novembro de 2014.--------
------------------------------------------------------------------------------------------------------------------------------
-- Descrição do Componente : O topo é o componente responsável por conectar os componentes do circuito através do comando
-- port map do VHDL. Neste são realizadas todas as declarações dos componentes do projeto, cada qual com suas respectivas
-- entradas e saídas. Ainda nele, são realizadas declarações de sinais que são transmitidos entre os componentes de forma que
-- o semáforo de forma correta.-----------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Semaforo is
  port ( LEDG  : out std_logic_vector(5 downto 0); -------------------------------------------------------------------------
			LEDR	: out std_logic_vector(3 downto 0);   --Declaraçoes de recursos utilizados para o funcionamento do topo
			HEX0, HEX1, HEX4	: out std_logic_vector(6 downto 0); -----------------------------------------------------------
			CLOCK_50		: in std_logic; 
			KEY	: in std_logic_vector(3 downto 0)
  );
end entity;
architecture sem_estru of Semaforo is           --------------- Declaraçoes de sinais auxiliares necessarios ----------
	signal clock1 : std_logic;
	signal semH,semV:std_logic_vector(2 downto 0);
	signal estado: std_logic_vector(1 downto 0);
	signal modh,modv: std_logic;
	signal flaghor: std_logic_vector(4 downto 0);
	signal flagver: std_logic_vector(2 downto 0);
	signal resetflip: std_logic;
	signal enablehor, enablever: std_logic;
	signal key_signal: std_logic;
	signal number1: std_logic_vector(13 downto 0);
	signal number2: std_logic_vector(6 downto 0);
	signal control: std_logic;

	component divisor50
		port (
			clock_in: in std_logic;  --clock de entrada
			reset: in std_logic;
			clock_out: out std_logic --clock de saida/ T = 1s
		);
	end component;
	component FSM is
	port(
		clk		: in	std_logic;
		reset 	: in	std_logic;
		controle		: in  std_logic;
		flagH		: in  std_logic_vector(4 downto 0);
		flagV		: in  std_logic_vector(2 downto 0);
		enableH, enableV		: out std_logic;
		modcontH, modcontV 	: out std_logic;
		semafH, semafV   		: out std_logic_vector(2 downto 0);
		state    : out std_logic_vector(1 downto 0);
		resetFF  : out std_logic
	);
	end component;
	component ContadorH is
	port
	(
		clk		   : in std_logic;
		reset	   	: in std_logic;
		enable	   : in std_logic;
		modcont	   : in std_logic;
		extensao		: in std_logic;
		contagemH  	: out std_logic_vector(4 downto 0)
	);
	end component;
	component ContadorV is
	port
	(
		clk		   : in std_logic;
		reset	   	: in std_logic;
		enable	   : in std_logic;
		modcont	   : in std_logic;
		contagemV	: out std_logic_vector(2 downto 0)
	);
 end component;
 component decod7segH is
 port (C: in std_logic_vector(4 downto 0);
       F: out std_logic_vector(13 downto 0)
 );
 end component;
 component decod7segV is
port (C: in std_logic_vector(2 downto 0);
 F: out std_logic_vector(6 downto 0)
 );
end component;
component registrador is
	port ( 
			reset: in std_logic;
			k_IN : in std_logic_vector(1 downto 0);	
			k_OUT : out std_logic
			);
end component;

begin
Registradorff: registrador port map (resetflip,KEY(3 downto 2),control);
Divisor   : divisor50 port map(CLOCK_50,KEY(0),clock1);
MaqEstado : FSM port map(clock1,KEY(0),control,flaghor,flagver,enablehor,enablever,modh,modv,semH,semV,estado,resetflip);
Contador_H: ContadorH port map(clock1,KEY(0),enablehor,modh,control,flaghor);
Contador_V: ContadorV port map(clock1,KEY(0),enablever,modv,flagver);
DecodificH : decod7segH port map(flaghor,number1);
DecodificV : decod7segV port map(flagver,number2);
LEDR(1 downto 0)<=estado;
LEDG(5 downto 3)<=semH;
LEDG(2 downto 0)<=semV;
LEDR(3)<=control;
HEX1 <= number1(13 downto 7);
HEX0 <= number1(6 downto 0);
HEX4 <= number2;
end;