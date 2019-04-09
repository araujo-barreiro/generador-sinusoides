----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2018 17:48:03
-- Design Name: 
-- Module Name: registro_srl - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity registro_srl is
    Port ( clk : in STD_LOGIC;
           ce : in STD_LOGIC;
           load : in STD_LOGIC;
            reset : in STD_LOGIC;
           din : in STD_LOGIC_VECTOR (15 downto 0);
           LSB : in STD_LOGIC;
           MSB : out STD_LOGIC);
end registro_srl;

architecture Behavioral of registro_srl is
signal aux :STD_LOGIC_VECTOR (15 downto 0);
begin
MSB<=aux(15);
process(clk)
begin
if(clk'event and clk='1') then
	if(reset='1') then
		aux<="0000000000000000";
		else
		
		if(ce='1') then
			aux<= aux(14 downto 0)& LSB;
			end if;
		if (load='1') then
			aux<=din;
			end if;
		end if;
		end if;
		
		
end process;
end Behavioral;
