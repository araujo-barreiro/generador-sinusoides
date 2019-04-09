----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.11.2018 16:54:58
-- Design Name: 
-- Module Name: unidad_control - maquina_estados
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

entity unidad_control is
    Port(
       -- entradas globales periférico
       reset : in STD_LOGIC; -- reset global
       start: in STD_LOGIC; -- el usuario la pone a 1 cuando quiere empezar a tx
       clk: in STD_LOGIC; -- se�al de reloj a 50Mhz
       
       -- entradas unidad operativa --> unidad de control
       half_period : in STD_LOGIC; -- reloj de la máquina de estados
       ctr_bits_eq_16 : in STD_LOGIC; -- marca el fin de la txion (1 = 16 bits txtidos)

       -- salidas unidad de control --> unidad operativa
       ce_bits : out STD_LOGIC; -- habilita el contador
       ce_srl : out STD_LOGIC; -- habilita el SRL
       ce_timer : out STD_LOGIC; -- habilita el divisor de frecuencia
       load : out STD_LOGIC; -- carga en paralelo del SRL
       
       -- salidas globales periférico
       end_of_conv : out STD_LOGIC; -- a 1 cuando se haya completado la tx
       busy : out STD_LOGIC; -- a 1 mientras está txiendo
       sync_both_dac : out STD_LOGIC; -- a 0 mientras se está txiendo
       reset_bits : out STD_LOGIC; -- reset del contador
       reset_timer : out STD_LOGIC; -- reset del divisor de frecuencia
       reset_srl: out STD_LOGIC; -- reset de los registros SRL
       sclk: out STD_LOGIC -- marca la velocidad de txion al esclavo (1 bit/pulso)
       
    );
end unidad_control;

architecture maquina_estados of unidad_control is

type tipo_estado is (s0, s1, s1_1, s2, s3, s4, s5);
signal estado_actual: tipo_estado := s0;
signal estado_siguiente: tipo_estado := s0;

begin

    -- proceso combinacional: realiza las transiciones entre estados y activa/desactiva las salidas
    comb: process(estado_actual, start, half_period, ctr_bits_eq_16)
    begin
    case estado_actual is
        when s0 =>
            -- estado inicial
            if(start='1') then
                estado_siguiente <= s1;
            else
                estado_siguiente <= estado_actual;
            end if;
            
            -- salidas
            reset_bits <= '1';
            reset_timer <= '1';
            reset_srl <= '1';
            
            ce_bits <= '0';
            ce_srl <= '0';
            ce_timer <= '0';
            load <= '0';
            end_of_conv <= '0';
            busy <= '0';
            sync_both_dac <= '0';
            sclk <= '0';
        when s1 =>
            -- estado 1: se prepara para transmitir
            if(half_period='1') then
                estado_siguiente <= s1_1;
            else
                estado_siguiente <= estado_actual;
            end if;
            
            -- salidas
            busy <= '0';
            ce_timer <= '1'; -- siempre habilitada durante todo el proceso de txion
            load <= '1'; -- carga los datos a transmitir en los registros SRL
            sync_both_dac <= '1'; -- anuncia que va a empezar una txion (durante la txion tiene que valer 0)
            
            ce_bits <= '0';
            ce_srl <= '0';
            reset_bits <= '0';
            reset_timer <= '0';
            reset_srl <= '0';
            end_of_conv <= '0';
            sclk <= '0';
            
        when s1_1 =>
            -- mantiene sync='1' medio pulso de reloj m�s
            if(half_period='1') then
                estado_siguiente <= s2;
            else
                estado_siguiente <= estado_actual;
            end if;
            
            -- salidas
            sync_both_dac <= '1'; -- anuncia que va a empezar una txion (durante la txion tiene que valer 0)
            ce_timer <= '1'; -- siempre habilitada durante todo el proceso de txion
            
            reset_bits <= '0';
            reset_timer <= '0'; 
            reset_srl <= '0';
            ce_bits <= '0';
            ce_srl <= '0';
            load <= '0';
            end_of_conv <= '0';
            busy <= '0';
            sclk <= '0';
            
        when s2 =>
            -- estado 2: suma 1 en el contador
            if(half_period='0') then
                estado_siguiente <= s3;
            else
                estado_siguiente <= estado_actual;
            end if;
            
            -- salidas
            ce_bits <= '1'; -- habilita el contador de bits transmitidos
            ce_timer <= '1'; -- siempre habilitada durante todo el proceso de txion
            
            sclk <= '1'; -- reloj de txion: se env�a en serie 1 bit / pulso
            reset_bits <= '0';
            reset_timer <= '0'; 
            reset_srl <= '0';            
            ce_srl <= '0';
            load <= '0';
            end_of_conv <= '0';
            busy <= '1';
            sync_both_dac <= '0';
            
        when s3 =>
            -- estado 3: fin tx bit n
            if(half_period='1' and ctr_bits_eq_16='1') then
                estado_siguiente <= s4; -- ya se han transmitido los 16 bits
            elsif(half_period='1' and ctr_bits_eq_16='0') then
                estado_siguiente <= s5; -- a�n no se han transmitido los 16 bits
            else
                estado_siguiente <= estado_actual;
            end if;
            
            -- salidas        
            sclk <= '0'; -- flanco descendente: el maestro carga un nuevo dato
            ce_timer <= '1'; -- siempre habilitada durante todo el proceso de txion
            
            ce_bits <= '0';
            reset_bits <= '0';
            reset_timer <= '0'; 
            reset_srl <= '0';            
            ce_srl <= '0';
            load <= '0';
            end_of_conv <= '0';
            busy <= '1';
            sync_both_dac <= '0';
            
        when s4 =>
            -- estado 4: fin txion
            estado_siguiente <= s0; -- vuelve al estado 0, preparado para transmitir de nuevo
            
            -- salidas
            end_of_conv <= '1'; -- avisa del fin de la txion
            sync_both_dac <= '1'; -- la se�al de sincronismo es activa a nivel bajo
            
            sclk <= '0';
            ce_bits <= '0';
            ce_timer <= '0';
            reset_bits <= '0';
            reset_timer <= '0';
            reset_srl <= '0'; 
            ce_srl <= '0';
            load <= '0';
            busy <= '0';

        when s5 =>
            -- estado 5: la txion no ha acabado, desplazamos 1 bit los SRL
            if(half_period='1') then
                estado_siguiente <= s2;
            else
                estado_siguiente <= estado_actual;
            end if;
            
            -- salidas
            ce_timer <= '1'; -- siempre habilitada durante todo el proceso de txion
            ce_srl <= '1'; -- desplaza los SRL 1 bit
            
            ce_bits <= '0';
            sclk <= '0'; -- se carga un nuevo dato en un flanco descendente de sclk
            reset_bits <= '0';
            reset_timer <= '0'; 
            reset_srl <= '0';            
            load <= '0';
            busy <= '0';
            sync_both_dac <= '0';    
            end_of_conv <= '0';       
            
    end case;
    end process comb;    

    -- proceso secuencial: actualiza el estado en cada flanco ascendente de reloj
    sec: process(clk, reset)
    begin
    if(reset='1') then
        estado_actual <= s0;
    elsif(clk'event and clk='1') then
        estado_actual <= estado_siguiente;
    end if;
    end process sec;

end maquina_estados;
