----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2019 03:57:27 PM
-- Design Name: 
-- Module Name: quiz1 - beh
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

entity stack_reg_5_tb is
    port(clk, sel, btn0, btn1: in std_logic;
        x: in std_logic_vector(2 downto 0);
        z: out std_logic_vector(2 downto 0));
end stack_reg_5_tb;

architecture struc of stack_reg_5_tb is
component stack_reg_5
    generic(n: natural := 1);
    port(clk, sel: in std_logic;
        x: in std_logic_vector(n-1 downto 0);
        z: out std_logic_vector(n-1 downto 0));
end component;
signal en: std_logic;
begin
    REG5: stack_reg_5 
        generic map(3)
        port map(en, sel, x, z);

-- single step, debounce (db)
-- btn0 to enter and btn1 to reset
process(clk)
    type db_state is (not_rdy,rdy,pulse);
    variable db_ns: db_state;
begin      
    if(rising_edge(clk)) then
        case db_ns is
        when not_rdy => 
            en <= '0';
            if btn1 = '1' then 
                db_ns := rdy; 
            end if;
        when rdy => 
            en <= '0';
            if btn0 = '1' then 
                db_ns := pulse;
            end if;
        when pulse => 
            en <= '1';
            db_ns := not_rdy;
        when others => null;
        end case;
    end if;
end process;

end struc;
