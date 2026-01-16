LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
library machXO3;
use machXO3.all;

ENTITY top IS
	PORT(
		sclk 		:IN std_logic;
		sclk_enable :OUT std_logic;
		ws2813_out   :OUT std_logic_vector(20 downto 0);

-- SPI
	    MISO_SLAVE  : out  std_logic;
        MOSI_SLAVE  : in   std_logic;						
        CSn_SLAVE   : in   std_logic;						
        SCLK_SLAVE  : in   std_logic;
		SPI_RST     : in   std_logic;
		-- Debug
		-- button0     :IN std_logic;
		-- Green LEDs
		led0,led1,led2,led3,led4,led5,led6,led7	:INOUT std_logic;
		-- Yellow LEDs
		yled0,yled1,yled2,yled3,yled4,yled5,yled6,yled7	:INOUT std_logic
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
		status : inout std_logic
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
		WrEnable : out std_logic_vector(23 downto 0);
		SPI_DATA_OUT  : in  std_logic_vector(7 downto 0);
        SPI_RX_RDY    : in  std_logic;
        SPI_RX_ERR    : in  std_logic;
		SPI_CS        : out std_logic;
		SPI_RST       : in   std_logic;
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
	type t_address_arr is array (0 to 20) of std_logic_vector(8 downto 0);
	type t_output_arr is array (0 to 20) of std_logic_vector(23 downto 0);
	type t_port_bits is array (0 to 20) of std_logic;

 
    -- Frame Buffer
    signal WrAddress : std_logic_vector(8 downto 0) := (others => '0');
	signal RdAddress : t_address_arr;
    signal Data : std_logic_vector(23 downto 0) := (others => '0');
    signal WE: std_logic_vector(23 downto 0);
    signal RdClockEn: std_logic := '0';
    signal Reset: std_logic := '0';
    signal WrClockEn: std_logic := '0';
	signal Q : t_output_arr;
	signal port_status : t_port_bits;
	signal port_enable : t_port_bits;
	
	-- SPI
    signal CSn         :  std_logic;
    signal DATA_IN     :  std_logic_vector(7 downto 0);
    signal WR_RD       :  std_logic;
    signal DATA_OUT    :  std_logic_vector(7 downto 0);	
    signal TX_RDY      :  std_logic;						
    signal RX_RDY      :  std_logic;
    signal TX_ERR      :  std_logic;						
    signal RX_ERR      :  std_logic;												
    signal RST_I       :   std_logic;
	signal load_debug  :   std_logic;
    
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
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(0), Data => Data, 
                WE => WE(0), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(0)
        );
WS2812_0 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(0), PixelAddress => RdAddress(0),
                serial => ws2813_out(0), status => port_status(0), enable => port_enable(0)
        );


framebuffer1 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(1), Data => Data, 
                WE => WE(1), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(1)
        );
WS2812_1 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(1), PixelAddress => RdAddress(1),
                serial => ws2813_out(1), status => port_status(1), enable => port_enable(1)
        );


framebuffer2 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(2), Data => Data, 
                WE => WE(2), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(2)
        );
WS2812_2 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(2), PixelAddress => RdAddress(2),
                serial => ws2813_out(2), status => port_status(2), enable => port_enable(2)
        );


framebuffer3 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(3), Data => Data, 
                WE => WE(3), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(3)
        );
WS2812_3 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(3), PixelAddress => RdAddress(3),
                serial => ws2813_out(3), status => port_status(3), enable => port_enable(3)
        );


framebuffer4 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(4), Data => Data, 
                WE => WE(4), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(4)
        );
WS2812_4 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(4), PixelAddress => RdAddress(4),
                serial => ws2813_out(4), status => port_status(4), enable => port_enable(4)
        );


framebuffer5 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(5), Data => Data, 
                WE => WE(5), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(5)
        );
WS2812_5 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(5), PixelAddress => RdAddress(5),
                serial => ws2813_out(5), status => port_status(5), enable => port_enable(5)
        );


framebuffer6 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(6), Data => Data, 
                WE => WE(6), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(6)
        );
WS2812_6 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(6), PixelAddress => RdAddress(6),
                serial => ws2813_out(6), status => port_status(6), enable => port_enable(6)
        );


framebuffer7 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(7), Data => Data, 
                WE => WE(7), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(7)
        );
WS2812_7 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(7), PixelAddress => RdAddress(7),
                serial => ws2813_out(7), status => port_status(7), enable => port_enable(7)
        );


framebuffer8 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(8), Data => Data, 
                WE => WE(8), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(8)
        );
WS2812_8 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(8), PixelAddress => RdAddress(8),
                serial => ws2813_out(8), status => port_status(8), enable => port_enable(8)
        );


framebuffer9 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(9), Data => Data, 
                WE => WE(9), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(9)
        );
