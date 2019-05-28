----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2019 12:56:43 PM
-- Design Name: 
-- Module Name: bcd_array_adder - beh
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.bcd_pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_array_adder is
    generic(n: natural := 1);
    port(a, b: in bcd_vector(n-1 downto 0);
         c_in: in std_logic;
         c: out bcd_vector(n-1 downto 0);
         c_out: out std_logic);
end bcd_array_adder;

architecture struc of bcd_array_adder is
    component bcd_add
        port(a, b: in std_logic_vector(3 downto 0);
             c_in: in std_logic;
             c: out std_logic_vector(3 downto 0);
             c_out: out std_logic);
    end component;
    
    signal carry: std_logic_vector(n downto 0);
begin
    carry(0) <= c_in;
    c_out <= carry(n);
    G1: for i in 0 to n-1 generate
        U1: bcd_add
            port map(a(i), b(i), carry(i), c(i), carry(i+1));
    end generate G1;
end struc;
