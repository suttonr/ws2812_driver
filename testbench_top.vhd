library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all; 


entity top_tb is
end entity top_tb;

architecture test of top_tb is
  constant ClockFrequency : integer := 48e6; -- 48 MHz
  constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
  
  signal clock  : std_logic := '0';
  signal btn  : std_logic := '0';
begin
  -- Reset and clock
  -- clock <= not clock after 1 ns;
  clock <= not clock after ClockPeriod / 2;

  -- Instantiate the design under test
  dut: entity top(arch)
    port map (
      sclk => clock, button0 => btn
	  );
  -- Generate the test stimulus
  stimulus:
  process begin
    wait for 2000 ns;
    -- Testing complete
    wait;
  end process stimulus;
end architecture test;