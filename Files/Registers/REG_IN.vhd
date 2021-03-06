library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity REG_IN is
port( 
	SET_ROL,EN_TIME,CLOCK_M,RST: in std_logic;
	REG_IN: 							  in std_logic_vector(31 downto 0);
	SPEED: 							  in std_logic_vector(2 downto 0);
	REG_OUT_EXIT: 					  out std_logic_vector(31 downto 0)
);
end REG_IN;

architecture bhv of REG_IN is
	signal enable: std_logic;
	signal signalshift: std_logic_vector(31 downto 0);

begin 
enable <= ((SPEED(2) or SPEED(1) or SPEED(0)) and EN_TIME);

	process(CLOCK_M,RST,SET_ROL)
	begin
		if RST = '1' then
			signalshift <= (others => '0');
		elsif SET_ROL = '1' then
			signalshift <= REG_IN;
		elsif rising_edge(CLOCK_M) and enable = '1' and SET_ROL = '0' then
			signalshift <= std_logic_vector(rotate_left(unsigned(signalshift),1));
		end if;
	end process;
	REG_OUT_EXIT <= signalshift;
end bhv;