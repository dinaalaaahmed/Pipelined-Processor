LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

ENTITY WriteBackStage IS
    PORT (
        clock : IN std_logic;
        memoryOut : IN std_logic_vector (31 DOWNTO 0);
        writeAddress : INOUT std_logic_vector (3 DOWNTO 0);
        writeData : OUT std_logic_vector (31 DOWNTO 0)

    );
END WriteBackStage;

ARCHITECTURE rtl OF WriteBackStage IS

BEGIN
    PROCESS (clock)
    BEGIN
        IF rising_edge(clock) THEN
                writeData <= memoryOut;
        END IF;
    END PROCESS;
END rtl;
