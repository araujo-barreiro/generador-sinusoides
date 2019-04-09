----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018.12.13 20:48:51
-- Design Name: 
-- Module Name:
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

ENTITY testbench_sistema_entero IS
END testbench_sistema_entero;
 
ARCHITECTURE behavior OF testbench_sistema_entero IS 
 
   -- Component Declaration for the Unit Under Test (UUT)
   component sistema_entero
   port (
      BTND            :  in  std_logic; 
      BTNL            :  in  std_logic; 
      BTNR            :  in  std_logic; 
      BTNU            :  in  std_logic; 
      clk             :  in  std_logic; 
      reset           :  in  std_logic; 
      busy            :  out  std_logic;
      end_of_conv     :  out  std_logic;
      sclk_both_dac   :  out  std_logic;
      sdin_first_dac  :  out  std_logic;
      sdin_second_dac :  out  std_logic;
      sync_both_dac   :  out  std_logic;
      uart            :  out  std_logic
   );
   end component;    
   
      
   -- Inputs
   signal BTND            :  std_logic := '0';     
   signal BTNL            :  std_logic := '0';     
   signal BTNR            :  std_logic := '0';     
   signal BTNU            :  std_logic := '0';     
   signal clk             :  std_logic := '0';     
   signal reset           :  std_logic := '0';     
      
   -- Outputs
   signal busy            :  std_logic;            
   signal end_of_conv     :  std_logic;            
   signal sclk_both_dac   :  std_logic;            
   signal sdin_first_dac  :  std_logic;            
   signal sdin_second_dac :  std_logic;            
   signal sync_both_dac   :  std_logic;            
   signal uart            :  std_logic;            
   
   -- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN
   
   -- Instantiate the Unit Under Test (UUT)
   sistema_entero_inst: sistema_entero
   port map (
      BTND            => BTND,          
      BTNL            => BTNL,          
      BTNR            => BTNR,          
      BTNU            => BTNU,          
      clk             => clk,           
      reset           => reset,         
      busy            => busy,          
      end_of_conv     => end_of_conv,   
      sclk_both_dac   => sclk_both_dac, 
      sdin_first_dac  => sdin_first_dac,
      sdin_second_dac => sdin_second_dac,
      sync_both_dac   => sync_both_dac, 
      uart            => uart          
   );     
   
   -- Clock process definitions
   clk_process :process
   begin
      clk <= '0';
      wait for clk_period/2;
      clk <= '1';
      wait for clk_period/2;
   end process;
         
   -- Stimulus process
   stim_proc: process
   BEGIN
      -- reset inicial
      reset <= '0';
      wait for 200 ns;
      reset <= '1';
      
      -- dejamos que saque un par de ciclos de una sinusoide con los valores por defecto
      wait for 5 ms;
      
      -- aumentamos la amplitud y la frecuencia
      BTNR <= '1';
      BTNU <= '1';
      wait for 1 ms;
      BTNR <= '0';
      BTNU <= '0';   
      wait for 5 ms;   
      
      -- volvemos a aumentar la amplitud y la frecuencia
      BTNR <= '1';
      BTNU <= '1';
      wait for 1 ms;
      BTNR <= '0';
      BTNU <= '0';   
      wait for 3 ms;       
      
      -- aumentamos solo la amplitud
      BTNU <= '1';
      wait for 1 ms;
      BTNU <= '0';   
      wait for 3 ms; 
      
     -- bajamos solo la frecuencia
      BTNL <= '1';
      wait for 1 ms;
      BTNL <= '0';   
      wait for 4 ms;             
     
      -- This command stops simulation when "run all" is executed
      assert (false) report "Simulation stop" severity FAILURE;
    
   END PROCESS;
    
END;
