----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2019 02:20:58 PM
-- Design Name: 
-- Module Name: count_00 - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count_00 is
  generic(n: natural := 4);
  port(x, clk, reset: in std_logic;
       z: out std_logic_vector(n-1 downto 0));
end count_00;

architecture beh of count_00 is
  signal prev_bit: std_logic;
  signal count: std_logic_vector(3 downto 0);
begin
  process(clk)
  begin
    if(reset = '1') then
      count <= (others => '0');
    elsif(rising_edge(clk)) then
      if ((prev_bit nor x) = '1') then
        count <= count + 1;
        prev_bit <= '1';
      else
        prev_bit <= x;
      end if;
    end if;
  end process;
  z <= count;
end beh;



