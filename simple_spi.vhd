-- --------------------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
-- --------------------------------------------------------------------
-- Copyright (c) 2009~2010 by Lattice Semiconductor Corporation
-- --------------------------------------------------------------------
--
-- Permission:
--
-- Lattice Semiconductor grants permission to use this code for use
-- in synthesis for any Lattice programmable logic product. Other
-- use of this code, including the selling or duplication of any
-- portion is strictly prohibited.
--
-- Disclaimer:
--
-- This VHDL or Verilog source code is intended as a design reference
-- which illustrates how these types of functions can be implemented.
-- It is the user's responsibility to verify their design for
-- consistency and functionality through the use of formal
-- verification methods. Lattice Semiconductor provides no warranty
-- regarding the use or functionality of this code.
--
-- --------------------------------------------------------------------
--
-- Lattice Semiconductor Corporation
-- 5555 NE Moore Court
-- Hillsboro, OR 97214
-- U.S.A
--
-- TEL: 1-800-Lattice (USA and Canada)
-- 503-268-8001 (other locations)
--
-- web: http://www.latticesemi.com/
-- email: techsupport@latticesemi.com
--
-- --------------------------------------------------------------------
-- Code Revision History :
-- --------------------------------------------------------------------
-- Ver: | Author |Mod. Date |Changes Made:
-- V1.0 |        |02/10     |initial version 
-- --------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity spi_slave is
	generic (DATA_LENGTH : integer:=8;
	         SHIFT_DIRECTION: std_logic := '0';	         
	         CLOCK_POLARITY:std_logic:='0'; 	         
	         CLOCK_PHASE:std_logic:='0');
  port (
        CSn       : in  std_logic;
        DATA_IN   : in  std_logic_vector(7 downto 0);
        WR_RD     : in  std_logic;
        DATA_OUT  : out  std_logic_vector(7 downto 0);	
        TX_RDY     : out  std_logic;						
        RX_RDY     : out  std_logic;
        TX_ERR      : out std_logic;						
        RX_ERR      : out std_logic;						
        CLK_I     : in std_logic;						
        RST_I     : in  std_logic;
        MISO_SLAVE  : out std_logic;
        MOSI_SLAVE  : in  std_logic;						
        CSn_SLAVE   : in std_logic;						
        SCLK_SLAVE   : in std_logic          			          					          				
        );
        
end;

architecture arch of spi_slave is
	constant UDLY:time:=1 ns;
  signal    latch_s_data:std_logic_vector(7 downto 0);		
  signal    reg_rxdata:std_logic_vector(DATA_LENGTH-1 downto 0);
  signal    reg_txdata:std_logic_vector(DATA_LENGTH-1 downto 0);
  signal    rx_shift_data:std_logic_vector(DATA_LENGTH-1 downto 0);
     
  signal                     reg_toe:std_logic;
  signal                     reg_roe:std_logic;
  signal                     reg_trdy:std_logic;
  signal                     reg_rrdy:std_logic;
  
  signal                     tx_done:std_logic;
  signal                     rx_done:std_logic;
  signal                     rx_done_flip1:std_logic;
  signal                     rx_done_flip2:std_logic;
  signal                     rx_done_flip3:std_logic;
  signal                     tx_done_flip1:std_logic;
  signal                     tx_done_flip2:std_logic;
  signal                     tx_done_flip3:std_logic;
  signal                rx_data_cnt:std_logic_vector(5 downto 0) := "000000";                     
  signal                tx_data_cnt:std_logic_vector(5 downto 0) := "000000";   
  
	begin
		
		TX_RDY<=reg_trdy;     
    RX_RDY<=reg_rrdy;     
    TX_ERR<=reg_toe;       
    RX_ERR<=reg_roe;       
    DATA_OUT<=reg_rxdata;
    
    process(CLK_I,RST_I) begin
     if(RST_I='1') then
       latch_s_data  <= (others => '0');
     elsif rising_edge(CLK_I) then
       if (WR_RD='0' and CSn='0' and reg_trdy='1') then
         latch_s_data  <=DATA_IN;
       end if;
     end if;
    end process;

