
-------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all; 

entity spi_master is
	 port(
		sclk_master: out  std_logic;
		csn_master:  out  std_logic;
		mosi_master: out  std_logic;
		miso_master: in   std_logic
	);
end;

architecture arch_spi_master of spi_master is
	
constant  CLOCK_PHASE:std_logic:='0';
constant  CLOCK_POLARITY:std_logic:='0';
constant  SHIFT_DIRECTION:std_logic:='0';
constant  DATA_LENGTH:integer:= 8;		

--signal  master_data_in:std_logic_vector(7 downto 0);
--signal  master_data_out:std_logic_vector(7 downto 0);
--
--signal cnt:std_logic_vector(2 downto 0);

signal sclk_master_tmp: std_logic;
signal csn_master_tmp:  std_logic;
signal mosi_master_tmp: std_logic;

function slv4_xcha (inp: STD_LOGIC_VECTOR(3 downto 0)) return CHARACTER is
variable result: character;

begin
  case inp is
    when "0000" => result := '0';
    when "0001" => result := '1';
    when "0010" => result := '2';
    when "0011" => result := '3';
    when "0100" => result := '4';
    when "0101" => result := '5';
    when "0110" => result := '6';
    when "0111" => result := '7';
    when "1000" => result := '8';
    when "1001" => result := '9';
    when "1010" => result := 'a';
    when "1011" => result := 'b';
    when "1100" => result := 'c';
    when "1101" => result := 'd';
    when "1110" => result := 'e';
    when "1111" => result := 'f';
    when others => result := 'x';
  end case;
return result;
end;

function slv8_xstr (inp: STD_LOGIC_VECTOR(7 downto 0)) return STRING is
variable result : string (1 to 2);

begin
  result := slv4_xcha(inp(7 downto 4)) & slv4_xcha(inp(3 downto 0)); 
  return result;
end;	

procedure spi_master_operation (signal sclk_master_tmp : out std_logic;
                      signal csn_master_tmp: out std_logic;
                      signal mosi_master_tmp: out std_logic;
                      signal miso_master: in std_logic;
                      constant data_out:in STD_LOGIC_VECTOR(7 downto 0);
                      constant CLOCK_PHASE : in std_logic;
                      constant CLOCK_POLARITY : in std_logic;
                      constant SHIFT_DIRECTION : in std_logic;
                      constant DATA_LENGTH : in integer
                       ) is
variable master_data_in:std_logic_vector(7 downto 0):=(others => '0');
variable master_data_out:std_logic_vector(7 downto 0):=(others => '0');  
variable cnt:integer;                      	
variable  i:integer;
variable  sclk_cycle:time:=40 ns;

begin
	csn_master_tmp<='1';
	mosi_master_tmp<='0';
	report "SPI master sends data " & slv8_xstr(data_out);    
    master_data_out:=data_out;      
    csn_master_tmp<='0';        
    if(CLOCK_POLARITY='0') then
      if(CLOCK_PHASE='0') then
         cnt:=0;
         for i in 7 downto 0 loop
         	 if(SHIFT_DIRECTION='1') then
                mosi_master_tmp<=master_data_out(cnt);
           else
               mosi_master_tmp<=master_data_out(DATA_LENGTH-cnt-1);
           end if;
           wait for sclk_cycle;
           sclk_master_tmp<='1';  
           master_data_in:=(master_data_in(6 downto 0) & miso_master);  
           wait for sclk_cycle;
           sclk_master_tmp<='0';
           cnt:=cnt+1;           
         end loop;
         wait for 2 ns;
         csn_master_tmp<='1';  
      else 
         cnt:=0;
         for i in 7 downto 0 loop
           wait for sclk_cycle;
           sclk_master_tmp<='1';  
           if(SHIFT_DIRECTION='1') then
                mosi_master_tmp<=master_data_out(cnt);
           else
               mosi_master_tmp<=master_data_out(DATA_LENGTH-cnt-1);
           end if;
           cnt:=cnt+1;  
           wait for sclk_cycle;
           sclk_master_tmp<='0'; 
           master_data_in:=(master_data_in(6 downto 0) & miso_master);             
         end loop;
         wait for 2 ns;
         csn_master_tmp<='1';   
      end if;

    else 
      if(CLOCK_PHASE='0') then
         cnt:=0;
         for i in 7 downto 0 loop
           if(SHIFT_DIRECTION='1') then
                mosi_master_tmp<=master_data_out(cnt);
           else
               mosi_master_tmp<=master_data_out(DATA_LENGTH-cnt-1);
           end if;
           wait for sclk_cycle;
           sclk_master_tmp<='0'; 
           master_data_in:=(master_data_in(6 downto 0) & miso_master);   
           wait for sclk_cycle;
           sclk_master_tmp<='1';
           cnt:=cnt+1;
         end loop;
         wait for 2 ns;
         csn_master_tmp<='1';

      else 
         cnt:=0;
         for i in 7 downto 0 loop
           wait for sclk_cycle;
           sclk_master_tmp<='0';          
           if(SHIFT_DIRECTION='1') then
                mosi_master_tmp<=master_data_out(cnt);
           else
               mosi_master_tmp<=master_data_out(DATA_LENGTH-cnt-1);
           end if;
           cnt:=cnt+1;
           wait for sclk_cycle;
           sclk_master_tmp<='1'; 
           master_data_in:=(master_data_in(6 downto 0) & miso_master);              
         end loop;
         wait for 2 ns;
         csn_master_tmp<='1';  
      end if;
    end if;
    report "SPI master receive data " & slv8_xstr(master_data_in);
 end;   

