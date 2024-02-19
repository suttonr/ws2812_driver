-- VHDL netlist generated by SCUBA Diamond (64-bit) 3.13.0.56.2
-- Module  Version: 6.5
--C:\lscc\diamond\3.13\ispfpga\bin\nt64\scuba.exe -w -n frame_buffer_0 -lang vhdl -synth lse -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -rdata_width 24 -data_width 24 -num_rows 512 -outdata REGISTERED -cascade -1 -resetmode SYNC -sync_reset -mem_init0 

-- Mon Feb 12 00:14:28 2024

library IEEE;
use IEEE.std_logic_1164.all;
-- synopsys translate_off
library MACHXO2;
use MACHXO2.components.all;
-- synopsys translate_on

entity frame_buffer_0 is
    port (
        WrAddress: in  std_logic_vector(8 downto 0); 
        RdAddress: in  std_logic_vector(8 downto 0); 
        Data: in  std_logic_vector(23 downto 0); 
        WE: in  std_logic; 
        RdClock: in  std_logic; 
        RdClockEn: in  std_logic; 
        Reset: in  std_logic; 
        WrClock: in  std_logic; 
        WrClockEn: in  std_logic; 
        Q: out  std_logic_vector(23 downto 0));
end frame_buffer_0;

architecture Structure of frame_buffer_0 is

    -- internal signal declarations
    signal scuba_vhi: std_logic;
    signal scuba_vlo: std_logic;

    -- local component declarations
    component VHI
        port (Z: out  std_logic);
    end component;
    component VLO
        port (Z: out  std_logic);
    end component;
    component PDPW8KC
        generic (INIT_DATA : in String; INITVAL_1F : in String; 
                INITVAL_1E : in String; INITVAL_1D : in String; 
                INITVAL_1C : in String; INITVAL_1B : in String; 
                INITVAL_1A : in String; INITVAL_19 : in String; 
                INITVAL_18 : in String; INITVAL_17 : in String; 
                INITVAL_16 : in String; INITVAL_15 : in String; 
                INITVAL_14 : in String; INITVAL_13 : in String; 
                INITVAL_12 : in String; INITVAL_11 : in String; 
                INITVAL_10 : in String; INITVAL_0F : in String; 
                INITVAL_0E : in String; INITVAL_0D : in String; 
                INITVAL_0C : in String; INITVAL_0B : in String; 
                INITVAL_0A : in String; INITVAL_09 : in String; 
                INITVAL_08 : in String; INITVAL_07 : in String; 
                INITVAL_06 : in String; INITVAL_05 : in String; 
                INITVAL_04 : in String; INITVAL_03 : in String; 
                INITVAL_02 : in String; INITVAL_01 : in String; 
                INITVAL_00 : in String; ASYNC_RESET_RELEASE : in String; 
                RESETMODE : in String; GSR : in String; 
                CSDECODE_R : in String; CSDECODE_W : in String; 
                REGMODE : in String; DATA_WIDTH_R : in Integer; 
                DATA_WIDTH_W : in Integer);
        port (DI17: in  std_logic; DI16: in  std_logic; 
            DI15: in  std_logic; DI14: in  std_logic; 
            DI13: in  std_logic; DI12: in  std_logic; 
            DI11: in  std_logic; DI10: in  std_logic; DI9: in  std_logic; 
            DI8: in  std_logic; DI7: in  std_logic; DI6: in  std_logic; 
            DI5: in  std_logic; DI4: in  std_logic; DI3: in  std_logic; 
            DI2: in  std_logic; DI1: in  std_logic; DI0: in  std_logic; 
            ADW8: in  std_logic; ADW7: in  std_logic; 
            ADW6: in  std_logic; ADW5: in  std_logic; 
            ADW4: in  std_logic; ADW3: in  std_logic; 
            ADW2: in  std_logic; ADW1: in  std_logic; 
            ADW0: in  std_logic; BE1: in  std_logic; BE0: in  std_logic; 
            CEW: in  std_logic; CLKW: in  std_logic; CSW2: in  std_logic; 
            CSW1: in  std_logic; CSW0: in  std_logic; 
            ADR12: in  std_logic; ADR11: in  std_logic; 
            ADR10: in  std_logic; ADR9: in  std_logic; 
            ADR8: in  std_logic; ADR7: in  std_logic; 
            ADR6: in  std_logic; ADR5: in  std_logic; 
            ADR4: in  std_logic; ADR3: in  std_logic; 
            ADR2: in  std_logic; ADR1: in  std_logic; 
            ADR0: in  std_logic; CER: in  std_logic; OCER: in  std_logic; 
            CLKR: in  std_logic; CSR2: in  std_logic; 
            CSR1: in  std_logic; CSR0: in  std_logic; RST: in  std_logic; 
            DO17: out  std_logic; DO16: out  std_logic; 
            DO15: out  std_logic; DO14: out  std_logic; 
            DO13: out  std_logic; DO12: out  std_logic; 
            DO11: out  std_logic; DO10: out  std_logic; 
            DO9: out  std_logic; DO8: out  std_logic; 
            DO7: out  std_logic; DO6: out  std_logic; 
            DO5: out  std_logic; DO4: out  std_logic; 
            DO3: out  std_logic; DO2: out  std_logic; 
            DO1: out  std_logic; DO0: out  std_logic);
    end component;
    attribute MEM_LPC_FILE : string; 
    attribute MEM_INIT_FILE : string; 
    attribute MEM_LPC_FILE of frame_buffer_0_0_0_1 : label is "frame_buffer_0.lpc";
    attribute MEM_INIT_FILE of frame_buffer_0_0_0_1 : label is "INIT_ALL_0s";
    attribute MEM_LPC_FILE of frame_buffer_0_0_1_0 : label is "frame_buffer_0.lpc";
    attribute MEM_INIT_FILE of frame_buffer_0_0_1_0 : label is "INIT_ALL_0s";
    attribute NGD_DRC_MASK : integer;
    attribute NGD_DRC_MASK of Structure : architecture is 1;

