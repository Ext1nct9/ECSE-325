--
-- entity name: g44_7_segment_decoder
--
-- Version 1.0
-- Authors: William Zhang and Qin Xuan Xu
-- Date: April 7, 2023 (enter the date of the latest edit to the file)
library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- needed since you are using unsigned numbers
entity g44_7_segment_decoder is 
port( value : in std_logic_vector(3 downto 0);
		RB_In : in std_logic;
		RB_Out : out std_logic := '0';
		segments : out std_logic_vector(6 downto 0));
end g44_7_segment_decoder;
		
architecture a of g44_7_segment_decoder is
begin 
	process(value)
		begin
		if( RB_In='1' and value = "0000") then
			segments <= "1111111";
			RB_Out <= '1';
		else
			case value is
				when "0000" =>
					segments <= "1000000";
				when "0001" =>
					segments <= "1111001";
				when "0010" =>
					segments <= "0100100";
				when "0011" =>
					segments <= "0110000";
				when "0100" =>
					segments <= "0011001";
				when "0101" =>
					segments <= "0010010";
				when "0110" =>
					segments <= "0000010";
				when "0111" =>
					segments <= "1111000";
				when "1000" =>
					segments <= "0000000";
				when "1001" =>
					segments <= "0010000";
				when others =>
					segments <= "1111111";	
			end case;
			RB_Out <= '0';
		end if;
	end process;
end a;