WS2812_9 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(9), PixelAddress => RdAddress(9),
                serial => ws2813_out(9), status => port_status(9), enable => port_enable(9)
        );


framebuffer10 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(10), Data => Data, 
                WE => WE(10), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(10)
        );
WS2812_10 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(10), PixelAddress => RdAddress(10),
                serial => ws2813_out(10), status => port_status(10), enable => port_enable(10)
        );


framebuffer11 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(11), Data => Data, 
                WE => WE(11), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(11)
        );
WS2812_11 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(11), PixelAddress => RdAddress(11),
                serial => ws2813_out(11), status => port_status(11), enable => port_enable(11)
        );


framebuffer12 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(12), Data => Data, 
                WE => WE(12), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(12)
        );
WS2812_12 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(12), PixelAddress => RdAddress(12),
                serial => ws2813_out(12), status => port_status(12), enable => port_enable(12)
        );


framebuffer13 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(13), Data => Data, 
                WE => WE(13), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(13)
        );
WS2812_13 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(13), PixelAddress => RdAddress(13),
                serial => ws2813_out(13), status => port_status(13), enable => port_enable(13)
        );


framebuffer14 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(14), Data => Data, 
                WE => WE(14), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(14)
        );
WS2812_14 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(14), PixelAddress => RdAddress(14),
                serial => ws2813_out(14), status => port_status(14), enable => port_enable(14)
        );


framebuffer15 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(15), Data => Data, 
                WE => WE(15), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(15)
        );
WS2812_15 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(15), PixelAddress => RdAddress(15),
                serial => ws2813_out(15), status => port_status(15), enable => port_enable(15)
        );


framebuffer16 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(16), Data => Data, 
                WE => WE(16), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(16)
        );
WS2812_16 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(16), PixelAddress => RdAddress(16),
                serial => ws2813_out(16), status => port_status(16), enable => port_enable(16)
        );


framebuffer17 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(17), Data => Data, 
                WE => WE(17), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(17)
        );
WS2812_17 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(17), PixelAddress => RdAddress(17),
                serial => ws2813_out(17), status => port_status(17), enable => port_enable(17)
        );


framebuffer18 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(18), Data => Data, 
                WE => WE(18), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(18)
        );
WS2812_18 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(18), PixelAddress => RdAddress(18),
                serial => ws2813_out(18), status => port_status(18), enable => port_enable(18)
        );


framebuffer19 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(19), Data => Data, 
                WE => WE(19), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(19)
        );
WS2812_19 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(19), PixelAddress => RdAddress(19),
                serial => ws2813_out(19), status => port_status(19), enable => port_enable(19)
        );


framebuffer20 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress(20), Data => Data, 
                WE => WE(20), RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
                WrClock => sclk, WrClockEn => WrClockEn, Q => Q(20)
        );
WS2812_20 : WS2812 
        PORT MAP (clk => sclk, PixelIn => Q(20), PixelAddress => RdAddress(20),
                serial => ws2813_out(20), status => port_status(20), enable => port_enable(20)
        );
load_mem_t : load_mem 
	PORT MAP (clk => sclk, WrData => Data, WrAddr => WrAddress, WrEnable => WE,
		SPI_DATA_OUT => DATA_OUT, SPI_RX_RDY => RX_RDY, SPI_RX_ERR => RX_ERR, SPI_CS => CSn,
		SPI_RST => '0', debug => load_debug
	);
PROCESS(sclk)
BEGIN
	sclk_enable <= '1';
	WrClockEn <= '1';
	Reset <= '0';
	RdClockEn <= '1';
	WR_RD <= '1';
	RST_I <= SPI_RST;
	port_enable <= (others => '1');
	
	-- Setup LED Logic
    led0 <= port_enable(0) or port_enable(1) or port_enable(2);
	led1 <= port_enable(3) or port_enable(4) or port_enable(5);
	led2 <= port_enable(6) or port_enable(7) or port_enable(8);
	led3 <= port_enable(9) or port_enable(10) or port_enable(11);
	led4 <= port_enable(12) or port_enable(13) or port_enable(14);
	led5 <= port_enable(15) or port_enable(16) or port_enable(17);
	led6 <= port_enable(18) or port_enable(19) or port_enable(20);
	-- led7 <= not load_debug;
	yled0 <= port_status(0) or port_status(1) or port_status(2);
    yled1 <= port_status(3) or port_status(4) or port_status(5);
    yled2 <= port_status(6) or port_status(7) or port_status(8);
    yled3 <= port_status(9) or port_status(10) or port_status(11);
    yled4 <= port_status(12) or port_status(13) or port_status(14);
    yled5 <= port_status(15) or port_status(16) or port_status(17);
    yled6 <= port_status(18) or port_status(19) or port_status(20);
END PROCESS;
END;
