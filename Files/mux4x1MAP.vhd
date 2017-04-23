library ieee;
use ieee.std_logic_1164.all;

entity mux4x1MAP is
port (MAP1_15,MAP2_15,MAP3_15,MAP4_15: 
	in std_logic_vector(31 downto 0);
	  selector: in std_logic_vector(1 downto 0);
	  REG_IN_15: out std_logic_vector(31 downto 0)
);
end mux4x1MAP;

architecture mux of mux4x1MAP is
begin
	REG_IN_15 <= 
	MAP1_15 when selector = "00" else
	MAP2_15 when selector = "01" else
	MAP3_15 when selector = "10" else
	MAP4_15;
	
end mux; 