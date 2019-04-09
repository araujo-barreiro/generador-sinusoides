----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2018 22:45:03
-- Design Name: 
-- Module Name: biestable_D_1_bit - Behavioral
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

entity biestable_D_1_bit is
    Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC);
end biestable_D_1_bit;

architecture Behavioral of biestable_D_1_bit is
-- almacena la entrada D en un registro interno cada flanco ascendente de reloj,
-- al cual se puede acceder a través de la salida Q
signal q_interna: STD_LOGIC;
begin
Q <= q_interna;
process(clk, reset)
begin
    if(reset='1') then -- reset asíncrono
        q_interna <= '0';
    elsif(clk'event and clk='1') then -- flanco ascendente -> actualizamos el registro interno
        q_interna <= D;
    end if;
end process;    
end Behavioral;
