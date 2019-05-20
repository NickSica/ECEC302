----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2019 09:03:35 AM
-- Design Name: 
-- Module Name: t_gate7 - beh
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

entity t_gate7 is
  port(x: in std_logic_vector(1 to 7);
       z: out std_logic);
end t_gate7;

architecture beh of t_gate7 is
  component t_gate
    generic(n: natural;
            k: natural);
    port(x: in std_logic_vector(1 to n);
         z: out std_logic);
  end component;
begin
  T1: t_gate
    generic map(7, 3)
    port map(x, z);
end beh;




