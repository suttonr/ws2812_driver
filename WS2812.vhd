library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity WS2812 is
	generic (
		clock_frequency : integer := 48_000_000; -- Hertz
		max_address : std_logic_vector(8 downto 0) := b"111111111"
		
	);
	port (
		clk : in std_logic;
		enable : in std_logic;
		PixelIn : in std_logic_vector(23 downto 0);
		PixelAddress : out std_logic_vector(8 downto 0);
		serial : out std_logic;
		load_delay : inout std_logic
	);
end entity WS2812;

architecture arch of WS2812 is
	-- Timimgs:
	-- One pixel bit period
	-- ----------| - - - - -|
	--           |          |
	--    TH     |    TD    |         TL
	--           | (Snd Bit)|
	--           |          |
	--           |- - - - - |--------------------
	constant TH : integer := 15; -- (313*clock_frequency)/1_000_000_000; -- 15
	constant TL : integer := 27; -- (625*clock_frequency)/1_000_000_000; -- 30
	constant TD : integer := 15; -- (313*clock_frequency)/1_000_000_000;
	constant RES: integer := 5000; -- (51_000*clock_frequency)/1_000_000_000; -- Low period at end of string
	constant MR: integer := 3; -- clocks needed to latch memory
	
	type pixel_array is array(0 to 15) of std_logic_vector(23 downto 0);
	type state_machine is (load, sending, send_high, send_bit, send_low, reset);
begin
	process
		variable state : state_machine := reset;
		variable cur_pixel : std_logic_vector(8 downto 0) := (others => '0');
		variable pixel : std_logic_vector(23 downto 0) := x"000000";
		variable delay_counter : integer := 0;
		variable bit_counter : integer := 0;
		
											
	begin
		wait until rising_edge(clk);
		case state is		
			when load =>
				pixel := PixelIn;
				bit_counter := 24;
				PixelAddress <= cur_pixel;
				if (delay_counter > 0) then
					delay_counter := delay_counter - 1;
				else
					state := sending;
				end if;
			when sending =>
				if (bit_counter > 0) then
					bit_counter := bit_counter - 1;
					delay_counter := TH;
					state := send_high;
				else
					if (cur_pixel < max_address) then
						cur_pixel := cur_pixel + 1;
						delay_counter := MR;
						state := load;
					else
						delay_counter := RES;
						cur_pixel := b"0_0000_0000";
						state := reset;
					end if;
				end if;
			when send_high =>
				if (delay_counter > 0) then
					serial <= '1';
					delay_counter := delay_counter - 1;
				else
					delay_counter := TD;
					state := send_bit;
				end if;
			when send_bit =>
				if (delay_counter > 0) then
					serial <= pixel(bit_counter);
					delay_counter := delay_counter - 1;
				else
					delay_counter := TL;
					state := send_low;
				end if;
			when send_low =>
				if (delay_counter > 0) then
					serial <= '0';
					delay_counter := delay_counter - 1;
				else
					delay_counter := RES;
					state := sending;
				end if;
			when reset =>
				if (delay_counter > 0) then
					serial <= '0';
					delay_counter := delay_counter - 1;
				else
					delay_counter := MR;
					if (enable = '1') then
						state := load;
					end if;
				end if;
		end case;
	end process;
end arch;
