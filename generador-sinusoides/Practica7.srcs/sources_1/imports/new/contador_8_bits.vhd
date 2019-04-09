----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.09.2018 12:36:52
-- Design Name: 
-- Module Name: contador_8_bits - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador_8_bits is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           load : in STD_LOGIC;
           din : in STD_LOGIC_VECTOR (7 downto 0);
           tc : out STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end contador_8_bits;

architecture Behavioral of contador_8_bits is
signal temp : STD_LOGIC_VECTOR(7 downto 0):="00010000"; --enpieza a contar en 16

begin
	
	process(clk)
		begin
		if(clk='1' ) then
			if(reset='1') then
				temp<="00010000";
			
			elsif(ce='1') then
				if load='1' then
					temp<=din;
				elsif(temp="00000000") then
					temp<="00010000"; 
				else temp<=temp-1;
				end if;
				
				end if;
			end if;
		
		
		if temp="00000000" then 
			tc<='1';
		else 
			tc<='0';
		end if;
		
	end process;
	q<=temp;
end Behavioral;
