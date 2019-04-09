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
-- 'Bucket Brigade' FIFO  
-- 16 deep
-- 8-bit data
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
-- Start of design entry : 14th October 2002
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
-- Main Entity for BBFIFO_16x8
--
entity bbfifo_16x8 is
    Port (       data_in : in std_logic_vector(7 downto 0);
                data_out : out std_logic_vector(7 downto 0);
                   reset : in std_logic;               
                   write : in std_logic; 
                    read : in std_logic;
                    full : out std_logic;
               half_full : out std_logic;
            data_present : out std_logic;
                     clk : in std_logic);
    end bbfifo_16x8;
--
-------------------------------------------------------------------------------------------
--
-- Start of Main Architecture for BBFIFO_16x8
--	 
architecture low_level_definition of bbfifo_16x8 is
--
-------------------------------------------------------------------------------------------
--
-- Signals used in BBFIFO_16x8
--
-------------------------------------------------------------------------------------------
--
signal pointer             : std_logic_vector(3 downto 0);
signal next_count          : std_logic_vector(3 downto 0);
signal half_count          : std_logic_vector(3 downto 0);
signal count_carry         : std_logic_vector(2 downto 0);

signal pointer_zero        : std_logic;
signal pointer_full        : std_logic;
signal decode_data_present : std_logic;
signal data_present_int    : std_logic;
signal valid_write         : std_logic;
--
-------------------------------------------------------------------------------------------
--
-- Start of BBFIFO_16x8 circuit description
--
-------------------------------------------------------------------------------------------
--	
begin

  -- SRL16E data storage

  data_width_loop: for i in 0 to 7 generate
  begin

     data_srl: SRL16E
     generic map (INIT => X"0000")
     port map(   D => data_in(i),
                CE => valid_write,
               CLK => clk,
                A0 => pointer(0),
                A1 => pointer(1),
                A2 => pointer(2),
                A3 => pointer(3),
                 Q => data_out(i) );

  end generate data_width_loop;
 
  -- 4-bit counter to act as data pointer
  -- Counter is clock enabled by 'data_present'
  -- Counter will be reset when 'reset' is active
  -- Counter will increment when 'valid_write' is active

  count_width_loop: for i in 0 to 3 generate
  begin

     register_bit: FDRE
     port map ( D => next_count(i),
                Q => pointer(i),
               CE => data_present_int,
                R => reset,
                C => clk);

     count_lut: LUT4
     generic map (INIT => X"6606")
     port map( I0 => pointer(i),
               I1 => read,
               I2 => pointer_zero,
               I3 => write,
                O => half_count(i));

     lsb_count: if i=0 generate
     begin

       count_muxcy: MUXCY
       port map( DI => pointer(i),
                 CI => valid_write,
                  S => half_count(i),
                  O => count_carry(i));
       
       count_xor: XORCY
       port map( LI => half_count(i),
                 CI => valid_write,
                  O => next_count(i));

     end generate lsb_count;

     mid_count: if i>0 and i<3 generate
     begin

       count_muxcy: MUXCY
       port map( DI => pointer(i),
                 CI => count_carry(i-1),
                  S => half_count(i),
                  O => count_carry(i));
       
       count_xor: XORCY
       port map( LI => half_count(i),
                 CI => count_carry(i-1),
                  O => next_count(i));

     end generate mid_count;

     upper_count: if i=3 generate
     begin

       count_xor: XORCY
       port map( LI => half_count(i),
                 CI => count_carry(i-1),
                  O => next_count(i));

     end generate upper_count;

  end generate count_width_loop;


  -- Detect when pointer is zero and maximum

  zero_lut: LUT4
  generic map (INIT => X"0001")
  port map( I0 => pointer(0),
            I1 => pointer(1),
            I2 => pointer(2),
            I3 => pointer(3),
             O => pointer_zero );


  full_lut: LUT4
  generic map (INIT => X"8000")
  port map( I0 => pointer(0),
            I1 => pointer(1),
            I2 => pointer(2),
            I3 => pointer(3),
             O => pointer_full );


  -- Data Present status

  dp_lut: LUT4
  generic map (INIT => X"BFA0")
  port map( I0 => write,
            I1 => read,
            I2 => pointer_zero,
            I3 => data_present_int,
             O => decode_data_present );

  dp_flop: FDR
  port map ( D => decode_data_present,
             Q => data_present_int,
             R => reset,
             C => clk);

  -- Valid write signal

  valid_lut: LUT3
  generic map (INIT => X"C4")
  port map( I0 => pointer_full,
            I1 => write,
            I2 => read,
             O => valid_write );


  -- assign internal signals to outputs

  full <= pointer_full;  
  half_full <= pointer(3);  
  data_present <= data_present_int;

end low_level_definition;

-------------------------------------------------------------------------------------------
--
-- END OF FILE bbfifo_16x8.vhd
--
-------------------------------------------------------------------------------------------


