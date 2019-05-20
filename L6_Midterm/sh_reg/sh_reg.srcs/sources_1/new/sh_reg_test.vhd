----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2019 04:01:33 PM
-- Design Name: 
-- Module Name: sh_reg_test - struc
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

entity sh_reg_test is
    port(x, clk, reset: in std_logic;
        z: out std_logic_vector(9 downto 0));
end sh_reg_test;

architecture struc of sh_reg_test is
    component sh_reg
        generic(n: natural := 2);
        port(x, clk, reset: in std_logic;
            z: out std_logic_vector(n-1 downto 0));
    end component;
begin
    R1: sh_reg
        generic map(10)
        port map(x, clk, reset, z);
end struc;
