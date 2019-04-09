-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
-- Date        : Sat Dec 15 16:39:26 2018
-- Host        : DESKTOP-FLB15AP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/guill/Desktop/Practica7.xpr/Practica7/Practica7.sim/sim_1/synth/func/testbench_sistema_entero_func_synth.vhd
-- Design      : sistema_entero
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FD8C3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end FD8C3;

architecture STRUCTURE of FD8C3 is
begin
\q_interna_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_interna_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_interna_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_interna_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FD8C3_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_interna_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FD8C3_0 : entity is "FD8C3";
end FD8C3_0;

architecture STRUCTURE of FD8C3_0 is
begin
\q_interna_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(0),
      Q => Q(0)
    );
\q_interna_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(1),
      Q => Q(1)
    );
\q_interna_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(2),
      Q => Q(2)
    );
\q_interna_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(3),
      Q => Q(3)
    );
\q_interna_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(4),
      Q => Q(4)
    );
\q_interna_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(5),
      Q => Q(5)
    );
\q_interna_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(6),
      Q => Q(6)
    );
\q_interna_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(7),
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FD8C3_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FD8C3_1 : entity is "FD8C3";
end FD8C3_1;

architecture STRUCTURE of FD8C3_1 is
begin
\q_interna_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_interna_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_interna_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_interna_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_interna_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_interna_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_interna_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_interna_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FD8C3_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_interna_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FD8C3_2 : entity is "FD8C3";
end FD8C3_2;

architecture STRUCTURE of FD8C3_2 is
begin
\q_interna_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(0),
      Q => Q(0)
    );
\q_interna_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(1),
      Q => Q(1)
    );
\q_interna_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(2),
      Q => Q(2)
    );
\q_interna_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(3),
      Q => Q(3)
    );
\q_interna_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(4),
      Q => Q(4)
    );
\q_interna_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(5),
      Q => Q(5)
    );
\q_interna_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(6),
      Q => Q(6)
    );
\q_interna_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(7),
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FD8C3_3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_interna_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FD8C3_3 : entity is "FD8C3";
end FD8C3_3;

architecture STRUCTURE of FD8C3_3 is
begin
\q_interna_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[3]_0\(0),
      Q => Q(0)
    );
\q_interna_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[3]_0\(1),
      Q => Q(1)
    );
\q_interna_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[3]_0\(2),
      Q => Q(2)
    );
\q_interna_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[3]_0\(3),
      Q => Q(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FD8C3_4 is
  port (
    \estado_actual_reg[0]\ : out STD_LOGIC;
    \q_interna_reg[0]_0\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FD8C3_4 : entity is "FD8C3";
end FD8C3_4;

architecture STRUCTURE of FD8C3_4 is
begin
\q_interna_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \q_interna_reg[0]_0\,
      Q => \estado_actual_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FD8C3_5 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_interna_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FD8C3_5 : entity is "FD8C3";
end FD8C3_5;

architecture STRUCTURE of FD8C3_5 is
begin
\q_interna_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(0),
      Q => Q(0)
    );
\q_interna_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(1),
      Q => Q(1)
    );
\q_interna_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(2),
      Q => Q(2)
    );
\q_interna_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(3),
      Q => Q(3)
    );
\q_interna_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(4),
      Q => Q(4)
    );
\q_interna_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(5),
      Q => Q(5)
    );
\q_interna_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(6),
      Q => Q(6)
    );
\q_interna_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \q_interna_reg[7]_0\(7),
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bbfifo_16x8 is
  port (
    data_present : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_complete : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end bbfifo_16x8;

architecture STRUCTURE of bbfifo_16x8 is
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal DI : STD_LOGIC;
  signal I2 : STD_LOGIC;
  signal LI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal \count_width_loop[0].lsb_count.count_muxcy_n_0\ : STD_LOGIC;
  signal \count_width_loop[0].lsb_count.count_xor_n_0\ : STD_LOGIC;
  signal \count_width_loop[1].count_lut_n_0\ : STD_LOGIC;
  signal \count_width_loop[1].mid_count.count_muxcy_n_0\ : STD_LOGIC;
  signal \count_width_loop[1].mid_count.count_xor_n_0\ : STD_LOGIC;
  signal \count_width_loop[1].register_bit_n_0\ : STD_LOGIC;
  signal \count_width_loop[2].count_lut_n_0\ : STD_LOGIC;
  signal \count_width_loop[2].mid_count.count_xor_n_0\ : STD_LOGIC;
  signal \count_width_loop[2].register_bit_n_0\ : STD_LOGIC;
  signal \count_width_loop[3].register_bit_n_0\ : STD_LOGIC;
  signal \count_width_loop[3].upper_count.count_xor_n_0\ : STD_LOGIC;
  signal \^data_present\ : STD_LOGIC;
  signal full_lut_n_0 : STD_LOGIC;
  signal \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \count_width_loop[0].count_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \count_width_loop[0].lsb_count.count_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \count_width_loop[0].lsb_count.count_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[0].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[1].count_lut\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[1].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[2].count_lut\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[2].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[3].count_lut\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[3].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \data_width_loop[0].data_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_width_loop[0].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop ";
  attribute srl_name : string;
  attribute srl_name of \data_width_loop[0].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop[0].data_srl ";
  attribute box_type of \data_width_loop[1].data_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[1].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop ";
  attribute srl_name of \data_width_loop[1].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop[1].data_srl ";
  attribute box_type of \data_width_loop[2].data_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[2].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop ";
  attribute srl_name of \data_width_loop[2].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop[2].data_srl ";
  attribute box_type of \data_width_loop[3].data_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[3].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop ";
  attribute srl_name of \data_width_loop[3].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop[3].data_srl ";
  attribute box_type of \data_width_loop[4].data_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[4].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop ";
  attribute srl_name of \data_width_loop[4].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop[4].data_srl ";
  attribute box_type of \data_width_loop[5].data_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[5].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop ";
  attribute srl_name of \data_width_loop[5].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop[5].data_srl ";
  attribute box_type of \data_width_loop[6].data_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[6].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop ";
  attribute srl_name of \data_width_loop[6].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop[6].data_srl ";
  attribute box_type of \data_width_loop[7].data_srl\ : label is "PRIMITIVE";
  attribute srl_bus_name of \data_width_loop[7].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop ";
  attribute srl_name of \data_width_loop[7].data_srl\ : label is "\uart_tx_inst/buf/data_width_loop[7].data_srl ";
  attribute XILINX_LEGACY_PRIM of dp_flop : label is "FDR";
  attribute box_type of dp_flop : label is "PRIMITIVE";
  attribute box_type of dp_lut : label is "PRIMITIVE";
  attribute box_type of full_lut : label is "PRIMITIVE";
  attribute box_type of valid_lut : label is "PRIMITIVE";
  attribute box_type of zero_lut : label is "PRIMITIVE";
begin
  data_present <= \^data_present\;
\count_width_loop[0].count_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6606"
    )
        port map (
      I0 => DI,
      I1 => Tx_complete,
      I2 => I2,
      I3 => '1',
      O => S
    );
\count_width_loop[0].lsb_count.count_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_width_loop[1].mid_count.count_muxcy_n_0\,
      CO(0) => \count_width_loop[0].lsb_count.count_muxcy_n_0\,
      CYINIT => CI,
      DI(3) => \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \count_width_loop[2].register_bit_n_0\,
      DI(1) => \count_width_loop[1].register_bit_n_0\,
      DI(0) => DI,
      O(3) => \count_width_loop[3].upper_count.count_xor_n_0\,
      O(2) => \count_width_loop[2].mid_count.count_xor_n_0\,
      O(1) => \count_width_loop[1].mid_count.count_xor_n_0\,
      O(0) => \count_width_loop[0].lsb_count.count_xor_n_0\,
      S(3) => LI,
      S(2) => \count_width_loop[2].count_lut_n_0\,
      S(1) => \count_width_loop[1].count_lut_n_0\,
      S(0) => S
    );
\count_width_loop[0].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^data_present\,
      D => \count_width_loop[0].lsb_count.count_xor_n_0\,
      Q => DI,
      R => AR(0)
    );
\count_width_loop[1].count_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6606"
    )
        port map (
      I0 => \count_width_loop[1].register_bit_n_0\,
      I1 => Tx_complete,
      I2 => I2,
      I3 => '1',
      O => \count_width_loop[1].count_lut_n_0\
    );
\count_width_loop[1].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^data_present\,
      D => \count_width_loop[1].mid_count.count_xor_n_0\,
      Q => \count_width_loop[1].register_bit_n_0\,
      R => AR(0)
    );
\count_width_loop[2].count_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6606"
    )
        port map (
      I0 => \count_width_loop[2].register_bit_n_0\,
      I1 => Tx_complete,
      I2 => I2,
      I3 => '1',
      O => \count_width_loop[2].count_lut_n_0\
    );
\count_width_loop[2].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^data_present\,
      D => \count_width_loop[2].mid_count.count_xor_n_0\,
      Q => \count_width_loop[2].register_bit_n_0\,
      R => AR(0)
    );
\count_width_loop[3].count_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6606"
    )
        port map (
      I0 => \count_width_loop[3].register_bit_n_0\,
      I1 => Tx_complete,
      I2 => I2,
      I3 => '1',
      O => LI
    );
\count_width_loop[3].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^data_present\,
      D => \count_width_loop[3].upper_count.count_xor_n_0\,
      Q => \count_width_loop[3].register_bit_n_0\,
      R => AR(0)
    );
\data_width_loop[0].data_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => DI,
      A1 => \count_width_loop[1].register_bit_n_0\,
      A2 => \count_width_loop[2].register_bit_n_0\,
      A3 => \count_width_loop[3].register_bit_n_0\,
      CE => CI,
      CLK => clk_IBUF_BUFG,
      D => data_in(0),
      Q => data_out(0)
    );
\data_width_loop[1].data_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => DI,
      A1 => \count_width_loop[1].register_bit_n_0\,
      A2 => \count_width_loop[2].register_bit_n_0\,
      A3 => \count_width_loop[3].register_bit_n_0\,
      CE => CI,
      CLK => clk_IBUF_BUFG,
      D => data_in(1),
      Q => data_out(1)
    );
\data_width_loop[2].data_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => DI,
      A1 => \count_width_loop[1].register_bit_n_0\,
      A2 => \count_width_loop[2].register_bit_n_0\,
      A3 => \count_width_loop[3].register_bit_n_0\,
      CE => CI,
      CLK => clk_IBUF_BUFG,
      D => data_in(2),
      Q => data_out(2)
    );
\data_width_loop[3].data_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => DI,
      A1 => \count_width_loop[1].register_bit_n_0\,
      A2 => \count_width_loop[2].register_bit_n_0\,
      A3 => \count_width_loop[3].register_bit_n_0\,
      CE => CI,
      CLK => clk_IBUF_BUFG,
      D => data_in(3),
      Q => data_out(3)
    );
\data_width_loop[4].data_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => DI,
      A1 => \count_width_loop[1].register_bit_n_0\,
      A2 => \count_width_loop[2].register_bit_n_0\,
      A3 => \count_width_loop[3].register_bit_n_0\,
      CE => CI,
      CLK => clk_IBUF_BUFG,
      D => data_in(4),
      Q => data_out(4)
    );
\data_width_loop[5].data_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => DI,
      A1 => \count_width_loop[1].register_bit_n_0\,
      A2 => \count_width_loop[2].register_bit_n_0\,
      A3 => \count_width_loop[3].register_bit_n_0\,
      CE => CI,
      CLK => clk_IBUF_BUFG,
      D => data_in(5),
      Q => data_out(5)
    );
\data_width_loop[6].data_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => DI,
      A1 => \count_width_loop[1].register_bit_n_0\,
      A2 => \count_width_loop[2].register_bit_n_0\,
      A3 => \count_width_loop[3].register_bit_n_0\,
      CE => CI,
      CLK => clk_IBUF_BUFG,
      D => data_in(6),
      Q => data_out(6)
    );
\data_width_loop[7].data_srl\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => DI,
      A1 => \count_width_loop[1].register_bit_n_0\,
      A2 => \count_width_loop[2].register_bit_n_0\,
      A3 => \count_width_loop[3].register_bit_n_0\,
      CE => CI,
      CLK => clk_IBUF_BUFG,
      D => data_in(7),
      Q => data_out(7)
    );
dp_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => D,
      Q => \^data_present\,
      R => AR(0)
    );
dp_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFA0"
    )
        port map (
      I0 => '1',
      I1 => Tx_complete,
      I2 => I2,
      I3 => \^data_present\,
      O => D
    );
full_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => DI,
      I1 => \count_width_loop[1].register_bit_n_0\,
      I2 => \count_width_loop[2].register_bit_n_0\,
      I3 => \count_width_loop[3].register_bit_n_0\,
      O => full_lut_n_0
    );
valid_lut: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => full_lut_n_0,
      I1 => '1',
      I2 => Tx_complete,
      O => CI
    );
zero_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => DI,
      I1 => \count_width_loop[1].register_bit_n_0\,
      I2 => \count_width_loop[2].register_bit_n_0\,
      I3 => \count_width_loop[3].register_bit_n_0\,
      O => I2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity biestable_D_1_bit is
  port (
    Q14_in : out STD_LOGIC;
    kcpsm6_rom : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end biestable_D_1_bit;

architecture STRUCTURE of biestable_D_1_bit is
begin
q_interna_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => kcpsm6_rom,
      Q => Q14_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity biestable_D_1_bit_10 is
  port (
    Q10_in : out STD_LOGIC;
    kcpsm6_rom : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of biestable_D_1_bit_10 : entity is "biestable_D_1_bit";
end biestable_D_1_bit_10;

architecture STRUCTURE of biestable_D_1_bit_10 is
begin
q_interna_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => kcpsm6_rom,
      Q => Q10_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity biestable_D_1_bit_11 is
  port (
    Q15_in : out STD_LOGIC;
    kcpsm6_rom : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of biestable_D_1_bit_11 : entity is "biestable_D_1_bit";
end biestable_D_1_bit_11;

architecture STRUCTURE of biestable_D_1_bit_11 is
begin
q_interna_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => kcpsm6_rom(0),
      Q => Q15_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity biestable_D_1_bit_7 is
  port (
    Q13_in : out STD_LOGIC;
    kcpsm6_rom : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of biestable_D_1_bit_7 : entity is "biestable_D_1_bit";
end biestable_D_1_bit_7;

architecture STRUCTURE of biestable_D_1_bit_7 is
begin
q_interna_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => kcpsm6_rom,
      Q => Q13_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity biestable_D_1_bit_8 is
  port (
    Q12_in : out STD_LOGIC;
    kcpsm6_rom : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of biestable_D_1_bit_8 : entity is "biestable_D_1_bit";
end biestable_D_1_bit_8;

architecture STRUCTURE of biestable_D_1_bit_8 is
begin
q_interna_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => kcpsm6_rom,
      Q => Q12_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity biestable_D_1_bit_9 is
  port (
    Q11_in : out STD_LOGIC;
    kcpsm6_rom : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of biestable_D_1_bit_9 : entity is "biestable_D_1_bit";
end biestable_D_1_bit_9;

architecture STRUCTURE of biestable_D_1_bit_9 is
begin
q_interna_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset,
      D => kcpsm6_rom,
      Q => Q11_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity biestable_D_8_bits is
  port (
    \q_interna_reg[0]_0\ : out STD_LOGIC;
    \q_interna_reg[0]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_IBUF : in STD_LOGIC;
    write_strobe : in STD_LOGIC;
    Q11_in : in STD_LOGIC;
    \q_interna_reg[0]_2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC
  );
end biestable_D_8_bits;

architecture STRUCTURE of biestable_D_8_bits is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^q_interna_reg[0]_0\ : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \q_interna_reg[0]_0\ <= \^q_interna_reg[0]_0\;
\q_interna[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^q\(0),
      I1 => write_strobe,
      I2 => Q11_in,
      I3 => \q_interna_reg[0]_2\,
      O => \q_interna_reg[0]_1\
    );
\q_interna_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => \^q_interna_reg[0]_0\,
      D => D(0),
      Q => \^q\(0)
    );
\q_interna_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => \^q_interna_reg[0]_0\,
      D => D(1),
      Q => \^q\(1)
    );
\q_interna_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => \^q_interna_reg[0]_0\,
      D => D(2),
      Q => \^q\(2)
    );
\q_interna_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => \^q_interna_reg[0]_0\,
      D => D(3),
      Q => \^q\(3)
    );
\q_interna_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => \^q_interna_reg[0]_0\,
      D => D(4),
      Q => \^q\(4)
    );
\q_interna_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => \^q_interna_reg[0]_0\,
      D => D(5),
      Q => \^q\(5)
    );
\q_interna_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => \^q_interna_reg[0]_0\,
      D => D(6),
      Q => \^q\(6)
    );
\q_interna_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => \^q_interna_reg[0]_0\,
      D => D(7),
      Q => \^q\(7)
    );
reset_flop1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_IBUF,
      O => \^q_interna_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity biestable_D_8_bits_12 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of biestable_D_8_bits_12 : entity is "biestable_D_8_bits";
end biestable_D_8_bits_12;

architecture STRUCTURE of biestable_D_8_bits_12 is
begin
\q_interna_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\q_interna_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\q_interna_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\q_interna_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\q_interna_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\q_interna_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
\q_interna_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(6),
      Q => Q(6)
    );
\q_interna_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(7),
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity contador_8_bits is
  port (
    entrada : out STD_LOGIC;
    reset0_out : in STD_LOGIC;
    \estado_actual_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end contador_8_bits;

architecture STRUCTURE of contador_8_bits is
  signal \temp_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[4]\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \temp_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[4]\ : label is "LD";
begin
entrada_s_aux_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \temp_reg_n_0_[3]\,
      I1 => \temp_reg_n_0_[4]\,
      I2 => \temp_reg_n_0_[2]\,
      I3 => \temp_reg_n_0_[0]\,
      I4 => \temp_reg_n_0_[1]\,
      O => entrada
    );
\temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp_reg[0]_i_1_n_0\,
      G => \estado_actual_reg[2]\(0),
      GE => '1',
      Q => \temp_reg_n_0_[0]\
    );
\temp_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111110"
    )
        port map (
      I0 => \temp_reg_n_0_[0]\,
      I1 => reset0_out,
      I2 => \temp_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[3]\,
      I4 => \temp_reg_n_0_[4]\,
      I5 => \temp_reg_n_0_[2]\,
      O => \temp_reg[0]_i_1_n_0\
    );
\temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp_reg[1]_i_1_n_0\,
      G => \estado_actual_reg[2]\(0),
      GE => '1',
      Q => \temp_reg_n_0_[1]\
    );
\temp_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0000000000FE"
    )
        port map (
      I0 => \temp_reg_n_0_[3]\,
      I1 => \temp_reg_n_0_[4]\,
      I2 => \temp_reg_n_0_[2]\,
      I3 => reset0_out,
      I4 => \temp_reg_n_0_[1]\,
      I5 => \temp_reg_n_0_[0]\,
      O => \temp_reg[1]_i_1_n_0\
    );
\temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp_reg[2]_i_1_n_0\,
      G => \estado_actual_reg[2]\(0),
      GE => '1',
      Q => \temp_reg_n_0_[2]\
    );
\temp_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5500550055000054"
    )
        port map (
      I0 => reset0_out,
      I1 => \temp_reg_n_0_[3]\,
      I2 => \temp_reg_n_0_[4]\,
      I3 => \temp_reg_n_0_[2]\,
      I4 => \temp_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[1]\,
      O => \temp_reg[2]_i_1_n_0\
    );
\temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp_reg[3]_i_1_n_0\,
      G => \estado_actual_reg[2]\(0),
      GE => '1',
      Q => \temp_reg_n_0_[3]\
    );
\temp_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050505050505004"
    )
        port map (
      I0 => reset0_out,
      I1 => \temp_reg_n_0_[4]\,
      I2 => \temp_reg_n_0_[3]\,
      I3 => \temp_reg_n_0_[1]\,
      I4 => \temp_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[2]\,
      O => \temp_reg[3]_i_1_n_0\
    );
\temp_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \temp_reg[4]_i_1_n_0\,
      G => \estado_actual_reg[2]\(0),
      GE => '1',
      Q => \temp_reg_n_0_[4]\
    );
\temp_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEB"
    )
        port map (
      I0 => reset0_out,
      I1 => \temp_reg_n_0_[4]\,
      I2 => \temp_reg_n_0_[2]\,
      I3 => \temp_reg_n_0_[0]\,
      I4 => \temp_reg_n_0_[1]\,
      I5 => \temp_reg_n_0_[3]\,
      O => \temp_reg[4]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity detector_flancos is
  port (
    entrada_s_aux : out STD_LOGIC;
    entrada_t_1 : out STD_LOGIC;
    \estado_actual_reg[0]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end detector_flancos;

architecture STRUCTURE of detector_flancos is
  signal \^entrada_s_aux\ : STD_LOGIC;
  signal \^entrada_t_1\ : STD_LOGIC;
begin
  entrada_s_aux <= \^entrada_s_aux\;
  entrada_t_1 <= \^entrada_t_1\;
entrada_s_aux_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => CLK,
      Q => \^entrada_s_aux\
    );
entrada_t_1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \^entrada_s_aux\,
      Q => \^entrada_t_1\
    );
\estado_actual[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^entrada_t_1\,
      I1 => \^entrada_s_aux\,
      O => \estado_actual_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity detector_flancos_6 is
  port (
    entrada_s_aux : out STD_LOGIC;
    entrada_t_1 : out STD_LOGIC;
    \estado_actual_reg[0]\ : out STD_LOGIC;
    entrada : in STD_LOGIC;
    half_period : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of detector_flancos_6 : entity is "detector_flancos";
end detector_flancos_6;

architecture STRUCTURE of detector_flancos_6 is
  signal \^entrada_s_aux\ : STD_LOGIC;
  signal \^entrada_t_1\ : STD_LOGIC;
begin
  entrada_s_aux <= \^entrada_s_aux\;
  entrada_t_1 <= \^entrada_t_1\;
entrada_s_aux_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => half_period,
      CE => '1',
      CLR => AR(0),
      D => entrada,
      Q => \^entrada_s_aux\
    );
entrada_t_1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => half_period,
      CE => '1',
      CLR => AR(0),
      D => \^entrada_s_aux\,
      Q => \^entrada_t_1\
    );
\estado_actual[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^entrada_t_1\,
      I1 => \^entrada_s_aux\,
      O => \estado_actual_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity generador_baudios is
  port (
    en_16_x_baud : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end generador_baudios;

architecture STRUCTURE of generador_baudios is
  signal \baud_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \baud_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \baud_count_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal en_16_x_baud_int_i_2_n_0 : STD_LOGIC;
  signal load : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \baud_count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \baud_count[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \baud_count[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \baud_count[9]_i_1\ : label is "soft_lutpair0";
begin
\baud_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333331333333"
    )
        port map (
      I0 => \baud_count_reg__0\(1),
      I1 => \baud_count_reg__0\(0),
      I2 => \baud_count_reg__0\(2),
      I3 => \baud_count_reg__0\(3),
      I4 => \baud_count_reg__0\(4),
      I5 => en_16_x_baud_int_i_2_n_0,
      O => p_0_in(0)
    );
\baud_count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \baud_count_reg__0\(9),
      I1 => \baud_count_reg__0\(7),
      I2 => \baud_count[10]_i_2_n_0\,
      I3 => \baud_count_reg__0\(6),
      I4 => \baud_count_reg__0\(8),
      I5 => \baud_count_reg__0\(10),
      O => p_0_in(10)
    );
\baud_count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \baud_count_reg__0\(3),
      I1 => \baud_count_reg__0\(4),
      I2 => \baud_count_reg__0\(1),
      I3 => \baud_count_reg__0\(0),
      I4 => \baud_count_reg__0\(2),
      I5 => \baud_count_reg__0\(5),
      O => \baud_count[10]_i_2_n_0\
    );
\baud_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFBF0000"
    )
        port map (
      I0 => \baud_count_reg__0\(2),
      I1 => \baud_count_reg__0\(3),
      I2 => \baud_count_reg__0\(4),
      I3 => en_16_x_baud_int_i_2_n_0,
      I4 => \baud_count_reg__0\(1),
      I5 => \baud_count_reg__0\(0),
      O => p_0_in(1)
    );
\baud_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \baud_count_reg__0\(1),
      I1 => \baud_count_reg__0\(0),
      I2 => \baud_count_reg__0\(2),
      O => p_0_in(2)
    );
\baud_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3CCCC4CCCCCCCC"
    )
        port map (
      I0 => \baud_count_reg__0\(4),
      I1 => \baud_count_reg__0\(3),
      I2 => \baud_count_reg__0\(0),
      I3 => en_16_x_baud_int_i_2_n_0,
      I4 => \baud_count_reg__0\(2),
      I5 => \baud_count_reg__0\(1),
      O => p_0_in(3)
    );
