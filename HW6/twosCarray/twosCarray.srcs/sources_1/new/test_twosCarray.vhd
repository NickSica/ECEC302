----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2019 06:03:55 PM
-- Design Name: 
-- Module Name: test_twosCarray - struc
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

entity test_twosCarray is
    port(x: in std_logic_vector(3 downto 0);
         z: out std_logic_vector(3 downto 0));
end test_twosCarray;

architecture struc of test_twosCarray is
    component twosCarray
        generic(n: natural := 1);
        port(x: in std_logic_vector(n-1 downto 0);
             z: out std_logic_vector(n-1 downto 0));
    end component;
begin
    U2: twosCarray
        generic map(4)
        port map(x, z);

end struc;
