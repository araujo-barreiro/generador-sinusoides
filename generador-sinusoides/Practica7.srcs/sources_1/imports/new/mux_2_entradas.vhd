----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2018 22:17:05
-- Design Name: 
-- Module Name: mux_2_entradas - dataflow
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

entity mux_2_entradas is
    Port ( entrada_0 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_1 : in STD_LOGIC_VECTOR (7 downto 0);
           seleccion : in STD_LOGIC;
           salida : out STD_LOGIC_VECTOR (7 downto 0));
end mux_2_entradas;

architecture dataflow of mux_2_entradas is

begin
-- asigna mediante un flujo de datos el canal seleccionado a la salida
with seleccion select 
        salida <= entrada_0 when '0',
                  entrada_1 when '1',
                  "00000000" when others;

end dataflow;
