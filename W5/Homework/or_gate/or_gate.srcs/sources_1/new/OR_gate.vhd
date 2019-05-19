----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2019 08:38:03 AM
-- Design Name: 
-- Module Name: OR_gate - beh
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

entity OR_gate is
  generic(n: natural);
  port(x: in std_logic_vector(n-1 downto 0);
       z: out std_logic);
end OR_gate;

architecture beh of OR_gate is
begin
  process(x)
    variable temp: std_logic;
  begin
    temp := '0';
    for i in n-1 downto 0 loop
      temp := temp or x(i);
    end loop;
    z <= temp;
  end process;
end beh;