\baud_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C6CCCC4CCCCCCCC"
    )
        port map (
      I0 => \baud_count_reg__0\(3),
      I1 => \baud_count_reg__0\(4),
      I2 => \baud_count_reg__0\(0),
      I3 => en_16_x_baud_int_i_2_n_0,
      I4 => \baud_count_reg__0\(2),
      I5 => \baud_count_reg__0\(1),
      O => p_0_in(4)
    );
\baud_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \baud_count_reg__0\(3),
      I1 => \baud_count_reg__0\(4),
      I2 => \baud_count_reg__0\(1),
      I3 => \baud_count_reg__0\(0),
      I4 => \baud_count_reg__0\(2),
      I5 => \baud_count_reg__0\(5),
      O => p_0_in(5)
    );
\baud_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \baud_count_reg__0\(5),
      I1 => \baud_count[7]_i_2_n_0\,
      I2 => \baud_count_reg__0\(4),
      I3 => \baud_count_reg__0\(3),
      I4 => \baud_count_reg__0\(6),
      O => p_0_in(6)
    );
\baud_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => \baud_count_reg__0\(6),
      I1 => \baud_count_reg__0\(3),
      I2 => \baud_count_reg__0\(4),
      I3 => \baud_count[7]_i_2_n_0\,
      I4 => \baud_count_reg__0\(5),
      I5 => \baud_count_reg__0\(7),
      O => p_0_in(7)
    );
\baud_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \baud_count_reg__0\(1),
      I1 => \baud_count_reg__0\(0),
      I2 => \baud_count_reg__0\(2),
      O => \baud_count[7]_i_2_n_0\
    );
\baud_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \baud_count_reg__0\(7),
      I1 => \baud_count[10]_i_2_n_0\,
      I2 => \baud_count_reg__0\(6),
      I3 => \baud_count_reg__0\(8),
      O => p_0_in(8)
    );
\baud_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \baud_count_reg__0\(8),
      I1 => \baud_count_reg__0\(6),
      I2 => \baud_count[10]_i_2_n_0\,
      I3 => \baud_count_reg__0\(7),
      I4 => \baud_count_reg__0\(9),
      O => p_0_in(9)
    );
\baud_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(0),
      Q => \baud_count_reg__0\(0)
    );
\baud_count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(10),
      Q => \baud_count_reg__0\(10)
    );
\baud_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => \baud_count_reg__0\(1)
    );
\baud_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(2),
      Q => \baud_count_reg__0\(2)
    );
\baud_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(3),
      Q => \baud_count_reg__0\(3)
    );
\baud_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(4),
      Q => \baud_count_reg__0\(4)
    );
\baud_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(5),
      Q => \baud_count_reg__0\(5)
    );
\baud_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(6),
      Q => \baud_count_reg__0\(6)
    );
\baud_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(7),
      Q => \baud_count_reg__0\(7)
    );
\baud_count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(8),
      Q => \baud_count_reg__0\(8)
    );
\baud_count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(9),
      Q => \baud_count_reg__0\(9)
    );
en_16_x_baud_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \baud_count_reg__0\(4),
      I1 => \baud_count_reg__0\(3),
      I2 => \baud_count_reg__0\(2),
      I3 => \baud_count_reg__0\(1),
      I4 => \baud_count_reg__0\(0),
      I5 => en_16_x_baud_int_i_2_n_0,
      O => load
    );
en_16_x_baud_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \baud_count_reg__0\(9),
      I1 => \baud_count_reg__0\(10),
      I2 => \baud_count_reg__0\(7),
      I3 => \baud_count_reg__0\(8),
      I4 => \baud_count_reg__0\(6),
      I5 => \baud_count_reg__0\(5),
      O => en_16_x_baud_int_i_2_n_0
    );
en_16_x_baud_int_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => load,
      Q => en_16_x_baud
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kcpsm3 is
  port (
    \q_interna_reg[0]\ : out STD_LOGIC;
    \q_interna_reg[7]\ : out STD_LOGIC;
    \q_interna_reg[3]\ : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \store_loop[0].store_flop_0\ : out STD_LOGIC;
    \q_interna_reg[1]\ : out STD_LOGIC;
    \store_loop[0].store_flop_1\ : out STD_LOGIC;
    \q_interna_reg[2]\ : out STD_LOGIC;
    \store_loop[0].store_flop_2\ : out STD_LOGIC;
    \q_interna_reg[3]_0\ : out STD_LOGIC;
    \store_loop[0].store_flop_3\ : out STD_LOGIC;
    \q_interna_reg[4]\ : out STD_LOGIC;
    \q_interna_reg[5]\ : out STD_LOGIC;
    \q_interna_reg[6]\ : out STD_LOGIC;
    q_interna_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_interna_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_interna_reg[7]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_interna_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    instruction : in STD_LOGIC_VECTOR ( 17 downto 0 );
    kcpsm6_rom : in STD_LOGIC;
    in_port : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q14_in : in STD_LOGIC;
    Q13_in : in STD_LOGIC;
    Q12_in : in STD_LOGIC;
    Q10_in : in STD_LOGIC
  );
end kcpsm3;

