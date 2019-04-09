----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2018 20:55:39
-- Design Name: 
-- Module Name: selec_16_entradas_con_reg_y_bypass - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity selec_16_entradas_con_reg_y_bypass is
    Port ( reset : in STD_LOGIC;
           clk_micro : in STD_LOGIC;
           
           -- puertos de entrada conectados a las salidas de periféricos
           puerto_00_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_01_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_02_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_03_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_04_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_05_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_06_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_07_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_08_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_09_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_0A_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_0B_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_0C_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_0D_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_0E_in : in STD_LOGIC_VECTOR (7 downto 0);
           puerto_0F_in : in STD_LOGIC_VECTOR (7 downto 0);
           
           -- lectura de la memoria RAM
           mem_in : in STD_LOGIC_VECTOR (7 downto 0);
           
           -- 0 - 15: puertos periféricos
           -- 128 - 255: direcciones de la memoria RAM (128 = 0, 255 = 127)
           port_id : in STD_LOGIC_VECTOR (7 downto 0);
           in_port : out STD_LOGIC_VECTOR (7 downto 0)); -- salida del puerto / dir. memoria seleccionado
                 
           
end selec_16_entradas_con_reg_y_bypass;

architecture Behavioral of selec_16_entradas_con_reg_y_bypass is
-- Este circuito funciona como un multiplexor
-- Sus entradas son los puertos y la memoria y la señal de selección el port_id

    -- instanciación de los componentes
    COMPONENT mux_16_entradas
        PORT ( entrada_00 : in STD_LOGIC_VECTOR (7 downto 0);
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
    end COMPONENT;
    
    COMPONENT biestable_D_8_bits
        PORT ( reset : in STD_LOGIC;
               clk : in STD_LOGIC;
               D : in STD_LOGIC_VECTOR (7 downto 0);
               Q : out STD_LOGIC_VECTOR (7 downto 0));
    end COMPONENT;
    
    COMPONENT biestable_D_1_bit
            PORT ( reset : in STD_LOGIC;
                   clk : in STD_LOGIC;
                   D : in STD_LOGIC;
                   Q : out STD_LOGIC);
    end COMPONENT;
    
    COMPONENT mux_2_entradas
        PORT ( entrada_0 : in STD_LOGIC_VECTOR (7 downto 0);
               entrada_1 : in STD_LOGIC_VECTOR (7 downto 0);
               seleccion : in STD_LOGIC;
               salida : out STD_LOGIC_VECTOR (7 downto 0));
    end COMPONENT;
    
    -- señales internas necesarias
    signal puerto: STD_LOGIC_VECTOR (7 downto 0); -- la entrada del puerto seleccionado
    signal id_puerto: STD_LOGIC_VECTOR (3 downto 0); -- los 4 últimos bits de port_id
    signal memoria_seleccionada: STD_LOGIC; -- el primer bit de port_id (determina si se lee la memoria (1) o un puerto (0))
    signal salida_registro_8_bits: STD_LOGIC_VECTOR (7 downto 0); -- la salida del registro que almacena la entrada del puerto seleccionado
    signal salida_registro_1_bit: STD_LOGIC; -- la salida del registro que almacena si se lee la memoria (1) o un puerto (0)
                  
    -- asigna los puertos a los componentes instanciados
    begin
        id_puerto <= port_id(3)&port_id(2)&port_id(1)&port_id(0);
        memoria_seleccionada <= port_id(7);      
          
        mux_puertos_entrada: mux_16_entradas port map(
            puerto_00_in, puerto_01_in, puerto_02_in, puerto_03_in, puerto_04_in, 
            puerto_05_in, puerto_06_in, puerto_07_in, puerto_08_in, puerto_09_in, 
            puerto_0A_in, puerto_0B_in, puerto_0C_in, puerto_0D_in, puerto_0E_in, 
            puerto_0F_in, id_puerto, puerto);

       registro_puertos: biestable_D_8_bits port map(
            reset, clk_micro, puerto, salida_registro_8_bits);
            
       registro_ram_o_puertos: biestable_D_1_bit port map(
            reset, clk_micro, memoria_seleccionada, salida_registro_1_bit);
       
       multiplexor_salida: mux_2_entradas port map(
            salida_registro_8_bits, mem_in, salida_registro_1_bit, in_port);
            
      

end Behavioral;
