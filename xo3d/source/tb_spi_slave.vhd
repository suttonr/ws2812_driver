library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_spi_slave is
end entity tb_spi_slave;

architecture testbench of tb_spi_slave is
    component spi_slave
        generic (
            DATA_LENGTH : integer := 8;
            SHIFT_DIRECTION : std_logic := '0';
            CLOCK_POLARITY : std_logic := '0';
            CLOCK_PHASE : std_logic := '0'
        );
        port (
            CSn : in std_logic;
            DATA_IN : in std_logic_vector(DATA_LENGTH-1 downto 0);
            WR_RD : in std_logic;
            DATA_OUT : out std_logic_vector(DATA_LENGTH-1 downto 0);
            TX_RDY : out std_logic;
            RX_RDY : out std_logic;
            TX_ERR : out std_logic;
            RX_ERR : out std_logic;
            CLK_I : in std_logic;
            RST_I : in std_logic;
            MISO_SLAVE : out std_logic;
            MOSI_SLAVE : in std_logic;
            CSn_SLAVE : in std_logic;
            SCLK_SLAVE : in std_logic
        );
    end component;

    signal CSn : std_logic := '1';
    signal DATA_IN : std_logic_vector(7 downto 0) := (others => '0');
    signal WR_RD : std_logic := '0';
    signal DATA_OUT : std_logic_vector(7 downto 0);
    signal TX_RDY : std_logic;
    signal RX_RDY : std_logic;
    signal TX_ERR : std_logic;
    signal RX_ERR : std_logic;
    signal CLK_I : std_logic := '0';
    signal RST_I : std_logic := '1';
    signal MISO_SLAVE : std_logic;
    signal MOSI_SLAVE : std_logic := '0';
    signal CSn_SLAVE : std_logic := '1';
    signal SCLK_SLAVE : std_logic := '0';

    constant clk_period : time := 20.833 ns; -- 48 MHz
    constant spi_clk_period : time := 100 ns; -- Slower for SPI

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: spi_slave
        port map (
            CSn => CSn,
            DATA_IN => DATA_IN,
            WR_RD => WR_RD,
            DATA_OUT => DATA_OUT,
            TX_RDY => TX_RDY,
            RX_RDY => RX_RDY,
            TX_ERR => TX_ERR,
            RX_ERR => RX_ERR,
            CLK_I => CLK_I,
            RST_I => RST_I,
            MISO_SLAVE => MISO_SLAVE,
            MOSI_SLAVE => MOSI_SLAVE,
            CSn_SLAVE => CSn_SLAVE,
            SCLK_SLAVE => SCLK_SLAVE
        );

    -- Clock generation
    clk_process : process
    begin
        CLK_I <= '0';
        wait for clk_period / 2;
        CLK_I <= '1';
        wait for clk_period / 2;
    end process;

    -- SPI Clock generation
    spi_clk_process : process
    begin
        SCLK_SLAVE <= '0';
        wait for spi_clk_period / 2;
        SCLK_SLAVE <= '1';
        wait for spi_clk_period / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset
        RST_I <= '1';
        wait for 100 ns;
        RST_I <= '0';
        wait for 100 ns;

        -- Test data transmission
        DATA_IN <= x"AA";
        WR_RD <= '0'; -- Write
        CSn <= '0';
        wait for clk_period;

        -- Simulate SPI transaction
        CSn_SLAVE <= '0';
        MOSI_SLAVE <= '1'; -- Example data
        wait for 8 * spi_clk_period; -- 8 bits
        CSn_SLAVE <= '1';

        -- Read data
        WR_RD <= '1'; -- Read
        wait for clk_period;

        -- End simulation
        assert false report "End of test" severity note;
        wait;
    end process;

end architecture testbench;
