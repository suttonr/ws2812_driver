// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Feb 11 19:56:24 2024
//
// Verilog Description of module button_test
//

module button_test (clk, button, led1);   // c:/users/ryanm/documents/diamond/ws2812_driver/button_test.vhd(5[8:19])
    input clk;   // c:/users/ryanm/documents/diamond/ws2812_driver/button_test.vhd(10[3:6])
    input button;   // c:/users/ryanm/documents/diamond/ws2812_driver/button_test.vhd(11[3:9])
    output led1;   // c:/users/ryanm/documents/diamond/ws2812_driver/button_test.vhd(12[3:7])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/button_test.vhd(10[3:6])
    
    wire GND_net, button_c, led1_c, VCC_net;
    
    VHI i17 (.Z(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    OB led1_pad (.I(led1_c), .O(led1));   // c:/users/ryanm/documents/diamond/ws2812_driver/button_test.vhd(12[3:7])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/button_test.vhd(10[3:6])
    IB button_pad (.I(button), .O(button_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/button_test.vhd(11[3:9])
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3AX led1_8 (.D(button_c), .CK(clk_c), .Q(led1_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/button_test.vhd(18[2] 22[14])
    defparam led1_8.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i21 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

