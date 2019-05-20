----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2019 04:37:26 PM
-- Design Name: 
-- Module Name: router_tb - struc
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

entity router_tb is
    port(btn0, btn1, clk: in std_logic;
        x: in std_logic_vector(7 downto 0);
        in_sel: std_logic_vector(2 downto 0);
        out_sel: std_logic_vector(1 downto 0);
        z: out std_logic_vector(3 downto 0));
end router_tb;

architecture struc of router_tb is
    component router
        generic(n: natural := 1;
            m: natural := 1);
        port(clk: in std_logic;
            x: in std_logic_vector(2**n - 1 downto 0);
            in_sel: std_logic_vector(n-1 downto 0);
            out_sel: std_logic_vector(m-1 downto 0);
            z: out std_logic_vector(2**m - 1 downto 0));
    end component;
    
    signal en: std_logic;
begin
    R1: router
        generic map(3, 2)
        port map(en, x, in_sel, out_sel, z);
    process(clk)
        type db_state is (not_rdy, rdy, pulse);
        variable db_ns: db_state := not_rdy;
    begin
        if(rising_edge(clk)) then
            case db_ns is
            when not_rdy =>
                en <= '0';
                if(btn1 = '1') then
                    db_ns := rdy;
                end if;
            when rdy =>
                en <= '0';
                if(btn0 = '0') then
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
