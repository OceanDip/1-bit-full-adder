--Enrique Rosas
--12/19/2021
library IEEE;
use IEEE.std_logic_1164.all;

entity fulladder is
port (
	s	: out	std_logic;
	co 	: out	std_logic;
	cin	: in	std_logic;
	x 	: in	std_logic;
	y	: in	std_logic;
end fulladder;

architecture behavior of fulladder is
	
signal inputs	: std_logic_vector(2 downto 0);
signal outputs	: std_logic_vector(1 downto 0);

begin

inputs	<= cin & x & y;
co <= outputs(1);
s  <= outputs(0);


adder_proccess	:	process(inputs)
begin
	case inputs is
		when "000" =>
			outputs	<= "00";
		when "001" =>
			outputs <= "01";
		when "010" =>
			outputs <= "01";
		when "011" =>
			outputs <= "10";
		when "100" =>
			outputs <= "01";
		when "101" =>
			outputs <= "10";
		when "110" =>
			outputs <= "10"
		when "111" =>
			outputs <= "11"
	end case;
end process adder_proccess;
end behavior;
	