begin
	
	sclk_master<=sclk_master_tmp;
	csn_master<=csn_master_tmp; 
	mosi_master<=mosi_master_tmp;
	
initial: process begin
	--wait for 1 ns;
  if(CLOCK_POLARITY='1') then
    sclk_master_tmp<='1' after 1 ns;
  else
    sclk_master_tmp<='0';
  end if;
    
  wait for 2 us; 
  
  -- Send RGB565 test data: 0E (command), 00 01 (address 1), FF FF (RGB565 white)
  spi_master_operation(sclk_master_tmp,csn_master_tmp,mosi_master_tmp,miso_master,
                       "00001110",CLOCK_PHASE,CLOCK_POLARITY,SHIFT_DIRECTION,DATA_LENGTH);

  wait for 100 ns;

  spi_master_operation(sclk_master_tmp,csn_master_tmp,mosi_master_tmp,miso_master,
                       "00000000",CLOCK_PHASE,CLOCK_POLARITY,SHIFT_DIRECTION,DATA_LENGTH);

  wait for 100 ns;

  spi_master_operation(sclk_master_tmp,csn_master_tmp,mosi_master_tmp,miso_master,
                       "00000001",CLOCK_PHASE,CLOCK_POLARITY,SHIFT_DIRECTION,DATA_LENGTH);

   wait for 100 ns;

  spi_master_operation(sclk_master_tmp,csn_master_tmp,mosi_master_tmp,miso_master,
                       "11111111",CLOCK_PHASE,CLOCK_POLARITY,SHIFT_DIRECTION,DATA_LENGTH);

   wait for 100 ns;

  spi_master_operation(sclk_master_tmp,csn_master_tmp,mosi_master_tmp,miso_master,
                       "11111111",CLOCK_PHASE,CLOCK_POLARITY,SHIFT_DIRECTION,DATA_LENGTH);
                       
  wait for 100 ns;                     
  wait;
end process;

end arch_spi_master;
  


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all; 


entity load_mem_tb is
end entity load_mem_tb;

architecture test of load_mem_tb is
  constant ClockFrequency : integer := 48e6; -- 48 MHz
  constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
  
  signal clock  : std_logic := '0';
  signal WD : std_logic_vector(23 downto 0);
  signal WA : std_logic_vector(8 downto 0);
  signal WE : std_logic_vector(23 downto 0);
  signal SPI_DATA_OUT  : std_logic_vector(7 downto 0);
  signal SPI_RX_RDY    : std_logic;
  signal SPI_RX_ERR    : std_logic;
  signal SPI_CS        : std_logic;
  signal debug		    : std_logic;
  signal DATA_IN     :  std_logic_vector(7 downto 0);
  signal WR_RD       :  std_logic;
  signal TX_RDY      :  std_logic;						
  signal TX_ERR      :  std_logic;						
  signal RST_I       :  std_logic;
  signal MISO_SLAVE  :  std_logic;
  signal MOSI_SLAVE  :  std_logic;						
  signal CSn_SLAVE   :  std_logic;						
  signal SCLK_SLAVE  :  std_logic;
begin
  -- Reset and clock
  -- clock <= not clock after 1 ns;
  clock <= not clock after ClockPeriod / 2;

  -- Instantiate the design under test
  dut: entity load_mem(arch)
    port map (
      clk => clock,
      WrData => WD,
	  WrAddr => WA,
	  WrEnable => WE,
	  SPI_DATA_OUT => SPI_DATA_OUT,
      SPI_RX_RDY => SPI_RX_RDY,
      SPI_RX_ERR => SPI_RX_ERR,
	  SPI_CS => SPI_CS,
	  SPI_RST => '0',
	  debug => debug
    );
  spi_s: entity spi_slave(arch)
    port map (
        CSn         => SPI_CS,
        DATA_IN     => DATA_IN,
        WR_RD       => WR_RD,
        DATA_OUT    => SPI_DATA_OUT,
        TX_RDY      => TX_RDY,
        RX_RDY      => SPI_RX_RDY,
        TX_ERR      => TX_ERR,
        RX_ERR      => SPI_RX_ERR,
        CLK_I       => clock,
        RST_I       => RST_I,
        MISO_SLAVE  => MISO_SLAVE,
        MOSI_SLAVE  => MOSI_SLAVE,
        CSn_SLAVE   => CSn_SLAVE,
        SCLK_SLAVE  => SCLK_SLAVE
	);
  spi_m: entity spi_master(arch_spi_master)
    port map (
	  sclk_master => SCLK_SLAVE,
	  csn_master  => CSn_SLAVE,
	  mosi_master => MOSI_SLAVE,
	  miso_master => MISO_SLAVE
	);

  -- RGB565 test verification
  verify_rgb565: process(clock)
  begin
    if rising_edge(clock) then
      if WE /= x"000000" then
        -- Check if RGB565 data was correctly converted to RGB888
        -- RGB565 FFFF (R=31,G=63,B=31) should convert to F8FCF8 at address 1
        if WA = "000000001" and WD = x"F8FCF8" then
          report "RGB565 test PASSED: WD = F8FCF8" severity note;
        elsif WA = "000000001" then
          report "RGB565 test FAILED: expected F8FCF8" severity error;
        end if;
      end if;
    end if;
  end process verify_rgb565;
	
  -- Generate the test stimulus
  stimulus:
  process begin
    RST_I <= '0';
	WR_RD <= '1';
	
    wait for 200 ns;
    -- Testing complete
    wait;
  end process stimulus;
end architecture test;
