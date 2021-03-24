----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.03.2021 11:44:58
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

entity tb_top is
--  Port ( );
end tb_top;

architecture Behavioral of tb_top is

begin
    uut_top: entity work.top
    port map(
        clk => s_clk,
        rst => s_rst,
        d => s_d,
        q => s_q,
        q_bar => s_q_bar
    );
    p_reset_gen : process
    begin
        s_rst <= '0';
        wait for 38 ns;
        s_rst <= '1';
        wait for 53ns;
        s_rst <= '0';  
        wait for 300ns;
        s_rst <= '1';
        wait;     
    end process p_reset_gen;
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        s_d <= '0';
        s_rst <= '0';
        
        assert (s_q = '0' and s_q_bar = '1')
        report "asdasd" severity note;


    end process p_stimulus;

end Behavioral;
