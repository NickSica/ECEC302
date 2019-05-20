----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2019 08:38:59 AM
-- Design Name: 
-- Module Name: OR5 - beh
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

entity OR5_test is
  port(x: in std_logic_vector(4 downto 0);
       z: out std_logic);
end OR5_test;

architecture beh of OR5_test is
  component OR_gate
    generic(n: natural);
    port(x: in std_logic_vector(n-1 downto 0);
         z: out std_logic);
  end component;  
begin
  U1: OR_gate
    generic map(5)
    port map(x, z);
end beh;









