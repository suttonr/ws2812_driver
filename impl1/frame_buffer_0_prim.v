// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sat Feb 17 14:46:40 2024
//
// Verilog Description of module frame_buffer_0
//

module frame_buffer_0 (WrAddress, RdAddress, Data, WE, RdClock, RdClockEn, 
            Reset, WrClock, WrClockEn, Q) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(14[8:22])
    input [8:0]WrAddress;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(16[9:18])
    input [8:0]RdAddress;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(17[9:18])
    input [23:0]Data;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    input WE;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(19[9:11])
    input RdClock;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(20[9:16])
    input RdClockEn;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(21[9:18])
    input Reset;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(22[9:14])
    input WrClock;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(23[9:16])
    input WrClockEn;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(24[9:18])
    output [23:0]Q;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    
    wire RdClock_c /* synthesis is_clock=1 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(20[9:16])
    wire WrClock_c /* synthesis is_clock=1 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(23[9:16])
    
    wire WrAddress_c_8, WrAddress_c_7, WrAddress_c_6, WrAddress_c_5, 
        WrAddress_c_4, WrAddress_c_3, WrAddress_c_2, WrAddress_c_1, 
        WrAddress_c_0, RdAddress_c_8, RdAddress_c_7, RdAddress_c_6, 
        RdAddress_c_5, RdAddress_c_4, RdAddress_c_3, RdAddress_c_2, 
        RdAddress_c_1, RdAddress_c_0, Data_c_23, Data_c_22, Data_c_21, 
        Data_c_20, Data_c_19, Data_c_18, Data_c_17, Data_c_16, Data_c_15, 
        Data_c_14, Data_c_13, Data_c_12, Data_c_11, Data_c_10, Data_c_9, 
        Data_c_8, Data_c_7, Data_c_6, Data_c_5, Data_c_4, Data_c_3, 
        Data_c_2, Data_c_1, Data_c_0, WE_c, RdClockEn_c, Reset_c, 
        WrClockEn_c, Q_c_23, Q_c_22, Q_c_21, Q_c_20, Q_c_19, Q_c_18, 
        Q_c_17, Q_c_16, Q_c_15, Q_c_14, Q_c_13, Q_c_12, Q_c_11, 
        Q_c_10, Q_c_9, Q_c_8, Q_c_7, Q_c_6, Q_c_5, Q_c_4, Q_c_3, 
        Q_c_2, Q_c_1, Q_c_0, scuba_vlo, VCC_net;
    
    OB Q_pad_20 (.I(Q_c_20), .O(Q[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    PDPW8KC frame_buffer_0_0_1_0 (.DI0(Data_c_18), .DI1(Data_c_19), .DI2(Data_c_20), 
            .DI3(Data_c_21), .DI4(Data_c_22), .DI5(Data_c_23), .DI6(scuba_vlo), 
            .DI7(scuba_vlo), .DI8(scuba_vlo), .DI9(scuba_vlo), .DI10(scuba_vlo), 
            .DI11(scuba_vlo), .DI12(scuba_vlo), .DI13(scuba_vlo), .DI14(scuba_vlo), 
            .DI15(scuba_vlo), .DI16(scuba_vlo), .DI17(scuba_vlo), .ADW0(WrAddress_c_0), 
            .ADW1(WrAddress_c_1), .ADW2(WrAddress_c_2), .ADW3(WrAddress_c_3), 
            .ADW4(WrAddress_c_4), .ADW5(WrAddress_c_5), .ADW6(WrAddress_c_6), 
            .ADW7(WrAddress_c_7), .ADW8(WrAddress_c_8), .BE0(VCC_net), 
            .BE1(VCC_net), .CEW(WrClockEn_c), .CLKW(WrClock_c), .CSW0(WE_c), 
            .CSW1(scuba_vlo), .CSW2(scuba_vlo), .ADR0(scuba_vlo), .ADR1(scuba_vlo), 
            .ADR2(scuba_vlo), .ADR3(scuba_vlo), .ADR4(RdAddress_c_0), 
            .ADR5(RdAddress_c_1), .ADR6(RdAddress_c_2), .ADR7(RdAddress_c_3), 
            .ADR8(RdAddress_c_4), .ADR9(RdAddress_c_5), .ADR10(RdAddress_c_6), 
            .ADR11(RdAddress_c_7), .ADR12(RdAddress_c_8), .CER(RdClockEn_c), 
            .OCER(RdClockEn_c), .CLKR(RdClock_c), .CSR0(scuba_vlo), .CSR1(scuba_vlo), 
            .CSR2(scuba_vlo), .RST(Reset_c), .DO9(Q_c_18), .DO10(Q_c_19), 
            .DO11(Q_c_20), .DO12(Q_c_21), .DO13(Q_c_22), .DO14(Q_c_23)) /* synthesis MEM_LPC_FILE="frame_buffer_0.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1 */ ;
    defparam frame_buffer_0_0_1_0.DATA_WIDTH_W = 18;
    defparam frame_buffer_0_0_1_0.DATA_WIDTH_R = 18;
    defparam frame_buffer_0_0_1_0.REGMODE = "OUTREG";
    defparam frame_buffer_0_0_1_0.CSDECODE_W = "0b001";
    defparam frame_buffer_0_0_1_0.CSDECODE_R = "0b000";
    defparam frame_buffer_0_0_1_0.GSR = "ENABLED";
    defparam frame_buffer_0_0_1_0.RESETMODE = "SYNC";
    defparam frame_buffer_0_0_1_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam frame_buffer_0_0_1_0.INIT_DATA = "STATIC";
    defparam frame_buffer_0_0_1_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    OB Q_pad_21 (.I(Q_c_21), .O(Q[21]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_22 (.I(Q_c_22), .O(Q[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    PDPW8KC frame_buffer_0_0_0_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .DI4(Data_c_4), .DI5(Data_c_5), .DI6(Data_c_6), 
            .DI7(Data_c_7), .DI8(Data_c_8), .DI9(Data_c_9), .DI10(Data_c_10), 
            .DI11(Data_c_11), .DI12(Data_c_12), .DI13(Data_c_13), .DI14(Data_c_14), 
            .DI15(Data_c_15), .DI16(Data_c_16), .DI17(Data_c_17), .ADW0(WrAddress_c_0), 
            .ADW1(WrAddress_c_1), .ADW2(WrAddress_c_2), .ADW3(WrAddress_c_3), 
            .ADW4(WrAddress_c_4), .ADW5(WrAddress_c_5), .ADW6(WrAddress_c_6), 
            .ADW7(WrAddress_c_7), .ADW8(WrAddress_c_8), .BE0(VCC_net), 
            .BE1(VCC_net), .CEW(WrClockEn_c), .CLKW(WrClock_c), .CSW0(WE_c), 
            .CSW1(scuba_vlo), .CSW2(scuba_vlo), .ADR0(scuba_vlo), .ADR1(scuba_vlo), 
            .ADR2(scuba_vlo), .ADR3(scuba_vlo), .ADR4(RdAddress_c_0), 
            .ADR5(RdAddress_c_1), .ADR6(RdAddress_c_2), .ADR7(RdAddress_c_3), 
            .ADR8(RdAddress_c_4), .ADR9(RdAddress_c_5), .ADR10(RdAddress_c_6), 
            .ADR11(RdAddress_c_7), .ADR12(RdAddress_c_8), .CER(RdClockEn_c), 
            .OCER(RdClockEn_c), .CLKR(RdClock_c), .CSR0(scuba_vlo), .CSR1(scuba_vlo), 
            .CSR2(scuba_vlo), .RST(Reset_c), .DO0(Q_c_9), .DO1(Q_c_10), 
            .DO2(Q_c_11), .DO3(Q_c_12), .DO4(Q_c_13), .DO5(Q_c_14), 
            .DO6(Q_c_15), .DO7(Q_c_16), .DO8(Q_c_17), .DO9(Q_c_0), .DO10(Q_c_1), 
            .DO11(Q_c_2), .DO12(Q_c_3), .DO13(Q_c_4), .DO14(Q_c_5), 
            .DO15(Q_c_6), .DO16(Q_c_7), .DO17(Q_c_8)) /* synthesis MEM_LPC_FILE="frame_buffer_0.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1 */ ;
    defparam frame_buffer_0_0_0_1.DATA_WIDTH_W = 18;
    defparam frame_buffer_0_0_0_1.DATA_WIDTH_R = 18;
    defparam frame_buffer_0_0_0_1.REGMODE = "OUTREG";
    defparam frame_buffer_0_0_0_1.CSDECODE_W = "0b001";
    defparam frame_buffer_0_0_0_1.CSDECODE_R = "0b000";
    defparam frame_buffer_0_0_0_1.GSR = "ENABLED";
    defparam frame_buffer_0_0_0_1.RESETMODE = "SYNC";
    defparam frame_buffer_0_0_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam frame_buffer_0_0_0_1.INIT_DATA = "STATIC";
    defparam frame_buffer_0_0_0_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam frame_buffer_0_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    OB Q_pad_23 (.I(Q_c_23), .O(Q[23]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_19 (.I(Q_c_19), .O(Q[19]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_18 (.I(Q_c_18), .O(Q[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_17 (.I(Q_c_17), .O(Q[17]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_16 (.I(Q_c_16), .O(Q[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_15 (.I(Q_c_15), .O(Q[15]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_14 (.I(Q_c_14), .O(Q[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_13 (.I(Q_c_13), .O(Q[13]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_12 (.I(Q_c_12), .O(Q[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_11 (.I(Q_c_11), .O(Q[11]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_10 (.I(Q_c_10), .O(Q[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_9 (.I(Q_c_9), .O(Q[9]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_8 (.I(Q_c_8), .O(Q[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_7 (.I(Q_c_7), .O(Q[7]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_6 (.I(Q_c_6), .O(Q[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_5 (.I(Q_c_5), .O(Q[5]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_4 (.I(Q_c_4), .O(Q[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_3 (.I(Q_c_3), .O(Q[3]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_2 (.I(Q_c_2), .O(Q[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_1 (.I(Q_c_1), .O(Q[1]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    OB Q_pad_0 (.I(Q_c_0), .O(Q[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(25[9:10])
    IB WrAddress_pad_8 (.I(WrAddress[8]), .O(WrAddress_c_8));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(16[9:18])
    IB WrAddress_pad_7 (.I(WrAddress[7]), .O(WrAddress_c_7));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(16[9:18])
    IB WrAddress_pad_6 (.I(WrAddress[6]), .O(WrAddress_c_6));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(16[9:18])
    IB WrAddress_pad_5 (.I(WrAddress[5]), .O(WrAddress_c_5));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(16[9:18])
    IB WrAddress_pad_4 (.I(WrAddress[4]), .O(WrAddress_c_4));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(16[9:18])
    IB WrAddress_pad_3 (.I(WrAddress[3]), .O(WrAddress_c_3));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(16[9:18])
    IB WrAddress_pad_2 (.I(WrAddress[2]), .O(WrAddress_c_2));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(16[9:18])
    IB WrAddress_pad_1 (.I(WrAddress[1]), .O(WrAddress_c_1));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(16[9:18])
    IB WrAddress_pad_0 (.I(WrAddress[0]), .O(WrAddress_c_0));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(16[9:18])
    IB RdAddress_pad_8 (.I(RdAddress[8]), .O(RdAddress_c_8));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(17[9:18])
    IB RdAddress_pad_7 (.I(RdAddress[7]), .O(RdAddress_c_7));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(17[9:18])
    IB RdAddress_pad_6 (.I(RdAddress[6]), .O(RdAddress_c_6));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(17[9:18])
    IB RdAddress_pad_5 (.I(RdAddress[5]), .O(RdAddress_c_5));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(17[9:18])
    IB RdAddress_pad_4 (.I(RdAddress[4]), .O(RdAddress_c_4));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(17[9:18])
    IB RdAddress_pad_3 (.I(RdAddress[3]), .O(RdAddress_c_3));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(17[9:18])
    IB RdAddress_pad_2 (.I(RdAddress[2]), .O(RdAddress_c_2));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(17[9:18])
    IB RdAddress_pad_1 (.I(RdAddress[1]), .O(RdAddress_c_1));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(17[9:18])
    IB RdAddress_pad_0 (.I(RdAddress[0]), .O(RdAddress_c_0));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(17[9:18])
    IB Data_pad_23 (.I(Data[23]), .O(Data_c_23));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_22 (.I(Data[22]), .O(Data_c_22));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_21 (.I(Data[21]), .O(Data_c_21));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_20 (.I(Data[20]), .O(Data_c_20));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_19 (.I(Data[19]), .O(Data_c_19));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_18 (.I(Data[18]), .O(Data_c_18));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_17 (.I(Data[17]), .O(Data_c_17));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_16 (.I(Data[16]), .O(Data_c_16));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_15 (.I(Data[15]), .O(Data_c_15));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_14 (.I(Data[14]), .O(Data_c_14));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_13 (.I(Data[13]), .O(Data_c_13));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_12 (.I(Data[12]), .O(Data_c_12));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_11 (.I(Data[11]), .O(Data_c_11));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_10 (.I(Data[10]), .O(Data_c_10));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_9 (.I(Data[9]), .O(Data_c_9));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_8 (.I(Data[8]), .O(Data_c_8));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_7 (.I(Data[7]), .O(Data_c_7));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_6 (.I(Data[6]), .O(Data_c_6));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_5 (.I(Data[5]), .O(Data_c_5));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_4 (.I(Data[4]), .O(Data_c_4));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_3 (.I(Data[3]), .O(Data_c_3));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_2 (.I(Data[2]), .O(Data_c_2));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_1 (.I(Data[1]), .O(Data_c_1));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB Data_pad_0 (.I(Data[0]), .O(Data_c_0));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(18[9:13])
    IB WE_pad (.I(WE), .O(WE_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(19[9:11])
    IB RdClock_pad (.I(RdClock), .O(RdClock_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(20[9:16])
    IB RdClockEn_pad (.I(RdClockEn), .O(RdClockEn_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(21[9:18])
    IB Reset_pad (.I(Reset), .O(Reset_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(22[9:14])
    IB WrClock_pad (.I(WrClock), .O(WrClock_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(23[9:16])
    IB WrClockEn_pad (.I(WrClockEn), .O(WrClockEn_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/frame_buffer_0.vhd(24[9:18])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(scuba_vlo));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i7 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

