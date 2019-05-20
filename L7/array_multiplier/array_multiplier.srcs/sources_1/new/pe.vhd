----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2019 12:49:31 PM
-- Design Name: 
-- Module Name: pe - dataflow
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

entity pe is
    port(xi, yi, psi, ci: in std_logic;
        xo, yo, pso, co: out std_logic);
end pe;

architecture dataflow of pe is
    signal w: std_logic;
begin
    xo <= xi;
    yo <= yi;
    pso <= w xor ci xor psi;
    co <= (psi and w) or (w and ci) or (ci and psi);
    w <= xi and yi;
end dataflow;
