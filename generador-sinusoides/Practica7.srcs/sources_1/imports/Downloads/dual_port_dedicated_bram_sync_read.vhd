----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.09.2018 15:29:52
-- Design Name: 
-- Module Name: dual_port_dedicated_bram_sync_read - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity sin_lut is
    Port ( clk : in STD_LOGIC;
           read_addr : in STD_LOGIC_VECTOR (7 downto 0);
           dout : out STD_LOGIC_VECTOR (7 downto 0));
end sin_lut;

architecture Behavioral of sin_lut is
type ram_type is array(255 downto 0) of std_logic_vector(7 downto 0);
signal memoria: ram_type:=(
    X"80", X"83", X"86", X"89", X"8c", X"8f", X"92", X"95", X"98", X"9c", X"9f", X"a2", X"a5", X"a8", 
    X"ab", X"ae", X"b0", X"b3", X"b6", X"b9", X"bc", X"bf", X"c1", X"c4", X"c7", X"c9", X"cc", X"ce", X"d1", 
    X"d3", X"d5", X"d8", X"da", X"dc", X"de", X"e0", X"e2", X"e4", X"e6", X"e8", X"ea", X"eb", X"ed", X"ef", 
    X"f0", X"f2", X"f3", X"f4", X"f6", X"f7", X"f8", X"f9", X"fa", X"fb", X"fb", X"fc", X"fd", X"fd", X"fe", 
    X"fe", X"fe", X"ff", X"ff", X"ff", X"ff", X"ff", X"ff", X"ff", X"fe", X"fe", X"fd", X"fd", X"fc", X"fc", 
    X"fb", X"fa", X"f9", X"f8", X"f7", X"f6", X"f5", X"f4", X"f2", X"f1", X"ef", X"ee", X"ec", X"eb", X"e9", 
    X"e7", X"e5", X"e3", X"e1", X"df", X"dd", X"db", X"d9", X"d7", X"d4", X"d2", X"cf", X"cd", X"ca", X"c8", 
    X"c5", X"c3", X"c0", X"bd", X"ba", X"b8", X"b5", X"b2", X"af", X"ac", X"a9", X"a6", X"a3", X"a0", X"9d", 
    X"9a", X"97", X"94", X"91", X"8e", X"8a", X"87", X"84", X"81", X"7e", X"7b", X"78", X"75", X"71", X"6e", 
    X"6b", X"68", X"65", X"62", X"5f", X"5c", X"59", X"56", X"53", X"50", X"4d", X"4a", X"47", X"45", X"42", 
    X"3f", X"3c", X"3a", X"37", X"35", X"32", X"30", X"2d", X"2b", X"28", X"26", X"24", X"22", X"20", X"1e", 
    X"1c", X"1a", X"18", X"16", X"14", X"13", X"11", X"10", X"0e", X"0d", X"0b", X"0a", X"09", X"08", X"07", 
    X"06", X"05", X"04", X"03", X"03", X"02", X"02", X"01", X"01", X"00", X"00", X"00", X"00", X"00", X"00", 
    X"00", X"01", X"01", X"01", X"02", X"02", X"03", X"04", X"04", X"05", X"06", X"07", X"08", X"09", X"0b", 
    X"0c", X"0d", X"0f", X"10", X"12", X"14", X"15", X"17", X"19", X"1b", X"1d", X"1f", X"21", X"23", X"25", 
    X"27", X"2a", X"2c", X"2e", X"31", X"33", X"36", X"38", X"3b", X"3e", X"40", X"43", X"46", X"49", X"4c", 
    X"4f", X"51", X"54", X"57", X"5a", X"5d", X"60", X"63", X"67", X"6a", X"6d", X"70", X"73", X"76", X"79", X"7c", X"7f");

begin
    process (clk)
    begin
        if (clk'event and clk = '1') then
            dout <= memoria (to_integer (unsigned(read_addr)));
        end if;
    end process;
end Behavioral;
