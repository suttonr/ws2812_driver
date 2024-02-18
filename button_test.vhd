library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity button_test is
	generic (
		clock_frequency : integer := 48_000_000 -- Hertz
	);
	port (
		clk : in std_logic;
		button : in std_logic;
		led : out std_logic
	);
end entity button_test;

architecture arch of button_test is
begin
	process
	begin
		wait until rising_edge(clk);
		led <= button;
	end process;
end arch;