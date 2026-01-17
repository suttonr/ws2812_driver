library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity load_mem is
	generic (
		clock_frequency : integer := 48_000_000 -- Hertz
	);
	port (
		clk : in std_logic;
		WrData : out std_logic_vector(23 downto 0);
		WrAddr : out std_logic_vector(8 downto 0);
		WrEnable : out std_logic_vector(23 downto 0);
		SPI_DATA_OUT  : in  std_logic_vector(7 downto 0);
        SPI_RX_RDY    : in  std_logic;
        SPI_RX_ERR    : in  std_logic;
		SPI_CS        : out std_logic;
		SPI_RST       : in  std_logic;
		debug		  : inout std_logic
	);
end entity load_mem;

architecture arch of load_mem is
	-- Write delay cycles; can be reduced to 1 for faster batch processing if memory allows
	constant WRD : integer := 5;
	constant SPI_TIMEOUT : integer := 4800;
	type pixel_array is array(0 to 20) of std_logic_vector(23 downto 0);
	type state_machine is (load, wr, reset);
begin
	process
		variable fb : integer := 0;
		variable state : state_machine := load;
		variable delay_counter : integer := 0;
		variable spi_byte_counter : integer := 0;
		variable spi_byte_timeout : integer := SPI_TIMEOUT;
		variable index : integer := 0;
		variable command : std_logic_vector(7 downto 0) := x"00";
		variable rgb565 : std_logic_vector(15 downto 0);
		-- STARTUP PATTERN
		variable p_array : pixel_array := (x"FF0000", x"00FF00", x"0000FF", -- Port1
											x"FF0000", x"00FF00", x"0000FF", -- Port2
											x"FF0000", x"00FF00", x"0000FF", -- Port3
											x"FF0000", x"00FF00", x"0000FF", -- Port4
											x"FF0000", x"00FF00", x"0000FF", -- Port5
											x"FF0000", x"00FF00", x"0000FF", -- Port6
											x"FF0000", x"00FF00", x"0000FF"  -- Port7
											);
	begin
		wait until rising_edge(clk);
		case state is
			-- 0F[Addr:16][G:8][B:8][R:8] or 0E[Addr:16][R:5][G:6][B:5]
			-- ADDR: [PORT 15:9][PIXEL 8:0]
			when load =>
				delay_counter := WRD;
				SPI_CS <= '0';
				-- Handle SPI errors by resetting counters
				if SPI_RX_ERR = '1' then
					spi_byte_counter := 0;
					spi_byte_timeout := SPI_TIMEOUT;
					command := x"00";
				elsif index < pixel_array'length-1 then
					WrData <= p_array(index);
					fb := index;
					WrAddr <= std_logic_vector(to_unsigned(index, WrAddr'length));
					SPI_CS <= '1';
					state  := wr;
				elsif ((SPI_RX_RDY = '1') and ( spi_byte_counter < 1 )) then
					if SPI_DATA_OUT = x"0F" or SPI_DATA_OUT = x"0E" then
					    command := SPI_DATA_OUT;
					    spi_byte_counter := spi_byte_counter + 1;
					    spi_byte_timeout := SPI_TIMEOUT;
					end if;
					SPI_CS <= '1';
				elsif ((SPI_RX_RDY = '1') and ( spi_byte_counter < 2 )) then
					WrAddr(8) <= SPI_DATA_OUT(0);
					fb := to_integer(unsigned(SPI_DATA_OUT(7 downto 1)));
					if fb > 23 then
						spi_byte_counter := 0;
						spi_byte_timeout := SPI_TIMEOUT;
						command := x"00";
					else
						SPI_CS <= '1';
						spi_byte_counter := spi_byte_counter + 1;
						spi_byte_timeout := SPI_TIMEOUT;
					end if;
				elsif ((SPI_RX_RDY = '1') and ( spi_byte_counter < 3 )) then
					WrAddr(7 downto 0) <= SPI_DATA_OUT;
					SPI_CS <= '1';
					spi_byte_counter := spi_byte_counter + 1;
					spi_byte_timeout := SPI_TIMEOUT;
				elsif (SPI_RX_RDY = '1') then
					if command = x"0F" then
						WrData(23-((spi_byte_counter-3)*8) downto  16-((spi_byte_counter-3)*8) ) <= SPI_DATA_OUT;
					elsif command = x"0E" then
						if spi_byte_counter = 3 then
							rgb565(15 downto 8) := SPI_DATA_OUT;
						elsif spi_byte_counter = 4 then
							rgb565(7 downto 0) := SPI_DATA_OUT;
							-- Convert RGB565 to RGB888
							WrData(23 downto 16) <= rgb565(15 downto 11) & "000"; -- R: 5 bits to 8
							WrData(15 downto 8) <= rgb565(10 downto 5) & "00"; -- G: 6 bits to 8
							WrData(7 downto 0) <= rgb565(4 downto 0) & "000"; -- B: 5 bits to 8
						end if;
					end if;
					SPI_CS <= '1';
					spi_byte_counter := spi_byte_counter + 1;
					spi_byte_timeout := SPI_TIMEOUT;
				elsif ((spi_byte_counter > 0) and (spi_byte_timeout > 0)) then
					spi_byte_timeout := spi_byte_timeout - 1;
				elsif (spi_byte_counter > 0) then
					spi_byte_counter := 0;
					spi_byte_timeout := SPI_TIMEOUT;
					command := x"00";
				end if;
				
				-- if SPI_RST = '1' then
				--    state := reset;
				if (command = x"0F" and spi_byte_counter > 5) or (command = x"0E" and spi_byte_counter > 4) then
					debug <= not debug;
					state  := wr;
				end if;
			when wr =>
				WrEnable <= (others => '0');
				WrEnable(fb) <= '1';
				if (delay_counter > 0) then
					delay_counter := delay_counter - 1;
				else
					WrEnable(fb) <= '0';
					state := reset;
				end if;
			when reset =>
				WrData <= (others => '0');
				WrAddr <= (others => '0');
				WrEnable <= (others => '0');
				spi_byte_counter := 0;
				spi_byte_timeout := SPI_TIMEOUT;
				command := x"00";
				if index < pixel_array'length-1 then
					index := index + 1;
				end if;
				state := load;
		end case;
	end process;
end arch;
