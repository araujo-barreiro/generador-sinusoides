-- Detector de flancos
-- Activa sus salidas durante un ciclo de reloj cuando la entrada
-- presenta un flanco ascendente (fa), descendente (fd)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity detector_flancos is
    Port ( entrada : in std_logic;
           clk : in std_logic;
           reset : in std_logic;
           fa_entrada : out std_logic; -- flanco ascendente
           fd_entrada : out std_logic -- flanco descendente
				);
end detector_flancos;

architecture Behavioral of detector_flancos is

signal entrada_t_1: std_logic;
signal fa_entrada_aux : std_logic; -- flanco ascendente
signal fd_entrada_aux : std_logic; -- flanco descendente
signal entrada_s_aux : std_logic; -- variable sincronizada

begin

fa_entrada <= fa_entrada_aux;
fd_entrada <= fd_entrada_aux;

process (reset,clk,entrada_s_aux,entrada_t_1,entrada)
begin
	if reset = '1' then 	entrada_s_aux <= '0';
								entrada_t_1 <= '0';
	elsif clk = '1' and clk'event then entrada_t_1 <= entrada_s_aux;
												entrada_s_aux <= entrada;
	end if;

	fa_entrada_aux <= entrada_s_aux and not entrada_t_1;
	fd_entrada_aux <= not entrada_s_aux and entrada_t_1;

end process;

end Behavioral;
