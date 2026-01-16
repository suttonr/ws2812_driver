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
		WrEnable : out std_logic_vector(8 downto 0);
		SPI_DATA_OUT  : in  std_logic_vector(7 downto 0);
        SPI_RX_RDY    : in  std_logic;
        SPI_RX_ERR    : in  std_logic;
		SPI_CS        : out std_logic;
		debug		  : inout std_logic
	);
end entity load_mem;

architecture arch of load_mem is
	constant WRD : integer := 5;
	constant SPI_TIMEOUT : integer := 60;
	type pixel_array is array(0 to 9) of std_logic_vector(23 downto 0);
	type state_machine is (load, wr, reset);
begin
	process
		variable fb : integer := 0;
		variable state : state_machine := load;
		variable delay_counter : integer := 0;
		variable spi_byte_counter : integer := 0;
		variable spi_byte_timeout : integer := SPI_TIMEOUT;
		variable index : integer := 0;		
		variable p_array : pixel_array := (x"FF0000", -- LED 0, Green Red Blue
											x"00FF00", 
											x"0000FF",
											x"00000A",
											x"0000A0",
											x"000A00",
											x"00A000",
											x"0A0000",
											x"A00000",
											x"111111"
											);
	begin
		wait until rising_edge(clk);
		case state is
			-- [Addr][G][B][R]
			when load =>
				delay_counter := WRD;
				SPI_CS <= '0';
				if index < pixel_array'length-1 then
					WrData <= p_array(index);
					WrAddr <= std_logic_vector(to_unsigned(index, WrAddr'length));
					SPI_CS <= '1';
					state  := wr;
				elsif ((SPI_RX_RDY = '1') and ( spi_byte_counter < 1 )) then
					WrAddr(8) <= SPI_DATA_OUT(0);
					fb := to_integer(signed(SPI_DATA_OUT(7 downto 1)));
					SPI_CS <= '1';
					spi_byte_counter := spi_byte_counter + 1;
					spi_byte_timeout := SPI_TIMEOUT;
				elsif ((SPI_RX_RDY = '1') and ( spi_byte_counter < 2 )) then
					WrAddr(7 downto 0) <= SPI_DATA_OUT;
					SPI_CS <= '1';
					spi_byte_counter := spi_byte_counter + 1;
					spi_byte_timeout := SPI_TIMEOUT;
				elsif (SPI_RX_RDY = '1') then
					WrData(23-((spi_byte_counter-2)*8) downto  16-((spi_byte_counter-2)*8) ) <= SPI_DATA_OUT;
					SPI_CS <= '1';
					spi_byte_counter := spi_byte_counter + 1;
					spi_byte_timeout := SPI_TIMEOUT;
				elsif ((spi_byte_counter > 0) and (spi_byte_timeout > 0)) then
					spi_byte_timeout := spi_byte_timeout - 1;
				elsif (spi_byte_counter > 0) then
					spi_byte_counter := 0;
					spi_byte_timeout := SPI_TIMEOUT;
				end if;
				
				if spi_byte_counter > 4 then
					debug <= not debug;
					state  := wr;
				end if;
			when wr =>
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
				spi_byte_counter := 0;
				spi_byte_timeout := SPI_TIMEOUT;
				if index < pixel_array'length-1 then
					index := index + 1;
				end if;
				state := load;
		end case;
	end process;
end arch;