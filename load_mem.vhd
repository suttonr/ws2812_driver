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
		WrEnable : out std_logic
	);
end entity load_mem;

architecture arch of load_mem is
	constant WRD : integer := 5;
	type pixel_array is array(0 to 9) of std_logic_vector(23 downto 0);
	type state_machine is (load, wr, reset);
begin
	process
		variable state : state_machine := load;
		variable delay_counter : integer := 0;
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
			when load =>
				WrData <= p_array(index);
				WrAddr  <= std_logic_vector(to_unsigned(index, WrAddr'length));
				delay_counter := WRD;
				state  := wr;
			when wr =>
				WrEnable <= '1';
				if (delay_counter > 0) then
					delay_counter := delay_counter - 1;
				else
					WrEnable <= '0';
					state := reset;
				end if;
			when reset =>
				if index < pixel_array'length-1 then
					index := index + 1;
					state := load;
				end if;
		end case;
	end process;
end arch;