----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2018 17:05:55
-- Design Name: 
-- Module Name: d_flip_flop - Behavioral
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

entity d_flip_flop is
    Port ( ce : in STD_LOGIC;
           clk : in STD_LOGIC;
           d : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end d_flip_flop;

architecture Behavioral of d_flip_flop is
signal aux: std_logic:='0';
begin
q <= aux; 
    process (clk)
    begin
        if (clk'event and clk = '1') then
            if reset='1' then
              aux <= '0';
            elsif ce='1' then
              aux <= d;
            end if;
        end if;
     end process;
       

end Behavioral;
