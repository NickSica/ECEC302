----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2019 12:18:35 PM
-- Design Name: 
-- Module Name: array_multiplier - beh
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

entity array_multiplier is
    generic(m: natural := 4;
            n: natural := 4);
    port(x: in std_logic_vector(m-1 downto 0);
        y: in std_logic_vector(n-1 downto 0);
        p: out std_logic_vector(m+n-1 downto 0));
end array_multiplier;

architecture struc of array_multiplier is
    type two_d_array is array
        (natural range <>, natural range <>) of std_logic;
    signal xi, yi, psi, ci: two_d_array(n-1 downto 0, m-1 downto 0);
    component pe
        port(xi, yi, psi, ci: in std_logic;
            xo, yo, pso, co: out std_logic);
    end component;
begin
    INTX: for j in 0 to m-1 generate
        xi(0, j) <= x(j);
        psi(0, j) <= '0';    
        end generate INTX;
    INTY: for i in 0 to n-1 generate
        yi(i, 0) <= y(i);
        ci(i, 0) <= '0';
        end generate INTY;
        
    G1: for i in 0 to n-1 generate
        G2: for j in 0 to m-1 generate
            G3: if j = 0 and i < n-1 generate
                ELM: pe port map(xi(i, j), yi(i, j), psi(i, j), ci(i, j), xi(i+1, j), yi(i, j+1), p(i), ci(i, j+1));
                end generate G3;
            G4: if j > 0 and j < m-1 and i < n-1 generate
                ELM: pe port map(xi(i, j), yi(i, j), psi(i, j), ci(i, j), xi(i+1, j), yi(i, j+1), psi(i+1,j-1), ci(i, j+1));
                end generate G4;
            G5: if j = m-1 and i < n-1 generate
                ELM: pe port map(xi(i, j), yi(i, j), psi(i, j), ci(i, j), xi(i+1, j), open, psi(i+1,j-1), psi(i+1, j));
                end generate G5;
            G6: if j < m-1 and i = n-1 generate
                ELM: pe port map(xi(i, j), yi(i, j), psi(i, j), ci(i, j), open, yi(i, j+1), p(i+j), ci(i, j+1));
                end generate G6;
            G7: if j = m-1 and i = n-1 generate
                ELM: pe port map(xi(i, j), yi(i, j), psi(i, j), ci(i, j), open, open, p(i+j), p(i+j+1));
                end generate G7;
            end generate G2;
        end generate G1;
end struc;
