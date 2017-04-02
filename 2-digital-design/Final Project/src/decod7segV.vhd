------------------------------------------------------------------------------------------------------------------------------
------------------------------------------ UNIVERSIDADE FEDERAL DE SANTA CATARINA --------------------------------------------
------------------------------------------ DEPARTAMENTO DE AUTOMACAO E SISTEMAS --------------------------------------------
--------------- Sistemas Digitais ----------------- Projeto Final -------------------- EEL7020 -------------------------------
-------------- Equipe : Iago de Oliveira Silvestre, Fernando Battisti , Igor Assis R. Yamamoto -------------------------------
------ Professores: Eduardo Augusto Bezerra e Joni da Silva Fraga -- Data da ultima alteracao: 28 de Novembro de 2014.--------
------------------------------------------------------------------------------------------------------------------------------
-- Descrição do Componente :  Sua função é decodificar a contagem do semaforo vertical para displays 7seg ----------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;


entity decod7segV is
port (C: in std_logic_vector(2 downto 0);
 F: out std_logic_vector(6 downto 0)
 );
end entity;

architecture decod_bhv of decod7segV is
begin
	F <= 
	"1111001" when C = "001" else -- 01
	"0100100" when C = "010" else -- 02
	"0110000" when C = "011" else -- 03
	"0011001" when C = "100" else -- 04
	"0010010" when C = "101" else -- 05
	"0000010" when C = "110" else -- 06
	"1111000" when C = "111" else -- 07
	"1000000"; -- 00
end decod_bhv;