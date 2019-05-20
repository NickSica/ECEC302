----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2019 04:12:57 PM
-- Design Name: 
-- Module Name: synch_ckt_test - struc
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

entity synch_ckt_test is
    port(clk, reset: in std_logic;
        x, y: in std_logic_vector(4 downto 0);
        z: out std_logic);
end synch_ckt_test;

architecture struc of synch_ckt_test is
    component synch_ckt
        generic(n: natural := 5);
        port(clk, reset: in std_logic;
            x, y: in std_logic_vector(n-1 downto 0);
            z: out std_logic);
    end component;
begin
    C1: synch_ckt
        generic map(5)
        port map(clk, reset, x, y, z);
end struc;
