----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2019 05:41:56 PM
-- Design Name: 
-- Module Name: handshake - beh
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

entity handshake is
    port(clk, reset, btnC, radioButton: in std_logic;
         pLED, tLED: out std_logic_vector(2 downto 0);
         pPmod, tPmod: out std_logic_vector(2 downto 0));
end handshake;

architecture beh of handshake is
    -- t = max_count * f_clk
    -- f_div = 1/t
    -- f_clk = 100MHz
    constant maxCountClkDiv: natural := 33333;
    constant pedTime: natural        := 9000;
    constant yellowTime: natural     := 3000; --1 sec
    constant trafficTime: natural    := 15000; --5 sec
    signal maxCountTime: natural;
    --------------------------------------------------------------------
    -- Red crossing request and light signals
    signal pedXButton: std_logic; --<=btnC or radioButton
    signal p, t: std_logic_vector(2 downto 0); --PED, traffic RYG
    --------------------------------------------------------------------
    
    -- client's flags
    signal requestService, doneReceived: std_logic;
    ---------------------------------------------------------
    -- server's flags
    signal requestReceived, serviceDone: std_logic;
    signal startJob, jobCompleted: std_logic;
    -- ped light controller flags
    signal start, ready, timeExp: std_logic;
    -- pedX button capture by pedX flip-flop
    signal pedX, resetPedX: std_logic;
    ----------------------------------------------------------
    -- clk div
    signal clk_div: std_logic;
begin
    timeExp <= 


end beh;
