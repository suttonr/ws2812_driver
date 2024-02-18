LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY top IS
	PORT(
		sclk 		:IN std_logic;
		button0     :IN std_logic;
		led0,led1	:INOUT std_logic;
		serial_out  :OUT std_logic;
		sclk_enable :OUT std_logic
	);
END top;

ARCHITECTURE arch OF top IS
COMPONENT WS2812
	generic (
		clock_frequency : integer := 48_000_000; -- Hertz
		max_address : std_logic_vector(8 downto 0) := b"011111111"
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
		WrEnable : out std_logic
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
    signal WrAddress : std_logic_vector(8 downto 0) := (others => '0');
    signal RdAddress : std_logic_vector(8 downto 0) := (others => '0');
    signal Data : std_logic_vector(23 downto 0) := (others => '0');
    signal WE: std_logic := '0';
    -- signal RdClock: std_logic := '0';
    signal RdClockEn: std_logic := '0';
    signal Reset: std_logic := '0';
    -- signal WrClock: std_logic := '0';
    signal WrClockEn: std_logic := '0';
    signal Q : std_logic_vector(23 downto 0);
BEGIN
framebuffer0 : frame_buffer_0
    PORT MAP (WrAddress => WrAddress, RdAddress => RdAddress, Data => Data, 
		WE => WE, RdClock => sclk, RdClockEn => RdClockEn, Reset => Reset, 
		WrClock => sclk, WrClockEn => WrClockEn, Q => Q
	);
WS2812_t : WS2812 
	PORT MAP (clk => sclk, PixelIn => Q, PixelAddress => RdAddress,
		serial => serial_out, load_delay => led0, enable => button0
	);
button_test_t : button_test PORT MAP ( clk => sclk, button => button0, led => led1);
load_mem_t : load_mem 
	PORT MAP (clk => sclk, WrData => Data, WrAddr => WrAddress, WrEnable => WE);
PROCESS(sclk)
BEGIN
	sclk_enable <= '1';
	WrClockEn <= '1';
	Reset <= '0';
	RdClockEn <= '1';
END PROCESS;
END;
