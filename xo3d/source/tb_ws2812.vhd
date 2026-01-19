library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ws2812 is
end entity tb_ws2812;

architecture testbench of tb_ws2812 is
    component WS2812
        generic (
            clock_frequency : integer := 48_000_000; -- Hertz
            max_address : std_logic_vector(8 downto 0) := b"111111111"
        );
        port (
            clk : in std_logic;
            PixelIn : in std_logic_vector(23 downto 0);
            enable : in std_logic;
            PixelAddress : out std_logic_vector(8 downto 0);
            serial : out std_logic;
            status : inout std_logic
        );
    end component;

    signal clk : std_logic := '0';
    signal PixelIn : std_logic_vector(23 downto 0) := (others => '0');
    signal enable : std_logic := '0';
    signal PixelAddress : std_logic_vector(8 downto 0);
    signal serial : std_logic;
    signal status : std_logic;

    constant clk_period : time := 20.833 ns; -- 48 MHz

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: WS2812
        port map (
            clk => clk,
            PixelIn => PixelIn,
            enable => enable,
            PixelAddress => PixelAddress,
            serial => serial,
            status => status
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
        -- Initialize
        enable <= '0';
        PixelIn <= x"FF0000"; -- Red pixel
        wait for 100 ns;

        -- Enable the module
        enable <= '1';
        wait for 1000 ns; -- Wait for some cycles

        -- Change pixel data
        PixelIn <= x"00FF00"; -- Green
        wait for 1000 ns;

        -- Disable
        enable <= '0';
        wait for 100 ns;

        -- End simulation
        assert false report "End of test" severity note;
        wait;
    end process;

end architecture testbench;
