--
-------------------------------------------------------------------------------------------
-- Copyright © 2010, Xilinx, Inc.
-- This file contains confidential and proprietary information of Xilinx, Inc. and is
-- protected under U.S. and international copyright and other intellectual property laws.
-------------------------------------------------------------------------------------------
--
-- Disclaimer:
-- This disclaimer is not a license and does not grant any rights to the materials
-- distributed herewith. Except as otherwise provided in a valid license issued to
-- you by Xilinx, and to the maximum extent permitted by applicable law: (1) THESE
-- MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY
-- DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
-- INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT,
-- OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable
-- (whether in contract or tort, including negligence, or under any other theory
-- of liability) for any loss or damage of any kind or nature related to, arising
-- under or in connection with these materials, including for any direct, or any
-- indirect, special, incidental, or consequential loss or damage (including loss
-- of data, profits, goodwill, or any type of loss or damage suffered as a result
-- of any action brought by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-safe, or for use in any
-- application requiring fail-safe performance, such as life-support or safety
-- devices or systems, Class III medical devices, nuclear facilities, applications
-- related to the deployment of airbags, or any other applications that could lead
-- to death, personal injury, or severe property or environmental damage
-- (individually and collectively, "Critical Applications"). Customer assumes the
-- sole risk and liability of any use of Xilinx products in Critical Applications,
-- subject only to applicable laws and regulations governing limitations on product
-- liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------------------
--
-- Constant (K) Compact UART Transmitter
--
-- 8 data bits, no parity, 1 stop bit
--
-- NOTE : This macro is intended to be attached to bbfifo_16x8 and operation requires 
--        the interaction of signals to and from that FIFO buffer to work correctly. 
--
-- This module was made for use with Spartan-3 Generation Devices and is also ideally 
-- suited for use with Virtex-II(PRO) and Virtex-4 devices. Will also work in Virtex-5, 
-- Virtex-6 and Spartan-6 devices but it is not specifically optimised for these 
-- architectures.
--
--
-- Version : 2.10 
-- Version Date : 19th March 2010
-- Reason : The VHDL coding style adjusted to be compatible with XST provided as 
--          part of the ISE v12.1i tools when targeting Spartan-6 and Virtex-6 
--          devices. No functional changes.
--
-- Version : 1.30 
-- Version Date : 17th January 2007
-- Reason : Format and Spelling
--
-- Version : 1.20 
-- Version Date : 11th December 2006
-- Reason : Attributes and '--translate on/off' directives removed as no longer 
--          required for XST.
--
-- Version : 1.10 
-- Version Date : 3rd December 2003
-- Reason : '--translate' directives changed to '--synthesis translate' directives
--
-- Version : 1.00
-- Version Date : 14th October 2002
--
-- Start of design entry : 2nd October 2002
--
-- Ken Chapman
-- Xilinx Ltd
-- Benchmark House
-- 203 Brooklands Road
-- Weybridge
-- Surrey KT13 ORH
-- United Kingdom
--
-- chapman@xilinx.com
--
-------------------------------------------------------------------------------------------
--
-- Library declarations
--
-- The Unisim Library is used to define Xilinx primitives. It is also used during
-- simulation. The source can be viewed at %XILINX%\vhdl\src\unisims\unisim_VCOMP.vhd
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library unisim;
use unisim.vcomponents.all;
--
-------------------------------------------------------------------------------------------
--
-- Main Entity for KCUART_TX
--
entity kcuart_tx is
    Port (        data_in : in std_logic_vector(7 downto 0);
           send_character : in std_logic;
             en_16_x_baud : in std_logic;
               serial_out : out std_logic;
              Tx_complete : out std_logic;
                      clk : in std_logic);
    end kcuart_tx;
--
-------------------------------------------------------------------------------------------
--
-- Start of Main Architecture for KCUART_TX
--	 
architecture low_level_definition of kcuart_tx is
--
-------------------------------------------------------------------------------------------
--
-- Signals used in KCUART_TX
--
-------------------------------------------------------------------------------------------
--
signal data_01            : std_logic;
signal data_23            : std_logic;
signal data_45            : std_logic;
signal data_67            : std_logic;
signal data_0123          : std_logic;
signal data_4567          : std_logic;
signal data_01234567      : std_logic;
signal bit_select         : std_logic_vector(2 downto 0);
signal next_count         : std_logic_vector(2 downto 0);
signal mask_count         : std_logic_vector(2 downto 0);
signal mask_count_carry   : std_logic_vector(2 downto 0);
signal count_carry        : std_logic_vector(2 downto 0);
signal ready_to_start     : std_logic;
signal decode_Tx_start    : std_logic;
signal Tx_start           : std_logic;
signal decode_Tx_run      : std_logic;
signal Tx_run             : std_logic;
signal decode_hot_state   : std_logic;
signal hot_state          : std_logic;
signal hot_delay          : std_logic;
signal Tx_bit             : std_logic;
signal decode_Tx_stop     : std_logic;
signal Tx_stop            : std_logic;
signal decode_Tx_complete : std_logic;
--
-------------------------------------------------------------------------------------------
--
-- Start of KCUART_TX circuit description
--
-------------------------------------------------------------------------------------------
--	
begin

  -- 8 to 1 multiplexer to convert parallel data to serial

  mux1_lut: LUT4
  generic map (INIT => X"E4FF")
  port map( I0 => bit_select(0),
            I1 => data_in(0),
            I2 => data_in(1),
            I3 => Tx_run,
             O => data_01 );

  mux2_lut: LUT4
  generic map (INIT => X"E4FF")
  port map( I0 => bit_select(0),
            I1 => data_in(2),
            I2 => data_in(3),
            I3 => Tx_run,
             O => data_23 );

  mux3_lut: LUT4
  generic map (INIT => X"E4FF")
  port map( I0 => bit_select(0),
            I1 => data_in(4),
            I2 => data_in(5),
            I3 => Tx_run,
             O => data_45 );

  mux4_lut: LUT4
  generic map (INIT => X"E4FF")
  port map( I0 => bit_select(0),
            I1 => data_in(6),
            I2 => data_in(7),
            I3 => Tx_run,
             O => data_67 );

  mux5_muxf5: MUXF5
  port map(  I1 => data_23,
             I0 => data_01,
              S => bit_select(1),
              O => data_0123 );

  mux6_muxf5: MUXF5
  port map(  I1 => data_67,
             I0 => data_45,
              S => bit_select(1),
              O => data_4567 );

  mux7_muxf6: MUXF6
  port map(  I1 => data_4567,
             I0 => data_0123,
              S => bit_select(2),
              O => data_01234567 );

  -- Register serial output and force start and stop bits

  pipeline_serial: FDRS
  port map ( D => data_01234567,
             Q => serial_out,
             R => Tx_start,
             S => Tx_stop,
             C => clk);

  -- 3-bit counter
  -- Counter is clock enabled by en_16_x_baud
  -- Counter will be reset when 'Tx_start' is active
  -- Counter will increment when Tx_bit is active
  -- Tx_run must be active to count
  -- count_carry(2) indicates when terminal count (7) is reached and Tx_bit=1 (i.e. overflow)

  count_width_loop: for i in 0 to 2 generate
  begin

     register_bit: FDRE
     port map ( D => next_count(i),
                Q => bit_select(i),
               CE => en_16_x_baud,
                R => Tx_start,
                C => clk);

     count_lut: LUT2
     generic map (INIT => X"8")
     port map( I0 => bit_select(i),
               I1 => Tx_run,
                O => mask_count(i));

     mask_and: MULT_AND
     port map( I0 => bit_select(i),
               I1 => Tx_run,
               LO => mask_count_carry(i));

     lsb_count: if i=0 generate
     begin

       count_muxcy: MUXCY
       port map( DI => mask_count_carry(i),
                 CI => Tx_bit,
                  S => mask_count(i),
                  O => count_carry(i));
       
       count_xor: XORCY
       port map( LI => mask_count(i),
                 CI => Tx_bit,
                  O => next_count(i));

     end generate lsb_count;

     upper_count: if i>0 generate
     begin

       count_muxcy: MUXCY
       port map( DI => mask_count_carry(i),
                 CI => count_carry(i-1),
                  S => mask_count(i),
                  O => count_carry(i));
       
       count_xor: XORCY
       port map( LI => mask_count(i),
                 CI => count_carry(i-1),
                  O => next_count(i));

     end generate upper_count;

  end generate count_width_loop;
 
  -- Ready to start decode

  ready_lut: LUT3
  generic map (INIT => X"10")
  port map( I0 => Tx_run,
            I1 => Tx_start,
            I2 => send_character,
             O => ready_to_start );

  -- Start bit enable

  start_lut: LUT4
  generic map (INIT => X"0190")
  port map( I0 => Tx_bit,
            I1 => Tx_stop,
            I2 => ready_to_start,
            I3 => Tx_start,
             O => decode_Tx_start );

  Tx_start_reg: FDE
  port map ( D => decode_Tx_start,
             Q => Tx_start,
            CE => en_16_x_baud,
             C => clk);


  -- Run bit enable

  run_lut: LUT4
  generic map (INIT => X"1540")
  port map( I0 => count_carry(2),
            I1 => Tx_bit,
            I2 => Tx_start,
            I3 => Tx_run,
             O => decode_Tx_run );

  Tx_run_reg: FDE
  port map ( D => decode_Tx_run,
             Q => Tx_run,
            CE => en_16_x_baud,
             C => clk);

  -- Bit rate enable

  hot_state_lut: LUT3
  generic map (INIT => X"94")
  port map( I0 => Tx_stop,
            I1 => ready_to_start,
            I2 => Tx_bit,
             O => decode_hot_state );

  hot_state_reg: FDE
  port map ( D => decode_hot_state,
             Q => hot_state,
            CE => en_16_x_baud,
             C => clk);

  delay14_srl: SRL16E
  generic map (INIT => X"0000")
  port map(   D => hot_state,
             CE => en_16_x_baud,
            CLK => clk,
             A0 => '1',
             A1 => '0',
             A2 => '1',
             A3 => '1',
              Q => hot_delay );

  Tx_bit_reg: FDE
  port map ( D => hot_delay,
             Q => Tx_bit,
            CE => en_16_x_baud,
             C => clk);

  -- Stop bit enable

  stop_lut: LUT4
  generic map (INIT => X"0180")
  port map( I0 => Tx_bit,
            I1 => Tx_run,
            I2 => count_carry(2),
            I3 => Tx_stop,
             O => decode_Tx_stop );

  Tx_stop_reg: FDE
  port map ( D => decode_Tx_stop,
             Q => Tx_stop,
            CE => en_16_x_baud,
             C => clk);

  -- Tx_complete strobe

  complete_lut: LUT2
  generic map (INIT => X"8")
  port map( I0 => count_carry(2),
            I1 => en_16_x_baud,
             O => decode_Tx_complete );

  Tx_complete_reg: FD
  port map ( D => decode_Tx_complete,
             Q => Tx_complete,
             C => clk);


end low_level_definition;

-------------------------------------------------------------------------------------------
--
-- END OF FILE kcuart_tx.vhd
--
-------------------------------------------------------------------------------------------