begin
    -- component instantiation statements
    frame_buffer_0_0_0_1: PDPW8KC
        generic map (INIT_DATA=> "STATIC", ASYNC_RESET_RELEASE=> "SYNC", 
        INITVAL_1F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1C=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1B=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1A=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_19=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_18=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_17=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_16=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_15=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_14=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_13=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_12=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_11=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_10=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0C=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0B=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0A=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_09=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_08=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_07=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_06=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_05=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_04=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_03=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_02=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_01=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_00=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        CSDECODE_R=> "0b000", CSDECODE_W=> "0b001", GSR=> "ENABLED", 
        RESETMODE=> "SYNC", REGMODE=> "OUTREG", DATA_WIDTH_R=>  18, 
        DATA_WIDTH_W=>  18)
        port map (DI17=>Data(17), DI16=>Data(16), DI15=>Data(15), 
            DI14=>Data(14), DI13=>Data(13), DI12=>Data(12), 
            DI11=>Data(11), DI10=>Data(10), DI9=>Data(9), DI8=>Data(8), 
            DI7=>Data(7), DI6=>Data(6), DI5=>Data(5), DI4=>Data(4), 
            DI3=>Data(3), DI2=>Data(2), DI1=>Data(1), DI0=>Data(0), 
            ADW8=>WrAddress(8), ADW7=>WrAddress(7), ADW6=>WrAddress(6), 
            ADW5=>WrAddress(5), ADW4=>WrAddress(4), ADW3=>WrAddress(3), 
            ADW2=>WrAddress(2), ADW1=>WrAddress(1), ADW0=>WrAddress(0), 
            BE1=>scuba_vhi, BE0=>scuba_vhi, CEW=>WrClockEn, 
            CLKW=>WrClock, CSW2=>scuba_vlo, CSW1=>scuba_vlo, CSW0=>WE, 
            ADR12=>RdAddress(8), ADR11=>RdAddress(7), 
            ADR10=>RdAddress(6), ADR9=>RdAddress(5), ADR8=>RdAddress(4), 
            ADR7=>RdAddress(3), ADR6=>RdAddress(2), ADR5=>RdAddress(1), 
            ADR4=>RdAddress(0), ADR3=>scuba_vlo, ADR2=>scuba_vlo, 
            ADR1=>scuba_vlo, ADR0=>scuba_vlo, CER=>RdClockEn, 
            OCER=>RdClockEn, CLKR=>RdClock, CSR2=>scuba_vlo, 
            CSR1=>scuba_vlo, CSR0=>scuba_vlo, RST=>Reset, DO17=>Q(8), 
            DO16=>Q(7), DO15=>Q(6), DO14=>Q(5), DO13=>Q(4), DO12=>Q(3), 
            DO11=>Q(2), DO10=>Q(1), DO9=>Q(0), DO8=>Q(17), DO7=>Q(16), 
            DO6=>Q(15), DO5=>Q(14), DO4=>Q(13), DO3=>Q(12), DO2=>Q(11), 
            DO1=>Q(10), DO0=>Q(9));

    scuba_vhi_inst: VHI
        port map (Z=>scuba_vhi);

    scuba_vlo_inst: VLO
        port map (Z=>scuba_vlo);

    frame_buffer_0_0_1_0: PDPW8KC
        generic map (INIT_DATA=> "STATIC", ASYNC_RESET_RELEASE=> "SYNC", 
        INITVAL_1F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1C=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1B=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1A=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_19=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_18=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_17=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_16=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_15=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_14=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_13=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_12=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_11=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_10=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0C=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0B=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0A=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_09=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_08=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_07=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_06=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_05=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_04=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_03=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_02=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_01=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_00=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        CSDECODE_R=> "0b000", CSDECODE_W=> "0b001", GSR=> "ENABLED", 
        RESETMODE=> "SYNC", REGMODE=> "OUTREG", DATA_WIDTH_R=>  18, 
        DATA_WIDTH_W=>  18)
        port map (DI17=>scuba_vlo, DI16=>scuba_vlo, DI15=>scuba_vlo, 
            DI14=>scuba_vlo, DI13=>scuba_vlo, DI12=>scuba_vlo, 
            DI11=>scuba_vlo, DI10=>scuba_vlo, DI9=>scuba_vlo, 
            DI8=>scuba_vlo, DI7=>scuba_vlo, DI6=>scuba_vlo, 
            DI5=>Data(23), DI4=>Data(22), DI3=>Data(21), DI2=>Data(20), 
            DI1=>Data(19), DI0=>Data(18), ADW8=>WrAddress(8), 
            ADW7=>WrAddress(7), ADW6=>WrAddress(6), ADW5=>WrAddress(5), 
            ADW4=>WrAddress(4), ADW3=>WrAddress(3), ADW2=>WrAddress(2), 
            ADW1=>WrAddress(1), ADW0=>WrAddress(0), BE1=>scuba_vhi, 
            BE0=>scuba_vhi, CEW=>WrClockEn, CLKW=>WrClock, 
            CSW2=>scuba_vlo, CSW1=>scuba_vlo, CSW0=>WE, 
            ADR12=>RdAddress(8), ADR11=>RdAddress(7), 
            ADR10=>RdAddress(6), ADR9=>RdAddress(5), ADR8=>RdAddress(4), 
            ADR7=>RdAddress(3), ADR6=>RdAddress(2), ADR5=>RdAddress(1), 
            ADR4=>RdAddress(0), ADR3=>scuba_vlo, ADR2=>scuba_vlo, 
            ADR1=>scuba_vlo, ADR0=>scuba_vlo, CER=>RdClockEn, 
            OCER=>RdClockEn, CLKR=>RdClock, CSR2=>scuba_vlo, 
            CSR1=>scuba_vlo, CSR0=>scuba_vlo, RST=>Reset, DO17=>open, 
            DO16=>open, DO15=>open, DO14=>Q(23), DO13=>Q(22), 
            DO12=>Q(21), DO11=>Q(20), DO10=>Q(19), DO9=>Q(18), DO8=>open, 
            DO7=>open, DO6=>open, DO5=>open, DO4=>open, DO3=>open, 
            DO2=>open, DO1=>open, DO0=>open);

end Structure;

-- synopsys translate_off
library MACHXO2;
configuration Structure_CON of frame_buffer_0 is
    for Structure
        for all:VHI use entity MACHXO2.VHI(V); end for;
        for all:VLO use entity MACHXO2.VLO(V); end for;
        for all:PDPW8KC use entity MACHXO2.PDPW8KC(V); end for;
    end for;
end Structure_CON;

-- synopsys translate_on
