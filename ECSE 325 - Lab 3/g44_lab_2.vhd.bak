--
-- entity name: g44_lab_2
--
-- Version 1.0
-- Authors: William Zhang and Qin Xuan Xu
-- Date: April 7, 2023 (enter the date of the latest edit to the file)
library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- needed since you are using unsigned numbers
entity g44_lab_2 is 
port( X : in std_logic_vector(7 downto 0);
		CLOCK: in std_logic;
		HEX0: out std_logic_vector(6 downto 0);
		HEX1: out std_logic_vector(6 downto 0);
		HEX2: out std_logic_vector(6 downto 0));
end g44_lab_2;
		
architecture wrapper of g44_lab_2 is 
component g44_ARCCOS is 
port ( X : in std_logic_vector(7 downto 0);
CLOCK : in std_logic;
ANGLE : out std_logic_vector(9 downto 0));
end component;

component g44_7_segment_decoder is 
port( value : in std_logic_vector(3 downto 0);
		RB_In : in std_logic;
		RB_Out : out std_logic;
		segments : out std_logic_vector(6 downto 0));
end component;

component bin2bcd is 
	generic(
	W: integer:= 10
	);
	port(
	bin: in std_logic_vector(W-1 downto 0);
	bcd: out std_logic_vector(12 downto 0)
	);
	
end component;


signal tempAngle: std_logic_vector(9 downto 0);
signal tempAngle2: std_logic_vector(12 downto 0);
signal firstNumber: std_logic_vector(3 downto 0);
signal secondNumber: std_logic_vector(3 downto 0);
signal thirdNumber: std_logic_vector(3 downto 0);
signal tempHEX0 : std_logic_vector(6 downto 0); 
signal tempHEX1 : std_logic_vector(6 downto 0); 
signal tempHEX2 : std_logic_vector(6 downto 0); 
signal rippleBlanking1 : std_logic ;
signal rippleBlanking0 : std_logic;
signal rippleBlanking : std_logic;


begin 
	arccos: g44_ARCCOS port map(X, CLOCK, tempAngle);
	conversion: bin2bcd port map (tempAngle, tempAngle2);
	thirdNumber <= tempAngle2(11 downto 8);
	secondNumber <= tempAngle2(7 downto 4);
	firstNumber <= tempAngle2(3 downto 0);
	decoder2: g44_7_segment_decoder port map (thirdNumber,'1',rippleBlanking1, tempHEX2);
	decoder1: g44_7_segment_decoder port map (secondNumber, rippleBlanking1, rippleBlanking0, tempHEX1);
	decoder0: g44_7_segment_decoder port map (firstNumber, '0', rippleBlanking, tempHEX0);
	HEX0 <= tempHEX0;
	HEX1 <= tempHEX1;
	HEX2 <= tempHEX2;
end wrapper;