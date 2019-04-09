----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2018 13:54:21
-- Design Name: 
-- Module Name: sistema_entero - Behavioral
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

entity sistema_entero is
    Port ( 
            -- entradas
           clk : in STD_LOGIC;
    	   reset : in STD_LOGIC; -- OJO: reset invertido!
          
           BTNL : in STD_LOGIC; -- baja frecuencia
           BTND : in STD_LOGIC; -- baja amplitud
           BTNR : in STD_LOGIC; -- aumenta frecuencia
           BTNU : in STD_LOGIC; -- aumenta amplitud
           
           -- salidas
          uart: out STD_LOGIC;
          end_of_conv : out STD_LOGIC;
          busy : out STD_LOGIC;
          sclk_both_dac : out STD_LOGIC;
          sync_both_dac : out STD_LOGIC;
          sdin_first_dac : out STD_LOGIC; -- sacamos por aquí la sin
          sdin_second_dac : out STD_LOGIC -- esta no se va a usar, hay que ponerla toda a 0          
           );
end sistema_entero;

architecture Behavioral of sistema_entero is
-- Declaración de componentes:
component picoblaze3_empotrado_s7
   port (
      clk           :  in  std_logic;
      interrupt     :  in  std_logic;
      reset         :  in  std_logic;
      in_port       :  in  std_logic_vector(7 downto 0);
      interrupt_ack :  out  std_logic;
      read_strobe   :  out  std_logic;
      write_strobe  :  out  std_logic;
      out_port      :  out  std_logic_vector(7 downto 0);
      port_id       :  out  std_logic_vector(7 downto 0)
   );
   end component;

component selec_16_salidas_con_reg_y_mem_esc_lect
   port (
      clk_micro         :  in  std_logic;   
      reset             :  in  std_logic;   
      write_strobe      :  in  std_logic;   
      out_port          :  in  std_logic_vector(7 downto 0);
      port_id           :  in  std_logic_vector(7 downto 0);
      sel_mem_out       :  out  std_logic;  
      sel_puerto_00_out :  out  std_logic;  
      sel_puerto_0A_out :  out  std_logic;  
      sel_puerto_0B_out :  out  std_logic;  
      sel_puerto_0C_out :  out  std_logic;  
      sel_puerto_0D_out :  out  std_logic;  
      sel_puerto_0E_out :  out  std_logic;  
      sel_puerto_0F_out :  out  std_logic;  
      sel_puerto_01_out :  out  std_logic;  
      sel_puerto_02_out :  out  std_logic;  
      sel_puerto_03_out :  out  std_logic;  
      sel_puerto_04_out :  out  std_logic;  
      sel_puerto_05_out :  out  std_logic;  
      sel_puerto_06_out :  out  std_logic;  
      sel_puerto_07_out :  out  std_logic;  
      sel_puerto_08_out :  out  std_logic;  
      sel_puerto_09_out :  out  std_logic;  
      address_mem       :  out  std_logic_vector(6 downto 0);
      out_port_reg      :  out  std_logic_vector(7 downto 0)
   );
   end component;

component selec_16_entradas_con_reg_y_bypass
   port (
      clk_micro    :  in  std_logic;
      reset        :  in  std_logic;
      mem_in       :  in  std_logic_vector(7 downto 0);
      port_id      :  in  std_logic_vector(7 downto 0);
      puerto_00_in :  in  std_logic_vector(7 downto 0);
      puerto_0A_in :  in  std_logic_vector(7 downto 0);
      puerto_0B_in :  in  std_logic_vector(7 downto 0);
      puerto_0C_in :  in  std_logic_vector(7 downto 0);
      puerto_0D_in :  in  std_logic_vector(7 downto 0);
      puerto_0E_in :  in  std_logic_vector(7 downto 0);
      puerto_0F_in :  in  std_logic_vector(7 downto 0);
      puerto_01_in :  in  std_logic_vector(7 downto 0);
      puerto_02_in :  in  std_logic_vector(7 downto 0);
      puerto_03_in :  in  std_logic_vector(7 downto 0);
      puerto_04_in :  in  std_logic_vector(7 downto 0);
      puerto_05_in :  in  std_logic_vector(7 downto 0);
      puerto_06_in :  in  std_logic_vector(7 downto 0);
      puerto_07_in :  in  std_logic_vector(7 downto 0);
      puerto_08_in :  in  std_logic_vector(7 downto 0);
      puerto_09_in :  in  std_logic_vector(7 downto 0);
      in_port      :  out  std_logic_vector(7 downto 0)
   );
   end component;
