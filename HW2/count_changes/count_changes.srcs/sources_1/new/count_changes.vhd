----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2019 03:41:24 PM
-- Design Name: 
-- Module Name: count_changes - Behavioral
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

entity count_changes is
    port(x, clk, reset: std_logic;
        z: out std_logic_vector(3 downto 0));
end count_changes;

architecture beh of count_changes is
signal count: std_logic_vector(3 downto 0);
signal prev_bit: std_logic;
begin
process(clk)
begin
  if(reset = '1') then
    count <= "0000"; 
  elsif(rising_edge(clk)) then
    if((prev_bit xor x) = '1') then
      count <= count + 1;
    end if;
    prev_bit <= x;
  end if;
end process;
z <= count;
end beh;




