----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2019 01:05:32 PM
-- Design Name: 
-- Module Name: reg_v1 - beh
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

entity reg_v1 is
  port(clk: in std_logic;
       x: in std_logic_vector(1 downto 0);
       btns: in std_logic_vector(3 downto 0)
       leds: out std_logic_vector(7 downto 0));
end reg_v1;

architecture beh of reg_v1 is
  signal r0, r1, r2, r3: std_logic_vector(1 downto 0);
begin
  leds(7 downto 6) <= r3;
  leds(5 downto 4) <= r2;
  leds(3 downto 2) <= r1;
  leds(1 downto 0) <= r0;
  process(clk)
  begin
    if(rising_edge(clk)) then
      case btns is
        when "1000" => r0 <= x;
        when "0100" => r1 <= x;
        when "0010" => r2 <= x;
        when "0001" => r3 <= x;
        when others => null;
      end case;
    end if;
  end process;
end beh;