--Receive Data Register
   process(CLK_I,RST_I) begin
     if(RST_I='1') then
       reg_rxdata            <=(others => '0');
     elsif rising_edge(CLK_I) then
       if (rx_done_flip1='1' and rx_done_flip2='0') then
         reg_rxdata            <= rx_shift_data;
       end if;
     end if;
   end process;
       
--Transmit Data Register
   process(CLK_I,RST_I) begin
     if(RST_I='1') then
       reg_txdata               <= (others => '0');
     elsif rising_edge(CLK_I) then 
       reg_txdata               <= latch_s_data;
     end if;
   end process;
   
   -------------------------------For Rx data, 
    -------------------sample at posedge when CLOCK_POLARITY=0 and CLOCK_PHASE is 0 

   u1: if CLOCK_POLARITY='0' and CLOCK_PHASE='0' generate   
   
          process(SCLK_SLAVE,RST_I) begin
            if (RST_I='1') then 
              rx_shift_data     <= (others => '0');
            elsif rising_edge(SCLK_SLAVE) then
             if (CSn_SLAVE='0') then
                if (SHIFT_DIRECTION='1') then
                   rx_shift_data   <= MOSI_SLAVE & rx_shift_data(DATA_LENGTH-1 downto 1);
                else
                   rx_shift_data   <= rx_shift_data(DATA_LENGTH-2 downto 0) & MOSI_SLAVE;
                end if;
             end if;
            end if;
          end process;  
        
          process(SCLK_SLAVE ,RST_I) begin
            if (RST_I='1') then 
               rx_data_cnt     <= (others => '0'); 
            elsif rising_edge(SCLK_SLAVE) then
              if (rx_data_cnt = DATA_LENGTH - 1) then
                rx_data_cnt     <=(others => '0');
              elsif (CSn_SLAVE='0') then
               rx_data_cnt     <=rx_data_cnt + 1;
              end if;
            end if;
          end process;
        
          process(SCLK_SLAVE ,RST_I) begin
            if (RST_I='1') then 
               rx_done         <= '0'; 
            elsif rising_edge(SCLK_SLAVE) then
              if (rx_data_cnt = DATA_LENGTH - 1) then
                rx_done         <= '1'; 
              else
                rx_done         <= '0'; 
              end if;
            end if;
          end process;
    end generate;           
         -------------------sample at negedge when CLOCK_POLARITY=0 and CLOCK_PHASE is 1
    u2: if CLOCK_POLARITY='0' and CLOCK_PHASE='1' generate
          --For Rx data, sample at negedge when CLOCK_PHASE is 1
          process(SCLK_SLAVE ,RST_I) begin
             if (RST_I='1') then 
               rx_shift_data     <= (others => '0');
             elsif falling_edge(SCLK_SLAVE) then
              if (CSn_SLAVE='0') then
                 if (SHIFT_DIRECTION='1') then
                    rx_shift_data   <= MOSI_SLAVE & rx_shift_data(DATA_LENGTH-1 downto 1);
                 else
                    rx_shift_data   <= rx_shift_data(DATA_LENGTH-2 downto 0) & MOSI_SLAVE;
                 end if;
              end if;
             end if;
           end process;  
         
            process(SCLK_SLAVE ,RST_I) begin
             if (RST_I='1') then 
                rx_data_cnt     <= (others => '0'); 
             elsif falling_edge(SCLK_SLAVE) then
               if (rx_data_cnt = DATA_LENGTH - 1) then 
                 rx_data_cnt     <=(others => '0');
               elsif (CSn_SLAVE='0') then
                rx_data_cnt     <=rx_data_cnt + 1;
               end if;
             end if;
           end process;
         
           process(SCLK_SLAVE ,RST_I) begin
             if (RST_I='1') then 
                rx_done         <= '0'; 
             elsif falling_edge(SCLK_SLAVE) then
               if (rx_data_cnt = DATA_LENGTH - 1) then
                 rx_done         <= '1'; 
               else
                 rx_done         <= '0'; 
               end if;
             end if;
           end process;
     end generate;  
   -------------------sample at negedge when CLOCK_POLARITY=1 and CLOCK_PHASE is 0      
   u3:if CLOCK_POLARITY='1' and CLOCK_PHASE='0' generate
           
           process(SCLK_SLAVE ,RST_I) begin
             if (RST_I='1') then 
               rx_shift_data     <= (others => '0');
             elsif falling_edge(SCLK_SLAVE) then
              if (CSn_SLAVE='0') then
                 if (SHIFT_DIRECTION='1') then
                    rx_shift_data   <= MOSI_SLAVE & rx_shift_data(DATA_LENGTH-1 downto 1);
                 else
                    rx_shift_data   <= rx_shift_data(DATA_LENGTH-2 downto 0) & MOSI_SLAVE;
                 end if;
              end if;
             end if;
           end process;  
         
            process(SCLK_SLAVE ,RST_I) begin
             if (RST_I='1') then 
                rx_data_cnt     <= (others => '0'); 
             elsif falling_edge(SCLK_SLAVE) then
               if (rx_data_cnt = DATA_LENGTH - 1) then
                 rx_data_cnt     <=(others => '0');
               elsif (CSn_SLAVE='0') then
                rx_data_cnt     <=rx_data_cnt + 1;
               end if;
             end if;
           end process;
         
           process(SCLK_SLAVE ,RST_I) begin
             if (RST_I='1') then 
                rx_done         <= '0'; 
             elsif falling_edge(SCLK_SLAVE) then
               if (rx_data_cnt = DATA_LENGTH - 1) then
                 rx_done         <= '1'; 
               else
                 rx_done         <= '0'; 
               end if;
             end if;
           end process;
     end generate; 
         
         -------------------sample at posedge when CLOCK_POLARITY=1 and CLOCK_PHASE is 1
     u4:    if CLOCK_POLARITY='1' and CLOCK_PHASE='1' generate
          --For Rx data, sample at negedge when CLOCK_PHASE is 1
          process(SCLK_SLAVE,RST_I) begin
             if (RST_I='1') then 
               rx_shift_data     <= (others => '0');
             elsif rising_edge(SCLK_SLAVE) then
              if (CSn_SLAVE='0') then
                 if (SHIFT_DIRECTION='1') then
                    rx_shift_data   <= MOSI_SLAVE & rx_shift_data(DATA_LENGTH-1 downto 1);
                 else
                    rx_shift_data   <= rx_shift_data(DATA_LENGTH-2 downto 0) & MOSI_SLAVE;
                 end if;
              end if;
             end if;
           end process;  
         
           process(SCLK_SLAVE ,RST_I) begin
             if (RST_I='1') then 
                rx_data_cnt     <= (others => '0'); 
             elsif rising_edge(SCLK_SLAVE) then
               if (rx_data_cnt = DATA_LENGTH - 1) then
                 rx_data_cnt     <=(others => '0');
               elsif (CSn_SLAVE='0') then
                rx_data_cnt     <=rx_data_cnt + 1;
               end if;
             end if;
           end process;
         
           process(SCLK_SLAVE ,RST_I) begin
             if (RST_I='1') then 
                rx_done         <= '0'; 
             elsif rising_edge(SCLK_SLAVE) then
               if (rx_data_cnt = DATA_LENGTH - 1) then
                 rx_done         <= '1'; 
               else
                 rx_done         <= '0'; 
               end if;
             end if;
           end process;
     end generate;  
     
   process(CLK_I,RST_I) begin
     if (RST_I='1') then
       rx_done_flip1                <= '0';
       rx_done_flip2                <= '0';
       rx_done_flip3                <= '0';
     elsif rising_edge(CLK_I) then
       rx_done_flip1                <= rx_done;
       rx_done_flip2                <= rx_done_flip1;
       rx_done_flip3                <= rx_done_flip2;
     end if;
   end process;
    

   process(CLK_I,RST_I) begin
     if (RST_I='1') then 
       reg_rrdy                     <= '0';  
     elsif rising_edge(CLK_I) then
      if (rx_done_flip2='1' and rx_done_flip3='0') then
        reg_rrdy                     <= '1';
      elsif (WR_RD='1' and CSn='0') then
        reg_rrdy                     <= '0';
      end if;
     end if;
   end process;
   
   process(CLK_I,RST_I) begin
     if (RST_I='1') then 
       reg_roe                      <= '0';  
     elsif rising_edge(CLK_I) then
      if (rx_done_flip2='1' and rx_done_flip3='0' and reg_rrdy='1') then
        reg_roe                      <= '1';   
      elsif (WR_RD='1' and CSn='0') then
        reg_roe                      <= '0';
      end if;
     end if;
   end process; 

