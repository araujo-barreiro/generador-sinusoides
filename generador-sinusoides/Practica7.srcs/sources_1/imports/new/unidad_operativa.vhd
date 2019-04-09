----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2018 18:26:20
-- Design Name: 
-- Module Name: unidad_operativa - Behavioral
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

entity unidad_operativa is
    Port ( 
           -- entradas globales periférico
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           data_in_first_dac : in STD_LOGIC_VECTOR (11 downto 0);
           data_in_second_dac : in STD_LOGIC_VECTOR (11 downto 0);
           
           -- entradas unidad de control --> unidad operativa
           ce_bits : in STD_LOGIC; -- habilita el contador
    	   ce_srl : in STD_LOGIC; -- habilita el registro SRL
    	   ce_half: in STD_LOGIC; -- habilita el divisor de frecuencia
           load : in STD_LOGIC; -- habilita la carga del dato en sdin
           reset_bits : in STD_LOGIC; -- reset del contador
           reset_srl: in STD_LOGIC; -- reset del registro SRL
           reset_timer: in STD_LOGIC; -- reset del divisor de frecuencia
           
           -- salidas unidad operativa --> unidad de control
           half_period : out STD_LOGIC; -- a este ritmo tienen que funcionar el contador y el registro, no al de clk!
           Ctr_bits_eq_16 : out STD_LOGIC; -- se pone a 1 cuando ya se hayan transmitido los 16 bits
           
           -- salidas globales periférico
           sdin_first_dac : out STD_LOGIC; -- salida serie 1
           sdin_second_dac : out STD_LOGIC); -- salida serie 2
end unidad_operativa;

architecture Behavioral of unidad_operativa is

component registro_srl
   port (
      ce    :  in  std_logic;
      clk   :  in  std_logic;
      load  :  in  std_logic;
      LSB   :  in  std_logic;
      reset :  in  std_logic;
      din   :  in  std_logic_vector(15 downto 0);
      MSB   :  out  std_logic
   );
   end component;



component contador_8_bits
   port (
      ce    :  in  std_logic;
      clk   :  in  std_logic;
      load  :  in  std_logic;
      reset :  in  std_logic;
      din   :  in  std_logic_vector(7 downto 0);
      tc    :  out  std_logic;
      q     :  out  std_logic_vector(7 downto 0)
   );
   end component;

component medio_periodo
   port (
      ce          :  in  std_logic;
      clk         :  in  std_logic;
      reset       :  in  std_logic;
      half_period :  out  std_logic;
      quarter_period: out std_logic
   );
   end component;
   
component detector_flancos
     port ( 
          entrada : in std_logic;
          clk : in std_logic;
          reset : in std_logic;
          fa_entrada : out std_logic; -- flanco ascendente
          fd_entrada : out std_logic -- flanco descendente
               );
end component;

signal gnd: STD_LOGIC_VECTOR(7 downto 0);
signal reset_contador: std_logic;
signal reset_registro: std_logic;
signal reset_half: std_logic;
signal in_first_srl: std_logic_vector(15 downto 0);
signal in_second_srl: std_logic_vector(15 downto 0);
signal fin_contador: std_logic;
signal half, quarter, fin_tx: std_logic;
begin

in_first_srl <= "0000" & data_in_first_dac; -- 2 bits de relleno + 2 bits de control + 12 bits de datos
in_second_srl <= "0000" & data_in_second_dac; -- 2 bits de relleno + 2 bits de control + 12 bits de datos

reset_registro <= reset or reset_srl;

--registro srl para el data_in_first_dac
registro_srl_inst_0: registro_srl
   port map (
      ce               => ce_srl,             
      clk              => quarter,            
      load             => load,           
      LSB              => '0',            
      reset            => reset_registro,          
      din(15 downto 0) => in_first_srl(15 downto 0),
      MSB              => sdin_first_dac            
   ); 
   
--registro srl para el data_in_second_dac   
registro_srl_inst_1: registro_srl
      port map (
         ce               => ce_srl,             
         clk              => quarter,            
         load             => load,           
         LSB              => '0',            
         reset            => reset_registro,          
         din(15 downto 0) => in_second_srl(15 downto 0),
         MSB              => sdin_second_dac            
      );
      
reset_contador <= reset or reset_bits;
      
contador_8_bits_inst: contador_8_bits
   port map (
      ce              => ce_bits,            
      clk             => clk,           
      load            => '0',          
      reset           => reset_contador,         
      din(7 downto 0) => "00000000",
      tc              => fin_tx,            
      q(7 downto 0)   => gnd 
   );

reset_half <= reset or reset_timer;

half_period_inst: medio_periodo
   port map (
      ce          => ce_half,        
      clk         => clk,       
      reset       => reset_half,     
      half_period => half,
      quarter_period => quarter
   );
   
 half_period <= quarter;  
   
detector_flancos_inst_0: detector_flancos
      port map (
               entrada => fin_tx,
               clk =>half,
               reset =>reset,
               fa_entrada =>ctr_bits_eq_16, -- flanco ascendente
               fd_entrada => open-- flanco descendente    
      ); 
    
end Behavioral;
