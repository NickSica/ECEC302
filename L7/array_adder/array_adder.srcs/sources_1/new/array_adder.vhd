----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/12/2019 02:09:21 PM
-- Design Name: 
-- Module Name: array_adder - beh
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

entity array_adder is
    generic(n: natural := 3);
    port(x, y: in std_logic_vector(n-1 downto 0);
        s: out std_logic_vector(n-1 downto 0));
end array_adder;

architecture beh of array_adder is
    component adder
        port(x, y, c_in: in std_logic;
                z, c_out: out std_logic);    
    end component;
    signal c: std_logic_vector(n downto 0);
    signal temp: std_logic_vector(n-1 downto 0);
begin
    GEN_ADDER:
    for i in 0 to n-1 generate
        ADDX: adder
            port map(x(i), y(i), c(i), temp(i), c(i+1));
    end generate GEN_ADDER;
    s <= temp;
end beh;
