----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.03.2021 19:53:21
-- Design Name: 
-- Module Name: tb_t_ff_rst - Behavioral
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

entity tb_t_ff_rst is
--  Port ( );
end tb_t_ff_rst;

architecture Behavioral of tb_t_ff_rst is
     -- Local constants
    constant c_CLK_100MHZ_PERIOD : time    := 10 ns;

    --Local signals
    signal s_clk_100MHz : std_logic;

    signal s_clk : std_logic;
    signal s_rst : std_logic ;
    signal s_t : std_logic ;
    signal s_q : std_logic ;
    signal s_q_bar : std_logic;
begin
    uut_t_ff_rst: entity work.t_ff_rst
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
