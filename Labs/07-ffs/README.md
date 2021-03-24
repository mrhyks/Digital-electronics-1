# H1 Digital-electronics-1 
## 07-flip_flops
<img src="D_ff.png">
<img src="JK_ff.png">
<img src="T_ff.png">
| **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: |
   | ^ | 0 | 0 | 0 | No Change |
   | ^ | 0 | 1 | 0 | No Change |
   | ^ | 1 | 0 | 1 | Set |
   | ^ | 1 | 1 | 1 | Set |

   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | ^ | 0 | 0 | 0 | 0 | No change |
   | ^ | 0 | 0 | 1 | 1 | No change |
   | ^ | 0 | 1 | 0 | 0 | Reset |
   | ^ | 0 | 1 | 1 | 0 | Reset |
   | ^ | 1 | 0 | 0 | 1 | Set |
   | ^ | 1 | 0 | 1 | 1 | Set |
   | ^ | 1 | 1 | 0 | 1 | Toggle |
   | ^ | 1 | 1 | 1 | 0 | Toggle |

   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ^ | 0 | 0 | 0 | 1 | No Change |
   | ^ | 0 | 1 | 1 | 0 | No Change |
   | ^ | 1 | 0 | 1 | 0 | Invert |
   | ^ | 1 | 1 | 0 | 1 | Invert |
````vhdl
p_d_latch : process (d, arst, en)
    begin
        if(arst = '1') then
            q     <= '0';
            q_bar <= '1';
        elsif(en = '1') then
            q     <= d;
            q_bar <= not d;   
        end if;     
    end process p_d_latch;
````
````vhdl
p_reset_gen : process
    begin
        s_arst <= '0';
        wait for 38 ns;
        
        --Reset on
        s_arst <= '1';
        wait for 53ns;
        
        --Reset off
        s_arst <= '0';  
        wait for 300ns;
        s_arst <= '1';
        
        wait;     
    end process p_reset_gen;
    
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        s_d <= '0';
        s_en <= '0';
        
        assert (s_q = '0')
        report "asdasd" severity note;
        
        --d sekv
        wait for 10ns;
        s_d <= '1';
        wait for 10ns;
        s_d <= '0';
        wait for 10ns;
        s_d <= '1';
        wait for 10ns;
        s_d <= '0';
        wait for 10ns;
        s_d <= '1';
        wait for 10ns;
        s_d <= '0';
        
        assert (s_q = '0' and s_q_bar = '1')
        report "asdasd" severity note;
        
        s_en <= '1';
        --d sekv
        wait for 10ns;
        s_d <= '1';
        wait for 10ns;
        s_d <= '0';
        wait for 10ns;
        s_d <= '1';
        wait for 10ns;
        s_d <= '0';
        wait for 10ns;
        s_en <= '0';  --en=0
        wait for 200ns;
        s_d <= '0';

        
        --d sekv
        wait for 10ns;
        s_d <= '1';
        wait for 10ns;
        s_d <= '0';
        wait for 10ns;
        s_d <= '1';
        wait for 10ns;
        s_d <= '0';
        wait for 10ns;
        s_d <= '1';
        wait for 10ns;


    end process p_stimulus;
````
<img src="d_latch.png">