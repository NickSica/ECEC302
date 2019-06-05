----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cameron J Calv
-- 
-- Create Date: 04/16/2019 09:55:59 AM
-- Design Name: 
-- Module Name: control - behav
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

entity control is
--  Port ( );
port(go, ck, reset, done : in std_logic;
    sel : out sh_reg_sel;
    reset_sadder : out std_logic);
end control;

architecture behav of control is
type state is (idle, loading, shifting);

signal n_s : state;
begin
process(ck)
begin
    if ck = '1' and ck'event then
        if reset = '1' then n_s <= idle;
        else
            case n_s is
            when idle =>
           
            if go = '1' then 
                n_s <= loading;
                sel <= load;
                reset_sadder <= '1';
            else
                sel <= no_op;
                reset_sadder <= '0';
            end if;
            when loading =>
                reset_sadder <= '0';
                sel <= shift;
                n_s <= shifting;
            when shifting =>
                reset_sadder <= '0';
                
                if done = '1' then 
                    n_s <= idle;
                    sel <= no_op;
                else
                    sel <= shift;
                end if;
            end case;
        end if;
   end if;
end process;


end behav;
