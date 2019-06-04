----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2019 01:03:48 PM
-- Design Name: 
-- Module Name: FIFO16x4 - beh
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

entity FIFO16x4 is
    port(clk, btn0, btn1, reset: in std_logic;
         x: in std_logic_vector(3 downto 0);
         z: out std_logic_vector(3 downto 0);
         empty_flag, full_flag: out std_logic);
end FIFO16x4;

architecture beh of FIFO16x4 is
    component fifo_generator_0
        port(clk : IN STD_LOGIC;
             rst : IN STD_LOGIC;
             din : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
             wr_en : IN STD_LOGIC;
             rd_en : IN STD_LOGIC;
             dout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
             full : OUT STD_LOGIC;
             empty : OUT STD_LOGIC;
             wr_rst_busy : OUT STD_LOGIC;
             rd_rst_busy : OUT STD_LOGIC);
    end component;
    
    signal en: std_logic;
    signal wr_en, rd_en, full, empty: std_logic;
    
begin
    U1: fifo_generator_0
        port map(en, reset, x, wr_en, rd_en, z, full, empty);
    full_flag <= full;
    empty_flag <= empty;
    
               
    process(clk)
        type db_state is (not_rdy, rdy, pulse);
        type rw_state is (normal, read);
        variable db_ns: db_state;
        variable rw_ns: rw_state;
        variable counter: integer := 0; 
    begin       
        if(rising_edge(clk)) then
                case rw_ns is
                when normal =>
                    if(full = '1') then
                        wr_en <= '0';
                        rd_en <= '1';
                        rw_ns := read;
                    else
                        rd_en <= '0';
                        wr_en <= '1';
                  
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
            when read =>
                if(counter = 1000000000) then
                    en <= '1';
                    rd_en <= '1';
                    counter := 0;
                else
                    en <= '0';
                    counter := counter + 1;
                    rd_en <= '0';
                end if;
            
                if(empty = '1' or reset = '1') then
                    rw_ns := normal;
                end if;   
            end case;
  
        end if;
    end process;
end beh;
