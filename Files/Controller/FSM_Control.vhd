library ieee;
use ieee.std_logic_1164.all;

entity FSM_Control is
port (
	END_BONUS,END_TIME,ENTER,TARGET,CLOCK_50: in std_logic;
	RESET: in std_logic;
	STATES: out std_logic_vector(4 downto 0);
	SEL_DISP: out std_logic_vector(1 downto 0);
	SEL_LED,SEL_ROL,EN_TIME,RST: out std_logic_vector
);
end FSM_Control;

architecture bhv of FSM_Control is


begin
	
	
end bhv; 