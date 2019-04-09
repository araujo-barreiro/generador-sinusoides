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
-- UART Transmitter with integral 16 byte FIFO buffer
--
-- 8 bit, no parity, 1 stop bit
--
--
-- This module was made for use with Spartan-3 Generation Devices and is also ideally 
-- suited for use with Virtex-II(PRO) and Virtex-4 devices. Will also work in Virtex-5, 
-- Virtex-6 and Spartan-6 devices but it is not specifically optimised for these 
-- architectures.
--
--
-- Version : 2.10 
-- Version Date : 19th March 2010
-- Reason : Format and text changes consistent with sub-modules.
--          No functional changes.
--
-- Version : 1.10 
-- Version Date : 17th January 2007
-- Reason : Format and Spelling
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
-- NOTICE:
--
-- Copyright Xilinx, Inc. 2007.   This code may be contain portions patented by other 
-- third parties.  By providing this core as one possible implementation of a standard,
-- Xilinx is making no representation that the provided implementation of this standard 
-- is free from any claims of infringement by any third party.  Xilinx expressly 
-- disclaims any warranty with respect to the adequacy of the implementation, including 
-- but not limited to any warranty or representation that the implementation is free 
-- from claims of any third party.  Furthermore, Xilinx is providing this core as a 
-- courtesy to you and suggests that you contact all third parties to obtain the 
-- necessary rights to use this implementation.
--
-------------------------------------------------------------------------------------------
--
-- Library declarations
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
-------------------------------------------------------------------------------------------
--
-- Main Entity for UART_TX
--
entity uart_tx is
    Port (            data_in : in std_logic_vector(7 downto 0);
                 write_buffer : in std_logic;
                 reset_buffer : in std_logic;
                 en_16_x_baud : in std_logic;
                   serial_out : out std_logic;
                  buffer_full : out std_logic;
             buffer_half_full : out std_logic;
                          clk : in std_logic);
    end uart_tx;
--
-------------------------------------------------------------------------------------------
--
-- Start of Main Architecture for UART_TX
--	 
architecture macro_level_definition of uart_tx is
--
-------------------------------------------------------------------------------------------
--
-- Components used in UART_TX and defined in subsequent entities.
--	
-------------------------------------------------------------------------------------------
--
-- Constant (K) Compact UART Transmitter
--
component kcuart_tx 
    Port (        data_in : in std_logic_vector(7 downto 0);
           send_character : in std_logic;
             en_16_x_baud : in std_logic;
               serial_out : out std_logic;
              Tx_complete : out std_logic;
                      clk : in std_logic);
    end component;
--
-- 'Bucket Brigade' FIFO 
--
component bbfifo_16x8 
    Port (       data_in : in std_logic_vector(7 downto 0);
                data_out : out std_logic_vector(7 downto 0);
                   reset : in std_logic;               
                   write : in std_logic; 
                    read : in std_logic;
                    full : out std_logic;
               half_full : out std_logic;
            data_present : out std_logic;
                     clk : in std_logic);
    end component;
--
-------------------------------------------------------------------------------------------
--
-- Signals used in UART_TX
--
-------------------------------------------------------------------------------------------
--
signal fifo_data_out      : std_logic_vector(7 downto 0);
signal fifo_data_present  : std_logic;
signal fifo_read          : std_logic;
--
-------------------------------------------------------------------------------------------
--
-- Start of UART_TX circuit description
--
-------------------------------------------------------------------------------------------
--	
begin

  kcuart: kcuart_tx
  port map (        data_in => fifo_data_out,
             send_character => fifo_data_present,
               en_16_x_baud => en_16_x_baud,
                 serial_out => serial_out,
                Tx_complete => fifo_read,
                        clk => clk);

  buf: bbfifo_16x8 
  port map (       data_in => data_in,
                  data_out => fifo_data_out,
                     reset => reset_buffer,              
                     write => write_buffer,
                      read => fifo_read,
                      full => buffer_full,
                 half_full => buffer_half_full,
              data_present => fifo_data_present,
                       clk => clk);

end macro_level_definition;

-------------------------------------------------------------------------------------------
--
-- END OF FILE uart_tx.vhd
--
-------------------------------------------------------------------------------------------


