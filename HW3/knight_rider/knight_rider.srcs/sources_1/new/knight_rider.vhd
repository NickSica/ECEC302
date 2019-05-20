----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2019 10:02:05 AM
-- Design Name: 
-- Module Name: knight_rider - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL, ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity knight_rider is
  port(clk, sel: in std_logic;
       z: out std_logic_vector(15 downto 0));
end knight_rider;

architecture beh of knight_rider is
  signal temp: std_logic_vector(15 downto 0);
begin
  process(clk)
    subtype my_int is integer range 0 to 15;
    variable count: my_int := 0;
  begin
    if(rising_edge(clk)) then      
      case sel is
        when '1' => count := count + 1;
        when '0' => count := count - 1;
        when others => null;
      end case;
      temp <= (others => '0');
      temp(count) <= '1';
    end if;
  end process;
  z <= temp;
end beh;








