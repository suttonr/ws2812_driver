--
-- Synopsys
-- Vhdl wrapper for top level design, written on Thu Jan 15 23:09:42 2026
--
library ieee;
use ieee.std_logic_1164.all;

entity wrapper_for_top is
   port (
      sclk : in std_logic;
      sclk_enable : out std_logic;
      ws2813_out : out std_logic_vector(20 downto 0);
      MISO_SLAVE : out std_logic;
      MOSI_SLAVE : in std_logic;
      CSn_SLAVE : in std_logic;
      SCLK_SLAVE : in std_logic;
      SPI_RST : in std_logic;
      led0 : in std_logic;
      led1 : in std_logic;
      led2 : in std_logic;
      led3 : in std_logic;
      led4 : in std_logic;
      led5 : in std_logic;
      led6 : in std_logic;
      led7 : in std_logic;
      yled0 : in std_logic;
      yled1 : in std_logic;
      yled2 : in std_logic;
      yled3 : in std_logic;
      yled4 : in std_logic;
      yled5 : in std_logic;
      yled6 : in std_logic;
      yled7 : in std_logic
   );
end wrapper_for_top;

architecture arch of wrapper_for_top is

component top
 port (
   sclk : in std_logic;
   sclk_enable : out std_logic;
   ws2813_out : out std_logic_vector (20 downto 0);
   MISO_SLAVE : out std_logic;
   MOSI_SLAVE : in std_logic;
   CSn_SLAVE : in std_logic;
   SCLK_SLAVE : in std_logic;
   SPI_RST : in std_logic;
   led0 : inout std_logic;
   led1 : inout std_logic;
   led2 : inout std_logic;
   led3 : inout std_logic;
   led4 : inout std_logic;
   led5 : inout std_logic;
   led6 : inout std_logic;
   led7 : inout std_logic;
   yled0 : inout std_logic;
   yled1 : inout std_logic;
   yled2 : inout std_logic;
   yled3 : inout std_logic;
   yled4 : inout std_logic;
   yled5 : inout std_logic;
   yled6 : inout std_logic;
   yled7 : inout std_logic
 );
end component;

signal tmp_sclk : std_logic;
signal tmp_sclk_enable : std_logic;
signal tmp_ws2813_out : std_logic_vector (20 downto 0);
signal tmp_MISO_SLAVE : std_logic;
signal tmp_MOSI_SLAVE : std_logic;
signal tmp_CSn_SLAVE : std_logic;
signal tmp_SCLK_SLAVE : std_logic;
signal tmp_SPI_RST : std_logic;
signal tmp_led0 : std_logic;
signal tmp_led1 : std_logic;
signal tmp_led2 : std_logic;
signal tmp_led3 : std_logic;
signal tmp_led4 : std_logic;
signal tmp_led5 : std_logic;
signal tmp_led6 : std_logic;
signal tmp_led7 : std_logic;
signal tmp_yled0 : std_logic;
signal tmp_yled1 : std_logic;
signal tmp_yled2 : std_logic;
signal tmp_yled3 : std_logic;
signal tmp_yled4 : std_logic;
signal tmp_yled5 : std_logic;
signal tmp_yled6 : std_logic;
signal tmp_yled7 : std_logic;

begin

tmp_sclk <= sclk;

sclk_enable <= tmp_sclk_enable;

ws2813_out <= tmp_ws2813_out;

MISO_SLAVE <= tmp_MISO_SLAVE;

tmp_MOSI_SLAVE <= MOSI_SLAVE;

tmp_CSn_SLAVE <= CSn_SLAVE;

tmp_SCLK_SLAVE <= SCLK_SLAVE;

tmp_SPI_RST <= SPI_RST;

tmp_led0 <= led0;

tmp_led1 <= led1;

tmp_led2 <= led2;

tmp_led3 <= led3;

tmp_led4 <= led4;

tmp_led5 <= led5;

tmp_led6 <= led6;

tmp_led7 <= led7;

tmp_yled0 <= yled0;

tmp_yled1 <= yled1;

tmp_yled2 <= yled2;

tmp_yled3 <= yled3;

tmp_yled4 <= yled4;

tmp_yled5 <= yled5;

tmp_yled6 <= yled6;

tmp_yled7 <= yled7;



u1:   top port map (
		sclk => tmp_sclk,
		sclk_enable => tmp_sclk_enable,
		ws2813_out => tmp_ws2813_out,
		MISO_SLAVE => tmp_MISO_SLAVE,
		MOSI_SLAVE => tmp_MOSI_SLAVE,
		CSn_SLAVE => tmp_CSn_SLAVE,
		SCLK_SLAVE => tmp_SCLK_SLAVE,
		SPI_RST => tmp_SPI_RST,
		led0 => tmp_led0,
		led1 => tmp_led1,
		led2 => tmp_led2,
		led3 => tmp_led3,
		led4 => tmp_led4,
		led5 => tmp_led5,
		led6 => tmp_led6,
		led7 => tmp_led7,
		yled0 => tmp_yled0,
		yled1 => tmp_yled1,
		yled2 => tmp_yled2,
		yled3 => tmp_yled3,
		yled4 => tmp_yled4,
		yled5 => tmp_yled5,
		yled6 => tmp_yled6,
		yled7 => tmp_yled7
       );
end arch;
