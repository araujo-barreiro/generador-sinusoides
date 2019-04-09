-- Realizado el 19-6-2006 por Luis Jacobo Alvarez Ruiz de Ojeda
-- Este fichero conecta entre s� los siguientes circuitos:
-- 	1) El microcontrolador Picoblaze 3 de Xilinx, descrito en el fichero "kcpsm3.vhd" (para las familias Virtex II o Spartan III)
--	   2) La memoria de programa, que incluye las instrucciones del programa realizado por el usuario, descrita
--	      en el fichero "picocode.vhd".

-- Declaraci�n de bibliotecas comunes
library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all; 
use ieee.std_logic_unsigned.all;


-- Las siguientes sentencias son necesarias si se ha utilizado el entorno picoblazeIDE para generar el fichero
-- que describe la memoria de programa
--library work;
--use work.constants.all;


-- Descripci�n de la entidad del nuevo componente picoblaze3_empotrado
entity picoblaze3_empotrado_s7 is
port (port_id       : out std_logic_vector(7 downto 0);	-- Direcci�n del puerto de entrada o de salida
      write_strobe  : out std_logic;							-- Indicaci�n de escritura en puerto de salida direccionado
      out_port      : out std_logic_vector(7 downto 0);	-- Salidas para escribir en el puerto de salida direccionado
      read_strobe   : out std_logic;							-- Indicaci�n de lectura en el puerto de entrada direccionado
      in_port       : in std_logic_vector(7 downto 0);	-- Entradas para leer del puerto de entrada direccionado
      interrupt     : in std_logic;								-- Entrada de petici�n de interrupci�n
      interrupt_ack : out std_logic;							-- Salida de aceptaci�n de interrupci�n
      reset         : in std_logic;								-- Entrada de puesta en estado inicial del microcontrolador
		clk       	  : in std_logic           				-- Reloj principal. Su frecuencia m�xima depende de la FPGA en que se implemente
      );
end picoblaze3_empotrado_s7;

-- Descripci�n de la arquitectura del nuevo componente picoblaze3_empotrado
architecture rtl of picoblaze3_empotrado_s7 is

-------------------------------------------------------------------------------------------------------
--           Declaraci�n de los componentes que se van a instanciar (no es necesaria con Vhdl'93)   ---
-------------------------------------------------------------------------------------------------------

-- Declaraci�n del componente correspondiente al microprocesador Picoblaze 3

component kcpsm3
port (address       : out std_logic_vector(9 downto 0);	-- Bus de direcciones que se conecta a la memoria de programa
      instruction   : in std_logic_vector(17 downto 0);	-- Bus de datos que se conecta a la memoria de programa para leer las instrucciones
      port_id       : out std_logic_vector(7 downto 0);	-- Direcci�n del puerto de entrada o de salida
      write_strobe  : out std_logic;							-- Indicaci�n de escritura en puerto de salida direccionado
      out_port      : out std_logic_vector(7 downto 0);	-- Salidas para escribir en el puerto de salida direccionado
      read_strobe   : out std_logic;							-- Indicaci�n de lectura en el puerto de entrada direccionado
      in_port       : in std_logic_vector(7 downto 0);	-- Entradas para leer del puerto de entrada direccionado
      interrupt     : in std_logic;								-- Entrada de petici�n de interrupci�n
      interrupt_ack : out std_logic;							-- Salida de aceptaci�n de interrupci�n
      reset         : in std_logic;								-- Entrada de puesta en estado inicial del microcontrolador
      clk           : in std_logic           				-- Reloj principal. Su frecuencia m�xima depende de la FPGA en que se implemente
		);
end component;

-- Declaraci�n del componente correspondiente a la memoria de programa, que contiene las instrucciones del programa ensamblado por el usuario

component picocode_s7 is
port (address     : in std_logic_vector(9 downto 0);
      instruction : out std_logic_vector(17 downto 0);
      clk         : in std_logic);
end component;


-----------------------------------------------------------------
--     Declaraci�n de se�ales internas
-----------------------------------------------------------------

signal address     : std_logic_vector(9 downto 0):=(others => '0');		-- Bus de direcciones que se conecta a la memoria de programa
signal instruction : std_logic_vector(17 downto 0):=(others => '0');	-- Bus de datos que se conecta a la memoria de programa para leer las instrucciones

-- Descripci�n propiamente dicha de la arquitectura

begin


-- Instanciaci�n del componente correspondiente al microprocesador Picoblaze 3

picoblaze3:kcpsm3
port map (address       => address, 		-- out std_logic_vector(9 downto 0);
          instruction   => instruction, 	-- in std_logic_vector(17 downto 0);
          port_id       => port_id, 		-- out std_logic_vector(7 downto 0);
          write_strobe  => write_strobe,	-- out std_logic;
          out_port      => out_port, 		-- out std_logic_vector(7 downto 0);
          read_strobe   => read_strobe,	-- out std_logic;
          in_port       => in_port, 		-- in std_logic_vector(7 downto 0);
          interrupt     => interrupt, 		-- in std_logic;
			 interrupt_ack => interrupt_ack, -- out std_logic;
          reset         => reset, 			-- in std_logic;
          clk           => clk 				-- in std_logic)
          );

-- Instanciaci�n del componente correspondiente a la memoria de programa, que contiene las instrucciones del programa ensamblado por el usuario

memoria_de_programa:picocode_s7 
port map(address      => address, 			-- in std_logic_vector(9 downto 0);
        instruction   => instruction, 		-- out std_logic_vector(17 downto 0);
        clk           => clk 					-- in std_logic);
        );

end rtl;