component FD8C3
      port (
         ce    :  in  std_logic;
         clk   :  in  std_logic;
         reset :  in  std_logic;
         D     :  in  std_logic_vector(7 downto 0);
         Q     :  out  std_logic_vector(7 downto 0)
      );
      end component;
 
         
   
   component sin_lut
         Port ( clk : in STD_LOGIC;
             read_addr : in STD_LOGIC_VECTOR (7 downto 0);
             dout : out STD_LOGIC_VECTOR (7 downto 0));
      end component;    
      
   component transmisor_spi
        Port ( clk : in STD_LOGIC;
              reset : in STD_LOGIC;
              start_conv_both_dac : in STD_LOGIC;
              data_in_first_dac : in STD_LOGIC_VECTOR (11 downto 0);
              data_in_second_dac : in STD_LOGIC_VECTOR (11 downto 0);
              end_of_conv : out STD_LOGIC;
              busy : out STD_LOGIC;
              sclk_both_dac : out STD_LOGIC;
              sync_both_dac : out STD_LOGIC;
              sdin_first_dac : out STD_LOGIC;
              sdin_second_dac : out STD_LOGIC);
   end component;        
                 
   component Generador_CE_1KHz
               port (
                  clk     :  in  std_logic;
                  reset   :  in  std_logic;
                  ce_1KHz :  out  std_logic
               );
               end component;  
               
    component D_flip_flop
        Port ( ce : in STD_LOGIC;
               clk : in STD_LOGIC;
               d : in STD_LOGIC;
               reset : in STD_LOGIC;
               q : out STD_LOGIC);
    end component; 
    
-- UART (solo TX)
component uart_tx
   port (
      clk              :  in  std_logic;  
      en_16_x_baud     :  in  std_logic;  
      reset_buffer     :  in  std_logic;  
      write_buffer     :  in  std_logic;  
      data_in          :  in  std_logic_vector(7 downto 0);
      buffer_full      :  out  std_logic; 
      buffer_half_full :  out  std_logic; 
      serial_out       :  out  std_logic 
   );
end component;

component generador_baudios
   port (
      clkin        :  in  std_logic;
      reset        :  in  std_logic;
      en_16_x_baud :  out  std_logic
   );
 end component;


      
-- señales auxiliares
signal reset_negado: std_logic;
signal puerto_00_in,puerto_01_in,puerto_00_out, puerto_01_out,puerto_02_out, puerto_03_out, puerto_04_out, in_port,port_id,out_port,out_port_reg :  std_logic_vector(7 downto 0);
signal write_strobe,sel_puerto_00_out,sel_puerto_01_out,sel_puerto_02_out, sel_puerto_03_out, sel_puerto_04_out: std_logic;
signal GND :  std_logic_vector(7 downto 0):="00000000"; -- tierra "lógica" de 8 bits: componentes que no se conectan a nada
signal ground :  std_logic_vector(6 downto 0); -- tierra "lógica" de 7 bits

signal clk_1khz: std_logic; -- señal de reloj a 1kHz (para el antirrebotes y el visualizador dinámico)


-- señales de entrada tras pasar por el antirrebotes
signal btnr_q: std_logic;
signal btnl_q: std_logic;
signal btnd_q: std_logic;
signal btnu_q: std_logic;

signal out_p0_q, out_p1_q, out_p2_q, out_p3_q, out_p4_q, lut_value: std_logic_vector(7 downto 0);
signal sinusoide: std_logic_vector(11 downto 0);

signal en_16_x_baud: std_logic; -- utilizado para la UART

begin

-- reset negado
reset_negado <= not(reset);

-- instanciación de componentes
picoblaze3_empotrado_s7_inst: picoblaze3_empotrado_s7
   port map (
      clk                  => clk,                
      interrupt            => '0',          
      reset                => reset_negado,              
      in_port(7 downto 0)  => in_port(7 downto 0),
      interrupt_ack        => OPEN,      
      read_strobe          => OPEN,        
      write_strobe         => write_strobe,       
      out_port(7 downto 0) => out_port(7 downto 0),
      port_id(7 downto 0)  => port_id(7 downto 0)
   );
   
   

