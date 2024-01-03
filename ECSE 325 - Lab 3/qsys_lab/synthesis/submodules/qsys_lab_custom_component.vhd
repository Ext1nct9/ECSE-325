LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY qsys_lab_custom_component IS
PORT (
	clock, resetn : IN STD_LOGIC;
	write, chipselect : IN STD_LOGIC;
	address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	segments1, segments2, segments3, segments4 : out std_logic_vector(6 downto 0)
);
END qsys_lab_custom_component;

ARCHITECTURE a OF qsys_lab_custom_component IS
SIGNAL to_component : STD_LOGIC_VECTOR(7 DOWNTO 0);

COMPONENT g44_lab_2 is 
port (
			X : in std_logic_vector(7 downto 0);
			clock : in std_logic;
			HEX0 : out std_logic_vector(6 downto 0); 
			HEX1 : out std_logic_vector(6 downto 0); 
			HEX2 : out std_logic_vector(6 downto 0); 
			HEX3 : out std_logic_vector(6 downto 0)
		);
end Component;

begin
	to_component <= writedata(7 downto 0);
	custom_component:  g44_lab_2 PORT MAP (to_component, clock, segments1,  segments2,  segments3,  segments4);
end a;

