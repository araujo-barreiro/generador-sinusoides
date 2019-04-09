----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2018 22:02:48
-- Design Name: 
-- Module Name: mux_16_entradas - dataflow
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

entity mux_16_entradas is
    Port ( entrada_00 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_01 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_02 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_03 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_04 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_05 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_06 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_07 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_08 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_09 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_10 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_11 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_12 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_13 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_14 : in STD_LOGIC_VECTOR (7 downto 0);
           entrada_15 : in STD_LOGIC_VECTOR (7 downto 0);
           seleccion : in STD_LOGIC_VECTOR (3 downto 0);
           salida : out STD_LOGIC_VECTOR (7 downto 0));
end mux_16_entradas;

architecture dataflow of mux_16_entradas is
-- asigna mediante un flujo de datos el canal seleccionado a la salida
begin
    with seleccion select 
        salida <= entrada_00 when "0000",
                  entrada_01 when "0001",
                  entrada_02 when "0010",
                  entrada_03 when "0011",
                  entrada_04 when "0100",
                  entrada_05 when "0101",
                  entrada_06 when "0110",
                  entrada_07 when "0111",
                  entrada_08 when "1000",
                  entrada_09 when "1001",
                  entrada_10 when "1010",
                  entrada_11 when "1011",
                  entrada_12 when "1100",
                  entrada_13 when "1101",
                  entrada_14 when "1110",
                  entrada_15 when "1111",
                  "00000000" when others;

end dataflow;
