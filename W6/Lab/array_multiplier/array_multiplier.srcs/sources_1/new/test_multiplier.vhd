----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2019 12:52:35 PM
-- Design Name: 
-- Module Name: test_multiplier - struc
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

entity test_multiplier is
    port (x: in std_logic_vector(3 downto 0);
          y: in std_logic_vector(3 downto 0);
          p: out std_logic_vector(7 downto 0));
end test_multiplier;

architecture struc of test_multiplier is
    component array_multiplier
        generic(m: natural := 4;
                n: natural := 4);
        port(x: in std_logic_vector(m-1 downto 0);
            y: in std_logic_vector(n-1 downto 0);
            p: out std_logic_vector(m+n-1 downto 0));
    end component;
begin
    MUL: array_multiplier
        generic map(4)
        port map(x, y, p);
end struc;
