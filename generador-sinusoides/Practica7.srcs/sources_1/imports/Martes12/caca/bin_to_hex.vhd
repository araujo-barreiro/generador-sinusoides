----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2018 11:27:50
-- Design Name: 
-- Module Name: bin_to_hex - Behavioral
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

entity bin_to_hex is
    Port ( enable : in STD_LOGIC;
           input : in STD_LOGIC_VECTOR (3 downto 0);
           output_0 : out STD_LOGIC;
           output_1 : out STD_LOGIC;
           output_2 : out STD_LOGIC;
           output_3 : out STD_LOGIC;
           output_4 : out STD_LOGIC;
           output_5 : out STD_LOGIC;
           output_6 : out STD_LOGIC;
           output_7 : out STD_LOGIC;
           output_8 : out STD_LOGIC;
           output_9 : out STD_LOGIC;
           output_A : out STD_LOGIC;
           output_B : out STD_LOGIC;
           output_C : out STD_LOGIC;
           output_D : out STD_LOGIC;
           output_E : out STD_LOGIC;
           output_F : out STD_LOGIC
           );
end bin_to_hex;

architecture dataflow of bin_to_hex is
-- pone un '1' en la salida correspondiente a la entrada de 4 bits en hexadecimal y un '0' en el resto
begin

    output_0 <= '1' and enable when input="0000" else '0';
    output_1 <= '1' and enable when input="0001" else '0';
    output_2 <= '1' and enable when input="0010" else '0';
    output_3 <= '1' and enable when input="0011" else '0';
    output_4 <= '1' and enable when input="0100" else '0';
    output_5 <= '1' and enable when input="0101" else '0';
    output_6 <= '1' and enable when input="0110" else '0';
    output_7 <= '1' and enable when input="0111" else '0';
    output_8 <= '1' and enable when input="1000" else '0';
    output_9 <= '1' and enable when input="1001" else '0';
    output_A <= '1' and enable when input="1010" else '0';
    output_B <= '1' and enable when input="1011" else '0';
    output_C <= '1' and enable when input="1100" else '0';
    output_D <= '1' and enable when input="1101" else '0';
    output_E <= '1' and enable when input="1110" else '0';
    output_F <= '1' and enable when input="1111" else '0';
    

end dataflow;
