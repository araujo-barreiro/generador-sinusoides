-- Generador de la señal en_16_x_baud que necesita la UART para funcionar

-- Ejemplo 1
-- Para obtener una velocidad de 38.400 bits/s con una señal de reloj de 25 MHz
-- hay que utilizar un divisor por 41.
-- Cálculo: en_16_x_baud = clk/(baudios * 16) -> 25.000.000/(38400 * 16) = 40,69 

-- Ejemplo 2
-- Para obtener una velocidad de 115.200 bits/s con una señal de reloj de 50 MHz
-- hay que utilizar un divisor por 27.
-- Cálculo: en_16_x_baud = clk/(baudios * 16) -> 50.000.000/(115.200 * 16) = 27'12 

-- Ejemplo 3
-- Para obtener una velocidad de 115.200 bits/s con una señal de reloj de 100 MHz
-- hay que utilizar un divisor por 54.
-- Cálculo: en_16_x_baud = clk/(baudios * 16) -> 100.000.000/(115.200 * 16) = 54'25

-- Ejemplo 4
-- Para obtener una velocidad de 115.200 bits/s con una señal de reloj de 200 MHz
-- hay que utilizar un divisor por 109.
-- Cálculo: en_16_x_baud = clk/(baudios * 16) -> 200.000.000/(115.200 * 16) = 108'51

-- Ejemplo 5
-- Para obtener una velocidad de 9.600 bits/s con una señal de reloj de 200 MHz
-- hay que utilizar un divisor por 1302.
-- Cálculo: en_16_x_baud = clk/(baudios * 16) -> 200.000.000/(9.600 * 16) = 1302'08

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity generador_baudios is
    Port ( clkin : in std_logic;
           en_16_x_baud : out std_logic;
           reset : in std_logic);
end generador_baudios;

architecture Behavioral of generador_baudios is

constant max_count: integer range 0 to 2047:= 27-1; -- divisor por 27
signal baud_count: integer range 0 to 2047 := 0;
signal en_16_x_baud_int: std_logic:='0';

begin

en_16_x_baud <= en_16_x_baud_int;

	process (reset,clkin)
		begin
			if reset = '1' then 	en_16_x_baud_int <='0';
								      baud_count <= 0;
		 	elsif
				clkin='1' and clkin'event then
			      if baud_count = max_count then -- divisor por max_count + 1
 			         baud_count <= 0;
			         en_16_x_baud_int <= '1';
		         else
		            baud_count <= baud_count + 1;
		            en_16_x_baud_int <= '0';
		        end if;
		    end if;
 		end process;
end Behavioral;