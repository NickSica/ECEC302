----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2019 07:31:55 PM
-- Design Name: 
-- Module Name: accumulator - beh
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

entity accumulator is
    port(clk, reset, add, bypass, btn0, btn1: in std_logic;
         sw: in std_logic_vector(3 downto 0);
         led: out std_logic_vector(7 downto 0));
end accumulator;

architecture beh of accumulator is
    component c_accum_0 
        port(B: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
             CLK: IN STD_LOGIC;
             ADD: IN STD_LOGIC;
             BYPASS: IN STD_LOGIC;
             SCLR: IN STD_LOGIC;
             Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));    
    end component;
    
    signal en: std_logic;
begin
    A1: c_accum_0
        port map(sw, en, add, bypass, reset, led);
    
    process(clk)
        type db_state is (not_rdy, rdy, pulse);
        type rw_state is (normal, read);
        variable db_ns: db_state;
        variable rw_ns: rw_state;
        variable counter: integer := 0; 
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
                if(btn0 = '1') then
                    db_ns := pulse;
                end if;    
            when pulse =>
                en <= '1';
                db_ns := not_rdy;
            when others => null;
            end case;  
        end if;
    end process;

end beh;
