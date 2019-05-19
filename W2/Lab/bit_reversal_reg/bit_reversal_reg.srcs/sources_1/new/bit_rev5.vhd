----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2019 09:38:36 AM
-- Design Name: 
-- Module Name: bit_rev5 - Behavioral
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

entity bit_rev5 is
    port(clk, en: in std_logic;
        x: in std_logic_vector(4 downto 0);
        z: out std_logic_vector(4 downto 0));
end bit_rev5;

architecture beh of bit_rev5 is

component bit_reversal_reg
    generic(n: natural);
    port(clk, en: in std_logic;
        x: in std_logic_vector(n-1 downto 0);
        z: out std_logic_vector(n-1 downto 0));
end component;

begin
    U1: bit_reversal_reg generic map(5)
    port map(clk => clk, en => en, x => x, z => z);
end beh;
