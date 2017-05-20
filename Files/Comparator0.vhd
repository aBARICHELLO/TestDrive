library ieee;
use ieee.std_logic_1164.all;

entity Comparator0 is
port (
	ZERO: in std_logic_vector(9 downto 0);
	CNT_D: in std_logic_vector(9 downto 0);
	END_TIME: out std_logic
);
end Comparator0;

architecture compare0 of Comparator0 is
begin
	process(ZERO,CNT_D)
	begin
		if CNT_D = ZERO then
			END_TIME <= '1';
		else
			END_TIME <= '0';
		end if;
	end process;
end compare0; 