architecture STRUCTURE of kcpsm3 is
  signal \^addrardaddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal CE : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal D10_in : STD_LOGIC;
  signal D14_in : STD_LOGIC;
  signal D18_in : STD_LOGIC;
  signal D22_in : STD_LOGIC;
  signal D2_in : STD_LOGIC;
  signal D4_in : STD_LOGIC;
  signal D6_in : STD_LOGIC;
  signal I0 : STD_LOGIC;
  signal I00_in : STD_LOGIC;
  signal I014_in : STD_LOGIC;
  signal I019_in : STD_LOGIC;
  signal I024_in : STD_LOGIC;
  signal I029_in : STD_LOGIC;
  signal I034_in : STD_LOGIC;
  signal I04_in : STD_LOGIC;
  signal I09_in : STD_LOGIC;
  signal I1 : STD_LOGIC;
  signal I2 : STD_LOGIC;
  signal LI : STD_LOGIC;
  signal R : STD_LOGIC;
  signal WE : STD_LOGIC;
  signal ack_flop_n_0 : STD_LOGIC;
  signal \alu_mux_loop[0].mux_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[0].or_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[1].mux_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[1].or_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[2].mux_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[2].or_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[3].mux_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[3].or_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[4].mux_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[4].or_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[5].mux_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[5].or_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[6].mux_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[6].or_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[7].mux_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[7].or_lut_n_0\ : STD_LOGIC;
  signal \alu_mux_loop[7].shift_in_muxf5_n_0\ : STD_LOGIC;
  signal \arith_loop[0].arith_flop_n_0\ : STD_LOGIC;
  signal \arith_loop[0].arith_lut_n_0\ : STD_LOGIC;
  signal \arith_loop[0].lsb_arith.arith_carry_in_lut_n_0\ : STD_LOGIC;
  signal \arith_loop[0].lsb_arith.arith_carry_in_muxcy_n_0\ : STD_LOGIC;
  signal \arith_loop[0].lsb_arith.arith_muxcy_n_0\ : STD_LOGIC;
  signal \arith_loop[0].lsb_arith.arith_xor_n_0\ : STD_LOGIC;
  signal \arith_loop[1].arith_flop_n_0\ : STD_LOGIC;
  signal \arith_loop[1].arith_lut_n_0\ : STD_LOGIC;
  signal \arith_loop[1].mid_arith.arith_muxcy_n_0\ : STD_LOGIC;
  signal \arith_loop[1].mid_arith.arith_xor_n_0\ : STD_LOGIC;
  signal \arith_loop[2].arith_flop_n_0\ : STD_LOGIC;
  signal \arith_loop[2].arith_lut_n_0\ : STD_LOGIC;
  signal \arith_loop[2].mid_arith.arith_muxcy_n_0\ : STD_LOGIC;
  signal \arith_loop[2].mid_arith.arith_xor_n_0\ : STD_LOGIC;
  signal \arith_loop[3].arith_flop_n_0\ : STD_LOGIC;
  signal \arith_loop[3].arith_lut_n_0\ : STD_LOGIC;
  signal \arith_loop[3].mid_arith.arith_muxcy_n_0\ : STD_LOGIC;
  signal \arith_loop[3].mid_arith.arith_xor_n_0\ : STD_LOGIC;
  signal \arith_loop[4].arith_flop_n_0\ : STD_LOGIC;
  signal \arith_loop[4].arith_lut_n_0\ : STD_LOGIC;
  signal \arith_loop[4].mid_arith.arith_muxcy_n_0\ : STD_LOGIC;
  signal \arith_loop[4].mid_arith.arith_xor_n_0\ : STD_LOGIC;
  signal \arith_loop[5].arith_flop_n_0\ : STD_LOGIC;
  signal \arith_loop[5].arith_lut_n_0\ : STD_LOGIC;
  signal \arith_loop[5].mid_arith.arith_muxcy_n_0\ : STD_LOGIC;
  signal \arith_loop[5].mid_arith.arith_xor_n_0\ : STD_LOGIC;
  signal \arith_loop[6].arith_flop_n_0\ : STD_LOGIC;
  signal \arith_loop[6].arith_lut_n_0\ : STD_LOGIC;
  signal \arith_loop[6].mid_arith.arith_muxcy_n_0\ : STD_LOGIC;
  signal \arith_loop[6].mid_arith.arith_xor_n_0\ : STD_LOGIC;
  signal \arith_loop[7].arith_flop_n_0\ : STD_LOGIC;
  signal \arith_loop[7].arith_lut_n_0\ : STD_LOGIC;
  signal \arith_loop[7].msb_arith.arith_carry_flop_n_0\ : STD_LOGIC;
  signal \arith_loop[7].msb_arith.arith_carry_out_lut_n_0\ : STD_LOGIC;
  signal \arith_loop[7].msb_arith.arith_carry_out_xor_n_0\ : STD_LOGIC;
  signal \arith_loop[7].msb_arith.arith_xor_n_0\ : STD_LOGIC;
  signal call_type_lut_n_0 : STD_LOGIC;
  signal carry_flag_flop_n_0 : STD_LOGIC;
  signal carry_xor_n_0 : STD_LOGIC;
  signal condition_met_lut_n_0 : STD_LOGIC;
  signal flag_enable_lut_n_0 : STD_LOGIC;
  signal flag_type_lut_n_0 : STD_LOGIC;
  signal flag_write_flop_n_0 : STD_LOGIC;
  signal high_shift_in_lut_n_0 : STD_LOGIC;
  signal high_zero_lut_n_0 : STD_LOGIC;
  signal input_fetch_type_lut_n_0 : STD_LOGIC;
  signal int_flop_n_0 : STD_LOGIC;
  signal int_pulse_lut_n_0 : STD_LOGIC;
  signal int_value_lut_n_0 : STD_LOGIC;
  signal io_decode_lut_n_0 : STD_LOGIC;
  signal \logical_loop[0].logical_lut_n_0\ : STD_LOGIC;
  signal \logical_loop[1].logical_lut_n_0\ : STD_LOGIC;
  signal \logical_loop[2].logical_lut_n_0\ : STD_LOGIC;
  signal \logical_loop[3].logical_lut_n_0\ : STD_LOGIC;
  signal \logical_loop[4].logical_lut_n_0\ : STD_LOGIC;
  signal \logical_loop[5].logical_lut_n_0\ : STD_LOGIC;
  signal \logical_loop[6].logical_lut_n_0\ : STD_LOGIC;
  signal \logical_loop[7].logical_lut_n_0\ : STD_LOGIC;
  signal low_parity_lut_n_0 : STD_LOGIC;
  signal low_shift_in_lut_n_0 : STD_LOGIC;
  signal low_zero_lut_n_0 : STD_LOGIC;
  signal memory_enable_lut_n_0 : STD_LOGIC;
  signal memory_type_lut_n_0 : STD_LOGIC;
  signal memory_write_flop_n_0 : STD_LOGIC;
  signal move_group_lut_n_0 : STD_LOGIC;
  signal parity_xor_n_0 : STD_LOGIC;
  signal \pc_loop[0].pc_lsb_carry.pc_value_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[0].pc_lsb_carry.pc_value_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[0].pc_lsb_carry.pc_vector_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[0].pc_lsb_carry.pc_vector_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[0].register_bit_i_1_n_0\ : STD_LOGIC;
  signal \pc_loop[0].value_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[0].vector_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[1].pc_mid_carry.pc_value_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[1].pc_mid_carry.pc_value_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[1].pc_mid_carry.pc_vector_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[1].pc_mid_carry.pc_vector_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[1].register_bit_i_1_n_0\ : STD_LOGIC;
  signal \pc_loop[1].value_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[1].vector_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[2].pc_mid_carry.pc_value_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[2].pc_mid_carry.pc_value_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[2].pc_mid_carry.pc_vector_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[2].pc_mid_carry.pc_vector_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[2].register_bit_i_1_n_0\ : STD_LOGIC;
  signal \pc_loop[2].value_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[2].vector_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[3].pc_mid_carry.pc_value_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[3].pc_mid_carry.pc_value_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[3].pc_mid_carry.pc_vector_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[3].pc_mid_carry.pc_vector_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[3].register_bit_i_1_n_0\ : STD_LOGIC;
  signal \pc_loop[3].value_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[3].vector_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[4].pc_mid_carry.pc_value_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[4].pc_mid_carry.pc_value_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[4].pc_mid_carry.pc_vector_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[4].pc_mid_carry.pc_vector_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[4].register_bit_i_1_n_0\ : STD_LOGIC;
  signal \pc_loop[4].value_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[4].vector_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[5].pc_mid_carry.pc_value_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[5].pc_mid_carry.pc_value_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[5].pc_mid_carry.pc_vector_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[5].pc_mid_carry.pc_vector_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[5].register_bit_i_1_n_0\ : STD_LOGIC;
  signal \pc_loop[5].value_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[5].vector_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[6].pc_mid_carry.pc_value_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[6].pc_mid_carry.pc_value_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[6].pc_mid_carry.pc_vector_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[6].pc_mid_carry.pc_vector_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[6].register_bit_i_1_n_0\ : STD_LOGIC;
  signal \pc_loop[6].value_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[6].vector_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[7].pc_mid_carry.pc_value_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[7].pc_mid_carry.pc_value_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[7].pc_mid_carry.pc_vector_muxcy_n_0\ : STD_LOGIC;
  signal \pc_loop[7].pc_mid_carry.pc_vector_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[7].register_bit_i_1_n_0\ : STD_LOGIC;
  signal \pc_loop[7].value_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[7].vector_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[8].pc_mid_carry.pc_value_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[8].pc_mid_carry.pc_vector_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[8].register_bit_i_1_n_0\ : STD_LOGIC;
  signal \pc_loop[8].value_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[8].vector_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[9].pc_msb_carry.pc_value_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[9].pc_msb_carry.pc_vector_xor_n_0\ : STD_LOGIC;
  signal \pc_loop[9].register_bit_i_1_n_0\ : STD_LOGIC;
  signal \pc_loop[9].value_select_mux_n_0\ : STD_LOGIC;
  signal \pc_loop[9].vector_select_mux_n_0\ : STD_LOGIC;
  signal pipeline_bit_n_0 : STD_LOGIC;
  signal port_id : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal push_pop_lut_n_0 : STD_LOGIC;
  signal \^q_interna_reg\ : STD_LOGIC;
  signal \^q_interna_reg[0]\ : STD_LOGIC;
  signal \^q_interna_reg[1]\ : STD_LOGIC;
  signal \^q_interna_reg[2]\ : STD_LOGIC;
  signal \^q_interna_reg[3]\ : STD_LOGIC;
  signal \^q_interna_reg[3]_0\ : STD_LOGIC;
  signal \^q_interna_reg[4]\ : STD_LOGIC;
  signal \^q_interna_reg[5]\ : STD_LOGIC;
  signal \^q_interna_reg[6]\ : STD_LOGIC;
  signal \^q_interna_reg[7]\ : STD_LOGIC;
  signal \reg_loop[0].register_bit_n_0\ : STD_LOGIC;
  signal \reg_loop[1].register_bit_n_0\ : STD_LOGIC;
  signal \reg_loop[2].register_bit_n_0\ : STD_LOGIC;
  signal \reg_loop[3].register_bit_n_0\ : STD_LOGIC;
  signal \reg_loop[4].register_bit_n_0\ : STD_LOGIC;
  signal \reg_loop[5].register_bit_n_0\ : STD_LOGIC;
  signal \reg_loop[6].register_bit_n_0\ : STD_LOGIC;
  signal \reg_loop[7].register_bit_n_0\ : STD_LOGIC;
  signal register_type_lut_n_0 : STD_LOGIC;
  signal register_write_flop_n_0 : STD_LOGIC;
  signal reset_flop1_n_0 : STD_LOGIC;
  signal reset_flop2_n_0 : STD_LOGIC;
  signal sel_arith_carry_lut_n_0 : STD_LOGIC;
  signal sel_arith_lut_n_0 : STD_LOGIC;
  signal sel_group_flop_n_0 : STD_LOGIC;
  signal sel_parity_lut_n_0 : STD_LOGIC;
  signal sel_parity_muxcy_n_0 : STD_LOGIC;
  signal sel_shadow_carry_lut_n_0 : STD_LOGIC;
  signal sel_shadow_zero_lut_n_0 : STD_LOGIC;
  signal sel_shift_carry_lut_n_0 : STD_LOGIC;
  signal shadow_zero_flop_n_0 : STD_LOGIC;
  signal shift_carry_lut_n_0 : STD_LOGIC;
  signal shift_in_muxf5_n_0 : STD_LOGIC;
  signal \shift_loop[0].lsb_shift.shift_mux_lut_n_0\ : STD_LOGIC;
  signal \shift_loop[0].shift_flop_n_0\ : STD_LOGIC;
  signal \shift_loop[1].mid_shift.shift_mux_lut_n_0\ : STD_LOGIC;
  signal \shift_loop[1].shift_flop_n_0\ : STD_LOGIC;
  signal \shift_loop[2].mid_shift.shift_mux_lut_n_0\ : STD_LOGIC;
  signal \shift_loop[2].shift_flop_n_0\ : STD_LOGIC;
  signal \shift_loop[3].mid_shift.shift_mux_lut_n_0\ : STD_LOGIC;
  signal \shift_loop[3].shift_flop_n_0\ : STD_LOGIC;
  signal \shift_loop[4].mid_shift.shift_mux_lut_n_0\ : STD_LOGIC;
  signal \shift_loop[4].shift_flop_n_0\ : STD_LOGIC;
  signal \shift_loop[5].mid_shift.shift_mux_lut_n_0\ : STD_LOGIC;
  signal \shift_loop[5].shift_flop_n_0\ : STD_LOGIC;
  signal \shift_loop[6].mid_shift.shift_mux_lut_n_0\ : STD_LOGIC;
  signal \shift_loop[6].shift_flop_n_0\ : STD_LOGIC;
  signal \shift_loop[7].msb_shift.shift_mux_lut_n_0\ : STD_LOGIC;
  signal \shift_loop[7].shift_flop_n_0\ : STD_LOGIC;
  signal \stack_count_loop[0].lsb_stack_count.count_lut_n_0\ : STD_LOGIC;
  signal \stack_count_loop[0].lsb_stack_count.count_muxcy_n_0\ : STD_LOGIC;
  signal \stack_count_loop[0].lsb_stack_count.count_xor_n_0\ : STD_LOGIC;
  signal \stack_count_loop[0].register_bit_i_1_n_0\ : STD_LOGIC;
  signal \stack_count_loop[0].register_bit_n_0\ : STD_LOGIC;
  signal \stack_count_loop[1].mid_stack_count.count_lut_n_0\ : STD_LOGIC;
  signal \stack_count_loop[1].mid_stack_count.count_muxcy_n_0\ : STD_LOGIC;
  signal \stack_count_loop[1].mid_stack_count.count_xor_n_0\ : STD_LOGIC;
  signal \stack_count_loop[1].register_bit_n_0\ : STD_LOGIC;
  signal \stack_count_loop[2].mid_stack_count.count_lut_n_0\ : STD_LOGIC;
  signal \stack_count_loop[2].mid_stack_count.count_muxcy_n_0\ : STD_LOGIC;
  signal \stack_count_loop[2].mid_stack_count.count_xor_n_0\ : STD_LOGIC;
  signal \stack_count_loop[2].register_bit_n_0\ : STD_LOGIC;
  signal \stack_count_loop[3].mid_stack_count.count_lut_n_0\ : STD_LOGIC;
  signal \stack_count_loop[3].mid_stack_count.count_muxcy_n_0\ : STD_LOGIC;
  signal \stack_count_loop[3].mid_stack_count.count_xor_n_0\ : STD_LOGIC;
  signal \stack_count_loop[3].register_bit_n_0\ : STD_LOGIC;
  signal \stack_count_loop[4].msb_stack_count.count_lut_n_0\ : STD_LOGIC;
  signal \stack_count_loop[4].msb_stack_count.count_xor_n_0\ : STD_LOGIC;
  signal \stack_count_loop[4].register_bit_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[0].stack_bit_i_1_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[0].stack_bit_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[0].stack_flop_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[1].stack_bit_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[1].stack_flop_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[2].stack_bit_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[2].stack_flop_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[3].stack_bit_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[3].stack_flop_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[4].stack_bit_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[4].stack_flop_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[5].stack_bit_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[5].stack_flop_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[6].stack_bit_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[6].stack_flop_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[7].stack_bit_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[7].stack_flop_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[8].stack_bit_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[8].stack_flop_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[9].stack_bit_n_0\ : STD_LOGIC;
  signal \stack_ram_loop[9].stack_flop_n_0\ : STD_LOGIC;
  signal \store_loop[0].memory_bit_n_0\ : STD_LOGIC;
  signal \^store_loop[0].store_flop_0\ : STD_LOGIC;
  signal \^store_loop[0].store_flop_1\ : STD_LOGIC;
  signal \^store_loop[0].store_flop_2\ : STD_LOGIC;
  signal \^store_loop[0].store_flop_3\ : STD_LOGIC;
  signal \store_loop[0].store_flop_n_0\ : STD_LOGIC;
  signal \store_loop[1].memory_bit_n_0\ : STD_LOGIC;
  signal \store_loop[1].store_flop_n_0\ : STD_LOGIC;
  signal \store_loop[2].memory_bit_n_0\ : STD_LOGIC;
  signal \store_loop[2].store_flop_n_0\ : STD_LOGIC;
  signal \store_loop[3].memory_bit_n_0\ : STD_LOGIC;
  signal \store_loop[3].store_flop_n_0\ : STD_LOGIC;
  signal \store_loop[4].memory_bit_n_0\ : STD_LOGIC;
  signal \store_loop[4].store_flop_n_0\ : STD_LOGIC;
  signal \store_loop[5].memory_bit_n_0\ : STD_LOGIC;
  signal \store_loop[5].store_flop_n_0\ : STD_LOGIC;
  signal \store_loop[6].memory_bit_n_0\ : STD_LOGIC;
  signal \store_loop[6].store_flop_n_0\ : STD_LOGIC;
  signal \store_loop[7].memory_bit_n_0\ : STD_LOGIC;
  signal \store_loop[7].store_flop_n_0\ : STD_LOGIC;
  signal valid_move_lut_n_0 : STD_LOGIC;
  signal write_active_lut_n_0 : STD_LOGIC;
  signal zero_flag_flop_n_0 : STD_LOGIC;
  signal zero_xor_n_0 : STD_LOGIC;
  signal \NLW_arith_loop[0].lsb_arith.arith_carry_in_muxcy_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_arith_loop[7].msb_arith.arith_muxcy_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_arith_loop[7].msb_arith.arith_muxcy_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_arith_loop[7].msb_arith.arith_muxcy_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_arith_loop[7].msb_arith.arith_muxcy_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_carry_xor_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_carry_xor_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_carry_xor_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_carry_xor_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_low_zero_muxcy_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_low_zero_muxcy_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_low_zero_muxcy_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_parity_muxcy_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_parity_muxcy_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_parity_muxcy_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_parity_muxcy_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pc_loop[8].pc_mid_carry.pc_value_muxcy_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pc_loop[8].pc_mid_carry.pc_value_muxcy_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pc_loop[8].pc_mid_carry.pc_value_muxcy_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pc_loop[8].pc_mid_carry.pc_value_muxcy_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pc_loop[8].pc_mid_carry.pc_vector_muxcy_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pc_loop[8].pc_mid_carry.pc_vector_muxcy_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pc_loop[8].pc_mid_carry.pc_vector_muxcy_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pc_loop[8].pc_mid_carry.pc_vector_muxcy_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_sel_shadow_muxcy_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_sel_shadow_muxcy_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_stack_count_loop[4].msb_stack_count.count_xor_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_stack_count_loop[4].msb_stack_count.count_xor_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_stack_count_loop[4].msb_stack_count.count_xor_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_stack_count_loop[4].msb_stack_count.count_xor_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ack_flop : label is "FD";
  attribute box_type : string;
  attribute box_type of ack_flop : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[0].mux_lut\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[0].or_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \alu_mux_loop[0].shift_in_muxf5\ : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \alu_mux_loop[0].shift_in_muxf5\ : label is "S:I2";
  attribute box_type of \alu_mux_loop[0].shift_in_muxf5\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[1].mux_lut\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[1].or_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \alu_mux_loop[1].shift_in_muxf5\ : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP of \alu_mux_loop[1].shift_in_muxf5\ : label is "S:I2";
  attribute box_type of \alu_mux_loop[1].shift_in_muxf5\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[2].mux_lut\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[2].or_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \alu_mux_loop[2].shift_in_muxf5\ : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP of \alu_mux_loop[2].shift_in_muxf5\ : label is "S:I2";
  attribute box_type of \alu_mux_loop[2].shift_in_muxf5\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[3].mux_lut\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[3].or_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \alu_mux_loop[3].shift_in_muxf5\ : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP of \alu_mux_loop[3].shift_in_muxf5\ : label is "S:I2";
  attribute box_type of \alu_mux_loop[3].shift_in_muxf5\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[4].mux_lut\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[4].or_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \alu_mux_loop[4].shift_in_muxf5\ : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP of \alu_mux_loop[4].shift_in_muxf5\ : label is "S:I2";
  attribute box_type of \alu_mux_loop[4].shift_in_muxf5\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[5].mux_lut\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[5].or_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \alu_mux_loop[5].shift_in_muxf5\ : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP of \alu_mux_loop[5].shift_in_muxf5\ : label is "S:I2";
  attribute box_type of \alu_mux_loop[5].shift_in_muxf5\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[6].mux_lut\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[6].or_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \alu_mux_loop[6].shift_in_muxf5\ : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP of \alu_mux_loop[6].shift_in_muxf5\ : label is "S:I2";
  attribute box_type of \alu_mux_loop[6].shift_in_muxf5\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[7].mux_lut\ : label is "PRIMITIVE";
  attribute box_type of \alu_mux_loop[7].or_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \alu_mux_loop[7].shift_in_muxf5\ : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP of \alu_mux_loop[7].shift_in_muxf5\ : label is "S:I2";
  attribute box_type of \alu_mux_loop[7].shift_in_muxf5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[0].arith_flop\ : label is "FDR";
  attribute box_type of \arith_loop[0].arith_flop\ : label is "PRIMITIVE";
  attribute box_type of \arith_loop[0].arith_lut\ : label is "PRIMITIVE";
  attribute box_type of \arith_loop[0].lsb_arith.arith_carry_in_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[0].lsb_arith.arith_carry_in_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \arith_loop[0].lsb_arith.arith_carry_in_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[1].arith_flop\ : label is "FDR";
  attribute box_type of \arith_loop[1].arith_flop\ : label is "PRIMITIVE";
  attribute box_type of \arith_loop[1].arith_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[2].arith_flop\ : label is "FDR";
  attribute box_type of \arith_loop[2].arith_flop\ : label is "PRIMITIVE";
  attribute box_type of \arith_loop[2].arith_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[3].arith_flop\ : label is "FDR";
  attribute box_type of \arith_loop[3].arith_flop\ : label is "PRIMITIVE";
  attribute box_type of \arith_loop[3].arith_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[3].mid_arith.arith_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \arith_loop[3].mid_arith.arith_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[4].arith_flop\ : label is "FDR";
  attribute box_type of \arith_loop[4].arith_flop\ : label is "PRIMITIVE";
  attribute box_type of \arith_loop[4].arith_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[5].arith_flop\ : label is "FDR";
  attribute box_type of \arith_loop[5].arith_flop\ : label is "PRIMITIVE";
  attribute box_type of \arith_loop[5].arith_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[6].arith_flop\ : label is "FDR";
  attribute box_type of \arith_loop[6].arith_flop\ : label is "PRIMITIVE";
  attribute box_type of \arith_loop[6].arith_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[7].arith_flop\ : label is "FDR";
  attribute box_type of \arith_loop[7].arith_flop\ : label is "PRIMITIVE";
  attribute box_type of \arith_loop[7].arith_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[7].msb_arith.arith_carry_flop\ : label is "FDR";
  attribute box_type of \arith_loop[7].msb_arith.arith_carry_flop\ : label is "PRIMITIVE";
  attribute box_type of \arith_loop[7].msb_arith.arith_carry_out_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \arith_loop[7].msb_arith.arith_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \arith_loop[7].msb_arith.arith_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of call_type_lut : label is "PRIMITIVE";
  attribute box_type of carry_flag_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of carry_xor_CARRY4 : label is "(MUXCY,XORCY)";
  attribute box_type of carry_xor_CARRY4 : label is "PRIMITIVE";
  attribute box_type of condition_met_lut : label is "PRIMITIVE";
  attribute box_type of flag_enable_lut : label is "PRIMITIVE";
  attribute box_type of flag_type_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of flag_write_flop : label is "FD";
  attribute box_type of flag_write_flop : label is "PRIMITIVE";
  attribute box_type of high_parity_lut : label is "PRIMITIVE";
  attribute box_type of high_shift_in_lut : label is "PRIMITIVE";
  attribute box_type of high_zero_lut : label is "PRIMITIVE";
  attribute box_type of input_fetch_type_lut : label is "PRIMITIVE";
  attribute box_type of int_enable_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of int_flop : label is "FDR";
  attribute box_type of int_flop : label is "PRIMITIVE";
  attribute box_type of int_pulse_lut : label is "PRIMITIVE";
  attribute box_type of int_update_lut : label is "PRIMITIVE";
  attribute box_type of int_value_lut : label is "PRIMITIVE";
  attribute box_type of io_decode_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \logical_loop[0].logical_flop\ : label is "FDR";
  attribute box_type of \logical_loop[0].logical_flop\ : label is "PRIMITIVE";
  attribute box_type of \logical_loop[0].logical_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \logical_loop[1].logical_flop\ : label is "FDR";
  attribute box_type of \logical_loop[1].logical_flop\ : label is "PRIMITIVE";
  attribute box_type of \logical_loop[1].logical_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \logical_loop[2].logical_flop\ : label is "FDR";
  attribute box_type of \logical_loop[2].logical_flop\ : label is "PRIMITIVE";
  attribute box_type of \logical_loop[2].logical_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \logical_loop[3].logical_flop\ : label is "FDR";
  attribute box_type of \logical_loop[3].logical_flop\ : label is "PRIMITIVE";
  attribute box_type of \logical_loop[3].logical_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \logical_loop[4].logical_flop\ : label is "FDR";
  attribute box_type of \logical_loop[4].logical_flop\ : label is "PRIMITIVE";
  attribute box_type of \logical_loop[4].logical_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \logical_loop[5].logical_flop\ : label is "FDR";
  attribute box_type of \logical_loop[5].logical_flop\ : label is "PRIMITIVE";
  attribute box_type of \logical_loop[5].logical_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \logical_loop[6].logical_flop\ : label is "FDR";
  attribute box_type of \logical_loop[6].logical_flop\ : label is "PRIMITIVE";
  attribute box_type of \logical_loop[6].logical_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \logical_loop[7].logical_flop\ : label is "FDR";
  attribute box_type of \logical_loop[7].logical_flop\ : label is "PRIMITIVE";
  attribute box_type of \logical_loop[7].logical_lut\ : label is "PRIMITIVE";
  attribute box_type of low_parity_lut : label is "PRIMITIVE";
  attribute box_type of low_shift_in_lut : label is "PRIMITIVE";
  attribute box_type of low_zero_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of low_zero_muxcy_CARRY4 : label is "(MUXCY,XORCY)";
  attribute box_type of low_zero_muxcy_CARRY4 : label is "PRIMITIVE";
  attribute box_type of memory_enable_lut : label is "PRIMITIVE";
  attribute box_type of memory_type_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of memory_write_flop : label is "FD";
  attribute box_type of memory_write_flop : label is "PRIMITIVE";
  attribute box_type of move_group_lut : label is "PRIMITIVE";
  attribute box_type of normal_count_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of parity_muxcy_CARRY4 : label is "(MUXCY,XORCY)";
  attribute box_type of parity_muxcy_CARRY4 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \pc_loop[0].pc_lsb_carry.pc_value_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \pc_loop[0].pc_lsb_carry.pc_value_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \pc_loop[0].pc_lsb_carry.pc_vector_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \pc_loop[0].pc_lsb_carry.pc_vector_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of \pc_loop[0].register_bit\ : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of \pc_loop[0].register_bit\ : label is "1'b0";
  attribute box_type of \pc_loop[0].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[0].value_select_mux\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[0].vector_select_mux\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \pc_loop[1].register_bit\ : label is "1'b0";
  attribute IS_S_INVERTED of \pc_loop[1].register_bit\ : label is "1'b0";
  attribute box_type of \pc_loop[1].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[1].value_select_mux\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[1].vector_select_mux\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \pc_loop[2].register_bit\ : label is "1'b0";
  attribute IS_S_INVERTED of \pc_loop[2].register_bit\ : label is "1'b0";
  attribute box_type of \pc_loop[2].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[2].value_select_mux\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[2].vector_select_mux\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \pc_loop[3].register_bit\ : label is "1'b0";
  attribute IS_S_INVERTED of \pc_loop[3].register_bit\ : label is "1'b0";
  attribute box_type of \pc_loop[3].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[3].value_select_mux\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[3].vector_select_mux\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \pc_loop[4].pc_mid_carry.pc_value_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \pc_loop[4].pc_mid_carry.pc_value_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \pc_loop[4].pc_mid_carry.pc_vector_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \pc_loop[4].pc_mid_carry.pc_vector_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \pc_loop[4].register_bit\ : label is "1'b0";
  attribute IS_S_INVERTED of \pc_loop[4].register_bit\ : label is "1'b0";
  attribute box_type of \pc_loop[4].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[4].value_select_mux\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[4].vector_select_mux\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \pc_loop[5].register_bit\ : label is "1'b0";
  attribute IS_S_INVERTED of \pc_loop[5].register_bit\ : label is "1'b0";
  attribute box_type of \pc_loop[5].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[5].value_select_mux\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[5].vector_select_mux\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \pc_loop[6].register_bit\ : label is "1'b0";
  attribute IS_S_INVERTED of \pc_loop[6].register_bit\ : label is "1'b0";
  attribute box_type of \pc_loop[6].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[6].value_select_mux\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[6].vector_select_mux\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \pc_loop[7].register_bit\ : label is "1'b0";
  attribute IS_S_INVERTED of \pc_loop[7].register_bit\ : label is "1'b0";
  attribute box_type of \pc_loop[7].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[7].value_select_mux\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[7].vector_select_mux\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \pc_loop[8].pc_mid_carry.pc_value_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \pc_loop[8].pc_mid_carry.pc_value_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \pc_loop[8].pc_mid_carry.pc_vector_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \pc_loop[8].pc_mid_carry.pc_vector_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \pc_loop[8].register_bit\ : label is "1'b0";
  attribute IS_S_INVERTED of \pc_loop[8].register_bit\ : label is "1'b0";
  attribute box_type of \pc_loop[8].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[8].value_select_mux\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[8].vector_select_mux\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \pc_loop[9].register_bit\ : label is "1'b0";
  attribute IS_S_INVERTED of \pc_loop[9].register_bit\ : label is "1'b0";
  attribute box_type of \pc_loop[9].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[9].value_select_mux\ : label is "PRIMITIVE";
  attribute box_type of \pc_loop[9].vector_select_mux\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of pipeline_bit : label is "FD";
  attribute box_type of pipeline_bit : label is "PRIMITIVE";
  attribute box_type of push_pop_lut : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_interna[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_interna[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_interna[7]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_interna[7]_i_1__1\ : label is "soft_lutpair5";
  attribute box_type of \reg_loop[0].operand_select_mux\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \reg_loop[0].register_bit\ : label is "RAM16X1D";
  attribute box_type of \reg_loop[0].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \reg_loop[1].operand_select_mux\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \reg_loop[1].register_bit\ : label is "RAM16X1D";
  attribute box_type of \reg_loop[1].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \reg_loop[2].operand_select_mux\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \reg_loop[2].register_bit\ : label is "RAM16X1D";
  attribute box_type of \reg_loop[2].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \reg_loop[3].operand_select_mux\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \reg_loop[3].register_bit\ : label is "RAM16X1D";
  attribute box_type of \reg_loop[3].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \reg_loop[4].operand_select_mux\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \reg_loop[4].register_bit\ : label is "RAM16X1D";
  attribute box_type of \reg_loop[4].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \reg_loop[5].operand_select_mux\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \reg_loop[5].register_bit\ : label is "RAM16X1D";
  attribute box_type of \reg_loop[5].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \reg_loop[6].operand_select_mux\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \reg_loop[6].register_bit\ : label is "RAM16X1D";
  attribute box_type of \reg_loop[6].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \reg_loop[7].operand_select_mux\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \reg_loop[7].register_bit\ : label is "RAM16X1D";
  attribute box_type of \reg_loop[7].register_bit\ : label is "PRIMITIVE";
  attribute box_type of register_enable_lut : label is "PRIMITIVE";
  attribute box_type of register_type_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of register_write_flop : label is "FD";
  attribute box_type of register_write_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of reset_flop1 : label is "FDS";
  attribute box_type of reset_flop1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of reset_flop2 : label is "FDS";
  attribute box_type of reset_flop2 : label is "PRIMITIVE";
  attribute box_type of sel_arith_carry_lut : label is "PRIMITIVE";
  attribute box_type of sel_arith_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sel_group_flop : label is "FD";
  attribute box_type of sel_group_flop : label is "PRIMITIVE";
  attribute box_type of sel_logical_lut : label is "PRIMITIVE";
  attribute box_type of sel_parity_lut : label is "PRIMITIVE";
  attribute box_type of sel_shadow_carry_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of sel_shadow_muxcy_CARRY4 : label is "(MUXCY,XORCY)";
  attribute box_type of sel_shadow_muxcy_CARRY4 : label is "PRIMITIVE";
  attribute box_type of sel_shadow_zero_lut : label is "PRIMITIVE";
  attribute box_type of sel_shift_carry_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of shadow_carry_flop : label is "FDE";
  attribute box_type of shadow_carry_flop : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of shadow_zero_flop : label is "FDE";
  attribute box_type of shadow_zero_flop : label is "PRIMITIVE";
  attribute box_type of shift_carry_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of shift_in_muxf5 : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP of shift_in_muxf5 : label is "S:I2";
  attribute box_type of shift_in_muxf5 : label is "PRIMITIVE";
  attribute box_type of \shift_loop[0].lsb_shift.shift_mux_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \shift_loop[0].shift_flop\ : label is "FDR";
  attribute box_type of \shift_loop[0].shift_flop\ : label is "PRIMITIVE";
  attribute box_type of \shift_loop[1].mid_shift.shift_mux_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \shift_loop[1].shift_flop\ : label is "FDR";
  attribute box_type of \shift_loop[1].shift_flop\ : label is "PRIMITIVE";
  attribute box_type of \shift_loop[2].mid_shift.shift_mux_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \shift_loop[2].shift_flop\ : label is "FDR";
  attribute box_type of \shift_loop[2].shift_flop\ : label is "PRIMITIVE";
  attribute box_type of \shift_loop[3].mid_shift.shift_mux_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \shift_loop[3].shift_flop\ : label is "FDR";
  attribute box_type of \shift_loop[3].shift_flop\ : label is "PRIMITIVE";
  attribute box_type of \shift_loop[4].mid_shift.shift_mux_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \shift_loop[4].shift_flop\ : label is "FDR";
  attribute box_type of \shift_loop[4].shift_flop\ : label is "PRIMITIVE";
  attribute box_type of \shift_loop[5].mid_shift.shift_mux_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \shift_loop[5].shift_flop\ : label is "FDR";
  attribute box_type of \shift_loop[5].shift_flop\ : label is "PRIMITIVE";
  attribute box_type of \shift_loop[6].mid_shift.shift_mux_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \shift_loop[6].shift_flop\ : label is "FDR";
  attribute box_type of \shift_loop[6].shift_flop\ : label is "PRIMITIVE";
  attribute box_type of \shift_loop[7].msb_shift.shift_mux_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \shift_loop[7].shift_flop\ : label is "FDR";
  attribute box_type of \shift_loop[7].shift_flop\ : label is "PRIMITIVE";
  attribute box_type of \stack_count_loop[0].lsb_stack_count.count_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_count_loop[0].lsb_stack_count.count_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \stack_count_loop[0].lsb_stack_count.count_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \stack_count_loop[0].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \stack_count_loop[1].mid_stack_count.count_lut\ : label is "PRIMITIVE";
  attribute box_type of \stack_count_loop[1].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \stack_count_loop[2].mid_stack_count.count_lut\ : label is "PRIMITIVE";
  attribute box_type of \stack_count_loop[2].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \stack_count_loop[3].mid_stack_count.count_lut\ : label is "PRIMITIVE";
  attribute box_type of \stack_count_loop[3].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \stack_count_loop[4].msb_stack_count.count_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_count_loop[4].msb_stack_count.count_xor_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \stack_count_loop[4].msb_stack_count.count_xor_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \stack_count_loop[4].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \stack_ram_loop[0].stack_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_ram_loop[0].stack_flop\ : label is "FD";
  attribute box_type of \stack_ram_loop[0].stack_flop\ : label is "PRIMITIVE";
  attribute box_type of \stack_ram_loop[1].stack_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_ram_loop[1].stack_flop\ : label is "FD";
  attribute box_type of \stack_ram_loop[1].stack_flop\ : label is "PRIMITIVE";
  attribute box_type of \stack_ram_loop[2].stack_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_ram_loop[2].stack_flop\ : label is "FD";
  attribute box_type of \stack_ram_loop[2].stack_flop\ : label is "PRIMITIVE";
  attribute box_type of \stack_ram_loop[3].stack_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_ram_loop[3].stack_flop\ : label is "FD";
  attribute box_type of \stack_ram_loop[3].stack_flop\ : label is "PRIMITIVE";
  attribute box_type of \stack_ram_loop[4].stack_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_ram_loop[4].stack_flop\ : label is "FD";
  attribute box_type of \stack_ram_loop[4].stack_flop\ : label is "PRIMITIVE";
  attribute box_type of \stack_ram_loop[5].stack_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_ram_loop[5].stack_flop\ : label is "FD";
  attribute box_type of \stack_ram_loop[5].stack_flop\ : label is "PRIMITIVE";
  attribute box_type of \stack_ram_loop[6].stack_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_ram_loop[6].stack_flop\ : label is "FD";
  attribute box_type of \stack_ram_loop[6].stack_flop\ : label is "PRIMITIVE";
  attribute box_type of \stack_ram_loop[7].stack_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_ram_loop[7].stack_flop\ : label is "FD";
  attribute box_type of \stack_ram_loop[7].stack_flop\ : label is "PRIMITIVE";
  attribute box_type of \stack_ram_loop[8].stack_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_ram_loop[8].stack_flop\ : label is "FD";
  attribute box_type of \stack_ram_loop[8].stack_flop\ : label is "PRIMITIVE";
  attribute box_type of \stack_ram_loop[9].stack_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \stack_ram_loop[9].stack_flop\ : label is "FD";
  attribute box_type of \stack_ram_loop[9].stack_flop\ : label is "PRIMITIVE";
  attribute box_type of \store_loop[0].memory_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \store_loop[0].store_flop\ : label is "FD";
  attribute box_type of \store_loop[0].store_flop\ : label is "PRIMITIVE";
  attribute box_type of \store_loop[1].memory_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \store_loop[1].store_flop\ : label is "FD";
  attribute box_type of \store_loop[1].store_flop\ : label is "PRIMITIVE";
  attribute box_type of \store_loop[2].memory_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \store_loop[2].store_flop\ : label is "FD";
  attribute box_type of \store_loop[2].store_flop\ : label is "PRIMITIVE";
  attribute box_type of \store_loop[3].memory_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \store_loop[3].store_flop\ : label is "FD";
  attribute box_type of \store_loop[3].store_flop\ : label is "PRIMITIVE";
  attribute box_type of \store_loop[4].memory_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \store_loop[4].store_flop\ : label is "FD";
  attribute box_type of \store_loop[4].store_flop\ : label is "PRIMITIVE";
  attribute box_type of \store_loop[5].memory_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \store_loop[5].store_flop\ : label is "FD";
  attribute box_type of \store_loop[5].store_flop\ : label is "PRIMITIVE";
  attribute box_type of \store_loop[6].memory_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \store_loop[6].store_flop\ : label is "FD";
  attribute box_type of \store_loop[6].store_flop\ : label is "PRIMITIVE";
  attribute box_type of \store_loop[7].memory_bit\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \store_loop[7].store_flop\ : label is "FD";
  attribute box_type of \store_loop[7].store_flop\ : label is "PRIMITIVE";
  attribute box_type of t_state_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of toggle_flop : label is "FD";
  attribute box_type of toggle_flop : label is "PRIMITIVE";
  attribute box_type of valid_move_lut : label is "PRIMITIVE";
  attribute box_type of write_active_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of write_strobe_flop : label is "FDR";
  attribute box_type of write_strobe_flop : label is "PRIMITIVE";
  attribute box_type of zero_flag_flop : label is "PRIMITIVE";
begin
  ADDRARDADDR(9 downto 0) <= \^addrardaddr\(9 downto 0);
  q_interna_reg <= \^q_interna_reg\;
  \q_interna_reg[0]\ <= \^q_interna_reg[0]\;
  \q_interna_reg[1]\ <= \^q_interna_reg[1]\;
  \q_interna_reg[2]\ <= \^q_interna_reg[2]\;
  \q_interna_reg[3]\ <= \^q_interna_reg[3]\;
  \q_interna_reg[3]_0\ <= \^q_interna_reg[3]_0\;
  \q_interna_reg[4]\ <= \^q_interna_reg[4]\;
  \q_interna_reg[5]\ <= \^q_interna_reg[5]\;
  \q_interna_reg[6]\ <= \^q_interna_reg[6]\;
  \q_interna_reg[7]\ <= \^q_interna_reg[7]\;
  \store_loop[0].store_flop_0\ <= \^store_loop[0].store_flop_0\;
  \store_loop[0].store_flop_1\ <= \^store_loop[0].store_flop_1\;
  \store_loop[0].store_flop_2\ <= \^store_loop[0].store_flop_2\;
  \store_loop[0].store_flop_3\ <= \^store_loop[0].store_flop_3\;
ack_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => int_flop_n_0,
      Q => ack_flop_n_0,
      R => '0'
    );
\alu_mux_loop[0].mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(13),
      I1 => in_port(0),
      I2 => \store_loop[0].store_flop_n_0\,
      O => \alu_mux_loop[0].mux_lut_n_0\
    );
\alu_mux_loop[0].or_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I034_in,
      I1 => \arith_loop[0].arith_flop_n_0\,
      I2 => \shift_loop[0].shift_flop_n_0\,
      O => \alu_mux_loop[0].or_lut_n_0\
    );
\alu_mux_loop[0].shift_in_muxf5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \alu_mux_loop[0].or_lut_n_0\,
      I1 => \alu_mux_loop[0].mux_lut_n_0\,
      I2 => sel_group_flop_n_0,
      O => D22_in
    );
\alu_mux_loop[1].mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(13),
      I1 => in_port(1),
      I2 => \store_loop[1].store_flop_n_0\,
      O => \alu_mux_loop[1].mux_lut_n_0\
    );
\alu_mux_loop[1].or_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I029_in,
      I1 => \arith_loop[1].arith_flop_n_0\,
      I2 => \shift_loop[1].shift_flop_n_0\,
      O => \alu_mux_loop[1].or_lut_n_0\
    );
\alu_mux_loop[1].shift_in_muxf5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \alu_mux_loop[1].or_lut_n_0\,
      I1 => \alu_mux_loop[1].mux_lut_n_0\,
      I2 => sel_group_flop_n_0,
      O => D18_in
    );
\alu_mux_loop[2].mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(13),
      I1 => in_port(2),
      I2 => \store_loop[2].store_flop_n_0\,
      O => \alu_mux_loop[2].mux_lut_n_0\
    );
\alu_mux_loop[2].or_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I024_in,
      I1 => \arith_loop[2].arith_flop_n_0\,
      I2 => \shift_loop[2].shift_flop_n_0\,
      O => \alu_mux_loop[2].or_lut_n_0\
    );
\alu_mux_loop[2].shift_in_muxf5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \alu_mux_loop[2].or_lut_n_0\,
      I1 => \alu_mux_loop[2].mux_lut_n_0\,
      I2 => sel_group_flop_n_0,
      O => D14_in
    );
