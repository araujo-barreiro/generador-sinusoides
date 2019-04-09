----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2018 18:09:20
-- Design Name: 
-- Module Name: half_period - Behavioral
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

entity medio_periodo is
    Port ( ce : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC; -- señal de reloj de 100 MHz
           half_period : out STD_LOGIC; -- genera una señal de 50 MHz
           quarter_period: out STD_LOGIC); -- genera una señal de 25 MHz
end medio_periodo;

architecture Behavioral of medio_periodo is
signal cont_period: integer range 0 to 3:=0;
begin
process(clk)
begin
    if (reset = '1') then
        -- reset asíncrono
        cont_period <= 0;
        half_period <= '0';
        quarter_period <= '0';
    
	elsif (clk'event and clk='1' and ce='1') then
        case cont_period is
            when 0 =>
                half_period <= '1';
                quarter_period <= '1';
                cont_period <= cont_period + 1;
            when 1 =>
                half_period <= '0';
                quarter_period <= '1';
                cont_period <= cont_period + 1;
            when 2 =>
                half_period <= '1';
                quarter_period <= '0';
                cont_period <= cont_period + 1;
            when 3 =>
                half_period <= '0';
                quarter_period <= '0';
                cont_period <= 0;
                
        end case;  
    end if;
end process;

end Behavioral;