selec_16_salidas_con_reg_y_mem_esc_lect_inst: selec_16_salidas_con_reg_y_mem_esc_lect
      port map (
         clk_micro                => clk,              
         reset                    => reset_negado,                  
         write_strobe             => write_strobe,           
         out_port(7 downto 0)     => out_port(7 downto 0),   
         port_id(7 downto 0)      => port_id(7 downto 0),    
         sel_mem_out              => OPEN,            
         sel_puerto_00_out        => sel_puerto_00_out, -- UART 
         sel_puerto_0A_out        => OPEN,      
         sel_puerto_0B_out        => OPEN,      
         sel_puerto_0C_out        => OPEN,      
         sel_puerto_0D_out        => OPEN,      
         sel_puerto_0E_out        => OPEN,      
         sel_puerto_0F_out        => OPEN,      
         sel_puerto_01_out        => sel_puerto_01_out, -- dirección de la LUT
         sel_puerto_02_out        => sel_puerto_02_out, -- salida para el SPI (6 bits menos significativos)
         sel_puerto_03_out        => sel_puerto_03_out, -- orden de start_conv para el SPI     
         sel_puerto_04_out        => sel_puerto_04_out, -- salida para el SPI (6 bits más significativos) 
         sel_puerto_05_out        => OPEN,      
         sel_puerto_06_out        => OPEN,      
         sel_puerto_07_out        => OPEN,      
         sel_puerto_08_out        => OPEN,      
         sel_puerto_09_out        => OPEN,      
         address_mem(6 downto 0)  => ground(6 downto 0),
         out_port_reg(7 downto 0) => out_port_reg(7 downto 0)
      );
      
      