\alu_mux_loop[3].mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(13),
      I1 => in_port(3),
      I2 => \store_loop[3].store_flop_n_0\,
      O => \alu_mux_loop[3].mux_lut_n_0\
    );
\alu_mux_loop[3].or_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I019_in,
      I1 => \arith_loop[3].arith_flop_n_0\,
      I2 => \shift_loop[3].shift_flop_n_0\,
      O => \alu_mux_loop[3].or_lut_n_0\
    );
\alu_mux_loop[3].shift_in_muxf5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \alu_mux_loop[3].or_lut_n_0\,
      I1 => \alu_mux_loop[3].mux_lut_n_0\,
      I2 => sel_group_flop_n_0,
      O => D10_in
    );
\alu_mux_loop[4].mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(13),
      I1 => in_port(4),
      I2 => \store_loop[4].store_flop_n_0\,
      O => \alu_mux_loop[4].mux_lut_n_0\
    );
\alu_mux_loop[4].or_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I014_in,
      I1 => \arith_loop[4].arith_flop_n_0\,
      I2 => \shift_loop[4].shift_flop_n_0\,
      O => \alu_mux_loop[4].or_lut_n_0\
    );
\alu_mux_loop[4].shift_in_muxf5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \alu_mux_loop[4].or_lut_n_0\,
      I1 => \alu_mux_loop[4].mux_lut_n_0\,
      I2 => sel_group_flop_n_0,
      O => D6_in
    );
\alu_mux_loop[5].mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(13),
      I1 => in_port(5),
      I2 => \store_loop[5].store_flop_n_0\,
      O => \alu_mux_loop[5].mux_lut_n_0\
    );
\alu_mux_loop[5].or_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I09_in,
      I1 => \arith_loop[5].arith_flop_n_0\,
      I2 => \shift_loop[5].shift_flop_n_0\,
      O => \alu_mux_loop[5].or_lut_n_0\
    );
\alu_mux_loop[5].shift_in_muxf5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \alu_mux_loop[5].or_lut_n_0\,
      I1 => \alu_mux_loop[5].mux_lut_n_0\,
      I2 => sel_group_flop_n_0,
      O => D4_in
    );
\alu_mux_loop[6].mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(13),
      I1 => in_port(6),
      I2 => \store_loop[6].store_flop_n_0\,
      O => \alu_mux_loop[6].mux_lut_n_0\
    );
\alu_mux_loop[6].or_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I04_in,
      I1 => \arith_loop[6].arith_flop_n_0\,
      I2 => \shift_loop[6].shift_flop_n_0\,
      O => \alu_mux_loop[6].or_lut_n_0\
    );
\alu_mux_loop[6].shift_in_muxf5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \alu_mux_loop[6].or_lut_n_0\,
      I1 => \alu_mux_loop[6].mux_lut_n_0\,
      I2 => sel_group_flop_n_0,
      O => D2_in
    );
\alu_mux_loop[7].mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(13),
      I1 => in_port(7),
      I2 => \store_loop[7].store_flop_n_0\,
      O => \alu_mux_loop[7].mux_lut_n_0\
    );
\alu_mux_loop[7].or_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I00_in,
      I1 => \arith_loop[7].arith_flop_n_0\,
      I2 => \shift_loop[7].shift_flop_n_0\,
      O => \alu_mux_loop[7].or_lut_n_0\
    );
\alu_mux_loop[7].shift_in_muxf5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \alu_mux_loop[7].or_lut_n_0\,
      I1 => \alu_mux_loop[7].mux_lut_n_0\,
      I2 => sel_group_flop_n_0,
      O => \alu_mux_loop[7].shift_in_muxf5_n_0\
    );
\arith_loop[0].arith_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \arith_loop[0].lsb_arith.arith_xor_n_0\,
      Q => \arith_loop[0].arith_flop_n_0\,
      R => sel_arith_lut_n_0
    );
\arith_loop[0].arith_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_interna_reg[0]\,
      I1 => \^store_loop[0].store_flop_0\,
      I2 => instruction(14),
      O => \arith_loop[0].arith_lut_n_0\
    );
\arith_loop[0].lsb_arith.arith_carry_in_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => carry_flag_flop_n_0,
      O => \arith_loop[0].lsb_arith.arith_carry_in_lut_n_0\
    );
\arith_loop[0].lsb_arith.arith_carry_in_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \arith_loop[2].mid_arith.arith_muxcy_n_0\,
      CO(2) => \arith_loop[1].mid_arith.arith_muxcy_n_0\,
      CO(1) => \arith_loop[0].lsb_arith.arith_muxcy_n_0\,
      CO(0) => \arith_loop[0].lsb_arith.arith_carry_in_muxcy_n_0\,
      CYINIT => '1',
      DI(3) => \^q_interna_reg[2]\,
      DI(2) => \^q_interna_reg[1]\,
      DI(1) => \^q_interna_reg[0]\,
      DI(0) => '0',
      O(3) => \arith_loop[2].mid_arith.arith_xor_n_0\,
      O(2) => \arith_loop[1].mid_arith.arith_xor_n_0\,
      O(1) => \arith_loop[0].lsb_arith.arith_xor_n_0\,
      O(0) => \NLW_arith_loop[0].lsb_arith.arith_carry_in_muxcy_CARRY4_O_UNCONNECTED\(0),
      S(3) => \arith_loop[2].arith_lut_n_0\,
      S(2) => \arith_loop[1].arith_lut_n_0\,
      S(1) => \arith_loop[0].arith_lut_n_0\,
      S(0) => \arith_loop[0].lsb_arith.arith_carry_in_lut_n_0\
    );
\arith_loop[1].arith_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \arith_loop[1].mid_arith.arith_xor_n_0\,
      Q => \arith_loop[1].arith_flop_n_0\,
      R => sel_arith_lut_n_0
    );
\arith_loop[1].arith_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_interna_reg[1]\,
      I1 => \^store_loop[0].store_flop_1\,
      I2 => instruction(14),
      O => \arith_loop[1].arith_lut_n_0\
    );
\arith_loop[2].arith_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \arith_loop[2].mid_arith.arith_xor_n_0\,
      Q => \arith_loop[2].arith_flop_n_0\,
      R => sel_arith_lut_n_0
    );
\arith_loop[2].arith_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_interna_reg[2]\,
      I1 => \^store_loop[0].store_flop_2\,
      I2 => instruction(14),
      O => \arith_loop[2].arith_lut_n_0\
    );
\arith_loop[3].arith_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \arith_loop[3].mid_arith.arith_xor_n_0\,
      Q => \arith_loop[3].arith_flop_n_0\,
      R => sel_arith_lut_n_0
    );
\arith_loop[3].arith_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_interna_reg[3]_0\,
      I1 => \^store_loop[0].store_flop_3\,
      I2 => instruction(14),
      O => \arith_loop[3].arith_lut_n_0\
    );
\arith_loop[3].mid_arith.arith_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \arith_loop[2].mid_arith.arith_muxcy_n_0\,
      CO(3) => \arith_loop[6].mid_arith.arith_muxcy_n_0\,
      CO(2) => \arith_loop[5].mid_arith.arith_muxcy_n_0\,
      CO(1) => \arith_loop[4].mid_arith.arith_muxcy_n_0\,
      CO(0) => \arith_loop[3].mid_arith.arith_muxcy_n_0\,
      CYINIT => '0',
      DI(3) => \^q_interna_reg[6]\,
      DI(2) => \^q_interna_reg[5]\,
      DI(1) => \^q_interna_reg[4]\,
      DI(0) => \^q_interna_reg[3]_0\,
      O(3) => \arith_loop[6].mid_arith.arith_xor_n_0\,
      O(2) => \arith_loop[5].mid_arith.arith_xor_n_0\,
      O(1) => \arith_loop[4].mid_arith.arith_xor_n_0\,
      O(0) => \arith_loop[3].mid_arith.arith_xor_n_0\,
      S(3) => \arith_loop[6].arith_lut_n_0\,
      S(2) => \arith_loop[5].arith_lut_n_0\,
      S(1) => \arith_loop[4].arith_lut_n_0\,
      S(0) => \arith_loop[3].arith_lut_n_0\
    );
\arith_loop[4].arith_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \arith_loop[4].mid_arith.arith_xor_n_0\,
      Q => \arith_loop[4].arith_flop_n_0\,
      R => sel_arith_lut_n_0
    );
\arith_loop[4].arith_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_interna_reg[4]\,
      I1 => port_id(4),
      I2 => instruction(14),
      O => \arith_loop[4].arith_lut_n_0\
    );
\arith_loop[5].arith_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \arith_loop[5].mid_arith.arith_xor_n_0\,
      Q => \arith_loop[5].arith_flop_n_0\,
      R => sel_arith_lut_n_0
    );
\arith_loop[5].arith_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_interna_reg[5]\,
      I1 => port_id(5),
      I2 => instruction(14),
      O => \arith_loop[5].arith_lut_n_0\
    );
\arith_loop[6].arith_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \arith_loop[6].mid_arith.arith_xor_n_0\,
      Q => \arith_loop[6].arith_flop_n_0\,
      R => sel_arith_lut_n_0
    );
\arith_loop[6].arith_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_interna_reg[6]\,
      I1 => port_id(6),
      I2 => instruction(14),
      O => \arith_loop[6].arith_lut_n_0\
    );
\arith_loop[7].arith_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \arith_loop[7].msb_arith.arith_xor_n_0\,
      Q => \arith_loop[7].arith_flop_n_0\,
      R => sel_arith_lut_n_0
    );
\arith_loop[7].arith_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_interna_reg[7]\,
      I1 => \^q_interna_reg\,
      I2 => instruction(14),
      O => \arith_loop[7].arith_lut_n_0\
    );
\arith_loop[7].msb_arith.arith_carry_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \arith_loop[7].msb_arith.arith_carry_out_xor_n_0\,
      Q => \arith_loop[7].msb_arith.arith_carry_flop_n_0\,
      R => sel_arith_lut_n_0
    );
\arith_loop[7].msb_arith.arith_carry_out_lut\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => instruction(14),
      I1 => reset_flop2_n_0,
      O => \arith_loop[7].msb_arith.arith_carry_out_lut_n_0\
    );
\arith_loop[7].msb_arith.arith_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \arith_loop[6].mid_arith.arith_muxcy_n_0\,
      CO(3 downto 0) => \NLW_arith_loop[7].msb_arith.arith_muxcy_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => \NLW_arith_loop[7].msb_arith.arith_muxcy_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => \^q_interna_reg[7]\,
      O(3 downto 2) => \NLW_arith_loop[7].msb_arith.arith_muxcy_CARRY4_O_UNCONNECTED\(3 downto 2),
      O(1) => \arith_loop[7].msb_arith.arith_carry_out_xor_n_0\,
      O(0) => \arith_loop[7].msb_arith.arith_xor_n_0\,
      S(3 downto 2) => \NLW_arith_loop[7].msb_arith.arith_muxcy_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \arith_loop[7].msb_arith.arith_carry_out_lut_n_0\,
      S(0) => \arith_loop[7].arith_lut_n_0\
    );
call_type_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => instruction(17),
      O => call_type_lut_n_0
    );
carry_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => flag_enable_lut_n_0,
      D => carry_xor_n_0,
      Q => carry_flag_flop_n_0,
      R => reset_flop2_n_0
    );
carry_xor_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => sel_parity_muxcy_n_0,
      CO(3 downto 0) => NLW_carry_xor_CARRY4_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => NLW_carry_xor_CARRY4_DI_UNCONNECTED(3 downto 0),
      O(3 downto 1) => NLW_carry_xor_CARRY4_O_UNCONNECTED(3 downto 1),
      O(0) => carry_xor_n_0,
      S(3 downto 1) => NLW_carry_xor_CARRY4_S_UNCONNECTED(3 downto 1),
      S(0) => '0'
    );
condition_met_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A3C"
    )
        port map (
      I0 => carry_flag_flop_n_0,
      I1 => zero_flag_flop_n_0,
      I2 => instruction(10),
      I3 => instruction(11),
      O => condition_met_lut_n_0
    );
flag_enable_lut: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I1,
      I1 => flag_write_flop_n_0,
      O => flag_enable_lut_n_0
    );
flag_type_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"41FC"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => instruction(17),
      O => flag_type_lut_n_0
    );
flag_write_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => flag_type_lut_n_0,
      Q => flag_write_flop_n_0,
      R => '0'
    );
high_parity_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I014_in,
      I1 => I09_in,
      I2 => I04_in,
      I3 => I00_in,
      O => LI
    );
high_shift_in_lut: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(1),
      I1 => \^q_interna_reg[0]\,
      I2 => instruction(0),
      O => high_shift_in_lut_n_0
    );
high_zero_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => D6_in,
      I1 => D4_in,
      I2 => D2_in,
      I3 => \alu_mux_loop[7].shift_in_muxf5_n_0\,
      O => high_zero_lut_n_0
    );
input_fetch_type_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => instruction(17),
      O => input_fetch_type_lut_n_0
    );
int_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => CE,
      D => int_value_lut_n_0,
      Q => I2,
      R => reset_flop2_n_0
    );
int_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => int_pulse_lut_n_0,
      Q => int_flop_n_0,
      R => reset_flop2_n_0
    );
int_pulse_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => I1,
      I1 => '0',
      I2 => I2,
      I3 => int_flop_n_0,
      O => int_pulse_lut_n_0
    );
int_update_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => instruction(17),
      O => CE
    );
int_value_lut: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => instruction(0),
      I2 => ack_flop_n_0,
      O => int_value_lut_n_0
    );
io_decode_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => instruction(13),
      I2 => instruction(14),
      I3 => instruction(16),
      O => io_decode_lut_n_0
    );
\logical_loop[0].logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \logical_loop[0].logical_lut_n_0\,
      Q => I034_in,
      R => R
    );
\logical_loop[0].logical_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E8A"
    )
        port map (
      I0 => \^store_loop[0].store_flop_0\,
      I1 => \^q_interna_reg[0]\,
      I2 => instruction(13),
      I3 => instruction(14),
      O => \logical_loop[0].logical_lut_n_0\
    );
\logical_loop[1].logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \logical_loop[1].logical_lut_n_0\,
      Q => I029_in,
      R => R
    );
\logical_loop[1].logical_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E8A"
    )
        port map (
      I0 => \^store_loop[0].store_flop_1\,
      I1 => \^q_interna_reg[1]\,
      I2 => instruction(13),
      I3 => instruction(14),
      O => \logical_loop[1].logical_lut_n_0\
    );
\logical_loop[2].logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \logical_loop[2].logical_lut_n_0\,
      Q => I024_in,
      R => R
    );
\logical_loop[2].logical_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E8A"
    )
        port map (
      I0 => \^store_loop[0].store_flop_2\,
      I1 => \^q_interna_reg[2]\,
      I2 => instruction(13),
      I3 => instruction(14),
      O => \logical_loop[2].logical_lut_n_0\
    );
\logical_loop[3].logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \logical_loop[3].logical_lut_n_0\,
      Q => I019_in,
      R => R
    );
\logical_loop[3].logical_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E8A"
    )
        port map (
      I0 => \^store_loop[0].store_flop_3\,
      I1 => \^q_interna_reg[3]_0\,
      I2 => instruction(13),
      I3 => instruction(14),
      O => \logical_loop[3].logical_lut_n_0\
    );
\logical_loop[4].logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \logical_loop[4].logical_lut_n_0\,
      Q => I014_in,
      R => R
    );
\logical_loop[4].logical_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E8A"
    )
        port map (
      I0 => port_id(4),
      I1 => \^q_interna_reg[4]\,
      I2 => instruction(13),
      I3 => instruction(14),
      O => \logical_loop[4].logical_lut_n_0\
    );
\logical_loop[5].logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \logical_loop[5].logical_lut_n_0\,
      Q => I09_in,
      R => R
    );
\logical_loop[5].logical_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E8A"
    )
        port map (
      I0 => port_id(5),
      I1 => \^q_interna_reg[5]\,
      I2 => instruction(13),
      I3 => instruction(14),
      O => \logical_loop[5].logical_lut_n_0\
    );
\logical_loop[6].logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \logical_loop[6].logical_lut_n_0\,
      Q => I04_in,
      R => R
    );
\logical_loop[6].logical_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E8A"
    )
        port map (
      I0 => port_id(6),
      I1 => \^q_interna_reg[6]\,
      I2 => instruction(13),
      I3 => instruction(14),
      O => \logical_loop[6].logical_lut_n_0\
    );
\logical_loop[7].logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \logical_loop[7].logical_lut_n_0\,
      Q => I00_in,
      R => R
    );
\logical_loop[7].logical_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E8A"
    )
        port map (
      I0 => \^q_interna_reg\,
      I1 => \^q_interna_reg[7]\,
      I2 => instruction(13),
      I3 => instruction(14),
      O => \logical_loop[7].logical_lut_n_0\
    );
low_parity_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I034_in,
      I1 => I029_in,
      I2 => I024_in,
      I3 => I019_in,
      O => low_parity_lut_n_0
    );
low_shift_in_lut: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(1),
      I1 => carry_flag_flop_n_0,
      I2 => \^q_interna_reg[7]\,
      O => low_shift_in_lut_n_0
    );
low_zero_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => D22_in,
      I1 => D18_in,
      I2 => D14_in,
      I3 => D10_in,
      O => low_zero_lut_n_0
    );
low_zero_muxcy_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => NLW_low_zero_muxcy_CARRY4_CO_UNCONNECTED(3 downto 0),
      CYINIT => '1',
      DI(3) => NLW_low_zero_muxcy_CARRY4_DI_UNCONNECTED(3),
      DI(2) => shadow_zero_flop_n_0,
      DI(1 downto 0) => B"00",
      O(3) => zero_xor_n_0,
      O(2 downto 0) => NLW_low_zero_muxcy_CARRY4_O_UNCONNECTED(2 downto 0),
      S(3) => '0',
      S(2) => sel_shadow_zero_lut_n_0,
      S(1) => high_zero_lut_n_0,
      S(0) => low_zero_lut_n_0
    );
memory_enable_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => I1,
      I1 => instruction(13),
      I2 => instruction(14),
      I3 => memory_write_flop_n_0,
      O => memory_enable_lut_n_0
    );
memory_type_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => instruction(17),
      O => memory_type_lut_n_0
    );
memory_write_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => memory_type_lut_n_0,
      Q => memory_write_flop_n_0,
      R => '0'
    );
move_group_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7400"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => instruction(17),
      O => move_group_lut_n_0
    );
normal_count_lut: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => instruction(12),
      I1 => condition_met_lut_n_0,
      I2 => move_group_lut_n_0,
      O => CI
    );
parity_muxcy_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => NLW_parity_muxcy_CARRY4_CO_UNCONNECTED(3 downto 0),
      CYINIT => '1',
      DI(3 downto 1) => NLW_parity_muxcy_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => '0',
      O(3 downto 2) => NLW_parity_muxcy_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => parity_xor_n_0,
      O(0) => NLW_parity_muxcy_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_parity_muxcy_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => LI,
      S(0) => low_parity_lut_n_0
    );
\pc_loop[0].pc_lsb_carry.pc_value_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pc_loop[3].pc_mid_carry.pc_value_muxcy_n_0\,
      CO(2) => \pc_loop[2].pc_mid_carry.pc_value_muxcy_n_0\,
      CO(1) => \pc_loop[1].pc_mid_carry.pc_value_muxcy_n_0\,
      CO(0) => \pc_loop[0].pc_lsb_carry.pc_value_muxcy_n_0\,
      CYINIT => CI,
      DI(3 downto 0) => B"0000",
      O(3) => \pc_loop[3].pc_mid_carry.pc_value_xor_n_0\,
      O(2) => \pc_loop[2].pc_mid_carry.pc_value_xor_n_0\,
      O(1) => \pc_loop[1].pc_mid_carry.pc_value_xor_n_0\,
      O(0) => \pc_loop[0].pc_lsb_carry.pc_value_xor_n_0\,
      S(3) => \pc_loop[3].value_select_mux_n_0\,
      S(2) => \pc_loop[2].value_select_mux_n_0\,
      S(1) => \pc_loop[1].value_select_mux_n_0\,
      S(0) => \pc_loop[0].value_select_mux_n_0\
    );
\pc_loop[0].pc_lsb_carry.pc_vector_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pc_loop[3].pc_mid_carry.pc_vector_muxcy_n_0\,
      CO(2) => \pc_loop[2].pc_mid_carry.pc_vector_muxcy_n_0\,
      CO(1) => \pc_loop[1].pc_mid_carry.pc_vector_muxcy_n_0\,
      CO(0) => \pc_loop[0].pc_lsb_carry.pc_vector_muxcy_n_0\,
      CYINIT => instruction(13),
      DI(3 downto 0) => B"0000",
      O(3) => \pc_loop[3].pc_mid_carry.pc_vector_xor_n_0\,
      O(2) => \pc_loop[2].pc_mid_carry.pc_vector_xor_n_0\,
      O(1) => \pc_loop[1].pc_mid_carry.pc_vector_xor_n_0\,
      O(0) => \pc_loop[0].pc_lsb_carry.pc_vector_xor_n_0\,
      S(3) => \pc_loop[3].vector_select_mux_n_0\,
      S(2) => \pc_loop[2].vector_select_mux_n_0\,
      S(1) => \pc_loop[1].vector_select_mux_n_0\,
      S(0) => \pc_loop[0].vector_select_mux_n_0\
    );
\pc_loop[0].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_loop[0].register_bit_i_1_n_0\,
      Q => \^addrardaddr\(0),
      R => reset_flop2_n_0
    );
\pc_loop[0].register_bit_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => \^addrardaddr\(0),
      I2 => I1,
      I3 => \pc_loop[0].pc_lsb_carry.pc_value_xor_n_0\,
      O => \pc_loop[0].register_bit_i_1_n_0\
    );
\pc_loop[0].value_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => CI,
      I1 => \pc_loop[0].pc_lsb_carry.pc_vector_xor_n_0\,
      I2 => \^addrardaddr\(0),
      O => \pc_loop[0].value_select_mux_n_0\
    );
\pc_loop[0].vector_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(0),
      I2 => \stack_ram_loop[0].stack_flop_n_0\,
      O => \pc_loop[0].vector_select_mux_n_0\
    );
\pc_loop[1].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_loop[1].register_bit_i_1_n_0\,
      Q => \^addrardaddr\(1),
      R => reset_flop2_n_0
    );
\pc_loop[1].register_bit_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => \^addrardaddr\(1),
      I2 => I1,
      I3 => \pc_loop[1].pc_mid_carry.pc_value_xor_n_0\,
      O => \pc_loop[1].register_bit_i_1_n_0\
    );
\pc_loop[1].value_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => CI,
      I1 => \pc_loop[1].pc_mid_carry.pc_vector_xor_n_0\,
      I2 => \^addrardaddr\(1),
      O => \pc_loop[1].value_select_mux_n_0\
    );
\pc_loop[1].vector_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(1),
      I2 => \stack_ram_loop[1].stack_flop_n_0\,
      O => \pc_loop[1].vector_select_mux_n_0\
    );
\pc_loop[2].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_loop[2].register_bit_i_1_n_0\,
      Q => \^addrardaddr\(2),
      R => reset_flop2_n_0
    );
\pc_loop[2].register_bit_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => \^addrardaddr\(2),
      I2 => I1,
      I3 => \pc_loop[2].pc_mid_carry.pc_value_xor_n_0\,
      O => \pc_loop[2].register_bit_i_1_n_0\
    );
\pc_loop[2].value_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => CI,
      I1 => \pc_loop[2].pc_mid_carry.pc_vector_xor_n_0\,
      I2 => \^addrardaddr\(2),
      O => \pc_loop[2].value_select_mux_n_0\
    );
\pc_loop[2].vector_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(2),
      I2 => \stack_ram_loop[2].stack_flop_n_0\,
      O => \pc_loop[2].vector_select_mux_n_0\
    );
\pc_loop[3].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_loop[3].register_bit_i_1_n_0\,
      Q => \^addrardaddr\(3),
      R => reset_flop2_n_0
    );
\pc_loop[3].register_bit_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => \^addrardaddr\(3),
      I2 => I1,
      I3 => \pc_loop[3].pc_mid_carry.pc_value_xor_n_0\,
      O => \pc_loop[3].register_bit_i_1_n_0\
    );
\pc_loop[3].value_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => CI,
      I1 => \pc_loop[3].pc_mid_carry.pc_vector_xor_n_0\,
      I2 => \^addrardaddr\(3),
      O => \pc_loop[3].value_select_mux_n_0\
    );
\pc_loop[3].vector_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(3),
      I2 => \stack_ram_loop[3].stack_flop_n_0\,
      O => \pc_loop[3].vector_select_mux_n_0\
    );
