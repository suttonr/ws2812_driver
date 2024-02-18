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
  signal WE : std_logic;
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
	  WrEnable => WE
    );
  -- Generate the test stimulus
  stimulus:
  process begin
    wait for 200 ns;
    -- Testing complete
    wait;
  end process stimulus;
end architecture test;