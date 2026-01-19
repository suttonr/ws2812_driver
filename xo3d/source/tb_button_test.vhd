library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_button_test is
end entity tb_button_test;

architecture testbench of tb_button_test is
    component button_test
        generic (
            clock_frequency : integer := 48_000_000 -- Hertz
        );
        port (
            clk : in std_logic;
            button : in std_logic;
            led : out std_logic
        );
    end component;

    signal clk : std_logic := '0';
    signal button : std_logic := '0';
    signal led : std_logic;

    constant clk_period : time := 20.833 ns; -- 48 MHz

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: button_test
        port map (
            clk => clk,
            button => button,
            led => led
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Test button low
        button <= '0';
        wait for 2 * clk_period;

        -- Test button high
        button <= '1';
        wait for 2 * clk_period;

        -- Toggle button
        button <= '0';
        wait for clk_period;
        button <= '1';
        wait for clk_period;

        -- End simulation
        assert false report "End of test" severity note;
        wait;
    end process;

end architecture testbench;
