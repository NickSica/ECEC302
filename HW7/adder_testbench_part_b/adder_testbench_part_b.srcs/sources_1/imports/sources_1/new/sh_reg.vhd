----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cameron J Calv
-- 
-- Create Date: 04/16/2019 09:55:28 AM
-- Design Name: 
-- Module Name: sh_reg - behav
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
use IEEE.STD_LOGIC_1164.ALL, work.pl_pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sh_reg is
--  Port ( );
Generic (n: natural := 4);
port(x: in std_logic_vector(n-1 downto 0);
    z: out std_logic;
    sel: in sh_reg_sel;
    ck : in std_logic);
end sh_reg;

architecture behav of sh_reg is
signal temp: std_logic_vector(n-1 downto 0);

begin

process(ck)
begin
if ck = '1' and ck'event then
case sel is
    when no_op => null;
    when load => temp <= x;
    when shift => 
        for i in n-2 downto 0 loop
            temp(i) <= temp(i+1);
        end loop;
end case;
end if;
end process;

z <= temp(0);

end behav;
