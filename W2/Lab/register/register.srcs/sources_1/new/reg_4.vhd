----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2019 09:31:44 AM
-- Design Name: 
-- Module Name: reg_4 - Behavioral
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

entity reg_4 is
    Port(clk, en: in std_logic;
        y: in std_logic_vector(3 downto 0);
        z: out std_logic_vector(3 downto 0));
end reg_4;

architecture beh of reg_4 is
component reg
    generic(n: natural);
    Port(clk, en: in std_logic;
        x: in std_logic_vector(n-1 downto 0);
        z: out std_logic_vector(n-1 downto 0));
end component;

begin
    U1: reg generic map(4)
    port map(x => y, z => z, clk => clk, en => en);
end beh;
