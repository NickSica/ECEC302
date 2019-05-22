----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2019 06:00:40 PM
-- Design Name: 
-- Module Name: twosCarray - beh
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

entity twosCarray is
    generic(n: natural := 1);
    port(x: in std_logic_vector(n-1 downto 0);
         z: out std_logic_vector(n-1 downto 0));
end twosCarray;

architecture beh of twosCarray is
    component pe
        port(inv_in, x: in std_logic;
             inv_out, z: out std_logic);
    end component;
    signal inv: std_logic_vector(n downto 0);
begin
    GEN_CARRAY: 
        for i in 0 to n-1 generate
            CARRAY: pe
                port map(inv(i), x(i), inv(i+1), z(i));
        end generate GEN_CARRAY;

end beh;
