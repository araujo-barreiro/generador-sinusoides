----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2018 17:28:05
-- Design Name: 
-- Module Name:  - Behavioral
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

entity transmisor_spi is 
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
end transmisor_spi;

architecture Behavioral of transmisor_spi is

component unidad_operativa
   port (
      ce_bits            :  in  std_logic;    
      ce_half            :  in  std_logic;    
      ce_srl             :  in  std_logic;    
      clk                :  in  std_logic;    
      load               :  in  std_logic;    
      reset              :  in  std_logic;    
      reset_bits         :  in  std_logic;    
      reset_srl          :  in  std_logic;    
      reset_timer        :  in  std_logic;    
      data_in_first_dac  :  in  std_logic_vector(11 downto 0);
      data_in_second_dac :  in  std_logic_vector(11 downto 0);
      Ctr_bits_eq_16     :  out  std_logic;   
      half_period        :  out  std_logic;   
      sdin_first_dac     :  out  std_logic;   
      sdin_second_dac    :  out  std_logic   
   );
   end component;
   
   component unidad_control
      port (
         clk            :  in  std_logic;
         ctr_bits_eq_16 :  in  std_logic;
         half_period    :  in  std_logic;
         reset          :  in  std_logic;
         start          :  in  std_logic;
         busy           :  out  std_logic;
         ce_bits        :  out  std_logic;
         ce_srl         :  out  std_logic;
         ce_timer       :  out  std_logic;
         end_of_conv    :  out  std_logic;
         load           :  out  std_logic;
         reset_bits     :  out  std_logic;
         reset_timer    :  out  std_logic;
         reset_srl    :  out  std_logic;
         sclk           :  out  std_logic;
         sync_both_dac  :  out  std_logic
      );
      end component;
   
   component detector_flancos
         port (
            clk        :  in  std_logic;
            entrada    :  in  std_logic;
            reset      :  in  std_logic;
            fa_entrada :  out  std_logic;
            fd_entrada :  out  std_logic
         );
         end component;
      
     
   
   
signal ce_bits, ce_half, ce_srl, reset_bits,load,reset_srl,reset_timer,ctr_bits_eq_16,half_period, half_fa :std_logic ;

begin   

unidad_operativa_inst: unidad_operativa
   port map (
      ce_bits                         => ce_bits,                       
      ce_half                         => ce_half,                       
      ce_srl                          => ce_srl,                        
      clk                             => clk,                           
      load                            => load,                          
      reset                           => reset,                         
      reset_bits                      => reset_bits,                    
      reset_srl                       => reset_srl,                     
      reset_timer                     => reset_timer,                   
      data_in_first_dac(11 downto 0)  => data_in_first_dac,
      data_in_second_dac(11 downto 0) => data_in_second_dac,
      Ctr_bits_eq_16                  => Ctr_bits_eq_16,                
      half_period                     => half_period,                   
      sdin_first_dac                  => sdin_first_dac,                
      sdin_second_dac                 => sdin_second_dac               
   );

unidad_control_inst: unidad_control
      port map (
         clk            => clk,          
         ctr_bits_eq_16 => ctr_bits_eq_16,
         half_period    => half_fa,  
         reset          => reset,        
         start          => start_conv_both_dac,        
         busy           => busy,         
         ce_bits        => ce_bits,      
         ce_srl         => ce_srl,       
         ce_timer       => ce_half,     
         end_of_conv    => end_of_conv,  
         load           => load,         
         reset_bits     => reset_bits,   
         reset_timer    => reset_timer,  
         reset_srl      => reset_srl,  
         sclk           => sclk_both_dac,         
         sync_both_dac  => sync_both_dac
      );
           
      
detector_flancos_inst: detector_flancos
              port map (
                 clk        => clk,      
                 entrada    => half_period,  
                 reset      => reset,    
                 fa_entrada => half_fa,
                 fd_entrada => open
              ); 
              
                   
end Behavioral;
