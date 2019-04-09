----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2018 22:11:57
-- Design Name: 
-- Module Name: biestable_D - Behavioral
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

entity biestable_D_8_bits is
    Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (7 downto 0);
           Q : out STD_LOGIC_VECTOR (7 downto 0));
end biestable_D_8_bits;

architecture Behavioral of biestable_D_8_bits is
-- almacena la entrada D en un registro interno cada flanco ascendente de reloj,
-- al cual se puede acceder a través de la salida Q
signal q_interna: STD_LOGIC_VECTOR (7 downto 0);
begin
Q <= q_interna;
process(clk, reset)
begin
    if(reset='1') then -- reset asíncrono
        q_interna <= "00000000";
    elsif(clk'event and clk='1') then -- flanco ascendente -> actualizamos el registro interno
        q_interna <= D;
    end if;
end process;    
end Behavioral;
