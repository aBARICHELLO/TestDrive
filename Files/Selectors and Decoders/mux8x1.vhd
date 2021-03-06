library ieee;
use ieee.std_logic_1164.all;

entity mux8x1 is
port( 
	a,b,c,d,e,f,g,h: in std_logic;
	s: 				  in std_logic_vector (2 downto 0);
	m: 				  out std_logic
);
end mux8x1;

architecture mux of mux8x1 is
begin
m <= a when s = "000" else
	  b when s = "001" else
	  c when s = "010" else
	  d when s = "011" else
	  e when s = "100" else
	  f when s = "101" else
	  g when s = "110" else
	h;
end mux;