----------------------For Tx data, 
   -------------------------------------update at negedge when CLOCK_POLARITY=0 and CLOCK_PHASE is 0
 u11:  if CLOCK_POLARITY='0' and CLOCK_PHASE='0' generate
                  
             process(reg_txdata,tx_data_cnt,CSn_SLAVE ) begin
               if (CSn_SLAVE='0') then
               	 if(SHIFT_DIRECTION='1') then
                    MISO_SLAVE   <= reg_txdata(conv_integer(tx_data_cnt));
                 else
                    MISO_SLAVE   <= reg_txdata(conv_integer(DATA_LENGTH-tx_data_cnt-1));
                 end if;                                
               else
                 MISO_SLAVE<='Z';
               end if;
             end process;
             
             process(SCLK_SLAVE ,RST_I) begin
               if (RST_I='1') then 
                  tx_data_cnt     <= (others => '0'); 
               elsif falling_edge(SCLK_SLAVE) then
                 if (tx_data_cnt = DATA_LENGTH - 1) then
                   tx_data_cnt     <= (others => '0');
                 elsif (CSn_SLAVE='0') then
                  tx_data_cnt     <= tx_data_cnt + 1;
                 end if;
               end if;
             end process;
                  
             process(SCLK_SLAVE ,RST_I) begin
               if (RST_I='1') then 
                  tx_done     <='0'; 
               elsif falling_edge(SCLK_SLAVE) then
                 if (tx_data_cnt = DATA_LENGTH - 1) then
                  tx_done     <= '1';
                 else 
                  tx_done     <= '0';
                 end if;
               end if;
             end process;
     end generate; 
           -------------------------------------update at posedge when CLOCK_POLARITY=0 and CLOCK_PHASE is 1         
   u22:     if CLOCK_POLARITY='0' and CLOCK_PHASE='1' generate
                                                                     
             process (SCLK_SLAVE) begin
               if rising_edge(CLK_I) then                      
                 if (CSn_SLAVE='0') then
                 	 if(SHIFT_DIRECTION='1') then
                      MISO_SLAVE   <= reg_txdata(conv_integer(tx_data_cnt));
                   else        
                      MISO_SLAVE   <= reg_txdata(conv_integer(DATA_LENGTH-tx_data_cnt-1));
                   end if;
                 else
                   MISO_SLAVE<='Z';
                 end if;
              end if;
             end process;
                                                                                   
             process(SCLK_SLAVE ,RST_I) begin
               if (RST_I='1') then 
                  tx_data_cnt     <= (others => '0'); 
               elsif rising_edge(SCLK_SLAVE) then
                 if (tx_data_cnt = DATA_LENGTH - 1) then
                   tx_data_cnt     <= (others => '0');
                 elsif (CSn_SLAVE='0') then
                  tx_data_cnt     <=  tx_data_cnt + 1;
                 end if;
               end if;
             end process;
                  
             process(SCLK_SLAVE ,RST_I) begin
               if (RST_I='1') then 
                  tx_done     <= '0'; 
               elsif rising_edge(SCLK_SLAVE) then
                 if (tx_data_cnt = DATA_LENGTH - 1) then
                  tx_done     <= '1';
                 else 
                  tx_done     <= '0';
                 end if;
               end if;
             end process;  
     end generate;
           
   -------------------------------------update at posedge when CLOCK_POLARITY=1 and CLOCK_PHASE is 0        
 u33:  if CLOCK_POLARITY='1' and CLOCK_PHASE='0' generate                                                                    
              process(reg_txdata,tx_data_cnt,CSn_SLAVE ) begin
               if (CSn_SLAVE='0') then
               	 if(SHIFT_DIRECTION='1') then
                    MISO_SLAVE   <= reg_txdata(conv_integer(tx_data_cnt));
                 else
                    MISO_SLAVE   <= reg_txdata(conv_integer(DATA_LENGTH-tx_data_cnt-1));
                 end if;                                
               else
                 MISO_SLAVE<='Z';
               end if;
             end process;
                                                         
              process(SCLK_SLAVE ,RST_I) begin
               if (RST_I='1') then 
                  tx_data_cnt     <= (others => '0'); 
               elsif rising_edge(SCLK_SLAVE) then
                 if (tx_data_cnt = DATA_LENGTH - 1) then
                   tx_data_cnt     <= (others => '0');
                 elsif (CSn_SLAVE='0') then
                  tx_data_cnt     <=  tx_data_cnt + 1;
                 end if;
               end if;
             end process;
                  
             process(SCLK_SLAVE ,RST_I) begin
               if (RST_I='1') then 
                  tx_done     <= '0'; 
               elsif rising_edge(SCLK_SLAVE) then
                 if (tx_data_cnt = DATA_LENGTH - 1) then
                  tx_done     <= '1';
                 else 
                  tx_done     <= '0';
                 end if;
               end if;
             end process;
                  
          end generate;        
                  
           -------------------------------------update at negedge when CLOCK_POLARITY=1 and CLOCK_PHASE is 1        
   u44:    if CLOCK_POLARITY='1' and CLOCK_PHASE='1' generate            
                                                         
              process (SCLK_SLAVE) begin 
               if falling_edge(CLK_I) then                      
                 if (CSn_SLAVE='0') then
                 	 if(SHIFT_DIRECTION='1') then
                      MISO_SLAVE   <= reg_txdata(conv_integer(tx_data_cnt));
                   else        
                      MISO_SLAVE   <= reg_txdata(conv_integer(DATA_LENGTH-tx_data_cnt-1));
                   end if;
                 else
                   MISO_SLAVE<='Z';
                 end if;
              end if;
             end process;
                 
             process(SCLK_SLAVE ,RST_I) begin
               if (RST_I='1') then 
                  tx_data_cnt     <= (others => '0'); 
               elsif falling_edge(SCLK_SLAVE) then
                 if (tx_data_cnt = DATA_LENGTH - 1) then
                   tx_data_cnt     <= (others => '0');
                 elsif (CSn_SLAVE='0') then
                  tx_data_cnt     <= tx_data_cnt + 1;
                 end if;
               end if;
             end process;
                  
             process(SCLK_SLAVE ,RST_I) begin
               if (RST_I='1') then 
                  tx_done     <='0'; 
               elsif falling_edge(SCLK_SLAVE) then
                 if (tx_data_cnt = DATA_LENGTH - 1) then
                  tx_done     <= '1';
                 else 
                  tx_done     <= '0';
                 end if;
               end if;
             end process; 
         
         end generate;
         
    process(CLK_I,RST_I) begin
     if (RST_I='1') then
       tx_done_flip1                <= '0';
       tx_done_flip2                <= '0';
       tx_done_flip3                <= '0';
     elsif rising_edge(CLK_I) then
       tx_done_flip1                <= tx_done;
       tx_done_flip2                <= tx_done_flip1;
       tx_done_flip3                <= tx_done_flip2;
     end if;
   end process;
          
   process(CLK_I,RST_I) begin
     if (RST_I='1') then 
       reg_roe                      <= '0';  
     elsif rising_edge(CLK_I) then
      if (rx_done_flip2='1' and rx_done_flip3='0' and reg_rrdy='1') then 
        reg_roe                      <= '1';   
      elsif (WR_RD='1' and CSn='0') then
        reg_roe                      <= '0';
      end if;
     end if;
   end process;       
   
    
   process(CLK_I,RST_I) begin
     if (RST_I='1') then 
        reg_trdy     <= '1';
     elsif rising_edge(CLK_I) then   
      if (WR_RD='0' and CSn='0') then
        reg_trdy     <= '0';
      elsif (tx_done_flip2='1' and tx_done_flip3='0') then
        reg_trdy     <= '1';
      end if;
     end if;
   end process;

 
  process(CLK_I,RST_I) begin
     if (RST_I='1') then 
       reg_toe      <= '0';
     elsif rising_edge(CLK_I) then
      if(reg_trdy='0' and WR_RD='0' and CSn='0') then
       reg_toe      <= '1';
      elsif(WR_RD='0' and CSn='0') then
       reg_toe      <= '0';
      end if;
     end if;
  end process;
     
end arch;