\pc_loop[4].pc_mid_carry.pc_value_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_loop[3].pc_mid_carry.pc_value_muxcy_n_0\,
      CO(3) => \pc_loop[7].pc_mid_carry.pc_value_muxcy_n_0\,
      CO(2) => \pc_loop[6].pc_mid_carry.pc_value_muxcy_n_0\,
      CO(1) => \pc_loop[5].pc_mid_carry.pc_value_muxcy_n_0\,
      CO(0) => \pc_loop[4].pc_mid_carry.pc_value_muxcy_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_loop[7].pc_mid_carry.pc_value_xor_n_0\,
      O(2) => \pc_loop[6].pc_mid_carry.pc_value_xor_n_0\,
      O(1) => \pc_loop[5].pc_mid_carry.pc_value_xor_n_0\,
      O(0) => \pc_loop[4].pc_mid_carry.pc_value_xor_n_0\,
      S(3) => \pc_loop[7].value_select_mux_n_0\,
      S(2) => \pc_loop[6].value_select_mux_n_0\,
      S(1) => \pc_loop[5].value_select_mux_n_0\,
      S(0) => \pc_loop[4].value_select_mux_n_0\
    );
\pc_loop[4].pc_mid_carry.pc_vector_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_loop[3].pc_mid_carry.pc_vector_muxcy_n_0\,
      CO(3) => \pc_loop[7].pc_mid_carry.pc_vector_muxcy_n_0\,
      CO(2) => \pc_loop[6].pc_mid_carry.pc_vector_muxcy_n_0\,
      CO(1) => \pc_loop[5].pc_mid_carry.pc_vector_muxcy_n_0\,
      CO(0) => \pc_loop[4].pc_mid_carry.pc_vector_muxcy_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_loop[7].pc_mid_carry.pc_vector_xor_n_0\,
      O(2) => \pc_loop[6].pc_mid_carry.pc_vector_xor_n_0\,
      O(1) => \pc_loop[5].pc_mid_carry.pc_vector_xor_n_0\,
      O(0) => \pc_loop[4].pc_mid_carry.pc_vector_xor_n_0\,
      S(3) => \pc_loop[7].vector_select_mux_n_0\,
      S(2) => \pc_loop[6].vector_select_mux_n_0\,
      S(1) => \pc_loop[5].vector_select_mux_n_0\,
      S(0) => \pc_loop[4].vector_select_mux_n_0\
    );
\pc_loop[4].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_loop[4].register_bit_i_1_n_0\,
      Q => \^addrardaddr\(4),
      R => reset_flop2_n_0
    );
\pc_loop[4].register_bit_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => \^addrardaddr\(4),
      I2 => I1,
      I3 => \pc_loop[4].pc_mid_carry.pc_value_xor_n_0\,
      O => \pc_loop[4].register_bit_i_1_n_0\
    );
\pc_loop[4].value_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => CI,
      I1 => \pc_loop[4].pc_mid_carry.pc_vector_xor_n_0\,
      I2 => \^addrardaddr\(4),
      O => \pc_loop[4].value_select_mux_n_0\
    );
\pc_loop[4].vector_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(4),
      I2 => \stack_ram_loop[4].stack_flop_n_0\,
      O => \pc_loop[4].vector_select_mux_n_0\
    );
\pc_loop[5].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_loop[5].register_bit_i_1_n_0\,
      Q => \^addrardaddr\(5),
      R => reset_flop2_n_0
    );
\pc_loop[5].register_bit_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => \^addrardaddr\(5),
      I2 => I1,
      I3 => \pc_loop[5].pc_mid_carry.pc_value_xor_n_0\,
      O => \pc_loop[5].register_bit_i_1_n_0\
    );
\pc_loop[5].value_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => CI,
      I1 => \pc_loop[5].pc_mid_carry.pc_vector_xor_n_0\,
      I2 => \^addrardaddr\(5),
      O => \pc_loop[5].value_select_mux_n_0\
    );
\pc_loop[5].vector_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(5),
      I2 => \stack_ram_loop[5].stack_flop_n_0\,
      O => \pc_loop[5].vector_select_mux_n_0\
    );
\pc_loop[6].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_loop[6].register_bit_i_1_n_0\,
      Q => \^addrardaddr\(6),
      R => reset_flop2_n_0
    );
\pc_loop[6].register_bit_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => \^addrardaddr\(6),
      I2 => I1,
      I3 => \pc_loop[6].pc_mid_carry.pc_value_xor_n_0\,
      O => \pc_loop[6].register_bit_i_1_n_0\
    );
\pc_loop[6].value_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => CI,
      I1 => \pc_loop[6].pc_mid_carry.pc_vector_xor_n_0\,
      I2 => \^addrardaddr\(6),
      O => \pc_loop[6].value_select_mux_n_0\
    );
\pc_loop[6].vector_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(6),
      I2 => \stack_ram_loop[6].stack_flop_n_0\,
      O => \pc_loop[6].vector_select_mux_n_0\
    );
\pc_loop[7].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_loop[7].register_bit_i_1_n_0\,
      Q => \^addrardaddr\(7),
      R => reset_flop2_n_0
    );
\pc_loop[7].register_bit_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => \^addrardaddr\(7),
      I2 => I1,
      I3 => \pc_loop[7].pc_mid_carry.pc_value_xor_n_0\,
      O => \pc_loop[7].register_bit_i_1_n_0\
    );
\pc_loop[7].value_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => CI,
      I1 => \pc_loop[7].pc_mid_carry.pc_vector_xor_n_0\,
      I2 => \^addrardaddr\(7),
      O => \pc_loop[7].value_select_mux_n_0\
    );
\pc_loop[7].vector_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(7),
      I2 => \stack_ram_loop[7].stack_flop_n_0\,
      O => \pc_loop[7].vector_select_mux_n_0\
    );
\pc_loop[8].pc_mid_carry.pc_value_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_loop[7].pc_mid_carry.pc_value_muxcy_n_0\,
      CO(3 downto 0) => \NLW_pc_loop[8].pc_mid_carry.pc_value_muxcy_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => \NLW_pc_loop[8].pc_mid_carry.pc_value_muxcy_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 2) => \NLW_pc_loop[8].pc_mid_carry.pc_value_muxcy_CARRY4_O_UNCONNECTED\(3 downto 2),
      O(1) => \pc_loop[9].pc_msb_carry.pc_value_xor_n_0\,
      O(0) => \pc_loop[8].pc_mid_carry.pc_value_xor_n_0\,
      S(3 downto 2) => \NLW_pc_loop[8].pc_mid_carry.pc_value_muxcy_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \pc_loop[9].value_select_mux_n_0\,
      S(0) => \pc_loop[8].value_select_mux_n_0\
    );
\pc_loop[8].pc_mid_carry.pc_vector_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_loop[7].pc_mid_carry.pc_vector_muxcy_n_0\,
      CO(3 downto 0) => \NLW_pc_loop[8].pc_mid_carry.pc_vector_muxcy_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => \NLW_pc_loop[8].pc_mid_carry.pc_vector_muxcy_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 2) => \NLW_pc_loop[8].pc_mid_carry.pc_vector_muxcy_CARRY4_O_UNCONNECTED\(3 downto 2),
      O(1) => \pc_loop[9].pc_msb_carry.pc_vector_xor_n_0\,
      O(0) => \pc_loop[8].pc_mid_carry.pc_vector_xor_n_0\,
      S(3 downto 2) => \NLW_pc_loop[8].pc_mid_carry.pc_vector_muxcy_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \pc_loop[9].vector_select_mux_n_0\,
      S(0) => \pc_loop[8].vector_select_mux_n_0\
    );
\pc_loop[8].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_loop[8].register_bit_i_1_n_0\,
      Q => \^addrardaddr\(8),
      R => reset_flop2_n_0
    );
\pc_loop[8].register_bit_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => \^addrardaddr\(8),
      I2 => I1,
      I3 => \pc_loop[8].pc_mid_carry.pc_value_xor_n_0\,
      O => \pc_loop[8].register_bit_i_1_n_0\
    );
\pc_loop[8].value_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => CI,
      I1 => \pc_loop[8].pc_mid_carry.pc_vector_xor_n_0\,
      I2 => \^addrardaddr\(8),
      O => \pc_loop[8].value_select_mux_n_0\
    );
\pc_loop[8].vector_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(8),
      I2 => \stack_ram_loop[8].stack_flop_n_0\,
      O => \pc_loop[8].vector_select_mux_n_0\
    );
\pc_loop[9].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_loop[9].register_bit_i_1_n_0\,
      Q => \^addrardaddr\(9),
      R => reset_flop2_n_0
    );
\pc_loop[9].register_bit_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => \^addrardaddr\(9),
      I2 => I1,
      I3 => \pc_loop[9].pc_msb_carry.pc_value_xor_n_0\,
      O => \pc_loop[9].register_bit_i_1_n_0\
    );
\pc_loop[9].value_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => CI,
      I1 => \pc_loop[9].pc_msb_carry.pc_vector_xor_n_0\,
      I2 => \^addrardaddr\(9),
      O => \pc_loop[9].value_select_mux_n_0\
    );
\pc_loop[9].vector_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(9),
      I2 => \stack_ram_loop[9].stack_flop_n_0\,
      O => \pc_loop[9].vector_select_mux_n_0\
    );
pipeline_bit: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => shift_carry_lut_n_0,
      Q => pipeline_bit_n_0,
      R => '0'
    );
push_pop_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => instruction(17),
      O => push_pop_lut_n_0
    );
\q_interna[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_interna_reg[3]\,
      I1 => Q10_in,
      O => \q_interna_reg[3]_1\(0)
    );
\q_interna[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_interna_reg[3]\,
      I1 => Q14_in,
      O => E(0)
    );
\q_interna[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_interna_reg[3]\,
      I1 => Q13_in,
      O => \q_interna_reg[7]_0\(0)
    );
\q_interna[7]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_interna_reg[3]\,
      I1 => Q12_in,
      O => \q_interna_reg[7]_1\(0)
    );
\reg_loop[0].operand_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(0),
      I2 => \reg_loop[0].register_bit_n_0\,
      O => \^store_loop[0].store_flop_0\
    );
\reg_loop[0].register_bit\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => instruction(8),
      A1 => instruction(9),
      A2 => instruction(10),
      A3 => instruction(11),
      A4 => '0',
      D => D22_in,
      DPO => \reg_loop[0].register_bit_n_0\,
      DPRA0 => instruction(4),
      DPRA1 => instruction(5),
      DPRA2 => instruction(6),
      DPRA3 => instruction(7),
      DPRA4 => '0',
      SPO => \^q_interna_reg[0]\,
      WCLK => clk_IBUF_BUFG,
      WE => WE
    );
\reg_loop[1].operand_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(1),
      I2 => \reg_loop[1].register_bit_n_0\,
      O => \^store_loop[0].store_flop_1\
    );
\reg_loop[1].register_bit\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => instruction(8),
      A1 => instruction(9),
      A2 => instruction(10),
      A3 => instruction(11),
      A4 => '0',
      D => D18_in,
      DPO => \reg_loop[1].register_bit_n_0\,
      DPRA0 => instruction(4),
      DPRA1 => instruction(5),
      DPRA2 => instruction(6),
      DPRA3 => instruction(7),
      DPRA4 => '0',
      SPO => \^q_interna_reg[1]\,
      WCLK => clk_IBUF_BUFG,
      WE => WE
    );
\reg_loop[2].operand_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(2),
      I2 => \reg_loop[2].register_bit_n_0\,
      O => \^store_loop[0].store_flop_2\
    );
\reg_loop[2].register_bit\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => instruction(8),
      A1 => instruction(9),
      A2 => instruction(10),
      A3 => instruction(11),
      A4 => '0',
      D => D14_in,
      DPO => \reg_loop[2].register_bit_n_0\,
      DPRA0 => instruction(4),
      DPRA1 => instruction(5),
      DPRA2 => instruction(6),
      DPRA3 => instruction(7),
      DPRA4 => '0',
      SPO => \^q_interna_reg[2]\,
      WCLK => clk_IBUF_BUFG,
      WE => WE
    );
\reg_loop[3].operand_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(3),
      I2 => \reg_loop[3].register_bit_n_0\,
      O => \^store_loop[0].store_flop_3\
    );
\reg_loop[3].register_bit\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => instruction(8),
      A1 => instruction(9),
      A2 => instruction(10),
      A3 => instruction(11),
      A4 => '0',
      D => D10_in,
      DPO => \reg_loop[3].register_bit_n_0\,
      DPRA0 => instruction(4),
      DPRA1 => instruction(5),
      DPRA2 => instruction(6),
      DPRA3 => instruction(7),
      DPRA4 => '0',
      SPO => \^q_interna_reg[3]_0\,
      WCLK => clk_IBUF_BUFG,
      WE => WE
    );
\reg_loop[4].operand_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(4),
      I2 => \reg_loop[4].register_bit_n_0\,
      O => port_id(4)
    );
\reg_loop[4].register_bit\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => instruction(8),
      A1 => instruction(9),
      A2 => instruction(10),
      A3 => instruction(11),
      A4 => '0',
      D => D6_in,
      DPO => \reg_loop[4].register_bit_n_0\,
      DPRA0 => instruction(4),
      DPRA1 => instruction(5),
      DPRA2 => instruction(6),
      DPRA3 => instruction(7),
      DPRA4 => '0',
      SPO => \^q_interna_reg[4]\,
      WCLK => clk_IBUF_BUFG,
      WE => WE
    );
\reg_loop[5].operand_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(5),
      I2 => \reg_loop[5].register_bit_n_0\,
      O => port_id(5)
    );
\reg_loop[5].register_bit\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => instruction(8),
      A1 => instruction(9),
      A2 => instruction(10),
      A3 => instruction(11),
      A4 => '0',
      D => D4_in,
      DPO => \reg_loop[5].register_bit_n_0\,
      DPRA0 => instruction(4),
      DPRA1 => instruction(5),
      DPRA2 => instruction(6),
      DPRA3 => instruction(7),
      DPRA4 => '0',
      SPO => \^q_interna_reg[5]\,
      WCLK => clk_IBUF_BUFG,
      WE => WE
    );
\reg_loop[6].operand_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(6),
      I2 => \reg_loop[6].register_bit_n_0\,
      O => port_id(6)
    );
\reg_loop[6].register_bit\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => instruction(8),
      A1 => instruction(9),
      A2 => instruction(10),
      A3 => instruction(11),
      A4 => '0',
      D => D2_in,
      DPO => \reg_loop[6].register_bit_n_0\,
      DPRA0 => instruction(4),
      DPRA1 => instruction(5),
      DPRA2 => instruction(6),
      DPRA3 => instruction(7),
      DPRA4 => '0',
      SPO => \^q_interna_reg[6]\,
      WCLK => clk_IBUF_BUFG,
      WE => WE
    );
\reg_loop[7].operand_select_mux\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(7),
      I2 => \reg_loop[7].register_bit_n_0\,
      O => \^q_interna_reg\
    );
\reg_loop[7].register_bit\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => instruction(8),
      A1 => instruction(9),
      A2 => instruction(10),
      A3 => instruction(11),
      A4 => '0',
      D => \alu_mux_loop[7].shift_in_muxf5_n_0\,
      DPO => \reg_loop[7].register_bit_n_0\,
      DPRA0 => instruction(4),
      DPRA1 => instruction(5),
      DPRA2 => instruction(6),
      DPRA3 => instruction(7),
      DPRA4 => '0',
      SPO => \^q_interna_reg[7]\,
      WCLK => clk_IBUF_BUFG,
      WE => WE
    );
register_enable_lut: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I1,
      I1 => register_write_flop_n_0,
      O => WE
    );
register_type_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0145"
    )
        port map (
      I0 => int_flop_n_0,
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => instruction(17),
      O => register_type_lut_n_0
    );
register_write_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => register_type_lut_n_0,
      Q => register_write_flop_n_0,
      R => '0'
    );
reset_flop1: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => '0',
      Q => reset_flop1_n_0,
      S => AR(0)
    );
reset_flop2: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => reset_flop1_n_0,
      Q => reset_flop2_n_0,
      S => AR(0)
    );
sel_arith_carry_lut: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F3"
    )
        port map (
      I0 => \arith_loop[7].msb_arith.arith_carry_flop_n_0\,
      I1 => instruction(16),
      I2 => instruction(17),
      O => sel_arith_carry_lut_n_0
    );
sel_arith_lut: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      O => sel_arith_lut_n_0
    );
sel_group_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => input_fetch_type_lut_n_0,
      Q => sel_group_flop_n_0,
      R => '0'
    );
sel_logical_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => instruction(17),
      O => R
    );
sel_parity_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3FF"
    )
        port map (
      I0 => parity_xor_n_0,
      I1 => instruction(13),
      I2 => instruction(15),
      I3 => instruction(16),
      O => sel_parity_lut_n_0
    );
sel_shadow_carry_lut: unisim.vcomponents.LUT2
    generic map(
      INIT => X"3"
    )
        port map (
      I0 => I0,
      I1 => instruction(17),
      O => sel_shadow_carry_lut_n_0
    );
sel_shadow_muxcy_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sel_parity_muxcy_n_0,
      CO(2 downto 0) => NLW_sel_shadow_muxcy_CARRY4_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3) => parity_xor_n_0,
      DI(2) => \arith_loop[7].msb_arith.arith_carry_flop_n_0\,
      DI(1) => pipeline_bit_n_0,
      DI(0) => I0,
      O(3 downto 0) => NLW_sel_shadow_muxcy_CARRY4_O_UNCONNECTED(3 downto 0),
      S(3) => sel_parity_lut_n_0,
      S(2) => sel_arith_carry_lut_n_0,
      S(1) => sel_shift_carry_lut_n_0,
      S(0) => sel_shadow_carry_lut_n_0
    );
sel_shadow_zero_lut: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3F"
    )
        port map (
      I0 => shadow_zero_flop_n_0,
      I1 => instruction(16),
      I2 => instruction(17),
      O => sel_shadow_zero_lut_n_0
    );
sel_shift_carry_lut: unisim.vcomponents.LUT2
    generic map(
      INIT => X"C"
    )
        port map (
      I0 => pipeline_bit_n_0,
      I1 => instruction(15),
      O => sel_shift_carry_lut_n_0
    );
shadow_carry_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => int_flop_n_0,
      D => carry_flag_flop_n_0,
      Q => I0,
      R => '0'
    );
shadow_zero_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => int_flop_n_0,
      D => zero_flag_flop_n_0,
      Q => shadow_zero_flop_n_0,
      R => '0'
    );
shift_carry_lut: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(3),
      I1 => \^q_interna_reg[7]\,
      I2 => \^q_interna_reg[0]\,
      O => shift_carry_lut_n_0
    );
shift_in_muxf5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => low_shift_in_lut_n_0,
      I1 => high_shift_in_lut_n_0,
      I2 => instruction(2),
      O => shift_in_muxf5_n_0
    );
\shift_loop[0].lsb_shift.shift_mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(3),
      I1 => shift_in_muxf5_n_0,
      I2 => \^q_interna_reg[1]\,
      O => \shift_loop[0].lsb_shift.shift_mux_lut_n_0\
    );
\shift_loop[0].shift_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \shift_loop[0].lsb_shift.shift_mux_lut_n_0\,
      Q => \shift_loop[0].shift_flop_n_0\,
      R => kcpsm6_rom
    );
\shift_loop[1].mid_shift.shift_mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(3),
      I1 => \^q_interna_reg[0]\,
      I2 => \^q_interna_reg[2]\,
      O => \shift_loop[1].mid_shift.shift_mux_lut_n_0\
    );
\shift_loop[1].shift_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \shift_loop[1].mid_shift.shift_mux_lut_n_0\,
      Q => \shift_loop[1].shift_flop_n_0\,
      R => kcpsm6_rom
    );
\shift_loop[2].mid_shift.shift_mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(3),
      I1 => \^q_interna_reg[1]\,
      I2 => \^q_interna_reg[3]_0\,
      O => \shift_loop[2].mid_shift.shift_mux_lut_n_0\
    );
\shift_loop[2].shift_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \shift_loop[2].mid_shift.shift_mux_lut_n_0\,
      Q => \shift_loop[2].shift_flop_n_0\,
      R => kcpsm6_rom
    );
\shift_loop[3].mid_shift.shift_mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(3),
      I1 => \^q_interna_reg[2]\,
      I2 => \^q_interna_reg[4]\,
      O => \shift_loop[3].mid_shift.shift_mux_lut_n_0\
    );
\shift_loop[3].shift_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \shift_loop[3].mid_shift.shift_mux_lut_n_0\,
      Q => \shift_loop[3].shift_flop_n_0\,
      R => kcpsm6_rom
    );
\shift_loop[4].mid_shift.shift_mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(3),
      I1 => \^q_interna_reg[3]_0\,
      I2 => \^q_interna_reg[5]\,
      O => \shift_loop[4].mid_shift.shift_mux_lut_n_0\
    );
\shift_loop[4].shift_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \shift_loop[4].mid_shift.shift_mux_lut_n_0\,
      Q => \shift_loop[4].shift_flop_n_0\,
      R => kcpsm6_rom
    );
\shift_loop[5].mid_shift.shift_mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(3),
      I1 => \^q_interna_reg[4]\,
      I2 => \^q_interna_reg[6]\,
      O => \shift_loop[5].mid_shift.shift_mux_lut_n_0\
    );
\shift_loop[5].shift_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \shift_loop[5].mid_shift.shift_mux_lut_n_0\,
      Q => \shift_loop[5].shift_flop_n_0\,
      R => kcpsm6_rom
    );
\shift_loop[6].mid_shift.shift_mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(3),
      I1 => \^q_interna_reg[5]\,
      I2 => \^q_interna_reg[7]\,
      O => \shift_loop[6].mid_shift.shift_mux_lut_n_0\
    );
\shift_loop[6].shift_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \shift_loop[6].mid_shift.shift_mux_lut_n_0\,
      Q => \shift_loop[6].shift_flop_n_0\,
      R => kcpsm6_rom
    );
\shift_loop[7].msb_shift.shift_mux_lut\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => instruction(3),
      I1 => \^q_interna_reg[6]\,
      I2 => shift_in_muxf5_n_0,
      O => \shift_loop[7].msb_shift.shift_mux_lut_n_0\
    );
\shift_loop[7].shift_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \shift_loop[7].msb_shift.shift_mux_lut_n_0\,
      Q => \shift_loop[7].shift_flop_n_0\,
      R => kcpsm6_rom
    );
\stack_count_loop[0].lsb_stack_count.count_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6555"
    )
        port map (
      I0 => \stack_count_loop[0].register_bit_n_0\,
      I1 => I1,
      I2 => valid_move_lut_n_0,
      I3 => push_pop_lut_n_0,
      O => \stack_count_loop[0].lsb_stack_count.count_lut_n_0\
    );
\stack_count_loop[0].lsb_stack_count.count_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \stack_count_loop[3].mid_stack_count.count_muxcy_n_0\,
      CO(2) => \stack_count_loop[2].mid_stack_count.count_muxcy_n_0\,
      CO(1) => \stack_count_loop[1].mid_stack_count.count_muxcy_n_0\,
      CO(0) => \stack_count_loop[0].lsb_stack_count.count_muxcy_n_0\,
      CYINIT => '0',
      DI(3) => \stack_count_loop[3].register_bit_n_0\,
      DI(2) => \stack_count_loop[2].register_bit_n_0\,
      DI(1) => \stack_count_loop[1].register_bit_n_0\,
      DI(0) => \stack_count_loop[0].register_bit_n_0\,
      O(3) => \stack_count_loop[3].mid_stack_count.count_xor_n_0\,
      O(2) => \stack_count_loop[2].mid_stack_count.count_xor_n_0\,
      O(1) => \stack_count_loop[1].mid_stack_count.count_xor_n_0\,
      O(0) => \stack_count_loop[0].lsb_stack_count.count_xor_n_0\,
      S(3) => \stack_count_loop[3].mid_stack_count.count_lut_n_0\,
      S(2) => \stack_count_loop[2].mid_stack_count.count_lut_n_0\,
      S(1) => \stack_count_loop[1].mid_stack_count.count_lut_n_0\,
      S(0) => \stack_count_loop[0].lsb_stack_count.count_lut_n_0\
    );
\stack_count_loop[0].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \stack_count_loop[0].register_bit_i_1_n_0\,
      D => \stack_count_loop[0].lsb_stack_count.count_xor_n_0\,
      Q => \stack_count_loop[0].register_bit_n_0\,
      R => reset_flop2_n_0
    );
\stack_count_loop[0].register_bit_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => int_flop_n_0,
      O => \stack_count_loop[0].register_bit_i_1_n_0\
    );
\stack_count_loop[1].mid_stack_count.count_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A999"
    )
        port map (
      I0 => \stack_count_loop[1].register_bit_n_0\,
      I1 => I1,
      I2 => valid_move_lut_n_0,
      I3 => call_type_lut_n_0,
      O => \stack_count_loop[1].mid_stack_count.count_lut_n_0\
    );
