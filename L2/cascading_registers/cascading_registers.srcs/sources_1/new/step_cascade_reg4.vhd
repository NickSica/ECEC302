----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2019 12:23:39 PM
-- Design Name: 
-- Module Name: step_cascade_reg4 - Behavioral
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

entity step_cascade4_reg2 is
    port(clk, btn0, btn1: in std_logic;
        x: in std_logic_vector(1 downto 0);
        z1, z2, z3, z4: out std_logic_vector(1 downto 0));
end step_cascade4_reg2;

architecture struc of step_cascade4_reg2 is

component reg
    generic(n: natural);
    port(clk, en: in std_logic;
        x: in std_logic_vector(n-1 downto 0);
        z: out std_logic_vector(n-1 downto 0));
end component;

signal w: std_logic_vector(3 downto 0);
signal clk_step: std_logic;
begin
    R1: reg generic map(2)
            port map(clk => clk, en => en, x => x, z => w);
    R2: reg generic map(2)
            port map(clk => clk, en => en, x => w, z => z2);
    z1 <= w;
process(clk)
    type state is (not_rdy, rdy, pulse);
    variable ns: state;
begin    
    if clk = '1' and clk'event then
        case ns is
        when not_rdy => clk_step <= '0';
            if btn1 = '1' then ns := rdy; end if;   
        when rdy => clk_step <= '0';
            if btn0 = '1' then ns := pulse; end if;
        when pulse => clk_step <= '1';
            ns := not_rdy;
        when others => null;
        end case; 
    end if;
end process;
end struc;
