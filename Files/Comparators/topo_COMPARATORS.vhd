library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity topo_COMPARATORS is
port (
	CNT_U,CNT_D: in std_logic_vector(9 downto 0);
	CNT_B: 		 in std_logic_vector(4 downto 0);
	END_BONUS,END_TIME,TARGET: out std_logic;
	POINT: out std_logic_vector(9 downto 0)
);
end topo_COMPARATORS;

architecture topo_COMPARATORS of topo_COMPARATORS is

	component Comparator1
	port (
		CNT_D:    in std_logic_vector(9 downto 0);
		END_TIME: out std_logic
		);
	end component;
	
	component Comparator2
	port (
		CNT_U:  in std_logic_vector(9 downto 0);
		TARGET: out std_logic
	);
	end component;
	
	component Comparator3
	port (
		CNT_B:     in std_logic_vector(4 downto 0);
		END_BONUS: out std_logic
	);
	end component;
	
	component Adder
		port (
		CNT_U:     in std_logic_vector(9 downto 0);
		CNT_B:		  in std_logic_vector(4 downto 0);
		POINT:     out std_logic_vector(9 downto 0)
	);
	end component;
	
begin
	L0: Comparator1 port map (CNT_D,END_TIME);
	L1: Comparator2 port map (CNT_U,TARGET);
	L2: Comparator3 port map (CNT_B,END_BONUS);
	L3: Adder port map (CNT_U,CNT_B,POINT);
	
end topo_COMPARATORS; 