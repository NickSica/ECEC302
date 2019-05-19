----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2019 08:52:41 AM
-- Design Name: 
-- Module Name: MUX3 - beh
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

entity MUX3 is
  port(x: in std_logic_vector(0 to 7);
       s: in std_logic_vector(2 downto 0);
       z: out std_logic);
end MUX3;

architecture beh of MUX3 is
  component mux
    generic(m: natural);
    port(x: in std_logic_vector(0 to 2**m - 1);
         s: in std_logic_vector(m-1 downto 0);
         z: out std_logic);
  end component;
begin
    M1: mux
      generic map(3)
      port map(x, s, z);
end beh;