\stack_count_loop[1].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \stack_count_loop[0].register_bit_i_1_n_0\,
      D => \stack_count_loop[1].mid_stack_count.count_xor_n_0\,
      Q => \stack_count_loop[1].register_bit_n_0\,
      R => reset_flop2_n_0
    );
\stack_count_loop[2].mid_stack_count.count_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A999"
    )
        port map (
      I0 => \stack_count_loop[2].register_bit_n_0\,
      I1 => I1,
      I2 => valid_move_lut_n_0,
      I3 => call_type_lut_n_0,
      O => \stack_count_loop[2].mid_stack_count.count_lut_n_0\
    );
\stack_count_loop[2].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \stack_count_loop[0].register_bit_i_1_n_0\,
      D => \stack_count_loop[2].mid_stack_count.count_xor_n_0\,
      Q => \stack_count_loop[2].register_bit_n_0\,
      R => reset_flop2_n_0
    );
\stack_count_loop[3].mid_stack_count.count_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A999"
    )
        port map (
      I0 => \stack_count_loop[3].register_bit_n_0\,
      I1 => I1,
      I2 => valid_move_lut_n_0,
      I3 => call_type_lut_n_0,
      O => \stack_count_loop[3].mid_stack_count.count_lut_n_0\
    );
\stack_count_loop[3].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \stack_count_loop[0].register_bit_i_1_n_0\,
      D => \stack_count_loop[3].mid_stack_count.count_xor_n_0\,
      Q => \stack_count_loop[3].register_bit_n_0\,
      R => reset_flop2_n_0
    );
\stack_count_loop[4].msb_stack_count.count_lut\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A999"
    )
        port map (
      I0 => \stack_count_loop[4].register_bit_n_0\,
      I1 => I1,
      I2 => valid_move_lut_n_0,
      I3 => call_type_lut_n_0,
      O => \stack_count_loop[4].msb_stack_count.count_lut_n_0\
    );
\stack_count_loop[4].msb_stack_count.count_xor_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \stack_count_loop[3].mid_stack_count.count_muxcy_n_0\,
      CO(3 downto 0) => \NLW_stack_count_loop[4].msb_stack_count.count_xor_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_stack_count_loop[4].msb_stack_count.count_xor_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_stack_count_loop[4].msb_stack_count.count_xor_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => \stack_count_loop[4].msb_stack_count.count_xor_n_0\,
      S(3 downto 1) => \NLW_stack_count_loop[4].msb_stack_count.count_xor_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \stack_count_loop[4].msb_stack_count.count_lut_n_0\
    );
\stack_count_loop[4].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \stack_count_loop[0].register_bit_i_1_n_0\,
      D => \stack_count_loop[4].msb_stack_count.count_xor_n_0\,
      Q => \stack_count_loop[4].register_bit_n_0\,
      R => reset_flop2_n_0
    );
\stack_ram_loop[0].stack_bit\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \stack_count_loop[0].register_bit_n_0\,
      A1 => \stack_count_loop[1].register_bit_n_0\,
      A2 => \stack_count_loop[2].register_bit_n_0\,
      A3 => \stack_count_loop[3].register_bit_n_0\,
      A4 => \stack_count_loop[4].register_bit_n_0\,
      D => \^addrardaddr\(0),
      O => \stack_ram_loop[0].stack_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => \stack_ram_loop[0].stack_bit_i_1_n_0\
    );
\stack_ram_loop[0].stack_bit_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I1,
      O => \stack_ram_loop[0].stack_bit_i_1_n_0\
    );
\stack_ram_loop[0].stack_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stack_ram_loop[0].stack_bit_n_0\,
      Q => \stack_ram_loop[0].stack_flop_n_0\,
      R => '0'
    );
\stack_ram_loop[1].stack_bit\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \stack_count_loop[0].register_bit_n_0\,
      A1 => \stack_count_loop[1].register_bit_n_0\,
      A2 => \stack_count_loop[2].register_bit_n_0\,
      A3 => \stack_count_loop[3].register_bit_n_0\,
      A4 => \stack_count_loop[4].register_bit_n_0\,
      D => \^addrardaddr\(1),
      O => \stack_ram_loop[1].stack_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => \stack_ram_loop[0].stack_bit_i_1_n_0\
    );
\stack_ram_loop[1].stack_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stack_ram_loop[1].stack_bit_n_0\,
      Q => \stack_ram_loop[1].stack_flop_n_0\,
      R => '0'
    );
\stack_ram_loop[2].stack_bit\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \stack_count_loop[0].register_bit_n_0\,
      A1 => \stack_count_loop[1].register_bit_n_0\,
      A2 => \stack_count_loop[2].register_bit_n_0\,
      A3 => \stack_count_loop[3].register_bit_n_0\,
      A4 => \stack_count_loop[4].register_bit_n_0\,
      D => \^addrardaddr\(2),
      O => \stack_ram_loop[2].stack_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => \stack_ram_loop[0].stack_bit_i_1_n_0\
    );
\stack_ram_loop[2].stack_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stack_ram_loop[2].stack_bit_n_0\,
      Q => \stack_ram_loop[2].stack_flop_n_0\,
      R => '0'
    );
\stack_ram_loop[3].stack_bit\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \stack_count_loop[0].register_bit_n_0\,
      A1 => \stack_count_loop[1].register_bit_n_0\,
      A2 => \stack_count_loop[2].register_bit_n_0\,
      A3 => \stack_count_loop[3].register_bit_n_0\,
      A4 => \stack_count_loop[4].register_bit_n_0\,
      D => \^addrardaddr\(3),
      O => \stack_ram_loop[3].stack_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => \stack_ram_loop[0].stack_bit_i_1_n_0\
    );
\stack_ram_loop[3].stack_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stack_ram_loop[3].stack_bit_n_0\,
      Q => \stack_ram_loop[3].stack_flop_n_0\,
      R => '0'
    );
\stack_ram_loop[4].stack_bit\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \stack_count_loop[0].register_bit_n_0\,
      A1 => \stack_count_loop[1].register_bit_n_0\,
      A2 => \stack_count_loop[2].register_bit_n_0\,
      A3 => \stack_count_loop[3].register_bit_n_0\,
      A4 => \stack_count_loop[4].register_bit_n_0\,
      D => \^addrardaddr\(4),
      O => \stack_ram_loop[4].stack_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => \stack_ram_loop[0].stack_bit_i_1_n_0\
    );
\stack_ram_loop[4].stack_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stack_ram_loop[4].stack_bit_n_0\,
      Q => \stack_ram_loop[4].stack_flop_n_0\,
      R => '0'
    );
\stack_ram_loop[5].stack_bit\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \stack_count_loop[0].register_bit_n_0\,
      A1 => \stack_count_loop[1].register_bit_n_0\,
      A2 => \stack_count_loop[2].register_bit_n_0\,
      A3 => \stack_count_loop[3].register_bit_n_0\,
      A4 => \stack_count_loop[4].register_bit_n_0\,
      D => \^addrardaddr\(5),
      O => \stack_ram_loop[5].stack_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => \stack_ram_loop[0].stack_bit_i_1_n_0\
    );
\stack_ram_loop[5].stack_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stack_ram_loop[5].stack_bit_n_0\,
      Q => \stack_ram_loop[5].stack_flop_n_0\,
      R => '0'
    );
\stack_ram_loop[6].stack_bit\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \stack_count_loop[0].register_bit_n_0\,
      A1 => \stack_count_loop[1].register_bit_n_0\,
      A2 => \stack_count_loop[2].register_bit_n_0\,
      A3 => \stack_count_loop[3].register_bit_n_0\,
      A4 => \stack_count_loop[4].register_bit_n_0\,
      D => \^addrardaddr\(6),
      O => \stack_ram_loop[6].stack_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => \stack_ram_loop[0].stack_bit_i_1_n_0\
    );
\stack_ram_loop[6].stack_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stack_ram_loop[6].stack_bit_n_0\,
      Q => \stack_ram_loop[6].stack_flop_n_0\,
      R => '0'
    );
\stack_ram_loop[7].stack_bit\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \stack_count_loop[0].register_bit_n_0\,
      A1 => \stack_count_loop[1].register_bit_n_0\,
      A2 => \stack_count_loop[2].register_bit_n_0\,
      A3 => \stack_count_loop[3].register_bit_n_0\,
      A4 => \stack_count_loop[4].register_bit_n_0\,
      D => \^addrardaddr\(7),
      O => \stack_ram_loop[7].stack_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => \stack_ram_loop[0].stack_bit_i_1_n_0\
    );
\stack_ram_loop[7].stack_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stack_ram_loop[7].stack_bit_n_0\,
      Q => \stack_ram_loop[7].stack_flop_n_0\,
      R => '0'
    );
\stack_ram_loop[8].stack_bit\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \stack_count_loop[0].register_bit_n_0\,
      A1 => \stack_count_loop[1].register_bit_n_0\,
      A2 => \stack_count_loop[2].register_bit_n_0\,
      A3 => \stack_count_loop[3].register_bit_n_0\,
      A4 => \stack_count_loop[4].register_bit_n_0\,
      D => \^addrardaddr\(8),
      O => \stack_ram_loop[8].stack_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => \stack_ram_loop[0].stack_bit_i_1_n_0\
    );
\stack_ram_loop[8].stack_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stack_ram_loop[8].stack_bit_n_0\,
      Q => \stack_ram_loop[8].stack_flop_n_0\,
      R => '0'
    );
\stack_ram_loop[9].stack_bit\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \stack_count_loop[0].register_bit_n_0\,
      A1 => \stack_count_loop[1].register_bit_n_0\,
      A2 => \stack_count_loop[2].register_bit_n_0\,
      A3 => \stack_count_loop[3].register_bit_n_0\,
      A4 => \stack_count_loop[4].register_bit_n_0\,
      D => \^addrardaddr\(9),
      O => \stack_ram_loop[9].stack_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => \stack_ram_loop[0].stack_bit_i_1_n_0\
    );
\stack_ram_loop[9].stack_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stack_ram_loop[9].stack_bit_n_0\,
      Q => \stack_ram_loop[9].stack_flop_n_0\,
      R => '0'
    );
\store_loop[0].memory_bit\: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \^store_loop[0].store_flop_0\,
      A1 => \^store_loop[0].store_flop_1\,
      A2 => \^store_loop[0].store_flop_2\,
      A3 => \^store_loop[0].store_flop_3\,
      A4 => port_id(4),
      A5 => port_id(5),
      D => \^q_interna_reg[0]\,
      O => \store_loop[0].memory_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => memory_enable_lut_n_0
    );
\store_loop[0].store_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \store_loop[0].memory_bit_n_0\,
      Q => \store_loop[0].store_flop_n_0\,
      R => '0'
    );
\store_loop[1].memory_bit\: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \^store_loop[0].store_flop_0\,
      A1 => \^store_loop[0].store_flop_1\,
      A2 => \^store_loop[0].store_flop_2\,
      A3 => \^store_loop[0].store_flop_3\,
      A4 => port_id(4),
      A5 => port_id(5),
      D => \^q_interna_reg[1]\,
      O => \store_loop[1].memory_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => memory_enable_lut_n_0
    );
\store_loop[1].store_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \store_loop[1].memory_bit_n_0\,
      Q => \store_loop[1].store_flop_n_0\,
      R => '0'
    );
\store_loop[2].memory_bit\: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \^store_loop[0].store_flop_0\,
      A1 => \^store_loop[0].store_flop_1\,
      A2 => \^store_loop[0].store_flop_2\,
      A3 => \^store_loop[0].store_flop_3\,
      A4 => port_id(4),
      A5 => port_id(5),
      D => \^q_interna_reg[2]\,
      O => \store_loop[2].memory_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => memory_enable_lut_n_0
    );
\store_loop[2].store_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \store_loop[2].memory_bit_n_0\,
      Q => \store_loop[2].store_flop_n_0\,
      R => '0'
    );
\store_loop[3].memory_bit\: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \^store_loop[0].store_flop_0\,
      A1 => \^store_loop[0].store_flop_1\,
      A2 => \^store_loop[0].store_flop_2\,
      A3 => \^store_loop[0].store_flop_3\,
      A4 => port_id(4),
      A5 => port_id(5),
      D => \^q_interna_reg[3]_0\,
      O => \store_loop[3].memory_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => memory_enable_lut_n_0
    );
\store_loop[3].store_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \store_loop[3].memory_bit_n_0\,
      Q => \store_loop[3].store_flop_n_0\,
      R => '0'
    );
\store_loop[4].memory_bit\: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \^store_loop[0].store_flop_0\,
      A1 => \^store_loop[0].store_flop_1\,
      A2 => \^store_loop[0].store_flop_2\,
      A3 => \^store_loop[0].store_flop_3\,
      A4 => port_id(4),
      A5 => port_id(5),
      D => \^q_interna_reg[4]\,
      O => \store_loop[4].memory_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => memory_enable_lut_n_0
    );
\store_loop[4].store_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \store_loop[4].memory_bit_n_0\,
      Q => \store_loop[4].store_flop_n_0\,
      R => '0'
    );
\store_loop[5].memory_bit\: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \^store_loop[0].store_flop_0\,
      A1 => \^store_loop[0].store_flop_1\,
      A2 => \^store_loop[0].store_flop_2\,
      A3 => \^store_loop[0].store_flop_3\,
      A4 => port_id(4),
      A5 => port_id(5),
      D => \^q_interna_reg[5]\,
      O => \store_loop[5].memory_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => memory_enable_lut_n_0
    );
\store_loop[5].store_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \store_loop[5].memory_bit_n_0\,
      Q => \store_loop[5].store_flop_n_0\,
      R => '0'
    );
\store_loop[6].memory_bit\: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \^store_loop[0].store_flop_0\,
      A1 => \^store_loop[0].store_flop_1\,
      A2 => \^store_loop[0].store_flop_2\,
      A3 => \^store_loop[0].store_flop_3\,
      A4 => port_id(4),
      A5 => port_id(5),
      D => \^q_interna_reg[6]\,
      O => \store_loop[6].memory_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => memory_enable_lut_n_0
    );
\store_loop[6].store_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \store_loop[6].memory_bit_n_0\,
      Q => \store_loop[6].store_flop_n_0\,
      R => '0'
    );
\store_loop[7].memory_bit\: unisim.vcomponents.RAM64X1S
    generic map(
      INIT => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => \^store_loop[0].store_flop_0\,
      A1 => \^store_loop[0].store_flop_1\,
      A2 => \^store_loop[0].store_flop_2\,
      A3 => \^store_loop[0].store_flop_3\,
      A4 => port_id(4),
      A5 => port_id(5),
      D => \^q_interna_reg[7]\,
      O => \store_loop[7].memory_bit_n_0\,
      WCLK => clk_IBUF_BUFG,
      WE => memory_enable_lut_n_0
    );
\store_loop[7].store_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \store_loop[7].memory_bit_n_0\,
      Q => \store_loop[7].store_flop_n_0\,
      R => '0'
    );
t_state_lut: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I1,
      I1 => reset_flop2_n_0,
      O => D
    );
toggle_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => D,
      Q => I1,
      R => '0'
    );
valid_move_lut: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => instruction(12),
      I1 => condition_met_lut_n_0,
      O => valid_move_lut_n_0
    );
write_active_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => I1,
      I1 => instruction(15),
      I2 => instruction(17),
      I3 => io_decode_lut_n_0,
      O => write_active_lut_n_0
    );
write_strobe_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => write_active_lut_n_0,
      Q => \^q_interna_reg[3]\,
      R => reset_flop2_n_0
    );
zero_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => flag_enable_lut_n_0,
      D => zero_xor_n_0,
      Q => zero_flag_flop_n_0,
      R => reset_flop2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity kcuart_tx is
  port (
    Tx_complete : out STD_LOGIC;
    uart_OBUF : out STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send_character : in STD_LOGIC;
    en_16_x_baud : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
end kcuart_tx;

architecture STRUCTURE of kcuart_tx is
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal DI : STD_LOGIC;
  signal I0 : STD_LOGIC;
  signal I00_in : STD_LOGIC;
  signal I01_in : STD_LOGIC;
  signal I03_in : STD_LOGIC;
  signal R : STD_LOGIC;
  signal S : STD_LOGIC;
  signal Tx_run_reg_n_0 : STD_LOGIC;
  signal complete_lut_n_0 : STD_LOGIC;
  signal \count_width_loop[0].count_lut_n_0\ : STD_LOGIC;
  signal \count_width_loop[0].lsb_count.count_muxcy_n_0\ : STD_LOGIC;
  signal \count_width_loop[0].lsb_count.count_xor_n_0\ : STD_LOGIC;
  signal \count_width_loop[1].count_lut_n_0\ : STD_LOGIC;
  signal \count_width_loop[1].mask_and_n_0\ : STD_LOGIC;
  signal \count_width_loop[1].upper_count.count_muxcy_n_0\ : STD_LOGIC;
  signal \count_width_loop[1].upper_count.count_xor_n_0\ : STD_LOGIC;
  signal \count_width_loop[2].count_lut_n_0\ : STD_LOGIC;
  signal \count_width_loop[2].mask_and_n_0\ : STD_LOGIC;
  signal \count_width_loop[2].upper_count.count_muxcy_n_0\ : STD_LOGIC;
  signal \count_width_loop[2].upper_count.count_xor_n_0\ : STD_LOGIC;
  signal delay14_srl_n_0 : STD_LOGIC;
  signal hot_state_lut_n_0 : STD_LOGIC;
  signal hot_state_reg_n_0 : STD_LOGIC;
  signal mux2_lut_n_0 : STD_LOGIC;
  signal mux3_lut_n_0 : STD_LOGIC;
  signal mux4_lut_n_0 : STD_LOGIC;
  signal mux5_muxf5_n_0 : STD_LOGIC;
  signal mux6_muxf5_n_0 : STD_LOGIC;
  signal pipeline_serial_i_1_n_0 : STD_LOGIC;
  signal ready_lut_n_0 : STD_LOGIC;
  signal run_lut_n_0 : STD_LOGIC;
  signal start_lut_n_0 : STD_LOGIC;
  signal stop_lut_n_0 : STD_LOGIC;
  signal \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of Tx_bit_reg : label is "FDE";
  attribute box_type : string;
  attribute box_type of Tx_bit_reg : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Tx_complete_reg : label is "FD";
  attribute box_type of Tx_complete_reg : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Tx_run_reg : label is "FDE";
  attribute box_type of Tx_run_reg : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Tx_start_reg : label is "FDE";
  attribute box_type of Tx_start_reg : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Tx_stop_reg : label is "FDE";
  attribute box_type of Tx_stop_reg : label is "PRIMITIVE";
  attribute box_type of complete_lut : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[0].count_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \count_width_loop[0].lsb_count.count_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \count_width_loop[0].lsb_count.count_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \count_width_loop[0].mask_and\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \count_width_loop[0].mask_and\ : label is "LO:O";
  attribute box_type of \count_width_loop[0].mask_and\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[0].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[1].count_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \count_width_loop[1].mask_and\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \count_width_loop[1].mask_and\ : label is "LO:O";
  attribute box_type of \count_width_loop[1].mask_and\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[1].register_bit\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[2].count_lut\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \count_width_loop[2].mask_and\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \count_width_loop[2].mask_and\ : label is "LO:O";
  attribute box_type of \count_width_loop[2].mask_and\ : label is "PRIMITIVE";
  attribute box_type of \count_width_loop[2].register_bit\ : label is "PRIMITIVE";
  attribute box_type of delay14_srl : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of delay14_srl : label is "\uart_tx_inst/kcuart/delay14_srl ";
  attribute box_type of hot_state_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of hot_state_reg : label is "FDE";
  attribute box_type of hot_state_reg : label is "PRIMITIVE";
  attribute box_type of mux1_lut : label is "PRIMITIVE";
  attribute box_type of mux2_lut : label is "PRIMITIVE";
  attribute box_type of mux3_lut : label is "PRIMITIVE";
  attribute box_type of mux4_lut : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of mux5_muxf5 : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP of mux5_muxf5 : label is "S:I2";
  attribute box_type of mux5_muxf5 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of mux6_muxf5 : label is "MUXF5";
  attribute XILINX_TRANSFORM_PINMAP of mux6_muxf5 : label is "S:I2";
  attribute box_type of mux6_muxf5 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of mux7_muxf6 : label is "MUXF6";
  attribute XILINX_TRANSFORM_PINMAP of mux7_muxf6 : label is "S:I2";
  attribute box_type of mux7_muxf6 : label is "PRIMITIVE";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of pipeline_serial : label is "1'b0";
  attribute box_type of pipeline_serial : label is "PRIMITIVE";
  attribute box_type of ready_lut : label is "PRIMITIVE";
  attribute box_type of run_lut : label is "PRIMITIVE";
  attribute box_type of start_lut : label is "PRIMITIVE";
  attribute box_type of stop_lut : label is "PRIMITIVE";
begin
Tx_bit_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_16_x_baud,
      D => delay14_srl_n_0,
      Q => CI,
      R => '0'
    );
Tx_complete_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => complete_lut_n_0,
      Q => Tx_complete,
      R => '0'
    );
Tx_run_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_16_x_baud,
      D => run_lut_n_0,
      Q => Tx_run_reg_n_0,
      R => '0'
    );
Tx_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_16_x_baud,
      D => start_lut_n_0,
      Q => R,
      R => '0'
    );
Tx_stop_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_16_x_baud,
      D => stop_lut_n_0,
      Q => S,
      R => '0'
    );
complete_lut: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_width_loop[2].upper_count.count_muxcy_n_0\,
      I1 => en_16_x_baud,
      O => complete_lut_n_0
    );
\count_width_loop[0].count_lut\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I03_in,
      I1 => Tx_run_reg_n_0,
      O => \count_width_loop[0].count_lut_n_0\
    );
\count_width_loop[0].lsb_count.count_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => \count_width_loop[2].upper_count.count_muxcy_n_0\,
      CO(1) => \count_width_loop[1].upper_count.count_muxcy_n_0\,
      CO(0) => \count_width_loop[0].lsb_count.count_muxcy_n_0\,
      CYINIT => CI,
      DI(3) => \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \count_width_loop[2].mask_and_n_0\,
      DI(1) => \count_width_loop[1].mask_and_n_0\,
      DI(0) => DI,
      O(3) => \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_O_UNCONNECTED\(3),
      O(2) => \count_width_loop[2].upper_count.count_xor_n_0\,
      O(1) => \count_width_loop[1].upper_count.count_xor_n_0\,
      O(0) => \count_width_loop[0].lsb_count.count_xor_n_0\,
      S(3) => \NLW_count_width_loop[0].lsb_count.count_muxcy_CARRY4_S_UNCONNECTED\(3),
      S(2) => \count_width_loop[2].count_lut_n_0\,
      S(1) => \count_width_loop[1].count_lut_n_0\,
      S(0) => \count_width_loop[0].count_lut_n_0\
    );
\count_width_loop[0].mask_and\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I03_in,
      I1 => Tx_run_reg_n_0,
      O => DI
    );
\count_width_loop[0].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_16_x_baud,
      D => \count_width_loop[0].lsb_count.count_xor_n_0\,
      Q => I03_in,
      R => R
    );
\count_width_loop[1].count_lut\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I01_in,
      I1 => Tx_run_reg_n_0,
      O => \count_width_loop[1].count_lut_n_0\
    );
\count_width_loop[1].mask_and\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I01_in,
      I1 => Tx_run_reg_n_0,
      O => \count_width_loop[1].mask_and_n_0\
    );
\count_width_loop[1].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_16_x_baud,
      D => \count_width_loop[1].upper_count.count_xor_n_0\,
      Q => I01_in,
      R => R
    );
\count_width_loop[2].count_lut\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I00_in,
      I1 => Tx_run_reg_n_0,
      O => \count_width_loop[2].count_lut_n_0\
    );
\count_width_loop[2].mask_and\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I00_in,
      I1 => Tx_run_reg_n_0,
      O => \count_width_loop[2].mask_and_n_0\
    );
\count_width_loop[2].register_bit\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_16_x_baud,
      D => \count_width_loop[2].upper_count.count_xor_n_0\,
      Q => I00_in,
      R => R
    );
delay14_srl: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => en_16_x_baud,
      CLK => clk_IBUF_BUFG,
      D => hot_state_reg_n_0,
      Q => delay14_srl_n_0
    );
hot_state_lut: unisim.vcomponents.LUT3
    generic map(
      INIT => X"94"
    )
        port map (
      I0 => S,
      I1 => ready_lut_n_0,
      I2 => CI,
      O => hot_state_lut_n_0
    );
hot_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => en_16_x_baud,
      D => hot_state_lut_n_0,
      Q => hot_state_reg_n_0,
      R => '0'
    );
