----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2018 11:16:05
-- Design Name: 
-- Module Name: selec_16_salidas_con_reg_y_mem_esc_lect - portmap
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: Diseñado sobrevolando Europa a 10 000 m de altura ;)
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

entity selec_16_salidas_con_reg_y_mem_esc_lect is
    Port ( 
           -- Entradas de control
           write_strobe : in STD_LOGIC; -- habilita la escritura en el periférico / memoria
           clk_micro : in STD_LOGIC;
           reset : in STD_LOGIC;
           port_id : in STD_LOGIC_VECTOR (7 downto 0); -- 0 - 15: puertos; 128-255: memoria RAM
           out_port : in STD_LOGIC_VECTOR (7 downto 0); -- contenido del puerto de salida seleccionado
           
           -- Salidas
           sel_mem_out : out STD_LOGIC; -- '1' si se va a escribir en memoria, '0' si en un puerto
           out_port_reg : out STD_LOGIC_VECTOR (7 downto 0); -- salida del puerto almacenada en el registro
           address_mem : out STD_LOGIC_VECTOR (6 downto 0); -- dirección de memoria en la que se va a escribir (si sel_mem_out = '1')
           
           -- Puertos: '1' puerto seleccionado, el resto a '0'
           sel_puerto_00_out : out STD_LOGIC;
           sel_puerto_01_out : out STD_LOGIC;
           sel_puerto_02_out : out STD_LOGIC;
           sel_puerto_03_out : out STD_LOGIC;
           sel_puerto_04_out : out STD_LOGIC;
           sel_puerto_05_out : out STD_LOGIC;
           sel_puerto_06_out : out STD_LOGIC;
           sel_puerto_07_out : out STD_LOGIC;
           sel_puerto_08_out : out STD_LOGIC;
           sel_puerto_09_out : out STD_LOGIC;
           sel_puerto_0A_out : out STD_LOGIC;
           sel_puerto_0B_out : out STD_LOGIC;
           sel_puerto_0C_out : out STD_LOGIC;
           sel_puerto_0D_out : out STD_LOGIC;
           sel_puerto_0E_out : out STD_LOGIC;
           sel_puerto_0F_out : out STD_LOGIC
           );
         
end selec_16_salidas_con_reg_y_mem_esc_lect;

architecture portmap of selec_16_salidas_con_reg_y_mem_esc_lect is

    -- declaracion de componentes
    COMPONENT bin_to_hex PORT(
       enable : in STD_LOGIC;
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
       output_F : out STD_LOGIC);
    END COMPONENT;
    
    COMPONENT biestable_D_1_bit PORT(
        reset : in STD_LOGIC;
        clk : in STD_LOGIC;
        D : in STD_LOGIC;
        Q : out STD_LOGIC);
    END COMPONENT;    
    
    COMPONENT biestable_D_8_bits PORT(
        reset : in STD_LOGIC;
        clk : in STD_LOGIC;
        D : in STD_LOGIC_VECTOR (7 downto 0);
        Q : out STD_LOGIC_VECTOR (7 downto 0));
    END COMPONENT;    
    
    -- declaracion de señales
    signal puerto_seleccionado: STD_LOGIC_VECTOR(15 downto 0);
    signal memoria_habilitada: STD_LOGIC;
    signal periferico_on: STD_LOGIC_VECTOR(15 downto 0);
    

begin

    -- instanciacion de los componentes
    
    -- almacena el contenido del puerto de salida seleccionado
    reg_puerto_salida: biestable_D_8_bits port map(
        reset, clk_micro, out_port, out_port_reg);
        
    -- convierte el número de puerto seleccionado (0000-1111) en hexadecimal (0 - F)    
    codificador_puertos: bin_to_hex port map(
        not(port_id(7)), port_id(3)&port_id(2)&port_id(1)&port_id(0),
        puerto_seleccionado(0), puerto_seleccionado(1), puerto_seleccionado(2), puerto_seleccionado(3), 
        puerto_seleccionado(4), puerto_seleccionado(5), puerto_seleccionado(6), puerto_seleccionado(7), 
        puerto_seleccionado(8), puerto_seleccionado(9), puerto_seleccionado(10), puerto_seleccionado(11), 
        puerto_seleccionado(12), puerto_seleccionado(13), puerto_seleccionado(14), puerto_seleccionado(15)
    
    );     
    
    -- almacena el primer bit del id de puerto ('1' escribimos en RAM, '0' en periférico)
    reg_mem_habilitada: biestable_D_1_bit port map(
        reset, clk_micro, port_id(7), memoria_habilitada
    );
    
    -- pipelines: registros que almacenan si el puerto X está seleccionado: puerto_seleccionado(X) --> periferico_on(X)
    pipeline_0: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(0), periferico_on(0)
    );
    
    pipeline_1: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(1), periferico_on(1)
    );
        
    pipeline_2: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(2), periferico_on(2)
    );
    
    pipeline_3: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(3), periferico_on(3)
    );
    
    pipeline_4: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(4), periferico_on(4)
    );
            
    pipeline_5: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(5), periferico_on(5)
    );
            
    pipeline_6: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(6), periferico_on(6)
    );
                
    pipeline_7: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(7), periferico_on(7)
    );
                    
    pipeline_8: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(8), periferico_on(8)
    );
                       
    pipeline_9: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(9), periferico_on(9)
    );
                                                                             
    pipeline_A: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(10), periferico_on(10)
    );
                                
    pipeline_B: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(11), periferico_on(11)
    );
        
    pipeline_C: biestable_D_1_bit port map(
        reset, clk_micro, puerto_seleccionado(12), periferico_on(12)
    );
            
    pipeline_D: biestable_D_1_bit port map(
         reset, clk_micro, puerto_seleccionado(13), periferico_on(13)
    );
                
    pipeline_E: biestable_D_1_bit port map(
         reset, clk_micro, puerto_seleccionado(14), periferico_on(14)
    );
                    
    pipeline_F: biestable_D_1_bit port map(
         reset, clk_micro, puerto_seleccionado(15), periferico_on(15)
    );
    
    -- conectamos las señales y componentes entre sí
    sel_puerto_00_out <= periferico_on(0) and write_strobe;
    sel_puerto_01_out <= periferico_on(1) and write_strobe;
    sel_puerto_02_out <= periferico_on(2) and write_strobe;
    sel_puerto_03_out <= periferico_on(3) and write_strobe;
    sel_puerto_04_out <= periferico_on(4) and write_strobe;
    sel_puerto_05_out <= periferico_on(5) and write_strobe;
    sel_puerto_06_out <= periferico_on(6) and write_strobe;
    sel_puerto_07_out <= periferico_on(7) and write_strobe;
    sel_puerto_08_out <= periferico_on(8) and write_strobe;
    sel_puerto_09_out <= periferico_on(9) and write_strobe;
    sel_puerto_0A_out <= periferico_on(10) and write_strobe;
    sel_puerto_0B_out <= periferico_on(11) and write_strobe;
    sel_puerto_0C_out <= periferico_on(12) and write_strobe;
    sel_puerto_0D_out <= periferico_on(13) and write_strobe;
    sel_puerto_0E_out <= periferico_on(14) and write_strobe;
    sel_puerto_0F_out <= periferico_on(15) and write_strobe;
    sel_mem_out <= memoria_habilitada and write_strobe;
    
    address_mem <= port_id(6)&port_id(5)&port_id(4)&port_id(3)&port_id(2)&port_id(1)&port_id(0);
    


end portmap;
