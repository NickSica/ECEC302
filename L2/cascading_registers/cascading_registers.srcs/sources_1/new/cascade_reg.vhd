----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2019 12:07:59 PM
-- Design Name: 
-- Module Name: cascade_reg - Behavioral
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

entity cascade_reg is
    port(clk, btn0, btn1: in std_logic;
        x: in std_logic_vector(1 downto 0);
        z1, z2, z3, z4: out std_logic_vector(1 downto 0));
end cascade_reg;

architecture beh of cascade_reg is
signal en: std_logic;
signal temp1, temp2, temp3, temp4: std_logic_vector(1 downto 0);
begin
process(clk)
type db_state is (not_rdy, rdy, pulse);
variable db_ns: db_state;
begin
if clk = '1' and clk'event then
    case db_ns is
    when not_rdy => en <= '0';
        if btn1 = '1' then db_ns := rdy; end if;
    when rdy => en <= '0';
        if btn0 = '1' then db_ns := pulse; end if;
    when pulse => en <= '1';
        db_ns := not_rdy;
    when others => null;
    end case;
end if;
end process;

process(en)
begin
    if en = '1' and en'event then
        temp1 <= x;
        temp2 <= temp1;
        temp3 <= temp2;
        temp4 <= temp3;
    end if;
end process;

z1 <= temp1;
z2 <= temp2;
z3 <= temp3;
z4 <= temp4;
--component reg
--    generic(n: natural);
--    port(clk, en: in std_logic;
--        x: in std_logic_vector(n-1 downto 0);
--        z: out std_logic_vector(n-1 downto 0));
--end component;
--signal w: std_logic_vector(3 downto 0);
--begin
--    R1: reg generic map(4)
--            port map(clk => clk, en => en, x => x, z => w);
--    R2: reg generic map(4)
--            port map(clk => clk, en => en, x => w, z => z2);
--    z1 <= w;
end beh;
