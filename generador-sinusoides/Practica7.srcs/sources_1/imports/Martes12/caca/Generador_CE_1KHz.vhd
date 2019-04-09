-------------------------------------------------------------------------------------- 
-- Este bloque genera una señal de habilitación de 1 KHz a partir de
-- un reloj de entrada (clk) de 100MHz							                   
-- La habilitación dura 1 solo ciclo de reloj de clk 
-------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Generador_CE_1KHz is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce_1KHz : out  STD_LOGIC);
end Generador_CE_1KHz;

architecture Behavioral of Generador_CE_1KHz is

-- Señal correspondiente al contador de ciclos de reloj
signal cont_1kHz: integer range 0 to 99999:=0;

begin

Generacion_ce_1KHz: process(clk)
		begin
			if (clk'event and clk='1') then
					if cont_1KHz=99999 then
						cont_1KHz <= 0;
						ce_1KHz <= '1';
					else
						cont_1KHz <= cont_1KHz + 1;
						ce_1KHz <= '0';
					end if;
			end if;
		end process Generacion_ce_1KHz;

end Behavioral;