mux1_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4FF"
    )
        port map (
      I0 => I03_in,
      I1 => data_in(0),
      I2 => data_in(1),
      I3 => Tx_run_reg_n_0,
      O => I0
    );
mux2_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4FF"
    )
        port map (
      I0 => I03_in,
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => Tx_run_reg_n_0,
      O => mux2_lut_n_0
    );
mux3_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4FF"
    )
        port map (
      I0 => I03_in,
      I1 => data_in(4),
      I2 => data_in(5),
      I3 => Tx_run_reg_n_0,
      O => mux3_lut_n_0
    );
mux4_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4FF"
    )
        port map (
      I0 => I03_in,
      I1 => data_in(6),
      I2 => data_in(7),
      I3 => Tx_run_reg_n_0,
      O => mux4_lut_n_0
    );
mux5_muxf5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => I0,
      I1 => mux2_lut_n_0,
      I2 => I01_in,
      O => mux5_muxf5_n_0
    );
mux6_muxf5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => mux3_lut_n_0,
      I1 => mux4_lut_n_0,
      I2 => I01_in,
      O => mux6_muxf5_n_0
    );
mux7_muxf6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => mux5_muxf5_n_0,
      I1 => mux6_muxf5_n_0,
      I2 => I00_in,
      O => D
    );
pipeline_serial: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pipeline_serial_i_1_n_0,
      Q => uart_OBUF,
      R => R
    );
pipeline_serial_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => D,
      O => pipeline_serial_i_1_n_0
    );
ready_lut: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => Tx_run_reg_n_0,
      I1 => R,
      I2 => send_character,
      O => ready_lut_n_0
    );
run_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \count_width_loop[2].upper_count.count_muxcy_n_0\,
      I1 => CI,
      I2 => R,
      I3 => Tx_run_reg_n_0,
      O => run_lut_n_0
    );
start_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0190"
    )
        port map (
      I0 => CI,
      I1 => S,
      I2 => ready_lut_n_0,
      I3 => R,
      O => start_lut_n_0
    );
stop_lut: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0180"
    )
        port map (
      I0 => CI,
      I1 => Tx_run_reg_n_0,
      I2 => \count_width_loop[2].upper_count.count_muxcy_n_0\,
      I3 => S,
      O => stop_lut_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity medio_periodo is
  port (
    \aux_reg[15]\ : out STD_LOGIC;
    half_period : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    reset0_out : in STD_LOGIC
  );
end medio_periodo;

architecture STRUCTURE of medio_periodo is
  signal cont_period : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cont_period[0]_i_1_n_0\ : STD_LOGIC;
  signal \cont_period[1]_i_1_n_0\ : STD_LOGIC;
  signal quarter_period_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cont_period[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cont_period[1]_i_1\ : label is "soft_lutpair19";
begin
\cont_period[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cont_period(0),
      O => \cont_period[0]_i_1_n_0\
    );
\cont_period[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cont_period(0),
      I1 => cont_period(1),
      O => \cont_period[1]_i_1_n_0\
    );
\cont_period_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset0_out,
      D => \cont_period[0]_i_1_n_0\,
      Q => cont_period(0)
    );
\cont_period_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset0_out,
      D => \cont_period[1]_i_1_n_0\,
      Q => cont_period(1)
    );
half_period_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset0_out,
      D => \cont_period[0]_i_1_n_0\,
      Q => half_period
    );
quarter_period_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cont_period(1),
      O => quarter_period_i_2_n_0
    );
quarter_period_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      CLR => reset0_out,
      D => quarter_period_i_2_n_0,
      Q => \aux_reg[15]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux_16_entradas is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    kcpsm6_rom : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_interna_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end mux_16_entradas;

architecture STRUCTURE of mux_16_entradas is
begin
\q_interna[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E4"
    )
        port map (
      I0 => kcpsm6_rom(0),
      I1 => Q(0),
      I2 => \q_interna_reg[3]\(0),
      I3 => kcpsm6_rom(1),
      I4 => kcpsm6_rom(3),
      I5 => kcpsm6_rom(2),
      O => D(0)
    );
\q_interna[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E4"
    )
        port map (
      I0 => kcpsm6_rom(0),
      I1 => Q(1),
      I2 => \q_interna_reg[3]\(1),
      I3 => kcpsm6_rom(1),
      I4 => kcpsm6_rom(3),
      I5 => kcpsm6_rom(2),
      O => D(1)
    );
\q_interna[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E4"
    )
        port map (
      I0 => kcpsm6_rom(0),
      I1 => Q(2),
      I2 => \q_interna_reg[3]\(2),
      I3 => kcpsm6_rom(1),
      I4 => kcpsm6_rom(3),
      I5 => kcpsm6_rom(2),
      O => D(2)
    );
\q_interna[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E4"
    )
        port map (
      I0 => kcpsm6_rom(0),
      I1 => Q(3),
      I2 => \q_interna_reg[3]\(3),
      I3 => kcpsm6_rom(1),
      I4 => kcpsm6_rom(3),
      I5 => kcpsm6_rom(2),
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux_2_entradas is
  port (
    in_port : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q15_in : in STD_LOGIC
  );
end mux_2_entradas;

architecture STRUCTURE of mux_2_entradas is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \alu_mux_loop[0].mux_lut_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \alu_mux_loop[1].mux_lut_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \alu_mux_loop[2].mux_lut_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \alu_mux_loop[3].mux_lut_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \alu_mux_loop[4].mux_lut_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \alu_mux_loop[5].mux_lut_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \alu_mux_loop[6].mux_lut_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \alu_mux_loop[7].mux_lut_i_1\ : label is "soft_lutpair9";
begin
\alu_mux_loop[0].mux_lut_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => Q15_in,
      O => in_port(0)
    );
\alu_mux_loop[1].mux_lut_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q15_in,
      O => in_port(1)
    );
\alu_mux_loop[2].mux_lut_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => Q15_in,
      O => in_port(2)
    );
\alu_mux_loop[3].mux_lut_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(3),
      I1 => Q15_in,
      O => in_port(3)
    );
\alu_mux_loop[4].mux_lut_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(4),
      I1 => Q15_in,
      O => in_port(4)
    );
\alu_mux_loop[5].mux_lut_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(5),
      I1 => Q15_in,
      O => in_port(5)
    );
\alu_mux_loop[6].mux_lut_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(6),
      I1 => Q15_in,
      O => in_port(6)
    );
\alu_mux_loop[7].mux_lut_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(7),
      I1 => Q15_in,
      O => in_port(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity picocode_s7 is
  port (
    instruction : out STD_LOGIC_VECTOR ( 17 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    q_interna_reg : out STD_LOGIC;
    \shift_loop[0].shift_flop\ : out STD_LOGIC;
    q_interna_reg_0 : out STD_LOGIC;
    q_interna_reg_1 : out STD_LOGIC;
    q_interna_reg_2 : out STD_LOGIC;
    q_interna_reg_3 : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    kcpsm6_rom_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    kcpsm6_rom_1 : in STD_LOGIC;
    kcpsm6_rom_2 : in STD_LOGIC;
    kcpsm6_rom_3 : in STD_LOGIC;
    kcpsm6_rom_4 : in STD_LOGIC
  );
end picocode_s7;

architecture STRUCTURE of picocode_s7 is
  signal data_in_b : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \^instruction\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of kcpsm6_rom : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of kcpsm6_rom : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of q_interna_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_interna_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_interna_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_interna_i_1__3\ : label is "soft_lutpair2";
begin
  instruction(17 downto 0) <= \^instruction\(17 downto 0);
kcpsm6_rom: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"00000000000000000000000000000000364E28ADAD1C29DDA7769DDA777402A8",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"8728501247F850122101502751204100121007800600C003C004C002C0010000",
      INIT_01 => X"C700C60086015020460450202104C700C600C6015019460050192102C700C600",
      INIT_02 => X"050004065032490019608301003A05004401C700C600C7285027470850272108",
      INIT_03 => X"0000403BC801B000480018704007CA030A00C301CA030A01C504C402402CC901",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => ADDRARDADDR(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => data_in_b(15 downto 0),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => data_in_b(17 downto 16),
      DOADO(15 downto 0) => \^instruction\(15 downto 0),
      DOBDO(15 downto 0) => data_in_b(15 downto 0),
      DOPADOP(1 downto 0) => \^instruction\(17 downto 16),
      DOPBDOP(1 downto 0) => data_in_b(17 downto 16),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\q_interna[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => kcpsm6_rom_0,
      I1 => Q(0),
      I2 => kcpsm6_rom_1,
      I3 => kcpsm6_rom_2,
      I4 => kcpsm6_rom_3,
      O => D(0)
    );
\q_interna[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => kcpsm6_rom_0,
      I1 => Q(1),
      I2 => kcpsm6_rom_1,
      I3 => kcpsm6_rom_2,
      I4 => kcpsm6_rom_3,
      O => D(1)
    );
\q_interna[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => kcpsm6_rom_0,
      I1 => Q(2),
      I2 => kcpsm6_rom_1,
      I3 => kcpsm6_rom_2,
      I4 => kcpsm6_rom_3,
      O => D(2)
    );
\q_interna[7]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => kcpsm6_rom_0,
      I1 => Q(3),
      I2 => kcpsm6_rom_1,
      I3 => kcpsm6_rom_2,
      I4 => kcpsm6_rom_3,
      O => D(3)
    );
q_interna_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => kcpsm6_rom_1,
      I1 => kcpsm6_rom_3,
      I2 => kcpsm6_rom_4,
      I3 => kcpsm6_rom_2,
      I4 => kcpsm6_rom_0,
      O => q_interna_reg_0
    );
\q_interna_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => kcpsm6_rom_2,
      I1 => kcpsm6_rom_1,
      I2 => kcpsm6_rom_0,
      I3 => kcpsm6_rom_3,
      I4 => kcpsm6_rom_4,
      O => q_interna_reg_1
    );
\q_interna_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => kcpsm6_rom_3,
      I1 => kcpsm6_rom_0,
      I2 => kcpsm6_rom_4,
      I3 => kcpsm6_rom_1,
      I4 => kcpsm6_rom_2,
      O => q_interna_reg_2
    );
\q_interna_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => kcpsm6_rom_0,
      I1 => kcpsm6_rom_3,
      I2 => kcpsm6_rom_4,
      I3 => kcpsm6_rom_1,
      I4 => kcpsm6_rom_2,
      O => q_interna_reg_3
    );
\q_interna_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => kcpsm6_rom_3,
      I1 => kcpsm6_rom_1,
      I2 => kcpsm6_rom_2,
      I3 => kcpsm6_rom_0,
      I4 => kcpsm6_rom_4,
      O => q_interna_reg
    );
\shift_loop[0].shift_flop_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction\(17),
      O => \shift_loop[0].shift_flop\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity registro_srl is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset0_out : in STD_LOGIC;
    \estado_actual_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    quarter_period_reg : in STD_LOGIC
  );
end registro_srl;

architecture STRUCTURE of registro_srl is
begin
\aux_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(0),
      Q => Q(0),
      R => reset0_out
    );
\aux_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(10),
      Q => Q(10),
      R => reset0_out
    );
\aux_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(11),
      Q => Q(11),
      R => reset0_out
    );
\aux_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(12),
      Q => Q(12),
      R => reset0_out
    );
\aux_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(13),
      Q => Q(13),
      R => reset0_out
    );
\aux_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(14),
      Q => Q(14),
      R => reset0_out
    );
\aux_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(15),
      Q => Q(15),
      R => reset0_out
    );
\aux_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(1),
      Q => Q(1),
      R => reset0_out
    );
\aux_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(2),
      Q => Q(2),
      R => reset0_out
    );
\aux_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(3),
      Q => Q(3),
      R => reset0_out
    );
\aux_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(4),
      Q => Q(4),
      R => reset0_out
    );
\aux_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(5),
      Q => Q(5),
      R => reset0_out
    );
\aux_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(6),
      Q => Q(6),
      R => reset0_out
    );
\aux_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(7),
      Q => Q(7),
      R => reset0_out
    );
\aux_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(8),
      Q => Q(8),
      R => reset0_out
    );
\aux_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => quarter_period_reg,
      CE => \estado_actual_reg[0]\(0),
      D => D(9),
      Q => Q(9),
      R => reset0_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sin_lut is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end sin_lut;

architecture STRUCTURE of sin_lut is
  signal NLW_dout_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_dout_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_dout_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dout_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of dout_reg : label is "INDEPENDENT";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of dout_reg : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of dout_reg : label is "lut/dout";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of dout_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of dout_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of dout_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of dout_reg : label is 35;
