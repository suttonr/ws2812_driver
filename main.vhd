LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY top IS
	PORT(
		sclk 		:IN std_logic;
		sclk_enable :OUT std_logic;
		-- WS2812 PORTS
		serial_out  :OUT std_logic;
		serial1_out  :OUT std_logic;
		serial2_out  :OUT std_logic;

-- SPI
	    MISO_SLAVE  : out  std_logic;
        MOSI_SLAVE  : in   std_logic;						
        CSn_SLAVE   : in   std_logic;						
        SCLK_SLAVE  : in   std_logic;
		-- Debug
		button0     :IN std_logic;
		led0,led1,led2,led3,led4,led5,led6,led7	:INOUT std_logic
	);
END top;

ARCHITECTURE arch OF top IS
COMPONENT WS2812
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
		load_delay : inout std_logic
	);
END COMPONENT;
COMPONENT button_test
    PORT(
		clk		: IN std_logic;
		button	:IN std_logic;
		led		:OUT std_logic
	);
END COMPONENT;
COMPONENT load_mem
	port (
		clk : in std_logic;
		WrData : out std_logic_vector(23 downto 0);
		WrAddr : out std_logic_vector(8 downto 0);
		WrEnable : out std_logic_vector(8 downto 0);
		SPI_DATA_OUT  : in  std_logic_vector(7 downto 0);
        SPI_RX_RDY    : in  std_logic;
        SPI_RX_ERR    : in  std_logic;
		SPI_CS        : out std_logic;
		debug		  : inout std_logic
	);
END COMPONENT;
COMPONENT spi_slave
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
END COMPONENT;
COMPONENT frame_buffer_0
        port (WrAddress : in std_logic_vector(8 downto 0); 
        RdAddress : in std_logic_vector(8 downto 0); 
        Data : in std_logic_vector(23 downto 0); WE: in std_logic; 
        RdClock: in std_logic; RdClockEn: in std_logic; 
        Reset: in std_logic; WrClock: in std_logic; 
        WrClockEn: in std_logic; Q : out std_logic_vector(23 downto 0)
    );
 END COMPONENT;
    -- Frame Buffer
    signal WrAddress : std_logic_vector(8 downto 0) := (others => '0');
    signal RdAddress0 : std_logic_vector(8 downto 0) := (others => '0');
	signal RdAddress1 : std_logic_vector(8 downto 0) := (others => '0');
	signal RdAddress2 : std_logic_vector(8 downto 0) := (others => '0');
    signal Data : std_logic_vector(23 downto 0) := (others => '0');
    signal WE: std_logic_vector(8 downto 0);
    -- signal RdClock: std_logic := '0';
    signal RdClockEn: std_logic := '0';
    signal Reset: std_logic := '0';
    -- signal WrClock: std_logic := '0';
    signal WrClockEn: std_logic := '0';
    signal Q0 : std_logic_vector(23 downto 0);
	signal Q1 : std_logic_vector(23 downto 0);
	signal Q2 : std_logic_vector(23 downto 0);
	
	-- SPI
    signal CSn         :  std_logic;
    signal DATA_IN     :  std_logic_vector(7 downto 0);
    signal WR_RD       :  std_logic;
    signal DATA_OUT    :  std_logic_vector(7 downto 0);	
    signal TX_RDY      :  std_logic;						
    signal RX_RDY      :  std_logic;
    signal TX_ERR      :  std_logic;						
    signal RX_ERR      :  std_logic;						
    -- signal CLK_I       :   std_logic;						
    signal RST_I       :   std_logic;
    
	signal nButton     :   std_logic;


BEGIN
spi_port : spi_slave
	PORT MAP ( 
		CSn => CSn, DATA_IN => DATA_IN, WR_RD => WR_RD, DATA_OUT => DATA_OUT,
		TX_RDY => TX_RDY, RX_RDY => RX_RDY, TX_ERR => TX_ERR, RX_ERR => RX_ERR,
		MISO_SLAVE => MISO_SLAVE, MOSI_SLAVE => MOSI_SLAVE, CSn_SLAVE => CSn_SLAVE,
		SCLK_SLAVE => SCLK_SLAVE, CLK_I => sclk, RST_I => RST_I
	);
framebuffer0 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress0, Data => Data, 
		WE => WE(0), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
		WrClock => sclk, WrClockEn => WrClockEn, Q => Q0
	);
framebuffer1 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress1, Data => Data, 
		WE => WE(1), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
		WrClock => sclk, WrClockEn => WrClockEn, Q => Q1
	);
framebuffer2 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress2, Data => Data, 
		WE => WE(2), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
		WrClock => sclk, WrClockEn => WrClockEn, Q => Q2
	);
WS2812_0 : WS2812 
	PORT MAP (clk => sclk, PixelIn => Q0, PixelAddress => RdAddress0,
		serial => serial_out, load_delay => led0, enable => button0
	);
WS2812_1 : WS2812 
	PORT MAP (clk => sclk, PixelIn => Q1, PixelAddress => RdAddress1,
		serial => serial1_out, load_delay => led0, enable => button0
	);
WS2812_2 : WS2812 
	PORT MAP (clk => sclk, PixelIn => Q2, PixelAddress => RdAddress2,
		serial => serial2_out, load_delay => led0, enable => button0
	);
button_test_t : button_test PORT MAP ( clk => sclk, button => button0, led => led1);
load_mem_t : load_mem 
	PORT MAP (clk => sclk, WrData => Data, WrAddr => WrAddress, WrEnable => WE,
		SPI_DATA_OUT => DATA_OUT, SPI_RX_RDY => RX_RDY, SPI_RX_ERR => RX_ERR, SPI_CS => CSn,
		debug => led0
	);
PROCESS(sclk)
BEGIN
	sclk_enable <= '1';
	WrClockEn <= '1';
	Reset <= '0';
	RdClockEn <= '1';
	WR_RD <= '1';
	RST_I <= '0';
	nButton <= not button0;
	
END PROCESS;
END;
