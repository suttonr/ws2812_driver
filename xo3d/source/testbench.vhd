library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all; 


entity example_tb is
end entity example_tb;

architecture test of example_tb is
  constant ClockFrequency : integer := 48e6; -- 48 MHz
  constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
  
  signal clock  : std_logic := '0';
  signal out_q  : std_logic;
  signal out_l  : std_logic;
  signal PA : std_logic_vector(8 downto 0);
  signal PI : std_logic_vector(23 downto 0);
begin
  -- Reset and clock
  -- clock <= not clock after 1 ns;
  clock <= not clock after ClockPeriod / 2;

  -- Instantiate the design under test
  dut: entity ws2812(arch)
    port map (
      clk => clock,
      serial => out_q,
	  PixelIn => PI,
	  PixelAddress => PA,
	  load_delay => out_l
    );
  -- Generate the test stimulus
  stimulus:
  process begin
	wait until rising_edge(clock);
		if (PA = b"0_0000_0000") then
			PI <= x"FF0000";
		elsif (PA = b"0_0000_0001") then
			PI <= x"00FF00";
		elsif (PA = b"0_0000_0010") then
			PI <= x"0000FF";
		else
			PI <= x"0F0F0F";
		end if;
    -- wait for 200 ns;
    -- Testing complete
    wait;
  end process stimulus;
end architecture test;