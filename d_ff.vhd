LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY d_ff is

	port( D, CLK, RST: IN  STD_LOGIC;
			Q:           OUT STD_LOGIC);
			
END d_ff;

ARCHITECTURE behavioral OF d_ff IS
	
BEGIN 
	
	PROCESS(CLK, RST)
	BEGIN
		IF(RST = '1') THEN
			q <= '0';
		ELSIF (CLK'EVENT AND CLK = '1') THEN
			q <= D;
		END IF;
	END PROCESS;

END behavioral;	
	