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

entity blink is
  port(clk, reset, btn0, btn1: in std_logic;
       z: out std_logic);
end blink;

architecture beh of blink is
  signal temp: std_logic := '0';
begin
  process(clk)
    type state is (fast, slow);
    variable speed: state := slow;
    subtype count1_int is integer range 0 to 100000000;
    variable cnt1: count1_int := 0;
    subtype count2_int is integer range 0 to 10000000;
    variable cnt2: count2_int := 0;
  begin
    if(rising_edge(clk)) then
      if(reset = '1') then
        cnt1 := 0;
        speed := slow;
      end if;

      case speed is
        when slow =>
          if(btn0 = '1') then
            cnt2 := 0;
            speed := fast;
          end if;

          if(cnt1 = 100000000) then
            temp <= not temp;
          end if;

          cnt1 := cnt1 + 1;
        when fast =>
          if(btn1 = '1') then
            cnt1 := 0;
            speed := slow;
          end if;

          if(cnt2 = 10000000) then
            temp <= not temp;
          end if;

          cnt2 := cnt2 + 1;
        when others => null;
      end case;
      
    end if;

  end process;
  z <= temp;
end beh;




