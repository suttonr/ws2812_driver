// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Feb 18 22:11:13 2024
//
// Verilog Description of module top
//

module top (sclk, sclk_enable, serial_out, serial1_out, serial2_out, 
            MISO_SLAVE, MOSI_SLAVE, CSn_SLAVE, SCLK_SLAVE, button0, 
            led0, led1, led2, led3, led4, led5, led6, led7);   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(4[8:11])
    input sclk;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    output sclk_enable;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(7[3:14])
    output serial_out;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(9[3:13])
    output serial1_out;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(10[3:14])
    output serial2_out;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(11[3:14])
    output MISO_SLAVE;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(14[6:16])
    input MOSI_SLAVE;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[9:19])
    input CSn_SLAVE;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(16[9:18])
    input SCLK_SLAVE;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(17[9:19])
    input button0;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(19[3:10])
    output led0 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(20[3:7])
    output led1 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(20[8:12])
    input led2 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(20[13:17])
    input led3 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(20[18:22])
    input led4 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(20[23:27])
    input led5 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(20[28:32])
    input led6 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(20[33:37])
    input led7 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(20[38:42])
    
    wire sclk_c /* synthesis is_clock=1, SET_AS_NETWORK=sclk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    wire SCLK_SLAVE_c /* synthesis is_clock=1, SET_AS_NETWORK=SCLK_SLAVE_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(17[9:19])
    
    wire GND_net, VCC_net, serial_out_c, serial1_out_c, serial2_out_c, 
        MOSI_SLAVE_c, CSn_SLAVE_c, button0_c, led0_c, led1_c;
    wire [8:0]WrAddress;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(87[12:21])
    wire [8:0]RdAddress0;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(88[12:22])
    wire [8:0]RdAddress1;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(89[9:19])
    wire [8:0]RdAddress2;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(90[9:19])
    wire [23:0]Data;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(91[12:16])
    wire [8:0]WE;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(92[12:14])
    wire [23:0]Q0;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(98[12:14])
    wire [23:0]Q1;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(99[9:11])
    wire [23:0]Q2;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(100[9:11])
    
    wire CSn;
    wire [7:0]DATA_OUT;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(106[12:20])
    
    wire RX_RDY;
    wire [5:0]rx_data_cnt;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(91[25:36])
    
    wire rx_data_cnt_5__N_56, SCLK_SLAVE_c_enable_5, n9071;
    
    VHI i2 (.Z(VCC_net));
    \spi_slave(8,'0','0','0')  spi_port (.rx_data_cnt({Open_0, Open_1, Open_2, 
            Open_3, Open_4, rx_data_cnt[0]}), .SCLK_SLAVE_c(SCLK_SLAVE_c), 
            .rx_data_cnt_5__N_56(rx_data_cnt_5__N_56), .n9071(n9071), .sclk_c(sclk_c), 
            .RX_RDY(RX_RDY), .DATA_OUT({DATA_OUT}), .MOSI_SLAVE_c(MOSI_SLAVE_c), 
            .CSn(CSn), .SCLK_SLAVE_c_enable_5(SCLK_SLAVE_c_enable_5), .CSn_SLAVE_c(CSn_SLAVE_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(118[12:21])
    \button_test(48000000)  button_test_t (.led1_c(led1_c), .sclk_c(sclk_c), 
            .button0_c(button0_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(152[17:28])
    frame_buffer_0_U1 framebuffer0 (.WrAddress({WrAddress}), .RdAddress0({RdAddress0}), 
            .Data({Data}), .\WE[0] (WE[0]), .sclk_c(sclk_c), .VCC_net(VCC_net), 
            .GND_net(GND_net), .Q0({Q0})) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(125[16:30])
    frame_buffer_0_U0 framebuffer1 (.WrAddress({WrAddress}), .RdAddress1({RdAddress1}), 
            .Data({Data}), .\WE[1] (WE[1]), .sclk_c(sclk_c), .VCC_net(VCC_net), 
            .GND_net(GND_net), .Q1({Q1})) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(130[16:30])
    \WS2812(48000000,"111111111")  WS2812_2 (.sclk_c(sclk_c), .serial2_out_c(serial2_out_c), 
            .GND_net(GND_net), .button0_c(button0_c), .Q2({Q2}), .RdAddress2({RdAddress2}));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(148[12:18])
    OB sclk_enable_pad (.I(VCC_net), .O(sclk_enable));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(7[3:14])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    OB serial_out_pad (.I(serial_out_c), .O(serial_out));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(9[3:13])
    OB serial1_out_pad (.I(serial1_out_c), .O(serial1_out));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(10[3:14])
    OB serial2_out_pad (.I(serial2_out_c), .O(serial2_out));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(11[3:14])
    OBZ MISO_SLAVE_pad (.I(GND_net), .T(CSn_SLAVE_c), .O(MISO_SLAVE));   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(341[14] 351[26])
    OB led0_pad (.I(led0_c), .O(led0));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(20[3:7])
    OB led1_pad (.I(led1_c), .O(led1));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(20[8:12])
    IB sclk_pad (.I(sclk), .O(sclk_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    IB MOSI_SLAVE_pad (.I(MOSI_SLAVE), .O(MOSI_SLAVE_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[9:19])
    IB CSn_SLAVE_pad (.I(CSn_SLAVE), .O(CSn_SLAVE_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(16[9:18])
    IB SCLK_SLAVE_pad (.I(SCLK_SLAVE), .O(SCLK_SLAVE_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(17[9:19])
    IB button0_pad (.I(button0), .O(button0_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(19[3:10])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    \load_mem(48000000)  load_mem_t (.DATA_OUT({DATA_OUT}), .RX_RDY(RX_RDY), 
            .GND_net(GND_net), .Data({Data}), .sclk_c(sclk_c), .WrAddress({WrAddress}), 
            .led0_c(led0_c), .\WE[0] (WE[0]), .CSn(CSn), .\WE[2] (WE[2]), 
            .\WE[1] (WE[1]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(153[14:22])
    \WS2812(48000000,"111111111")_U3  WS2812_0 (.sclk_c(sclk_c), .Q0({Q0}), 
            .GND_net(GND_net), .serial_out_c(serial_out_c), .RdAddress0({RdAddress0}), 
            .button0_c(button0_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(140[12:18])
    LUT4 i6805_2_lut_rep_195 (.A(CSn_SLAVE_c), .B(rx_data_cnt_5__N_56), 
         .Z(SCLK_SLAVE_c_enable_5)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i6805_2_lut_rep_195.init = 16'hdddd;
    \WS2812(48000000,"111111111")_U2  WS2812_1 (.sclk_c(sclk_c), .serial1_out_c(serial1_out_c), 
            .button0_c(button0_c), .Q1({Q1}), .GND_net(GND_net), .RdAddress1({RdAddress1}));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(144[12:18])
    frame_buffer_0 framebuffer2 (.WrAddress({WrAddress}), .RdAddress2({RdAddress2}), 
            .Data({Data}), .\WE[2] (WE[2]), .sclk_c(sclk_c), .VCC_net(VCC_net), 
            .GND_net(GND_net), .Q2({Q2})) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(135[16:30])
    LUT4 i1_2_lut_3_lut (.A(CSn_SLAVE_c), .B(rx_data_cnt_5__N_56), .C(rx_data_cnt[0]), 
         .Z(n9071)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2d2d;
    
endmodule
//
// Verilog Description of module \spi_slave(8,'0','0','0') 
//

module \spi_slave(8,'0','0','0')  (rx_data_cnt, SCLK_SLAVE_c, rx_data_cnt_5__N_56, 
            n9071, sclk_c, RX_RDY, DATA_OUT, MOSI_SLAVE_c, CSn, 
            SCLK_SLAVE_c_enable_5, CSn_SLAVE_c);
    output [5:0]rx_data_cnt;
    input SCLK_SLAVE_c;
    output rx_data_cnt_5__N_56;
    input n9071;
    input sclk_c;
    output RX_RDY;
    output [7:0]DATA_OUT;
    input MOSI_SLAVE_c;
    input CSn;
    input SCLK_SLAVE_c_enable_5;
    input CSn_SLAVE_c;
    
    wire SCLK_SLAVE_c /* synthesis is_clock=1, SET_AS_NETWORK=SCLK_SLAVE_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(17[9:19])
    wire sclk_c /* synthesis is_clock=1, SET_AS_NETWORK=sclk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    
    wire rx_done, rx_done_flip1, rx_done_flip2, rx_done_flip3, n5841, 
        DATA_OUT_7__N_45;
    wire [7:0]rx_shift_data;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(76[13:26])
    wire [5:0]rx_data_cnt_c;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(91[25:36])
    
    wire n9908;
    wire [5:0]n90;
    
    wire CSn_SLAVE_N_49, n9898, n9499;
    
    FD1S3IX rx_data_cnt__i0 (.D(n9071), .CK(SCLK_SLAVE_c), .CD(rx_data_cnt_5__N_56), 
            .Q(rx_data_cnt[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(152[13] 160[20])
    defparam rx_data_cnt__i0.GSR = "ENABLED";
    FD1S3AX rx_done_145 (.D(rx_data_cnt_5__N_56), .CK(SCLK_SLAVE_c), .Q(rx_done)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(164[13] 172[20])
    defparam rx_done_145.GSR = "ENABLED";
    FD1S3AX rx_done_flip1_146 (.D(rx_done), .CK(sclk_c), .Q(rx_done_flip1)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(301[6] 309[13])
    defparam rx_done_flip1_146.GSR = "ENABLED";
    FD1S3AX rx_done_flip2_147 (.D(rx_done_flip1), .CK(sclk_c), .Q(rx_done_flip2)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(301[6] 309[13])
    defparam rx_done_flip2_147.GSR = "ENABLED";
    FD1S3AX rx_done_flip3_148 (.D(rx_done_flip2), .CK(sclk_c), .Q(rx_done_flip3)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(301[6] 309[13])
    defparam rx_done_flip3_148.GSR = "ENABLED";
    FD1S3AX reg_rrdy_149 (.D(n5841), .CK(sclk_c), .Q(RX_RDY)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(314[6] 322[13])
    defparam reg_rrdy_149.GSR = "ENABLED";
    FD1P3AX reg_rxdata_i0_i0 (.D(rx_shift_data[0]), .SP(DATA_OUT_7__N_45), 
            .CK(sclk_c), .Q(DATA_OUT[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(114[6] 120[13])
    defparam reg_rxdata_i0_i0.GSR = "ENABLED";
    LUT4 i788_2_lut_3_lut_4_lut (.A(rx_data_cnt_c[2]), .B(n9908), .C(rx_data_cnt_c[4]), 
         .D(rx_data_cnt_c[3]), .Z(n90[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i788_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3AX rx_shift_data_i0_i0 (.D(MOSI_SLAVE_c), .SP(CSn_SLAVE_N_49), 
            .CK(SCLK_SLAVE_c), .Q(rx_shift_data[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(138[13] 148[20])
    defparam rx_shift_data_i0_i0.GSR = "ENABLED";
    LUT4 i3757_4_lut (.A(CSn), .B(rx_done_flip2), .C(RX_RDY), .D(rx_done_flip3), 
         .Z(n5841)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(314[6] 322[13])
    defparam i3757_4_lut.init = 16'ha0ec;
    FD1P3IX rx_data_cnt__i1 (.D(n90[1]), .SP(SCLK_SLAVE_c_enable_5), .CD(rx_data_cnt_5__N_56), 
            .CK(SCLK_SLAVE_c), .Q(rx_data_cnt_c[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(152[13] 160[20])
    defparam rx_data_cnt__i1.GSR = "ENABLED";
    FD1P3IX rx_data_cnt__i2 (.D(n90[2]), .SP(SCLK_SLAVE_c_enable_5), .CD(rx_data_cnt_5__N_56), 
            .CK(SCLK_SLAVE_c), .Q(rx_data_cnt_c[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(152[13] 160[20])
    defparam rx_data_cnt__i2.GSR = "ENABLED";
    FD1P3IX rx_data_cnt__i3 (.D(n90[3]), .SP(SCLK_SLAVE_c_enable_5), .CD(rx_data_cnt_5__N_56), 
            .CK(SCLK_SLAVE_c), .Q(rx_data_cnt_c[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(152[13] 160[20])
    defparam rx_data_cnt__i3.GSR = "ENABLED";
    FD1P3IX rx_data_cnt__i4 (.D(n90[4]), .SP(SCLK_SLAVE_c_enable_5), .CD(rx_data_cnt_5__N_56), 
            .CK(SCLK_SLAVE_c), .Q(rx_data_cnt_c[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(152[13] 160[20])
    defparam rx_data_cnt__i4.GSR = "ENABLED";
    FD1P3IX rx_data_cnt__i5 (.D(n90[5]), .SP(SCLK_SLAVE_c_enable_5), .CD(rx_data_cnt_5__N_56), 
            .CK(SCLK_SLAVE_c), .Q(rx_data_cnt_c[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(152[13] 160[20])
    defparam rx_data_cnt__i5.GSR = "ENABLED";
    FD1P3AX reg_rxdata_i0_i1 (.D(rx_shift_data[1]), .SP(DATA_OUT_7__N_45), 
            .CK(sclk_c), .Q(DATA_OUT[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(114[6] 120[13])
    defparam reg_rxdata_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_rxdata_i0_i2 (.D(rx_shift_data[2]), .SP(DATA_OUT_7__N_45), 
            .CK(sclk_c), .Q(DATA_OUT[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(114[6] 120[13])
    defparam reg_rxdata_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_rxdata_i0_i3 (.D(rx_shift_data[3]), .SP(DATA_OUT_7__N_45), 
            .CK(sclk_c), .Q(DATA_OUT[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(114[6] 120[13])
    defparam reg_rxdata_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_rxdata_i0_i4 (.D(rx_shift_data[4]), .SP(DATA_OUT_7__N_45), 
            .CK(sclk_c), .Q(DATA_OUT[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(114[6] 120[13])
    defparam reg_rxdata_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_rxdata_i0_i5 (.D(rx_shift_data[5]), .SP(DATA_OUT_7__N_45), 
            .CK(sclk_c), .Q(DATA_OUT[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(114[6] 120[13])
    defparam reg_rxdata_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_rxdata_i0_i6 (.D(rx_shift_data[6]), .SP(DATA_OUT_7__N_45), 
            .CK(sclk_c), .Q(DATA_OUT[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(114[6] 120[13])
    defparam reg_rxdata_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_rxdata_i0_i7 (.D(rx_shift_data[7]), .SP(DATA_OUT_7__N_45), 
            .CK(sclk_c), .Q(DATA_OUT[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(114[6] 120[13])
    defparam reg_rxdata_i0_i7.GSR = "ENABLED";
    LUT4 i769_2_lut_rep_206 (.A(rx_data_cnt_c[1]), .B(rx_data_cnt[0]), .Z(n9908)) /* synthesis lut_function=(A (B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i769_2_lut_rep_206.init = 16'h8888;
    LUT4 i774_2_lut_3_lut (.A(rx_data_cnt_c[1]), .B(rx_data_cnt[0]), .C(rx_data_cnt_c[2]), 
         .Z(n90[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i774_2_lut_3_lut.init = 16'h7878;
    FD1P3AX rx_shift_data_i0_i1 (.D(rx_shift_data[0]), .SP(CSn_SLAVE_N_49), 
            .CK(SCLK_SLAVE_c), .Q(rx_shift_data[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(138[13] 148[20])
    defparam rx_shift_data_i0_i1.GSR = "ENABLED";
    LUT4 i776_2_lut_rep_196_3_lut (.A(rx_data_cnt_c[1]), .B(rx_data_cnt[0]), 
         .C(rx_data_cnt_c[2]), .Z(n9898)) /* synthesis lut_function=(A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i776_2_lut_rep_196_3_lut.init = 16'h8080;
    LUT4 i781_2_lut_3_lut_4_lut (.A(rx_data_cnt_c[1]), .B(rx_data_cnt[0]), 
         .C(rx_data_cnt_c[3]), .D(rx_data_cnt_c[2]), .Z(n90[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i781_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i767_2_lut (.A(rx_data_cnt_c[1]), .B(rx_data_cnt[0]), .Z(n90[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i767_2_lut.init = 16'h6666;
    LUT4 i6810_4_lut (.A(rx_data_cnt_c[3]), .B(rx_data_cnt_c[4]), .C(rx_data_cnt_c[5]), 
         .D(n9499), .Z(rx_data_cnt_5__N_56)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(155[19:48])
    defparam i6810_4_lut.init = 16'h0100;
    LUT4 rx_done_flip1_I_0_2_lut (.A(rx_done_flip1), .B(rx_done_flip2), 
         .Z(DATA_OUT_7__N_45)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(117[12:51])
    defparam rx_done_flip1_I_0_2_lut.init = 16'h2222;
    FD1P3AX rx_shift_data_i0_i2 (.D(rx_shift_data[1]), .SP(CSn_SLAVE_N_49), 
            .CK(SCLK_SLAVE_c), .Q(rx_shift_data[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(138[13] 148[20])
    defparam rx_shift_data_i0_i2.GSR = "ENABLED";
    FD1P3AX rx_shift_data_i0_i3 (.D(rx_shift_data[2]), .SP(CSn_SLAVE_N_49), 
            .CK(SCLK_SLAVE_c), .Q(rx_shift_data[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(138[13] 148[20])
    defparam rx_shift_data_i0_i3.GSR = "ENABLED";
    FD1P3AX rx_shift_data_i0_i4 (.D(rx_shift_data[3]), .SP(CSn_SLAVE_N_49), 
            .CK(SCLK_SLAVE_c), .Q(rx_shift_data[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(138[13] 148[20])
    defparam rx_shift_data_i0_i4.GSR = "ENABLED";
    FD1P3AX rx_shift_data_i0_i5 (.D(rx_shift_data[4]), .SP(CSn_SLAVE_N_49), 
            .CK(SCLK_SLAVE_c), .Q(rx_shift_data[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(138[13] 148[20])
    defparam rx_shift_data_i0_i5.GSR = "ENABLED";
    FD1P3AX rx_shift_data_i0_i6 (.D(rx_shift_data[5]), .SP(CSn_SLAVE_N_49), 
            .CK(SCLK_SLAVE_c), .Q(rx_shift_data[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(138[13] 148[20])
    defparam rx_shift_data_i0_i6.GSR = "ENABLED";
    FD1P3AX rx_shift_data_i0_i7 (.D(rx_shift_data[6]), .SP(CSn_SLAVE_N_49), 
            .CK(SCLK_SLAVE_c), .Q(rx_shift_data[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(138[13] 148[20])
    defparam rx_shift_data_i0_i7.GSR = "ENABLED";
    LUT4 i6686_3_lut (.A(rx_data_cnt_c[1]), .B(rx_data_cnt_c[2]), .C(rx_data_cnt[0]), 
         .Z(n9499)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i6686_3_lut.init = 16'h8080;
    LUT4 CSn_SLAVE_I_0_1_lut (.A(CSn_SLAVE_c), .Z(CSn_SLAVE_N_49)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/simple_spi.vhd(342[20:33])
    defparam CSn_SLAVE_I_0_1_lut.init = 16'h5555;
    LUT4 i795_3_lut_4_lut (.A(rx_data_cnt_c[3]), .B(n9898), .C(rx_data_cnt_c[4]), 
         .D(rx_data_cnt_c[5]), .Z(n90[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i795_3_lut_4_lut.init = 16'h7f80;
    
endmodule
//
// Verilog Description of module \button_test(48000000) 
//

module \button_test(48000000)  (led1_c, sclk_c, button0_c);
    output led1_c;
    input sclk_c;
    input button0_c;
    
    wire sclk_c /* synthesis is_clock=1, SET_AS_NETWORK=sclk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    
    FD1S3AX led_8 (.D(button0_c), .CK(sclk_c), .Q(led1_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=28, LSE_LLINE=152, LSE_RLINE=152 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/button_test.vhd(18[2] 22[14])
    defparam led_8.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module frame_buffer_0_U1
//

module frame_buffer_0_U1 (WrAddress, RdAddress0, Data, \WE[0] , sclk_c, 
            VCC_net, GND_net, Q0) /* synthesis NGD_DRC_MASK=1 */ ;
    input [8:0]WrAddress;
    input [8:0]RdAddress0;
    input [23:0]Data;
    input \WE[0] ;
    input sclk_c;
    input VCC_net;
    input GND_net;
    output [23:0]Q0;
    
    wire sclk_c /* synthesis is_clock=1, SET_AS_NETWORK=sclk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    
    PDPW8KC frame_buffer_0_0_1_0 (.DI0(Data[18]), .DI1(Data[19]), .DI2(Data[20]), 
            .DI3(Data[21]), .DI4(Data[22]), .DI5(Data[23]), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .ADW0(WrAddress[0]), 
            .ADW1(WrAddress[1]), .ADW2(WrAddress[2]), .ADW3(WrAddress[3]), 
            .ADW4(WrAddress[4]), .ADW5(WrAddress[5]), .ADW6(WrAddress[6]), 
            .ADW7(WrAddress[7]), .ADW8(WrAddress[8]), .BE0(VCC_net), .BE1(VCC_net), 
            .CEW(VCC_net), .CLKW(sclk_c), .CSW0(\WE[0] ), .CSW1(GND_net), 
            .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), .ADR2(GND_net), 
            .ADR3(GND_net), .ADR4(RdAddress0[0]), .ADR5(RdAddress0[1]), 
            .ADR6(RdAddress0[2]), .ADR7(RdAddress0[3]), .ADR8(RdAddress0[4]), 
            .ADR9(RdAddress0[5]), .ADR10(RdAddress0[6]), .ADR11(RdAddress0[7]), 
            .ADR12(RdAddress0[8]), .CER(VCC_net), .OCER(VCC_net), .CLKR(sclk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO9(Q0[18]), .DO10(Q0[19]), .DO11(Q0[20]), .DO12(Q0[21]), 
            .DO13(Q0[22]), .DO14(Q0[23])) /* synthesis MEM_LPC_FILE="frame_buffer_0.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=30, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(125[16:30])
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
    PDPW8KC frame_buffer_0_0_0_1 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), 
            .DI3(Data[3]), .DI4(Data[4]), .DI5(Data[5]), .DI6(Data[6]), 
            .DI7(Data[7]), .DI8(Data[8]), .DI9(Data[9]), .DI10(Data[10]), 
            .DI11(Data[11]), .DI12(Data[12]), .DI13(Data[13]), .DI14(Data[14]), 
            .DI15(Data[15]), .DI16(Data[16]), .DI17(Data[17]), .ADW0(WrAddress[0]), 
            .ADW1(WrAddress[1]), .ADW2(WrAddress[2]), .ADW3(WrAddress[3]), 
            .ADW4(WrAddress[4]), .ADW5(WrAddress[5]), .ADW6(WrAddress[6]), 
            .ADW7(WrAddress[7]), .ADW8(WrAddress[8]), .BE0(VCC_net), .BE1(VCC_net), 
            .CEW(VCC_net), .CLKW(sclk_c), .CSW0(\WE[0] ), .CSW1(GND_net), 
            .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), .ADR2(GND_net), 
            .ADR3(GND_net), .ADR4(RdAddress0[0]), .ADR5(RdAddress0[1]), 
            .ADR6(RdAddress0[2]), .ADR7(RdAddress0[3]), .ADR8(RdAddress0[4]), 
            .ADR9(RdAddress0[5]), .ADR10(RdAddress0[6]), .ADR11(RdAddress0[7]), 
            .ADR12(RdAddress0[8]), .CER(VCC_net), .OCER(VCC_net), .CLKR(sclk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO0(Q0[9]), .DO1(Q0[10]), .DO2(Q0[11]), .DO3(Q0[12]), .DO4(Q0[13]), 
            .DO5(Q0[14]), .DO6(Q0[15]), .DO7(Q0[16]), .DO8(Q0[17]), 
            .DO9(Q0[0]), .DO10(Q0[1]), .DO11(Q0[2]), .DO12(Q0[3]), .DO13(Q0[4]), 
            .DO14(Q0[5]), .DO15(Q0[6]), .DO16(Q0[7]), .DO17(Q0[8])) /* synthesis MEM_LPC_FILE="frame_buffer_0.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=30, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(125[16:30])
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
    
endmodule
//
// Verilog Description of module frame_buffer_0_U0
//

module frame_buffer_0_U0 (WrAddress, RdAddress1, Data, \WE[1] , sclk_c, 
            VCC_net, GND_net, Q1) /* synthesis NGD_DRC_MASK=1 */ ;
    input [8:0]WrAddress;
    input [8:0]RdAddress1;
    input [23:0]Data;
    input \WE[1] ;
    input sclk_c;
    input VCC_net;
    input GND_net;
    output [23:0]Q1;
    
    wire sclk_c /* synthesis is_clock=1, SET_AS_NETWORK=sclk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    
    PDPW8KC frame_buffer_0_0_1_0 (.DI0(Data[18]), .DI1(Data[19]), .DI2(Data[20]), 
            .DI3(Data[21]), .DI4(Data[22]), .DI5(Data[23]), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .ADW0(WrAddress[0]), 
            .ADW1(WrAddress[1]), .ADW2(WrAddress[2]), .ADW3(WrAddress[3]), 
            .ADW4(WrAddress[4]), .ADW5(WrAddress[5]), .ADW6(WrAddress[6]), 
            .ADW7(WrAddress[7]), .ADW8(WrAddress[8]), .BE0(VCC_net), .BE1(VCC_net), 
            .CEW(VCC_net), .CLKW(sclk_c), .CSW0(\WE[1] ), .CSW1(GND_net), 
            .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), .ADR2(GND_net), 
            .ADR3(GND_net), .ADR4(RdAddress1[0]), .ADR5(RdAddress1[1]), 
            .ADR6(RdAddress1[2]), .ADR7(RdAddress1[3]), .ADR8(RdAddress1[4]), 
            .ADR9(RdAddress1[5]), .ADR10(RdAddress1[6]), .ADR11(RdAddress1[7]), 
            .ADR12(RdAddress1[8]), .CER(VCC_net), .OCER(VCC_net), .CLKR(sclk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO9(Q1[18]), .DO10(Q1[19]), .DO11(Q1[20]), .DO12(Q1[21]), 
            .DO13(Q1[22]), .DO14(Q1[23])) /* synthesis MEM_LPC_FILE="frame_buffer_0.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=30, LSE_LLINE=130, LSE_RLINE=130 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(130[16:30])
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
    PDPW8KC frame_buffer_0_0_0_1 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), 
            .DI3(Data[3]), .DI4(Data[4]), .DI5(Data[5]), .DI6(Data[6]), 
            .DI7(Data[7]), .DI8(Data[8]), .DI9(Data[9]), .DI10(Data[10]), 
            .DI11(Data[11]), .DI12(Data[12]), .DI13(Data[13]), .DI14(Data[14]), 
            .DI15(Data[15]), .DI16(Data[16]), .DI17(Data[17]), .ADW0(WrAddress[0]), 
            .ADW1(WrAddress[1]), .ADW2(WrAddress[2]), .ADW3(WrAddress[3]), 
            .ADW4(WrAddress[4]), .ADW5(WrAddress[5]), .ADW6(WrAddress[6]), 
            .ADW7(WrAddress[7]), .ADW8(WrAddress[8]), .BE0(VCC_net), .BE1(VCC_net), 
            .CEW(VCC_net), .CLKW(sclk_c), .CSW0(\WE[1] ), .CSW1(GND_net), 
            .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), .ADR2(GND_net), 
            .ADR3(GND_net), .ADR4(RdAddress1[0]), .ADR5(RdAddress1[1]), 
            .ADR6(RdAddress1[2]), .ADR7(RdAddress1[3]), .ADR8(RdAddress1[4]), 
            .ADR9(RdAddress1[5]), .ADR10(RdAddress1[6]), .ADR11(RdAddress1[7]), 
            .ADR12(RdAddress1[8]), .CER(VCC_net), .OCER(VCC_net), .CLKR(sclk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO0(Q1[9]), .DO1(Q1[10]), .DO2(Q1[11]), .DO3(Q1[12]), .DO4(Q1[13]), 
            .DO5(Q1[14]), .DO6(Q1[15]), .DO7(Q1[16]), .DO8(Q1[17]), 
            .DO9(Q1[0]), .DO10(Q1[1]), .DO11(Q1[2]), .DO12(Q1[3]), .DO13(Q1[4]), 
            .DO14(Q1[5]), .DO15(Q1[6]), .DO16(Q1[7]), .DO17(Q1[8])) /* synthesis MEM_LPC_FILE="frame_buffer_0.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=30, LSE_LLINE=130, LSE_RLINE=130 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(130[16:30])
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
    
endmodule
//
// Verilog Description of module \WS2812(48000000,"111111111") 
//

module \WS2812(48000000,"111111111")  (sclk_c, serial2_out_c, GND_net, 
            button0_c, Q2, RdAddress2);
    input sclk_c;
    output serial2_out_c;
    input GND_net;
    input button0_c;
    input [23:0]Q2;
    output [8:0]RdAddress2;
    
    wire sclk_c /* synthesis is_clock=1, SET_AS_NETWORK=sclk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    wire [2:0]state;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(41[12:17])
    
    wire n13;
    wire [8:0]n118;
    wire [8:0]cur_pixel_8__N_100;
    wire [31:0]n447;
    
    wire n2316, n10002;
    wire [31:0]delay_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(44[12:25])
    
    wire sclk_c_enable_200;
    wire [31:0]n1721;
    
    wire n6096, sclk_c_enable_26, serial_N_426, sclk_c_enable_29;
    wire [2:0]state_2__N_97;
    
    wire n9927, n28;
    wire [6:0]n2640;
    
    wire n9892, n9476, n29, n15;
    wire [8:0]cur_pixel;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(42[12:21])
    
    wire n14, n9899, n10004, n9947;
    wire [23:0]pixel;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(43[12:17])
    wire [31:0]bit_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(45[12:23])
    
    wire n9565, n9564, n9563, n9562;
    wire [31:0]n1545;
    
    wire n7721, n9881, n2281, n10, n9152, n10_adj_857, n9154, 
        serial_N_430, n9547, n9568, n8580, n9533, n9534, n9541, 
        n10_adj_858, n9156, n9535, n9536, n9542, n9879, n9891, 
        n1250, n9537, n9538, n9543, n9539, n9540, n9544, sclk_c_enable_327, 
        n9916, sclk_c_enable_319, sclk_c_enable_358;
    wire [31:0]bit_counter_31__N_165;
    
    wire n9928, n8579, n8578, n8741, n8740, n8739, n8577, n8738, 
        n8737, n8736, n9566, n9567, n8735, n8734, n8733, n8732, 
        n8731, n8730;
    wire [31:0]bit_counter_31__N_197;
    
    wire n8729, n8728, n8727, n8726, n1, n1_adj_859, n8915, n8693, 
        n8914, n8692, n8691, n8690, n8689, n8688, n8913, n8912, 
        n8687, n8686, n8911, n8685, n8684, n8910, n8683, n8682, 
        n8681, n8909, n8680, n8679, n8908, n8678, n8907, n8906, 
        n8905, n8904, n10003, n8903, n10000, n9999, n8902, n8901, 
        n8597, n8596, n8900, n9545, n9546, n8595, n8594, n8593, 
        n8592, n8591, n9945, n9946, n9942, n9943, n8590, n8589, 
        n8588, n8587, n8586, n8585, n8584, n8583, n8582;
    
    LUT4 i5586_2_lut_3_lut (.A(state[2]), .B(n13), .C(n118[7]), .Z(cur_pixel_8__N_100[7])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5586_2_lut_3_lut.init = 16'h1010;
    LUT4 i5584_2_lut_3_lut (.A(state[2]), .B(n13), .C(n118[6]), .Z(cur_pixel_8__N_100[6])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5584_2_lut_3_lut.init = 16'h1010;
    LUT4 i5322_2_lut_3_lut (.A(state[2]), .B(n13), .C(n118[0]), .Z(cur_pixel_8__N_100[0])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5322_2_lut_3_lut.init = 16'h1010;
    LUT4 i5580_2_lut_3_lut (.A(state[2]), .B(n13), .C(n118[5]), .Z(cur_pixel_8__N_100[5])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5580_2_lut_3_lut.init = 16'h1010;
    LUT4 i5587_2_lut_3_lut (.A(state[2]), .B(n13), .C(n118[8]), .Z(cur_pixel_8__N_100[8])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5587_2_lut_3_lut.init = 16'h1010;
    LUT4 mux_522_i5_4_lut_4_lut_else_4_lut (.A(state[1]), .B(state[2]), 
         .C(n447[4]), .D(n2316), .Z(n10002)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam mux_522_i5_4_lut_4_lut_else_4_lut.init = 16'hd0f0;
    LUT4 i5577_2_lut_3_lut (.A(state[2]), .B(n13), .C(n118[4]), .Z(cur_pixel_8__N_100[4])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5577_2_lut_3_lut.init = 16'h1010;
    LUT4 i5576_2_lut_3_lut (.A(state[2]), .B(n13), .C(n118[3]), .Z(cur_pixel_8__N_100[3])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5576_2_lut_3_lut.init = 16'h1010;
    LUT4 i5575_2_lut_3_lut (.A(state[2]), .B(n13), .C(n118[2]), .Z(cur_pixel_8__N_100[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5575_2_lut_3_lut.init = 16'h1010;
    LUT4 i5574_2_lut_3_lut (.A(state[2]), .B(n13), .C(n118[1]), .Z(cur_pixel_8__N_100[1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5574_2_lut_3_lut.init = 16'h1010;
    FD1P3AX delay_counter_i0_i0 (.D(n1721[0]), .SP(sclk_c_enable_200), .CK(sclk_c), 
            .Q(delay_counter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i0.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i31 (.D(n447[31]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i31.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i30 (.D(n447[30]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i30.GSR = "ENABLED";
    FD1P3AX serial_76 (.D(serial_N_426), .SP(sclk_c_enable_26), .CK(sclk_c), 
            .Q(serial2_out_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam serial_76.GSR = "ENABLED";
    FD1P3AY state_i0 (.D(state_2__N_97[0]), .SP(sclk_c_enable_29), .CK(sclk_c), 
            .Q(state[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam state_i0.GSR = "ENABLED";
    FD1P3AX state_i1 (.D(state_2__N_97[1]), .SP(sclk_c_enable_29), .CK(sclk_c), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam state_i1.GSR = "ENABLED";
    FD1P3AY state_i2 (.D(state_2__N_97[2]), .SP(sclk_c_enable_29), .CK(sclk_c), 
            .Q(state[2])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam state_i2.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i29 (.D(n447[29]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i29.GSR = "ENABLED";
    LUT4 n9805_bdd_2_lut_3_lut_4_lut_else_4_lut (.A(state[1]), .B(n2316), 
         .C(state[0]), .Z(n9927)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam n9805_bdd_2_lut_3_lut_4_lut_else_4_lut.init = 16'hdcdc;
    FD1P3IX delay_counter_i0_i28 (.D(n447[28]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i28.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i27 (.D(n447[27]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i27.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i26 (.D(n447[26]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i26.GSR = "ENABLED";
    LUT4 mux_532_i1_4_lut (.A(n28), .B(n2640[0]), .C(n9892), .D(n9476), 
         .Z(n1721[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_532_i1_4_lut.init = 16'hcfca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(state[2]), .B(state[1]), .C(n447[1]), 
         .D(state[0]), .Z(n29)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'he0f0;
    FD1P3IX delay_counter_i0_i25 (.D(n447[25]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i25.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i24 (.D(n447[24]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i24.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(n15), .B(cur_pixel[6]), .C(n14), .D(cur_pixel[1]), 
         .Z(n13)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i6_4_lut (.A(cur_pixel[5]), .B(cur_pixel[8]), .C(cur_pixel[3]), 
         .D(cur_pixel[4]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i5_3_lut (.A(cur_pixel[2]), .B(cur_pixel[0]), .C(cur_pixel[7]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5_3_lut.init = 16'h8080;
    FD1P3IX delay_counter_i0_i23 (.D(n447[23]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i23.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i22 (.D(n447[22]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i22.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i21 (.D(n447[21]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i21.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i20 (.D(n447[20]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i20.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i19 (.D(n447[19]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i19.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i18 (.D(n447[18]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i18.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i17 (.D(n447[17]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i17.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i16 (.D(n447[16]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i16.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i15 (.D(n447[15]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_197_3_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n9899)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_197_3_lut.init = 16'h1010;
    FD1P3IX delay_counter_i0_i14 (.D(n447[14]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i14.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i13 (.D(n447[13]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i13.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i11 (.D(n447[11]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i11.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i10 (.D(n447[10]), .SP(sclk_c_enable_200), 
            .CD(n6096), .CK(sclk_c), .Q(delay_counter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i10.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i6 (.D(n447[6]), .SP(sclk_c_enable_200), .CD(n6096), 
            .CK(sclk_c), .Q(delay_counter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i6.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i5 (.D(n447[5]), .SP(sclk_c_enable_200), .CD(n6096), 
            .CK(sclk_c), .Q(delay_counter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i5.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i4 (.D(n10004), .SP(sclk_c_enable_200), .CD(n9892), 
            .CK(sclk_c), .Q(delay_counter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i4.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i2 (.D(n9947), .SP(sclk_c_enable_200), .CD(n9892), 
            .CK(sclk_c), .Q(delay_counter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i2.GSR = "ENABLED";
    LUT4 mux_532_i2_4_lut (.A(n29), .B(n2640[0]), .C(n9892), .D(n9476), 
         .Z(n1721[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_532_i2_4_lut.init = 16'hcfca;
    LUT4 i6752_3_lut (.A(pixel[22]), .B(pixel[23]), .C(bit_counter[0]), 
         .Z(n9565)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6752_3_lut.init = 16'hcaca;
    LUT4 i6751_3_lut (.A(pixel[20]), .B(pixel[21]), .C(bit_counter[0]), 
         .Z(n9564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6751_3_lut.init = 16'hcaca;
    LUT4 i6750_3_lut (.A(pixel[18]), .B(pixel[19]), .C(bit_counter[0]), 
         .Z(n9563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6750_3_lut.init = 16'hcaca;
    LUT4 i6749_3_lut (.A(pixel[16]), .B(pixel[17]), .C(bit_counter[0]), 
         .Z(n9562)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6749_3_lut.init = 16'hcaca;
    LUT4 mux_532_i4_4_lut (.A(n1545[3]), .B(n7721), .C(n9892), .D(n9881), 
         .Z(n1721[3])) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_532_i4_4_lut.init = 16'h3f3a;
    LUT4 mux_516_i4_4_lut (.A(n447[3]), .B(n13), .C(n9899), .D(n2281), 
         .Z(n1545[3])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_516_i4_4_lut.init = 16'hcafa;
    LUT4 i4032_4_lut (.A(sclk_c_enable_200), .B(n9881), .C(n9892), .D(n9899), 
         .Z(n6096)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i4032_4_lut.init = 16'haaa8;
    LUT4 i23_4_lut (.A(n9881), .B(n7721), .C(n9892), .D(n10), .Z(n9152)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i23_4_lut.init = 16'h3530;
    LUT4 i23_4_lut_adj_124 (.A(n9881), .B(n7721), .C(n9892), .D(n10_adj_857), 
         .Z(n9154)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i23_4_lut_adj_124.init = 16'h3530;
    LUT4 i5326_3_lut (.A(serial_N_430), .B(state[2]), .C(state[0]), .Z(serial_N_426)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i5326_3_lut.init = 16'h2323;
    LUT4 bit_counter_4__I_0_i31_4_lut (.A(n9547), .B(n9568), .C(bit_counter[4]), 
         .D(bit_counter[3]), .Z(serial_N_430)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(86[22:33])
    defparam bit_counter_4__I_0_i31_4_lut.init = 16'h0aca;
    CCU2D add_17_9 (.A0(cur_pixel[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8580), .S0(n118[7]), .S1(n118[8]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_9.INIT0 = 16'h5aaa;
    defparam add_17_9.INIT1 = 16'h5aaa;
    defparam add_17_9.INJECT1_0 = "NO";
    defparam add_17_9.INJECT1_1 = "NO";
    PFUMX i6728 (.BLUT(n9533), .ALUT(n9534), .C0(bit_counter[1]), .Z(n9541));
    LUT4 i23_4_lut_adj_125 (.A(n9881), .B(n7721), .C(n9892), .D(n10_adj_858), 
         .Z(n9156)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i23_4_lut_adj_125.init = 16'h3530;
    PFUMX i6729 (.BLUT(n9535), .ALUT(n9536), .C0(bit_counter[1]), .Z(n9542));
    LUT4 mux_419_i1_4_lut (.A(n9899), .B(n7721), .C(n9879), .D(n9891), 
         .Z(state_2__N_97[0])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_419_i1_4_lut.init = 16'h3f35;
    LUT4 i432_4_lut (.A(state[1]), .B(n2316), .C(button0_c), .D(state[0]), 
         .Z(n1250)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i432_4_lut.init = 16'heaaa;
    LUT4 mux_532_i13_4_lut (.A(n1545[12]), .B(n7721), .C(n9892), .D(n9881), 
         .Z(n1721[12])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_532_i13_4_lut.init = 16'h303a;
    LUT4 mux_419_i2_4_lut (.A(n2281), .B(n7721), .C(n9879), .D(n9899), 
         .Z(state_2__N_97[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_419_i2_4_lut.init = 16'h3530;
    PFUMX i6730 (.BLUT(n9537), .ALUT(n9538), .C0(bit_counter[1]), .Z(n9543));
    PFUMX i6731 (.BLUT(n9539), .ALUT(n9540), .C0(bit_counter[1]), .Z(n9544));
    FD1P3AX delay_counter_i0_i1 (.D(n1721[1]), .SP(sclk_c_enable_200), .CK(sclk_c), 
            .Q(delay_counter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i1.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i3 (.D(n1721[3]), .SP(sclk_c_enable_200), .CK(sclk_c), 
            .Q(delay_counter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i3.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i7 (.D(n9152), .SP(sclk_c_enable_200), .CK(sclk_c), 
            .Q(delay_counter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i7.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i8 (.D(n9154), .SP(sclk_c_enable_200), .CK(sclk_c), 
            .Q(delay_counter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i8.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i9 (.D(n9156), .SP(sclk_c_enable_200), .CK(sclk_c), 
            .Q(delay_counter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i9.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i12 (.D(n1721[12]), .SP(sclk_c_enable_200), 
            .CK(sclk_c), .Q(delay_counter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i12.GSR = "ENABLED";
    FD1P3IX pixel_i0 (.D(Q2[0]), .SP(sclk_c_enable_327), .CD(n9916), .CK(sclk_c), 
            .Q(pixel[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i0.GSR = "ENABLED";
    FD1P3AX cur_pixel_i0 (.D(cur_pixel_8__N_100[0]), .SP(sclk_c_enable_319), 
            .CK(sclk_c), .Q(cur_pixel[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i0.GSR = "ENABLED";
    FD1P3IX PixelAddress_i0 (.D(cur_pixel[0]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(RdAddress2[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i0.GSR = "ENABLED";
    FD1P3AX bit_counter_i0 (.D(bit_counter_31__N_165[0]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i0.GSR = "ENABLED";
    PFUMX i6900 (.BLUT(n9927), .ALUT(n9928), .C0(state[2]), .Z(sclk_c_enable_29));
    LUT4 i6727_3_lut (.A(pixel[14]), .B(pixel[15]), .C(bit_counter[0]), 
         .Z(n9540)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6727_3_lut.init = 16'hcaca;
    LUT4 i3432_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), .Z(sclk_c_enable_327)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam i3432_3_lut.init = 16'hc1c1;
    LUT4 i6726_3_lut (.A(pixel[12]), .B(pixel[13]), .C(bit_counter[0]), 
         .Z(n9539)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6726_3_lut.init = 16'hcaca;
    LUT4 i6725_3_lut (.A(pixel[10]), .B(pixel[11]), .C(bit_counter[0]), 
         .Z(n9538)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6725_3_lut.init = 16'hcaca;
    FD1P3IX pixel_i23 (.D(Q2[23]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i23.GSR = "ENABLED";
    LUT4 i6724_3_lut (.A(pixel[8]), .B(pixel[9]), .C(bit_counter[0]), 
         .Z(n9537)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6724_3_lut.init = 16'hcaca;
    CCU2D add_17_7 (.A0(cur_pixel[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8579), .COUT(n8580), .S0(n118[5]), .S1(n118[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_7.INIT0 = 16'h5aaa;
    defparam add_17_7.INIT1 = 16'h5aaa;
    defparam add_17_7.INJECT1_0 = "NO";
    defparam add_17_7.INJECT1_1 = "NO";
    CCU2D add_17_5 (.A0(cur_pixel[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8578), .COUT(n8579), .S0(n118[3]), .S1(n118[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_5.INIT0 = 16'h5aaa;
    defparam add_17_5.INIT1 = 16'h5aaa;
    defparam add_17_5.INJECT1_0 = "NO";
    defparam add_17_5.INJECT1_1 = "NO";
    FD1P3IX pixel_i22 (.D(Q2[22]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i22.GSR = "ENABLED";
    LUT4 i6723_3_lut (.A(pixel[6]), .B(pixel[7]), .C(bit_counter[0]), 
         .Z(n9536)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6723_3_lut.init = 16'hcaca;
    LUT4 i6722_3_lut (.A(pixel[4]), .B(pixel[5]), .C(bit_counter[0]), 
         .Z(n9535)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6722_3_lut.init = 16'hcaca;
    LUT4 i6721_3_lut (.A(pixel[2]), .B(pixel[3]), .C(bit_counter[0]), 
         .Z(n9534)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6721_3_lut.init = 16'hcaca;
    LUT4 i6720_3_lut (.A(pixel[0]), .B(pixel[1]), .C(bit_counter[0]), 
         .Z(n9533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6720_3_lut.init = 16'hcaca;
    CCU2D add_6100_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8741), 
          .S0(n2281));
    defparam add_6100_cout.INIT0 = 16'h0000;
    defparam add_6100_cout.INIT1 = 16'h0000;
    defparam add_6100_cout.INJECT1_0 = "NO";
    defparam add_6100_cout.INJECT1_1 = "NO";
    CCU2D add_6100_31 (.A0(bit_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8740), .COUT(n8741));
    defparam add_6100_31.INIT0 = 16'hf555;
    defparam add_6100_31.INIT1 = 16'h5555;
    defparam add_6100_31.INJECT1_0 = "NO";
    defparam add_6100_31.INJECT1_1 = "NO";
    CCU2D add_6100_29 (.A0(bit_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8739), .COUT(n8740));
    defparam add_6100_29.INIT0 = 16'hf555;
    defparam add_6100_29.INIT1 = 16'hf555;
    defparam add_6100_29.INJECT1_0 = "NO";
    defparam add_6100_29.INJECT1_1 = "NO";
    CCU2D add_17_3 (.A0(cur_pixel[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8577), .COUT(n8578), .S0(n118[1]), .S1(n118[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_3.INIT0 = 16'h5aaa;
    defparam add_17_3.INIT1 = 16'h5aaa;
    defparam add_17_3.INJECT1_0 = "NO";
    defparam add_17_3.INJECT1_1 = "NO";
    CCU2D add_6100_27 (.A0(bit_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8738), .COUT(n8739));
    defparam add_6100_27.INIT0 = 16'hf555;
    defparam add_6100_27.INIT1 = 16'hf555;
    defparam add_6100_27.INJECT1_0 = "NO";
    defparam add_6100_27.INJECT1_1 = "NO";
    CCU2D add_6100_25 (.A0(bit_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8737), .COUT(n8738));
    defparam add_6100_25.INIT0 = 16'hf555;
    defparam add_6100_25.INIT1 = 16'hf555;
    defparam add_6100_25.INJECT1_0 = "NO";
    defparam add_6100_25.INJECT1_1 = "NO";
    CCU2D add_6100_23 (.A0(bit_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8736), .COUT(n8737));
    defparam add_6100_23.INIT0 = 16'hf555;
    defparam add_6100_23.INIT1 = 16'hf555;
    defparam add_6100_23.INJECT1_0 = "NO";
    defparam add_6100_23.INJECT1_1 = "NO";
    FD1P3IX pixel_i21 (.D(Q2[21]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i21.GSR = "ENABLED";
    FD1P3IX pixel_i20 (.D(Q2[20]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i20.GSR = "ENABLED";
    FD1P3IX pixel_i19 (.D(Q2[19]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i19.GSR = "ENABLED";
    PFUMX i6753 (.BLUT(n9562), .ALUT(n9563), .C0(bit_counter[1]), .Z(n9566));
    CCU2D add_17_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8577), .S1(n118[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_1.INIT0 = 16'hF000;
    defparam add_17_1.INIT1 = 16'h5555;
    defparam add_17_1.INJECT1_0 = "NO";
    defparam add_17_1.INJECT1_1 = "NO";
    FD1P3IX pixel_i18 (.D(Q2[18]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i18.GSR = "ENABLED";
    FD1P3IX pixel_i17 (.D(Q2[17]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i17.GSR = "ENABLED";
    PFUMX i6754 (.BLUT(n9564), .ALUT(n9565), .C0(bit_counter[1]), .Z(n9567));
    CCU2D add_6100_21 (.A0(bit_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8735), .COUT(n8736));
    defparam add_6100_21.INIT0 = 16'hf555;
    defparam add_6100_21.INIT1 = 16'hf555;
    defparam add_6100_21.INJECT1_0 = "NO";
    defparam add_6100_21.INJECT1_1 = "NO";
    CCU2D add_6100_19 (.A0(bit_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8734), .COUT(n8735));
    defparam add_6100_19.INIT0 = 16'hf555;
    defparam add_6100_19.INIT1 = 16'hf555;
    defparam add_6100_19.INJECT1_0 = "NO";
    defparam add_6100_19.INJECT1_1 = "NO";
    CCU2D add_6100_17 (.A0(bit_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8733), .COUT(n8734));
    defparam add_6100_17.INIT0 = 16'hf555;
    defparam add_6100_17.INIT1 = 16'hf555;
    defparam add_6100_17.INJECT1_0 = "NO";
    defparam add_6100_17.INJECT1_1 = "NO";
    FD1P3IX pixel_i16 (.D(Q2[16]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i16.GSR = "ENABLED";
    FD1P3IX pixel_i15 (.D(Q2[15]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i15.GSR = "ENABLED";
    FD1P3IX pixel_i14 (.D(Q2[14]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i14.GSR = "ENABLED";
    CCU2D add_6100_15 (.A0(bit_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8732), .COUT(n8733));
    defparam add_6100_15.INIT0 = 16'hf555;
    defparam add_6100_15.INIT1 = 16'hf555;
    defparam add_6100_15.INJECT1_0 = "NO";
    defparam add_6100_15.INJECT1_1 = "NO";
    FD1P3IX pixel_i13 (.D(Q2[13]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i13.GSR = "ENABLED";
    FD1P3IX pixel_i12 (.D(Q2[12]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i12.GSR = "ENABLED";
    LUT4 i6798_2_lut_rep_207 (.A(state[2]), .B(state[1]), .Z(sclk_c_enable_358)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i6798_2_lut_rep_207.init = 16'h9999;
    CCU2D add_6100_13 (.A0(bit_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8731), .COUT(n8732));
    defparam add_6100_13.INIT0 = 16'hf555;
    defparam add_6100_13.INIT1 = 16'hf555;
    defparam add_6100_13.INJECT1_0 = "NO";
    defparam add_6100_13.INJECT1_1 = "NO";
    FD1P3IX pixel_i11 (.D(Q2[11]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i11.GSR = "ENABLED";
    FD1P3IX pixel_i10 (.D(Q2[10]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(pixel[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i10.GSR = "ENABLED";
    CCU2D add_6100_11 (.A0(bit_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8730), .COUT(n8731));
    defparam add_6100_11.INIT0 = 16'hf555;
    defparam add_6100_11.INIT1 = 16'hf555;
    defparam add_6100_11.INJECT1_0 = "NO";
    defparam add_6100_11.INJECT1_1 = "NO";
    FD1P3IX pixel_i9 (.D(Q2[9]), .SP(sclk_c_enable_327), .CD(n9916), .CK(sclk_c), 
            .Q(pixel[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i9.GSR = "ENABLED";
    FD1P3IX pixel_i8 (.D(Q2[8]), .SP(sclk_c_enable_327), .CD(n9916), .CK(sclk_c), 
            .Q(pixel[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i8.GSR = "ENABLED";
    LUT4 i12_4_lut_4_lut (.A(state[0]), .B(state[2]), .C(state[1]), .D(n2281), 
         .Z(sclk_c_enable_319)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i12_4_lut_4_lut.init = 16'hc2c0;
    FD1P3IX pixel_i7 (.D(Q2[7]), .SP(sclk_c_enable_327), .CD(n9916), .CK(sclk_c), 
            .Q(pixel[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i7.GSR = "ENABLED";
    FD1P3IX pixel_i6 (.D(Q2[6]), .SP(sclk_c_enable_327), .CD(n9916), .CK(sclk_c), 
            .Q(pixel[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i6.GSR = "ENABLED";
    FD1P3IX pixel_i5 (.D(Q2[5]), .SP(sclk_c_enable_327), .CD(n9916), .CK(sclk_c), 
            .Q(pixel[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i5.GSR = "ENABLED";
    FD1P3IX pixel_i4 (.D(Q2[4]), .SP(sclk_c_enable_327), .CD(n9916), .CK(sclk_c), 
            .Q(pixel[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i4.GSR = "ENABLED";
    FD1P3IX pixel_i3 (.D(Q2[3]), .SP(sclk_c_enable_327), .CD(n9916), .CK(sclk_c), 
            .Q(pixel[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i3.GSR = "ENABLED";
    LUT4 i24_3_lut_4_lut (.A(n13), .B(n2281), .C(n9899), .D(n447[9]), 
         .Z(n10_adj_858)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(41[12:17])
    defparam i24_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_3_lut (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[0]), 
         .Z(bit_counter_31__N_165[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_126 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[31]), 
         .Z(bit_counter_31__N_165[31])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_126.init = 16'h2020;
    CCU2D add_6100_9 (.A0(bit_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8729), .COUT(n8730));
    defparam add_6100_9.INIT0 = 16'hf555;
    defparam add_6100_9.INIT1 = 16'hf555;
    defparam add_6100_9.INJECT1_0 = "NO";
    defparam add_6100_9.INJECT1_1 = "NO";
    CCU2D add_6100_7 (.A0(bit_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8728), .COUT(n8729));
    defparam add_6100_7.INIT0 = 16'hf555;
    defparam add_6100_7.INIT1 = 16'hf555;
    defparam add_6100_7.INJECT1_0 = "NO";
    defparam add_6100_7.INJECT1_1 = "NO";
    FD1P3IX pixel_i2 (.D(Q2[2]), .SP(sclk_c_enable_327), .CD(n9916), .CK(sclk_c), 
            .Q(pixel[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_127 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[30]), 
         .Z(bit_counter_31__N_165[30])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_127.init = 16'h2020;
    CCU2D add_6100_5 (.A0(bit_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8727), .COUT(n8728));
    defparam add_6100_5.INIT0 = 16'hf555;
    defparam add_6100_5.INIT1 = 16'hf555;
    defparam add_6100_5.INJECT1_0 = "NO";
    defparam add_6100_5.INJECT1_1 = "NO";
    FD1P3IX pixel_i1 (.D(Q2[1]), .SP(sclk_c_enable_327), .CD(n9916), .CK(sclk_c), 
            .Q(pixel[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i1.GSR = "ENABLED";
    CCU2D add_6100_3 (.A0(bit_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8726), .COUT(n8727));
    defparam add_6100_3.INIT0 = 16'hf555;
    defparam add_6100_3.INIT1 = 16'hf555;
    defparam add_6100_3.INJECT1_0 = "NO";
    defparam add_6100_3.INJECT1_1 = "NO";
    FD1P3AX cur_pixel_i8 (.D(cur_pixel_8__N_100[8]), .SP(sclk_c_enable_319), 
            .CK(sclk_c), .Q(cur_pixel[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i8.GSR = "ENABLED";
    FD1P3AX cur_pixel_i7 (.D(cur_pixel_8__N_100[7]), .SP(sclk_c_enable_319), 
            .CK(sclk_c), .Q(cur_pixel[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i7.GSR = "ENABLED";
    FD1P3AX cur_pixel_i6 (.D(cur_pixel_8__N_100[6]), .SP(sclk_c_enable_319), 
            .CK(sclk_c), .Q(cur_pixel[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i6.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_128 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[29]), 
         .Z(bit_counter_31__N_165[29])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_128.init = 16'h2020;
    FD1P3AX cur_pixel_i5 (.D(cur_pixel_8__N_100[5]), .SP(sclk_c_enable_319), 
            .CK(sclk_c), .Q(cur_pixel[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i5.GSR = "ENABLED";
    FD1P3AX cur_pixel_i4 (.D(cur_pixel_8__N_100[4]), .SP(sclk_c_enable_319), 
            .CK(sclk_c), .Q(cur_pixel[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i4.GSR = "ENABLED";
    FD1P3AX cur_pixel_i3 (.D(cur_pixel_8__N_100[3]), .SP(sclk_c_enable_319), 
            .CK(sclk_c), .Q(cur_pixel[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i3.GSR = "ENABLED";
    CCU2D add_6100_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[0]), .B1(bit_counter[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n8726));
    defparam add_6100_1.INIT0 = 16'hF000;
    defparam add_6100_1.INIT1 = 16'ha666;
    defparam add_6100_1.INJECT1_0 = "NO";
    defparam add_6100_1.INJECT1_1 = "NO";
    FD1P3AX cur_pixel_i2 (.D(cur_pixel_8__N_100[2]), .SP(sclk_c_enable_319), 
            .CK(sclk_c), .Q(cur_pixel[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_129 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[28]), 
         .Z(bit_counter_31__N_165[28])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_129.init = 16'h2020;
    FD1P3AX cur_pixel_i1 (.D(cur_pixel_8__N_100[1]), .SP(sclk_c_enable_319), 
            .CK(sclk_c), .Q(cur_pixel[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i1.GSR = "ENABLED";
    LUT4 i5254_2_lut (.A(bit_counter_31__N_197[4]), .B(state[0]), .Z(n1)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i5254_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_adj_130 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[27]), 
         .Z(bit_counter_31__N_165[27])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_130.init = 16'h2020;
    FD1P3IX PixelAddress_i8 (.D(cur_pixel[8]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(RdAddress2[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_131 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[26]), 
         .Z(bit_counter_31__N_165[26])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_131.init = 16'h2020;
    FD1P3IX PixelAddress_i7 (.D(cur_pixel[7]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(RdAddress2[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i7.GSR = "ENABLED";
    LUT4 i5255_2_lut (.A(bit_counter_31__N_197[3]), .B(state[0]), .Z(n1_adj_859)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i5255_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_132 (.A(state[2]), .B(state[1]), .C(n447[0]), 
         .D(state[0]), .Z(n28)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_132.init = 16'he0f0;
    LUT4 i1_3_lut_4_lut_3_lut (.A(state[2]), .B(state[1]), .C(n2316), 
         .Z(sclk_c_enable_26)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i1_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i1_2_lut_3_lut_adj_133 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[25]), 
         .Z(bit_counter_31__N_165[25])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_133.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_134 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[24]), 
         .Z(bit_counter_31__N_165[24])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_134.init = 16'h2020;
    FD1P3IX PixelAddress_i6 (.D(cur_pixel[6]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(RdAddress2[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i6.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_135 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[23]), 
         .Z(bit_counter_31__N_165[23])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_135.init = 16'h2020;
    FD1P3IX PixelAddress_i5 (.D(cur_pixel[5]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(RdAddress2[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_136 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[22]), 
         .Z(bit_counter_31__N_165[22])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_136.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_137 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[21]), 
         .Z(bit_counter_31__N_165[21])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_137.init = 16'h2020;
    FD1P3IX PixelAddress_i4 (.D(cur_pixel[4]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(RdAddress2[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i4.GSR = "ENABLED";
    FD1P3IX PixelAddress_i3 (.D(cur_pixel[3]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(RdAddress2[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_138 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[20]), 
         .Z(bit_counter_31__N_165[20])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_138.init = 16'h2020;
    FD1P3IX PixelAddress_i2 (.D(cur_pixel[2]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(RdAddress2[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i2.GSR = "ENABLED";
    FD1P3IX PixelAddress_i1 (.D(cur_pixel[1]), .SP(sclk_c_enable_327), .CD(n9916), 
            .CK(sclk_c), .Q(RdAddress2[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i1.GSR = "ENABLED";
    FD1P3AX bit_counter_i31 (.D(bit_counter_31__N_165[31]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i31.GSR = "ENABLED";
    FD1P3AX bit_counter_i30 (.D(bit_counter_31__N_165[30]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i30.GSR = "ENABLED";
    FD1P3AX bit_counter_i29 (.D(bit_counter_31__N_165[29]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i29.GSR = "ENABLED";
    CCU2D add_6096_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8915), 
          .S0(n2316));
    defparam add_6096_cout.INIT0 = 16'h0000;
    defparam add_6096_cout.INIT1 = 16'h0000;
    defparam add_6096_cout.INJECT1_0 = "NO";
    defparam add_6096_cout.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_139 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[19]), 
         .Z(bit_counter_31__N_165[19])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_139.init = 16'h2020;
    FD1P3AX bit_counter_i28 (.D(bit_counter_31__N_165[28]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i28.GSR = "ENABLED";
    CCU2D add_602_33 (.A0(bit_counter[31]), .B0(n2281), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8693), .S0(bit_counter_31__N_197[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_33.INIT0 = 16'h5999;
    defparam add_602_33.INIT1 = 16'h0000;
    defparam add_602_33.INJECT1_0 = "NO";
    defparam add_602_33.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_140 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[18]), 
         .Z(bit_counter_31__N_165[18])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_140.init = 16'h2020;
    CCU2D add_6096_31 (.A0(delay_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8914), .COUT(n8915));
    defparam add_6096_31.INIT0 = 16'hf555;
    defparam add_6096_31.INIT1 = 16'h5555;
    defparam add_6096_31.INJECT1_0 = "NO";
    defparam add_6096_31.INJECT1_1 = "NO";
    CCU2D add_602_31 (.A0(bit_counter[29]), .B0(n2281), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[30]), .B1(n2281), .C1(GND_net), 
          .D1(GND_net), .CIN(n8692), .COUT(n8693), .S0(bit_counter_31__N_197[29]), 
          .S1(bit_counter_31__N_197[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_31.INIT0 = 16'h5999;
    defparam add_602_31.INIT1 = 16'h5999;
    defparam add_602_31.INJECT1_0 = "NO";
    defparam add_602_31.INJECT1_1 = "NO";
    LUT4 i24_3_lut_4_lut_adj_141 (.A(n13), .B(n2281), .C(n9899), .D(n447[7]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(41[12:17])
    defparam i24_3_lut_4_lut_adj_141.init = 16'h8f80;
    CCU2D add_602_29 (.A0(bit_counter[27]), .B0(n2281), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[28]), .B1(n2281), .C1(GND_net), 
          .D1(GND_net), .CIN(n8691), .COUT(n8692), .S0(bit_counter_31__N_197[27]), 
          .S1(bit_counter_31__N_197[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_29.INIT0 = 16'h5999;
    defparam add_602_29.INIT1 = 16'h5999;
    defparam add_602_29.INJECT1_0 = "NO";
    defparam add_602_29.INJECT1_1 = "NO";
    FD1P3AX bit_counter_i27 (.D(bit_counter_31__N_165[27]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i27.GSR = "ENABLED";
    FD1P3AX bit_counter_i26 (.D(bit_counter_31__N_165[26]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i26.GSR = "ENABLED";
    FD1P3AX bit_counter_i25 (.D(bit_counter_31__N_165[25]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i25.GSR = "ENABLED";
    FD1P3AX bit_counter_i24 (.D(bit_counter_31__N_165[24]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i24.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_142 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[17]), 
         .Z(bit_counter_31__N_165[17])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_142.init = 16'h2020;
    FD1P3AX bit_counter_i23 (.D(bit_counter_31__N_165[23]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i23.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_143 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[16]), 
         .Z(bit_counter_31__N_165[16])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_143.init = 16'h2020;
    FD1P3AX bit_counter_i22 (.D(bit_counter_31__N_165[22]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i22.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_144 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[15]), 
         .Z(bit_counter_31__N_165[15])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_144.init = 16'h2020;
    FD1P3AX bit_counter_i21 (.D(bit_counter_31__N_165[21]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i21.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_145 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[14]), 
         .Z(bit_counter_31__N_165[14])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_145.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_146 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[13]), 
         .Z(bit_counter_31__N_165[13])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_146.init = 16'h2020;
    FD1P3AX bit_counter_i20 (.D(bit_counter_31__N_165[20]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i20.GSR = "ENABLED";
    FD1P3AX bit_counter_i19 (.D(bit_counter_31__N_165[19]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i19.GSR = "ENABLED";
    FD1P3AX bit_counter_i18 (.D(bit_counter_31__N_165[18]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i18.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_147 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[12]), 
         .Z(bit_counter_31__N_165[12])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_147.init = 16'h2020;
    FD1P3AX bit_counter_i17 (.D(bit_counter_31__N_165[17]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i17.GSR = "ENABLED";
    FD1P3AX bit_counter_i16 (.D(bit_counter_31__N_165[16]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i16.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_148 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[11]), 
         .Z(bit_counter_31__N_165[11])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_148.init = 16'h2020;
    FD1P3AX bit_counter_i15 (.D(bit_counter_31__N_165[15]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_149 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[10]), 
         .Z(bit_counter_31__N_165[10])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_149.init = 16'h2020;
    FD1P3AX bit_counter_i14 (.D(bit_counter_31__N_165[14]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i14.GSR = "ENABLED";
    CCU2D add_602_27 (.A0(bit_counter[25]), .B0(n2281), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[26]), .B1(n2281), .C1(GND_net), 
          .D1(GND_net), .CIN(n8690), .COUT(n8691), .S0(bit_counter_31__N_197[25]), 
          .S1(bit_counter_31__N_197[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_27.INIT0 = 16'h5999;
    defparam add_602_27.INIT1 = 16'h5999;
    defparam add_602_27.INJECT1_0 = "NO";
    defparam add_602_27.INJECT1_1 = "NO";
    CCU2D add_602_25 (.A0(bit_counter[23]), .B0(n2281), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[24]), .B1(n2281), .C1(GND_net), 
          .D1(GND_net), .CIN(n8689), .COUT(n8690), .S0(bit_counter_31__N_197[23]), 
          .S1(bit_counter_31__N_197[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_25.INIT0 = 16'h5999;
    defparam add_602_25.INIT1 = 16'h5999;
    defparam add_602_25.INJECT1_0 = "NO";
    defparam add_602_25.INJECT1_1 = "NO";
    FD1P3AX bit_counter_i13 (.D(bit_counter_31__N_165[13]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i13.GSR = "ENABLED";
    LUT4 i6827_3_lut_4_lut_rep_216 (.A(state[2]), .B(state[1]), .C(state[0]), 
         .D(n2316), .Z(sclk_c_enable_200)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i6827_3_lut_4_lut_rep_216.init = 16'hfeff;
    FD1P3AX bit_counter_i12 (.D(bit_counter_31__N_165[12]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i12.GSR = "ENABLED";
    FD1P3AX bit_counter_i11 (.D(bit_counter_31__N_165[11]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i11.GSR = "ENABLED";
    FD1P3AX bit_counter_i10 (.D(bit_counter_31__N_165[10]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i10.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_150 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[9]), 
         .Z(bit_counter_31__N_165[9])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_150.init = 16'h2020;
    FD1P3AX bit_counter_i9 (.D(bit_counter_31__N_165[9]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i9.GSR = "ENABLED";
    FD1P3AX bit_counter_i8 (.D(bit_counter_31__N_165[8]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i8.GSR = "ENABLED";
    CCU2D add_602_23 (.A0(bit_counter[21]), .B0(n2281), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[22]), .B1(n2281), .C1(GND_net), 
          .D1(GND_net), .CIN(n8688), .COUT(n8689), .S0(bit_counter_31__N_197[21]), 
          .S1(bit_counter_31__N_197[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_23.INIT0 = 16'h5999;
    defparam add_602_23.INIT1 = 16'h5999;
    defparam add_602_23.INJECT1_0 = "NO";
    defparam add_602_23.INJECT1_1 = "NO";
    CCU2D add_6096_29 (.A0(delay_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8913), .COUT(n8914));
    defparam add_6096_29.INIT0 = 16'hf555;
    defparam add_6096_29.INIT1 = 16'hf555;
    defparam add_6096_29.INJECT1_0 = "NO";
    defparam add_6096_29.INJECT1_1 = "NO";
    CCU2D add_6096_27 (.A0(delay_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8912), .COUT(n8913));
    defparam add_6096_27.INIT0 = 16'hf555;
    defparam add_6096_27.INIT1 = 16'hf555;
    defparam add_6096_27.INJECT1_0 = "NO";
    defparam add_6096_27.INJECT1_1 = "NO";
    CCU2D add_602_21 (.A0(bit_counter[19]), .B0(n2281), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[20]), .B1(n2281), .C1(GND_net), 
          .D1(GND_net), .CIN(n8687), .COUT(n8688), .S0(bit_counter_31__N_197[19]), 
          .S1(bit_counter_31__N_197[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_21.INIT0 = 16'h5999;
    defparam add_602_21.INIT1 = 16'h5999;
    defparam add_602_21.INJECT1_0 = "NO";
    defparam add_602_21.INJECT1_1 = "NO";
    CCU2D add_602_19 (.A0(bit_counter[17]), .B0(n2281), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[18]), .B1(n2281), .C1(GND_net), 
          .D1(GND_net), .CIN(n8686), .COUT(n8687), .S0(bit_counter_31__N_197[17]), 
          .S1(bit_counter_31__N_197[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_19.INIT0 = 16'h5999;
    defparam add_602_19.INIT1 = 16'h5999;
    defparam add_602_19.INJECT1_0 = "NO";
    defparam add_602_19.INJECT1_1 = "NO";
    CCU2D add_6096_25 (.A0(delay_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8911), .COUT(n8912));
    defparam add_6096_25.INIT0 = 16'hf555;
    defparam add_6096_25.INIT1 = 16'hf555;
    defparam add_6096_25.INJECT1_0 = "NO";
    defparam add_6096_25.INJECT1_1 = "NO";
    CCU2D add_602_17 (.A0(bit_counter[15]), .B0(n2281), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[16]), .B1(n2281), .C1(GND_net), 
          .D1(GND_net), .CIN(n8685), .COUT(n8686), .S0(bit_counter_31__N_197[15]), 
          .S1(bit_counter_31__N_197[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_17.INIT0 = 16'h5999;
    defparam add_602_17.INIT1 = 16'h5999;
    defparam add_602_17.INJECT1_0 = "NO";
    defparam add_602_17.INJECT1_1 = "NO";
    CCU2D add_602_15 (.A0(bit_counter[13]), .B0(n2281), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[14]), .B1(n2281), .C1(GND_net), 
          .D1(GND_net), .CIN(n8684), .COUT(n8685), .S0(bit_counter_31__N_197[13]), 
          .S1(bit_counter_31__N_197[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_15.INIT0 = 16'h5999;
    defparam add_602_15.INIT1 = 16'h5999;
    defparam add_602_15.INJECT1_0 = "NO";
    defparam add_602_15.INJECT1_1 = "NO";
    CCU2D add_6096_23 (.A0(delay_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8910), .COUT(n8911));
    defparam add_6096_23.INIT0 = 16'hf555;
    defparam add_6096_23.INIT1 = 16'hf555;
    defparam add_6096_23.INJECT1_0 = "NO";
    defparam add_6096_23.INJECT1_1 = "NO";
    CCU2D add_602_13 (.A0(bit_counter[11]), .B0(n2281), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[12]), .B1(n2281), .C1(GND_net), 
          .D1(GND_net), .CIN(n8683), .COUT(n8684), .S0(bit_counter_31__N_197[11]), 
          .S1(bit_counter_31__N_197[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_13.INIT0 = 16'h5999;
    defparam add_602_13.INIT1 = 16'h5999;
    defparam add_602_13.INJECT1_0 = "NO";
    defparam add_602_13.INJECT1_1 = "NO";
    CCU2D add_602_11 (.A0(bit_counter[9]), .B0(n2281), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[10]), .B1(n2281), .C1(GND_net), .D1(GND_net), 
          .CIN(n8682), .COUT(n8683), .S0(bit_counter_31__N_197[9]), .S1(bit_counter_31__N_197[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_11.INIT0 = 16'h5999;
    defparam add_602_11.INIT1 = 16'h5999;
    defparam add_602_11.INJECT1_0 = "NO";
    defparam add_602_11.INJECT1_1 = "NO";
    CCU2D add_602_9 (.A0(bit_counter[7]), .B0(n2281), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[8]), .B1(n2281), .C1(GND_net), .D1(GND_net), 
          .CIN(n8681), .COUT(n8682), .S0(bit_counter_31__N_197[7]), .S1(bit_counter_31__N_197[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_9.INIT0 = 16'h5999;
    defparam add_602_9.INIT1 = 16'h5999;
    defparam add_602_9.INJECT1_0 = "NO";
    defparam add_602_9.INJECT1_1 = "NO";
    CCU2D add_6096_21 (.A0(delay_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8909), .COUT(n8910));
    defparam add_6096_21.INIT0 = 16'hf555;
    defparam add_6096_21.INIT1 = 16'hf555;
    defparam add_6096_21.INJECT1_0 = "NO";
    defparam add_6096_21.INJECT1_1 = "NO";
    CCU2D add_602_7 (.A0(bit_counter[5]), .B0(n2281), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[6]), .B1(n2281), .C1(GND_net), .D1(GND_net), 
          .CIN(n8680), .COUT(n8681), .S0(bit_counter_31__N_197[5]), .S1(bit_counter_31__N_197[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_7.INIT0 = 16'h5999;
    defparam add_602_7.INIT1 = 16'h5999;
    defparam add_602_7.INJECT1_0 = "NO";
    defparam add_602_7.INJECT1_1 = "NO";
    CCU2D add_602_5 (.A0(bit_counter[3]), .B0(n2281), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[4]), .B1(n2281), .C1(GND_net), .D1(GND_net), 
          .CIN(n8679), .COUT(n8680), .S0(bit_counter_31__N_197[3]), .S1(bit_counter_31__N_197[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_5.INIT0 = 16'h5999;
    defparam add_602_5.INIT1 = 16'h5999;
    defparam add_602_5.INJECT1_0 = "NO";
    defparam add_602_5.INJECT1_1 = "NO";
    CCU2D add_6096_19 (.A0(delay_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8908), .COUT(n8909));
    defparam add_6096_19.INIT0 = 16'hf555;
    defparam add_6096_19.INIT1 = 16'hf555;
    defparam add_6096_19.INJECT1_0 = "NO";
    defparam add_6096_19.INJECT1_1 = "NO";
    CCU2D add_602_3 (.A0(bit_counter[1]), .B0(n2281), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[2]), .B1(n2281), .C1(GND_net), .D1(GND_net), 
          .CIN(n8678), .COUT(n8679), .S0(bit_counter_31__N_197[1]), .S1(bit_counter_31__N_197[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_3.INIT0 = 16'h5999;
    defparam add_602_3.INIT1 = 16'h5999;
    defparam add_602_3.INJECT1_0 = "NO";
    defparam add_602_3.INJECT1_1 = "NO";
    CCU2D add_602_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[0]), .B1(n2281), .C1(GND_net), .D1(GND_net), 
          .COUT(n8678), .S1(bit_counter_31__N_197[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_602_1.INIT0 = 16'hF000;
    defparam add_602_1.INIT1 = 16'h5999;
    defparam add_602_1.INJECT1_0 = "NO";
    defparam add_602_1.INJECT1_1 = "NO";
    FD1P3AX bit_counter_i7 (.D(bit_counter_31__N_165[7]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i7.GSR = "ENABLED";
    FD1P3AX bit_counter_i6 (.D(bit_counter_31__N_165[6]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i6.GSR = "ENABLED";
    CCU2D add_6096_17 (.A0(delay_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8907), .COUT(n8908));
    defparam add_6096_17.INIT0 = 16'hf555;
    defparam add_6096_17.INIT1 = 16'hf555;
    defparam add_6096_17.INJECT1_0 = "NO";
    defparam add_6096_17.INJECT1_1 = "NO";
    FD1P3AX bit_counter_i5 (.D(bit_counter_31__N_165[5]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_151 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[8]), 
         .Z(bit_counter_31__N_165[8])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_151.init = 16'h2020;
    FD1P3IX bit_counter_i4 (.D(n1), .SP(sclk_c_enable_358), .CD(n9916), 
            .CK(sclk_c), .Q(bit_counter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i4.GSR = "ENABLED";
    FD1P3IX bit_counter_i3 (.D(n1_adj_859), .SP(sclk_c_enable_358), .CD(n9916), 
            .CK(sclk_c), .Q(bit_counter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_152 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[7]), 
         .Z(bit_counter_31__N_165[7])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_152.init = 16'h2020;
    FD1P3AX bit_counter_i2 (.D(bit_counter_31__N_165[2]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i2.GSR = "ENABLED";
    FD1P3AX bit_counter_i1 (.D(bit_counter_31__N_165[1]), .SP(sclk_c_enable_358), 
            .CK(sclk_c), .Q(bit_counter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=148, LSE_RLINE=148 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_153 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[6]), 
         .Z(bit_counter_31__N_165[6])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_153.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_154 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[5]), 
         .Z(bit_counter_31__N_165[5])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_154.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_155 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[2]), 
         .Z(bit_counter_31__N_165[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_155.init = 16'h2020;
    CCU2D add_6096_15 (.A0(delay_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8906), .COUT(n8907));
    defparam add_6096_15.INIT0 = 16'hf555;
    defparam add_6096_15.INIT1 = 16'hf555;
    defparam add_6096_15.INJECT1_0 = "NO";
    defparam add_6096_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_156 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[1]), 
         .Z(bit_counter_31__N_165[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_156.init = 16'h2020;
    CCU2D add_6096_13 (.A0(delay_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8905), .COUT(n8906));
    defparam add_6096_13.INIT0 = 16'hf555;
    defparam add_6096_13.INIT1 = 16'hf555;
    defparam add_6096_13.INJECT1_0 = "NO";
    defparam add_6096_13.INJECT1_1 = "NO";
    CCU2D add_6096_11 (.A0(delay_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8904), .COUT(n8905));
    defparam add_6096_11.INIT0 = 16'hf555;
    defparam add_6096_11.INIT1 = 16'hf555;
    defparam add_6096_11.INJECT1_0 = "NO";
    defparam add_6096_11.INJECT1_1 = "NO";
    PFUMX i6949 (.BLUT(n10002), .ALUT(n10003), .C0(state[0]), .Z(n10004));
    CCU2D add_6096_9 (.A0(delay_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8903), .COUT(n8904));
    defparam add_6096_9.INIT0 = 16'hf555;
    defparam add_6096_9.INIT1 = 16'hf555;
    defparam add_6096_9.INJECT1_0 = "NO";
    defparam add_6096_9.INJECT1_1 = "NO";
    LUT4 i436_3_lut_rep_177_4_lut (.A(state[1]), .B(n2316), .C(state[2]), 
         .D(n1250), .Z(n9879)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i436_3_lut_rep_177_4_lut.init = 16'hf808;
    LUT4 i537_2_lut_rep_179_3_lut (.A(state[1]), .B(n2316), .C(state[2]), 
         .Z(n9881)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i537_2_lut_rep_179_3_lut.init = 16'h0808;
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(state[2]), .B(state[1]), .C(n9891), 
         .D(state[0]), .Z(n10000)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'h4544;
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(state[2]), .B(state[1]), .C(n9891), 
         .D(state[0]), .Z(n9999)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'h0100;
    CCU2D add_6096_7 (.A0(delay_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8902), .COUT(n8903));
    defparam add_6096_7.INIT0 = 16'hf555;
    defparam add_6096_7.INIT1 = 16'hf555;
    defparam add_6096_7.INJECT1_0 = "NO";
    defparam add_6096_7.INJECT1_1 = "NO";
    LUT4 n9805_bdd_2_lut_3_lut_4_lut_then_4_lut (.A(state[1]), .B(n2316), 
         .C(state[0]), .D(button0_c), .Z(n9928)) /* synthesis lut_function=(A+(B ((D)+!C))) */ ;
    defparam n9805_bdd_2_lut_3_lut_4_lut_then_4_lut.init = 16'heeae;
    CCU2D add_6096_5 (.A0(delay_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8901), .COUT(n8902));
    defparam add_6096_5.INIT0 = 16'hf555;
    defparam add_6096_5.INIT1 = 16'hf555;
    defparam add_6096_5.INJECT1_0 = "NO";
    defparam add_6096_5.INJECT1_1 = "NO";
    CCU2D add_50_33 (.A0(delay_counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8597), .S0(n447[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_33.INIT0 = 16'h5555;
    defparam add_50_33.INIT1 = 16'h0000;
    defparam add_50_33.INJECT1_0 = "NO";
    defparam add_50_33.INJECT1_1 = "NO";
    LUT4 mux_516_i13_3_lut_4_lut (.A(n13), .B(n2281), .C(n9899), .D(n447[12]), 
         .Z(n1545[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(41[12:17])
    defparam mux_516_i13_3_lut_4_lut.init = 16'h8f80;
    CCU2D add_50_31 (.A0(delay_counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8596), .COUT(n8597), .S0(n447[29]), .S1(n447[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_31.INIT0 = 16'h5555;
    defparam add_50_31.INIT1 = 16'h5555;
    defparam add_50_31.INJECT1_0 = "NO";
    defparam add_50_31.INJECT1_1 = "NO";
    CCU2D add_6096_3 (.A0(delay_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8900), .COUT(n8901));
    defparam add_6096_3.INIT0 = 16'hf555;
    defparam add_6096_3.INIT1 = 16'hf555;
    defparam add_6096_3.INJECT1_0 = "NO";
    defparam add_6096_3.INJECT1_1 = "NO";
    CCU2D add_6096_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_counter[0]), .B1(delay_counter[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n8900));
    defparam add_6096_1.INIT0 = 16'hF000;
    defparam add_6096_1.INIT1 = 16'ha666;
    defparam add_6096_1.INJECT1_0 = "NO";
    defparam add_6096_1.INJECT1_1 = "NO";
    LUT4 i5363_2_lut_rep_214 (.A(state[2]), .B(state[1]), .Z(n9916)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i5363_2_lut_rep_214.init = 16'h8888;
    LUT4 i5246_2_lut_3_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n2640[0])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i5246_2_lut_3_lut.init = 16'h7070;
    L6MUX21 i6734 (.D0(n9545), .D1(n9546), .SD(bit_counter[3]), .Z(n9547));
    LUT4 i5646_2_lut_3_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n7721)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i5646_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_rep_189 (.A(n13), .B(n2281), .Z(n9891)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(41[12:17])
    defparam i1_2_lut_rep_189.init = 16'h8888;
    CCU2D add_50_29 (.A0(delay_counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8595), .COUT(n8596), .S0(n447[27]), .S1(n447[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_29.INIT0 = 16'h5555;
    defparam add_50_29.INIT1 = 16'h5555;
    defparam add_50_29.INJECT1_0 = "NO";
    defparam add_50_29.INJECT1_1 = "NO";
    CCU2D add_50_27 (.A0(delay_counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8594), .COUT(n8595), .S0(n447[25]), .S1(n447[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_27.INIT0 = 16'h5555;
    defparam add_50_27.INIT1 = 16'h5555;
    defparam add_50_27.INJECT1_0 = "NO";
    defparam add_50_27.INJECT1_1 = "NO";
    CCU2D add_50_25 (.A0(delay_counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8593), .COUT(n8594), .S0(n447[23]), .S1(n447[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_25.INIT0 = 16'h5555;
    defparam add_50_25.INIT1 = 16'h5555;
    defparam add_50_25.INJECT1_0 = "NO";
    defparam add_50_25.INJECT1_1 = "NO";
    CCU2D add_50_23 (.A0(delay_counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8592), .COUT(n8593), .S0(n447[21]), .S1(n447[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_23.INIT0 = 16'h5555;
    defparam add_50_23.INIT1 = 16'h5555;
    defparam add_50_23.INJECT1_0 = "NO";
    defparam add_50_23.INJECT1_1 = "NO";
    CCU2D add_50_21 (.A0(delay_counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8591), .COUT(n8592), .S0(n447[19]), .S1(n447[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_21.INIT0 = 16'h5555;
    defparam add_50_21.INIT1 = 16'h5555;
    defparam add_50_21.INJECT1_0 = "NO";
    defparam add_50_21.INJECT1_1 = "NO";
    PFUMX i6912 (.BLUT(n9945), .ALUT(n9946), .C0(state[1]), .Z(n9947));
    L6MUX21 i6732 (.D0(n9541), .D1(n9542), .SD(bit_counter[2]), .Z(n9545));
    PFUMX i6910 (.BLUT(n9942), .ALUT(n9943), .C0(state[1]), .Z(state_2__N_97[2]));
    L6MUX21 i6733 (.D0(n9543), .D1(n9544), .SD(bit_counter[2]), .Z(n9546));
    PFUMX i6947 (.BLUT(n9999), .ALUT(n10000), .C0(n2316), .Z(n9476));
    CCU2D add_50_19 (.A0(delay_counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8590), .COUT(n8591), .S0(n447[17]), .S1(n447[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_19.INIT0 = 16'h5555;
    defparam add_50_19.INIT1 = 16'h5555;
    defparam add_50_19.INJECT1_0 = "NO";
    defparam add_50_19.INJECT1_1 = "NO";
    CCU2D add_50_17 (.A0(delay_counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8589), .COUT(n8590), .S0(n447[15]), .S1(n447[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_17.INIT0 = 16'h5555;
    defparam add_50_17.INIT1 = 16'h5555;
    defparam add_50_17.INJECT1_0 = "NO";
    defparam add_50_17.INJECT1_1 = "NO";
    LUT4 i21_then_3_lut (.A(state[0]), .B(state[2]), .C(n2316), .Z(n9943)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i21_then_3_lut.init = 16'h2020;
    LUT4 i21_else_3_lut (.A(state[0]), .B(state[2]), .C(n2281), .D(n13), 
         .Z(n9942)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i21_else_3_lut.init = 16'h2000;
    LUT4 i24_3_lut_4_lut_adj_157 (.A(n13), .B(n2281), .C(n9899), .D(n447[8]), 
         .Z(n10_adj_857)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(41[12:17])
    defparam i24_3_lut_4_lut_adj_157.init = 16'h8f80;
    L6MUX21 i6755 (.D0(n9566), .D1(n9567), .SD(bit_counter[2]), .Z(n9568));
    LUT4 mux_522_i3_3_lut_4_lut_then_4_lut (.A(state[2]), .B(state[0]), 
         .C(n447[2]), .D(n2316), .Z(n9946)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C+(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam mux_522_i3_3_lut_4_lut_then_4_lut.init = 16'hb1f0;
    CCU2D add_50_15 (.A0(delay_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8588), .COUT(n8589), .S0(n447[13]), .S1(n447[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_15.INIT0 = 16'h5555;
    defparam add_50_15.INIT1 = 16'h5555;
    defparam add_50_15.INJECT1_0 = "NO";
    defparam add_50_15.INJECT1_1 = "NO";
    CCU2D add_50_13 (.A0(delay_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8587), .COUT(n8588), .S0(n447[11]), .S1(n447[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_13.INIT0 = 16'h5555;
    defparam add_50_13.INIT1 = 16'h5555;
    defparam add_50_13.INJECT1_0 = "NO";
    defparam add_50_13.INJECT1_1 = "NO";
    LUT4 mux_522_i3_3_lut_4_lut_else_4_lut (.A(state[2]), .B(state[0]), 
         .C(n447[2]), .D(n2281), .Z(n9945)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B !(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam mux_522_i3_3_lut_4_lut_else_4_lut.init = 16'hb0f4;
    LUT4 i544_3_lut_rep_190 (.A(state[2]), .B(state[1]), .C(n2316), .Z(n9892)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i544_3_lut_rep_190.init = 16'ha8a8;
    CCU2D add_50_11 (.A0(delay_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8586), .COUT(n8587), .S0(n447[9]), .S1(n447[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_11.INIT0 = 16'h5555;
    defparam add_50_11.INIT1 = 16'h5555;
    defparam add_50_11.INJECT1_0 = "NO";
    defparam add_50_11.INJECT1_1 = "NO";
    CCU2D add_50_9 (.A0(delay_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8585), .COUT(n8586), .S0(n447[7]), .S1(n447[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_9.INIT0 = 16'h5555;
    defparam add_50_9.INIT1 = 16'h5555;
    defparam add_50_9.INJECT1_0 = "NO";
    defparam add_50_9.INJECT1_1 = "NO";
    CCU2D add_50_7 (.A0(delay_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8584), .COUT(n8585), .S0(n447[5]), .S1(n447[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_7.INIT0 = 16'h5555;
    defparam add_50_7.INIT1 = 16'h5555;
    defparam add_50_7.INJECT1_0 = "NO";
    defparam add_50_7.INJECT1_1 = "NO";
    CCU2D add_50_5 (.A0(delay_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8583), .COUT(n8584), .S0(n447[3]), .S1(n447[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_5.INIT0 = 16'h5555;
    defparam add_50_5.INIT1 = 16'h5555;
    defparam add_50_5.INJECT1_0 = "NO";
    defparam add_50_5.INJECT1_1 = "NO";
    CCU2D add_50_3 (.A0(delay_counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8582), .COUT(n8583), .S0(n447[1]), .S1(n447[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_3.INIT0 = 16'h5555;
    defparam add_50_3.INIT1 = 16'h5555;
    defparam add_50_3.INJECT1_0 = "NO";
    defparam add_50_3.INJECT1_1 = "NO";
    CCU2D add_50_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_counter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8582), .S1(n447[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_1.INIT0 = 16'hF000;
    defparam add_50_1.INIT1 = 16'h5555;
    defparam add_50_1.INJECT1_0 = "NO";
    defparam add_50_1.INJECT1_1 = "NO";
    LUT4 mux_522_i5_4_lut_4_lut_then_4_lut (.A(state[1]), .B(state[2]), 
         .C(n447[4]), .D(n2316), .Z(n10003)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam mux_522_i5_4_lut_4_lut_then_4_lut.init = 16'he2e0;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \load_mem(48000000) 
//

module \load_mem(48000000)  (DATA_OUT, RX_RDY, GND_net, Data, sclk_c, 
            WrAddress, led0_c, \WE[0] , CSn, \WE[2] , \WE[1] );
    input [7:0]DATA_OUT;
    input RX_RDY;
    input GND_net;
    output [23:0]Data;
    input sclk_c;
    output [8:0]WrAddress;
    output led0_c;
    output \WE[0] ;
    output CSn;
    output \WE[2] ;
    output \WE[1] ;
    
    wire sclk_c /* synthesis is_clock=1, SET_AS_NETWORK=sclk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    wire [23:0]n30;
    
    wire n2351;
    wire [23:0]WrData_23__N_668;
    wire [31:0]n726;
    wire [31:0]n1131;
    wire [31:0]spi_byte_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(32[12:28])
    
    wire n9912, n9310, sclk_c_enable_244;
    wire [31:0]index;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(34[12:17])
    
    wire n8867, n2491, n9900, n8866, n8865, n8864, n9902, n9883;
    wire [31:0]spi_byte_counter_31__N_737;
    wire [1:0]state;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(30[12:17])
    
    wire sclk_c_enable_290, n8863, sclk_c_enable_236, sclk_c_enable_191, 
        n8862, n8861, n8860, n8859;
    wire [31:0]fb;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(29[12:14])
    
    wire n9904, n2561, n10007, n4110, n8858, sclk_c_enable_222, 
        sclk_c_enable_193, n9060, n9903, n2386, sclk_c_enable_227, 
        n9910, n8857, n8856, n8855, n8854, sclk_c_enable_259;
    wire [8:0]WrAddr_8__N_692;
    wire [31:0]spi_byte_timeout;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(33[12:28])
    
    wire sclk_c_enable_65;
    wire [31:0]n1329;
    
    wire sclk_c_enable_39;
    wire [31:0]spi_byte_timeout_31__N_572;
    
    wire sclk_c_enable_211, n9919, n8853, n9911, n8852, n8617;
    wire [31:0]n765;
    
    wire n8618, n8616, sclk_c_enable_252;
    wire [31:0]delay_counter_31__N_636;
    wire [31:0]delay_counter_31__N_508;
    
    wire n6502, n4112, n2456, n8851, n8850;
    wire [31:0]delay_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(31[12:25])
    
    wire n8849, n8848, n8847, n8846, n8845, n6300;
    wire [31:0]index_31__N_810;
    
    wire n8844, n8843, n8842, sclk_c_enable_474, n8841, n8840, n8839, 
        n8838, n8837, n8836, sclk_c_enable_477, n2421, n9896, n8819, 
        n8818, n8817, n8816, n8815, n8814, n1, sclk_c_enable_204, 
        debug_N_852, n8813, n8812, n8811, n8810, n8809, n8808, 
        n8807, n8806, n8805, n8804, n8803, n2526, n8802, n8801, 
        n8800, n8799, n8798, n8797, n8796, n8795, n8794, n9884, 
        n9090, n8615, n9392, n7, sclk_c_enable_225, n9913, SPI_CS_N_843, 
        n8614, n8793, n8792, n8791, n8790, n8789, n8788, n8613, 
        sclk_c_enable_212, n8771, n8770, n8769, n8768, n8767, n8766, 
        n8765, n8764, n8763, n8762, n8761, n8760, n8759, n8758, 
        n8757, n8756, n8755, n8754, n8753, n8752, n8751, n8750, 
        n8749, n8612, n8748, n8747, n8746, n8745, n8744, n8743, 
        n8742, n8611, n8610, n8609, n8608, n8607, n6488, n77, 
        n3381, n8606, n8605, n8604, n8603, n8602, n8601, n8677, 
        n8676, n8675, n8674, n8673, n8672, n8671, n8670, n8669, 
        n8668, n8667, n8666, n8665, n8664, n8663, n8662, n8661, 
        n8660, n8659, n8658, n8600, n8657, n8656, n8655, n8599, 
        n8598, n8654, n8653, n1_adj_856, n8652, n8651, n8650, 
        n8649, n8648, n8647, n8646, n8645, n8644, n8643, n8642, 
        n8641, n8640, n8639, n8638, n8637, n8636, n8635, n8634, 
        n8633, n8632, n8631, n8630, n8629, n8628, n8627, n8626, 
        n8625, n8624, n8623, n8622, n8621, n8620, n8619;
    
    LUT4 mux_121_i8_3_lut (.A(n30[7]), .B(DATA_OUT[7]), .C(n2351), .Z(WrData_23__N_668[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_121_i8_3_lut.init = 16'hcaca;
    LUT4 i5392_2_lut (.A(n726[25]), .B(RX_RDY), .Z(n1131[25])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5392_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(spi_byte_counter[0]), .B(n9912), .C(n2351), .D(n9310), 
         .Z(sclk_c_enable_244)) /* synthesis lut_function=(A (B ((D)+!C))+!A !((C)+!B)) */ ;
    defparam i1_4_lut.init = 16'h8c0c;
    LUT4 index_3__bdd_4_lut (.A(index[3]), .B(index[1]), .C(index[2]), 
         .D(index[0]), .Z(n30[15])) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam index_3__bdd_4_lut.init = 16'h0140;
    LUT4 i5391_2_lut (.A(n726[24]), .B(RX_RDY), .Z(n1131[24])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5391_2_lut.init = 16'h8888;
    CCU2D add_6097_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8867), 
          .S0(n2491));
    defparam add_6097_cout.INIT0 = 16'h0000;
    defparam add_6097_cout.INIT1 = 16'h0000;
    defparam add_6097_cout.INJECT1_0 = "NO";
    defparam add_6097_cout.INJECT1_1 = "NO";
    LUT4 mux_121_i19_3_lut_4_lut (.A(index[0]), .B(n9900), .C(n2351), 
         .D(DATA_OUT[2]), .Z(WrData_23__N_668[18])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam mux_121_i19_3_lut_4_lut.init = 16'hf101;
    LUT4 mux_121_i23_3_lut_4_lut (.A(index[0]), .B(n9900), .C(n2351), 
         .D(DATA_OUT[6]), .Z(WrData_23__N_668[22])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam mux_121_i23_3_lut_4_lut.init = 16'hf101;
    LUT4 mux_121_i11_3_lut_4_lut (.A(index[0]), .B(n9900), .C(n2351), 
         .D(DATA_OUT[2]), .Z(WrData_23__N_668[10])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam mux_121_i11_3_lut_4_lut.init = 16'hf202;
    CCU2D add_6097_31 (.A0(spi_byte_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8866), .COUT(n8867));
    defparam add_6097_31.INIT0 = 16'hf555;
    defparam add_6097_31.INIT1 = 16'h5555;
    defparam add_6097_31.INJECT1_0 = "NO";
    defparam add_6097_31.INJECT1_1 = "NO";
    CCU2D add_6097_29 (.A0(spi_byte_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8865), .COUT(n8866));
    defparam add_6097_29.INIT0 = 16'hf555;
    defparam add_6097_29.INIT1 = 16'hf555;
    defparam add_6097_29.INJECT1_0 = "NO";
    defparam add_6097_29.INJECT1_1 = "NO";
    LUT4 mux_121_i15_3_lut_4_lut (.A(index[0]), .B(n9900), .C(n2351), 
         .D(DATA_OUT[6]), .Z(WrData_23__N_668[14])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam mux_121_i15_3_lut_4_lut.init = 16'hf202;
    CCU2D add_6097_27 (.A0(spi_byte_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8864), .COUT(n8865));
    defparam add_6097_27.INIT0 = 16'hf555;
    defparam add_6097_27.INIT1 = 16'hf555;
    defparam add_6097_27.INJECT1_0 = "NO";
    defparam add_6097_27.INJECT1_1 = "NO";
    LUT4 mux_121_i3_3_lut_4_lut (.A(index[0]), .B(n9902), .C(n2351), .D(DATA_OUT[2]), 
         .Z(WrData_23__N_668[2])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam mux_121_i3_3_lut_4_lut.init = 16'hf404;
    LUT4 mux_143_rep_1_i17_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[16]), 
         .D(n1131[16]), .Z(spi_byte_counter_31__N_737[16])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i17_3_lut_4_lut.init = 16'hf870;
    LUT4 i5390_2_lut (.A(n726[23]), .B(RX_RDY), .Z(n1131[23])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5390_2_lut.init = 16'h8888;
    LUT4 i5389_2_lut (.A(n726[22]), .B(RX_RDY), .Z(n1131[22])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5389_2_lut.init = 16'h8888;
    LUT4 i6823_2_lut_3_lut (.A(n9883), .B(n2351), .C(state[0]), .Z(sclk_c_enable_290)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i6823_2_lut_3_lut.init = 16'h0808;
    CCU2D add_6097_25 (.A0(spi_byte_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8863), .COUT(n8864));
    defparam add_6097_25.INIT0 = 16'hf555;
    defparam add_6097_25.INIT1 = 16'hf555;
    defparam add_6097_25.INJECT1_0 = "NO";
    defparam add_6097_25.INJECT1_1 = "NO";
    LUT4 mux_143_rep_1_i18_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[17]), 
         .D(n1131[17]), .Z(spi_byte_counter_31__N_737[17])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i18_3_lut_4_lut.init = 16'hf870;
    FD1P3IX WrData_i0 (.D(WrData_23__N_668[0]), .SP(sclk_c_enable_236), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(Data[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i0.GSR = "ENABLED";
    CCU2D add_6097_23 (.A0(spi_byte_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8862), .COUT(n8863));
    defparam add_6097_23.INIT0 = 16'hf555;
    defparam add_6097_23.INIT1 = 16'hf555;
    defparam add_6097_23.INJECT1_0 = "NO";
    defparam add_6097_23.INJECT1_1 = "NO";
    CCU2D add_6097_21 (.A0(spi_byte_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8861), .COUT(n8862));
    defparam add_6097_21.INIT0 = 16'hf555;
    defparam add_6097_21.INIT1 = 16'hf555;
    defparam add_6097_21.INJECT1_0 = "NO";
    defparam add_6097_21.INJECT1_1 = "NO";
    CCU2D add_6097_19 (.A0(spi_byte_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8860), .COUT(n8861));
    defparam add_6097_19.INIT0 = 16'hf555;
    defparam add_6097_19.INIT1 = 16'hf555;
    defparam add_6097_19.INJECT1_0 = "NO";
    defparam add_6097_19.INJECT1_1 = "NO";
    LUT4 mux_121_i7_3_lut_4_lut (.A(index[0]), .B(n9902), .C(n2351), .D(DATA_OUT[6]), 
         .Z(WrData_23__N_668[6])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam mux_121_i7_3_lut_4_lut.init = 16'hf404;
    CCU2D add_6097_17 (.A0(spi_byte_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8859), .COUT(n8860));
    defparam add_6097_17.INIT0 = 16'hf555;
    defparam add_6097_17.INIT1 = 16'hf555;
    defparam add_6097_17.INJECT1_0 = "NO";
    defparam add_6097_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(fb[0]), .B(n9904), .C(n2561), .D(n10007), 
         .Z(n4110)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0002;
    CCU2D add_6097_15 (.A0(spi_byte_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8858), .COUT(n8859));
    defparam add_6097_15.INIT0 = 16'hf555;
    defparam add_6097_15.INIT1 = 16'hf555;
    defparam add_6097_15.INJECT1_0 = "NO";
    defparam add_6097_15.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(fb[0]), .B(n9904), .C(n10007), .D(state[0]), 
         .Z(sclk_c_enable_222)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam i1_3_lut_4_lut.init = 16'hf200;
    LUT4 i1_3_lut_4_lut_adj_81 (.A(fb[0]), .B(n9904), .C(n10007), .D(state[0]), 
         .Z(sclk_c_enable_193)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_3_lut_4_lut_adj_81.init = 16'hf100;
    LUT4 i6816_3_lut_4_lut (.A(fb[0]), .B(n9904), .C(n10007), .D(n2561), 
         .Z(n9060)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i6816_3_lut_4_lut.init = 16'h0001;
    LUT4 mux_143_rep_1_i15_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[14]), 
         .D(n1131[14]), .Z(spi_byte_counter_31__N_737[14])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i15_3_lut_4_lut.init = 16'hf870;
    LUT4 i6819_4_lut (.A(n9903), .B(RX_RDY), .C(n2351), .D(n2386), .Z(sclk_c_enable_227)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C)))) */ ;
    defparam i6819_4_lut.init = 16'h0545;
    LUT4 mux_143_rep_1_i31_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[30]), 
         .D(n1131[30]), .Z(spi_byte_counter_31__N_737[30])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i31_3_lut_4_lut.init = 16'hf870;
    LUT4 mux_121_i9_3_lut_4_lut (.A(index[0]), .B(n9910), .C(n2351), .D(DATA_OUT[0]), 
         .Z(WrData_23__N_668[8])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam mux_121_i9_3_lut_4_lut.init = 16'hf202;
    CCU2D add_6097_13 (.A0(spi_byte_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8857), .COUT(n8858));
    defparam add_6097_13.INIT0 = 16'hf555;
    defparam add_6097_13.INIT1 = 16'hf555;
    defparam add_6097_13.INJECT1_0 = "NO";
    defparam add_6097_13.INJECT1_1 = "NO";
    LUT4 mux_121_i13_3_lut_4_lut (.A(index[0]), .B(n9910), .C(n2351), 
         .D(DATA_OUT[4]), .Z(WrData_23__N_668[12])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam mux_121_i13_3_lut_4_lut.init = 16'hf202;
    LUT4 mux_121_i22_3_lut_4_lut (.A(index[0]), .B(n9910), .C(n2351), 
         .D(DATA_OUT[5]), .Z(WrData_23__N_668[21])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam mux_121_i22_3_lut_4_lut.init = 16'hf101;
    LUT4 mux_121_i24_3_lut_4_lut (.A(index[0]), .B(n9910), .C(n2351), 
         .D(DATA_OUT[7]), .Z(WrData_23__N_668[23])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam mux_121_i24_3_lut_4_lut.init = 16'hf101;
    CCU2D add_6097_11 (.A0(spi_byte_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8856), .COUT(n8857));
    defparam add_6097_11.INIT0 = 16'hf555;
    defparam add_6097_11.INIT1 = 16'hf555;
    defparam add_6097_11.INJECT1_0 = "NO";
    defparam add_6097_11.INJECT1_1 = "NO";
    LUT4 mux_143_rep_1_i16_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[15]), 
         .D(n1131[15]), .Z(spi_byte_counter_31__N_737[15])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i16_3_lut_4_lut.init = 16'hf870;
    CCU2D add_6097_9 (.A0(spi_byte_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8855), .COUT(n8856));
    defparam add_6097_9.INIT0 = 16'hf555;
    defparam add_6097_9.INIT1 = 16'hf555;
    defparam add_6097_9.INJECT1_0 = "NO";
    defparam add_6097_9.INJECT1_1 = "NO";
    LUT4 mux_143_rep_1_i13_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[12]), 
         .D(n1131[12]), .Z(spi_byte_counter_31__N_737[12])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i13_3_lut_4_lut.init = 16'hf870;
    LUT4 mux_143_rep_1_i14_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[13]), 
         .D(n1131[13]), .Z(spi_byte_counter_31__N_737[13])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i14_3_lut_4_lut.init = 16'hf870;
    CCU2D add_6097_7 (.A0(spi_byte_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8854), .COUT(n8855));
    defparam add_6097_7.INIT0 = 16'hf555;
    defparam add_6097_7.INIT1 = 16'hf555;
    defparam add_6097_7.INJECT1_0 = "NO";
    defparam add_6097_7.INJECT1_1 = "NO";
    LUT4 mux_143_rep_1_i29_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[28]), 
         .D(n1131[28]), .Z(spi_byte_counter_31__N_737[28])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i29_3_lut_4_lut.init = 16'hf870;
    FD1P3IX WrAddr_i0 (.D(WrAddr_8__N_692[0]), .SP(sclk_c_enable_259), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(WrAddress[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrAddr_i0.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i0 (.D(n1131[0]), .SP(sclk_c_enable_290), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(spi_byte_counter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i0.GSR = "ENABLED";
    LUT4 i5388_2_lut (.A(n726[21]), .B(RX_RDY), .Z(n1131[21])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5388_2_lut.init = 16'h8888;
    FD1P3IX spi_byte_timeout_i0 (.D(n1329[0]), .SP(sclk_c_enable_65), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(spi_byte_timeout[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i0.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i1 (.D(n1329[1]), .SP(sclk_c_enable_65), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(spi_byte_timeout[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i1.GSR = "ENABLED";
    FD1P3AY spi_byte_timeout_i2 (.D(spi_byte_timeout_31__N_572[2]), .SP(sclk_c_enable_39), 
            .CK(sclk_c), .Q(spi_byte_timeout[2])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i2.GSR = "ENABLED";
    FD1P3AY spi_byte_timeout_i3 (.D(spi_byte_timeout_31__N_572[3]), .SP(sclk_c_enable_39), 
            .CK(sclk_c), .Q(spi_byte_timeout[3])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i3.GSR = "ENABLED";
    FD1P3AY spi_byte_timeout_i4 (.D(spi_byte_timeout_31__N_572[4]), .SP(sclk_c_enable_39), 
            .CK(sclk_c), .Q(spi_byte_timeout[4])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i4.GSR = "ENABLED";
    FD1P3AY spi_byte_timeout_i5 (.D(spi_byte_timeout_31__N_572[5]), .SP(sclk_c_enable_39), 
            .CK(sclk_c), .Q(spi_byte_timeout[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i5.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i6 (.D(n1329[6]), .SP(sclk_c_enable_65), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(spi_byte_timeout[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i6.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i7 (.D(n1329[7]), .SP(sclk_c_enable_65), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(spi_byte_timeout[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i7.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i8 (.D(n1329[8]), .SP(sclk_c_enable_65), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(spi_byte_timeout[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i8.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i9 (.D(n1329[9]), .SP(sclk_c_enable_65), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(spi_byte_timeout[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i9.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i10 (.D(n1329[10]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i10.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i11 (.D(n1329[11]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i11.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i12 (.D(n1329[12]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i12.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i13 (.D(n1329[13]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i13.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i14 (.D(n1329[14]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i14.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i15 (.D(n1329[15]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i15.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i16 (.D(n1329[16]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i16.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i17 (.D(n1329[17]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i17.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i18 (.D(n1329[18]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i18.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i19 (.D(n1329[19]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i19.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i20 (.D(n1329[20]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i20.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i21 (.D(n1329[21]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i21.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i22 (.D(n1329[22]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i22.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i23 (.D(n1329[23]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i23.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i24 (.D(n1329[24]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i24.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i25 (.D(n1329[25]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i25.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i26 (.D(n1329[26]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_timeout[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i26.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i27 (.D(n1329[27]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_timeout[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i27.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i28 (.D(n1329[28]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i28.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i29 (.D(n1329[29]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(spi_byte_timeout[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i29.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i30 (.D(n1329[30]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_timeout[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i30.GSR = "ENABLED";
    FD1P3IX spi_byte_timeout_i31 (.D(n1329[31]), .SP(sclk_c_enable_65), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_timeout[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_timeout_i31.GSR = "ENABLED";
    LUT4 mux_143_rep_1_i30_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[29]), 
         .D(n1131[29]), .Z(spi_byte_counter_31__N_737[29])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i30_3_lut_4_lut.init = 16'hf870;
    LUT4 i5387_2_lut (.A(n726[20]), .B(RX_RDY), .Z(n1131[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5387_2_lut.init = 16'h8888;
    LUT4 mux_121_i10_3_lut_4_lut (.A(index[3]), .B(n9919), .C(n2351), 
         .D(DATA_OUT[1]), .Z(WrData_23__N_668[9])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_121_i10_3_lut_4_lut.init = 16'hf404;
    LUT4 mux_121_i12_3_lut_4_lut (.A(index[3]), .B(n9919), .C(n2351), 
         .D(DATA_OUT[3]), .Z(WrData_23__N_668[11])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_121_i12_3_lut_4_lut.init = 16'hf404;
    CCU2D add_6097_5 (.A0(spi_byte_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8853), .COUT(n8854));
    defparam add_6097_5.INIT0 = 16'hf555;
    defparam add_6097_5.INIT1 = 16'hf555;
    defparam add_6097_5.INJECT1_0 = "NO";
    defparam add_6097_5.INJECT1_1 = "NO";
    LUT4 mux_121_i14_3_lut (.A(n30[15]), .B(DATA_OUT[5]), .C(n2351), .Z(WrData_23__N_668[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_121_i14_3_lut.init = 16'hcaca;
    LUT4 mux_121_i2_3_lut_4_lut (.A(index[3]), .B(n9911), .C(n2351), .D(DATA_OUT[1]), 
         .Z(WrData_23__N_668[1])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_121_i2_3_lut_4_lut.init = 16'hf404;
    LUT4 i5386_2_lut (.A(n726[19]), .B(RX_RDY), .Z(n1131[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5386_2_lut.init = 16'h8888;
    LUT4 mux_121_i4_3_lut_4_lut (.A(index[3]), .B(n9911), .C(n2351), .D(DATA_OUT[3]), 
         .Z(WrData_23__N_668[3])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_121_i4_3_lut_4_lut.init = 16'hf404;
    CCU2D add_6097_3 (.A0(spi_byte_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8852), .COUT(n8853));
    defparam add_6097_3.INIT0 = 16'hf555;
    defparam add_6097_3.INIT1 = 16'hf555;
    defparam add_6097_3.INJECT1_0 = "NO";
    defparam add_6097_3.INJECT1_1 = "NO";
    CCU2D add_116_9 (.A0(spi_byte_timeout[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8617), .COUT(n8618), .S0(n765[7]), .S1(n765[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_9.INIT0 = 16'h5555;
    defparam add_116_9.INIT1 = 16'h5555;
    defparam add_116_9.INJECT1_0 = "NO";
    defparam add_116_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_201 (.A(state[0]), .B(n10007), .Z(n9903)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_rep_201.init = 16'h2222;
    LUT4 mux_143_rep_1_i11_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[10]), 
         .D(n1131[10]), .Z(spi_byte_counter_31__N_737[10])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i11_3_lut_4_lut.init = 16'hf870;
    LUT4 i5385_2_lut (.A(n726[18]), .B(RX_RDY), .Z(n1131[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5385_2_lut.init = 16'h8888;
    LUT4 mux_121_i16_3_lut (.A(n30[15]), .B(DATA_OUT[7]), .C(n2351), .Z(WrData_23__N_668[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_121_i16_3_lut.init = 16'hcaca;
    CCU2D add_116_7 (.A0(spi_byte_timeout[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8616), .COUT(n8617), .S0(n765[5]), .S1(n765[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_7.INIT0 = 16'h5555;
    defparam add_116_7.INIT1 = 16'h5555;
    defparam add_116_7.INJECT1_0 = "NO";
    defparam add_116_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_82 (.A(spi_byte_counter[0]), .B(n9912), .C(n2351), 
         .D(n9310), .Z(sclk_c_enable_252)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)))) */ ;
    defparam i1_4_lut_adj_82.init = 16'h4c0c;
    LUT4 i1_2_lut_3_lut (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[31]), 
         .Z(delay_counter_31__N_508[31])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_83 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[30]), 
         .Z(delay_counter_31__N_508[30])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_83.init = 16'h2020;
    CCU2D add_6097_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(spi_byte_counter[0]), .B1(spi_byte_counter[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n8852));
    defparam add_6097_1.INIT0 = 16'hF000;
    defparam add_6097_1.INIT1 = 16'ha666;
    defparam add_6097_1.INJECT1_0 = "NO";
    defparam add_6097_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_84 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[29]), 
         .Z(delay_counter_31__N_508[29])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_84.init = 16'h2020;
    LUT4 mux_121_i17_3_lut (.A(n30[20]), .B(DATA_OUT[0]), .C(n2351), .Z(WrData_23__N_668[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_121_i17_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_85 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[28]), 
         .Z(delay_counter_31__N_508[28])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_85.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_86 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[27]), 
         .Z(delay_counter_31__N_508[27])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_86.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_87 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[26]), 
         .Z(delay_counter_31__N_508[26])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_87.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_88 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[25]), 
         .Z(delay_counter_31__N_508[25])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_88.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_89 (.A(n10007), .B(n2561), .C(n6502), .Z(n4112)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_89.init = 16'h1010;
    LUT4 mux_143_rep_1_i12_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[11]), 
         .D(n1131[11]), .Z(spi_byte_counter_31__N_737[11])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i12_3_lut_4_lut.init = 16'hf870;
    LUT4 i5395_2_lut (.A(n726[28]), .B(RX_RDY), .Z(n1131[28])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5395_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_90 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[24]), 
         .Z(delay_counter_31__N_508[24])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_90.init = 16'h2020;
    LUT4 mux_121_i18_3_lut (.A(n30[19]), .B(DATA_OUT[1]), .C(n2351), .Z(WrData_23__N_668[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_121_i18_3_lut.init = 16'hcaca;
    LUT4 i5538_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[0]), 
         .Z(n1329[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5538_2_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_91 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[23]), 
         .Z(delay_counter_31__N_508[23])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_91.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_92 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[22]), 
         .Z(delay_counter_31__N_508[22])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_92.init = 16'h2020;
    LUT4 mux_143_rep_1_i9_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[8]), 
         .D(n1131[8]), .Z(spi_byte_counter_31__N_737[8])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i9_3_lut_4_lut.init = 16'hf870;
    LUT4 mux_143_rep_1_i10_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[9]), 
         .D(n1131[9]), .Z(spi_byte_counter_31__N_737[9])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i10_3_lut_4_lut.init = 16'hf870;
    LUT4 i5384_2_lut (.A(n726[17]), .B(RX_RDY), .Z(n1131[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5384_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_93 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[21]), 
         .Z(delay_counter_31__N_508[21])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_93.init = 16'h2020;
    LUT4 mux_143_rep_1_i27_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[26]), 
         .D(n1131[26]), .Z(spi_byte_counter_31__N_737[26])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i27_3_lut_4_lut.init = 16'hf870;
    LUT4 i5383_2_lut (.A(n726[16]), .B(RX_RDY), .Z(n1131[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5383_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_94 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[20]), 
         .Z(delay_counter_31__N_508[20])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_94.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_95 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[19]), 
         .Z(delay_counter_31__N_508[19])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_95.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_96 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[18]), 
         .Z(delay_counter_31__N_508[18])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_96.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_97 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[17]), 
         .Z(delay_counter_31__N_508[17])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_97.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_98 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[16]), 
         .Z(delay_counter_31__N_508[16])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_98.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_99 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[15]), 
         .Z(delay_counter_31__N_508[15])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_99.init = 16'h2020;
    LUT4 mux_143_rep_1_i28_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[27]), 
         .D(n1131[27]), .Z(spi_byte_counter_31__N_737[27])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i28_3_lut_4_lut.init = 16'hf870;
    LUT4 i1_2_lut_3_lut_adj_100 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[14]), 
         .Z(delay_counter_31__N_508[14])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_100.init = 16'h2020;
    CCU2D add_6098_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8851), 
          .S0(n2561));
    defparam add_6098_cout.INIT0 = 16'h0000;
    defparam add_6098_cout.INIT1 = 16'h0000;
    defparam add_6098_cout.INJECT1_0 = "NO";
    defparam add_6098_cout.INJECT1_1 = "NO";
    CCU2D add_6098_31 (.A0(delay_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8850), .COUT(n8851));
    defparam add_6098_31.INIT0 = 16'hf555;
    defparam add_6098_31.INIT1 = 16'h5555;
    defparam add_6098_31.INJECT1_0 = "NO";
    defparam add_6098_31.INJECT1_1 = "NO";
    LUT4 i5506_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[1]), 
         .Z(n1329[1])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5506_2_lut_4_lut.init = 16'h0100;
    CCU2D add_6098_29 (.A0(delay_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8849), .COUT(n8850));
    defparam add_6098_29.INIT0 = 16'hf555;
    defparam add_6098_29.INIT1 = 16'hf555;
    defparam add_6098_29.INJECT1_0 = "NO";
    defparam add_6098_29.INJECT1_1 = "NO";
    LUT4 i5505_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[6]), 
         .Z(n1329[6])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5505_2_lut_4_lut.init = 16'h0100;
    LUT4 i5503_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[7]), 
         .Z(n1329[7])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5503_2_lut_4_lut.init = 16'h0100;
    LUT4 mux_121_i20_3_lut (.A(n30[19]), .B(DATA_OUT[3]), .C(n2351), .Z(WrData_23__N_668[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_121_i20_3_lut.init = 16'hcaca;
    LUT4 mux_121_i21_3_lut (.A(n30[20]), .B(DATA_OUT[4]), .C(n2351), .Z(WrData_23__N_668[20])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_121_i21_3_lut.init = 16'hcaca;
    LUT4 i5382_2_lut (.A(n726[15]), .B(RX_RDY), .Z(n1131[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5382_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_101 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[13]), 
         .Z(delay_counter_31__N_508[13])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_101.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_102 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[12]), 
         .Z(delay_counter_31__N_508[12])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_102.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_103 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[11]), 
         .Z(delay_counter_31__N_508[11])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_103.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_104 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[10]), 
         .Z(delay_counter_31__N_508[10])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_104.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_105 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[9]), 
         .Z(delay_counter_31__N_508[9])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_105.init = 16'h2020;
    LUT4 i5502_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[8]), 
         .Z(n1329[8])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5502_2_lut_4_lut.init = 16'h0100;
    CCU2D add_6098_27 (.A0(delay_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8848), .COUT(n8849));
    defparam add_6098_27.INIT0 = 16'hf555;
    defparam add_6098_27.INIT1 = 16'hf555;
    defparam add_6098_27.INJECT1_0 = "NO";
    defparam add_6098_27.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_106 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[8]), 
         .Z(delay_counter_31__N_508[8])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_106.init = 16'h2020;
    CCU2D add_6098_25 (.A0(delay_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8847), .COUT(n8848));
    defparam add_6098_25.INIT0 = 16'hf555;
    defparam add_6098_25.INIT1 = 16'hf555;
    defparam add_6098_25.INJECT1_0 = "NO";
    defparam add_6098_25.INJECT1_1 = "NO";
    CCU2D add_6098_23 (.A0(delay_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8846), .COUT(n8847));
    defparam add_6098_23.INIT0 = 16'hf555;
    defparam add_6098_23.INIT1 = 16'hf555;
    defparam add_6098_23.INJECT1_0 = "NO";
    defparam add_6098_23.INJECT1_1 = "NO";
    LUT4 i5500_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[9]), 
         .Z(n1329[9])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5500_2_lut_4_lut.init = 16'h0100;
    CCU2D add_6098_21 (.A0(delay_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8845), .COUT(n8846));
    defparam add_6098_21.INIT0 = 16'hf555;
    defparam add_6098_21.INIT1 = 16'hf555;
    defparam add_6098_21.INJECT1_0 = "NO";
    defparam add_6098_21.INJECT1_1 = "NO";
    LUT4 i5499_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[10]), 
         .Z(n1329[10])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5499_2_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_107 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[7]), 
         .Z(delay_counter_31__N_508[7])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_107.init = 16'h2020;
    FD1P3IX index_i21 (.D(index_31__N_810[21]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i21.GSR = "ENABLED";
    LUT4 i5498_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[11]), 
         .Z(n1329[11])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5498_2_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_108 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[6]), 
         .Z(delay_counter_31__N_508[6])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_108.init = 16'h2020;
    FD1P3IX index_i20 (.D(index_31__N_810[20]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i20.GSR = "ENABLED";
    CCU2D add_6098_19 (.A0(delay_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8844), .COUT(n8845));
    defparam add_6098_19.INIT0 = 16'hf555;
    defparam add_6098_19.INIT1 = 16'hf555;
    defparam add_6098_19.INJECT1_0 = "NO";
    defparam add_6098_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_109 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[5]), 
         .Z(delay_counter_31__N_508[5])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_109.init = 16'h2020;
    CCU2D add_6098_17 (.A0(delay_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8843), .COUT(n8844));
    defparam add_6098_17.INIT0 = 16'hf555;
    defparam add_6098_17.INIT1 = 16'hf555;
    defparam add_6098_17.INJECT1_0 = "NO";
    defparam add_6098_17.INJECT1_1 = "NO";
    LUT4 i5497_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[12]), 
         .Z(n1329[12])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5497_2_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_110 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[4]), 
         .Z(delay_counter_31__N_508[4])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_110.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_111 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[3]), 
         .Z(delay_counter_31__N_508[3])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_111.init = 16'h2020;
    LUT4 i5381_2_lut (.A(n726[14]), .B(RX_RDY), .Z(n1131[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5381_2_lut.init = 16'h8888;
    CCU2D add_6098_15 (.A0(delay_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8842), .COUT(n8843));
    defparam add_6098_15.INIT0 = 16'hf555;
    defparam add_6098_15.INIT1 = 16'hf555;
    defparam add_6098_15.INJECT1_0 = "NO";
    defparam add_6098_15.INJECT1_1 = "NO";
    LUT4 i5496_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[13]), 
         .Z(n1329[13])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5496_2_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_112 (.A(state[0]), .B(n10007), .C(delay_counter_31__N_636[1]), 
         .Z(delay_counter_31__N_508[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i1_2_lut_3_lut_adj_112.init = 16'h2020;
    LUT4 i2_3_lut_rep_202 (.A(fb[2]), .B(fb[1]), .C(fb[3]), .Z(n9904)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_202.init = 16'hfefe;
    LUT4 i1_2_lut_rep_203 (.A(state[0]), .B(n10007), .Z(sclk_c_enable_474)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_203.init = 16'hbbbb;
    LUT4 i5495_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[14]), 
         .Z(n1329[14])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5495_2_lut_4_lut.init = 16'h0100;
    LUT4 mux_131_i2_3_lut (.A(index[1]), .B(DATA_OUT[1]), .C(n2351), .Z(WrAddr_8__N_692[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_131_i2_3_lut.init = 16'hcaca;
    LUT4 i5481_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[28]), 
         .Z(n1329[28])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5481_2_lut_4_lut.init = 16'h0100;
    LUT4 mux_131_i3_3_lut (.A(index[2]), .B(DATA_OUT[2]), .C(n2351), .Z(WrAddr_8__N_692[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_131_i3_3_lut.init = 16'hcaca;
    LUT4 i5494_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[15]), 
         .Z(n1329[15])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5494_2_lut_4_lut.init = 16'h0100;
    LUT4 mux_131_i4_3_lut (.A(index[3]), .B(DATA_OUT[3]), .C(n2351), .Z(WrAddr_8__N_692[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_131_i4_3_lut.init = 16'hcaca;
    LUT4 i5493_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[16]), 
         .Z(n1329[16])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5493_2_lut_4_lut.init = 16'h0100;
    LUT4 mux_131_i5_3_lut (.A(index[4]), .B(DATA_OUT[4]), .C(n2351), .Z(WrAddr_8__N_692[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_131_i5_3_lut.init = 16'hcaca;
    LUT4 mux_131_i6_3_lut (.A(index[5]), .B(DATA_OUT[5]), .C(n2351), .Z(WrAddr_8__N_692[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_131_i6_3_lut.init = 16'hcaca;
    LUT4 i5482_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[27]), 
         .Z(n1329[27])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5482_2_lut_4_lut.init = 16'h0100;
    LUT4 mux_131_i7_3_lut (.A(index[6]), .B(DATA_OUT[6]), .C(n2351), .Z(WrAddr_8__N_692[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_131_i7_3_lut.init = 16'hcaca;
    LUT4 i5483_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[26]), 
         .Z(n1329[26])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5483_2_lut_4_lut.init = 16'h0100;
    LUT4 mux_131_i8_3_lut (.A(index[7]), .B(DATA_OUT[7]), .C(n2351), .Z(WrAddr_8__N_692[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_131_i8_3_lut.init = 16'hcaca;
    LUT4 i5492_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[17]), 
         .Z(n1329[17])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5492_2_lut_4_lut.init = 16'h0100;
    LUT4 i5491_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[18]), 
         .Z(n1329[18])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5491_2_lut_4_lut.init = 16'h0100;
    LUT4 i5480_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[29]), 
         .Z(n1329[29])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5480_2_lut_4_lut.init = 16'h0100;
    LUT4 i5490_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[19]), 
         .Z(n1329[19])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5490_2_lut_4_lut.init = 16'h0100;
    LUT4 i5398_2_lut (.A(n726[31]), .B(RX_RDY), .Z(n1131[31])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5398_2_lut.init = 16'h8888;
    CCU2D add_6098_13 (.A0(delay_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8841), .COUT(n8842));
    defparam add_6098_13.INIT0 = 16'hf555;
    defparam add_6098_13.INIT1 = 16'hf555;
    defparam add_6098_13.INJECT1_0 = "NO";
    defparam add_6098_13.INJECT1_1 = "NO";
    CCU2D add_6098_11 (.A0(delay_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8840), .COUT(n8841));
    defparam add_6098_11.INIT0 = 16'hf555;
    defparam add_6098_11.INIT1 = 16'hf555;
    defparam add_6098_11.INJECT1_0 = "NO";
    defparam add_6098_11.INJECT1_1 = "NO";
    CCU2D add_6098_9 (.A0(delay_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8839), .COUT(n8840));
    defparam add_6098_9.INIT0 = 16'hf555;
    defparam add_6098_9.INIT1 = 16'hf555;
    defparam add_6098_9.INJECT1_0 = "NO";
    defparam add_6098_9.INJECT1_1 = "NO";
    LUT4 i5478_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[30]), 
         .Z(n1329[30])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5478_2_lut_4_lut.init = 16'h0100;
    CCU2D add_6098_7 (.A0(delay_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8838), .COUT(n8839));
    defparam add_6098_7.INIT0 = 16'hf555;
    defparam add_6098_7.INIT1 = 16'hf555;
    defparam add_6098_7.INJECT1_0 = "NO";
    defparam add_6098_7.INJECT1_1 = "NO";
    CCU2D add_6098_5 (.A0(delay_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8837), .COUT(n8838));
    defparam add_6098_5.INIT0 = 16'hf555;
    defparam add_6098_5.INIT1 = 16'hf555;
    defparam add_6098_5.INJECT1_0 = "NO";
    defparam add_6098_5.INJECT1_1 = "NO";
    LUT4 i5476_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[31]), 
         .Z(n1329[31])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5476_2_lut_4_lut.init = 16'h0100;
    CCU2D add_6098_3 (.A0(delay_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8836), .COUT(n8837));
    defparam add_6098_3.INIT0 = 16'hf555;
    defparam add_6098_3.INIT1 = 16'hf555;
    defparam add_6098_3.INJECT1_0 = "NO";
    defparam add_6098_3.INJECT1_1 = "NO";
    CCU2D add_6098_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_counter[0]), .B1(delay_counter[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n8836));
    defparam add_6098_1.INIT0 = 16'hF000;
    defparam add_6098_1.INIT1 = 16'ha666;
    defparam add_6098_1.INJECT1_0 = "NO";
    defparam add_6098_1.INJECT1_1 = "NO";
    LUT4 i5234_3_lut_rep_181 (.A(n2491), .B(RX_RDY), .C(n2456), .Z(n9883)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i5234_3_lut_rep_181.init = 16'hdcdc;
    FD1P3IX index_i19 (.D(index_31__N_810[19]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i19.GSR = "ENABLED";
    FD1P3IX index_i18 (.D(index_31__N_810[18]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i18.GSR = "ENABLED";
    FD1P3IX index_i17 (.D(index_31__N_810[17]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i17.GSR = "ENABLED";
    FD1P3IX index_i16 (.D(index_31__N_810[16]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i16.GSR = "ENABLED";
    FD1P3IX index_i15 (.D(index_31__N_810[15]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i15.GSR = "ENABLED";
    FD1P3IX index_i14 (.D(index_31__N_810[14]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i14.GSR = "ENABLED";
    FD1P3IX index_i13 (.D(index_31__N_810[13]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i13.GSR = "ENABLED";
    FD1P3IX index_i12 (.D(index_31__N_810[12]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i12.GSR = "ENABLED";
    FD1P3IX state_i1_rep_224 (.D(state[0]), .SP(sclk_c_enable_477), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(sclk_c_enable_211)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam state_i1_rep_224.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n2421), .B(n9896), .C(spi_byte_counter[2]), 
         .D(spi_byte_counter[1]), .Z(n9310)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i2_3_lut_4_lut.init = 16'h0800;
    FD1P3IX index_i11 (.D(index_31__N_810[11]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i11.GSR = "ENABLED";
    FD1P3IX index_i10 (.D(index_31__N_810[10]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i10.GSR = "ENABLED";
    CCU2D add_6092_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8819), 
          .S0(n2456));
    defparam add_6092_cout.INIT0 = 16'h0000;
    defparam add_6092_cout.INIT1 = 16'h0000;
    defparam add_6092_cout.INJECT1_0 = "NO";
    defparam add_6092_cout.INJECT1_1 = "NO";
    FD1P3IX index_i9 (.D(index_31__N_810[9]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i9.GSR = "ENABLED";
    FD1P3IX index_i8 (.D(index_31__N_810[8]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i8.GSR = "ENABLED";
    FD1P3IX index_i7 (.D(index_31__N_810[7]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i7.GSR = "ENABLED";
    CCU2D add_6092_31 (.A0(spi_byte_timeout[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8818), .COUT(n8819));
    defparam add_6092_31.INIT0 = 16'hf555;
    defparam add_6092_31.INIT1 = 16'h5555;
    defparam add_6092_31.INJECT1_0 = "NO";
    defparam add_6092_31.INJECT1_1 = "NO";
    CCU2D add_6092_29 (.A0(spi_byte_timeout[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8817), .COUT(n8818));
    defparam add_6092_29.INIT0 = 16'hf555;
    defparam add_6092_29.INIT1 = 16'hf555;
    defparam add_6092_29.INJECT1_0 = "NO";
    defparam add_6092_29.INJECT1_1 = "NO";
    CCU2D add_6092_27 (.A0(spi_byte_timeout[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8816), .COUT(n8817));
    defparam add_6092_27.INIT0 = 16'hf555;
    defparam add_6092_27.INIT1 = 16'hf555;
    defparam add_6092_27.INJECT1_0 = "NO";
    defparam add_6092_27.INJECT1_1 = "NO";
    CCU2D add_6092_25 (.A0(spi_byte_timeout[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8815), .COUT(n8816));
    defparam add_6092_25.INIT0 = 16'hf555;
    defparam add_6092_25.INIT1 = 16'hf555;
    defparam add_6092_25.INJECT1_0 = "NO";
    defparam add_6092_25.INJECT1_1 = "NO";
    CCU2D add_6092_23 (.A0(spi_byte_timeout[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8814), .COUT(n8815));
    defparam add_6092_23.INIT0 = 16'hf555;
    defparam add_6092_23.INIT1 = 16'hf555;
    defparam add_6092_23.INJECT1_0 = "NO";
    defparam add_6092_23.INJECT1_1 = "NO";
    FD1P3IX delay_counter_i0 (.D(n1), .SP(sclk_c_enable_474), .CD(n6300), 
            .CK(sclk_c), .Q(delay_counter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i0.GSR = "ENABLED";
    FD1P3IX index_i0 (.D(index_31__N_810[0]), .SP(sclk_c_enable_191), .CD(n6300), 
            .CK(sclk_c), .Q(index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i0.GSR = "ENABLED";
    FD1P3IX debug_216 (.D(debug_N_852), .SP(sclk_c_enable_204), .CD(n6300), 
            .CK(sclk_c), .Q(led0_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam debug_216.GSR = "ENABLED";
    FD1P3AX WrEnable_i0 (.D(n9060), .SP(sclk_c_enable_193), .CK(sclk_c), 
            .Q(\WE[0] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrEnable_i0.GSR = "ENABLED";
    FD1P3IX index_i6 (.D(index_31__N_810[6]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i6.GSR = "ENABLED";
    CCU2D add_6092_21 (.A0(spi_byte_timeout[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8813), .COUT(n8814));
    defparam add_6092_21.INIT0 = 16'hf555;
    defparam add_6092_21.INIT1 = 16'hf555;
    defparam add_6092_21.INJECT1_0 = "NO";
    defparam add_6092_21.INJECT1_1 = "NO";
    CCU2D add_6092_19 (.A0(spi_byte_timeout[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8812), .COUT(n8813));
    defparam add_6092_19.INIT0 = 16'hf555;
    defparam add_6092_19.INIT1 = 16'hf555;
    defparam add_6092_19.INJECT1_0 = "NO";
    defparam add_6092_19.INJECT1_1 = "NO";
    CCU2D add_6092_17 (.A0(spi_byte_timeout[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8811), .COUT(n8812));
    defparam add_6092_17.INIT0 = 16'hf555;
    defparam add_6092_17.INIT1 = 16'hf555;
    defparam add_6092_17.INJECT1_0 = "NO";
    defparam add_6092_17.INJECT1_1 = "NO";
    CCU2D add_6092_15 (.A0(spi_byte_timeout[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8810), .COUT(n8811));
    defparam add_6092_15.INIT0 = 16'hf555;
    defparam add_6092_15.INIT1 = 16'hf555;
    defparam add_6092_15.INJECT1_0 = "NO";
    defparam add_6092_15.INJECT1_1 = "NO";
    CCU2D add_6092_13 (.A0(spi_byte_timeout[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8809), .COUT(n8810));
    defparam add_6092_13.INIT0 = 16'hf555;
    defparam add_6092_13.INIT1 = 16'hf555;
    defparam add_6092_13.INJECT1_0 = "NO";
    defparam add_6092_13.INJECT1_1 = "NO";
    CCU2D add_6092_11 (.A0(spi_byte_timeout[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8808), .COUT(n8809));
    defparam add_6092_11.INIT0 = 16'hf555;
    defparam add_6092_11.INIT1 = 16'hf555;
    defparam add_6092_11.INJECT1_0 = "NO";
    defparam add_6092_11.INJECT1_1 = "NO";
    CCU2D add_6092_9 (.A0(spi_byte_timeout[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8807), .COUT(n8808));
    defparam add_6092_9.INIT0 = 16'hf555;
    defparam add_6092_9.INIT1 = 16'hf555;
    defparam add_6092_9.INJECT1_0 = "NO";
    defparam add_6092_9.INJECT1_1 = "NO";
    CCU2D add_6092_7 (.A0(spi_byte_timeout[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8806), .COUT(n8807));
    defparam add_6092_7.INIT0 = 16'hf555;
    defparam add_6092_7.INIT1 = 16'hf555;
    defparam add_6092_7.INJECT1_0 = "NO";
    defparam add_6092_7.INJECT1_1 = "NO";
    CCU2D add_6092_5 (.A0(spi_byte_timeout[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8805), .COUT(n8806));
    defparam add_6092_5.INIT0 = 16'hf555;
    defparam add_6092_5.INIT1 = 16'hf555;
    defparam add_6092_5.INJECT1_0 = "NO";
    defparam add_6092_5.INJECT1_1 = "NO";
    CCU2D add_6092_3 (.A0(spi_byte_timeout[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8804), .COUT(n8805));
    defparam add_6092_3.INIT0 = 16'hf555;
    defparam add_6092_3.INIT1 = 16'hf555;
    defparam add_6092_3.INJECT1_0 = "NO";
    defparam add_6092_3.INJECT1_1 = "NO";
    CCU2D add_6092_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(spi_byte_timeout[0]), .B1(spi_byte_timeout[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n8804));
    defparam add_6092_1.INIT0 = 16'hF000;
    defparam add_6092_1.INIT1 = 16'ha666;
    defparam add_6092_1.INJECT1_0 = "NO";
    defparam add_6092_1.INJECT1_1 = "NO";
    CCU2D add_6093_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8803), 
          .S0(n2526));
    defparam add_6093_cout.INIT0 = 16'h0000;
    defparam add_6093_cout.INIT1 = 16'h0000;
    defparam add_6093_cout.INJECT1_0 = "NO";
    defparam add_6093_cout.INJECT1_1 = "NO";
    CCU2D add_6093_31 (.A0(spi_byte_counter_31__N_737[30]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(n2351), .B1(n9883), .C1(spi_byte_counter[31]), 
          .D1(n1131[31]), .CIN(n8802), .COUT(n8803));
    defparam add_6093_31.INIT0 = 16'hf555;
    defparam add_6093_31.INIT1 = 16'h078f;
    defparam add_6093_31.INJECT1_0 = "NO";
    defparam add_6093_31.INJECT1_1 = "NO";
    CCU2D add_6093_29 (.A0(spi_byte_counter_31__N_737[28]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[29]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8801), .COUT(n8802));
    defparam add_6093_29.INIT0 = 16'hf555;
    defparam add_6093_29.INIT1 = 16'hf555;
    defparam add_6093_29.INJECT1_0 = "NO";
    defparam add_6093_29.INJECT1_1 = "NO";
    CCU2D add_6093_27 (.A0(spi_byte_counter_31__N_737[26]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[27]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8800), .COUT(n8801));
    defparam add_6093_27.INIT0 = 16'hf555;
    defparam add_6093_27.INIT1 = 16'hf555;
    defparam add_6093_27.INJECT1_0 = "NO";
    defparam add_6093_27.INJECT1_1 = "NO";
    CCU2D add_6093_25 (.A0(spi_byte_counter_31__N_737[24]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[25]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8799), .COUT(n8800));
    defparam add_6093_25.INIT0 = 16'hf555;
    defparam add_6093_25.INIT1 = 16'hf555;
    defparam add_6093_25.INJECT1_0 = "NO";
    defparam add_6093_25.INJECT1_1 = "NO";
    CCU2D add_6093_23 (.A0(spi_byte_counter_31__N_737[22]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[23]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8798), .COUT(n8799));
    defparam add_6093_23.INIT0 = 16'hf555;
    defparam add_6093_23.INIT1 = 16'hf555;
    defparam add_6093_23.INJECT1_0 = "NO";
    defparam add_6093_23.INJECT1_1 = "NO";
    CCU2D add_6093_21 (.A0(spi_byte_counter_31__N_737[20]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[21]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8797), .COUT(n8798));
    defparam add_6093_21.INIT0 = 16'hf555;
    defparam add_6093_21.INIT1 = 16'hf555;
    defparam add_6093_21.INJECT1_0 = "NO";
    defparam add_6093_21.INJECT1_1 = "NO";
    CCU2D add_6093_19 (.A0(spi_byte_counter_31__N_737[18]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[19]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8796), .COUT(n8797));
    defparam add_6093_19.INIT0 = 16'hf555;
    defparam add_6093_19.INIT1 = 16'hf555;
    defparam add_6093_19.INJECT1_0 = "NO";
    defparam add_6093_19.INJECT1_1 = "NO";
    CCU2D add_6093_17 (.A0(spi_byte_counter_31__N_737[16]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[17]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8795), .COUT(n8796));
    defparam add_6093_17.INIT0 = 16'hf555;
    defparam add_6093_17.INIT1 = 16'hf555;
    defparam add_6093_17.INJECT1_0 = "NO";
    defparam add_6093_17.INJECT1_1 = "NO";
    CCU2D add_6093_15 (.A0(spi_byte_counter_31__N_737[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[15]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8794), .COUT(n8795));
    defparam add_6093_15.INIT0 = 16'hf555;
    defparam add_6093_15.INIT1 = 16'hf555;
    defparam add_6093_15.INJECT1_0 = "NO";
    defparam add_6093_15.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(spi_byte_counter[2]), .B(spi_byte_counter[0]), .C(n9884), 
         .D(spi_byte_counter[1]), .Z(n9090)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0020;
    FD1P3IX index_i5 (.D(index_31__N_810[5]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i5.GSR = "ENABLED";
    FD1P3IX index_i4 (.D(index_31__N_810[4]), .SP(sclk_c_enable_211), .CD(n6300), 
            .CK(sclk_c), .Q(index[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i4.GSR = "ENABLED";
    CCU2D add_116_5 (.A0(spi_byte_timeout[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8615), .COUT(n8616), .S0(n765[3]), .S1(n765[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_5.INIT0 = 16'h5555;
    defparam add_116_5.INIT1 = 16'h5555;
    defparam add_116_5.INJECT1_0 = "NO";
    defparam add_116_5.INJECT1_1 = "NO";
    LUT4 mux_121_i1_3_lut (.A(n30[4]), .B(DATA_OUT[0]), .C(n2351), .Z(WrData_23__N_668[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_121_i1_3_lut.init = 16'hcaca;
    LUT4 i5218_2_lut (.A(delay_counter_31__N_636[0]), .B(state[0]), .Z(n1)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i5218_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut (.A(RX_RDY), .B(n2386), .Z(n9392)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(108[12:18])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i6829_4_lut (.A(n10007), .B(n7), .C(n2561), .D(state[0]), .Z(sclk_c_enable_477)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;
    defparam i6829_4_lut.init = 16'hfabb;
    LUT4 i1_2_lut_adj_113 (.A(n2351), .B(n2526), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_113.init = 16'h8888;
    LUT4 i5484_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[25]), 
         .Z(n1329[25])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5484_2_lut_4_lut.init = 16'h0100;
    LUT4 i5397_2_lut (.A(n726[30]), .B(RX_RDY), .Z(n1131[30])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5397_2_lut.init = 16'h8888;
    FD1P3IX index_i3 (.D(index_31__N_810[3]), .SP(sclk_c_enable_211), .CD(n6300), 
            .CK(sclk_c), .Q(index[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i3.GSR = "ENABLED";
    FD1P3IX fb_i0 (.D(DATA_OUT[1]), .SP(sclk_c_enable_225), .CD(n6300), 
            .CK(sclk_c), .Q(fb[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam fb_i0.GSR = "ENABLED";
    FD1P3IX state_i0 (.D(n9913), .SP(sclk_c_enable_477), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam state_i0.GSR = "ENABLED";
    FD1P3IX SPI_CS_209 (.D(SPI_CS_N_843), .SP(sclk_c_enable_204), .CD(n6300), 
            .CK(sclk_c), .Q(CSn)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam SPI_CS_209.GSR = "ENABLED";
    CCU2D add_116_3 (.A0(spi_byte_timeout[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8614), .COUT(n8615), .S0(n765[1]), .S1(n765[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_3.INIT0 = 16'h5555;
    defparam add_116_3.INIT1 = 16'h5555;
    defparam add_116_3.INJECT1_0 = "NO";
    defparam add_116_3.INJECT1_1 = "NO";
    CCU2D add_6093_13 (.A0(spi_byte_counter_31__N_737[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[13]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8793), .COUT(n8794));
    defparam add_6093_13.INIT0 = 16'hf555;
    defparam add_6093_13.INIT1 = 16'hf555;
    defparam add_6093_13.INJECT1_0 = "NO";
    defparam add_6093_13.INJECT1_1 = "NO";
    CCU2D add_6093_11 (.A0(spi_byte_counter_31__N_737[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[11]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8792), .COUT(n8793));
    defparam add_6093_11.INIT0 = 16'hf555;
    defparam add_6093_11.INIT1 = 16'hf555;
    defparam add_6093_11.INJECT1_0 = "NO";
    defparam add_6093_11.INJECT1_1 = "NO";
    CCU2D add_6093_9 (.A0(spi_byte_counter_31__N_737[8]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[9]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8791), .COUT(n8792));
    defparam add_6093_9.INIT0 = 16'hf555;
    defparam add_6093_9.INIT1 = 16'hf555;
    defparam add_6093_9.INJECT1_0 = "NO";
    defparam add_6093_9.INJECT1_1 = "NO";
    CCU2D add_6093_7 (.A0(spi_byte_counter_31__N_737[6]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[7]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8790), .COUT(n8791));
    defparam add_6093_7.INIT0 = 16'hf555;
    defparam add_6093_7.INIT1 = 16'hf555;
    defparam add_6093_7.INJECT1_0 = "NO";
    defparam add_6093_7.INJECT1_1 = "NO";
    CCU2D add_6093_5 (.A0(spi_byte_counter_31__N_737[4]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[5]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8789), .COUT(n8790));
    defparam add_6093_5.INIT0 = 16'hf555;
    defparam add_6093_5.INIT1 = 16'hf555;
    defparam add_6093_5.INJECT1_0 = "NO";
    defparam add_6093_5.INJECT1_1 = "NO";
    CCU2D add_6093_3 (.A0(spi_byte_counter_31__N_737[2]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter_31__N_737[3]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8788), .COUT(n8789));
    defparam add_6093_3.INIT0 = 16'h0aaa;
    defparam add_6093_3.INIT1 = 16'hf555;
    defparam add_6093_3.INJECT1_0 = "NO";
    defparam add_6093_3.INJECT1_1 = "NO";
    CCU2D add_6093_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(spi_byte_counter_31__N_737[0]), .B1(spi_byte_counter_31__N_737[1]), 
          .C1(GND_net), .D1(GND_net), .COUT(n8788));
    defparam add_6093_1.INIT0 = 16'hF000;
    defparam add_6093_1.INIT1 = 16'ha666;
    defparam add_6093_1.INJECT1_0 = "NO";
    defparam add_6093_1.INJECT1_1 = "NO";
    CCU2D add_116_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(spi_byte_timeout[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8614), .S1(n765[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_1.INIT0 = 16'hF000;
    defparam add_116_1.INIT1 = 16'h5555;
    defparam add_116_1.INJECT1_0 = "NO";
    defparam add_116_1.INJECT1_1 = "NO";
    CCU2D add_110_33 (.A0(spi_byte_counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8613), .S0(n726[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_33.INIT0 = 16'h5aaa;
    defparam add_110_33.INIT1 = 16'h0000;
    defparam add_110_33.INJECT1_0 = "NO";
    defparam add_110_33.INJECT1_1 = "NO";
    FD1P3IX index_i2 (.D(index_31__N_810[2]), .SP(sclk_c_enable_211), .CD(n6300), 
            .CK(sclk_c), .Q(index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i2.GSR = "ENABLED";
    FD1P3IX index_i1 (.D(index_31__N_810[1]), .SP(sclk_c_enable_211), .CD(n6300), 
            .CK(sclk_c), .Q(index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i1.GSR = "ENABLED";
    FD1P3AX WrEnable_i2 (.D(n4112), .SP(sclk_c_enable_212), .CK(sclk_c), 
            .Q(\WE[2] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrEnable_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_114 (.A(RX_RDY), .B(n2351), .Z(SPI_CS_N_843)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_114.init = 16'hbbbb;
    LUT4 i5489_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[20]), 
         .Z(n1329[20])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5489_2_lut_4_lut.init = 16'h0100;
    FD1P3IX state_i1_rep_223 (.D(state[0]), .SP(sclk_c_enable_477), .CD(state[1]), 
            .CK(sclk_c), .Q(sclk_c_enable_191)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam state_i1_rep_223.GSR = "ENABLED";
    CCU2D add_6094_32 (.A0(spi_byte_counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8771), .S1(n2386));
    defparam add_6094_32.INIT0 = 16'hf555;
    defparam add_6094_32.INIT1 = 16'h0000;
    defparam add_6094_32.INJECT1_0 = "NO";
    defparam add_6094_32.INJECT1_1 = "NO";
    CCU2D add_6094_30 (.A0(spi_byte_counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8770), .COUT(n8771));
    defparam add_6094_30.INIT0 = 16'h5555;
    defparam add_6094_30.INIT1 = 16'h5555;
    defparam add_6094_30.INJECT1_0 = "NO";
    defparam add_6094_30.INJECT1_1 = "NO";
    CCU2D add_6094_28 (.A0(spi_byte_counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8769), .COUT(n8770));
    defparam add_6094_28.INIT0 = 16'h5555;
    defparam add_6094_28.INIT1 = 16'h5555;
    defparam add_6094_28.INJECT1_0 = "NO";
    defparam add_6094_28.INJECT1_1 = "NO";
    CCU2D add_6094_26 (.A0(spi_byte_counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8768), .COUT(n8769));
    defparam add_6094_26.INIT0 = 16'h5555;
    defparam add_6094_26.INIT1 = 16'h5555;
    defparam add_6094_26.INJECT1_0 = "NO";
    defparam add_6094_26.INJECT1_1 = "NO";
    CCU2D add_6094_24 (.A0(spi_byte_counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8767), .COUT(n8768));
    defparam add_6094_24.INIT0 = 16'h5555;
    defparam add_6094_24.INIT1 = 16'h5555;
    defparam add_6094_24.INJECT1_0 = "NO";
    defparam add_6094_24.INJECT1_1 = "NO";
    CCU2D add_6094_22 (.A0(spi_byte_counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8766), .COUT(n8767));
    defparam add_6094_22.INIT0 = 16'h5555;
    defparam add_6094_22.INIT1 = 16'h5555;
    defparam add_6094_22.INJECT1_0 = "NO";
    defparam add_6094_22.INJECT1_1 = "NO";
    CCU2D add_6094_20 (.A0(spi_byte_counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8765), .COUT(n8766));
    defparam add_6094_20.INIT0 = 16'h5555;
    defparam add_6094_20.INIT1 = 16'h5555;
    defparam add_6094_20.INJECT1_0 = "NO";
    defparam add_6094_20.INJECT1_1 = "NO";
    CCU2D add_6094_18 (.A0(spi_byte_counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8764), .COUT(n8765));
    defparam add_6094_18.INIT0 = 16'h5555;
    defparam add_6094_18.INIT1 = 16'h5555;
    defparam add_6094_18.INJECT1_0 = "NO";
    defparam add_6094_18.INJECT1_1 = "NO";
    CCU2D add_6094_16 (.A0(spi_byte_counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8763), .COUT(n8764));
    defparam add_6094_16.INIT0 = 16'h5555;
    defparam add_6094_16.INIT1 = 16'h5555;
    defparam add_6094_16.INJECT1_0 = "NO";
    defparam add_6094_16.INJECT1_1 = "NO";
    CCU2D add_6094_14 (.A0(spi_byte_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8762), .COUT(n8763));
    defparam add_6094_14.INIT0 = 16'h5555;
    defparam add_6094_14.INIT1 = 16'h5555;
    defparam add_6094_14.INJECT1_0 = "NO";
    defparam add_6094_14.INJECT1_1 = "NO";
    CCU2D add_6094_12 (.A0(spi_byte_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8761), .COUT(n8762));
    defparam add_6094_12.INIT0 = 16'h5555;
    defparam add_6094_12.INIT1 = 16'h5555;
    defparam add_6094_12.INJECT1_0 = "NO";
    defparam add_6094_12.INJECT1_1 = "NO";
    CCU2D add_6094_10 (.A0(spi_byte_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8760), .COUT(n8761));
    defparam add_6094_10.INIT0 = 16'h5555;
    defparam add_6094_10.INIT1 = 16'h5555;
    defparam add_6094_10.INJECT1_0 = "NO";
    defparam add_6094_10.INJECT1_1 = "NO";
    CCU2D add_6094_8 (.A0(spi_byte_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8759), .COUT(n8760));
    defparam add_6094_8.INIT0 = 16'h5555;
    defparam add_6094_8.INIT1 = 16'h5555;
    defparam add_6094_8.INJECT1_0 = "NO";
    defparam add_6094_8.INJECT1_1 = "NO";
    CCU2D add_6094_6 (.A0(spi_byte_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8758), .COUT(n8759));
    defparam add_6094_6.INIT0 = 16'h5555;
    defparam add_6094_6.INIT1 = 16'h5555;
    defparam add_6094_6.INJECT1_0 = "NO";
    defparam add_6094_6.INJECT1_1 = "NO";
    FD1P3AX WrEnable_i1 (.D(n4110), .SP(sclk_c_enable_222), .CK(sclk_c), 
            .Q(\WE[1] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrEnable_i1.GSR = "ENABLED";
    CCU2D add_6094_4 (.A0(spi_byte_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8757), .COUT(n8758));
    defparam add_6094_4.INIT0 = 16'h5555;
    defparam add_6094_4.INIT1 = 16'h5555;
    defparam add_6094_4.INJECT1_0 = "NO";
    defparam add_6094_4.INJECT1_1 = "NO";
    FD1P3IX fb_i3 (.D(DATA_OUT[4]), .SP(sclk_c_enable_225), .CD(n6300), 
            .CK(sclk_c), .Q(fb[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam fb_i3.GSR = "ENABLED";
    FD1P3IX fb_i2 (.D(DATA_OUT[3]), .SP(sclk_c_enable_225), .CD(n6300), 
            .CK(sclk_c), .Q(fb[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam fb_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_115 (.A(n2421), .B(n9912), .C(n2351), .D(n9896), 
         .Z(sclk_c_enable_259)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)))) */ ;
    defparam i1_4_lut_adj_115.init = 16'h4c0c;
    FD1P3IX fb_i1 (.D(DATA_OUT[2]), .SP(sclk_c_enable_225), .CD(n6300), 
            .CK(sclk_c), .Q(fb[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam fb_i1.GSR = "ENABLED";
    FD1P3IX state_i1 (.D(state[0]), .SP(sclk_c_enable_477), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam state_i1.GSR = "ENABLED";
    FD1P3IX WrAddr_i8 (.D(WrAddr_8__N_692[8]), .SP(sclk_c_enable_227), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(WrAddress[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrAddr_i8.GSR = "ENABLED";
    LUT4 mux_131_i1_3_lut (.A(index[0]), .B(DATA_OUT[0]), .C(n2351), .Z(WrAddr_8__N_692[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_131_i1_3_lut.init = 16'hcaca;
    LUT4 i5224_2_lut (.A(n726[0]), .B(RX_RDY), .Z(n1131[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5224_2_lut.init = 16'h8888;
    FD1P3IX WrData_i1 (.D(WrData_23__N_668[1]), .SP(sclk_c_enable_236), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i1.GSR = "ENABLED";
    CCU2D add_6094_2 (.A0(spi_byte_counter[1]), .B0(spi_byte_counter[0]), 
          .C0(GND_net), .D0(GND_net), .A1(spi_byte_counter[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n8757));
    defparam add_6094_2.INIT0 = 16'h1000;
    defparam add_6094_2.INIT1 = 16'h5555;
    defparam add_6094_2.INJECT1_0 = "NO";
    defparam add_6094_2.INJECT1_1 = "NO";
    LUT4 i5488_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[21]), 
         .Z(n1329[21])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5488_2_lut_4_lut.init = 16'h0100;
    CCU2D add_6095_32 (.A0(index[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8756), 
          .S1(n2351));
    defparam add_6095_32.INIT0 = 16'hf555;
    defparam add_6095_32.INIT1 = 16'h0000;
    defparam add_6095_32.INJECT1_0 = "NO";
    defparam add_6095_32.INJECT1_1 = "NO";
    CCU2D add_6095_30 (.A0(index[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8755), .COUT(n8756));
    defparam add_6095_30.INIT0 = 16'h5555;
    defparam add_6095_30.INIT1 = 16'h5555;
    defparam add_6095_30.INJECT1_0 = "NO";
    defparam add_6095_30.INJECT1_1 = "NO";
    CCU2D add_6095_28 (.A0(index[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8754), .COUT(n8755));
    defparam add_6095_28.INIT0 = 16'h5555;
    defparam add_6095_28.INIT1 = 16'h5555;
    defparam add_6095_28.INJECT1_0 = "NO";
    defparam add_6095_28.INJECT1_1 = "NO";
    CCU2D add_6095_26 (.A0(index[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8753), .COUT(n8754));
    defparam add_6095_26.INIT0 = 16'h5555;
    defparam add_6095_26.INIT1 = 16'h5555;
    defparam add_6095_26.INJECT1_0 = "NO";
    defparam add_6095_26.INJECT1_1 = "NO";
    LUT4 i6821_4_lut (.A(n2351), .B(n2491), .C(state[0]), .D(RX_RDY), 
         .Z(sclk_c_enable_65)) /* synthesis lut_function=(!((B (C+!(D))+!B (C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i6821_4_lut.init = 16'h0a02;
    CCU2D add_6095_24 (.A0(index[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8752), .COUT(n8753));
    defparam add_6095_24.INIT0 = 16'h5555;
    defparam add_6095_24.INIT1 = 16'h5555;
    defparam add_6095_24.INJECT1_0 = "NO";
    defparam add_6095_24.INJECT1_1 = "NO";
    CCU2D add_6095_22 (.A0(index[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8751), .COUT(n8752));
    defparam add_6095_22.INIT0 = 16'h5555;
    defparam add_6095_22.INIT1 = 16'h5555;
    defparam add_6095_22.INJECT1_0 = "NO";
    defparam add_6095_22.INJECT1_1 = "NO";
    FD1P3IX WrData_i2 (.D(WrData_23__N_668[2]), .SP(sclk_c_enable_236), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i2.GSR = "ENABLED";
    FD1P3IX WrData_i3 (.D(WrData_23__N_668[3]), .SP(sclk_c_enable_236), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i3.GSR = "ENABLED";
    FD1P3IX WrData_i4 (.D(WrData_23__N_668[4]), .SP(sclk_c_enable_236), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i4.GSR = "ENABLED";
    FD1P3IX WrData_i5 (.D(WrData_23__N_668[5]), .SP(sclk_c_enable_236), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i5.GSR = "ENABLED";
    FD1P3IX WrData_i6 (.D(WrData_23__N_668[6]), .SP(sclk_c_enable_236), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i6.GSR = "ENABLED";
    FD1P3IX WrData_i7 (.D(WrData_23__N_668[7]), .SP(sclk_c_enable_236), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i7.GSR = "ENABLED";
    FD1P3IX WrData_i8 (.D(WrData_23__N_668[8]), .SP(sclk_c_enable_244), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(Data[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i8.GSR = "ENABLED";
    FD1P3IX WrData_i9 (.D(WrData_23__N_668[9]), .SP(sclk_c_enable_244), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(Data[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i9.GSR = "ENABLED";
    FD1P3IX WrData_i10 (.D(WrData_23__N_668[10]), .SP(sclk_c_enable_244), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i10.GSR = "ENABLED";
    FD1P3IX WrData_i11 (.D(WrData_23__N_668[11]), .SP(sclk_c_enable_244), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i11.GSR = "ENABLED";
    FD1P3IX WrData_i12 (.D(WrData_23__N_668[12]), .SP(sclk_c_enable_244), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[12])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i12.GSR = "ENABLED";
    FD1P3IX WrData_i13 (.D(WrData_23__N_668[13]), .SP(sclk_c_enable_244), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[13])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i13.GSR = "ENABLED";
    FD1P3IX WrData_i14 (.D(WrData_23__N_668[14]), .SP(sclk_c_enable_244), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[14])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i14.GSR = "ENABLED";
    FD1P3IX WrData_i15 (.D(WrData_23__N_668[15]), .SP(sclk_c_enable_244), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(Data[15])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i15.GSR = "ENABLED";
    FD1P3IX WrData_i16 (.D(WrData_23__N_668[16]), .SP(sclk_c_enable_252), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(Data[16])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i16.GSR = "ENABLED";
    FD1P3IX WrData_i17 (.D(WrData_23__N_668[17]), .SP(sclk_c_enable_252), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(Data[17])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i17.GSR = "ENABLED";
    FD1P3IX WrData_i18 (.D(WrData_23__N_668[18]), .SP(sclk_c_enable_252), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(Data[18])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i18.GSR = "ENABLED";
    FD1P3IX WrData_i19 (.D(WrData_23__N_668[19]), .SP(sclk_c_enable_252), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(Data[19])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i19.GSR = "ENABLED";
    FD1P3IX WrData_i20 (.D(WrData_23__N_668[20]), .SP(sclk_c_enable_252), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(Data[20])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i20.GSR = "ENABLED";
    FD1P3IX WrData_i21 (.D(WrData_23__N_668[21]), .SP(sclk_c_enable_252), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(Data[21])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i21.GSR = "ENABLED";
    FD1P3IX WrData_i22 (.D(WrData_23__N_668[22]), .SP(sclk_c_enable_252), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(Data[22])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i22.GSR = "ENABLED";
    FD1P3IX WrData_i23 (.D(WrData_23__N_668[23]), .SP(sclk_c_enable_252), 
            .CD(sclk_c_enable_191), .CK(sclk_c), .Q(Data[23])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrData_i23.GSR = "ENABLED";
    FD1P3IX WrAddr_i1 (.D(WrAddr_8__N_692[1]), .SP(sclk_c_enable_259), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(WrAddress[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrAddr_i1.GSR = "ENABLED";
    FD1P3IX WrAddr_i2 (.D(WrAddr_8__N_692[2]), .SP(sclk_c_enable_259), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(WrAddress[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrAddr_i2.GSR = "ENABLED";
    FD1P3IX WrAddr_i3 (.D(WrAddr_8__N_692[3]), .SP(sclk_c_enable_259), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(WrAddress[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrAddr_i3.GSR = "ENABLED";
    FD1P3IX WrAddr_i4 (.D(WrAddr_8__N_692[4]), .SP(sclk_c_enable_259), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(WrAddress[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrAddr_i4.GSR = "ENABLED";
    FD1P3IX WrAddr_i5 (.D(WrAddr_8__N_692[5]), .SP(sclk_c_enable_259), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(WrAddress[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrAddr_i5.GSR = "ENABLED";
    FD1P3IX WrAddr_i6 (.D(WrAddr_8__N_692[6]), .SP(sclk_c_enable_259), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(WrAddress[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrAddr_i6.GSR = "ENABLED";
    FD1P3IX WrAddr_i7 (.D(WrAddr_8__N_692[7]), .SP(sclk_c_enable_259), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(WrAddress[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam WrAddr_i7.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i1 (.D(n1131[1]), .SP(sclk_c_enable_290), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(spi_byte_counter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i1.GSR = "ENABLED";
    CCU2D add_6095_20 (.A0(index[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8750), .COUT(n8751));
    defparam add_6095_20.INIT0 = 16'h5555;
    defparam add_6095_20.INIT1 = 16'h5555;
    defparam add_6095_20.INJECT1_0 = "NO";
    defparam add_6095_20.INJECT1_1 = "NO";
    CCU2D add_6095_18 (.A0(index[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8749), .COUT(n8750));
    defparam add_6095_18.INIT0 = 16'h5555;
    defparam add_6095_18.INIT1 = 16'h5555;
    defparam add_6095_18.INJECT1_0 = "NO";
    defparam add_6095_18.INJECT1_1 = "NO";
    CCU2D add_110_31 (.A0(spi_byte_counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8612), .COUT(n8613), .S0(n726[29]), .S1(n726[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_31.INIT0 = 16'h5aaa;
    defparam add_110_31.INIT1 = 16'h5aaa;
    defparam add_110_31.INJECT1_0 = "NO";
    defparam add_110_31.INJECT1_1 = "NO";
    CCU2D add_6095_16 (.A0(index[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8748), .COUT(n8749));
    defparam add_6095_16.INIT0 = 16'h5555;
    defparam add_6095_16.INIT1 = 16'h5555;
    defparam add_6095_16.INJECT1_0 = "NO";
    defparam add_6095_16.INJECT1_1 = "NO";
    CCU2D add_6095_14 (.A0(index[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8747), .COUT(n8748));
    defparam add_6095_14.INIT0 = 16'h5555;
    defparam add_6095_14.INIT1 = 16'h5555;
    defparam add_6095_14.INJECT1_0 = "NO";
    defparam add_6095_14.INJECT1_1 = "NO";
    FD1P3IX spi_byte_counter_i2 (.D(n1131[2]), .SP(sclk_c_enable_290), .CD(sclk_c_enable_191), 
            .CK(sclk_c), .Q(spi_byte_counter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i2.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i3 (.D(n1131[3]), .SP(sclk_c_enable_290), .CD(sclk_c_enable_211), 
            .CK(sclk_c), .Q(spi_byte_counter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i3.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i4 (.D(n1131[4]), .SP(sclk_c_enable_290), .CD(sclk_c_enable_211), 
            .CK(sclk_c), .Q(spi_byte_counter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i4.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i5 (.D(n1131[5]), .SP(sclk_c_enable_290), .CD(sclk_c_enable_211), 
            .CK(sclk_c), .Q(spi_byte_counter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i5.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i6 (.D(n1131[6]), .SP(sclk_c_enable_290), .CD(sclk_c_enable_211), 
            .CK(sclk_c), .Q(spi_byte_counter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i6.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i7 (.D(n1131[7]), .SP(sclk_c_enable_290), .CD(sclk_c_enable_211), 
            .CK(sclk_c), .Q(spi_byte_counter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i7.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i8 (.D(n1131[8]), .SP(sclk_c_enable_290), .CD(sclk_c_enable_211), 
            .CK(sclk_c), .Q(spi_byte_counter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i8.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i9 (.D(n1131[9]), .SP(sclk_c_enable_290), .CD(sclk_c_enable_211), 
            .CK(sclk_c), .Q(spi_byte_counter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i9.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i10 (.D(n1131[10]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i10.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i11 (.D(n1131[11]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i11.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i12 (.D(n1131[12]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i12.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i13 (.D(n1131[13]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i13.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i14 (.D(n1131[14]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i14.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i15 (.D(n1131[15]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i15.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i16 (.D(n1131[16]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i16.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i17 (.D(n1131[17]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i17.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i18 (.D(n1131[18]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i18.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i19 (.D(n1131[19]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i19.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i20 (.D(n1131[20]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i20.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i21 (.D(n1131[21]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i21.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i22 (.D(n1131[22]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i22.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i23 (.D(n1131[23]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i23.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i24 (.D(n1131[24]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i24.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i25 (.D(n1131[25]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i25.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i26 (.D(n1131[26]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i26.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i27 (.D(n1131[27]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i27.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i28 (.D(n1131[28]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i28.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i29 (.D(n1131[29]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i29.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i30 (.D(n1131[30]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i30.GSR = "ENABLED";
    FD1P3IX spi_byte_counter_i31 (.D(n1131[31]), .SP(sclk_c_enable_290), 
            .CD(sclk_c_enable_211), .CK(sclk_c), .Q(spi_byte_counter[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam spi_byte_counter_i31.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_116 (.A(sclk_c_enable_65), .B(n10007), .Z(sclk_c_enable_39)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_116.init = 16'heeee;
    LUT4 mux_143_rep_1_i7_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[6]), 
         .D(n1131[6]), .Z(spi_byte_counter_31__N_737[6])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i7_3_lut_4_lut.init = 16'hf870;
    CCU2D add_6095_12 (.A0(index[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8746), .COUT(n8747));
    defparam add_6095_12.INIT0 = 16'h5555;
    defparam add_6095_12.INIT1 = 16'h5555;
    defparam add_6095_12.INJECT1_0 = "NO";
    defparam add_6095_12.INJECT1_1 = "NO";
    CCU2D add_6095_10 (.A0(index[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8745), .COUT(n8746));
    defparam add_6095_10.INIT0 = 16'h5555;
    defparam add_6095_10.INIT1 = 16'h5555;
    defparam add_6095_10.INJECT1_0 = "NO";
    defparam add_6095_10.INJECT1_1 = "NO";
    CCU2D add_6095_8 (.A0(index[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8744), 
          .COUT(n8745));
    defparam add_6095_8.INIT0 = 16'h5555;
    defparam add_6095_8.INIT1 = 16'h5555;
    defparam add_6095_8.INJECT1_0 = "NO";
    defparam add_6095_8.INJECT1_1 = "NO";
    CCU2D add_6095_6 (.A0(index[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8743), 
          .COUT(n8744));
    defparam add_6095_6.INIT0 = 16'h5555;
    defparam add_6095_6.INIT1 = 16'h5555;
    defparam add_6095_6.INJECT1_0 = "NO";
    defparam add_6095_6.INJECT1_1 = "NO";
    CCU2D add_6095_4 (.A0(index[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8742), 
          .COUT(n8743));
    defparam add_6095_4.INIT0 = 16'h5aaa;
    defparam add_6095_4.INIT1 = 16'h5555;
    defparam add_6095_4.INJECT1_0 = "NO";
    defparam add_6095_4.INJECT1_1 = "NO";
    CCU2D add_6095_2 (.A0(index[1]), .B0(index[0]), .C0(GND_net), .D0(GND_net), 
          .A1(index[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8742));
    defparam add_6095_2.INIT0 = 16'h1000;
    defparam add_6095_2.INIT1 = 16'h5555;
    defparam add_6095_2.INJECT1_0 = "NO";
    defparam add_6095_2.INJECT1_1 = "NO";
    LUT4 mux_143_rep_1_i25_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[24]), 
         .D(n1131[24]), .Z(spi_byte_counter_31__N_737[24])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i25_3_lut_4_lut.init = 16'hf870;
    CCU2D add_110_29 (.A0(spi_byte_counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8611), .COUT(n8612), .S0(n726[27]), .S1(n726[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_29.INIT0 = 16'h5aaa;
    defparam add_110_29.INIT1 = 16'h5aaa;
    defparam add_110_29.INJECT1_0 = "NO";
    defparam add_110_29.INJECT1_1 = "NO";
    CCU2D add_110_27 (.A0(spi_byte_counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8610), .COUT(n8611), .S0(n726[25]), .S1(n726[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_27.INIT0 = 16'h5aaa;
    defparam add_110_27.INIT1 = 16'h5aaa;
    defparam add_110_27.INJECT1_0 = "NO";
    defparam add_110_27.INJECT1_1 = "NO";
    CCU2D add_110_25 (.A0(spi_byte_counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8609), .COUT(n8610), .S0(n726[23]), .S1(n726[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_25.INIT0 = 16'h5aaa;
    defparam add_110_25.INIT1 = 16'h5aaa;
    defparam add_110_25.INJECT1_0 = "NO";
    defparam add_110_25.INJECT1_1 = "NO";
    CCU2D add_110_23 (.A0(spi_byte_counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8608), .COUT(n8609), .S0(n726[21]), .S1(n726[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_23.INIT0 = 16'h5aaa;
    defparam add_110_23.INIT1 = 16'h5aaa;
    defparam add_110_23.INJECT1_0 = "NO";
    defparam add_110_23.INJECT1_1 = "NO";
    CCU2D add_110_21 (.A0(spi_byte_counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8607), .COUT(n8608), .S0(n726[19]), .S1(n726[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_21.INIT0 = 16'h5aaa;
    defparam add_110_21.INIT1 = 16'h5aaa;
    defparam add_110_21.INJECT1_0 = "NO";
    defparam add_110_21.INJECT1_1 = "NO";
    LUT4 mux_143_rep_1_i26_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[25]), 
         .D(n1131[25]), .Z(spi_byte_counter_31__N_737[25])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i26_3_lut_4_lut.init = 16'hf870;
    LUT4 i1_4_lut_adj_117 (.A(n2456), .B(n6488), .C(n77), .D(n765[2]), 
         .Z(spi_byte_timeout_31__N_572[2])) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(30[12:17])
    defparam i1_4_lut_adj_117.init = 16'hcfce;
    LUT4 i5486_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[23]), 
         .Z(n1329[23])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5486_2_lut_4_lut.init = 16'h0100;
    LUT4 mux_143_rep_1_i23_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[22]), 
         .D(n1131[22]), .Z(spi_byte_counter_31__N_737[22])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i23_3_lut_4_lut.init = 16'hf870;
    LUT4 i4404_3_lut (.A(RX_RDY), .B(state[0]), .C(n10007), .Z(n6488)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(30[12:17])
    defparam i4404_3_lut.init = 16'h3a3a;
    LUT4 mux_143_rep_1_i24_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[23]), 
         .D(n1131[23]), .Z(spi_byte_counter_31__N_737[23])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i24_3_lut_4_lut.init = 16'hf870;
    LUT4 i5380_2_lut (.A(n726[13]), .B(RX_RDY), .Z(n1131[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5380_2_lut.init = 16'h8888;
    LUT4 i92_2_lut (.A(n10007), .B(n2491), .Z(n77)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i92_2_lut.init = 16'heeee;
    LUT4 i5379_2_lut (.A(n726[12]), .B(RX_RDY), .Z(n1131[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5379_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_118 (.A(n2491), .B(n6488), .C(n10007), .D(n3381), 
         .Z(spi_byte_timeout_31__N_572[3])) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(30[12:17])
    defparam i1_4_lut_adj_118.init = 16'hcdcc;
    LUT4 i1367_2_lut (.A(n2456), .B(n765[3]), .Z(n3381)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i1367_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_119 (.A(n2456), .B(n6488), .C(n77), .D(n765[4]), 
         .Z(spi_byte_timeout_31__N_572[4])) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(30[12:17])
    defparam i1_4_lut_adj_119.init = 16'hcfce;
    CCU2D add_110_19 (.A0(spi_byte_counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8606), .COUT(n8607), .S0(n726[17]), .S1(n726[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_19.INIT0 = 16'h5aaa;
    defparam add_110_19.INIT1 = 16'h5aaa;
    defparam add_110_19.INJECT1_0 = "NO";
    defparam add_110_19.INJECT1_1 = "NO";
    LUT4 i5378_2_lut (.A(n726[11]), .B(RX_RDY), .Z(n1131[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5378_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_120 (.A(n2456), .B(n6488), .C(n77), .D(n765[5]), 
         .Z(spi_byte_timeout_31__N_572[5])) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(30[12:17])
    defparam i1_4_lut_adj_120.init = 16'hcfce;
    LUT4 i5377_2_lut (.A(n726[10]), .B(RX_RDY), .Z(n1131[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5377_2_lut.init = 16'h8888;
    CCU2D add_110_17 (.A0(spi_byte_counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8605), .COUT(n8606), .S0(n726[15]), .S1(n726[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_17.INIT0 = 16'h5aaa;
    defparam add_110_17.INIT1 = 16'h5aaa;
    defparam add_110_17.INJECT1_0 = "NO";
    defparam add_110_17.INJECT1_1 = "NO";
    CCU2D add_110_15 (.A0(spi_byte_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8604), .COUT(n8605), .S0(n726[13]), .S1(n726[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_15.INIT0 = 16'h5aaa;
    defparam add_110_15.INIT1 = 16'h5aaa;
    defparam add_110_15.INJECT1_0 = "NO";
    defparam add_110_15.INJECT1_1 = "NO";
    LUT4 i5376_2_lut (.A(n726[9]), .B(RX_RDY), .Z(n1131[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5376_2_lut.init = 16'h8888;
    LUT4 i5375_2_lut (.A(n726[8]), .B(RX_RDY), .Z(n1131[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5375_2_lut.init = 16'h8888;
    CCU2D add_110_13 (.A0(spi_byte_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8603), .COUT(n8604), .S0(n726[11]), .S1(n726[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_13.INIT0 = 16'h5aaa;
    defparam add_110_13.INIT1 = 16'h5aaa;
    defparam add_110_13.INJECT1_0 = "NO";
    defparam add_110_13.INJECT1_1 = "NO";
    LUT4 mux_143_rep_1_i21_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[20]), 
         .D(n1131[20]), .Z(spi_byte_counter_31__N_737[20])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i21_3_lut_4_lut.init = 16'hf870;
    LUT4 mux_143_rep_1_i22_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[21]), 
         .D(n1131[21]), .Z(spi_byte_counter_31__N_737[21])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i22_3_lut_4_lut.init = 16'hf870;
    LUT4 i5374_2_lut (.A(n726[7]), .B(RX_RDY), .Z(n1131[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5374_2_lut.init = 16'h8888;
    LUT4 i5373_2_lut (.A(n726[6]), .B(RX_RDY), .Z(n1131[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5373_2_lut.init = 16'h8888;
    CCU2D add_110_11 (.A0(spi_byte_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8602), .COUT(n8603), .S0(n726[9]), .S1(n726[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_11.INIT0 = 16'h5aaa;
    defparam add_110_11.INIT1 = 16'h5aaa;
    defparam add_110_11.INJECT1_0 = "NO";
    defparam add_110_11.INJECT1_1 = "NO";
    LUT4 mux_143_rep_1_i19_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[18]), 
         .D(n1131[18]), .Z(spi_byte_counter_31__N_737[18])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i19_3_lut_4_lut.init = 16'hf870;
    LUT4 i5372_2_lut (.A(n726[5]), .B(RX_RDY), .Z(n1131[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5372_2_lut.init = 16'h8888;
    CCU2D add_110_9 (.A0(spi_byte_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8601), .COUT(n8602), .S0(n726[7]), .S1(n726[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_9.INIT0 = 16'h5aaa;
    defparam add_110_9.INIT1 = 16'h5aaa;
    defparam add_110_9.INJECT1_0 = "NO";
    defparam add_110_9.INJECT1_1 = "NO";
    CCU2D add_604_33 (.A0(delay_counter[31]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8677), .S0(delay_counter_31__N_636[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_33.INIT0 = 16'h5999;
    defparam add_604_33.INIT1 = 16'h0000;
    defparam add_604_33.INJECT1_0 = "NO";
    defparam add_604_33.INJECT1_1 = "NO";
    CCU2D add_604_31 (.A0(delay_counter[29]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[30]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8676), .COUT(n8677), .S0(delay_counter_31__N_636[29]), 
          .S1(delay_counter_31__N_636[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_31.INIT0 = 16'h5999;
    defparam add_604_31.INIT1 = 16'h5999;
    defparam add_604_31.INJECT1_0 = "NO";
    defparam add_604_31.INJECT1_1 = "NO";
    CCU2D add_604_29 (.A0(delay_counter[27]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[28]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8675), .COUT(n8676), .S0(delay_counter_31__N_636[27]), 
          .S1(delay_counter_31__N_636[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_29.INIT0 = 16'h5999;
    defparam add_604_29.INIT1 = 16'h5999;
    defparam add_604_29.INJECT1_0 = "NO";
    defparam add_604_29.INJECT1_1 = "NO";
    CCU2D add_604_27 (.A0(delay_counter[25]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[26]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8674), .COUT(n8675), .S0(delay_counter_31__N_636[25]), 
          .S1(delay_counter_31__N_636[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_27.INIT0 = 16'h5999;
    defparam add_604_27.INIT1 = 16'h5999;
    defparam add_604_27.INJECT1_0 = "NO";
    defparam add_604_27.INJECT1_1 = "NO";
    CCU2D add_604_25 (.A0(delay_counter[23]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[24]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8673), .COUT(n8674), .S0(delay_counter_31__N_636[23]), 
          .S1(delay_counter_31__N_636[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_25.INIT0 = 16'h5999;
    defparam add_604_25.INIT1 = 16'h5999;
    defparam add_604_25.INJECT1_0 = "NO";
    defparam add_604_25.INJECT1_1 = "NO";
    LUT4 i5371_2_lut (.A(n726[4]), .B(RX_RDY), .Z(n1131[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5371_2_lut.init = 16'h8888;
    CCU2D add_604_23 (.A0(delay_counter[21]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[22]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8672), .COUT(n8673), .S0(delay_counter_31__N_636[21]), 
          .S1(delay_counter_31__N_636[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_23.INIT0 = 16'h5999;
    defparam add_604_23.INIT1 = 16'h5999;
    defparam add_604_23.INJECT1_0 = "NO";
    defparam add_604_23.INJECT1_1 = "NO";
    CCU2D add_604_21 (.A0(delay_counter[19]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[20]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8671), .COUT(n8672), .S0(delay_counter_31__N_636[19]), 
          .S1(delay_counter_31__N_636[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_21.INIT0 = 16'h5999;
    defparam add_604_21.INIT1 = 16'h5999;
    defparam add_604_21.INJECT1_0 = "NO";
    defparam add_604_21.INJECT1_1 = "NO";
    CCU2D add_604_19 (.A0(delay_counter[17]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[18]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8670), .COUT(n8671), .S0(delay_counter_31__N_636[17]), 
          .S1(delay_counter_31__N_636[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_19.INIT0 = 16'h5999;
    defparam add_604_19.INIT1 = 16'h5999;
    defparam add_604_19.INJECT1_0 = "NO";
    defparam add_604_19.INJECT1_1 = "NO";
    CCU2D add_604_17 (.A0(delay_counter[15]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[16]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8669), .COUT(n8670), .S0(delay_counter_31__N_636[15]), 
          .S1(delay_counter_31__N_636[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_17.INIT0 = 16'h5999;
    defparam add_604_17.INIT1 = 16'h5999;
    defparam add_604_17.INJECT1_0 = "NO";
    defparam add_604_17.INJECT1_1 = "NO";
    CCU2D add_604_15 (.A0(delay_counter[13]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[14]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8668), .COUT(n8669), .S0(delay_counter_31__N_636[13]), 
          .S1(delay_counter_31__N_636[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_15.INIT0 = 16'h5999;
    defparam add_604_15.INIT1 = 16'h5999;
    defparam add_604_15.INJECT1_0 = "NO";
    defparam add_604_15.INJECT1_1 = "NO";
    CCU2D add_604_13 (.A0(delay_counter[11]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[12]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8667), .COUT(n8668), .S0(delay_counter_31__N_636[11]), 
          .S1(delay_counter_31__N_636[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_13.INIT0 = 16'h5999;
    defparam add_604_13.INIT1 = 16'h5999;
    defparam add_604_13.INJECT1_0 = "NO";
    defparam add_604_13.INJECT1_1 = "NO";
    CCU2D add_604_11 (.A0(delay_counter[9]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[10]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8666), .COUT(n8667), .S0(delay_counter_31__N_636[9]), 
          .S1(delay_counter_31__N_636[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_11.INIT0 = 16'h5999;
    defparam add_604_11.INIT1 = 16'h5999;
    defparam add_604_11.INJECT1_0 = "NO";
    defparam add_604_11.INJECT1_1 = "NO";
    CCU2D add_604_9 (.A0(delay_counter[7]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[8]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8665), .COUT(n8666), .S0(delay_counter_31__N_636[7]), 
          .S1(delay_counter_31__N_636[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_9.INIT0 = 16'h5999;
    defparam add_604_9.INIT1 = 16'h5999;
    defparam add_604_9.INJECT1_0 = "NO";
    defparam add_604_9.INJECT1_1 = "NO";
    LUT4 i5370_2_lut (.A(n726[3]), .B(RX_RDY), .Z(n1131[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5370_2_lut.init = 16'h8888;
    CCU2D add_604_7 (.A0(delay_counter[5]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[6]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8664), .COUT(n8665), .S0(delay_counter_31__N_636[5]), 
          .S1(delay_counter_31__N_636[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_7.INIT0 = 16'h5999;
    defparam add_604_7.INIT1 = 16'h5999;
    defparam add_604_7.INJECT1_0 = "NO";
    defparam add_604_7.INJECT1_1 = "NO";
    CCU2D add_604_5 (.A0(delay_counter[3]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[4]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8663), .COUT(n8664), .S0(delay_counter_31__N_636[3]), 
          .S1(delay_counter_31__N_636[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_5.INIT0 = 16'h5999;
    defparam add_604_5.INIT1 = 16'h5999;
    defparam add_604_5.INJECT1_0 = "NO";
    defparam add_604_5.INJECT1_1 = "NO";
    CCU2D add_604_3 (.A0(delay_counter[1]), .B0(n2561), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[2]), .B1(n2561), .C1(GND_net), 
          .D1(GND_net), .CIN(n8662), .COUT(n8663), .S0(delay_counter_31__N_636[1]), 
          .S1(delay_counter_31__N_636[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_3.INIT0 = 16'h5999;
    defparam add_604_3.INIT1 = 16'h5999;
    defparam add_604_3.INJECT1_0 = "NO";
    defparam add_604_3.INJECT1_1 = "NO";
    FD1P3IX index_i29 (.D(index_31__N_810[29]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i29.GSR = "ENABLED";
    FD1P3IX index_i28 (.D(index_31__N_810[28]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i28.GSR = "ENABLED";
    CCU2D add_604_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_counter[0]), .B1(n2561), .C1(GND_net), .D1(GND_net), 
          .COUT(n8662), .S1(delay_counter_31__N_636[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(87[5] 92[12])
    defparam add_604_1.INIT0 = 16'hF000;
    defparam add_604_1.INIT1 = 16'h5999;
    defparam add_604_1.INJECT1_0 = "NO";
    defparam add_604_1.INJECT1_1 = "NO";
    FD1P3IX index_i27 (.D(index_31__N_810[27]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i27.GSR = "ENABLED";
    CCU2D sub_621_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8661), .S0(n2421));
    defparam sub_621_add_2_cout.INIT0 = 16'h0000;
    defparam sub_621_add_2_cout.INIT1 = 16'h0000;
    defparam sub_621_add_2_cout.INJECT1_0 = "NO";
    defparam sub_621_add_2_cout.INJECT1_1 = "NO";
    LUT4 i11_4_lut (.A(index[8]), .B(DATA_OUT[0]), .C(n2351), .D(n9392), 
         .Z(WrAddr_8__N_692[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(108[12:18])
    defparam i11_4_lut.init = 16'hca0a;
    CCU2D sub_621_add_2_32 (.A0(spi_byte_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8660), .COUT(n8661));
    defparam sub_621_add_2_32.INIT0 = 16'h5555;
    defparam sub_621_add_2_32.INIT1 = 16'hf555;
    defparam sub_621_add_2_32.INJECT1_0 = "NO";
    defparam sub_621_add_2_32.INJECT1_1 = "NO";
    CCU2D sub_621_add_2_30 (.A0(spi_byte_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8659), .COUT(n8660));
    defparam sub_621_add_2_30.INIT0 = 16'h5555;
    defparam sub_621_add_2_30.INIT1 = 16'h5555;
    defparam sub_621_add_2_30.INJECT1_0 = "NO";
    defparam sub_621_add_2_30.INJECT1_1 = "NO";
    CCU2D sub_621_add_2_28 (.A0(spi_byte_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8658), .COUT(n8659));
    defparam sub_621_add_2_28.INIT0 = 16'h5555;
    defparam sub_621_add_2_28.INIT1 = 16'h5555;
    defparam sub_621_add_2_28.INJECT1_0 = "NO";
    defparam sub_621_add_2_28.INJECT1_1 = "NO";
    CCU2D add_110_7 (.A0(spi_byte_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8600), .COUT(n8601), .S0(n726[5]), .S1(n726[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_7.INIT0 = 16'h5aaa;
    defparam add_110_7.INIT1 = 16'h5aaa;
    defparam add_110_7.INJECT1_0 = "NO";
    defparam add_110_7.INJECT1_1 = "NO";
    LUT4 i980_2_lut_rep_208 (.A(index[1]), .B(index[2]), .Z(n9910)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam i980_2_lut_rep_208.init = 16'heeee;
    FD1P3IX index_i26 (.D(index_31__N_810[26]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i26.GSR = "ENABLED";
    LUT4 mux_143_rep_1_i3_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[2]), 
         .D(n1131[2]), .Z(spi_byte_counter_31__N_737[2])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i3_3_lut_4_lut.init = 16'hf870;
    LUT4 i5369_2_lut (.A(n726[2]), .B(RX_RDY), .Z(n1131[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5369_2_lut.init = 16'h8888;
    LUT4 i5617_3_lut_4_lut (.A(index[1]), .B(index[2]), .C(index[3]), 
         .D(index[0]), .Z(n30[20])) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam i5617_3_lut_4_lut.init = 16'h1001;
    LUT4 mux_143_rep_1_i8_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[7]), 
         .D(n1131[7]), .Z(spi_byte_counter_31__N_737[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i8_3_lut_4_lut.init = 16'hf870;
    LUT4 i5368_2_lut (.A(n726[1]), .B(RX_RDY), .Z(n1131[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5368_2_lut.init = 16'h8888;
    LUT4 i1_3_lut (.A(state[0]), .B(n6502), .C(n10007), .Z(sclk_c_enable_212)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 mux_143_rep_1_i4_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[3]), 
         .D(n1131[3]), .Z(spi_byte_counter_31__N_737[3])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i4_3_lut_4_lut.init = 16'hf870;
    LUT4 mux_143_rep_1_i5_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[4]), 
         .D(n1131[4]), .Z(spi_byte_counter_31__N_737[4])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i5_3_lut_4_lut.init = 16'hf870;
    LUT4 i2_2_lut_rep_198_3_lut (.A(index[1]), .B(index[2]), .C(index[3]), 
         .Z(n9900)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam i2_2_lut_rep_198_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_209 (.A(index[1]), .B(index[2]), .Z(n9911)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam i1_2_lut_rep_209.init = 16'h2222;
    LUT4 i5396_2_lut (.A(n726[29]), .B(RX_RDY), .Z(n1131[29])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5396_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_4_lut (.A(state[0]), .B(n10007), .C(n2351), .D(n9392), 
         .Z(sclk_c_enable_225)) /* synthesis lut_function=(A (B)+!A !(B+!(C (D)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h9888;
    LUT4 i1_2_lut_rep_200_3_lut (.A(index[1]), .B(index[2]), .C(index[3]), 
         .Z(n9902)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam i1_2_lut_rep_200_3_lut.init = 16'h0202;
    FD1P3IX index_i25 (.D(index_31__N_810[25]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i25.GSR = "ENABLED";
    FD1P3IX index_i24 (.D(index_31__N_810[24]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i24.GSR = "ENABLED";
    FD1P3IX index_i23 (.D(index_31__N_810[23]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i23.GSR = "ENABLED";
    FD1P3IX index_i22 (.D(index_31__N_810[22]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i22.GSR = "ENABLED";
    FD1P3AX delay_counter_i31 (.D(delay_counter_31__N_508[31]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i31.GSR = "ENABLED";
    FD1P3AX delay_counter_i30 (.D(delay_counter_31__N_508[30]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i30.GSR = "ENABLED";
    FD1P3AX delay_counter_i29 (.D(delay_counter_31__N_508[29]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i29.GSR = "ENABLED";
    FD1P3AX delay_counter_i28 (.D(delay_counter_31__N_508[28]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i28.GSR = "ENABLED";
    FD1P3AX delay_counter_i27 (.D(delay_counter_31__N_508[27]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i27.GSR = "ENABLED";
    FD1P3AX delay_counter_i26 (.D(delay_counter_31__N_508[26]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i26.GSR = "ENABLED";
    FD1P3AX delay_counter_i25 (.D(delay_counter_31__N_508[25]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i25.GSR = "ENABLED";
    FD1P3AX delay_counter_i24 (.D(delay_counter_31__N_508[24]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i24.GSR = "ENABLED";
    FD1P3AX delay_counter_i23 (.D(delay_counter_31__N_508[23]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i23.GSR = "ENABLED";
    CCU2D sub_621_add_2_26 (.A0(spi_byte_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8657), .COUT(n8658));
    defparam sub_621_add_2_26.INIT0 = 16'h5555;
    defparam sub_621_add_2_26.INIT1 = 16'h5555;
    defparam sub_621_add_2_26.INJECT1_0 = "NO";
    defparam sub_621_add_2_26.INJECT1_1 = "NO";
    CCU2D sub_621_add_2_24 (.A0(spi_byte_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8656), .COUT(n8657));
    defparam sub_621_add_2_24.INIT0 = 16'h5555;
    defparam sub_621_add_2_24.INIT1 = 16'h5555;
    defparam sub_621_add_2_24.INJECT1_0 = "NO";
    defparam sub_621_add_2_24.INJECT1_1 = "NO";
    CCU2D sub_621_add_2_22 (.A0(spi_byte_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8655), .COUT(n8656));
    defparam sub_621_add_2_22.INIT0 = 16'h5555;
    defparam sub_621_add_2_22.INIT1 = 16'h5555;
    defparam sub_621_add_2_22.INJECT1_0 = "NO";
    defparam sub_621_add_2_22.INJECT1_1 = "NO";
    CCU2D add_110_5 (.A0(spi_byte_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8599), .COUT(n8600), .S0(n726[3]), .S1(n726[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_5.INIT0 = 16'h5aaa;
    defparam add_110_5.INIT1 = 16'h5aaa;
    defparam add_110_5.INJECT1_0 = "NO";
    defparam add_110_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_121 (.A(fb[1]), .B(fb[2]), .C(fb[0]), .D(fb[3]), 
         .Z(n6502)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_121.init = 16'h0002;
    LUT4 i1_2_lut_rep_210 (.A(n10007), .B(state[0]), .Z(n9912)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam i1_2_lut_rep_210.init = 16'hbbbb;
    LUT4 index_1__bdd_4_lut (.A(index[1]), .B(index[3]), .C(index[0]), 
         .D(index[2]), .Z(n30[19])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+(D))))) */ ;
    defparam index_1__bdd_4_lut.init = 16'h2001;
    CCU2D add_110_3 (.A0(spi_byte_counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8598), .COUT(n8599), .S0(n726[1]), .S1(n726[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_3.INIT0 = 16'h5aaa;
    defparam add_110_3.INIT1 = 16'h5aaa;
    defparam add_110_3.INJECT1_0 = "NO";
    defparam add_110_3.INJECT1_1 = "NO";
    LUT4 mux_38_Mux_1_i15_4_lut_4_lut_4_lut (.A(index[0]), .B(index[1]), 
         .C(index[2]), .D(index[3]), .Z(n30[4])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam mux_38_Mux_1_i15_4_lut_4_lut_4_lut.init = 16'h0204;
    CCU2D sub_621_add_2_20 (.A0(spi_byte_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8654), .COUT(n8655));
    defparam sub_621_add_2_20.INIT0 = 16'h5555;
    defparam sub_621_add_2_20.INIT1 = 16'h5555;
    defparam sub_621_add_2_20.INJECT1_0 = "NO";
    defparam sub_621_add_2_20.INJECT1_1 = "NO";
    CCU2D add_110_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(spi_byte_counter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8598), .S1(n726[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(72[26:42])
    defparam add_110_1.INIT0 = 16'hF000;
    defparam add_110_1.INIT1 = 16'h5555;
    defparam add_110_1.INJECT1_0 = "NO";
    defparam add_110_1.INJECT1_1 = "NO";
    FD1P3AX delay_counter_i22 (.D(delay_counter_31__N_508[22]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i22.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_2_lut (.A(n10007), .B(state[0]), .Z(sclk_c_enable_204)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam i1_2_lut_3_lut_2_lut.init = 16'h9999;
    CCU2D sub_621_add_2_18 (.A0(spi_byte_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8653), .COUT(n8654));
    defparam sub_621_add_2_18.INIT0 = 16'h5555;
    defparam sub_621_add_2_18.INIT1 = 16'h5555;
    defparam sub_621_add_2_18.INJECT1_0 = "NO";
    defparam sub_621_add_2_18.INJECT1_1 = "NO";
    FD1P3AX delay_counter_i21 (.D(delay_counter_31__N_508[21]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i21.GSR = "ENABLED";
    FD1P3AX delay_counter_i20 (.D(delay_counter_31__N_508[20]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i20.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_122 (.A(n10007), .B(state[0]), .C(n2351), 
         .D(n9090), .Z(sclk_c_enable_236)) /* synthesis lut_function=(A ((D)+!C)+!A !(B+!((D)+!C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam i1_3_lut_4_lut_adj_122.init = 16'hbb0b;
    FD1P3AX delay_counter_i19 (.D(delay_counter_31__N_508[19]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i19.GSR = "ENABLED";
    LUT4 i3449_1_lut_rep_211 (.A(state[0]), .Z(n9913)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i3449_1_lut_rep_211.init = 16'h5555;
    LUT4 i5260_2_lut_2_lut (.A(state[0]), .B(delay_counter_31__N_636[2]), 
         .Z(n1_adj_856)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(48[3] 102[12])
    defparam i5260_2_lut_2_lut.init = 16'hdddd;
    LUT4 mux_143_rep_1_i6_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[5]), 
         .D(n1131[5]), .Z(spi_byte_counter_31__N_737[5])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i6_3_lut_4_lut.init = 16'hf870;
    FD1P3AX delay_counter_i18 (.D(delay_counter_31__N_508[18]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i18.GSR = "ENABLED";
    FD1P3AX delay_counter_i17 (.D(delay_counter_31__N_508[17]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i17.GSR = "ENABLED";
    LUT4 mux_143_rep_1_i1_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[0]), 
         .D(n1131[0]), .Z(spi_byte_counter_31__N_737[0])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i1_3_lut_4_lut.init = 16'hf870;
    FD1P3AX delay_counter_i16 (.D(delay_counter_31__N_508[16]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i16.GSR = "ENABLED";
    CCU2D sub_621_add_2_16 (.A0(spi_byte_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8652), .COUT(n8653));
    defparam sub_621_add_2_16.INIT0 = 16'h5555;
    defparam sub_621_add_2_16.INIT1 = 16'h5555;
    defparam sub_621_add_2_16.INJECT1_0 = "NO";
    defparam sub_621_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_621_add_2_14 (.A0(spi_byte_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8651), .COUT(n8652));
    defparam sub_621_add_2_14.INIT0 = 16'h5555;
    defparam sub_621_add_2_14.INIT1 = 16'h5555;
    defparam sub_621_add_2_14.INJECT1_0 = "NO";
    defparam sub_621_add_2_14.INJECT1_1 = "NO";
    FD1P3AX delay_counter_i15 (.D(delay_counter_31__N_508[15]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i15.GSR = "ENABLED";
    FD1P3AX delay_counter_i14 (.D(delay_counter_31__N_508[14]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i14.GSR = "ENABLED";
    FD1P3AX delay_counter_i13 (.D(delay_counter_31__N_508[13]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i13.GSR = "ENABLED";
    FD1P3AX delay_counter_i12 (.D(delay_counter_31__N_508[12]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i12.GSR = "ENABLED";
    FD1P3AX delay_counter_i11 (.D(delay_counter_31__N_508[11]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i11.GSR = "ENABLED";
    FD1P3AX delay_counter_i10 (.D(delay_counter_31__N_508[10]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i10.GSR = "ENABLED";
    FD1P3AX delay_counter_i9 (.D(delay_counter_31__N_508[9]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i9.GSR = "ENABLED";
    FD1P3AX delay_counter_i8 (.D(delay_counter_31__N_508[8]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i8.GSR = "ENABLED";
    FD1P3AX delay_counter_i7 (.D(delay_counter_31__N_508[7]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i7.GSR = "ENABLED";
    FD1P3AX delay_counter_i6 (.D(delay_counter_31__N_508[6]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i6.GSR = "ENABLED";
    FD1P3AX delay_counter_i5 (.D(delay_counter_31__N_508[5]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i5.GSR = "ENABLED";
    FD1P3AX delay_counter_i4 (.D(delay_counter_31__N_508[4]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i4.GSR = "ENABLED";
    LUT4 mux_143_rep_1_i2_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[1]), 
         .D(n1131[1]), .Z(spi_byte_counter_31__N_737[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i2_3_lut_4_lut.init = 16'hf870;
    FD1P3AX delay_counter_i3 (.D(delay_counter_31__N_508[3]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i3.GSR = "ENABLED";
    FD1P3IX delay_counter_i2 (.D(n1_adj_856), .SP(sclk_c_enable_474), .CD(n6300), 
            .CK(sclk_c), .Q(delay_counter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i2.GSR = "ENABLED";
    FD1P3AX delay_counter_i1 (.D(delay_counter_31__N_508[1]), .SP(sclk_c_enable_474), 
            .CK(sclk_c), .Q(delay_counter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam delay_counter_i1.GSR = "ENABLED";
    CCU2D sub_621_add_2_12 (.A0(spi_byte_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8650), .COUT(n8651));
    defparam sub_621_add_2_12.INIT0 = 16'h5555;
    defparam sub_621_add_2_12.INIT1 = 16'h5555;
    defparam sub_621_add_2_12.INJECT1_0 = "NO";
    defparam sub_621_add_2_12.INJECT1_1 = "NO";
    FD1P3IX index_i31 (.D(index_31__N_810[31]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i31.GSR = "ENABLED";
    FD1P3IX index_i30 (.D(index_31__N_810[30]), .SP(state[1]), .CD(n6300), 
            .CK(sclk_c), .Q(index[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam index_i30.GSR = "ENABLED";
    LUT4 i3917_2_lut (.A(n10007), .B(state[0]), .Z(n6300)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam i3917_2_lut.init = 16'h8888;
    LUT4 i5487_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[22]), 
         .Z(n1329[22])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5487_2_lut_4_lut.init = 16'h0100;
    CCU2D sub_621_add_2_10 (.A0(spi_byte_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8649), .COUT(n8650));
    defparam sub_621_add_2_10.INIT0 = 16'h5555;
    defparam sub_621_add_2_10.INIT1 = 16'h5555;
    defparam sub_621_add_2_10.INJECT1_0 = "NO";
    defparam sub_621_add_2_10.INJECT1_1 = "NO";
    LUT4 i5233_2_lut_rep_217 (.A(index[0]), .B(index[1]), .Z(n9919)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam i5233_2_lut_rep_217.init = 16'h2222;
    CCU2D sub_621_add_2_8 (.A0(spi_byte_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8648), .COUT(n8649));
    defparam sub_621_add_2_8.INIT0 = 16'h5555;
    defparam sub_621_add_2_8.INIT1 = 16'h5555;
    defparam sub_621_add_2_8.INJECT1_0 = "NO";
    defparam sub_621_add_2_8.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_194 (.A(RX_RDY), .B(n2386), .Z(n9896)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(108[12:18])
    defparam i1_2_lut_rep_194.init = 16'h8888;
    LUT4 i1_2_lut_rep_182_3_lut (.A(RX_RDY), .B(n2386), .C(n2421), .Z(n9884)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(108[12:18])
    defparam i1_2_lut_rep_182_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_123 (.A(led0_c), .B(n2526), .Z(debug_N_852)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_123.init = 16'h9999;
    CCU2D sub_621_add_2_6 (.A0(spi_byte_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8647), .COUT(n8648));
    defparam sub_621_add_2_6.INIT0 = 16'h5555;
    defparam sub_621_add_2_6.INIT1 = 16'h5555;
    defparam sub_621_add_2_6.INJECT1_0 = "NO";
    defparam sub_621_add_2_6.INJECT1_1 = "NO";
    LUT4 mux_143_rep_1_i20_3_lut_4_lut (.A(n9883), .B(n2351), .C(spi_byte_counter[19]), 
         .D(n1131[19]), .Z(spi_byte_counter_31__N_737[19])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam mux_143_rep_1_i20_3_lut_4_lut.init = 16'hf870;
    CCU2D sub_621_add_2_4 (.A0(spi_byte_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8646), .COUT(n8647));
    defparam sub_621_add_2_4.INIT0 = 16'h5555;
    defparam sub_621_add_2_4.INIT1 = 16'h5555;
    defparam sub_621_add_2_4.INJECT1_0 = "NO";
    defparam sub_621_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_621_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(spi_byte_counter[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8646));
    defparam sub_621_add_2_2.INIT0 = 16'h0000;
    defparam sub_621_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_621_add_2_2.INJECT1_0 = "NO";
    defparam sub_621_add_2_2.INJECT1_1 = "NO";
    CCU2D add_183_33 (.A0(index[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8645), 
          .S0(index_31__N_810[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_33.INIT0 = 16'h5aaa;
    defparam add_183_33.INIT1 = 16'h0000;
    defparam add_183_33.INJECT1_0 = "NO";
    defparam add_183_33.INJECT1_1 = "NO";
    CCU2D add_183_31 (.A0(index[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8644), .COUT(n8645), .S0(index_31__N_810[29]), .S1(index_31__N_810[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_31.INIT0 = 16'h5aaa;
    defparam add_183_31.INIT1 = 16'h5aaa;
    defparam add_183_31.INJECT1_0 = "NO";
    defparam add_183_31.INJECT1_1 = "NO";
    CCU2D add_183_29 (.A0(index[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8643), .COUT(n8644), .S0(index_31__N_810[27]), .S1(index_31__N_810[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_29.INIT0 = 16'h5aaa;
    defparam add_183_29.INIT1 = 16'h5aaa;
    defparam add_183_29.INJECT1_0 = "NO";
    defparam add_183_29.INJECT1_1 = "NO";
    CCU2D add_183_27 (.A0(index[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8642), .COUT(n8643), .S0(index_31__N_810[25]), .S1(index_31__N_810[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_27.INIT0 = 16'h5aaa;
    defparam add_183_27.INIT1 = 16'h5aaa;
    defparam add_183_27.INJECT1_0 = "NO";
    defparam add_183_27.INJECT1_1 = "NO";
    LUT4 i5394_2_lut (.A(n726[27]), .B(RX_RDY), .Z(n1131[27])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5394_2_lut.init = 16'h8888;
    LUT4 mux_121_i5_3_lut (.A(n30[4]), .B(DATA_OUT[4]), .C(n2351), .Z(WrData_23__N_668[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_121_i5_3_lut.init = 16'hcaca;
    LUT4 mux_121_i6_3_lut (.A(n30[7]), .B(DATA_OUT[5]), .C(n2351), .Z(WrData_23__N_668[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam mux_121_i6_3_lut.init = 16'hcaca;
    CCU2D add_183_25 (.A0(index[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8641), .COUT(n8642), .S0(index_31__N_810[23]), .S1(index_31__N_810[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_25.INIT0 = 16'h5aaa;
    defparam add_183_25.INIT1 = 16'h5aaa;
    defparam add_183_25.INJECT1_0 = "NO";
    defparam add_183_25.INJECT1_1 = "NO";
    CCU2D add_183_23 (.A0(index[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8640), .COUT(n8641), .S0(index_31__N_810[21]), .S1(index_31__N_810[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_23.INIT0 = 16'h5aaa;
    defparam add_183_23.INIT1 = 16'h5aaa;
    defparam add_183_23.INJECT1_0 = "NO";
    defparam add_183_23.INJECT1_1 = "NO";
    CCU2D add_183_21 (.A0(index[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8639), .COUT(n8640), .S0(index_31__N_810[19]), .S1(index_31__N_810[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_21.INIT0 = 16'h5aaa;
    defparam add_183_21.INIT1 = 16'h5aaa;
    defparam add_183_21.INJECT1_0 = "NO";
    defparam add_183_21.INJECT1_1 = "NO";
    CCU2D add_183_19 (.A0(index[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8638), .COUT(n8639), .S0(index_31__N_810[17]), .S1(index_31__N_810[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_19.INIT0 = 16'h5aaa;
    defparam add_183_19.INIT1 = 16'h5aaa;
    defparam add_183_19.INJECT1_0 = "NO";
    defparam add_183_19.INJECT1_1 = "NO";
    CCU2D add_183_17 (.A0(index[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8637), .COUT(n8638), .S0(index_31__N_810[15]), .S1(index_31__N_810[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_17.INIT0 = 16'h5aaa;
    defparam add_183_17.INIT1 = 16'h5aaa;
    defparam add_183_17.INJECT1_0 = "NO";
    defparam add_183_17.INJECT1_1 = "NO";
    CCU2D add_183_15 (.A0(index[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8636), .COUT(n8637), .S0(index_31__N_810[13]), .S1(index_31__N_810[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_15.INIT0 = 16'h5aaa;
    defparam add_183_15.INIT1 = 16'h5aaa;
    defparam add_183_15.INJECT1_0 = "NO";
    defparam add_183_15.INJECT1_1 = "NO";
    CCU2D add_183_13 (.A0(index[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8635), .COUT(n8636), .S0(index_31__N_810[11]), .S1(index_31__N_810[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_13.INIT0 = 16'h5aaa;
    defparam add_183_13.INIT1 = 16'h5aaa;
    defparam add_183_13.INJECT1_0 = "NO";
    defparam add_183_13.INJECT1_1 = "NO";
    CCU2D add_183_11 (.A0(index[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8634), .COUT(n8635), .S0(index_31__N_810[9]), .S1(index_31__N_810[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_11.INIT0 = 16'h5aaa;
    defparam add_183_11.INIT1 = 16'h5aaa;
    defparam add_183_11.INJECT1_0 = "NO";
    defparam add_183_11.INJECT1_1 = "NO";
    CCU2D add_183_9 (.A0(index[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8633), 
          .COUT(n8634), .S0(index_31__N_810[7]), .S1(index_31__N_810[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_9.INIT0 = 16'h5aaa;
    defparam add_183_9.INIT1 = 16'h5aaa;
    defparam add_183_9.INJECT1_0 = "NO";
    defparam add_183_9.INJECT1_1 = "NO";
    CCU2D add_183_7 (.A0(index[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8632), 
          .COUT(n8633), .S0(index_31__N_810[5]), .S1(index_31__N_810[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_7.INIT0 = 16'h5aaa;
    defparam add_183_7.INIT1 = 16'h5aaa;
    defparam add_183_7.INJECT1_0 = "NO";
    defparam add_183_7.INJECT1_1 = "NO";
    CCU2D add_183_5 (.A0(index[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8631), 
          .COUT(n8632), .S0(index_31__N_810[3]), .S1(index_31__N_810[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_5.INIT0 = 16'h5aaa;
    defparam add_183_5.INIT1 = 16'h5aaa;
    defparam add_183_5.INJECT1_0 = "NO";
    defparam add_183_5.INJECT1_1 = "NO";
    CCU2D add_183_3 (.A0(index[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8630), 
          .COUT(n8631), .S0(index_31__N_810[1]), .S1(index_31__N_810[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_3.INIT0 = 16'h5aaa;
    defparam add_183_3.INIT1 = 16'h5aaa;
    defparam add_183_3.INJECT1_0 = "NO";
    defparam add_183_3.INJECT1_1 = "NO";
    CCU2D add_183_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[0]), .B1(n2351), .C1(GND_net), .D1(GND_net), .COUT(n8630), 
          .S1(index_31__N_810[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(99[15:20])
    defparam add_183_1.INIT0 = 16'hF000;
    defparam add_183_1.INIT1 = 16'h5999;
    defparam add_183_1.INJECT1_0 = "NO";
    defparam add_183_1.INJECT1_1 = "NO";
    CCU2D add_116_33 (.A0(spi_byte_timeout[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8629), .S0(n765[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_33.INIT0 = 16'h5555;
    defparam add_116_33.INIT1 = 16'h0000;
    defparam add_116_33.INJECT1_0 = "NO";
    defparam add_116_33.INJECT1_1 = "NO";
    CCU2D add_116_31 (.A0(spi_byte_timeout[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8628), .COUT(n8629), .S0(n765[29]), .S1(n765[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_31.INIT0 = 16'h5555;
    defparam add_116_31.INIT1 = 16'h5555;
    defparam add_116_31.INJECT1_0 = "NO";
    defparam add_116_31.INJECT1_1 = "NO";
    CCU2D add_116_29 (.A0(spi_byte_timeout[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8627), .COUT(n8628), .S0(n765[27]), .S1(n765[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_29.INIT0 = 16'h5555;
    defparam add_116_29.INIT1 = 16'h5555;
    defparam add_116_29.INJECT1_0 = "NO";
    defparam add_116_29.INJECT1_1 = "NO";
    CCU2D add_116_27 (.A0(spi_byte_timeout[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8626), .COUT(n8627), .S0(n765[25]), .S1(n765[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_27.INIT0 = 16'h5555;
    defparam add_116_27.INIT1 = 16'h5555;
    defparam add_116_27.INJECT1_0 = "NO";
    defparam add_116_27.INJECT1_1 = "NO";
    LUT4 i5485_2_lut_4_lut (.A(n2456), .B(n2491), .C(RX_RDY), .D(n765[24]), 
         .Z(n1329[24])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5485_2_lut_4_lut.init = 16'h0100;
    CCU2D add_116_25 (.A0(spi_byte_timeout[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8625), .COUT(n8626), .S0(n765[23]), .S1(n765[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_25.INIT0 = 16'h5555;
    defparam add_116_25.INIT1 = 16'h5555;
    defparam add_116_25.INJECT1_0 = "NO";
    defparam add_116_25.INJECT1_1 = "NO";
    CCU2D add_116_23 (.A0(spi_byte_timeout[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8624), .COUT(n8625), .S0(n765[21]), .S1(n765[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_23.INIT0 = 16'h5555;
    defparam add_116_23.INIT1 = 16'h5555;
    defparam add_116_23.INJECT1_0 = "NO";
    defparam add_116_23.INJECT1_1 = "NO";
    CCU2D add_116_21 (.A0(spi_byte_timeout[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8623), .COUT(n8624), .S0(n765[19]), .S1(n765[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_21.INIT0 = 16'h5555;
    defparam add_116_21.INIT1 = 16'h5555;
    defparam add_116_21.INJECT1_0 = "NO";
    defparam add_116_21.INJECT1_1 = "NO";
    CCU2D add_116_19 (.A0(spi_byte_timeout[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8622), .COUT(n8623), .S0(n765[17]), .S1(n765[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_19.INIT0 = 16'h5555;
    defparam add_116_19.INIT1 = 16'h5555;
    defparam add_116_19.INJECT1_0 = "NO";
    defparam add_116_19.INJECT1_1 = "NO";
    LUT4 i5393_2_lut (.A(n726[26]), .B(RX_RDY), .Z(n1131[26])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(53[5] 79[12])
    defparam i5393_2_lut.init = 16'h8888;
    FD1P3IX state_i1_rep_222 (.D(state[0]), .SP(sclk_c_enable_477), .CD(state[1]), 
            .CK(sclk_c), .Q(n10007)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=14, LSE_RCOL=22, LSE_LLINE=153, LSE_RLINE=153 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(28[2] 103[14])
    defparam state_i1_rep_222.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(index[3]), .B(index[0]), .C(index[1]), .D(index[2]), 
         .Z(n30[7])) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(54[24:29])
    defparam i2_4_lut.init = 16'h0110;
    CCU2D add_116_17 (.A0(spi_byte_timeout[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8621), .COUT(n8622), .S0(n765[15]), .S1(n765[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_17.INIT0 = 16'h5555;
    defparam add_116_17.INIT1 = 16'h5555;
    defparam add_116_17.INJECT1_0 = "NO";
    defparam add_116_17.INJECT1_1 = "NO";
    CCU2D add_116_15 (.A0(spi_byte_timeout[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8620), .COUT(n8621), .S0(n765[13]), .S1(n765[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_15.INIT0 = 16'h5555;
    defparam add_116_15.INIT1 = 16'h5555;
    defparam add_116_15.INJECT1_0 = "NO";
    defparam add_116_15.INJECT1_1 = "NO";
    CCU2D add_116_13 (.A0(spi_byte_timeout[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8619), .COUT(n8620), .S0(n765[11]), .S1(n765[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_13.INIT0 = 16'h5555;
    defparam add_116_13.INIT1 = 16'h5555;
    defparam add_116_13.INJECT1_0 = "NO";
    defparam add_116_13.INJECT1_1 = "NO";
    CCU2D add_116_11 (.A0(spi_byte_timeout[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_byte_timeout[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8618), .COUT(n8619), .S0(n765[9]), .S1(n765[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/load_mem.vhd(75[26:42])
    defparam add_116_11.INIT0 = 16'h5555;
    defparam add_116_11.INIT1 = 16'h5555;
    defparam add_116_11.INJECT1_0 = "NO";
    defparam add_116_11.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \WS2812(48000000,"111111111")_U3 
//

module \WS2812(48000000,"111111111")_U3  (sclk_c, Q0, GND_net, serial_out_c, 
            RdAddress0, button0_c);
    input sclk_c;
    input [23:0]Q0;
    input GND_net;
    output serial_out_c;
    output [8:0]RdAddress0;
    input button0_c;
    
    wire sclk_c /* synthesis is_clock=1, SET_AS_NETWORK=sclk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    wire [23:0]pixel;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(43[12:17])
    
    wire sclk_c_enable_478, n9907;
    wire [31:0]bit_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(45[12:23])
    
    wire n9508, n8869, n8870;
    wire [8:0]cur_pixel;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(42[12:21])
    
    wire sclk_c_enable_218;
    wire [8:0]cur_pixel_8__N_100;
    
    wire n8881, n8882, n8868, n9507, n8545;
    wire [31:0]delay_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(44[12:25])
    wire [31:0]n447;
    
    wire n8546, sclk_c_enable_12, serial_N_426;
    wire [2:0]state;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(41[12:17])
    
    wire sclk_c_enable_15;
    wire [2:0]state_2__N_97;
    
    wire n8880, n8879, n8544, n14, serial_N_430, n9517, n9554, 
        n8871, sclk_c_enable_220, n9506, n9889, n7653, n1804, n9914, 
        n8543, n15, n8542, n8541, n8540, n8538;
    wire [8:0]n118;
    
    wire n8537, n8536, n8535;
    wire [31:0]n975;
    wire [6:0]n2624;
    
    wire n9886, n9880;
    wire [31:0]n1151;
    wire [31:0]bit_counter_31__N_165;
    
    wire sclk_c_enable_221;
    wire [31:0]bit_counter_31__N_197;
    
    wire n1, n1_adj_855, n2141, n6007, n8835, n2176, n8834, n8833, 
        n8832, n8831, n8830, n8829, n8828, n8827, n8826, n8825, 
        n8824, n8823, n8822, n8821, n8820, n9885, n9551, n9550, 
        n9504, n9503;
    wire [31:0]n1077;
    
    wire n9950, n9549, n9548, n9552, n9505, n9512, n9553, n7699, 
        n7608, n9511, n8555, n8549, n8550, n8725, n8724, n8723, 
        n8722, n8721, n8877, n8878, n8720, n8719, n8718, n8717, 
        n8716, n8715, n8714, n8713, n8712, n8711, n8710, n8554, 
        n8548, n8553, n8552, n9930, n9931, n8872, n9515, n9516, 
        n9513, n9514, n8547, n9510, n9948, n9949, n9937, n8873, 
        n9936, n8874, n8875, n8551, n8876, n9509, n8883;
    
    FD1P3IX pixel_i5 (.D(Q0[5]), .SP(sclk_c_enable_478), .CD(n9907), .CK(sclk_c), 
            .Q(pixel[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i5.GSR = "ENABLED";
    FD1P3IX pixel_i4 (.D(Q0[4]), .SP(sclk_c_enable_478), .CD(n9907), .CK(sclk_c), 
            .Q(pixel[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i4.GSR = "ENABLED";
    LUT4 i6695_3_lut (.A(pixel[10]), .B(pixel[11]), .C(bit_counter[0]), 
         .Z(n9508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6695_3_lut.init = 16'hcaca;
    FD1P3IX pixel_i3 (.D(Q0[3]), .SP(sclk_c_enable_478), .CD(n9907), .CK(sclk_c), 
            .Q(pixel[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i3.GSR = "ENABLED";
    FD1P3IX pixel_i2 (.D(Q0[2]), .SP(sclk_c_enable_478), .CD(n9907), .CK(sclk_c), 
            .Q(pixel[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i2.GSR = "ENABLED";
    CCU2D add_6091_5 (.A0(bit_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8869), .COUT(n8870));
    defparam add_6091_5.INIT0 = 16'hf555;
    defparam add_6091_5.INIT1 = 16'hf555;
    defparam add_6091_5.INJECT1_0 = "NO";
    defparam add_6091_5.INJECT1_1 = "NO";
    FD1P3IX pixel_i1 (.D(Q0[1]), .SP(sclk_c_enable_478), .CD(n9907), .CK(sclk_c), 
            .Q(pixel[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i1.GSR = "ENABLED";
    FD1P3AX cur_pixel_i8 (.D(cur_pixel_8__N_100[8]), .SP(sclk_c_enable_218), 
            .CK(sclk_c), .Q(cur_pixel[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i8.GSR = "ENABLED";
    CCU2D add_6091_29 (.A0(bit_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8881), .COUT(n8882));
    defparam add_6091_29.INIT0 = 16'hf555;
    defparam add_6091_29.INIT1 = 16'hf555;
    defparam add_6091_29.INJECT1_0 = "NO";
    defparam add_6091_29.INJECT1_1 = "NO";
    CCU2D add_6091_3 (.A0(bit_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8868), .COUT(n8869));
    defparam add_6091_3.INIT0 = 16'hf555;
    defparam add_6091_3.INIT1 = 16'hf555;
    defparam add_6091_3.INJECT1_0 = "NO";
    defparam add_6091_3.INJECT1_1 = "NO";
    CCU2D add_6091_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[0]), .B1(bit_counter[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n8868));
    defparam add_6091_1.INIT0 = 16'hF000;
    defparam add_6091_1.INIT1 = 16'ha666;
    defparam add_6091_1.INJECT1_0 = "NO";
    defparam add_6091_1.INJECT1_1 = "NO";
    LUT4 i6694_3_lut (.A(pixel[8]), .B(pixel[9]), .C(bit_counter[0]), 
         .Z(n9507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6694_3_lut.init = 16'hcaca;
    FD1P3AX cur_pixel_i7 (.D(cur_pixel_8__N_100[7]), .SP(sclk_c_enable_218), 
            .CK(sclk_c), .Q(cur_pixel[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i7.GSR = "ENABLED";
    CCU2D add_50_13 (.A0(delay_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8545), .COUT(n8546), .S0(n447[11]), .S1(n447[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_13.INIT0 = 16'h5555;
    defparam add_50_13.INIT1 = 16'h5555;
    defparam add_50_13.INJECT1_0 = "NO";
    defparam add_50_13.INJECT1_1 = "NO";
    FD1P3AX cur_pixel_i6 (.D(cur_pixel_8__N_100[6]), .SP(sclk_c_enable_218), 
            .CK(sclk_c), .Q(cur_pixel[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i6.GSR = "ENABLED";
    FD1P3AX cur_pixel_i5 (.D(cur_pixel_8__N_100[5]), .SP(sclk_c_enable_218), 
            .CK(sclk_c), .Q(cur_pixel[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i5.GSR = "ENABLED";
    FD1P3AX serial_76 (.D(serial_N_426), .SP(sclk_c_enable_12), .CK(sclk_c), 
            .Q(serial_out_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam serial_76.GSR = "ENABLED";
    FD1P3AY state_i0 (.D(state_2__N_97[0]), .SP(sclk_c_enable_15), .CK(sclk_c), 
            .Q(state[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam state_i0.GSR = "ENABLED";
    FD1P3AX state_i1 (.D(state_2__N_97[1]), .SP(sclk_c_enable_15), .CK(sclk_c), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam state_i1.GSR = "ENABLED";
    FD1P3AY state_i2 (.D(state_2__N_97[2]), .SP(sclk_c_enable_15), .CK(sclk_c), 
            .Q(state[2])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam state_i2.GSR = "ENABLED";
    FD1P3AX cur_pixel_i4 (.D(cur_pixel_8__N_100[4]), .SP(sclk_c_enable_218), 
            .CK(sclk_c), .Q(cur_pixel[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i4.GSR = "ENABLED";
    FD1P3AX cur_pixel_i3 (.D(cur_pixel_8__N_100[3]), .SP(sclk_c_enable_218), 
            .CK(sclk_c), .Q(cur_pixel[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i3.GSR = "ENABLED";
    FD1P3AX cur_pixel_i2 (.D(cur_pixel_8__N_100[2]), .SP(sclk_c_enable_218), 
            .CK(sclk_c), .Q(cur_pixel[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i2.GSR = "ENABLED";
    FD1P3AX cur_pixel_i1 (.D(cur_pixel_8__N_100[1]), .SP(sclk_c_enable_218), 
            .CK(sclk_c), .Q(cur_pixel[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i1.GSR = "ENABLED";
    CCU2D add_6091_27 (.A0(bit_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8880), .COUT(n8881));
    defparam add_6091_27.INIT0 = 16'hf555;
    defparam add_6091_27.INIT1 = 16'hf555;
    defparam add_6091_27.INJECT1_0 = "NO";
    defparam add_6091_27.INJECT1_1 = "NO";
    CCU2D add_6091_25 (.A0(bit_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8879), .COUT(n8880));
    defparam add_6091_25.INIT0 = 16'hf555;
    defparam add_6091_25.INIT1 = 16'hf555;
    defparam add_6091_25.INJECT1_0 = "NO";
    defparam add_6091_25.INJECT1_1 = "NO";
    CCU2D add_50_11 (.A0(delay_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8544), .COUT(n8545), .S0(n447[9]), .S1(n447[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_11.INIT0 = 16'h5555;
    defparam add_50_11.INIT1 = 16'h5555;
    defparam add_50_11.INJECT1_0 = "NO";
    defparam add_50_11.INJECT1_1 = "NO";
    LUT4 i5_3_lut (.A(cur_pixel[8]), .B(cur_pixel[0]), .C(cur_pixel[1]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5_3_lut.init = 16'h8080;
    LUT4 i5278_3_lut (.A(serial_N_430), .B(state[2]), .C(state[0]), .Z(serial_N_426)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i5278_3_lut.init = 16'h2323;
    LUT4 bit_counter_4__I_0_i31_4_lut (.A(n9517), .B(n9554), .C(bit_counter[4]), 
         .D(bit_counter[3]), .Z(serial_N_430)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(86[22:33])
    defparam bit_counter_4__I_0_i31_4_lut.init = 16'h0aca;
    CCU2D add_6091_7 (.A0(bit_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8870), .COUT(n8871));
    defparam add_6091_7.INIT0 = 16'hf555;
    defparam add_6091_7.INIT1 = 16'hf555;
    defparam add_6091_7.INJECT1_0 = "NO";
    defparam add_6091_7.INJECT1_1 = "NO";
    LUT4 i6796_2_lut_rep_220 (.A(state[2]), .B(state[1]), .Z(sclk_c_enable_220)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i6796_2_lut_rep_220.init = 16'h9999;
    LUT4 i6693_3_lut (.A(pixel[6]), .B(pixel[7]), .C(bit_counter[0]), 
         .Z(n9506)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6693_3_lut.init = 16'hcaca;
    LUT4 mux_569_i1_4_lut (.A(n9889), .B(n7653), .C(n1804), .D(n9914), 
         .Z(state_2__N_97[0])) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_569_i1_4_lut.init = 16'h3a3f;
    CCU2D add_50_9 (.A0(delay_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8543), .COUT(n8544), .S0(n447[7]), .S1(n447[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_9.INIT0 = 16'h5555;
    defparam add_50_9.INIT1 = 16'h5555;
    defparam add_50_9.INJECT1_0 = "NO";
    defparam add_50_9.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(cur_pixel[5]), .B(cur_pixel[2]), .C(cur_pixel[3]), 
         .D(cur_pixel[7]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    CCU2D add_50_7 (.A0(delay_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8542), .COUT(n8543), .S0(n447[5]), .S1(n447[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_7.INIT0 = 16'h5555;
    defparam add_50_7.INIT1 = 16'h5555;
    defparam add_50_7.INJECT1_0 = "NO";
    defparam add_50_7.INJECT1_1 = "NO";
    CCU2D add_50_5 (.A0(delay_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8541), .COUT(n8542), .S0(n447[3]), .S1(n447[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_5.INIT0 = 16'h5555;
    defparam add_50_5.INIT1 = 16'h5555;
    defparam add_50_5.INJECT1_0 = "NO";
    defparam add_50_5.INJECT1_1 = "NO";
    CCU2D add_50_3 (.A0(delay_counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8540), .COUT(n8541), .S0(n447[1]), .S1(n447[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_3.INIT0 = 16'h5555;
    defparam add_50_3.INIT1 = 16'h5555;
    defparam add_50_3.INJECT1_0 = "NO";
    defparam add_50_3.INJECT1_1 = "NO";
    CCU2D add_50_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_counter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8540), .S1(n447[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_1.INIT0 = 16'hF000;
    defparam add_50_1.INIT1 = 16'h5555;
    defparam add_50_1.INJECT1_0 = "NO";
    defparam add_50_1.INJECT1_1 = "NO";
    CCU2D add_17_9 (.A0(cur_pixel[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8538), .S0(n118[7]), .S1(n118[8]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_9.INIT0 = 16'h5aaa;
    defparam add_17_9.INIT1 = 16'h5aaa;
    defparam add_17_9.INJECT1_0 = "NO";
    defparam add_17_9.INJECT1_1 = "NO";
    CCU2D add_17_7 (.A0(cur_pixel[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8537), .COUT(n8538), .S0(n118[5]), .S1(n118[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_7.INIT0 = 16'h5aaa;
    defparam add_17_7.INIT1 = 16'h5aaa;
    defparam add_17_7.INJECT1_0 = "NO";
    defparam add_17_7.INJECT1_1 = "NO";
    CCU2D add_17_5 (.A0(cur_pixel[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8536), .COUT(n8537), .S0(n118[3]), .S1(n118[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_5.INIT0 = 16'h5aaa;
    defparam add_17_5.INIT1 = 16'h5aaa;
    defparam add_17_5.INJECT1_0 = "NO";
    defparam add_17_5.INJECT1_1 = "NO";
    CCU2D add_17_3 (.A0(cur_pixel[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8535), .COUT(n8536), .S0(n118[1]), .S1(n118[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_3.INIT0 = 16'h5aaa;
    defparam add_17_3.INIT1 = 16'h5aaa;
    defparam add_17_3.INJECT1_0 = "NO";
    defparam add_17_3.INJECT1_1 = "NO";
    CCU2D add_17_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8535), .S1(n118[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_1.INIT0 = 16'hF000;
    defparam add_17_1.INIT1 = 16'h5555;
    defparam add_17_1.INJECT1_0 = "NO";
    defparam add_17_1.INJECT1_1 = "NO";
    FD1P3IX PixelAddress_i8 (.D(cur_pixel[8]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(RdAddress0[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i8.GSR = "ENABLED";
    FD1P3IX PixelAddress_i7 (.D(cur_pixel[7]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(RdAddress0[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i7.GSR = "ENABLED";
    LUT4 mux_382_i2_4_lut (.A(n975[1]), .B(n2624[0]), .C(n9886), .D(n9880), 
         .Z(n1151[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_382_i2_4_lut.init = 16'hcfca;
    FD1P3IX PixelAddress_i6 (.D(cur_pixel[6]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(RdAddress0[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i6.GSR = "ENABLED";
    FD1P3IX PixelAddress_i5 (.D(cur_pixel[5]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(RdAddress0[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i5.GSR = "ENABLED";
    FD1P3IX PixelAddress_i4 (.D(cur_pixel[4]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(RdAddress0[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i4.GSR = "ENABLED";
    FD1P3IX PixelAddress_i3 (.D(cur_pixel[3]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(RdAddress0[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i3.GSR = "ENABLED";
    FD1P3IX PixelAddress_i2 (.D(cur_pixel[2]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(RdAddress0[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i2.GSR = "ENABLED";
    FD1P3IX PixelAddress_i1 (.D(cur_pixel[1]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(RdAddress0[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i1.GSR = "ENABLED";
    FD1P3AX bit_counter_i31 (.D(bit_counter_31__N_165[31]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i31.GSR = "ENABLED";
    FD1P3AX bit_counter_i30 (.D(bit_counter_31__N_165[30]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i30.GSR = "ENABLED";
    FD1P3AX bit_counter_i29 (.D(bit_counter_31__N_165[29]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i29.GSR = "ENABLED";
    FD1P3AX bit_counter_i28 (.D(bit_counter_31__N_165[28]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i28.GSR = "ENABLED";
    FD1P3AX bit_counter_i27 (.D(bit_counter_31__N_165[27]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i27.GSR = "ENABLED";
    FD1P3AX bit_counter_i26 (.D(bit_counter_31__N_165[26]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i26.GSR = "ENABLED";
    FD1P3AX bit_counter_i25 (.D(bit_counter_31__N_165[25]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i25.GSR = "ENABLED";
    FD1P3AX bit_counter_i24 (.D(bit_counter_31__N_165[24]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i24.GSR = "ENABLED";
    FD1P3AX bit_counter_i23 (.D(bit_counter_31__N_165[23]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i23.GSR = "ENABLED";
    FD1P3AX bit_counter_i22 (.D(bit_counter_31__N_165[22]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i22.GSR = "ENABLED";
    FD1P3AX bit_counter_i21 (.D(bit_counter_31__N_165[21]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i21.GSR = "ENABLED";
    FD1P3AX bit_counter_i20 (.D(bit_counter_31__N_165[20]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i20.GSR = "ENABLED";
    FD1P3AX bit_counter_i19 (.D(bit_counter_31__N_165[19]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i19.GSR = "ENABLED";
    FD1P3AX bit_counter_i18 (.D(bit_counter_31__N_165[18]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i18.GSR = "ENABLED";
    FD1P3AX bit_counter_i17 (.D(bit_counter_31__N_165[17]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i17.GSR = "ENABLED";
    FD1P3AX bit_counter_i16 (.D(bit_counter_31__N_165[16]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i16.GSR = "ENABLED";
    FD1P3AX bit_counter_i15 (.D(bit_counter_31__N_165[15]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i15.GSR = "ENABLED";
    FD1P3AX bit_counter_i14 (.D(bit_counter_31__N_165[14]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i14.GSR = "ENABLED";
    FD1P3AX bit_counter_i13 (.D(bit_counter_31__N_165[13]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i13.GSR = "ENABLED";
    FD1P3AX bit_counter_i12 (.D(bit_counter_31__N_165[12]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i12.GSR = "ENABLED";
    FD1P3AX bit_counter_i11 (.D(bit_counter_31__N_165[11]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i11.GSR = "ENABLED";
    FD1P3AX bit_counter_i10 (.D(bit_counter_31__N_165[10]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i10.GSR = "ENABLED";
    FD1P3AX bit_counter_i9 (.D(bit_counter_31__N_165[9]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i9.GSR = "ENABLED";
    FD1P3AX bit_counter_i8 (.D(bit_counter_31__N_165[8]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i8.GSR = "ENABLED";
    FD1P3AX bit_counter_i7 (.D(bit_counter_31__N_165[7]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i7.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i1 (.D(n1151[1]), .SP(sclk_c_enable_221), .CK(sclk_c), 
            .Q(delay_counter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i1.GSR = "ENABLED";
    LUT4 i5247_2_lut (.A(bit_counter_31__N_197[4]), .B(state[0]), .Z(n1)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i5247_2_lut.init = 16'hbbbb;
    LUT4 i3431_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), .Z(sclk_c_enable_478)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam i3431_3_lut.init = 16'hc1c1;
    FD1P3AX bit_counter_i6 (.D(bit_counter_31__N_165[6]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i6.GSR = "ENABLED";
    LUT4 i3971_2_lut_2_lut (.A(state[2]), .B(state[1]), .Z(n9907)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3971_2_lut_2_lut.init = 16'h8888;
    LUT4 i5253_2_lut (.A(bit_counter_31__N_197[3]), .B(state[0]), .Z(n1_adj_855)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i5253_2_lut.init = 16'hbbbb;
    LUT4 mux_569_i2_4_lut (.A(n2141), .B(n7653), .C(n1804), .D(n9914), 
         .Z(state_2__N_97[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_569_i2_4_lut.init = 16'h3530;
    FD1P3AX bit_counter_i5 (.D(bit_counter_31__N_165[5]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i5.GSR = "ENABLED";
    FD1P3IX bit_counter_i4 (.D(n1), .SP(sclk_c_enable_220), .CD(n9907), 
            .CK(sclk_c), .Q(bit_counter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i4.GSR = "ENABLED";
    FD1P3IX bit_counter_i3 (.D(n1_adj_855), .SP(sclk_c_enable_220), .CD(n9907), 
            .CK(sclk_c), .Q(bit_counter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i3.GSR = "ENABLED";
    FD1P3AX bit_counter_i2 (.D(bit_counter_31__N_165[2]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i2.GSR = "ENABLED";
    FD1P3AX bit_counter_i1 (.D(bit_counter_31__N_165[1]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i1.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i31 (.D(n447[31]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i31.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i30 (.D(n447[30]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i30.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i29 (.D(n447[29]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i29.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i28 (.D(n447[28]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i28.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i27 (.D(n447[27]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i27.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i26 (.D(n447[26]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i26.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i25 (.D(n447[25]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i25.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i24 (.D(n447[24]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i24.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i23 (.D(n447[23]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i23.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i22 (.D(n447[22]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i22.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i21 (.D(n447[21]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i21.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i20 (.D(n447[20]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i20.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i19 (.D(n447[19]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i19.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i18 (.D(n447[18]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i18.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i17 (.D(n447[17]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i17.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i16 (.D(n447[16]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i16.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i15 (.D(n447[15]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i15.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i14 (.D(n447[14]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i14.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i13 (.D(n447[13]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i13.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i11 (.D(n447[11]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i11.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i10 (.D(n447[10]), .SP(sclk_c_enable_221), 
            .CD(n6007), .CK(sclk_c), .Q(delay_counter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i10.GSR = "ENABLED";
    CCU2D add_6090_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8835), 
          .S0(n2176));
    defparam add_6090_cout.INIT0 = 16'h0000;
    defparam add_6090_cout.INIT1 = 16'h0000;
    defparam add_6090_cout.INJECT1_0 = "NO";
    defparam add_6090_cout.INJECT1_1 = "NO";
    CCU2D add_6090_31 (.A0(delay_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8834), .COUT(n8835));
    defparam add_6090_31.INIT0 = 16'hf555;
    defparam add_6090_31.INIT1 = 16'h5555;
    defparam add_6090_31.INJECT1_0 = "NO";
    defparam add_6090_31.INJECT1_1 = "NO";
    CCU2D add_6090_29 (.A0(delay_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8833), .COUT(n8834));
    defparam add_6090_29.INIT0 = 16'hf555;
    defparam add_6090_29.INIT1 = 16'hf555;
    defparam add_6090_29.INJECT1_0 = "NO";
    defparam add_6090_29.INJECT1_1 = "NO";
    CCU2D add_6090_27 (.A0(delay_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8832), .COUT(n8833));
    defparam add_6090_27.INIT0 = 16'hf555;
    defparam add_6090_27.INIT1 = 16'hf555;
    defparam add_6090_27.INJECT1_0 = "NO";
    defparam add_6090_27.INJECT1_1 = "NO";
    CCU2D add_6090_25 (.A0(delay_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8831), .COUT(n8832));
    defparam add_6090_25.INIT0 = 16'hf555;
    defparam add_6090_25.INIT1 = 16'hf555;
    defparam add_6090_25.INJECT1_0 = "NO";
    defparam add_6090_25.INJECT1_1 = "NO";
    CCU2D add_6090_23 (.A0(delay_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8830), .COUT(n8831));
    defparam add_6090_23.INIT0 = 16'hf555;
    defparam add_6090_23.INIT1 = 16'hf555;
    defparam add_6090_23.INJECT1_0 = "NO";
    defparam add_6090_23.INJECT1_1 = "NO";
    CCU2D add_6090_21 (.A0(delay_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8829), .COUT(n8830));
    defparam add_6090_21.INIT0 = 16'hf555;
    defparam add_6090_21.INIT1 = 16'hf555;
    defparam add_6090_21.INJECT1_0 = "NO";
    defparam add_6090_21.INJECT1_1 = "NO";
    CCU2D add_6090_19 (.A0(delay_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8828), .COUT(n8829));
    defparam add_6090_19.INIT0 = 16'hf555;
    defparam add_6090_19.INIT1 = 16'hf555;
    defparam add_6090_19.INJECT1_0 = "NO";
    defparam add_6090_19.INJECT1_1 = "NO";
    CCU2D add_6090_17 (.A0(delay_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8827), .COUT(n8828));
    defparam add_6090_17.INIT0 = 16'hf555;
    defparam add_6090_17.INIT1 = 16'hf555;
    defparam add_6090_17.INJECT1_0 = "NO";
    defparam add_6090_17.INJECT1_1 = "NO";
    CCU2D add_6090_15 (.A0(delay_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8826), .COUT(n8827));
    defparam add_6090_15.INIT0 = 16'hf555;
    defparam add_6090_15.INIT1 = 16'hf555;
    defparam add_6090_15.INJECT1_0 = "NO";
    defparam add_6090_15.INJECT1_1 = "NO";
    CCU2D add_6090_13 (.A0(delay_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8825), .COUT(n8826));
    defparam add_6090_13.INIT0 = 16'hf555;
    defparam add_6090_13.INIT1 = 16'hf555;
    defparam add_6090_13.INJECT1_0 = "NO";
    defparam add_6090_13.INJECT1_1 = "NO";
    CCU2D add_6090_11 (.A0(delay_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8824), .COUT(n8825));
    defparam add_6090_11.INIT0 = 16'hf555;
    defparam add_6090_11.INIT1 = 16'hf555;
    defparam add_6090_11.INJECT1_0 = "NO";
    defparam add_6090_11.INJECT1_1 = "NO";
    CCU2D add_6090_9 (.A0(delay_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8823), .COUT(n8824));
    defparam add_6090_9.INIT0 = 16'hf555;
    defparam add_6090_9.INIT1 = 16'hf555;
    defparam add_6090_9.INJECT1_0 = "NO";
    defparam add_6090_9.INJECT1_1 = "NO";
    CCU2D add_6090_7 (.A0(delay_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8822), .COUT(n8823));
    defparam add_6090_7.INIT0 = 16'hf555;
    defparam add_6090_7.INIT1 = 16'hf555;
    defparam add_6090_7.INJECT1_0 = "NO";
    defparam add_6090_7.INJECT1_1 = "NO";
    CCU2D add_6090_5 (.A0(delay_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8821), .COUT(n8822));
    defparam add_6090_5.INIT0 = 16'hf555;
    defparam add_6090_5.INIT1 = 16'hf555;
    defparam add_6090_5.INJECT1_0 = "NO";
    defparam add_6090_5.INJECT1_1 = "NO";
    FD1P3AX delay_counter_i0_i3 (.D(n1151[3]), .SP(sclk_c_enable_221), .CK(sclk_c), 
            .Q(delay_counter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i3.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i7 (.D(n1151[7]), .SP(sclk_c_enable_221), .CK(sclk_c), 
            .Q(delay_counter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i7.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i8 (.D(n1151[8]), .SP(sclk_c_enable_221), .CK(sclk_c), 
            .Q(delay_counter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i8.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i9 (.D(n1151[9]), .SP(sclk_c_enable_221), .CK(sclk_c), 
            .Q(delay_counter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i9.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i12 (.D(n1151[12]), .SP(sclk_c_enable_221), 
            .CK(sclk_c), .Q(delay_counter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i12.GSR = "ENABLED";
    CCU2D add_6090_3 (.A0(delay_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8820), .COUT(n8821));
    defparam add_6090_3.INIT0 = 16'hf555;
    defparam add_6090_3.INIT1 = 16'hf555;
    defparam add_6090_3.INJECT1_0 = "NO";
    defparam add_6090_3.INJECT1_1 = "NO";
    CCU2D add_6090_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_counter[0]), .B1(delay_counter[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n8820));
    defparam add_6090_1.INIT0 = 16'hF000;
    defparam add_6090_1.INIT1 = 16'ha666;
    defparam add_6090_1.INJECT1_0 = "NO";
    defparam add_6090_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_183 (.A(n2176), .B(button0_c), .C(state[0]), .Z(n9885)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_183.init = 16'h8080;
    LUT4 i6738_3_lut (.A(pixel[22]), .B(pixel[23]), .C(bit_counter[0]), 
         .Z(n9551)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6738_3_lut.init = 16'hcaca;
    LUT4 i6737_3_lut (.A(pixel[20]), .B(pixel[21]), .C(bit_counter[0]), 
         .Z(n9550)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6737_3_lut.init = 16'hcaca;
    LUT4 i12_4_lut_4_lut (.A(state[2]), .B(state[0]), .C(state[1]), .D(n2141), 
         .Z(sclk_c_enable_218)) /* synthesis lut_function=(A (C)+!A !((C+!(D))+!B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i12_4_lut_4_lut.init = 16'ha4a0;
    LUT4 i1_2_lut_3_lut (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[31]), 
         .Z(bit_counter_31__N_165[31])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_43 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[30]), 
         .Z(bit_counter_31__N_165[30])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_43.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_44 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[29]), 
         .Z(bit_counter_31__N_165[29])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_44.init = 16'h4040;
    LUT4 i6691_3_lut (.A(pixel[2]), .B(pixel[3]), .C(bit_counter[0]), 
         .Z(n9504)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6691_3_lut.init = 16'hcaca;
    LUT4 i6690_3_lut (.A(pixel[0]), .B(pixel[1]), .C(bit_counter[0]), 
         .Z(n9503)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6690_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_45 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[28]), 
         .Z(bit_counter_31__N_165[28])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_45.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_46 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[27]), 
         .Z(bit_counter_31__N_165[27])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_46.init = 16'h4040;
    FD1P3IX delay_counter_i0_i6 (.D(n447[6]), .SP(sclk_c_enable_221), .CD(n6007), 
            .CK(sclk_c), .Q(delay_counter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i6.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i5 (.D(n447[5]), .SP(sclk_c_enable_221), .CD(n6007), 
            .CK(sclk_c), .Q(delay_counter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i5.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i4 (.D(n1077[4]), .SP(sclk_c_enable_221), .CD(n9886), 
            .CK(sclk_c), .Q(delay_counter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i4.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i2 (.D(n9950), .SP(sclk_c_enable_221), .CD(n9886), 
            .CK(sclk_c), .Q(delay_counter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_47 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[26]), 
         .Z(bit_counter_31__N_165[26])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_47.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_48 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[25]), 
         .Z(bit_counter_31__N_165[25])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_48.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_49 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[24]), 
         .Z(bit_counter_31__N_165[24])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_49.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_50 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[23]), 
         .Z(bit_counter_31__N_165[23])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_50.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_51 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[22]), 
         .Z(bit_counter_31__N_165[22])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_51.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_52 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[21]), 
         .Z(bit_counter_31__N_165[21])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_52.init = 16'h4040;
    LUT4 i6736_3_lut (.A(pixel[18]), .B(pixel[19]), .C(bit_counter[0]), 
         .Z(n9549)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6736_3_lut.init = 16'hcaca;
    LUT4 i6735_3_lut (.A(pixel[16]), .B(pixel[17]), .C(bit_counter[0]), 
         .Z(n9548)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6735_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_53 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[20]), 
         .Z(bit_counter_31__N_165[20])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_53.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_54 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[19]), 
         .Z(bit_counter_31__N_165[19])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_54.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_55 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[18]), 
         .Z(bit_counter_31__N_165[18])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_55.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_56 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[17]), 
         .Z(bit_counter_31__N_165[17])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_56.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_57 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[16]), 
         .Z(bit_counter_31__N_165[16])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_57.init = 16'h4040;
    PFUMX i6739 (.BLUT(n9548), .ALUT(n9549), .C0(bit_counter[1]), .Z(n9552));
    LUT4 i1_2_lut_3_lut_adj_58 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[15]), 
         .Z(bit_counter_31__N_165[15])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_58.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_59 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[14]), 
         .Z(bit_counter_31__N_165[14])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_59.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_60 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[13]), 
         .Z(bit_counter_31__N_165[13])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_60.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_61 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[12]), 
         .Z(bit_counter_31__N_165[12])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_61.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_62 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[11]), 
         .Z(bit_counter_31__N_165[11])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_62.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_63 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[10]), 
         .Z(bit_counter_31__N_165[10])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_63.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_64 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[9]), 
         .Z(bit_counter_31__N_165[9])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_64.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_65 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[8]), 
         .Z(bit_counter_31__N_165[8])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_65.init = 16'h4040;
    LUT4 i387_2_lut_rep_178_3_lut (.A(state[1]), .B(n2176), .C(state[2]), 
         .Z(n9880)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i387_2_lut_rep_178_3_lut.init = 16'h0808;
    FD1P3IX pixel_i0 (.D(Q0[0]), .SP(sclk_c_enable_478), .CD(n9907), .CK(sclk_c), 
            .Q(pixel[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i0.GSR = "ENABLED";
    FD1P3AX cur_pixel_i0 (.D(cur_pixel_8__N_100[0]), .SP(sclk_c_enable_218), 
            .CK(sclk_c), .Q(cur_pixel[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i0.GSR = "ENABLED";
    FD1P3IX PixelAddress_i0 (.D(cur_pixel[0]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(RdAddress0[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i0.GSR = "ENABLED";
    FD1P3AX bit_counter_i0 (.D(bit_counter_31__N_165[0]), .SP(sclk_c_enable_220), 
            .CK(sclk_c), .Q(bit_counter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i0.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i0 (.D(n1151[0]), .SP(sclk_c_enable_221), .CK(sclk_c), 
            .Q(delay_counter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i0.GSR = "ENABLED";
    PFUMX i6699 (.BLUT(n9505), .ALUT(n9506), .C0(bit_counter[1]), .Z(n9512));
    PFUMX i6740 (.BLUT(n9550), .ALUT(n9551), .C0(bit_counter[1]), .Z(n9553));
    LUT4 i1_2_lut_3_lut_adj_66 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[7]), 
         .Z(bit_counter_31__N_165[7])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_66.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_67 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[6]), 
         .Z(bit_counter_31__N_165[6])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_67.init = 16'h4040;
    LUT4 i586_3_lut_4_lut_4_lut (.A(state[1]), .B(n2176), .C(state[2]), 
         .D(n9885), .Z(n1804)) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i586_3_lut_4_lut_4_lut.init = 16'hf8a8;
    LUT4 mux_382_i4_4_lut (.A(n975[3]), .B(n7699), .C(n9886), .D(n9880), 
         .Z(n1151[3])) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_382_i4_4_lut.init = 16'h3f3a;
    LUT4 i1_2_lut_3_lut_adj_68 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[5]), 
         .Z(bit_counter_31__N_165[5])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_68.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_69 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[2]), 
         .Z(bit_counter_31__N_165[2])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_69.init = 16'h4040;
    LUT4 mux_366_i4_4_lut (.A(n447[3]), .B(n7608), .C(n9914), .D(n2141), 
         .Z(n975[3])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_366_i4_4_lut.init = 16'hcafa;
    LUT4 i1_2_lut_3_lut_adj_70 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[1]), 
         .Z(bit_counter_31__N_165[1])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_70.init = 16'h4040;
    LUT4 mux_382_i8_4_lut (.A(n975[7]), .B(n7699), .C(n9886), .D(n9880), 
         .Z(n1151[7])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_382_i8_4_lut.init = 16'h303a;
    LUT4 i1_2_lut_3_lut_adj_71 (.A(state[2]), .B(state[0]), .C(bit_counter_31__N_197[0]), 
         .Z(bit_counter_31__N_165[0])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_71.init = 16'h4040;
    LUT4 i5209_2_lut_3_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n2624[0])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i5209_2_lut_3_lut.init = 16'h7070;
    LUT4 i5624_2_lut_3_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n7699)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i5624_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_rep_187 (.A(n2141), .B(n7608), .Z(n9889)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_187.init = 16'h8888;
    LUT4 mux_366_i2_3_lut_4_lut (.A(n2141), .B(n7608), .C(n9914), .D(n447[1]), 
         .Z(n975[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam mux_366_i2_3_lut_4_lut.init = 16'h7f70;
    LUT4 mux_382_i9_4_lut (.A(n975[8]), .B(n7699), .C(n9886), .D(n9880), 
         .Z(n1151[8])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_382_i9_4_lut.init = 16'h303a;
    PFUMX i6698 (.BLUT(n9503), .ALUT(n9504), .C0(bit_counter[1]), .Z(n9511));
    LUT4 mux_366_i8_3_lut_4_lut (.A(n2141), .B(n7608), .C(n9914), .D(n447[7]), 
         .Z(n975[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam mux_366_i8_3_lut_4_lut.init = 16'h8f80;
    LUT4 mux_366_i9_3_lut_4_lut (.A(n2141), .B(n7608), .C(n9914), .D(n447[8]), 
         .Z(n975[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam mux_366_i9_3_lut_4_lut.init = 16'h8f80;
    LUT4 mux_382_i10_4_lut (.A(n975[9]), .B(n7699), .C(n9886), .D(n9880), 
         .Z(n1151[9])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_382_i10_4_lut.init = 16'h303a;
    CCU2D add_50_33 (.A0(delay_counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8555), .S0(n447[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_33.INIT0 = 16'h5555;
    defparam add_50_33.INIT1 = 16'h0000;
    defparam add_50_33.INJECT1_0 = "NO";
    defparam add_50_33.INJECT1_1 = "NO";
    CCU2D add_50_21 (.A0(delay_counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8549), .COUT(n8550), .S0(n447[19]), .S1(n447[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_21.INIT0 = 16'h5555;
    defparam add_50_21.INIT1 = 16'h5555;
    defparam add_50_21.INJECT1_0 = "NO";
    defparam add_50_21.INJECT1_1 = "NO";
    LUT4 mux_366_i10_3_lut_4_lut (.A(n2141), .B(n7608), .C(n9914), .D(n447[9]), 
         .Z(n975[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam mux_366_i10_3_lut_4_lut.init = 16'h8f80;
    LUT4 mux_382_i13_4_lut (.A(n975[12]), .B(n7699), .C(n9886), .D(n9880), 
         .Z(n1151[12])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_382_i13_4_lut.init = 16'h303a;
    CCU2D add_598_33 (.A0(bit_counter[31]), .B0(n2141), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8725), .S0(bit_counter_31__N_197[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_33.INIT0 = 16'h5999;
    defparam add_598_33.INIT1 = 16'h0000;
    defparam add_598_33.INJECT1_0 = "NO";
    defparam add_598_33.INJECT1_1 = "NO";
    CCU2D add_598_31 (.A0(bit_counter[29]), .B0(n2141), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[30]), .B1(n2141), .C1(GND_net), 
          .D1(GND_net), .CIN(n8724), .COUT(n8725), .S0(bit_counter_31__N_197[29]), 
          .S1(bit_counter_31__N_197[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_31.INIT0 = 16'h5999;
    defparam add_598_31.INIT1 = 16'h5999;
    defparam add_598_31.INJECT1_0 = "NO";
    defparam add_598_31.INJECT1_1 = "NO";
    CCU2D add_598_29 (.A0(bit_counter[27]), .B0(n2141), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[28]), .B1(n2141), .C1(GND_net), 
          .D1(GND_net), .CIN(n8723), .COUT(n8724), .S0(bit_counter_31__N_197[27]), 
          .S1(bit_counter_31__N_197[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_29.INIT0 = 16'h5999;
    defparam add_598_29.INIT1 = 16'h5999;
    defparam add_598_29.INJECT1_0 = "NO";
    defparam add_598_29.INJECT1_1 = "NO";
    CCU2D add_598_27 (.A0(bit_counter[25]), .B0(n2141), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[26]), .B1(n2141), .C1(GND_net), 
          .D1(GND_net), .CIN(n8722), .COUT(n8723), .S0(bit_counter_31__N_197[25]), 
          .S1(bit_counter_31__N_197[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_27.INIT0 = 16'h5999;
    defparam add_598_27.INIT1 = 16'h5999;
    defparam add_598_27.INJECT1_0 = "NO";
    defparam add_598_27.INJECT1_1 = "NO";
    CCU2D add_598_25 (.A0(bit_counter[23]), .B0(n2141), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[24]), .B1(n2141), .C1(GND_net), 
          .D1(GND_net), .CIN(n8721), .COUT(n8722), .S0(bit_counter_31__N_197[23]), 
          .S1(bit_counter_31__N_197[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_25.INIT0 = 16'h5999;
    defparam add_598_25.INIT1 = 16'h5999;
    defparam add_598_25.INJECT1_0 = "NO";
    defparam add_598_25.INJECT1_1 = "NO";
    CCU2D add_6091_21 (.A0(bit_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8877), .COUT(n8878));
    defparam add_6091_21.INIT0 = 16'hf555;
    defparam add_6091_21.INIT1 = 16'hf555;
    defparam add_6091_21.INJECT1_0 = "NO";
    defparam add_6091_21.INJECT1_1 = "NO";
    CCU2D add_598_23 (.A0(bit_counter[21]), .B0(n2141), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[22]), .B1(n2141), .C1(GND_net), 
          .D1(GND_net), .CIN(n8720), .COUT(n8721), .S0(bit_counter_31__N_197[21]), 
          .S1(bit_counter_31__N_197[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_23.INIT0 = 16'h5999;
    defparam add_598_23.INIT1 = 16'h5999;
    defparam add_598_23.INJECT1_0 = "NO";
    defparam add_598_23.INJECT1_1 = "NO";
    CCU2D add_598_21 (.A0(bit_counter[19]), .B0(n2141), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[20]), .B1(n2141), .C1(GND_net), 
          .D1(GND_net), .CIN(n8719), .COUT(n8720), .S0(bit_counter_31__N_197[19]), 
          .S1(bit_counter_31__N_197[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_21.INIT0 = 16'h5999;
    defparam add_598_21.INIT1 = 16'h5999;
    defparam add_598_21.INJECT1_0 = "NO";
    defparam add_598_21.INJECT1_1 = "NO";
    CCU2D add_598_19 (.A0(bit_counter[17]), .B0(n2141), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[18]), .B1(n2141), .C1(GND_net), 
          .D1(GND_net), .CIN(n8718), .COUT(n8719), .S0(bit_counter_31__N_197[17]), 
          .S1(bit_counter_31__N_197[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_19.INIT0 = 16'h5999;
    defparam add_598_19.INIT1 = 16'h5999;
    defparam add_598_19.INJECT1_0 = "NO";
    defparam add_598_19.INJECT1_1 = "NO";
    CCU2D add_598_17 (.A0(bit_counter[15]), .B0(n2141), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[16]), .B1(n2141), .C1(GND_net), 
          .D1(GND_net), .CIN(n8717), .COUT(n8718), .S0(bit_counter_31__N_197[15]), 
          .S1(bit_counter_31__N_197[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_17.INIT0 = 16'h5999;
    defparam add_598_17.INIT1 = 16'h5999;
    defparam add_598_17.INJECT1_0 = "NO";
    defparam add_598_17.INJECT1_1 = "NO";
    CCU2D add_598_15 (.A0(bit_counter[13]), .B0(n2141), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[14]), .B1(n2141), .C1(GND_net), 
          .D1(GND_net), .CIN(n8716), .COUT(n8717), .S0(bit_counter_31__N_197[13]), 
          .S1(bit_counter_31__N_197[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_15.INIT0 = 16'h5999;
    defparam add_598_15.INIT1 = 16'h5999;
    defparam add_598_15.INJECT1_0 = "NO";
    defparam add_598_15.INJECT1_1 = "NO";
    CCU2D add_598_13 (.A0(bit_counter[11]), .B0(n2141), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[12]), .B1(n2141), .C1(GND_net), 
          .D1(GND_net), .CIN(n8715), .COUT(n8716), .S0(bit_counter_31__N_197[11]), 
          .S1(bit_counter_31__N_197[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_13.INIT0 = 16'h5999;
    defparam add_598_13.INIT1 = 16'h5999;
    defparam add_598_13.INJECT1_0 = "NO";
    defparam add_598_13.INJECT1_1 = "NO";
    CCU2D add_598_11 (.A0(bit_counter[9]), .B0(n2141), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[10]), .B1(n2141), .C1(GND_net), .D1(GND_net), 
          .CIN(n8714), .COUT(n8715), .S0(bit_counter_31__N_197[9]), .S1(bit_counter_31__N_197[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_11.INIT0 = 16'h5999;
    defparam add_598_11.INIT1 = 16'h5999;
    defparam add_598_11.INJECT1_0 = "NO";
    defparam add_598_11.INJECT1_1 = "NO";
    CCU2D add_598_9 (.A0(bit_counter[7]), .B0(n2141), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[8]), .B1(n2141), .C1(GND_net), .D1(GND_net), 
          .CIN(n8713), .COUT(n8714), .S0(bit_counter_31__N_197[7]), .S1(bit_counter_31__N_197[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_9.INIT0 = 16'h5999;
    defparam add_598_9.INIT1 = 16'h5999;
    defparam add_598_9.INJECT1_0 = "NO";
    defparam add_598_9.INJECT1_1 = "NO";
    CCU2D add_598_7 (.A0(bit_counter[5]), .B0(n2141), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[6]), .B1(n2141), .C1(GND_net), .D1(GND_net), 
          .CIN(n8712), .COUT(n8713), .S0(bit_counter_31__N_197[5]), .S1(bit_counter_31__N_197[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_7.INIT0 = 16'h5999;
    defparam add_598_7.INIT1 = 16'h5999;
    defparam add_598_7.INJECT1_0 = "NO";
    defparam add_598_7.INJECT1_1 = "NO";
    CCU2D add_598_5 (.A0(bit_counter[3]), .B0(n2141), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[4]), .B1(n2141), .C1(GND_net), .D1(GND_net), 
          .CIN(n8711), .COUT(n8712), .S0(bit_counter_31__N_197[3]), .S1(bit_counter_31__N_197[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_5.INIT0 = 16'h5999;
    defparam add_598_5.INIT1 = 16'h5999;
    defparam add_598_5.INJECT1_0 = "NO";
    defparam add_598_5.INJECT1_1 = "NO";
    CCU2D add_598_3 (.A0(bit_counter[1]), .B0(n2141), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[2]), .B1(n2141), .C1(GND_net), .D1(GND_net), 
          .CIN(n8710), .COUT(n8711), .S0(bit_counter_31__N_197[1]), .S1(bit_counter_31__N_197[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_3.INIT0 = 16'h5999;
    defparam add_598_3.INIT1 = 16'h5999;
    defparam add_598_3.INJECT1_0 = "NO";
    defparam add_598_3.INJECT1_1 = "NO";
    CCU2D add_598_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[0]), .B1(n2141), .C1(GND_net), .D1(GND_net), 
          .COUT(n8710), .S1(bit_counter_31__N_197[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_598_1.INIT0 = 16'hF000;
    defparam add_598_1.INIT1 = 16'h5999;
    defparam add_598_1.INJECT1_0 = "NO";
    defparam add_598_1.INJECT1_1 = "NO";
    LUT4 mux_382_i1_4_lut (.A(n975[0]), .B(n2624[0]), .C(n9886), .D(n9880), 
         .Z(n1151[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_382_i1_4_lut.init = 16'hcfca;
    CCU2D add_6091_23 (.A0(bit_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8878), .COUT(n8879));
    defparam add_6091_23.INIT0 = 16'hf555;
    defparam add_6091_23.INIT1 = 16'hf555;
    defparam add_6091_23.INJECT1_0 = "NO";
    defparam add_6091_23.INJECT1_1 = "NO";
    LUT4 i8_4_lut (.A(n15), .B(cur_pixel[6]), .C(n14), .D(cur_pixel[4]), 
         .Z(n7608)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 mux_366_i13_3_lut_4_lut (.A(n2141), .B(n7608), .C(n9914), .D(n447[12]), 
         .Z(n975[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam mux_366_i13_3_lut_4_lut.init = 16'h8f80;
    CCU2D add_50_31 (.A0(delay_counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8554), .COUT(n8555), .S0(n447[29]), .S1(n447[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_31.INIT0 = 16'h5555;
    defparam add_50_31.INIT1 = 16'h5555;
    defparam add_50_31.INJECT1_0 = "NO";
    defparam add_50_31.INJECT1_1 = "NO";
    CCU2D add_50_19 (.A0(delay_counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8548), .COUT(n8549), .S0(n447[17]), .S1(n447[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_19.INIT0 = 16'h5555;
    defparam add_50_19.INIT1 = 16'h5555;
    defparam add_50_19.INJECT1_0 = "NO";
    defparam add_50_19.INJECT1_1 = "NO";
    LUT4 mux_366_i1_3_lut_4_lut (.A(n2141), .B(n7608), .C(n9914), .D(n447[0]), 
         .Z(n975[0])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam mux_366_i1_3_lut_4_lut.init = 16'h7f70;
    LUT4 i1_4_lut_4_lut_4_lut (.A(state[2]), .B(state[1]), .C(n2176), 
         .D(state[0]), .Z(n6007)) /* synthesis lut_function=(A (B+(C))+!A (B (C)+!B (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hf9e8;
    FD1P3IX pixel_i23 (.D(Q0[23]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i23.GSR = "ENABLED";
    FD1P3IX pixel_i22 (.D(Q0[22]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i22.GSR = "ENABLED";
    FD1P3IX pixel_i21 (.D(Q0[21]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i21.GSR = "ENABLED";
    FD1P3IX pixel_i20 (.D(Q0[20]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i20.GSR = "ENABLED";
    FD1P3IX pixel_i19 (.D(Q0[19]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i19.GSR = "ENABLED";
    FD1P3IX pixel_i18 (.D(Q0[18]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i18.GSR = "ENABLED";
    FD1P3IX pixel_i17 (.D(Q0[17]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i17.GSR = "ENABLED";
    FD1P3IX pixel_i16 (.D(Q0[16]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i16.GSR = "ENABLED";
    FD1P3IX pixel_i15 (.D(Q0[15]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i15.GSR = "ENABLED";
    FD1P3IX pixel_i14 (.D(Q0[14]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i14.GSR = "ENABLED";
    FD1P3IX pixel_i13 (.D(Q0[13]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i13.GSR = "ENABLED";
    FD1P3IX pixel_i12 (.D(Q0[12]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i12.GSR = "ENABLED";
    FD1P3IX pixel_i11 (.D(Q0[11]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i11.GSR = "ENABLED";
    FD1P3IX pixel_i10 (.D(Q0[10]), .SP(sclk_c_enable_478), .CD(n9907), 
            .CK(sclk_c), .Q(pixel[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i10.GSR = "ENABLED";
    FD1P3IX pixel_i9 (.D(Q0[9]), .SP(sclk_c_enable_478), .CD(n9907), .CK(sclk_c), 
            .Q(pixel[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i9.GSR = "ENABLED";
    CCU2D add_50_29 (.A0(delay_counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8553), .COUT(n8554), .S0(n447[27]), .S1(n447[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_29.INIT0 = 16'h5555;
    defparam add_50_29.INIT1 = 16'h5555;
    defparam add_50_29.INJECT1_0 = "NO";
    defparam add_50_29.INJECT1_1 = "NO";
    CCU2D add_50_27 (.A0(delay_counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8552), .COUT(n8553), .S0(n447[25]), .S1(n447[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_27.INIT0 = 16'h5555;
    defparam add_50_27.INIT1 = 16'h5555;
    defparam add_50_27.INJECT1_0 = "NO";
    defparam add_50_27.INJECT1_1 = "NO";
    LUT4 i391_3_lut_rep_212 (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n9914)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i391_3_lut_rep_212.init = 16'h1010;
    LUT4 i6833_2_lut_4_lut_else_4_lut (.A(state[1]), .B(state[0]), .C(n2176), 
         .Z(n9930)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i6833_2_lut_4_lut_else_4_lut.init = 16'hf4f4;
    LUT4 i1_3_lut_4_lut_3_lut (.A(state[2]), .B(state[1]), .C(n2176), 
         .Z(sclk_c_enable_12)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i1_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i6692_3_lut (.A(pixel[4]), .B(pixel[5]), .C(bit_counter[0]), 
         .Z(n9505)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6692_3_lut.init = 16'hcaca;
    LUT4 i6833_2_lut_4_lut_then_4_lut (.A(state[1]), .B(state[0]), .C(n2176), 
         .D(button0_c), .Z(n9931)) /* synthesis lut_function=(A+(B (C (D))+!B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i6833_2_lut_4_lut_then_4_lut.init = 16'hfaba;
    LUT4 i6835_3_lut_4_lut_rep_213 (.A(state[2]), .B(state[1]), .C(state[0]), 
         .D(n2176), .Z(sclk_c_enable_221)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i6835_3_lut_4_lut_rep_213.init = 16'hfeff;
    LUT4 i3919_2_lut_4_lut_3_lut (.A(state[2]), .B(state[1]), .C(n2176), 
         .Z(n9886)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i3919_2_lut_4_lut_3_lut.init = 16'ha8a8;
    CCU2D add_6091_9 (.A0(bit_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8871), .COUT(n8872));
    defparam add_6091_9.INIT0 = 16'hf555;
    defparam add_6091_9.INIT1 = 16'hf555;
    defparam add_6091_9.INJECT1_0 = "NO";
    defparam add_6091_9.INJECT1_1 = "NO";
    L6MUX21 i6704 (.D0(n9515), .D1(n9516), .SD(bit_counter[3]), .Z(n9517));
    PFUMX i6700 (.BLUT(n9507), .ALUT(n9508), .C0(bit_counter[1]), .Z(n9513));
    L6MUX21 i6702 (.D0(n9511), .D1(n9512), .SD(bit_counter[2]), .Z(n9515));
    L6MUX21 i6703 (.D0(n9513), .D1(n9514), .SD(bit_counter[2]), .Z(n9516));
    LUT4 mux_372_i5_4_lut (.A(n447[4]), .B(state[0]), .C(n9880), .D(n9914), 
         .Z(n1077[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_372_i5_4_lut.init = 16'hc0ca;
    CCU2D add_50_17 (.A0(delay_counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8547), .COUT(n8548), .S0(n447[15]), .S1(n447[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_17.INIT0 = 16'h5555;
    defparam add_50_17.INIT1 = 16'h5555;
    defparam add_50_17.INJECT1_0 = "NO";
    defparam add_50_17.INJECT1_1 = "NO";
    LUT4 i6697_3_lut (.A(pixel[14]), .B(pixel[15]), .C(bit_counter[0]), 
         .Z(n9510)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6697_3_lut.init = 16'hcaca;
    PFUMX i6914 (.BLUT(n9948), .ALUT(n9949), .C0(state[1]), .Z(n9950));
    LUT4 mux_569_i3_then_3_lut (.A(state[0]), .B(state[2]), .C(n2176), 
         .Z(n9937)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam mux_569_i3_then_3_lut.init = 16'h2020;
    CCU2D add_6091_11 (.A0(bit_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8872), .COUT(n8873));
    defparam add_6091_11.INIT0 = 16'hf555;
    defparam add_6091_11.INIT1 = 16'hf555;
    defparam add_6091_11.INJECT1_0 = "NO";
    defparam add_6091_11.INJECT1_1 = "NO";
    LUT4 mux_569_i3_else_3_lut (.A(n2141), .B(n7608), .C(state[0]), .D(state[2]), 
         .Z(n9936)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam mux_569_i3_else_3_lut.init = 16'h0080;
    CCU2D add_6091_13 (.A0(bit_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8873), .COUT(n8874));
    defparam add_6091_13.INIT0 = 16'hf555;
    defparam add_6091_13.INIT1 = 16'hf555;
    defparam add_6091_13.INJECT1_0 = "NO";
    defparam add_6091_13.INJECT1_1 = "NO";
    CCU2D add_6091_15 (.A0(bit_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8874), .COUT(n8875));
    defparam add_6091_15.INIT0 = 16'hf555;
    defparam add_6091_15.INIT1 = 16'hf555;
    defparam add_6091_15.INJECT1_0 = "NO";
    defparam add_6091_15.INJECT1_1 = "NO";
    CCU2D add_50_25 (.A0(delay_counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8551), .COUT(n8552), .S0(n447[23]), .S1(n447[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_25.INIT0 = 16'h5555;
    defparam add_50_25.INIT1 = 16'h5555;
    defparam add_50_25.INJECT1_0 = "NO";
    defparam add_50_25.INJECT1_1 = "NO";
    CCU2D add_6091_17 (.A0(bit_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8875), .COUT(n8876));
    defparam add_6091_17.INIT0 = 16'hf555;
    defparam add_6091_17.INIT1 = 16'hf555;
    defparam add_6091_17.INJECT1_0 = "NO";
    defparam add_6091_17.INJECT1_1 = "NO";
    FD1P3IX pixel_i8 (.D(Q0[8]), .SP(sclk_c_enable_478), .CD(n9907), .CK(sclk_c), 
            .Q(pixel[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i8.GSR = "ENABLED";
    CCU2D add_6091_19 (.A0(bit_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8876), .COUT(n8877));
    defparam add_6091_19.INIT0 = 16'hf555;
    defparam add_6091_19.INIT1 = 16'hf555;
    defparam add_6091_19.INJECT1_0 = "NO";
    defparam add_6091_19.INJECT1_1 = "NO";
    LUT4 i6696_3_lut (.A(pixel[12]), .B(pixel[13]), .C(bit_counter[0]), 
         .Z(n9509)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6696_3_lut.init = 16'hcaca;
    L6MUX21 i6741 (.D0(n9552), .D1(n9553), .SD(bit_counter[2]), .Z(n9554));
    CCU2D add_50_15 (.A0(delay_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8546), .COUT(n8547), .S0(n447[13]), .S1(n447[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_15.INIT0 = 16'h5555;
    defparam add_50_15.INIT1 = 16'h5555;
    defparam add_50_15.INJECT1_0 = "NO";
    defparam add_50_15.INJECT1_1 = "NO";
    PFUMX i6906 (.BLUT(n9936), .ALUT(n9937), .C0(state[1]), .Z(state_2__N_97[2]));
    LUT4 i1_2_lut_3_lut_adj_72 (.A(state[2]), .B(n7608), .C(n118[8]), 
         .Z(cur_pixel_8__N_100[8])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_72.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_73 (.A(state[2]), .B(n7608), .C(n118[7]), 
         .Z(cur_pixel_8__N_100[7])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_73.init = 16'h1010;
    PFUMX i6701 (.BLUT(n9509), .ALUT(n9510), .C0(bit_counter[1]), .Z(n9514));
    LUT4 i5578_2_lut_3_lut_4_lut (.A(state[1]), .B(n9885), .C(state[0]), 
         .D(state[2]), .Z(n7653)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i5578_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_3_lut_adj_74 (.A(state[2]), .B(n7608), .C(n118[6]), 
         .Z(cur_pixel_8__N_100[6])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_74.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_75 (.A(state[2]), .B(n7608), .C(n118[5]), 
         .Z(cur_pixel_8__N_100[5])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_75.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_76 (.A(state[2]), .B(n7608), .C(n118[4]), 
         .Z(cur_pixel_8__N_100[4])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_76.init = 16'h1010;
    FD1P3IX pixel_i7 (.D(Q0[7]), .SP(sclk_c_enable_478), .CD(n9907), .CK(sclk_c), 
            .Q(pixel[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i7.GSR = "ENABLED";
    CCU2D add_50_23 (.A0(delay_counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8550), .COUT(n8551), .S0(n447[21]), .S1(n447[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_23.INIT0 = 16'h5555;
    defparam add_50_23.INIT1 = 16'h5555;
    defparam add_50_23.INJECT1_0 = "NO";
    defparam add_50_23.INJECT1_1 = "NO";
    CCU2D add_6091_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8883), 
          .S0(n2141));
    defparam add_6091_cout.INIT0 = 16'h0000;
    defparam add_6091_cout.INIT1 = 16'h0000;
    defparam add_6091_cout.INJECT1_0 = "NO";
    defparam add_6091_cout.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_77 (.A(state[2]), .B(n7608), .C(n118[3]), 
         .Z(cur_pixel_8__N_100[3])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_77.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_78 (.A(state[2]), .B(n7608), .C(n118[2]), 
         .Z(cur_pixel_8__N_100[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_78.init = 16'h1010;
    LUT4 mux_372_i3_3_lut_4_lut_then_4_lut (.A(state[2]), .B(n2176), .C(state[0]), 
         .D(n447[2]), .Z(n9949)) /* synthesis lut_function=(A (D)+!A !(B (C)+!B !(D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam mux_372_i3_3_lut_4_lut_then_4_lut.init = 16'hbf04;
    PFUMX i6902 (.BLUT(n9930), .ALUT(n9931), .C0(state[2]), .Z(sclk_c_enable_15));
    LUT4 mux_372_i3_3_lut_4_lut_else_4_lut (.A(state[2]), .B(state[0]), 
         .C(n2141), .D(n447[2]), .Z(n9948)) /* synthesis lut_function=(A (D)+!A !(B (C)+!B !(D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam mux_372_i3_3_lut_4_lut_else_4_lut.init = 16'hbf04;
    LUT4 i1_2_lut_3_lut_adj_79 (.A(state[2]), .B(n7608), .C(n118[1]), 
         .Z(cur_pixel_8__N_100[1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_79.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_80 (.A(state[2]), .B(n7608), .C(n118[0]), 
         .Z(cur_pixel_8__N_100[0])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_80.init = 16'h1010;
    FD1P3IX pixel_i6 (.D(Q0[6]), .SP(sclk_c_enable_478), .CD(n9907), .CK(sclk_c), 
            .Q(pixel[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=140, LSE_RLINE=140 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i6.GSR = "ENABLED";
    CCU2D add_6091_31 (.A0(bit_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8882), .COUT(n8883));
    defparam add_6091_31.INIT0 = 16'hf555;
    defparam add_6091_31.INIT1 = 16'h5555;
    defparam add_6091_31.INJECT1_0 = "NO";
    defparam add_6091_31.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \WS2812(48000000,"111111111")_U2 
//

module \WS2812(48000000,"111111111")_U2  (sclk_c, serial1_out_c, button0_c, 
            Q1, GND_net, RdAddress1);
    input sclk_c;
    output serial1_out_c;
    input button0_c;
    input [23:0]Q1;
    input GND_net;
    output [8:0]RdAddress1;
    
    wire sclk_c /* synthesis is_clock=1, SET_AS_NETWORK=sclk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    wire [31:0]delay_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(44[12:25])
    
    wire sclk_c_enable_185;
    wire [31:0]n1436;
    
    wire n9518, n9519;
    wire [31:0]bit_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(45[12:23])
    
    wire n9526;
    wire [23:0]pixel;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(43[12:17])
    
    wire n9521;
    wire [2:0]state;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(41[12:17])
    
    wire n7719, n9888, n7693, sclk_c_enable_19, serial_N_426, sclk_c_enable_22;
    wire [2:0]state_2__N_97;
    
    wire n9520, n9527, n15;
    wire [8:0]cur_pixel;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(42[12:21])
    
    wire n14, n9, n2246, n9894, n9522, n9523, n9528, n9924, 
        n9925, n9895, n1519, n9901, n9524, n9525, n9529, n2211;
    wire [31:0]bit_counter_31__N_197;
    wire [31:0]bit_counter_31__N_165;
    
    wire n9558, n9557, n9556, n6032;
    wire [31:0]n447;
    wire [31:0]n1362;
    
    wire n9935, n9555, n9882, sclk_c_enable_397, n9921, n8787, n8786, 
        n8785, n8784, n8783, n8782, n8781, n8780, n8779, n8778, 
        n8777, n8776, n8775, n8774, n8773, sclk_c_enable_389;
    wire [8:0]cur_pixel_8__N_100;
    
    wire sclk_c_enable_428, n8772, n9559;
    wire [8:0]n118;
    
    wire n8556, n9560, n1, n8576, n1_adj_854, n8575, n8574, n8573, 
        n8572, n8709, n8708, n8707, n8706, n8705, n8704, n8703, 
        n8702, n8701, n8700, n8699, n8698, n8697, n8571, n8696, 
        n8695, n8694;
    wire [31:0]n1260;
    wire [6:0]n2632;
    
    wire n8570, n8569, n8568, n8567, n8566, n9934, n9933, n9530, 
        n9531, n9532, n8565, n8899, n8898, n8564, n8897, n8896, 
        n8895, n8894, n8893, n8892, n8563, n8891, n8890, n8889, 
        n8562, n8561, n8888, n8887, n8886, n8885, serial_N_430, 
        n8884, n8559, n9940, n8558, n9939, n9561, n8557;
    
    FD1P3AX delay_counter_i0_i0 (.D(n1436[0]), .SP(sclk_c_enable_185), .CK(sclk_c), 
            .Q(delay_counter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i0.GSR = "ENABLED";
    PFUMX i6713 (.BLUT(n9518), .ALUT(n9519), .C0(bit_counter[1]), .Z(n9526));
    LUT4 i6708_3_lut (.A(pixel[6]), .B(pixel[7]), .C(bit_counter[0]), 
         .Z(n9521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6708_3_lut.init = 16'hcaca;
    LUT4 i5644_2_lut_3_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n7719)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i5644_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i5618_2_lut_3_lut_4_lut (.A(state[1]), .B(n9888), .C(state[0]), 
         .D(state[2]), .Z(n7693)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i5618_2_lut_3_lut_4_lut.init = 16'hfef0;
    FD1P3AX serial_76 (.D(serial_N_426), .SP(sclk_c_enable_19), .CK(sclk_c), 
            .Q(serial1_out_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam serial_76.GSR = "ENABLED";
    FD1P3AY state_i0 (.D(state_2__N_97[0]), .SP(sclk_c_enable_22), .CK(sclk_c), 
            .Q(state[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam state_i0.GSR = "ENABLED";
    FD1P3AX state_i1 (.D(state_2__N_97[1]), .SP(sclk_c_enable_22), .CK(sclk_c), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam state_i1.GSR = "ENABLED";
    FD1P3AY state_i2 (.D(state_2__N_97[2]), .SP(sclk_c_enable_22), .CK(sclk_c), 
            .Q(state[2])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam state_i2.GSR = "ENABLED";
    PFUMX i6714 (.BLUT(n9520), .ALUT(n9521), .C0(bit_counter[1]), .Z(n9527));
    LUT4 i8_4_lut (.A(n15), .B(cur_pixel[7]), .C(n14), .D(cur_pixel[6]), 
         .Z(n9)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i6_4_lut (.A(cur_pixel[2]), .B(cur_pixel[1]), .C(cur_pixel[4]), 
         .D(cur_pixel[5]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i3944_2_lut_4_lut_3_lut (.A(state[2]), .B(state[1]), .C(n2246), 
         .Z(n9894)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i3944_2_lut_4_lut_3_lut.init = 16'ha8a8;
    PFUMX i6715 (.BLUT(n9522), .ALUT(n9523), .C0(bit_counter[1]), .Z(n9528));
    PFUMX i6898 (.BLUT(n9924), .ALUT(n9925), .C0(state[0]), .Z(sclk_c_enable_22));
    LUT4 mux_494_i1_4_lut (.A(n9895), .B(n7693), .C(n1519), .D(n9901), 
         .Z(state_2__N_97[0])) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_494_i1_4_lut.init = 16'h3a3f;
    LUT4 i5_3_lut (.A(cur_pixel[3]), .B(cur_pixel[8]), .C(cur_pixel[0]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5_3_lut.init = 16'h8080;
    PFUMX i6716 (.BLUT(n9524), .ALUT(n9525), .C0(bit_counter[1]), .Z(n9529));
    LUT4 mux_494_i2_4_lut (.A(n2211), .B(n7693), .C(n1519), .D(n9901), 
         .Z(state_2__N_97[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_494_i2_4_lut.init = 16'h3530;
    LUT4 i1_2_lut_3_lut (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[0]), 
         .Z(bit_counter_31__N_165[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_7 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[31]), 
         .Z(bit_counter_31__N_165[31])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_7.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_8 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[30]), 
         .Z(bit_counter_31__N_165[30])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_8.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_9 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[29]), 
         .Z(bit_counter_31__N_165[29])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_9.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_10 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[28]), 
         .Z(bit_counter_31__N_165[28])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_10.init = 16'h2020;
    LUT4 i6745_3_lut (.A(pixel[22]), .B(pixel[23]), .C(bit_counter[0]), 
         .Z(n9558)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6745_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_11 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[27]), 
         .Z(bit_counter_31__N_165[27])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_11.init = 16'h2020;
    LUT4 i6744_3_lut (.A(pixel[20]), .B(pixel[21]), .C(bit_counter[0]), 
         .Z(n9557)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6744_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_12 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[26]), 
         .Z(bit_counter_31__N_165[26])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_12.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_13 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[25]), 
         .Z(bit_counter_31__N_165[25])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_13.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_14 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[24]), 
         .Z(bit_counter_31__N_165[24])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_14.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_15 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[23]), 
         .Z(bit_counter_31__N_165[23])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_15.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_16 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[22]), 
         .Z(bit_counter_31__N_165[22])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_16.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_17 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[21]), 
         .Z(bit_counter_31__N_165[21])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_17.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_18 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[20]), 
         .Z(bit_counter_31__N_165[20])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_18.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_19 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[19]), 
         .Z(bit_counter_31__N_165[19])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_19.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_20 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[18]), 
         .Z(bit_counter_31__N_165[18])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_20.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_21 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[17]), 
         .Z(bit_counter_31__N_165[17])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_21.init = 16'h2020;
    LUT4 i6743_3_lut (.A(pixel[18]), .B(pixel[19]), .C(bit_counter[0]), 
         .Z(n9556)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6743_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_22 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[16]), 
         .Z(bit_counter_31__N_165[16])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_22.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[15]), 
         .Z(bit_counter_31__N_165[15])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_23.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_24 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[14]), 
         .Z(bit_counter_31__N_165[14])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_24.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_25 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[13]), 
         .Z(bit_counter_31__N_165[13])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_25.init = 16'h2020;
    FD1P3IX delay_counter_i0_i31 (.D(n447[31]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i31.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i30 (.D(n447[30]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i30.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i29 (.D(n447[29]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i29.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i28 (.D(n447[28]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i28.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i27 (.D(n447[27]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i27.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i26 (.D(n447[26]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i26.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i25 (.D(n447[25]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i25.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i24 (.D(n447[24]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i24.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i23 (.D(n447[23]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i23.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i22 (.D(n447[22]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i22.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i21 (.D(n447[21]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i21.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i20 (.D(n447[20]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i20.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i19 (.D(n447[19]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i19.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i18 (.D(n447[18]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i18.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i17 (.D(n447[17]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i17.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i16 (.D(n447[16]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i16.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i15 (.D(n447[15]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i15.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i14 (.D(n447[14]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i14.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i13 (.D(n447[13]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i13.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i11 (.D(n447[11]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i11.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i10 (.D(n447[10]), .SP(sclk_c_enable_185), 
            .CD(n6032), .CK(sclk_c), .Q(delay_counter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i10.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i6 (.D(n447[6]), .SP(sclk_c_enable_185), .CD(n6032), 
            .CK(sclk_c), .Q(delay_counter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i6.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i5 (.D(n447[5]), .SP(sclk_c_enable_185), .CD(n6032), 
            .CK(sclk_c), .Q(delay_counter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i5.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i4 (.D(n1362[4]), .SP(sclk_c_enable_185), .CD(n9894), 
            .CK(sclk_c), .Q(delay_counter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i4.GSR = "ENABLED";
    FD1P3IX delay_counter_i0_i2 (.D(n9935), .SP(sclk_c_enable_185), .CD(n9894), 
            .CK(sclk_c), .Q(delay_counter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_26 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[12]), 
         .Z(bit_counter_31__N_165[12])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_26.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_27 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[11]), 
         .Z(bit_counter_31__N_165[11])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_27.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_28 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[10]), 
         .Z(bit_counter_31__N_165[10])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_28.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_29 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[9]), 
         .Z(bit_counter_31__N_165[9])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_29.init = 16'h2020;
    LUT4 i6742_3_lut (.A(pixel[16]), .B(pixel[17]), .C(bit_counter[0]), 
         .Z(n9555)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6742_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_30 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[8]), 
         .Z(bit_counter_31__N_165[8])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_30.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_31 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[7]), 
         .Z(bit_counter_31__N_165[7])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_31.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_32 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[6]), 
         .Z(bit_counter_31__N_165[6])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_32.init = 16'h2020;
    LUT4 n9796_bdd_2_lut_3_lut_4_lut_then_4_lut (.A(state[1]), .B(n2246), 
         .C(button0_c), .D(state[2]), .Z(n9925)) /* synthesis lut_function=(A (B+(D))+!A (B (C+!(D))+!B !(D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam n9796_bdd_2_lut_3_lut_4_lut_then_4_lut.init = 16'headd;
    LUT4 i1_2_lut_3_lut_adj_33 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[5]), 
         .Z(bit_counter_31__N_165[5])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_33.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_34 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[2]), 
         .Z(bit_counter_31__N_165[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_34.init = 16'h2020;
    FD1P3AX delay_counter_i0_i1 (.D(n1436[1]), .SP(sclk_c_enable_185), .CK(sclk_c), 
            .Q(delay_counter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i1.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i3 (.D(n1436[3]), .SP(sclk_c_enable_185), .CK(sclk_c), 
            .Q(delay_counter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_35 (.A(state[0]), .B(state[2]), .C(bit_counter_31__N_197[1]), 
         .Z(bit_counter_31__N_165[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i1_2_lut_3_lut_adj_35.init = 16'h2020;
    FD1P3AX delay_counter_i0_i7 (.D(n1436[7]), .SP(sclk_c_enable_185), .CK(sclk_c), 
            .Q(delay_counter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i7.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i8 (.D(n1436[8]), .SP(sclk_c_enable_185), .CK(sclk_c), 
            .Q(delay_counter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i8.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i9 (.D(n1436[9]), .SP(sclk_c_enable_185), .CK(sclk_c), 
            .Q(delay_counter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i9.GSR = "ENABLED";
    FD1P3AX delay_counter_i0_i12 (.D(n1436[12]), .SP(sclk_c_enable_185), 
            .CK(sclk_c), .Q(delay_counter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam delay_counter_i0_i12.GSR = "ENABLED";
    LUT4 mux_447_i5_4_lut (.A(n447[4]), .B(state[0]), .C(n9882), .D(n9901), 
         .Z(n1362[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_447_i5_4_lut.init = 16'hc0ca;
    LUT4 n9796_bdd_2_lut_3_lut_4_lut_else_4_lut (.A(state[1]), .B(n2246), 
         .C(state[2]), .Z(n9924)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam n9796_bdd_2_lut_3_lut_4_lut_else_4_lut.init = 16'hecec;
    FD1P3IX pixel_i0 (.D(Q1[0]), .SP(sclk_c_enable_397), .CD(n9921), .CK(sclk_c), 
            .Q(pixel[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i0.GSR = "ENABLED";
    CCU2D add_6099_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8787), 
          .S0(n2211));
    defparam add_6099_cout.INIT0 = 16'h0000;
    defparam add_6099_cout.INIT1 = 16'h0000;
    defparam add_6099_cout.INJECT1_0 = "NO";
    defparam add_6099_cout.INJECT1_1 = "NO";
    CCU2D add_6099_31 (.A0(bit_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8786), .COUT(n8787));
    defparam add_6099_31.INIT0 = 16'hf555;
    defparam add_6099_31.INIT1 = 16'h5555;
    defparam add_6099_31.INJECT1_0 = "NO";
    defparam add_6099_31.INJECT1_1 = "NO";
    CCU2D add_6099_29 (.A0(bit_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8785), .COUT(n8786));
    defparam add_6099_29.INIT0 = 16'hf555;
    defparam add_6099_29.INIT1 = 16'hf555;
    defparam add_6099_29.INJECT1_0 = "NO";
    defparam add_6099_29.INJECT1_1 = "NO";
    CCU2D add_6099_27 (.A0(bit_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8784), .COUT(n8785));
    defparam add_6099_27.INIT0 = 16'hf555;
    defparam add_6099_27.INIT1 = 16'hf555;
    defparam add_6099_27.INJECT1_0 = "NO";
    defparam add_6099_27.INJECT1_1 = "NO";
    CCU2D add_6099_25 (.A0(bit_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8783), .COUT(n8784));
    defparam add_6099_25.INIT0 = 16'hf555;
    defparam add_6099_25.INIT1 = 16'hf555;
    defparam add_6099_25.INJECT1_0 = "NO";
    defparam add_6099_25.INJECT1_1 = "NO";
    CCU2D add_6099_23 (.A0(bit_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8782), .COUT(n8783));
    defparam add_6099_23.INIT0 = 16'hf555;
    defparam add_6099_23.INIT1 = 16'hf555;
    defparam add_6099_23.INJECT1_0 = "NO";
    defparam add_6099_23.INJECT1_1 = "NO";
    CCU2D add_6099_21 (.A0(bit_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8781), .COUT(n8782));
    defparam add_6099_21.INIT0 = 16'hf555;
    defparam add_6099_21.INIT1 = 16'hf555;
    defparam add_6099_21.INJECT1_0 = "NO";
    defparam add_6099_21.INJECT1_1 = "NO";
    CCU2D add_6099_19 (.A0(bit_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8780), .COUT(n8781));
    defparam add_6099_19.INIT0 = 16'hf555;
    defparam add_6099_19.INIT1 = 16'hf555;
    defparam add_6099_19.INJECT1_0 = "NO";
    defparam add_6099_19.INJECT1_1 = "NO";
    CCU2D add_6099_17 (.A0(bit_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8779), .COUT(n8780));
    defparam add_6099_17.INIT0 = 16'hf555;
    defparam add_6099_17.INIT1 = 16'hf555;
    defparam add_6099_17.INJECT1_0 = "NO";
    defparam add_6099_17.INJECT1_1 = "NO";
    CCU2D add_6099_15 (.A0(bit_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8778), .COUT(n8779));
    defparam add_6099_15.INIT0 = 16'hf555;
    defparam add_6099_15.INIT1 = 16'hf555;
    defparam add_6099_15.INJECT1_0 = "NO";
    defparam add_6099_15.INJECT1_1 = "NO";
    CCU2D add_6099_13 (.A0(bit_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8777), .COUT(n8778));
    defparam add_6099_13.INIT0 = 16'hf555;
    defparam add_6099_13.INIT1 = 16'hf555;
    defparam add_6099_13.INJECT1_0 = "NO";
    defparam add_6099_13.INJECT1_1 = "NO";
    CCU2D add_6099_11 (.A0(bit_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8776), .COUT(n8777));
    defparam add_6099_11.INIT0 = 16'hf555;
    defparam add_6099_11.INIT1 = 16'hf555;
    defparam add_6099_11.INJECT1_0 = "NO";
    defparam add_6099_11.INJECT1_1 = "NO";
    CCU2D add_6099_9 (.A0(bit_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8775), .COUT(n8776));
    defparam add_6099_9.INIT0 = 16'hf555;
    defparam add_6099_9.INIT1 = 16'hf555;
    defparam add_6099_9.INJECT1_0 = "NO";
    defparam add_6099_9.INJECT1_1 = "NO";
    CCU2D add_6099_7 (.A0(bit_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8774), .COUT(n8775));
    defparam add_6099_7.INIT0 = 16'hf555;
    defparam add_6099_7.INIT1 = 16'hf555;
    defparam add_6099_7.INJECT1_0 = "NO";
    defparam add_6099_7.INJECT1_1 = "NO";
    CCU2D add_6099_5 (.A0(bit_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8773), .COUT(n8774));
    defparam add_6099_5.INIT0 = 16'hf555;
    defparam add_6099_5.INIT1 = 16'hf555;
    defparam add_6099_5.INJECT1_0 = "NO";
    defparam add_6099_5.INJECT1_1 = "NO";
    FD1P3AX cur_pixel_i0 (.D(cur_pixel_8__N_100[0]), .SP(sclk_c_enable_389), 
            .CK(sclk_c), .Q(cur_pixel[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i0.GSR = "ENABLED";
    FD1P3IX PixelAddress_i0 (.D(cur_pixel[0]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(RdAddress1[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i0.GSR = "ENABLED";
    FD1P3AX bit_counter_i0 (.D(bit_counter_31__N_165[0]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i0.GSR = "ENABLED";
    CCU2D add_6099_3 (.A0(bit_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8772), .COUT(n8773));
    defparam add_6099_3.INIT0 = 16'hf555;
    defparam add_6099_3.INIT1 = 16'hf555;
    defparam add_6099_3.INJECT1_0 = "NO";
    defparam add_6099_3.INJECT1_1 = "NO";
    CCU2D add_6099_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[0]), .B1(bit_counter[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n8772));
    defparam add_6099_1.INIT0 = 16'hF000;
    defparam add_6099_1.INIT1 = 16'ha666;
    defparam add_6099_1.INJECT1_0 = "NO";
    defparam add_6099_1.INJECT1_1 = "NO";
    PFUMX i6746 (.BLUT(n9555), .ALUT(n9556), .C0(bit_counter[1]), .Z(n9559));
    LUT4 i2_3_lut_rep_186 (.A(n2246), .B(button0_c), .C(state[0]), .Z(n9888)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_186.init = 16'h8080;
    CCU2D add_17_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8556), .S1(n118[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_1.INIT0 = 16'hF000;
    defparam add_17_1.INIT1 = 16'h5555;
    defparam add_17_1.INJECT1_0 = "NO";
    defparam add_17_1.INJECT1_1 = "NO";
    LUT4 i6800_2_lut_rep_204 (.A(state[2]), .B(state[1]), .Z(sclk_c_enable_428)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i6800_2_lut_rep_204.init = 16'h9999;
    PFUMX i6747 (.BLUT(n9557), .ALUT(n9558), .C0(bit_counter[1]), .Z(n9560));
    LUT4 i5256_2_lut_2_lut (.A(state[0]), .B(bit_counter_31__N_197[4]), 
         .Z(n1)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i5256_2_lut_2_lut.init = 16'hdddd;
    CCU2D add_50_33 (.A0(delay_counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8576), .S0(n447[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_33.INIT0 = 16'h5555;
    defparam add_50_33.INIT1 = 16'h0000;
    defparam add_50_33.INJECT1_0 = "NO";
    defparam add_50_33.INJECT1_1 = "NO";
    LUT4 i5257_2_lut_2_lut (.A(state[0]), .B(bit_counter_31__N_197[3]), 
         .Z(n1_adj_854)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i5257_2_lut_2_lut.init = 16'hdddd;
    CCU2D add_50_31 (.A0(delay_counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8575), .COUT(n8576), .S0(n447[29]), .S1(n447[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_31.INIT0 = 16'h5555;
    defparam add_50_31.INIT1 = 16'h5555;
    defparam add_50_31.INJECT1_0 = "NO";
    defparam add_50_31.INJECT1_1 = "NO";
    CCU2D add_50_29 (.A0(delay_counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8574), .COUT(n8575), .S0(n447[27]), .S1(n447[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_29.INIT0 = 16'h5555;
    defparam add_50_29.INIT1 = 16'h5555;
    defparam add_50_29.INJECT1_0 = "NO";
    defparam add_50_29.INJECT1_1 = "NO";
    CCU2D add_50_27 (.A0(delay_counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8573), .COUT(n8574), .S0(n447[25]), .S1(n447[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_27.INIT0 = 16'h5555;
    defparam add_50_27.INIT1 = 16'h5555;
    defparam add_50_27.INJECT1_0 = "NO";
    defparam add_50_27.INJECT1_1 = "NO";
    CCU2D add_50_25 (.A0(delay_counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8572), .COUT(n8573), .S0(n447[23]), .S1(n447[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_25.INIT0 = 16'h5555;
    defparam add_50_25.INIT1 = 16'h5555;
    defparam add_50_25.INJECT1_0 = "NO";
    defparam add_50_25.INJECT1_1 = "NO";
    CCU2D add_600_33 (.A0(bit_counter[31]), .B0(n2211), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8709), .S0(bit_counter_31__N_197[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_33.INIT0 = 16'h5999;
    defparam add_600_33.INIT1 = 16'h0000;
    defparam add_600_33.INJECT1_0 = "NO";
    defparam add_600_33.INJECT1_1 = "NO";
    CCU2D add_600_31 (.A0(bit_counter[29]), .B0(n2211), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[30]), .B1(n2211), .C1(GND_net), 
          .D1(GND_net), .CIN(n8708), .COUT(n8709), .S0(bit_counter_31__N_197[29]), 
          .S1(bit_counter_31__N_197[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_31.INIT0 = 16'h5999;
    defparam add_600_31.INIT1 = 16'h5999;
    defparam add_600_31.INJECT1_0 = "NO";
    defparam add_600_31.INJECT1_1 = "NO";
    CCU2D add_600_29 (.A0(bit_counter[27]), .B0(n2211), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[28]), .B1(n2211), .C1(GND_net), 
          .D1(GND_net), .CIN(n8707), .COUT(n8708), .S0(bit_counter_31__N_197[27]), 
          .S1(bit_counter_31__N_197[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_29.INIT0 = 16'h5999;
    defparam add_600_29.INIT1 = 16'h5999;
    defparam add_600_29.INJECT1_0 = "NO";
    defparam add_600_29.INJECT1_1 = "NO";
    CCU2D add_600_27 (.A0(bit_counter[25]), .B0(n2211), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[26]), .B1(n2211), .C1(GND_net), 
          .D1(GND_net), .CIN(n8706), .COUT(n8707), .S0(bit_counter_31__N_197[25]), 
          .S1(bit_counter_31__N_197[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_27.INIT0 = 16'h5999;
    defparam add_600_27.INIT1 = 16'h5999;
    defparam add_600_27.INJECT1_0 = "NO";
    defparam add_600_27.INJECT1_1 = "NO";
    CCU2D add_600_25 (.A0(bit_counter[23]), .B0(n2211), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[24]), .B1(n2211), .C1(GND_net), 
          .D1(GND_net), .CIN(n8705), .COUT(n8706), .S0(bit_counter_31__N_197[23]), 
          .S1(bit_counter_31__N_197[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_25.INIT0 = 16'h5999;
    defparam add_600_25.INIT1 = 16'h5999;
    defparam add_600_25.INJECT1_0 = "NO";
    defparam add_600_25.INJECT1_1 = "NO";
    CCU2D add_600_23 (.A0(bit_counter[21]), .B0(n2211), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[22]), .B1(n2211), .C1(GND_net), 
          .D1(GND_net), .CIN(n8704), .COUT(n8705), .S0(bit_counter_31__N_197[21]), 
          .S1(bit_counter_31__N_197[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_23.INIT0 = 16'h5999;
    defparam add_600_23.INIT1 = 16'h5999;
    defparam add_600_23.INJECT1_0 = "NO";
    defparam add_600_23.INJECT1_1 = "NO";
    CCU2D add_600_21 (.A0(bit_counter[19]), .B0(n2211), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[20]), .B1(n2211), .C1(GND_net), 
          .D1(GND_net), .CIN(n8703), .COUT(n8704), .S0(bit_counter_31__N_197[19]), 
          .S1(bit_counter_31__N_197[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_21.INIT0 = 16'h5999;
    defparam add_600_21.INIT1 = 16'h5999;
    defparam add_600_21.INJECT1_0 = "NO";
    defparam add_600_21.INJECT1_1 = "NO";
    CCU2D add_600_19 (.A0(bit_counter[17]), .B0(n2211), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[18]), .B1(n2211), .C1(GND_net), 
          .D1(GND_net), .CIN(n8702), .COUT(n8703), .S0(bit_counter_31__N_197[17]), 
          .S1(bit_counter_31__N_197[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_19.INIT0 = 16'h5999;
    defparam add_600_19.INIT1 = 16'h5999;
    defparam add_600_19.INJECT1_0 = "NO";
    defparam add_600_19.INJECT1_1 = "NO";
    CCU2D add_600_17 (.A0(bit_counter[15]), .B0(n2211), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[16]), .B1(n2211), .C1(GND_net), 
          .D1(GND_net), .CIN(n8701), .COUT(n8702), .S0(bit_counter_31__N_197[15]), 
          .S1(bit_counter_31__N_197[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_17.INIT0 = 16'h5999;
    defparam add_600_17.INIT1 = 16'h5999;
    defparam add_600_17.INJECT1_0 = "NO";
    defparam add_600_17.INJECT1_1 = "NO";
    CCU2D add_600_15 (.A0(bit_counter[13]), .B0(n2211), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[14]), .B1(n2211), .C1(GND_net), 
          .D1(GND_net), .CIN(n8700), .COUT(n8701), .S0(bit_counter_31__N_197[13]), 
          .S1(bit_counter_31__N_197[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_15.INIT0 = 16'h5999;
    defparam add_600_15.INIT1 = 16'h5999;
    defparam add_600_15.INJECT1_0 = "NO";
    defparam add_600_15.INJECT1_1 = "NO";
    CCU2D add_600_13 (.A0(bit_counter[11]), .B0(n2211), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[12]), .B1(n2211), .C1(GND_net), 
          .D1(GND_net), .CIN(n8699), .COUT(n8700), .S0(bit_counter_31__N_197[11]), 
          .S1(bit_counter_31__N_197[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_13.INIT0 = 16'h5999;
    defparam add_600_13.INIT1 = 16'h5999;
    defparam add_600_13.INJECT1_0 = "NO";
    defparam add_600_13.INJECT1_1 = "NO";
    CCU2D add_600_11 (.A0(bit_counter[9]), .B0(n2211), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[10]), .B1(n2211), .C1(GND_net), .D1(GND_net), 
          .CIN(n8698), .COUT(n8699), .S0(bit_counter_31__N_197[9]), .S1(bit_counter_31__N_197[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_11.INIT0 = 16'h5999;
    defparam add_600_11.INIT1 = 16'h5999;
    defparam add_600_11.INJECT1_0 = "NO";
    defparam add_600_11.INJECT1_1 = "NO";
    CCU2D add_600_9 (.A0(bit_counter[7]), .B0(n2211), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[8]), .B1(n2211), .C1(GND_net), .D1(GND_net), 
          .CIN(n8697), .COUT(n8698), .S0(bit_counter_31__N_197[7]), .S1(bit_counter_31__N_197[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_9.INIT0 = 16'h5999;
    defparam add_600_9.INIT1 = 16'h5999;
    defparam add_600_9.INJECT1_0 = "NO";
    defparam add_600_9.INJECT1_1 = "NO";
    CCU2D add_50_23 (.A0(delay_counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8571), .COUT(n8572), .S0(n447[21]), .S1(n447[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_23.INIT0 = 16'h5555;
    defparam add_50_23.INIT1 = 16'h5555;
    defparam add_50_23.INJECT1_0 = "NO";
    defparam add_50_23.INJECT1_1 = "NO";
    CCU2D add_600_7 (.A0(bit_counter[5]), .B0(n2211), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[6]), .B1(n2211), .C1(GND_net), .D1(GND_net), 
          .CIN(n8696), .COUT(n8697), .S0(bit_counter_31__N_197[5]), .S1(bit_counter_31__N_197[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_7.INIT0 = 16'h5999;
    defparam add_600_7.INIT1 = 16'h5999;
    defparam add_600_7.INJECT1_0 = "NO";
    defparam add_600_7.INJECT1_1 = "NO";
    CCU2D add_600_5 (.A0(bit_counter[3]), .B0(n2211), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[4]), .B1(n2211), .C1(GND_net), .D1(GND_net), 
          .CIN(n8695), .COUT(n8696), .S0(bit_counter_31__N_197[3]), .S1(bit_counter_31__N_197[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_5.INIT0 = 16'h5999;
    defparam add_600_5.INIT1 = 16'h5999;
    defparam add_600_5.INJECT1_0 = "NO";
    defparam add_600_5.INJECT1_1 = "NO";
    CCU2D add_600_3 (.A0(bit_counter[1]), .B0(n2211), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[2]), .B1(n2211), .C1(GND_net), .D1(GND_net), 
          .CIN(n8694), .COUT(n8695), .S0(bit_counter_31__N_197[1]), .S1(bit_counter_31__N_197[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_3.INIT0 = 16'h5999;
    defparam add_600_3.INIT1 = 16'h5999;
    defparam add_600_3.INJECT1_0 = "NO";
    defparam add_600_3.INJECT1_1 = "NO";
    CCU2D add_600_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[0]), .B1(n2211), .C1(GND_net), .D1(GND_net), 
          .COUT(n8694), .S1(bit_counter_31__N_197[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(61[5] 75[12])
    defparam add_600_1.INIT0 = 16'hF000;
    defparam add_600_1.INIT1 = 16'h5999;
    defparam add_600_1.INJECT1_0 = "NO";
    defparam add_600_1.INJECT1_1 = "NO";
    LUT4 i470_2_lut_rep_219 (.A(state[2]), .B(state[1]), .Z(n9921)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i470_2_lut_rep_219.init = 16'h8888;
    LUT4 i6712_3_lut (.A(pixel[14]), .B(pixel[15]), .C(bit_counter[0]), 
         .Z(n9525)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6712_3_lut.init = 16'hcaca;
    LUT4 i6711_3_lut (.A(pixel[12]), .B(pixel[13]), .C(bit_counter[0]), 
         .Z(n9524)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6711_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_3_lut (.A(state[2]), .B(state[1]), .C(n2246), 
         .Z(sclk_c_enable_19)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i1_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 mux_457_i2_4_lut (.A(n1260[1]), .B(n2632[0]), .C(n9894), .D(n9882), 
         .Z(n1436[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_457_i2_4_lut.init = 16'hcfca;
    FD1P3IX pixel_i23 (.D(Q1[23]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i23.GSR = "ENABLED";
    FD1P3IX pixel_i22 (.D(Q1[22]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i22.GSR = "ENABLED";
    FD1P3IX pixel_i21 (.D(Q1[21]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i21.GSR = "ENABLED";
    FD1P3IX pixel_i20 (.D(Q1[20]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i20.GSR = "ENABLED";
    FD1P3IX pixel_i19 (.D(Q1[19]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i19.GSR = "ENABLED";
    FD1P3IX pixel_i18 (.D(Q1[18]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i18.GSR = "ENABLED";
    FD1P3IX pixel_i17 (.D(Q1[17]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i17.GSR = "ENABLED";
    FD1P3IX pixel_i16 (.D(Q1[16]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i16.GSR = "ENABLED";
    FD1P3IX pixel_i15 (.D(Q1[15]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i15.GSR = "ENABLED";
    FD1P3IX pixel_i14 (.D(Q1[14]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i14.GSR = "ENABLED";
    FD1P3IX pixel_i13 (.D(Q1[13]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i13.GSR = "ENABLED";
    FD1P3IX pixel_i12 (.D(Q1[12]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i12.GSR = "ENABLED";
    FD1P3IX pixel_i11 (.D(Q1[11]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i11.GSR = "ENABLED";
    FD1P3IX pixel_i10 (.D(Q1[10]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(pixel[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i10.GSR = "ENABLED";
    FD1P3IX pixel_i9 (.D(Q1[9]), .SP(sclk_c_enable_397), .CD(n9921), .CK(sclk_c), 
            .Q(pixel[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i9.GSR = "ENABLED";
    FD1P3IX pixel_i8 (.D(Q1[8]), .SP(sclk_c_enable_397), .CD(n9921), .CK(sclk_c), 
            .Q(pixel[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i8.GSR = "ENABLED";
    FD1P3IX pixel_i7 (.D(Q1[7]), .SP(sclk_c_enable_397), .CD(n9921), .CK(sclk_c), 
            .Q(pixel[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i7.GSR = "ENABLED";
    FD1P3IX pixel_i6 (.D(Q1[6]), .SP(sclk_c_enable_397), .CD(n9921), .CK(sclk_c), 
            .Q(pixel[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i6.GSR = "ENABLED";
    LUT4 mux_457_i4_4_lut (.A(n1260[3]), .B(n7719), .C(n9894), .D(n9882), 
         .Z(n1436[3])) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_457_i4_4_lut.init = 16'h3f3a;
    FD1P3IX pixel_i5 (.D(Q1[5]), .SP(sclk_c_enable_397), .CD(n9921), .CK(sclk_c), 
            .Q(pixel[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i5.GSR = "ENABLED";
    FD1P3IX pixel_i4 (.D(Q1[4]), .SP(sclk_c_enable_397), .CD(n9921), .CK(sclk_c), 
            .Q(pixel[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_199_3_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n9901)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i1_2_lut_rep_199_3_lut.init = 16'h0202;
    FD1P3IX pixel_i3 (.D(Q1[3]), .SP(sclk_c_enable_397), .CD(n9921), .CK(sclk_c), 
            .Q(pixel[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i3.GSR = "ENABLED";
    CCU2D add_50_21 (.A0(delay_counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8570), .COUT(n8571), .S0(n447[19]), .S1(n447[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_21.INIT0 = 16'h5555;
    defparam add_50_21.INIT1 = 16'h5555;
    defparam add_50_21.INJECT1_0 = "NO";
    defparam add_50_21.INJECT1_1 = "NO";
    FD1P3IX pixel_i2 (.D(Q1[2]), .SP(sclk_c_enable_397), .CD(n9921), .CK(sclk_c), 
            .Q(pixel[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i2.GSR = "ENABLED";
    LUT4 mux_441_i4_4_lut (.A(n447[3]), .B(n2211), .C(n9901), .D(n9), 
         .Z(n1260[3])) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_441_i4_4_lut.init = 16'hfa3a;
    FD1P3IX pixel_i1 (.D(Q1[1]), .SP(sclk_c_enable_397), .CD(n9921), .CK(sclk_c), 
            .Q(pixel[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam pixel_i1.GSR = "ENABLED";
    FD1P3AX cur_pixel_i8 (.D(cur_pixel_8__N_100[8]), .SP(sclk_c_enable_389), 
            .CK(sclk_c), .Q(cur_pixel[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i8.GSR = "ENABLED";
    FD1P3AX cur_pixel_i7 (.D(cur_pixel_8__N_100[7]), .SP(sclk_c_enable_389), 
            .CK(sclk_c), .Q(cur_pixel[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i7.GSR = "ENABLED";
    FD1P3AX cur_pixel_i6 (.D(cur_pixel_8__N_100[6]), .SP(sclk_c_enable_389), 
            .CK(sclk_c), .Q(cur_pixel[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i6.GSR = "ENABLED";
    FD1P3AX cur_pixel_i5 (.D(cur_pixel_8__N_100[5]), .SP(sclk_c_enable_389), 
            .CK(sclk_c), .Q(cur_pixel[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i5.GSR = "ENABLED";
    FD1P3AX cur_pixel_i4 (.D(cur_pixel_8__N_100[4]), .SP(sclk_c_enable_389), 
            .CK(sclk_c), .Q(cur_pixel[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i4.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(n2211), .B(state[2]), .C(state[1]), .D(state[0]), 
         .Z(sclk_c_enable_389)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hc2c0;
    FD1P3AX cur_pixel_i3 (.D(cur_pixel_8__N_100[3]), .SP(sclk_c_enable_389), 
            .CK(sclk_c), .Q(cur_pixel[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i3.GSR = "ENABLED";
    FD1P3AX cur_pixel_i2 (.D(cur_pixel_8__N_100[2]), .SP(sclk_c_enable_389), 
            .CK(sclk_c), .Q(cur_pixel[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i2.GSR = "ENABLED";
    LUT4 mux_457_i8_4_lut (.A(n1260[7]), .B(n7719), .C(n9894), .D(n9882), 
         .Z(n1436[7])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_457_i8_4_lut.init = 16'h303a;
    FD1P3AX cur_pixel_i1 (.D(cur_pixel_8__N_100[1]), .SP(sclk_c_enable_389), 
            .CK(sclk_c), .Q(cur_pixel[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam cur_pixel_i1.GSR = "ENABLED";
    FD1P3IX PixelAddress_i8 (.D(cur_pixel[8]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(RdAddress1[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i8.GSR = "ENABLED";
    LUT4 mux_457_i9_4_lut (.A(n1260[8]), .B(n7719), .C(n9894), .D(n9882), 
         .Z(n1436[8])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_457_i9_4_lut.init = 16'h303a;
    FD1P3IX PixelAddress_i7 (.D(cur_pixel[7]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(RdAddress1[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i7.GSR = "ENABLED";
    FD1P3IX PixelAddress_i6 (.D(cur_pixel[6]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(RdAddress1[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i6.GSR = "ENABLED";
    FD1P3IX PixelAddress_i5 (.D(cur_pixel[5]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(RdAddress1[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i5.GSR = "ENABLED";
    FD1P3IX PixelAddress_i4 (.D(cur_pixel[4]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(RdAddress1[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i4.GSR = "ENABLED";
    FD1P3IX PixelAddress_i3 (.D(cur_pixel[3]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(RdAddress1[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i3.GSR = "ENABLED";
    FD1P3IX PixelAddress_i2 (.D(cur_pixel[2]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(RdAddress1[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i2.GSR = "ENABLED";
    FD1P3IX PixelAddress_i1 (.D(cur_pixel[1]), .SP(sclk_c_enable_397), .CD(n9921), 
            .CK(sclk_c), .Q(RdAddress1[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam PixelAddress_i1.GSR = "ENABLED";
    FD1P3AX bit_counter_i31 (.D(bit_counter_31__N_165[31]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i31.GSR = "ENABLED";
    FD1P3AX bit_counter_i30 (.D(bit_counter_31__N_165[30]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i30.GSR = "ENABLED";
    FD1P3AX bit_counter_i29 (.D(bit_counter_31__N_165[29]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i29.GSR = "ENABLED";
    FD1P3AX bit_counter_i28 (.D(bit_counter_31__N_165[28]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i28.GSR = "ENABLED";
    FD1P3AX bit_counter_i27 (.D(bit_counter_31__N_165[27]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i27.GSR = "ENABLED";
    FD1P3AX bit_counter_i26 (.D(bit_counter_31__N_165[26]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i26.GSR = "ENABLED";
    FD1P3AX bit_counter_i25 (.D(bit_counter_31__N_165[25]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i25.GSR = "ENABLED";
    FD1P3AX bit_counter_i24 (.D(bit_counter_31__N_165[24]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i24.GSR = "ENABLED";
    FD1P3AX bit_counter_i23 (.D(bit_counter_31__N_165[23]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i23.GSR = "ENABLED";
    FD1P3AX bit_counter_i22 (.D(bit_counter_31__N_165[22]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i22.GSR = "ENABLED";
    LUT4 i511_3_lut_4_lut_4_lut (.A(state[1]), .B(n2246), .C(state[2]), 
         .D(n9888), .Z(n1519)) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i511_3_lut_4_lut_4_lut.init = 16'hf8a8;
    FD1P3AX bit_counter_i21 (.D(bit_counter_31__N_165[21]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i21.GSR = "ENABLED";
    FD1P3AX bit_counter_i20 (.D(bit_counter_31__N_165[20]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i20.GSR = "ENABLED";
    FD1P3AX bit_counter_i19 (.D(bit_counter_31__N_165[19]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i19.GSR = "ENABLED";
    FD1P3AX bit_counter_i18 (.D(bit_counter_31__N_165[18]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i18.GSR = "ENABLED";
    LUT4 i462_2_lut_rep_180_3_lut (.A(state[1]), .B(n2246), .C(state[2]), 
         .Z(n9882)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i462_2_lut_rep_180_3_lut.init = 16'h0808;
    FD1P3AX bit_counter_i17 (.D(bit_counter_31__N_165[17]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i17.GSR = "ENABLED";
    FD1P3AX bit_counter_i16 (.D(bit_counter_31__N_165[16]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i16.GSR = "ENABLED";
    FD1P3AX bit_counter_i15 (.D(bit_counter_31__N_165[15]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i15.GSR = "ENABLED";
    FD1P3AX bit_counter_i14 (.D(bit_counter_31__N_165[14]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i14.GSR = "ENABLED";
    FD1P3AX bit_counter_i13 (.D(bit_counter_31__N_165[13]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i13.GSR = "ENABLED";
    FD1P3AX bit_counter_i12 (.D(bit_counter_31__N_165[12]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i12.GSR = "ENABLED";
    FD1P3AX bit_counter_i11 (.D(bit_counter_31__N_165[11]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i11.GSR = "ENABLED";
    FD1P3AX bit_counter_i10 (.D(bit_counter_31__N_165[10]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i10.GSR = "ENABLED";
    FD1P3AX bit_counter_i9 (.D(bit_counter_31__N_165[9]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i9.GSR = "ENABLED";
    FD1P3AX bit_counter_i8 (.D(bit_counter_31__N_165[8]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i8.GSR = "ENABLED";
    FD1P3AX bit_counter_i7 (.D(bit_counter_31__N_165[7]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i7.GSR = "ENABLED";
    FD1P3AX bit_counter_i6 (.D(bit_counter_31__N_165[6]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i6.GSR = "ENABLED";
    FD1P3AX bit_counter_i5 (.D(bit_counter_31__N_165[5]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i5.GSR = "ENABLED";
    FD1P3IX bit_counter_i4 (.D(n1), .SP(sclk_c_enable_428), .CD(n9921), 
            .CK(sclk_c), .Q(bit_counter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i4.GSR = "ENABLED";
    FD1P3IX bit_counter_i3 (.D(n1_adj_854), .SP(sclk_c_enable_428), .CD(n9921), 
            .CK(sclk_c), .Q(bit_counter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i3.GSR = "ENABLED";
    FD1P3AX bit_counter_i2 (.D(bit_counter_31__N_165[2]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i2.GSR = "ENABLED";
    FD1P3AX bit_counter_i1 (.D(bit_counter_31__N_165[1]), .SP(sclk_c_enable_428), 
            .CK(sclk_c), .Q(bit_counter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=12, LSE_RCOL=18, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam bit_counter_i1.GSR = "ENABLED";
    CCU2D add_50_19 (.A0(delay_counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8569), .COUT(n8570), .S0(n447[17]), .S1(n447[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_19.INIT0 = 16'h5555;
    defparam add_50_19.INIT1 = 16'h5555;
    defparam add_50_19.INJECT1_0 = "NO";
    defparam add_50_19.INJECT1_1 = "NO";
    LUT4 i6710_3_lut (.A(pixel[10]), .B(pixel[11]), .C(bit_counter[0]), 
         .Z(n9523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6710_3_lut.init = 16'hcaca;
    CCU2D add_50_17 (.A0(delay_counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8568), .COUT(n8569), .S0(n447[15]), .S1(n447[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_17.INIT0 = 16'h5555;
    defparam add_50_17.INIT1 = 16'h5555;
    defparam add_50_17.INJECT1_0 = "NO";
    defparam add_50_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_4_lut (.A(state[2]), .B(state[1]), .C(n2246), 
         .D(state[0]), .Z(n6032)) /* synthesis lut_function=(A (B+(C))+!A (B (C)+!B (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hf9e8;
    CCU2D add_50_15 (.A0(delay_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8567), .COUT(n8568), .S0(n447[13]), .S1(n447[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_15.INIT0 = 16'h5555;
    defparam add_50_15.INIT1 = 16'h5555;
    defparam add_50_15.INJECT1_0 = "NO";
    defparam add_50_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_193 (.A(n2211), .B(n9), .Z(n9895)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_193.init = 16'h8888;
    CCU2D add_50_13 (.A0(delay_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8566), .COUT(n8567), .S0(n447[11]), .S1(n447[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_13.INIT0 = 16'h5555;
    defparam add_50_13.INIT1 = 16'h5555;
    defparam add_50_13.INJECT1_0 = "NO";
    defparam add_50_13.INJECT1_1 = "NO";
    LUT4 mux_447_i3_3_lut_4_lut_then_4_lut (.A(state[2]), .B(n2246), .C(state[0]), 
         .D(n447[2]), .Z(n9934)) /* synthesis lut_function=(A (D)+!A !(B (C)+!B !(D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam mux_447_i3_3_lut_4_lut_then_4_lut.init = 16'hbf04;
    LUT4 i6709_3_lut (.A(pixel[8]), .B(pixel[9]), .C(bit_counter[0]), 
         .Z(n9522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6709_3_lut.init = 16'hcaca;
    LUT4 mux_457_i10_4_lut (.A(n1260[9]), .B(n7719), .C(n9894), .D(n9882), 
         .Z(n1436[9])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_457_i10_4_lut.init = 16'h303a;
    LUT4 mux_441_i1_3_lut_4_lut (.A(n2211), .B(n9), .C(n9901), .D(n447[0]), 
         .Z(n1260[0])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam mux_441_i1_3_lut_4_lut.init = 16'h7f70;
    LUT4 mux_441_i2_3_lut_4_lut (.A(n2211), .B(n9), .C(n9901), .D(n447[1]), 
         .Z(n1260[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam mux_441_i2_3_lut_4_lut.init = 16'h7f70;
    LUT4 mux_447_i3_3_lut_4_lut_else_4_lut (.A(state[2]), .B(state[0]), 
         .C(n447[2]), .D(n2211), .Z(n9933)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B !(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam mux_447_i3_3_lut_4_lut_else_4_lut.init = 16'hb0f4;
    L6MUX21 i6719 (.D0(n9530), .D1(n9531), .SD(bit_counter[3]), .Z(n9532));
    LUT4 mux_457_i13_4_lut (.A(n1260[12]), .B(n7719), .C(n9894), .D(n9882), 
         .Z(n1436[12])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_457_i13_4_lut.init = 16'h303a;
    LUT4 mux_441_i8_3_lut_4_lut (.A(n2211), .B(n9), .C(n9901), .D(n447[7]), 
         .Z(n1260[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam mux_441_i8_3_lut_4_lut.init = 16'h8f80;
    LUT4 mux_441_i9_3_lut_4_lut (.A(n2211), .B(n9), .C(n9901), .D(n447[8]), 
         .Z(n1260[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam mux_441_i9_3_lut_4_lut.init = 16'h8f80;
    CCU2D add_50_11 (.A0(delay_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8565), .COUT(n8566), .S0(n447[9]), .S1(n447[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_11.INIT0 = 16'h5555;
    defparam add_50_11.INIT1 = 16'h5555;
    defparam add_50_11.INJECT1_0 = "NO";
    defparam add_50_11.INJECT1_1 = "NO";
    CCU2D add_6101_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8899), 
          .S0(n2246));
    defparam add_6101_cout.INIT0 = 16'h0000;
    defparam add_6101_cout.INIT1 = 16'h0000;
    defparam add_6101_cout.INJECT1_0 = "NO";
    defparam add_6101_cout.INJECT1_1 = "NO";
    CCU2D add_6101_31 (.A0(delay_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8898), .COUT(n8899));
    defparam add_6101_31.INIT0 = 16'hf555;
    defparam add_6101_31.INIT1 = 16'h5555;
    defparam add_6101_31.INJECT1_0 = "NO";
    defparam add_6101_31.INJECT1_1 = "NO";
    CCU2D add_50_9 (.A0(delay_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8564), .COUT(n8565), .S0(n447[7]), .S1(n447[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_9.INIT0 = 16'h5555;
    defparam add_50_9.INIT1 = 16'h5555;
    defparam add_50_9.INJECT1_0 = "NO";
    defparam add_50_9.INJECT1_1 = "NO";
    LUT4 mux_441_i10_3_lut_4_lut (.A(n2211), .B(n9), .C(n9901), .D(n447[9]), 
         .Z(n1260[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam mux_441_i10_3_lut_4_lut.init = 16'h8f80;
    LUT4 mux_441_i13_3_lut_4_lut (.A(n2211), .B(n9), .C(n9901), .D(n447[12]), 
         .Z(n1260[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam mux_441_i13_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_4_lut_3_lut (.A(state[2]), .B(state[1]), .C(state[0]), .Z(sclk_c_enable_397)) /* synthesis lut_function=(A (B)+!A !(B+(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i1_4_lut_3_lut.init = 16'h8989;
    CCU2D add_6101_29 (.A0(delay_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8897), .COUT(n8898));
    defparam add_6101_29.INIT0 = 16'hf555;
    defparam add_6101_29.INIT1 = 16'hf555;
    defparam add_6101_29.INJECT1_0 = "NO";
    defparam add_6101_29.INJECT1_1 = "NO";
    CCU2D add_6101_27 (.A0(delay_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8896), .COUT(n8897));
    defparam add_6101_27.INIT0 = 16'hf555;
    defparam add_6101_27.INIT1 = 16'hf555;
    defparam add_6101_27.INJECT1_0 = "NO";
    defparam add_6101_27.INJECT1_1 = "NO";
    CCU2D add_6101_25 (.A0(delay_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8895), .COUT(n8896));
    defparam add_6101_25.INIT0 = 16'hf555;
    defparam add_6101_25.INIT1 = 16'hf555;
    defparam add_6101_25.INJECT1_0 = "NO";
    defparam add_6101_25.INJECT1_1 = "NO";
    CCU2D add_6101_23 (.A0(delay_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8894), .COUT(n8895));
    defparam add_6101_23.INIT0 = 16'hf555;
    defparam add_6101_23.INIT1 = 16'hf555;
    defparam add_6101_23.INJECT1_0 = "NO";
    defparam add_6101_23.INJECT1_1 = "NO";
    CCU2D add_6101_21 (.A0(delay_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8893), .COUT(n8894));
    defparam add_6101_21.INIT0 = 16'hf555;
    defparam add_6101_21.INIT1 = 16'hf555;
    defparam add_6101_21.INJECT1_0 = "NO";
    defparam add_6101_21.INJECT1_1 = "NO";
    CCU2D add_6101_19 (.A0(delay_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8892), .COUT(n8893));
    defparam add_6101_19.INIT0 = 16'hf555;
    defparam add_6101_19.INIT1 = 16'hf555;
    defparam add_6101_19.INJECT1_0 = "NO";
    defparam add_6101_19.INJECT1_1 = "NO";
    CCU2D add_50_7 (.A0(delay_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8563), .COUT(n8564), .S0(n447[5]), .S1(n447[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_7.INIT0 = 16'h5555;
    defparam add_50_7.INIT1 = 16'h5555;
    defparam add_50_7.INJECT1_0 = "NO";
    defparam add_50_7.INJECT1_1 = "NO";
    CCU2D add_6101_17 (.A0(delay_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8891), .COUT(n8892));
    defparam add_6101_17.INIT0 = 16'hf555;
    defparam add_6101_17.INIT1 = 16'hf555;
    defparam add_6101_17.INJECT1_0 = "NO";
    defparam add_6101_17.INJECT1_1 = "NO";
    CCU2D add_6101_15 (.A0(delay_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8890), .COUT(n8891));
    defparam add_6101_15.INIT0 = 16'hf555;
    defparam add_6101_15.INIT1 = 16'hf555;
    defparam add_6101_15.INJECT1_0 = "NO";
    defparam add_6101_15.INJECT1_1 = "NO";
    LUT4 mux_457_i1_4_lut (.A(n1260[0]), .B(n2632[0]), .C(n9894), .D(n9882), 
         .Z(n1436[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam mux_457_i1_4_lut.init = 16'hcfca;
    CCU2D add_6101_13 (.A0(delay_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8889), .COUT(n8890));
    defparam add_6101_13.INIT0 = 16'hf555;
    defparam add_6101_13.INIT1 = 16'hf555;
    defparam add_6101_13.INJECT1_0 = "NO";
    defparam add_6101_13.INJECT1_1 = "NO";
    CCU2D add_50_5 (.A0(delay_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8562), .COUT(n8563), .S0(n447[3]), .S1(n447[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_5.INIT0 = 16'h5555;
    defparam add_50_5.INIT1 = 16'h5555;
    defparam add_50_5.INJECT1_0 = "NO";
    defparam add_50_5.INJECT1_1 = "NO";
    CCU2D add_50_3 (.A0(delay_counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8561), .COUT(n8562), .S0(n447[1]), .S1(n447[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_3.INIT0 = 16'h5555;
    defparam add_50_3.INIT1 = 16'h5555;
    defparam add_50_3.INJECT1_0 = "NO";
    defparam add_50_3.INJECT1_1 = "NO";
    CCU2D add_50_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_counter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8561), .S1(n447[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(103[23:36])
    defparam add_50_1.INIT0 = 16'hF000;
    defparam add_50_1.INIT1 = 16'h5555;
    defparam add_50_1.INJECT1_0 = "NO";
    defparam add_50_1.INJECT1_1 = "NO";
    L6MUX21 i6717 (.D0(n9526), .D1(n9527), .SD(bit_counter[2]), .Z(n9530));
    CCU2D add_6101_11 (.A0(delay_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8888), .COUT(n8889));
    defparam add_6101_11.INIT0 = 16'hf555;
    defparam add_6101_11.INIT1 = 16'hf555;
    defparam add_6101_11.INJECT1_0 = "NO";
    defparam add_6101_11.INJECT1_1 = "NO";
    CCU2D add_6101_9 (.A0(delay_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8887), .COUT(n8888));
    defparam add_6101_9.INIT0 = 16'hf555;
    defparam add_6101_9.INIT1 = 16'hf555;
    defparam add_6101_9.INJECT1_0 = "NO";
    defparam add_6101_9.INJECT1_1 = "NO";
    LUT4 i5312_2_lut_3_lut (.A(state[2]), .B(n9), .C(n118[0]), .Z(cur_pixel_8__N_100[0])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5312_2_lut_3_lut.init = 16'h1010;
    CCU2D add_6101_7 (.A0(delay_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8886), .COUT(n8887));
    defparam add_6101_7.INIT0 = 16'hf555;
    defparam add_6101_7.INIT1 = 16'hf555;
    defparam add_6101_7.INJECT1_0 = "NO";
    defparam add_6101_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_36 (.A(state[2]), .B(n9), .C(n118[8]), .Z(cur_pixel_8__N_100[8])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_36.init = 16'h1010;
    CCU2D add_6101_5 (.A0(delay_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8885), .COUT(n8886));
    defparam add_6101_5.INIT0 = 16'hf555;
    defparam add_6101_5.INIT1 = 16'hf555;
    defparam add_6101_5.INJECT1_0 = "NO";
    defparam add_6101_5.INJECT1_1 = "NO";
    L6MUX21 i6718 (.D0(n9528), .D1(n9529), .SD(bit_counter[2]), .Z(n9531));
    LUT4 i5323_3_lut (.A(serial_N_430), .B(state[2]), .C(state[0]), .Z(serial_N_426)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(50[3] 110[12])
    defparam i5323_3_lut.init = 16'h2323;
    LUT4 i5526_2_lut_3_lut (.A(state[2]), .B(n9), .C(n118[7]), .Z(cur_pixel_8__N_100[7])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5526_2_lut_3_lut.init = 16'h1010;
    CCU2D add_6101_3 (.A0(delay_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8884), .COUT(n8885));
    defparam add_6101_3.INIT0 = 16'hf555;
    defparam add_6101_3.INIT1 = 16'hf555;
    defparam add_6101_3.INJECT1_0 = "NO";
    defparam add_6101_3.INJECT1_1 = "NO";
    CCU2D add_17_9 (.A0(cur_pixel[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8559), .S0(n118[7]), .S1(n118[8]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_9.INIT0 = 16'h5aaa;
    defparam add_17_9.INIT1 = 16'h5aaa;
    defparam add_17_9.INJECT1_0 = "NO";
    defparam add_17_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_37 (.A(state[2]), .B(n9), .C(n118[6]), .Z(cur_pixel_8__N_100[6])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_37.init = 16'h1010;
    LUT4 i6707_3_lut (.A(pixel[4]), .B(pixel[5]), .C(bit_counter[0]), 
         .Z(n9520)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6707_3_lut.init = 16'hcaca;
    LUT4 mux_494_i3_then_3_lut (.A(state[2]), .B(n2246), .C(state[0]), 
         .Z(n9940)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam mux_494_i3_then_3_lut.init = 16'h4040;
    CCU2D add_6101_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_counter[0]), .B1(delay_counter[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n8884));
    defparam add_6101_1.INIT0 = 16'hF000;
    defparam add_6101_1.INIT1 = 16'ha666;
    defparam add_6101_1.INJECT1_0 = "NO";
    defparam add_6101_1.INJECT1_1 = "NO";
    CCU2D add_17_7 (.A0(cur_pixel[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8558), .COUT(n8559), .S0(n118[5]), .S1(n118[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_7.INIT0 = 16'h5aaa;
    defparam add_17_7.INIT1 = 16'h5aaa;
    defparam add_17_7.INJECT1_0 = "NO";
    defparam add_17_7.INJECT1_1 = "NO";
    LUT4 mux_494_i3_else_3_lut (.A(state[2]), .B(n9), .C(n2211), .D(state[0]), 
         .Z(n9939)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam mux_494_i3_else_3_lut.init = 16'h4000;
    LUT4 i6706_3_lut (.A(pixel[2]), .B(pixel[3]), .C(bit_counter[0]), 
         .Z(n9519)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6706_3_lut.init = 16'hcaca;
    PFUMX i6908 (.BLUT(n9939), .ALUT(n9940), .C0(state[1]), .Z(state_2__N_97[2]));
    LUT4 i1_2_lut_3_lut_adj_38 (.A(state[2]), .B(n9), .C(n118[5]), .Z(cur_pixel_8__N_100[5])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_38.init = 16'h1010;
    LUT4 bit_counter_4__I_0_i31_4_lut (.A(n9532), .B(n9561), .C(bit_counter[4]), 
         .D(bit_counter[3]), .Z(serial_N_430)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(86[22:33])
    defparam bit_counter_4__I_0_i31_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_3_lut_adj_39 (.A(state[2]), .B(n9), .C(n118[4]), .Z(cur_pixel_8__N_100[4])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_39.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_40 (.A(state[2]), .B(n9), .C(n118[3]), .Z(cur_pixel_8__N_100[3])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_40.init = 16'h1010;
    L6MUX21 i6748 (.D0(n9559), .D1(n9560), .SD(bit_counter[2]), .Z(n9561));
    LUT4 i1_2_lut_3_lut_adj_41 (.A(state[2]), .B(n9), .C(n118[2]), .Z(cur_pixel_8__N_100[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_41.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_42 (.A(state[2]), .B(n9), .C(n118[1]), .Z(cur_pixel_8__N_100[1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_42.init = 16'h1010;
    LUT4 i6831_3_lut_4_lut_rep_218 (.A(state[2]), .B(state[1]), .C(state[0]), 
         .D(n2246), .Z(sclk_c_enable_185)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i6831_3_lut_4_lut_rep_218.init = 16'hfeff;
    CCU2D add_17_5 (.A0(cur_pixel[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8557), .COUT(n8558), .S0(n118[3]), .S1(n118[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_5.INIT0 = 16'h5aaa;
    defparam add_17_5.INIT1 = 16'h5aaa;
    defparam add_17_5.INJECT1_0 = "NO";
    defparam add_17_5.INJECT1_1 = "NO";
    PFUMX i6904 (.BLUT(n9933), .ALUT(n9934), .C0(state[1]), .Z(n9935));
    LUT4 i6705_3_lut (.A(pixel[0]), .B(pixel[1]), .C(bit_counter[0]), 
         .Z(n9518)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6705_3_lut.init = 16'hcaca;
    CCU2D add_17_3 (.A0(cur_pixel[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur_pixel[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8556), .COUT(n8557), .S0(n118[1]), .S1(n118[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_17_3.INIT0 = 16'h5aaa;
    defparam add_17_3.INIT1 = 16'h5aaa;
    defparam add_17_3.INJECT1_0 = "NO";
    defparam add_17_3.INJECT1_1 = "NO";
    LUT4 i5230_2_lut_3_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n2632[0])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/ws2812.vhd(40[2] 111[14])
    defparam i5230_2_lut_3_lut.init = 16'h7070;
    
endmodule
//
// Verilog Description of module frame_buffer_0
//

module frame_buffer_0 (WrAddress, RdAddress2, Data, \WE[2] , sclk_c, 
            VCC_net, GND_net, Q2) /* synthesis NGD_DRC_MASK=1 */ ;
    input [8:0]WrAddress;
    input [8:0]RdAddress2;
    input [23:0]Data;
    input \WE[2] ;
    input sclk_c;
    input VCC_net;
    input GND_net;
    output [23:0]Q2;
    
    wire sclk_c /* synthesis is_clock=1, SET_AS_NETWORK=sclk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(6[3:7])
    
    PDPW8KC frame_buffer_0_0_1_0 (.DI0(Data[18]), .DI1(Data[19]), .DI2(Data[20]), 
            .DI3(Data[21]), .DI4(Data[22]), .DI5(Data[23]), .DI6(GND_net), 
            .DI7(GND_net), .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), 
            .DI11(GND_net), .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .ADW0(WrAddress[0]), 
            .ADW1(WrAddress[1]), .ADW2(WrAddress[2]), .ADW3(WrAddress[3]), 
            .ADW4(WrAddress[4]), .ADW5(WrAddress[5]), .ADW6(WrAddress[6]), 
            .ADW7(WrAddress[7]), .ADW8(WrAddress[8]), .BE0(VCC_net), .BE1(VCC_net), 
            .CEW(VCC_net), .CLKW(sclk_c), .CSW0(\WE[2] ), .CSW1(GND_net), 
            .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), .ADR2(GND_net), 
            .ADR3(GND_net), .ADR4(RdAddress2[0]), .ADR5(RdAddress2[1]), 
            .ADR6(RdAddress2[2]), .ADR7(RdAddress2[3]), .ADR8(RdAddress2[4]), 
            .ADR9(RdAddress2[5]), .ADR10(RdAddress2[6]), .ADR11(RdAddress2[7]), 
            .ADR12(RdAddress2[8]), .CER(VCC_net), .OCER(VCC_net), .CLKR(sclk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO9(Q2[18]), .DO10(Q2[19]), .DO11(Q2[20]), .DO12(Q2[21]), 
            .DO13(Q2[22]), .DO14(Q2[23])) /* synthesis MEM_LPC_FILE="frame_buffer_0.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=30, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(135[16:30])
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
    PDPW8KC frame_buffer_0_0_0_1 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), 
            .DI3(Data[3]), .DI4(Data[4]), .DI5(Data[5]), .DI6(Data[6]), 
            .DI7(Data[7]), .DI8(Data[8]), .DI9(Data[9]), .DI10(Data[10]), 
            .DI11(Data[11]), .DI12(Data[12]), .DI13(Data[13]), .DI14(Data[14]), 
            .DI15(Data[15]), .DI16(Data[16]), .DI17(Data[17]), .ADW0(WrAddress[0]), 
            .ADW1(WrAddress[1]), .ADW2(WrAddress[2]), .ADW3(WrAddress[3]), 
            .ADW4(WrAddress[4]), .ADW5(WrAddress[5]), .ADW6(WrAddress[6]), 
            .ADW7(WrAddress[7]), .ADW8(WrAddress[8]), .BE0(VCC_net), .BE1(VCC_net), 
            .CEW(VCC_net), .CLKW(sclk_c), .CSW0(\WE[2] ), .CSW1(GND_net), 
            .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), .ADR2(GND_net), 
            .ADR3(GND_net), .ADR4(RdAddress2[0]), .ADR5(RdAddress2[1]), 
            .ADR6(RdAddress2[2]), .ADR7(RdAddress2[3]), .ADR8(RdAddress2[4]), 
            .ADR9(RdAddress2[5]), .ADR10(RdAddress2[6]), .ADR11(RdAddress2[7]), 
            .ADR12(RdAddress2[8]), .CER(VCC_net), .OCER(VCC_net), .CLKR(sclk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO0(Q2[9]), .DO1(Q2[10]), .DO2(Q2[11]), .DO3(Q2[12]), .DO4(Q2[13]), 
            .DO5(Q2[14]), .DO6(Q2[15]), .DO7(Q2[16]), .DO8(Q2[17]), 
            .DO9(Q2[0]), .DO10(Q2[1]), .DO11(Q2[2]), .DO12(Q2[3]), .DO13(Q2[4]), 
            .DO14(Q2[5]), .DO15(Q2[6]), .DO16(Q2[7]), .DO17(Q2[8])) /* synthesis MEM_LPC_FILE="frame_buffer_0.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=30, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(135[16:30])
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
    
endmodule
