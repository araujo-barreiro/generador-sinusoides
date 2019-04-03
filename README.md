# Generador de sinusoides

Proyecto para la asignatura Circuitos Electrónicos Programables de Teleco. Se trata de un generador sinusoidal, implementado como un sistema empotrado basado en el microprocesador Picoblaze 3, que incluye tanto el software (en ensamblador) como el hardware (en VHDL). La señal se generará digitalmente, y será convertida a analógico a través de un conversor D2A. El usuario puede reducir/ampliar la frecuencia y amplitud. 

# Particionado HW/SW:

<b>Hardware:</b><br>
<ul>
<li>Tabla LUT con 256 valores de 8 bits de una sinusoide entre 0 y 2π (valores sinusoide.txt)
<li>Transmisión de la sinusoide a través de un SPI
<li>Transmisión de los valores de amplitud y frecuencia a través de la UART
</ul>

<br><b>Software:</b><br>
<ul>
<li>Llevar control de la amplitud y la frecuencia
<li>Obtener datos de la LUT con la frecuencia necesaria
<li>Modificar la amplitud de la sinusoide desplazando los valores de la LUT
</ul>

# Diagrama de bloques:

<img src="https://github.com/araujo-barreiro/generador-sinusoides/raw/master/diagrama%20de%20bloques.jpeg" alt="Diagrama de bloques" height="200"/>

# Secuencia de operaciones:

<img src="https://github.com/araujo-barreiro/generador-sinusoides/raw/master/secuencia%20de%20operaciones.jpeg" alt="Secuencia de operaciones" height="200"/>

# Desarrollo:
Vivado 2015.3 + PicoblazeIDE<br>
Diego Araújo Novoa y Guillermo Barreiro Fernández




