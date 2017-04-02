------------------------------------------------------------------------------------------------------------------------------
------------------------------------------ UNIVERSIDADE FEDERAL DE SANTA CATARINA --------------------------------------------
------------------------------------------ DEPARTAMENTO DE AUTOMACAO E SISTEMAS --------------------------------------------
--------------- Sistemas Digitais ----------------- Projeto Final -------------------- EEL7020 -------------------------------
-------------- Equipe : Iago de Oliveira Silvestre, Fernando Battisti , Igor Assis R. Yamamoto -------------------------------
------ Professores: Eduardo Augusto Bezerra e Joni da Silva Fraga -- Data da ultima alteracao: 28 de Novembro de 2014.--------
------------------------------------------------------------------------------------------------------------------------------
-- Descrição do Componente : Sua função é decodificar a contagem do semaforo horizontal para displays 7seg -----------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;


entity decod7segH is
port (C: in std_logic_vector(4 downto 0);
 F: out std_logic_vector(13 downto 0)
 );
end entity;

architecture decod_bhv of decod7segH is
begin
	F <= 
	"10000001111001" when C = "00001" else -- 01
	"10000000100100" when C = "00010" else -- 02
	"10000000110000" when C = "00011" else -- 03
	"10000000011001" when C = "00100" else -- 04
	"10000000010010" when C = "00101" else -- 05
	"10000000000010" when C = "00110" else -- 06
	"10000001111000" when C = "00111" else -- 07
	"10000000000000" when C = "01000" else -- 08
	"10000000010000" when C = "01001" else -- 09
	"11110011000000" when C = "01010" else -- 10
	"11110011111001" when C = "01011" else -- 11
	"11110010100100" when C = "01100" else -- 12
	"11110010110000" when C = "01101" else -- 13
	"11110010011001" when C = "01110" else -- 14
	"11110010010010" when C = "01111" else -- 15
	"11110010000010" when C = "10000" else -- 16
	"11110011111000" when C = "10001" else -- 17
	"11110010000000" when C = "10010" else -- 18
	"11110010010000" when C = "10011" else -- 19
	"01001001000000" when C = "10100" else -- 20
	"01001001111001" when C = "10101" else -- 21
	"01001000100100" when C = "10110" else -- 22
	"01001000110000" when C = "10111" else -- 23
	"01001000011001" when C = "11000" else -- 24
	"01001000010010" when C = "11001" else -- 25
	"01001000000010" when C = "11010" else -- 26
	"01001001111000" when C = "11011" else -- 27
	"10000001000000"; -- 00
end decod_bhv;