selec_16_entradas_con_reg_y_bypass_inst: selec_16_entradas_con_reg_y_bypass
     port map (
        clk_micro                => clk,              
        reset                    => reset_negado,                  
        mem_in(7 downto 0)       => GND,     
        port_id(7 downto 0)      => port_id(7 downto 0),    
        puerto_00_in(7 downto 0) => puerto_00_in(7 downto 0), -- botones
        puerto_0A_in(7 downto 0) => GND,
        puerto_0B_in(7 downto 0) => GND,
        puerto_0C_in(7 downto 0) => GND,
        puerto_0D_in(7 downto 0) => GND,
        puerto_0E_in(7 downto 0) => GND,
        puerto_0F_in(7 downto 0) => GND,
        puerto_01_in(7 downto 0) => puerto_01_in(7 downto 0), -- valor LUT
        puerto_02_in(7 downto 0) => GND,
        puerto_03_in(7 downto 0) => GND,
        puerto_04_in(7 downto 0) => GND,
        puerto_05_in(7 downto 0) => GND,
        puerto_06_in(7 downto 0) => GND,
        puerto_07_in(7 downto 0) => GND,
        puerto_08_in(7 downto 0) => GND,
        puerto_09_in(7 downto 0) => GND,
        in_port(7 downto 0)      => in_port(7 downto 0)    
     );
     
     -- tabla de consulta (LUT) con los valores de una sinusoide entre 0 y 2pi, muestreados en 255 intervalos
     lut: sin_lut
        port map(
            clk             =>  clk,
            read_addr       =>  out_p1_q,
            dout            =>  lut_value
        );
        
    -- transmisor SPI
    sinusoide <= out_p4_q(3 downto 0) & out_p2_q(7 downto 0);
    
    transmisor_spi_inst: transmisor_spi
       port map (
          clk                             => clk,                           
          reset                           => reset_negado,                         
          start_conv_both_dac             => out_p3_q(0),           
          data_in_first_dac(11 downto 0)  => sinusoide,
          data_in_second_dac(11 downto 0) => "000000000000",
          busy                            => busy,                          
          end_of_conv                     => end_of_conv,                   
          sclk_both_dac                   => sclk_both_dac,                 
          sdin_first_dac                  => sdin_first_dac,                
          sdin_second_dac                 => sdin_second_dac,               
          sync_both_dac                   => sync_both_dac                 
       );    
       
       
    -- transmisor UART (envía los valores de frecuencia y amplitud)   
    uart_tx_inst: uart_tx
       port map (
          clk                 => clk,               
          en_16_x_baud        => en_16_x_baud,      
          reset_buffer        => reset_negado,      
          write_buffer        => '1',      
          data_in(7 downto 0) => out_p0_q,
          buffer_full         => open,       
          buffer_half_full    => open,  
          serial_out          => uart        
       );
       
     generador_baudios_inst: generador_baudios
          port map (
             clkin        => clk,      
             reset        => reset_negado,      
             en_16_x_baud => en_16_x_baud
      );    
         
    -- Registros D de 8 bits para almacenar el valor de los periféricos de entrada y salida    
    -- ENTRADA:         
    FD8C3_btn: FD8C3 -- registro valor botones
                 port map (
                    ce            => '1',          
                    clk           => clk,         
                    reset         => reset_negado,       
                    D(0)          => BTNL,
                    D(1)          => BTND,
                    D(2)          => BTNU,
                    D(3)          => BTNR,
                    D(7 downto 4) => "0000",
                    Q(7 downto 0) => puerto_00_in
                 );
                 
    FD8C3_lut_out: FD8C3 -- registro salida valor LUT
                  port map (
                     ce            => '1',          
                     clk           => clk,         
                     reset         => reset_negado,       
                     D(7 downto 0) => lut_value,
                     Q(7 downto 0) => puerto_01_in
                  );                 
                 
    -- SALIDA:
    FD8C3_uart: FD8C3  -- salida periférico UART
                port map (
                ce            => sel_puerto_00_out and write_strobe,          
                clk           => clk,         
                reset         => reset_negado,       
                D(7 downto 0) => out_port_reg,
                Q(7 downto 0) => out_p0_q
                );
                
    FD8C3_lut_in: FD8C3  -- salida dirección de búsqueda LUT
                port map (
                ce            => sel_puerto_01_out and write_strobe,          
                clk           => clk,         
                reset         => reset_negado,       
                D(7 downto 0) => out_port_reg,
                Q(7 downto 0) => out_p1_q
                );
                    
    FD8C3_spi1: FD8C3  -- salida periférico SPI 1
                port map (
                ce            => sel_puerto_02_out and write_strobe,          
                clk           => clk,         
                reset         => reset_negado,       
                D(7 downto 0) => out_port_reg,
                Q(7 downto 0) => out_p2_q
                );
                
    FD8C3_start_conv: FD8C3  -- orden start_conv
                port map (
                ce            => sel_puerto_03_out and write_strobe,          
                clk           => clk,         
                reset         => reset_negado,       
                D(7 downto 0) => out_port_reg,
                Q(7 downto 0) => out_p3_q
                );               
                
                
    FD8C3_spi2: FD8C3  -- salida periférico SPI 2
                port map (
                ce            => sel_puerto_04_out and write_strobe,          
                clk           => clk,         
                reset         => reset_negado,       
                D(7 downto 0) => out_port_reg,
                Q(7 downto 0) => out_p4_q
                );            
                

    -- Divisor de frecuencia de reloj: necesario para los antirrebotes y para el vis. din.                  
    Generador_CE_1KHz_inst: Generador_CE_1KHz
        port map (
           clk     => clk,   
           reset   => reset_negado, 
           ce_1KHz => clk_1khz
        );         
        
     -- Circuitos antirrebote para las entradas   
--     antirrebotes_BTNC: D_flip_flop -- antirrebote BTNR
--        port map(
--            ce      => '1',
--            clk     => clk_1khz,
--            reset   => reset_negado,
--            d       => BTNC,
--            q       => btnc_q
--        );   
        
--      antirrebotes_BTNL: D_flip_flop -- antirrebote BTNL
--        port map(
--            ce      => '1',
--            clk     => clk_1khz,
--            reset   => reset_negado,
--            d       => BTNL,
--            q       => btnl_q
--        );
        
--    antirrebotes_BTND: D_flip_flop -- antirrebote BTND
--        port map(
--            ce      => '1',
--            clk     => clk_1khz,
--            reset   => reset_negado,
--            d       => BTND,
--            q       => btnd_q
--        ); 
        
--     antirrebotes_sw: FD8C3 -- antirrebote BTNU
--        port map(
--            ce      => '1',
--            clk     => clk_1khz,
--            reset   => reset_negado,
--            d       => BTNU,
--            q       => btnu_q
--        );    
        
                                            
                          
end Behavioral;
