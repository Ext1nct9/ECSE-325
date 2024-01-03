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
			segments <=	"1111001" when value ="0001" else -- 1
							"0100100" when value ="0010" else -- 2
							"0110000" when value ="0011" else -- 3
							"0011001" when value ="0100" else -- 4
							"0010010" when value ="0101" else -- 5
							"0000010" when value ="0110" else -- 6
							"1111000" when value ="0111" else -- 7
							"0000000" when value ="1000" else -- 8
							"0011000" when value ="1001" else -- 9
							"1111111" when RB_In = '1' else
							"1000000" when value ="0000" else -- 0
							"1111111";
	process(value, RB_In)
	begin 
			if value = "0000" and RB_In = '1' then 
				RB_Out <= '0';
			end if;
	end process;
end a;

