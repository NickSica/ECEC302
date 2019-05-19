----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2019 09:28:40 AM
-- Design Name: 
-- Module Name: test_adder - struc
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

entity test_adder is
    port(x, y: in std_logic_vector(3 downto 0);
        z: out std_logic_vector(3 downto 0));
end test_adder;

architecture struc of test_adder is
    component array_adder
        generic(n: natural := 3);
        port(x, y: in std_logic_vector(n-1 downto 0);
            s: out std_logic_vector(n-1 downto 0));
    end component;
begin
    ARRADDER: array_adder
        generic map(4)
        port map(x, y, z);
end struc;
