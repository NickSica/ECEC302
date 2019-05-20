----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2019 09:03:35 AM
-- Design Name: 
-- Module Name: t_gate - beh
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

entity t_gate is
  generic(n: natural;
          k: natural);
  port(x: in std_logic_vector(1 to n);
       z: out std_logic);
end t_gate;

architecture beh of t_gate is
begin
  process(x)
    variable count: integer := 0;
    variable temp: std_logic;
  begin
    count := 0;
    for i in 1 to n loop
      if(x(i) = '1') then
        count := count + 1;
      end if;

      if(count >= k) then
        temp := '1';
      else
        temp := '0';
      end if;
    end loop;
    z <= temp;        
  end process;
end beh;




