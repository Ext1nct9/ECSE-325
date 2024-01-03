--
-- entity name: g44_ARCCOS
--
-- Version 1.0
-- Authors: William Zhang and Qin Xuan Xu
-- Date: March 31, 2023 (enter the date of the latest edit to the file)
library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- needed since you are using unsigned numbers
entity g44_ARCCOS is
port ( X : in std_logic_vector(7 downto 0);
CLOCK : in std_logic;
ANGLE : out std_logic_vector(9 downto 0));
end g44_ARCCOS;

architecture arch of g44_ARCCOS is
signal X2: unsigned(15 downto 0);
signal P1: unsigned(31 downto 0);
signal S1: unsigned(8 downto 0);
signal P2: unsigned(24 downto 0);
signal S2: unsigned(10 downto 0);
signal P3: unsigned(18 downto 0);


begin

	process(CLOCK)
	begin
		if rising_edge(CLOCK) then
			X2 <= unsigned(X) * unsigned(X);
			P1 <= 86 * X2;
			S1 <= 191 + ("00" & P1(22 downto 16));
			P2 <= S1 * X2;
			S2 <= 1144 + ("00" & P2(24 downto 16));
			P3 <= S2 * unsigned(X);
			ANGLE <= std_logic_vector(900 - P3(18 downto 9));
		end if;
	end process;
end arch;	