begin
dout_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"005100540057005A005D006000630067006A006D0070007300760079007C007F",
      INIT_01 => X"0027002A002C002E0031003300360038003B003E0040004300460049004C004F",
      INIT_02 => X"000B000C000D000F001000120014001500170019001B001D001F002100230025",
      INIT_03 => X"0000000000000001000100010002000200030004000400050006000700080009",
      INIT_04 => X"0009000800070006000500040003000300020002000100010000000000000000",
      INIT_05 => X"002400220020001E001C001A001800160014001300110010000E000D000B000A",
      INIT_06 => X"004D004A004700450042003F003C003A0037003500320030002D002B00280026",
      INIT_07 => X"007E007B007800750071006E006B006800650062005F005C0059005600530050",
      INIT_08 => X"00AF00AC00A900A600A300A0009D009A009700940091008E008A008700840081",
      INIT_09 => X"00D900D700D400D200CF00CD00CA00C800C500C300C000BD00BA00B800B500B2",
      INIT_0A => X"00F500F400F200F100EF00EE00EC00EB00E900E700E500E300E100DF00DD00DB",
      INIT_0B => X"00FF00FF00FF00FF00FE00FE00FD00FD00FC00FC00FB00FA00F900F800F700F6",
      INIT_0C => X"00F600F700F800F900FA00FB00FB00FC00FD00FD00FE00FE00FE00FF00FF00FF",
      INIT_0D => X"00DA00DC00DE00E000E200E400E600E800EA00EB00ED00EF00F000F200F300F4",
      INIT_0E => X"00B000B300B600B900BC00BF00C100C400C700C900CC00CE00D100D300D500D8",
      INIT_0F => X"0080008300860089008C008F009200950098009C009F00A200A500A800AB00AE",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 4) => Q(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"0000000011111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 8) => NLW_dout_reg_DOADO_UNCONNECTED(15 downto 8),
      DOADO(7 downto 0) => D(7 downto 0),
      DOBDO(15 downto 0) => NLW_dout_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_dout_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_dout_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity unidad_control is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset0_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \aux_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    busy_OBUF : out STD_LOGIC;
    sclk_both_dac_OBUF : out STD_LOGIC;
    end_of_conv_OBUF : out STD_LOGIC;
    half_period_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    sync_both_dac_OBUF : out STD_LOGIC;
    entrada_t_1_reg : in STD_LOGIC;
    entrada_t_1_reg_0 : in STD_LOGIC;
    \q_interna_reg[0]\ : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    clk_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \aux_reg[14]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \q_interna_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    entrada_s_aux : in STD_LOGIC;
    entrada_t_1 : in STD_LOGIC;
    entrada_s_aux_0 : in STD_LOGIC;
    entrada_t_1_1 : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end unidad_control;

architecture STRUCTURE of unidad_control is
  signal estado_actual : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal estado_siguiente : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \aux[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \aux[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \aux[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \aux[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \aux[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \aux[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \aux[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \aux[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \aux[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \aux[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \aux[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of busy_OBUF_inst_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of end_of_conv_OBUF_inst_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of quarter_period_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of quarter_period_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of sclk_both_dac_OBUF_inst_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of sync_both_dac_OBUF_inst_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \temp_reg[4]_i_2\ : label is "soft_lutpair10";
begin
\aux[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => Q(0),
      I1 => estado_actual(0),
      I2 => estado_actual(1),
      I3 => estado_actual(2),
      O => D(0)
    );
\aux[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \aux_reg[14]\(9),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      I3 => estado_actual(0),
      I4 => \q_interna_reg[3]\(2),
      O => D(10)
    );
\aux[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \aux_reg[14]\(10),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      I3 => estado_actual(0),
      I4 => \q_interna_reg[3]\(3),
      O => D(11)
    );
\aux[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD00"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      I2 => estado_actual(2),
      I3 => \aux_reg[14]\(11),
      O => D(12)
    );
\aux[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD00"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      I2 => estado_actual(2),
      I3 => \aux_reg[14]\(12),
      O => D(13)
    );
\aux[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD00"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      I2 => estado_actual(2),
      I3 => \aux_reg[14]\(13),
      O => D(14)
    );
\aux[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C2"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      I2 => estado_actual(2),
      O => \aux_reg[0]\(0)
    );
\aux[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD00"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      I2 => estado_actual(2),
      I3 => \aux_reg[14]\(14),
      O => D(15)
    );
\aux[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \aux_reg[14]\(0),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      I3 => estado_actual(0),
      I4 => Q(1),
      O => D(1)
    );
\aux[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \aux_reg[14]\(1),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      I3 => estado_actual(0),
      I4 => Q(2),
      O => D(2)
    );
\aux[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \aux_reg[14]\(2),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      I3 => estado_actual(0),
      I4 => Q(3),
      O => D(3)
    );
\aux[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \aux_reg[14]\(3),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      I3 => estado_actual(0),
      I4 => Q(4),
      O => D(4)
    );
\aux[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \aux_reg[14]\(4),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      I3 => estado_actual(0),
      I4 => Q(5),
      O => D(5)
    );
\aux[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \aux_reg[14]\(5),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      I3 => estado_actual(0),
      I4 => Q(6),
      O => D(6)
    );
\aux[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \aux_reg[14]\(6),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      I3 => estado_actual(0),
      I4 => Q(7),
      O => D(7)
    );
\aux[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \aux_reg[14]\(7),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      I3 => estado_actual(0),
      I4 => \q_interna_reg[3]\(0),
      O => D(8)
    );
\aux[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \aux_reg[14]\(8),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      I3 => estado_actual(0),
      I4 => \q_interna_reg[3]\(1),
      O => D(9)
    );
busy_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C2"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(1),
      I2 => estado_actual(0),
      O => busy_OBUF
    );
end_of_conv_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(2),
      O => end_of_conv_OBUF
    );
\estado_actual[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"330133CF330133C0"
    )
        port map (
      I0 => entrada_t_1_reg,
      I1 => entrada_t_1_reg_0,
      I2 => estado_actual(0),
      I3 => estado_actual(1),
      I4 => estado_actual(2),
      I5 => \q_interna_reg[0]\,
      O => estado_siguiente(0)
    );
\estado_actual[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBAB3333AAAA"
    )
        port map (
      I0 => estado_actual(1),
      I1 => entrada_t_1_reg_0,
      I2 => entrada_s_aux_0,
      I3 => entrada_t_1_1,
      I4 => estado_actual(0),
      I5 => estado_actual(2),
      O => estado_siguiente(1)
    );
\estado_actual[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE0E2222"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(0),
      I2 => entrada_s_aux,
      I3 => entrada_t_1,
      I4 => estado_actual(1),
      O => estado_siguiente(2)
    );
\estado_actual_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => estado_siguiente(0),
      Q => estado_actual(0)
    );
\estado_actual_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => estado_siguiente(1),
      Q => estado_actual(1)
    );
\estado_actual_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => estado_siguiente(2),
      Q => estado_actual(2)
    );
quarter_period_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(0),
      I2 => estado_actual(1),
      O => half_period_reg(0)
    );
quarter_period_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      I2 => estado_actual(2),
      I3 => reset_IBUF,
      O => reset0_out
    );
sclk_both_dac_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      O => sclk_both_dac_OBUF
    );
sync_both_dac_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      I2 => estado_actual(2),
      O => sync_both_dac_OBUF
    );
\temp_reg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0303070"
    )
        port map (
      I0 => estado_actual(2),
      I1 => reset_IBUF,
      I2 => clk_IBUF,
      I3 => estado_actual(0),
      I4 => estado_actual(1),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity picoblaze3_empotrado_s7 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    q_interna_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    q_interna_reg_0 : out STD_LOGIC;
    out_port : out STD_LOGIC_VECTOR ( 7 downto 0 );
    write_strobe : out STD_LOGIC;
    q_interna_reg_1 : out STD_LOGIC;
    q_interna_reg_2 : out STD_LOGIC;
    q_interna_reg_3 : out STD_LOGIC;
    q_interna_reg_4 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_interna_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_interna_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_interna_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_port : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q14_in : in STD_LOGIC;
    Q13_in : in STD_LOGIC;
    Q12_in : in STD_LOGIC;
    Q10_in : in STD_LOGIC
  );
end picoblaze3_empotrado_s7;

architecture STRUCTURE of picoblaze3_empotrado_s7 is
  signal address : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal instruction : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal memoria_de_programa_n_23 : STD_LOGIC;
  signal \^q_interna_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  q_interna_reg(4 downto 0) <= \^q_interna_reg\(4 downto 0);
memoria_de_programa: entity work.picocode_s7
     port map (
      ADDRARDADDR(9 downto 0) => address(9 downto 0),
      D(3 downto 0) => D(3 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      instruction(17 downto 0) => instruction(17 downto 0),
      kcpsm6_rom_0 => \^q_interna_reg\(0),
      kcpsm6_rom_1 => \^q_interna_reg\(1),
      kcpsm6_rom_2 => \^q_interna_reg\(3),
      kcpsm6_rom_3 => \^q_interna_reg\(2),
      kcpsm6_rom_4 => \^q_interna_reg\(4),
      q_interna_reg => q_interna_reg_0,
      q_interna_reg_0 => q_interna_reg_1,
      q_interna_reg_1 => q_interna_reg_2,
      q_interna_reg_2 => q_interna_reg_3,
      q_interna_reg_3 => q_interna_reg_4,
      \shift_loop[0].shift_flop\ => memoria_de_programa_n_23
    );
picoblaze3: entity work.kcpsm3
     port map (
      ADDRARDADDR(9 downto 0) => address(9 downto 0),
      AR(0) => AR(0),
      E(0) => E(0),
      Q10_in => Q10_in,
      Q12_in => Q12_in,
      Q13_in => Q13_in,
      Q14_in => Q14_in,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      in_port(7 downto 0) => in_port(7 downto 0),
      instruction(17 downto 0) => instruction(17 downto 0),
      kcpsm6_rom => memoria_de_programa_n_23,
      q_interna_reg => \^q_interna_reg\(4),
      \q_interna_reg[0]\ => out_port(0),
      \q_interna_reg[1]\ => out_port(1),
      \q_interna_reg[2]\ => out_port(2),
      \q_interna_reg[3]\ => write_strobe,
      \q_interna_reg[3]_0\ => out_port(3),
      \q_interna_reg[3]_1\(0) => \q_interna_reg[3]\(0),
      \q_interna_reg[4]\ => out_port(4),
      \q_interna_reg[5]\ => out_port(5),
      \q_interna_reg[6]\ => out_port(6),
      \q_interna_reg[7]\ => out_port(7),
      \q_interna_reg[7]_0\(0) => \q_interna_reg[7]\(0),
      \q_interna_reg[7]_1\(0) => \q_interna_reg[7]_0\(0),
      \store_loop[0].store_flop_0\ => \^q_interna_reg\(0),
      \store_loop[0].store_flop_1\ => \^q_interna_reg\(1),
      \store_loop[0].store_flop_2\ => \^q_interna_reg\(2),
      \store_loop[0].store_flop_3\ => \^q_interna_reg\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity selec_16_entradas_con_reg_y_bypass is
  port (
    in_port : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q15_in : in STD_LOGIC;
    kcpsm6_rom : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_interna_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end selec_16_entradas_con_reg_y_bypass;

architecture STRUCTURE of selec_16_entradas_con_reg_y_bypass is
  signal mux_puertos_entrada_n_0 : STD_LOGIC;
  signal mux_puertos_entrada_n_1 : STD_LOGIC;
  signal mux_puertos_entrada_n_2 : STD_LOGIC;
  signal mux_puertos_entrada_n_3 : STD_LOGIC;
  signal registro_puertos_n_0 : STD_LOGIC;
  signal registro_puertos_n_1 : STD_LOGIC;
  signal registro_puertos_n_2 : STD_LOGIC;
  signal registro_puertos_n_3 : STD_LOGIC;
  signal registro_puertos_n_4 : STD_LOGIC;
  signal registro_puertos_n_5 : STD_LOGIC;
  signal registro_puertos_n_6 : STD_LOGIC;
  signal registro_puertos_n_7 : STD_LOGIC;
begin
multiplexor_salida: entity work.mux_2_entradas
     port map (
      Q(7) => registro_puertos_n_0,
      Q(6) => registro_puertos_n_1,
      Q(5) => registro_puertos_n_2,
      Q(4) => registro_puertos_n_3,
      Q(3) => registro_puertos_n_4,
      Q(2) => registro_puertos_n_5,
      Q(1) => registro_puertos_n_6,
      Q(0) => registro_puertos_n_7,
      Q15_in => Q15_in,
      in_port(7 downto 0) => in_port(7 downto 0)
    );
mux_puertos_entrada: entity work.mux_16_entradas
     port map (
      D(3) => mux_puertos_entrada_n_0,
      D(2) => mux_puertos_entrada_n_1,
      D(1) => mux_puertos_entrada_n_2,
      D(0) => mux_puertos_entrada_n_3,
      Q(3 downto 0) => Q(3 downto 0),
      kcpsm6_rom(3 downto 0) => kcpsm6_rom(3 downto 0),
      \q_interna_reg[3]\(3 downto 0) => \q_interna_reg[3]\(3 downto 0)
    );
registro_puertos: entity work.biestable_D_8_bits_12
     port map (
      AR(0) => AR(0),
      D(7 downto 4) => D(3 downto 0),
      D(3) => mux_puertos_entrada_n_0,
      D(2) => mux_puertos_entrada_n_1,
      D(1) => mux_puertos_entrada_n_2,
      D(0) => mux_puertos_entrada_n_3,
      Q(7) => registro_puertos_n_0,
      Q(6) => registro_puertos_n_1,
      Q(5) => registro_puertos_n_2,
      Q(4) => registro_puertos_n_3,
      Q(3) => registro_puertos_n_4,
      Q(2) => registro_puertos_n_5,
      Q(1) => registro_puertos_n_6,
      Q(0) => registro_puertos_n_7,
      clk_IBUF_BUFG => clk_IBUF_BUFG
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity selec_16_salidas_con_reg_y_mem_esc_lect is
  port (
    Q15_in : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q14_in : out STD_LOGIC;
    Q13_in : out STD_LOGIC;
    Q12_in : out STD_LOGIC;
    Q10_in : out STD_LOGIC;
    \q_interna_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    kcpsm6_rom : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    kcpsm6_rom_0 : in STD_LOGIC;
    kcpsm6_rom_1 : in STD_LOGIC;
    kcpsm6_rom_2 : in STD_LOGIC;
    kcpsm6_rom_3 : in STD_LOGIC;
    kcpsm6_rom_4 : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    write_strobe : in STD_LOGIC;
    \q_interna_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end selec_16_salidas_con_reg_y_mem_esc_lect;

architecture STRUCTURE of selec_16_salidas_con_reg_y_mem_esc_lect is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Q11_in : STD_LOGIC;
begin
  AR(0) <= \^ar\(0);
pipeline_0: entity work.biestable_D_1_bit
     port map (
      Q14_in => Q14_in,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      kcpsm6_rom => kcpsm6_rom_0,
      reset => \^ar\(0)
    );
pipeline_1: entity work.biestable_D_1_bit_7
     port map (
      Q13_in => Q13_in,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      kcpsm6_rom => kcpsm6_rom_1,
      reset => \^ar\(0)
    );
pipeline_2: entity work.biestable_D_1_bit_8
     port map (
      Q12_in => Q12_in,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      kcpsm6_rom => kcpsm6_rom_2,
      reset => \^ar\(0)
    );
pipeline_3: entity work.biestable_D_1_bit_9
     port map (
      Q11_in => Q11_in,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      kcpsm6_rom => kcpsm6_rom_3,
      reset => \^ar\(0)
    );
pipeline_4: entity work.biestable_D_1_bit_10
     port map (
      Q10_in => Q10_in,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      kcpsm6_rom => kcpsm6_rom_4,
      reset => \^ar\(0)
    );
reg_mem_habilitada: entity work.biestable_D_1_bit_11
     port map (
      Q15_in => Q15_in,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      kcpsm6_rom(0) => kcpsm6_rom(0),
      reset => \^ar\(0)
    );
reg_puerto_salida: entity work.biestable_D_8_bits
     port map (
      D(7 downto 0) => D(7 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      Q11_in => Q11_in,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \q_interna_reg[0]_0\ => \^ar\(0),
      \q_interna_reg[0]_1\ => \q_interna_reg[0]\,
      \q_interna_reg[0]_2\ => \q_interna_reg[0]_0\,
      reset_IBUF => reset_IBUF,
      write_strobe => write_strobe
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_tx is
  port (
    uart_OBUF : out STD_LOGIC;
    en_16_x_baud : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end uart_tx;

architecture STRUCTURE of uart_tx is
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_present : STD_LOGIC;
  signal read : STD_LOGIC;
begin
buf: entity work.bbfifo_16x8
     port map (
      AR(0) => AR(0),
      Tx_complete => read,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      data_present => data_present
    );
kcuart: entity work.kcuart_tx
     port map (
      Tx_complete => read,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      data_in(7 downto 0) => data_out(7 downto 0),
      en_16_x_baud => en_16_x_baud,
      send_character => data_present,
      uart_OBUF => uart_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity unidad_operativa is
  port (
    CLK : out STD_LOGIC;
    entrada_s_aux : out STD_LOGIC;
    entrada_t_1 : out STD_LOGIC;
    \estado_actual_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    reset0_out : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \estado_actual_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \estado_actual_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end unidad_operativa;

architecture STRUCTURE of unidad_operativa is
  signal \^clk\ : STD_LOGIC;
  signal entrada : STD_LOGIC;
  signal half_period : STD_LOGIC;
begin
  CLK <= \^clk\;
contador_8_bits_inst: entity work.contador_8_bits
     port map (
      entrada => entrada,
      \estado_actual_reg[2]\(0) => \estado_actual_reg[2]\(0),
      reset0_out => reset0_out
    );
detector_flancos_inst_0: entity work.detector_flancos_6
     port map (
      AR(0) => AR(0),
      entrada => entrada,
      entrada_s_aux => entrada_s_aux,
      entrada_t_1 => entrada_t_1,
      \estado_actual_reg[0]\ => \estado_actual_reg[0]\,
      half_period => half_period
    );
half_period_inst: entity work.medio_periodo
     port map (
      E(0) => E(0),
      \aux_reg[15]\ => \^clk\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      half_period => half_period,
      reset0_out => reset0_out
    );
registro_srl_inst_0: entity work.registro_srl
     port map (
      D(15 downto 0) => D(15 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      \estado_actual_reg[0]\(0) => \estado_actual_reg[0]_0\(0),
      quarter_period_reg => \^clk\,
      reset0_out => reset0_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmisor_spi is
  port (
    busy_OBUF : out STD_LOGIC;
    sclk_both_dac_OBUF : out STD_LOGIC;
    end_of_conv_OBUF : out STD_LOGIC;
    sync_both_dac_OBUF : out STD_LOGIC;
    sdin_first_dac : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_interna_reg[0]\ : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    clk_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_interna_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end transmisor_spi;

architecture STRUCTURE of transmisor_spi is
  signal aux : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal ce_timer : STD_LOGIC;
  signal \detector_flancos_inst_0/entrada_s_aux\ : STD_LOGIC;
  signal \detector_flancos_inst_0/entrada_t_1\ : STD_LOGIC;
  signal detector_flancos_inst_n_2 : STD_LOGIC;
  signal entrada_s_aux : STD_LOGIC;
  signal entrada_t_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal quarter_period : STD_LOGIC;
  signal reset0_out : STD_LOGIC;
  signal unidad_control_inst_n_0 : STD_LOGIC;
  signal unidad_control_inst_n_18 : STD_LOGIC;
  signal unidad_operativa_inst_n_3 : STD_LOGIC;
begin
detector_flancos_inst: entity work.detector_flancos
     port map (
      AR(0) => AR(0),
      CLK => quarter_period,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      entrada_s_aux => entrada_s_aux,
      entrada_t_1 => entrada_t_1,
      \estado_actual_reg[0]\ => detector_flancos_inst_n_2
    );
unidad_control_inst: entity work.unidad_control
     port map (
      AR(0) => AR(0),
      D(15 downto 0) => p_1_in(15 downto 0),
      E(0) => unidad_control_inst_n_0,
      Q(7 downto 0) => Q(7 downto 0),
      \aux_reg[0]\(0) => unidad_control_inst_n_18,
      \aux_reg[14]\(14 downto 0) => aux(14 downto 0),
      busy_OBUF => busy_OBUF,
      clk_IBUF => clk_IBUF,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      end_of_conv_OBUF => end_of_conv_OBUF,
      entrada_s_aux => entrada_s_aux,
      entrada_s_aux_0 => \detector_flancos_inst_0/entrada_s_aux\,
      entrada_t_1 => entrada_t_1,
      entrada_t_1_1 => \detector_flancos_inst_0/entrada_t_1\,
      entrada_t_1_reg => unidad_operativa_inst_n_3,
      entrada_t_1_reg_0 => detector_flancos_inst_n_2,
      half_period_reg(0) => ce_timer,
      \q_interna_reg[0]\ => \q_interna_reg[0]\,
      \q_interna_reg[3]\(3 downto 0) => \q_interna_reg[3]\(3 downto 0),
      reset0_out => reset0_out,
      reset_IBUF => reset_IBUF,
      sclk_both_dac_OBUF => sclk_both_dac_OBUF,
      sync_both_dac_OBUF => sync_both_dac_OBUF
    );
unidad_operativa_inst: entity work.unidad_operativa
     port map (
      AR(0) => AR(0),
      CLK => quarter_period,
      D(15 downto 0) => p_1_in(15 downto 0),
      E(0) => ce_timer,
      Q(15) => sdin_first_dac(0),
      Q(14 downto 0) => aux(14 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      entrada_s_aux => \detector_flancos_inst_0/entrada_s_aux\,
      entrada_t_1 => \detector_flancos_inst_0/entrada_t_1\,
      \estado_actual_reg[0]\ => unidad_operativa_inst_n_3,
      \estado_actual_reg[0]_0\(0) => unidad_control_inst_n_18,
      \estado_actual_reg[2]\(0) => unidad_control_inst_n_0,
      reset0_out => reset0_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sistema_entero is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    BTNL : in STD_LOGIC;
    BTND : in STD_LOGIC;
    BTNR : in STD_LOGIC;
    BTNU : in STD_LOGIC;
    uart : out STD_LOGIC;
    end_of_conv : out STD_LOGIC;
    busy : out STD_LOGIC;
    sclk_both_dac : out STD_LOGIC;
    sync_both_dac : out STD_LOGIC;
    sdin_first_dac : out STD_LOGIC;
    sdin_second_dac : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sistema_entero : entity is true;
end sistema_entero;

architecture STRUCTURE of sistema_entero is
  signal BTND_IBUF : STD_LOGIC;
  signal BTNL_IBUF : STD_LOGIC;
  signal BTNR_IBUF : STD_LOGIC;
  signal BTNU_IBUF : STD_LOGIC;
  signal FD8C3_btn_n_0 : STD_LOGIC;
  signal FD8C3_btn_n_1 : STD_LOGIC;
  signal FD8C3_btn_n_2 : STD_LOGIC;
  signal FD8C3_btn_n_3 : STD_LOGIC;
  signal FD8C3_lut_in_n_0 : STD_LOGIC;
  signal FD8C3_lut_in_n_1 : STD_LOGIC;
  signal FD8C3_lut_in_n_2 : STD_LOGIC;
  signal FD8C3_lut_in_n_3 : STD_LOGIC;
  signal FD8C3_lut_in_n_4 : STD_LOGIC;
  signal FD8C3_lut_in_n_5 : STD_LOGIC;
  signal FD8C3_lut_in_n_6 : STD_LOGIC;
  signal FD8C3_lut_in_n_7 : STD_LOGIC;
  signal FD8C3_lut_out_n_0 : STD_LOGIC;
  signal FD8C3_lut_out_n_1 : STD_LOGIC;
  signal FD8C3_lut_out_n_2 : STD_LOGIC;
  signal FD8C3_lut_out_n_3 : STD_LOGIC;
  signal FD8C3_lut_out_n_4 : STD_LOGIC;
  signal FD8C3_lut_out_n_5 : STD_LOGIC;
  signal FD8C3_lut_out_n_6 : STD_LOGIC;
  signal FD8C3_lut_out_n_7 : STD_LOGIC;
  signal FD8C3_spi1_n_0 : STD_LOGIC;
  signal FD8C3_spi1_n_1 : STD_LOGIC;
  signal FD8C3_spi1_n_2 : STD_LOGIC;
  signal FD8C3_spi1_n_3 : STD_LOGIC;
  signal FD8C3_spi1_n_4 : STD_LOGIC;
  signal FD8C3_spi1_n_5 : STD_LOGIC;
  signal FD8C3_spi1_n_6 : STD_LOGIC;
  signal FD8C3_spi1_n_7 : STD_LOGIC;
  signal FD8C3_spi2_n_0 : STD_LOGIC;
  signal FD8C3_spi2_n_1 : STD_LOGIC;
  signal FD8C3_spi2_n_2 : STD_LOGIC;
  signal FD8C3_spi2_n_3 : STD_LOGIC;
  signal FD8C3_start_conv_n_0 : STD_LOGIC;
  signal Q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Q10_in : STD_LOGIC;
  signal Q12_in : STD_LOGIC;
  signal Q13_in : STD_LOGIC;
  signal Q14_in : STD_LOGIC;
  signal Q15_in : STD_LOGIC;
  signal busy_OBUF : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal ce0_out : STD_LOGIC;
  signal ce2_out : STD_LOGIC;
  signal ce3_out : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal \dout_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal en_16_x_baud : STD_LOGIC;
  signal end_of_conv_OBUF : STD_LOGIC;
  signal in_port : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal out_port : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal picoblaze3_empotrado_s7_inst_n_0 : STD_LOGIC;
  signal picoblaze3_empotrado_s7_inst_n_1 : STD_LOGIC;
  signal picoblaze3_empotrado_s7_inst_n_19 : STD_LOGIC;
  signal picoblaze3_empotrado_s7_inst_n_2 : STD_LOGIC;
  signal picoblaze3_empotrado_s7_inst_n_20 : STD_LOGIC;
  signal picoblaze3_empotrado_s7_inst_n_21 : STD_LOGIC;
  signal picoblaze3_empotrado_s7_inst_n_22 : STD_LOGIC;
  signal picoblaze3_empotrado_s7_inst_n_3 : STD_LOGIC;
  signal picoblaze3_empotrado_s7_inst_n_9 : STD_LOGIC;
  signal port_id : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal q_interna : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reset_IBUF : STD_LOGIC;
  signal sclk_both_dac_OBUF : STD_LOGIC;
  signal sdin_first_dac_OBUF : STD_LOGIC;
  signal selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1 : STD_LOGIC;
  signal selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_6 : STD_LOGIC;
  signal sync_both_dac_OBUF : STD_LOGIC;
  signal uart_OBUF : STD_LOGIC;
  signal write_strobe : STD_LOGIC;
begin
BTND_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => BTND,
      O => BTND_IBUF
    );
BTNL_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => BTNL,
      O => BTNL_IBUF
    );
BTNR_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => BTNR,
      O => BTNR_IBUF
    );
BTNU_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => BTNU,
      O => BTNU_IBUF
    );
FD8C3_btn: entity work.FD8C3
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      D(3) => BTNR_IBUF,
      D(2) => BTNU_IBUF,
      D(1) => BTND_IBUF,
      D(0) => BTNL_IBUF,
      Q(3) => FD8C3_btn_n_0,
      Q(2) => FD8C3_btn_n_1,
      Q(1) => FD8C3_btn_n_2,
      Q(0) => FD8C3_btn_n_3,
      clk_IBUF_BUFG => clk_IBUF_BUFG
    );
FD8C3_lut_in: entity work.FD8C3_0
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      E(0) => ce3_out,
      Q(7) => FD8C3_lut_in_n_0,
      Q(6) => FD8C3_lut_in_n_1,
      Q(5) => FD8C3_lut_in_n_2,
      Q(4) => FD8C3_lut_in_n_3,
      Q(3) => FD8C3_lut_in_n_4,
      Q(2) => FD8C3_lut_in_n_5,
      Q(1) => FD8C3_lut_in_n_6,
      Q(0) => FD8C3_lut_in_n_7,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \q_interna_reg[7]_0\(7 downto 0) => q_interna(7 downto 0)
    );
FD8C3_lut_out: entity work.FD8C3_1
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      D(7 downto 0) => \dout_reg__0\(7 downto 0),
      Q(7) => FD8C3_lut_out_n_0,
      Q(6) => FD8C3_lut_out_n_1,
      Q(5) => FD8C3_lut_out_n_2,
      Q(4) => FD8C3_lut_out_n_3,
      Q(3) => FD8C3_lut_out_n_4,
      Q(2) => FD8C3_lut_out_n_5,
      Q(1) => FD8C3_lut_out_n_6,
      Q(0) => FD8C3_lut_out_n_7,
      clk_IBUF_BUFG => clk_IBUF_BUFG
    );
FD8C3_spi1: entity work.FD8C3_2
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      E(0) => ce,
      Q(7) => FD8C3_spi1_n_0,
      Q(6) => FD8C3_spi1_n_1,
      Q(5) => FD8C3_spi1_n_2,
      Q(4) => FD8C3_spi1_n_3,
      Q(3) => FD8C3_spi1_n_4,
      Q(2) => FD8C3_spi1_n_5,
      Q(1) => FD8C3_spi1_n_6,
      Q(0) => FD8C3_spi1_n_7,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \q_interna_reg[7]_0\(7 downto 0) => q_interna(7 downto 0)
    );
FD8C3_spi2: entity work.FD8C3_3
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      E(0) => ce0_out,
      Q(3) => FD8C3_spi2_n_0,
      Q(2) => FD8C3_spi2_n_1,
      Q(1) => FD8C3_spi2_n_2,
      Q(0) => FD8C3_spi2_n_3,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \q_interna_reg[3]_0\(3 downto 0) => q_interna(3 downto 0)
    );
FD8C3_start_conv: entity work.FD8C3_4
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \estado_actual_reg[0]\ => FD8C3_start_conv_n_0,
      \q_interna_reg[0]_0\ => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_6
    );
FD8C3_uart: entity work.FD8C3_5
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      E(0) => ce2_out,
      Q(7 downto 0) => Q(7 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \q_interna_reg[7]_0\(7 downto 0) => q_interna(7 downto 0)
    );
busy_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => busy_OBUF,
      O => busy
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
end_of_conv_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => end_of_conv_OBUF,
      O => end_of_conv
    );
generador_baudios_inst: entity work.generador_baudios
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      en_16_x_baud => en_16_x_baud
    );
lut: entity work.sin_lut
     port map (
      D(7 downto 0) => \dout_reg__0\(7 downto 0),
      Q(7) => FD8C3_lut_in_n_0,
      Q(6) => FD8C3_lut_in_n_1,
      Q(5) => FD8C3_lut_in_n_2,
      Q(4) => FD8C3_lut_in_n_3,
      Q(3) => FD8C3_lut_in_n_4,
      Q(2) => FD8C3_lut_in_n_5,
      Q(1) => FD8C3_lut_in_n_6,
      Q(0) => FD8C3_lut_in_n_7,
      clk_IBUF_BUFG => clk_IBUF_BUFG
    );
picoblaze3_empotrado_s7_inst: entity work.picoblaze3_empotrado_s7
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      D(3) => picoblaze3_empotrado_s7_inst_n_0,
      D(2) => picoblaze3_empotrado_s7_inst_n_1,
      D(1) => picoblaze3_empotrado_s7_inst_n_2,
      D(0) => picoblaze3_empotrado_s7_inst_n_3,
      E(0) => ce2_out,
      Q(3) => FD8C3_lut_out_n_0,
      Q(2) => FD8C3_lut_out_n_1,
      Q(1) => FD8C3_lut_out_n_2,
      Q(0) => FD8C3_lut_out_n_3,
      Q10_in => Q10_in,
      Q12_in => Q12_in,
      Q13_in => Q13_in,
      Q14_in => Q14_in,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      in_port(7 downto 0) => in_port(7 downto 0),
      out_port(7 downto 0) => out_port(7 downto 0),
      q_interna_reg(4) => port_id(7),
      q_interna_reg(3 downto 0) => port_id(3 downto 0),
      \q_interna_reg[3]\(0) => ce0_out,
      \q_interna_reg[7]\(0) => ce3_out,
      \q_interna_reg[7]_0\(0) => ce,
      q_interna_reg_0 => picoblaze3_empotrado_s7_inst_n_9,
      q_interna_reg_1 => picoblaze3_empotrado_s7_inst_n_19,
      q_interna_reg_2 => picoblaze3_empotrado_s7_inst_n_20,
      q_interna_reg_3 => picoblaze3_empotrado_s7_inst_n_21,
      q_interna_reg_4 => picoblaze3_empotrado_s7_inst_n_22,
      write_strobe => write_strobe
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
sclk_both_dac_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => sclk_both_dac_OBUF,
      O => sclk_both_dac
    );
sdin_first_dac_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => sdin_first_dac_OBUF,
      O => sdin_first_dac
    );
sdin_second_dac_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => sdin_second_dac
    );
selec_16_entradas_con_reg_y_bypass_inst: entity work.selec_16_entradas_con_reg_y_bypass
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      D(3) => picoblaze3_empotrado_s7_inst_n_0,
      D(2) => picoblaze3_empotrado_s7_inst_n_1,
      D(1) => picoblaze3_empotrado_s7_inst_n_2,
      D(0) => picoblaze3_empotrado_s7_inst_n_3,
      Q(3) => FD8C3_btn_n_0,
      Q(2) => FD8C3_btn_n_1,
      Q(1) => FD8C3_btn_n_2,
      Q(0) => FD8C3_btn_n_3,
      Q15_in => Q15_in,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      in_port(7 downto 0) => in_port(7 downto 0),
      kcpsm6_rom(3 downto 0) => port_id(3 downto 0),
      \q_interna_reg[3]\(3) => FD8C3_lut_out_n_4,
      \q_interna_reg[3]\(2) => FD8C3_lut_out_n_5,
      \q_interna_reg[3]\(1) => FD8C3_lut_out_n_6,
      \q_interna_reg[3]\(0) => FD8C3_lut_out_n_7
    );
selec_16_salidas_con_reg_y_mem_esc_lect_inst: entity work.selec_16_salidas_con_reg_y_mem_esc_lect
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      D(7 downto 0) => out_port(7 downto 0),
      Q(7 downto 0) => q_interna(7 downto 0),
      Q10_in => Q10_in,
      Q12_in => Q12_in,
      Q13_in => Q13_in,
      Q14_in => Q14_in,
      Q15_in => Q15_in,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      kcpsm6_rom(0) => port_id(7),
      kcpsm6_rom_0 => picoblaze3_empotrado_s7_inst_n_9,
      kcpsm6_rom_1 => picoblaze3_empotrado_s7_inst_n_22,
      kcpsm6_rom_2 => picoblaze3_empotrado_s7_inst_n_19,
      kcpsm6_rom_3 => picoblaze3_empotrado_s7_inst_n_20,
      kcpsm6_rom_4 => picoblaze3_empotrado_s7_inst_n_21,
      \q_interna_reg[0]\ => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_6,
      \q_interna_reg[0]_0\ => FD8C3_start_conv_n_0,
      reset_IBUF => reset_IBUF,
      write_strobe => write_strobe
    );
sync_both_dac_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => sync_both_dac_OBUF,
      O => sync_both_dac
    );
transmisor_spi_inst: entity work.transmisor_spi
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      Q(7) => FD8C3_spi1_n_0,
      Q(6) => FD8C3_spi1_n_1,
      Q(5) => FD8C3_spi1_n_2,
      Q(4) => FD8C3_spi1_n_3,
      Q(3) => FD8C3_spi1_n_4,
      Q(2) => FD8C3_spi1_n_5,
      Q(1) => FD8C3_spi1_n_6,
      Q(0) => FD8C3_spi1_n_7,
      busy_OBUF => busy_OBUF,
      clk_IBUF => clk_IBUF,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      end_of_conv_OBUF => end_of_conv_OBUF,
      \q_interna_reg[0]\ => FD8C3_start_conv_n_0,
      \q_interna_reg[3]\(3) => FD8C3_spi2_n_0,
      \q_interna_reg[3]\(2) => FD8C3_spi2_n_1,
      \q_interna_reg[3]\(1) => FD8C3_spi2_n_2,
      \q_interna_reg[3]\(0) => FD8C3_spi2_n_3,
      reset_IBUF => reset_IBUF,
      sclk_both_dac_OBUF => sclk_both_dac_OBUF,
      sdin_first_dac(0) => sdin_first_dac_OBUF,
      sync_both_dac_OBUF => sync_both_dac_OBUF
    );
uart_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => uart_OBUF,
      O => uart
    );
uart_tx_inst: entity work.uart_tx
     port map (
      AR(0) => selec_16_salidas_con_reg_y_mem_esc_lect_inst_n_1,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      data_in(7 downto 0) => Q(7 downto 0),
      en_16_x_baud => en_16_x_baud,
      uart_OBUF => uart_OBUF
    );
end STRUCTURE;
