// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Feb 11 19:32:53 2024
//
// Verilog Description of module WS2812
//

module WS2812 (clk, data, serial, load_delay);   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(9[8:14])
    input clk;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(14[3:6])
    output [23:0]data;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    output serial;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(16[3:9])
    output load_delay;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(17[3:13])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(14[3:6])
    
    wire GND_net, VCC_net, n3695, data_c_19, data_c_18, data_c_17, 
        data_c_16, data_c_11, data_c_10, data_c_9, data_c_8, data_c_3, 
        data_c_2, data_c_1, data_c_0, serial_c, load_delay_c;
    wire [1:0]state;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(40[12:17])
    wire [23:0]GRB;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(41[12:15])
    wire [31:0]delay_high_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(42[12:30])
    wire [31:0]delay_low_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(43[12:29])
    wire [31:0]delay_load_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(44[12:30])
    wire [31:0]index;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(45[12:17])
    wire [31:0]bit_counter;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(46[12:23])
    
    wire n3694;
    wire [23:0]GRB_23__N_187;
    
    wire n3693, n3692, n67, n3691, n3690, n1853, n3689, n3688, 
        n3687, n3686, n3685, n3684, n3683, n3682, n3681, n3856, 
        n3680, n3086, n3772;
    wire [31:0]bit_counter_31__N_211;
    
    wire n3679;
    wire [31:0]delay_low_counter_31__N_409;
    
    wire n3855;
    wire [31:0]index_31__N_473;
    wire [31:0]delay_high_counter_31__N_281;
    
    wire n1818, n3678, load_delay_N_512;
    wire [31:0]delay_low_counter_31__N_345;
    
    wire n1783, n3677, n3676, n3675, n3674, n3673;
    wire [31:0]delay_load_counter_31__N_249;
    
    wire n3672;
    wire [1:0]state_1__N_1;
    
    wire n3671, n3670, n3669, n3668, n3667, n3666, n3665, n3664, 
        n3663, n3662, n3661, n3660, n3659, n3658, n3657, n3656, 
        n3655, n3654, n3653, n3652, n3651, n3650, n3649, n3648, 
        n3647, n3646, n3645, n3644, n3643, n3642, n3641, n3640, 
        n3639, n3638, n3637, n3636, n3635, n3634, n3633, n3632, 
        n3631, n3630, n3629, n3628, n3627, n3626, n3625, n3624, 
        n3623, n3622, n3621, n3620, n3619, n3618, n3617, n3616, 
        n3615, n3614;
    wire [31:0]delay_high_counter_31__N_27;
    
    wire n3613, n3612, n3611, n3610, n3609, n3608, n3607, n3606, 
        n3605, n3604, n3603, n3602, n3601, n3600, n3599, n3598, 
        n3597, n3596, n3595, n3594, n3593, n3592;
    wire [31:0]delay_low_counter_31__N_59;
    
    wire n3591, n3590, clk_c_enable_90, n3771, n3589, n3588, n3587, 
        n3854, clk_c_enable_137, n3846, n3852, n3586, n3585, n3828, 
        clk_c_enable_47, n3584, n3768, n3583, n3827, clk_c_enable_114, 
        n3582, n3581, clk_c_enable_176, n3054, n3136, n3851, clk_c_enable_167, 
        clk_c_enable_36, n3580, n1888, clk_c_enable_9, n3826, n3579, 
        n3844, clk_c_enable_11, clk_c_enable_58, n3699, n3698, n3697, 
        n3696, n3578, n3577, clk_c_enable_62, n3576, n3575, n3574, 
        clk_c_enable_161, n3573, n3572, n3571, n3570, n3824, n3569, 
        n3568, n3567, n3566, n3565, n3564, n3563, n3562, n3561, 
        n3560, n3559, n3558, n3557, n8, n3556, n3555, n3554, 
        n3553, n3552, n3551, n3550, n3549, n3548, n3547, n3546, 
        n3545, n3544, n3543, n3542, n3541;
    
    VHI i2 (.Z(VCC_net));
    LUT4 state_1__I_0_92_Mux_3_i3_3_lut_4_lut (.A(n67), .B(delay_low_counter_31__N_409[8]), 
         .C(delay_low_counter_31__N_345[3]), .D(state[1]), .Z(delay_low_counter_31__N_59[3])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_92_Mux_3_i3_3_lut_4_lut.init = 16'hf022;
    FD1P3IX bit_counter_i30 (.D(bit_counter_31__N_211[30]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i30.GSR = "ENABLED";
    FD1P3IX bit_counter_i29 (.D(bit_counter_31__N_211[29]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i29.GSR = "ENABLED";
    CCU2D add_1665_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3652), 
          .S0(n1818));
    defparam add_1665_cout.INIT0 = 16'h0000;
    defparam add_1665_cout.INIT1 = 16'h0000;
    defparam add_1665_cout.INJECT1_0 = "NO";
    defparam add_1665_cout.INJECT1_1 = "NO";
    FD1P3AX GRB_i0 (.D(GRB_23__N_187[4]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i0.GSR = "ENABLED";
    CCU2D add_10_9 (.A0(bit_counter[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3544), .COUT(n3545), .S0(bit_counter_31__N_211[7]), .S1(bit_counter_31__N_211[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_9.INIT0 = 16'h5555;
    defparam add_10_9.INIT1 = 16'h5555;
    defparam add_10_9.INJECT1_0 = "NO";
    defparam add_10_9.INJECT1_1 = "NO";
    FD1P3IX bit_counter_i28 (.D(bit_counter_31__N_211[28]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i28.GSR = "ENABLED";
    FD1P3IX bit_counter_i27 (.D(bit_counter_31__N_211[27]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i27.GSR = "ENABLED";
    FD1P3IX bit_counter_i26 (.D(bit_counter_31__N_211[26]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i26.GSR = "ENABLED";
    FD1P3IX bit_counter_i25 (.D(bit_counter_31__N_211[25]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i25.GSR = "ENABLED";
    CCU2D add_1665_31 (.A0(delay_high_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3651), .COUT(n3652));
    defparam add_1665_31.INIT0 = 16'hf555;
    defparam add_1665_31.INIT1 = 16'h5555;
    defparam add_1665_31.INJECT1_0 = "NO";
    defparam add_1665_31.INJECT1_1 = "NO";
    FD1P3IX bit_counter_i24 (.D(bit_counter_31__N_211[24]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i24.GSR = "ENABLED";
    OB data_pad_23 (.I(data_c_19), .O(data[23]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    FD1P3AX state_i0 (.D(state_1__N_1[0]), .SP(clk_c_enable_9), .CK(clk_c), 
            .Q(state[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam state_i0.GSR = "ENABLED";
    FD1P3AX delay_high_counter_i0 (.D(delay_high_counter_31__N_27[0]), .SP(clk_c_enable_167), 
            .CK(clk_c), .Q(delay_high_counter[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i0.GSR = "ENABLED";
    FD1S3AX data_i1 (.D(GRB[0]), .CK(clk_c), .Q(data_c_0));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i1.GSR = "ENABLED";
    FD1P3AX serial_85 (.D(n3844), .SP(clk_c_enable_11), .CK(clk_c), .Q(serial_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam serial_85.GSR = "ENABLED";
    FD1P3AX GRB_i1 (.D(GRB_23__N_187[5]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i1.GSR = "ENABLED";
    FD1P3IX bit_counter_i23 (.D(bit_counter_31__N_211[23]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i23.GSR = "ENABLED";
    FD1P3IX bit_counter_i22 (.D(bit_counter_31__N_211[22]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i22.GSR = "ENABLED";
    FD1P3IX bit_counter_i21 (.D(bit_counter_31__N_211[21]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i21.GSR = "ENABLED";
    FD1P3IX bit_counter_i20 (.D(bit_counter_31__N_211[20]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i20.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    FD1P3IX bit_counter_i19 (.D(bit_counter_31__N_211[19]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i19.GSR = "ENABLED";
    FD1P3IX bit_counter_i18 (.D(bit_counter_31__N_211[18]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i18.GSR = "ENABLED";
    LUT4 index_3__bdd_4_lut_1791 (.A(index[3]), .B(index[0]), .C(index[2]), 
         .D(index[1]), .Z(GRB_23__N_187[6])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (C+!(D)))) */ ;
    defparam index_3__bdd_4_lut_1791.init = 16'h2508;
    FD1P3IX bit_counter_i17 (.D(bit_counter_31__N_211[17]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i17.GSR = "ENABLED";
    FD1P3IX bit_counter_i16 (.D(bit_counter_31__N_211[16]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i16.GSR = "ENABLED";
    FD1P3IX bit_counter_i15 (.D(bit_counter_31__N_211[15]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i15.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1P3IX bit_counter_i14 (.D(bit_counter_31__N_211[14]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i14.GSR = "ENABLED";
    FD1P3IX bit_counter_i13 (.D(bit_counter_31__N_211[13]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i13.GSR = "ENABLED";
    FD1P3IX bit_counter_i12 (.D(bit_counter_31__N_211[12]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i12.GSR = "ENABLED";
    CCU2D add_1665_29 (.A0(delay_high_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3650), .COUT(n3651));
    defparam add_1665_29.INIT0 = 16'hf555;
    defparam add_1665_29.INIT1 = 16'hf555;
    defparam add_1665_29.INJECT1_0 = "NO";
    defparam add_1665_29.INJECT1_1 = "NO";
    LUT4 i1495_3_lut_4_lut (.A(delay_low_counter_31__N_409[8]), .B(state[1]), 
         .C(state[0]), .D(n1783), .Z(state_1__N_1[0])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam i1495_3_lut_4_lut.init = 16'h2f0f;
    LUT4 i1_3_lut_4_lut (.A(n1818), .B(state[0]), .C(state[1]), .D(n1853), 
         .Z(clk_c_enable_11)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h10f0;
    FD1P3IX bit_counter_i11 (.D(bit_counter_31__N_211[11]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i11.GSR = "ENABLED";
    CCU2D add_1665_27 (.A0(delay_high_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3649), .COUT(n3650));
    defparam add_1665_27.INIT0 = 16'hf555;
    defparam add_1665_27.INIT1 = 16'hf555;
    defparam add_1665_27.INJECT1_0 = "NO";
    defparam add_1665_27.INJECT1_1 = "NO";
    FD1P3IX bit_counter_i10 (.D(bit_counter_31__N_211[10]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i10.GSR = "ENABLED";
    FD1P3IX bit_counter_i9 (.D(bit_counter_31__N_211[9]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i9.GSR = "ENABLED";
    CCU2D add_160_25 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[23]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[24]), 
          .D1(GND_net), .CIN(n3568), .COUT(n3569), .S0(delay_load_counter_31__N_249[23]), 
          .S1(delay_load_counter_31__N_249[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_25.INIT0 = 16'hd2d2;
    defparam add_160_25.INIT1 = 16'hd2d2;
    defparam add_160_25.INJECT1_0 = "NO";
    defparam add_160_25.INJECT1_1 = "NO";
    FD1P3IX bit_counter_i8 (.D(bit_counter_31__N_211[8]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i8.GSR = "ENABLED";
    CCU2D add_160_23 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[21]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[22]), 
          .D1(GND_net), .CIN(n3567), .COUT(n3568), .S0(delay_load_counter_31__N_249[21]), 
          .S1(delay_load_counter_31__N_249[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_23.INIT0 = 16'hd2d2;
    defparam add_160_23.INIT1 = 16'hd2d2;
    defparam add_160_23.INJECT1_0 = "NO";
    defparam add_160_23.INJECT1_1 = "NO";
    FD1P3IX bit_counter_i7 (.D(bit_counter_31__N_211[7]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i7.GSR = "ENABLED";
    FD1P3IX bit_counter_i6 (.D(bit_counter_31__N_211[6]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i6.GSR = "ENABLED";
    LUT4 i1176_3_lut_4_lut (.A(n1818), .B(state[0]), .C(state[1]), .D(n3846), 
         .Z(clk_c_enable_137)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i1176_3_lut_4_lut.init = 16'hefe0;
    FD1P3IX bit_counter_i5 (.D(bit_counter_31__N_211[5]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i5.GSR = "ENABLED";
    CCU2D add_160_21 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[19]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[20]), 
          .D1(GND_net), .CIN(n3566), .COUT(n3567), .S0(delay_load_counter_31__N_249[19]), 
          .S1(delay_load_counter_31__N_249[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_21.INIT0 = 16'hd2d2;
    defparam add_160_21.INIT1 = 16'hd2d2;
    defparam add_160_21.INJECT1_0 = "NO";
    defparam add_160_21.INJECT1_1 = "NO";
    FD1P3JX bit_counter_i4 (.D(bit_counter_31__N_211[4]), .SP(clk_c_enable_161), 
            .PD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i4.GSR = "ENABLED";
    LUT4 index_3__bdd_4_lut (.A(index[3]), .B(index[0]), .C(index[2]), 
         .D(index[1]), .Z(GRB_23__N_187[22])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B !(C+(D))))) */ ;
    defparam index_3__bdd_4_lut.init = 16'h6401;
    CCU2D add_10_7 (.A0(bit_counter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3543), .COUT(n3544), .S0(bit_counter_31__N_211[5]), .S1(bit_counter_31__N_211[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_7.INIT0 = 16'h5555;
    defparam add_10_7.INIT1 = 16'h5555;
    defparam add_10_7.INJECT1_0 = "NO";
    defparam add_10_7.INJECT1_1 = "NO";
    FD1P3JX bit_counter_i3 (.D(bit_counter_31__N_211[3]), .SP(clk_c_enable_161), 
            .PD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i3.GSR = "ENABLED";
    CCU2D add_10_5 (.A0(bit_counter[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3542), .COUT(n3543), .S0(bit_counter_31__N_211[3]), .S1(bit_counter_31__N_211[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_5.INIT0 = 16'h5555;
    defparam add_10_5.INIT1 = 16'h5555;
    defparam add_10_5.INJECT1_0 = "NO";
    defparam add_10_5.INJECT1_1 = "NO";
    LUT4 state_1__I_0_91_Mux_1_i3_3_lut (.A(n67), .B(delay_high_counter_31__N_281[1]), 
         .C(state[1]), .Z(delay_high_counter_31__N_27[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_91_Mux_1_i3_3_lut.init = 16'hcaca;
    FD1P3IX bit_counter_i2 (.D(bit_counter_31__N_211[2]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i2.GSR = "ENABLED";
    CCU2D add_10_3 (.A0(bit_counter[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3541), .COUT(n3542), .S0(bit_counter_31__N_211[1]), .S1(bit_counter_31__N_211[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_3.INIT0 = 16'h5555;
    defparam add_10_3.INIT1 = 16'h5555;
    defparam add_10_3.INJECT1_0 = "NO";
    defparam add_10_3.INJECT1_1 = "NO";
    CCU2D add_10_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3541), .S1(bit_counter_31__N_211[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_1.INIT0 = 16'hF000;
    defparam add_10_1.INIT1 = 16'h5555;
    defparam add_10_1.INJECT1_0 = "NO";
    defparam add_10_1.INJECT1_1 = "NO";
    FD1P3IX bit_counter_i1 (.D(bit_counter_31__N_211[1]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i1.GSR = "ENABLED";
    FD1P3AX load_delay_86 (.D(load_delay_N_512), .SP(clk_c_enable_36), .CK(clk_c), 
            .Q(load_delay_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam load_delay_86.GSR = "ENABLED";
    CCU2D add_1665_25 (.A0(delay_high_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3648), .COUT(n3649));
    defparam add_1665_25.INIT0 = 16'hf555;
    defparam add_1665_25.INIT1 = 16'hf555;
    defparam add_1665_25.INJECT1_0 = "NO";
    defparam add_1665_25.INJECT1_1 = "NO";
    OB data_pad_22 (.I(data_c_18), .O(data[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_21 (.I(data_c_17), .O(data[21]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_20 (.I(data_c_16), .O(data[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_19 (.I(data_c_19), .O(data[19]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_18 (.I(data_c_18), .O(data[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_17 (.I(data_c_17), .O(data[17]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_16 (.I(data_c_16), .O(data[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_15 (.I(data_c_11), .O(data[15]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_14 (.I(data_c_10), .O(data[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_13 (.I(data_c_9), .O(data[13]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_12 (.I(data_c_8), .O(data[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_11 (.I(data_c_11), .O(data[11]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_10 (.I(data_c_10), .O(data[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_9 (.I(data_c_9), .O(data[9]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_8 (.I(data_c_8), .O(data[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_7 (.I(data_c_3), .O(data[7]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_6 (.I(data_c_2), .O(data[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_5 (.I(data_c_1), .O(data[5]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_4 (.I(data_c_0), .O(data[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_3 (.I(data_c_3), .O(data[3]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_2 (.I(data_c_2), .O(data[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_1 (.I(data_c_1), .O(data[1]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB data_pad_0 (.I(data_c_0), .O(data[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(15[3:7])
    OB serial_pad (.I(serial_c), .O(serial));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(16[3:9])
    OB load_delay_pad (.I(load_delay_c), .O(load_delay));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(17[3:13])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(14[3:6])
    CCU2D add_160_19 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[17]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[18]), 
          .D1(GND_net), .CIN(n3565), .COUT(n3566), .S0(delay_load_counter_31__N_249[17]), 
          .S1(delay_load_counter_31__N_249[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_19.INIT0 = 16'hd2d2;
    defparam add_160_19.INIT1 = 16'hd2d2;
    defparam add_160_19.INJECT1_0 = "NO";
    defparam add_160_19.INJECT1_1 = "NO";
    CCU2D add_160_17 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[15]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[16]), 
          .D1(GND_net), .CIN(n3564), .COUT(n3565), .S0(delay_load_counter_31__N_249[15]), 
          .S1(delay_load_counter_31__N_249[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_17.INIT0 = 16'hd2d2;
    defparam add_160_17.INIT1 = 16'hd2d2;
    defparam add_160_17.INJECT1_0 = "NO";
    defparam add_160_17.INJECT1_1 = "NO";
    CCU2D add_160_15 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[13]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[14]), 
          .D1(GND_net), .CIN(n3563), .COUT(n3564), .S0(delay_load_counter_31__N_249[13]), 
          .S1(delay_load_counter_31__N_249[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_15.INIT0 = 16'hd2d2;
    defparam add_160_15.INIT1 = 16'hd2d2;
    defparam add_160_15.INJECT1_0 = "NO";
    defparam add_160_15.INJECT1_1 = "NO";
    CCU2D add_160_13 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[11]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[12]), 
          .D1(GND_net), .CIN(n3562), .COUT(n3563), .S0(delay_load_counter_31__N_249[11]), 
          .S1(delay_load_counter_31__N_249[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_13.INIT0 = 16'hd2d2;
    defparam add_160_13.INIT1 = 16'hd2d2;
    defparam add_160_13.INJECT1_0 = "NO";
    defparam add_160_13.INJECT1_1 = "NO";
    CCU2D add_160_11 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[9]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[10]), 
          .D1(GND_net), .CIN(n3561), .COUT(n3562), .S0(delay_load_counter_31__N_249[9]), 
          .S1(delay_load_counter_31__N_249[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_11.INIT0 = 16'hd2d2;
    defparam add_160_11.INIT1 = 16'hd2d2;
    defparam add_160_11.INJECT1_0 = "NO";
    defparam add_160_11.INJECT1_1 = "NO";
    CCU2D add_160_9 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[7]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[8]), 
          .D1(GND_net), .CIN(n3560), .COUT(n3561), .S0(delay_load_counter_31__N_249[7]), 
          .S1(delay_load_counter_31__N_249[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_9.INIT0 = 16'hd2d2;
    defparam add_160_9.INIT1 = 16'hd2d2;
    defparam add_160_9.INJECT1_0 = "NO";
    defparam add_160_9.INJECT1_1 = "NO";
    CCU2D add_160_7 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[5]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[6]), 
          .D1(GND_net), .CIN(n3559), .COUT(n3560), .S0(delay_load_counter_31__N_249[5]), 
          .S1(delay_load_counter_31__N_249[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_7.INIT0 = 16'hd2d2;
    defparam add_160_7.INIT1 = 16'hd2d2;
    defparam add_160_7.INJECT1_0 = "NO";
    defparam add_160_7.INJECT1_1 = "NO";
    CCU2D add_160_5 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[3]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[4]), 
          .D1(GND_net), .CIN(n3558), .COUT(n3559), .S0(delay_load_counter_31__N_249[3]), 
          .S1(delay_load_counter_31__N_249[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_5.INIT0 = 16'hd2d2;
    defparam add_160_5.INIT1 = 16'hd2d2;
    defparam add_160_5.INJECT1_0 = "NO";
    defparam add_160_5.INJECT1_1 = "NO";
    CCU2D add_160_3 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[1]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[2]), 
          .D1(GND_net), .CIN(n3557), .COUT(n3558), .S0(delay_load_counter_31__N_249[1]), 
          .S1(delay_load_counter_31__N_249[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_3.INIT0 = 16'hd2d2;
    defparam add_160_3.INIT1 = 16'hd2d2;
    defparam add_160_3.INJECT1_0 = "NO";
    defparam add_160_3.INJECT1_1 = "NO";
    CCU2D add_160_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1853), .B1(n1888), .C1(delay_load_counter[0]), .D1(GND_net), 
          .COUT(n3557), .S1(delay_load_counter_31__N_249[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_1.INIT0 = 16'hF000;
    defparam add_160_1.INIT1 = 16'hd2d2;
    defparam add_160_1.INJECT1_0 = "NO";
    defparam add_160_1.INJECT1_1 = "NO";
    CCU2D add_10_33 (.A0(bit_counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3556), .S0(bit_counter_31__N_211[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_33.INIT0 = 16'h5555;
    defparam add_10_33.INIT1 = 16'h0000;
    defparam add_10_33.INJECT1_0 = "NO";
    defparam add_10_33.INJECT1_1 = "NO";
    CCU2D add_10_31 (.A0(bit_counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3555), .COUT(n3556), .S0(bit_counter_31__N_211[29]), 
          .S1(bit_counter_31__N_211[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_31.INIT0 = 16'h5555;
    defparam add_10_31.INIT1 = 16'h5555;
    defparam add_10_31.INJECT1_0 = "NO";
    defparam add_10_31.INJECT1_1 = "NO";
    CCU2D add_10_29 (.A0(bit_counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3554), .COUT(n3555), .S0(bit_counter_31__N_211[27]), 
          .S1(bit_counter_31__N_211[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_29.INIT0 = 16'h5555;
    defparam add_10_29.INIT1 = 16'h5555;
    defparam add_10_29.INJECT1_0 = "NO";
    defparam add_10_29.INJECT1_1 = "NO";
    CCU2D add_10_27 (.A0(bit_counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3553), .COUT(n3554), .S0(bit_counter_31__N_211[25]), 
          .S1(bit_counter_31__N_211[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_27.INIT0 = 16'h5555;
    defparam add_10_27.INIT1 = 16'h5555;
    defparam add_10_27.INJECT1_0 = "NO";
    defparam add_10_27.INJECT1_1 = "NO";
    CCU2D add_10_25 (.A0(bit_counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3552), .COUT(n3553), .S0(bit_counter_31__N_211[23]), 
          .S1(bit_counter_31__N_211[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_25.INIT0 = 16'h5555;
    defparam add_10_25.INIT1 = 16'h5555;
    defparam add_10_25.INJECT1_0 = "NO";
    defparam add_10_25.INJECT1_1 = "NO";
    CCU2D add_10_23 (.A0(bit_counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3551), .COUT(n3552), .S0(bit_counter_31__N_211[21]), 
          .S1(bit_counter_31__N_211[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_23.INIT0 = 16'h5555;
    defparam add_10_23.INIT1 = 16'h5555;
    defparam add_10_23.INJECT1_0 = "NO";
    defparam add_10_23.INJECT1_1 = "NO";
    CCU2D add_10_21 (.A0(bit_counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3550), .COUT(n3551), .S0(bit_counter_31__N_211[19]), 
          .S1(bit_counter_31__N_211[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_21.INIT0 = 16'h5555;
    defparam add_10_21.INIT1 = 16'h5555;
    defparam add_10_21.INJECT1_0 = "NO";
    defparam add_10_21.INJECT1_1 = "NO";
    CCU2D add_10_19 (.A0(bit_counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3549), .COUT(n3550), .S0(bit_counter_31__N_211[17]), 
          .S1(bit_counter_31__N_211[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_19.INIT0 = 16'h5555;
    defparam add_10_19.INIT1 = 16'h5555;
    defparam add_10_19.INJECT1_0 = "NO";
    defparam add_10_19.INJECT1_1 = "NO";
    CCU2D add_10_17 (.A0(bit_counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3548), .COUT(n3549), .S0(bit_counter_31__N_211[15]), 
          .S1(bit_counter_31__N_211[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_17.INIT0 = 16'h5555;
    defparam add_10_17.INIT1 = 16'h5555;
    defparam add_10_17.INJECT1_0 = "NO";
    defparam add_10_17.INJECT1_1 = "NO";
    CCU2D add_1665_23 (.A0(delay_high_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3647), .COUT(n3648));
    defparam add_1665_23.INIT0 = 16'hf555;
    defparam add_1665_23.INIT1 = 16'hf555;
    defparam add_1665_23.INJECT1_0 = "NO";
    defparam add_1665_23.INJECT1_1 = "NO";
    CCU2D add_1665_21 (.A0(delay_high_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3646), .COUT(n3647));
    defparam add_1665_21.INIT0 = 16'hf555;
    defparam add_1665_21.INIT1 = 16'hf555;
    defparam add_1665_21.INJECT1_0 = "NO";
    defparam add_1665_21.INJECT1_1 = "NO";
    CCU2D add_1665_19 (.A0(delay_high_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3645), .COUT(n3646));
    defparam add_1665_19.INIT0 = 16'hf555;
    defparam add_1665_19.INIT1 = 16'hf555;
    defparam add_1665_19.INJECT1_0 = "NO";
    defparam add_1665_19.INJECT1_1 = "NO";
    CCU2D add_1665_17 (.A0(delay_high_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3644), .COUT(n3645));
    defparam add_1665_17.INIT0 = 16'hf555;
    defparam add_1665_17.INIT1 = 16'hf555;
    defparam add_1665_17.INJECT1_0 = "NO";
    defparam add_1665_17.INJECT1_1 = "NO";
    FD1P3IX index_i0 (.D(index_31__N_473[0]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i0.GSR = "ENABLED";
    CCU2D add_1665_15 (.A0(delay_high_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3643), .COUT(n3644));
    defparam add_1665_15.INIT0 = 16'hf555;
    defparam add_1665_15.INIT1 = 16'hf555;
    defparam add_1665_15.INJECT1_0 = "NO";
    defparam add_1665_15.INJECT1_1 = "NO";
    CCU2D add_1665_13 (.A0(delay_high_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3642), .COUT(n3643));
    defparam add_1665_13.INIT0 = 16'hf555;
    defparam add_1665_13.INIT1 = 16'hf555;
    defparam add_1665_13.INJECT1_0 = "NO";
    defparam add_1665_13.INJECT1_1 = "NO";
    CCU2D add_1665_11 (.A0(delay_high_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3641), .COUT(n3642));
    defparam add_1665_11.INIT0 = 16'hf555;
    defparam add_1665_11.INIT1 = 16'hf555;
    defparam add_1665_11.INJECT1_0 = "NO";
    defparam add_1665_11.INJECT1_1 = "NO";
    CCU2D add_1665_9 (.A0(delay_high_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3640), .COUT(n3641));
    defparam add_1665_9.INIT0 = 16'hf555;
    defparam add_1665_9.INIT1 = 16'hf555;
    defparam add_1665_9.INJECT1_0 = "NO";
    defparam add_1665_9.INJECT1_1 = "NO";
    FD1P3AX GRB_i2 (.D(GRB_23__N_187[6]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i2.GSR = "ENABLED";
    FD1P3AX GRB_i3 (.D(GRB_23__N_187[7]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i3.GSR = "ENABLED";
    FD1P3AX GRB_i8 (.D(GRB_23__N_187[12]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i8.GSR = "ENABLED";
    FD1P3AX GRB_i9 (.D(GRB_23__N_187[13]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i9.GSR = "ENABLED";
    FD1P3AX GRB_i10 (.D(GRB_23__N_187[14]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i10.GSR = "ENABLED";
    FD1P3AX GRB_i11 (.D(GRB_23__N_187[15]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i11.GSR = "ENABLED";
    FD1P3AX GRB_i16 (.D(GRB_23__N_187[20]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i16.GSR = "ENABLED";
    FD1P3AX GRB_i17 (.D(GRB_23__N_187[21]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i17.GSR = "ENABLED";
    FD1P3AX GRB_i18 (.D(GRB_23__N_187[22]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i18.GSR = "ENABLED";
    FD1P3AX GRB_i19 (.D(GRB_23__N_187[23]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(GRB[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam GRB_i19.GSR = "ENABLED";
    LUT4 state_1__I_0_91_Mux_4_i3_3_lut (.A(n67), .B(delay_high_counter_31__N_281[4]), 
         .C(state[1]), .Z(delay_high_counter_31__N_27[4])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_91_Mux_4_i3_3_lut.init = 16'hc5c5;
    LUT4 state_1__I_0_91_Mux_5_i3_3_lut (.A(n67), .B(delay_high_counter_31__N_281[5]), 
         .C(state[1]), .Z(delay_high_counter_31__N_27[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_91_Mux_5_i3_3_lut.init = 16'hcaca;
    LUT4 state_1__I_0_92_Mux_1_i3_4_lut (.A(n67), .B(delay_low_counter_31__N_345[1]), 
         .C(state[1]), .D(delay_low_counter_31__N_409[8]), .Z(delay_low_counter_31__N_59[1])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_92_Mux_1_i3_4_lut.init = 16'hc0c5;
    LUT4 i1740_3_lut (.A(GRB[10]), .B(GRB[11]), .C(bit_counter_31__N_211[0]), 
         .Z(n3772)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1740_3_lut.init = 16'hcaca;
    LUT4 i1739_3_lut (.A(GRB[8]), .B(GRB[9]), .C(bit_counter_31__N_211[0]), 
         .Z(n3771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1739_3_lut.init = 16'hcaca;
    LUT4 state_1__I_0_92_Mux_2_i3_3_lut (.A(delay_low_counter_31__N_409[8]), 
         .B(delay_low_counter_31__N_345[2]), .C(state[1]), .Z(delay_low_counter_31__N_59[2])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_92_Mux_2_i3_3_lut.init = 16'hc5c5;
    LUT4 i1736_3_lut (.A(GRB[2]), .B(GRB[3]), .C(bit_counter_31__N_211[0]), 
         .Z(n3768)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1736_3_lut.init = 16'hcaca;
    LUT4 mux_103_Mux_1_i15_4_lut_4_lut (.A(index[2]), .B(index[1]), .C(index[0]), 
         .D(index[3]), .Z(GRB_23__N_187[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A !(B (D)+!B !(C (D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(70[18:23])
    defparam mux_103_Mux_1_i15_4_lut_4_lut.init = 16'hba4c;
    LUT4 state_1__I_0_92_Mux_5_i3_4_lut (.A(n67), .B(delay_low_counter_31__N_345[5]), 
         .C(state[1]), .D(delay_low_counter_31__N_409[8]), .Z(delay_low_counter_31__N_59[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_92_Mux_5_i3_4_lut.init = 16'hcfc5;
    LUT4 state_1__I_0_92_Mux_6_i3_3_lut (.A(delay_low_counter_31__N_409[8]), 
         .B(delay_low_counter_31__N_345[6]), .C(state[1]), .Z(delay_low_counter_31__N_59[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_92_Mux_6_i3_3_lut.init = 16'hcaca;
    LUT4 i1784_3_lut_4_lut_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(n1888), 
         .D(n1853), .Z(clk_c_enable_62)) /* synthesis lut_function=(A ((C (D))+!B)) */ ;
    defparam i1784_3_lut_4_lut_3_lut_4_lut.init = 16'ha222;
    LUT4 state_1__I_0_92_Mux_8_i3_3_lut (.A(delay_low_counter_31__N_409[8]), 
         .B(delay_low_counter_31__N_345[8]), .C(state[1]), .Z(delay_low_counter_31__N_59[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_92_Mux_8_i3_3_lut.init = 16'hcaca;
    LUT4 state_1__I_0_92_Mux_11_i3_3_lut (.A(delay_low_counter_31__N_409[8]), 
         .B(delay_low_counter_31__N_345[11]), .C(state[1]), .Z(delay_low_counter_31__N_59[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_92_Mux_11_i3_3_lut.init = 16'hcaca;
    FD1P3AX delay_high_counter_i1 (.D(delay_high_counter_31__N_27[1]), .SP(clk_c_enable_167), 
            .CK(clk_c), .Q(delay_high_counter[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i1.GSR = "ENABLED";
    FD1P3AX delay_high_counter_i4 (.D(delay_high_counter_31__N_27[4]), .SP(clk_c_enable_167), 
            .CK(clk_c), .Q(delay_high_counter[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i4.GSR = "ENABLED";
    FD1P3AX delay_high_counter_i5 (.D(delay_high_counter_31__N_27[5]), .SP(clk_c_enable_167), 
            .CK(clk_c), .Q(delay_high_counter[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i5.GSR = "ENABLED";
    LUT4 i1771_2_lut (.A(n8), .B(state[1]), .Z(clk_c_enable_114)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1771_2_lut.init = 16'hbbbb;
    LUT4 i13_3_lut_rep_17 (.A(delay_low_counter_31__N_409[8]), .B(state[1]), 
         .C(state[0]), .Z(clk_c_enable_167)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;
    defparam i13_3_lut_rep_17.init = 16'h1c1c;
    PFUMX i1794 (.BLUT(n3851), .ALUT(n3852), .C0(n1783), .Z(clk_c_enable_58));
    LUT4 i1390_2_lut_3_lut (.A(delay_low_counter_31__N_409[8]), .B(state[1]), 
         .C(state[0]), .Z(n3086)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1390_2_lut_3_lut.init = 16'h1010;
    PFUMX i1796 (.BLUT(n3854), .ALUT(n3855), .C0(bit_counter_31__N_211[1]), 
          .Z(n3856));
    FD1P3AX delay_low_counter_i1 (.D(delay_low_counter_31__N_59[1]), .SP(clk_c_enable_58), 
            .CK(clk_c), .Q(delay_low_counter[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i1.GSR = "ENABLED";
    FD1P3AX delay_low_counter_i2 (.D(delay_low_counter_31__N_59[2]), .SP(clk_c_enable_58), 
            .CK(clk_c), .Q(delay_low_counter[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i2.GSR = "ENABLED";
    FD1P3AX delay_low_counter_i3 (.D(delay_low_counter_31__N_59[3]), .SP(clk_c_enable_58), 
            .CK(clk_c), .Q(delay_low_counter[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i3.GSR = "ENABLED";
    FD1P3AX delay_low_counter_i4 (.D(delay_low_counter_31__N_59[4]), .SP(clk_c_enable_58), 
            .CK(clk_c), .Q(delay_low_counter[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i4.GSR = "ENABLED";
    FD1P3AX delay_low_counter_i5 (.D(delay_low_counter_31__N_59[5]), .SP(clk_c_enable_58), 
            .CK(clk_c), .Q(delay_low_counter[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i5.GSR = "ENABLED";
    FD1P3AX delay_low_counter_i6 (.D(delay_low_counter_31__N_59[6]), .SP(clk_c_enable_58), 
            .CK(clk_c), .Q(delay_low_counter[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i6.GSR = "ENABLED";
    FD1P3AX delay_low_counter_i8 (.D(delay_low_counter_31__N_59[8]), .SP(clk_c_enable_58), 
            .CK(clk_c), .Q(delay_low_counter[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i8.GSR = "ENABLED";
    FD1P3AX delay_low_counter_i11 (.D(delay_low_counter_31__N_59[11]), .SP(clk_c_enable_58), 
            .CK(clk_c), .Q(delay_low_counter[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i11.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(state[1]), .B(state[0]), .C(n1853), .Z(clk_c_enable_36)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i171_1_lut (.A(n1888), .Z(load_delay_N_512)) /* synthesis lut_function=(!(A)) */ ;
    defparam i171_1_lut.init = 16'h5555;
    LUT4 i521_3_lut_rep_18 (.A(n1783), .B(state[0]), .C(delay_low_counter_31__N_409[8]), 
         .Z(n3846)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam i521_3_lut_rep_18.init = 16'h8c8c;
    LUT4 mux_103_Mux_0_i15_3_lut_4_lut (.A(index[2]), .B(index[1]), .C(index[0]), 
         .D(index[3]), .Z(GRB_23__N_187[4])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A ((D)+!B))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(70[18:23])
    defparam mux_103_Mux_0_i15_3_lut_4_lut.init = 16'h204c;
    LUT4 i1519_2_lut_4_lut (.A(n1783), .B(state[0]), .C(delay_low_counter_31__N_409[8]), 
         .D(state[1]), .Z(state_1__N_1[1])) /* synthesis lut_function=(!(A ((D)+!B)+!A ((C+(D))+!B))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam i1519_2_lut_4_lut.init = 16'h008c;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n1888), .B(n1853), .C(state[1]), .D(state[0]), 
         .Z(n3136)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1S3AX data_i2 (.D(GRB[1]), .CK(clk_c), .Q(data_c_1));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i2.GSR = "ENABLED";
    FD1S3AX data_i3 (.D(GRB[2]), .CK(clk_c), .Q(data_c_2));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i3.GSR = "ENABLED";
    FD1S3AX data_i4 (.D(GRB[3]), .CK(clk_c), .Q(data_c_3));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i4.GSR = "ENABLED";
    FD1S3AX data_i9 (.D(GRB[8]), .CK(clk_c), .Q(data_c_8));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i9.GSR = "ENABLED";
    FD1S3AX data_i10 (.D(GRB[9]), .CK(clk_c), .Q(data_c_9));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i10.GSR = "ENABLED";
    FD1S3AX data_i11 (.D(GRB[10]), .CK(clk_c), .Q(data_c_10));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i11.GSR = "ENABLED";
    FD1S3AX data_i12 (.D(GRB[11]), .CK(clk_c), .Q(data_c_11));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i12.GSR = "ENABLED";
    FD1S3AX data_i17 (.D(GRB[16]), .CK(clk_c), .Q(data_c_16));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i17.GSR = "ENABLED";
    FD1S3AX data_i18 (.D(GRB[17]), .CK(clk_c), .Q(data_c_17));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i18.GSR = "ENABLED";
    FD1S3AX data_i19 (.D(GRB[18]), .CK(clk_c), .Q(data_c_18));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i19.GSR = "ENABLED";
    FD1S3AX data_i20 (.D(GRB[19]), .CK(clk_c), .Q(data_c_19));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam data_i20.GSR = "ENABLED";
    LUT4 i1362_2_lut_2_lut (.A(state[1]), .B(state[0]), .Z(n3054)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1362_2_lut_2_lut.init = 16'h1111;
    CCU2D add_1665_7 (.A0(delay_high_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3639), .COUT(n3640));
    defparam add_1665_7.INIT0 = 16'hf555;
    defparam add_1665_7.INIT1 = 16'hf555;
    defparam add_1665_7.INJECT1_0 = "NO";
    defparam add_1665_7.INJECT1_1 = "NO";
    CCU2D add_1665_5 (.A0(delay_high_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3638), .COUT(n3639));
    defparam add_1665_5.INIT0 = 16'hf555;
    defparam add_1665_5.INIT1 = 16'hf555;
    defparam add_1665_5.INJECT1_0 = "NO";
    defparam add_1665_5.INJECT1_1 = "NO";
    FD1P3IX delay_low_counter_i0 (.D(delay_low_counter_31__N_345[0]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i0.GSR = "ENABLED";
    FD1P3IX index_i31 (.D(index_31__N_473[31]), .SP(clk_c_enable_62), .CD(n3136), 
            .CK(clk_c), .Q(index[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i31.GSR = "ENABLED";
    FD1P3IX index_i30 (.D(index_31__N_473[30]), .SP(clk_c_enable_62), .CD(n3136), 
            .CK(clk_c), .Q(index[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i30.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(index[0]), .B(index[3]), .C(index[1]), .D(index[2]), 
         .Z(GRB_23__N_187[12])) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(70[18:23])
    defparam i1_4_lut.init = 16'h0a22;
    LUT4 i1781_4_lut_else_3_lut (.A(state[0]), .B(state[1]), .C(delay_low_counter_31__N_409[8]), 
         .D(n1818), .Z(n3851)) /* synthesis lut_function=(A (B+!(C))+!A (B (D))) */ ;
    defparam i1781_4_lut_else_3_lut.init = 16'hce8a;
    PFUMX i1785 (.BLUT(n3826), .ALUT(n3768), .C0(bit_counter_31__N_211[1]), 
          .Z(n3827));
    LUT4 i1_3_lut_rep_15_4_lut (.A(n1888), .B(n1853), .C(state[1]), .D(state[0]), 
         .Z(clk_c_enable_90)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i1_3_lut_rep_15_4_lut.init = 16'h8f00;
    LUT4 n3827_bdd_3_lut (.A(n3827), .B(n3856), .C(bit_counter_31__N_211[4]), 
         .Z(n3828)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3827_bdd_3_lut.init = 16'hcaca;
    FD1P3IX index_i29 (.D(index_31__N_473[29]), .SP(clk_c_enable_62), .CD(n3136), 
            .CK(clk_c), .Q(index[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i29.GSR = "ENABLED";
    FD1P3IX index_i28 (.D(index_31__N_473[28]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i28.GSR = "ENABLED";
    CCU2D add_1665_3 (.A0(delay_high_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3637), .COUT(n3638));
    defparam add_1665_3.INIT0 = 16'hf555;
    defparam add_1665_3.INIT1 = 16'hf555;
    defparam add_1665_3.INJECT1_0 = "NO";
    defparam add_1665_3.INJECT1_1 = "NO";
    LUT4 mux_103_Mux_6_i15_4_lut (.A(index[0]), .B(index[1]), .C(index[3]), 
         .D(index[2]), .Z(GRB_23__N_187[14])) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(70[18:23])
    defparam mux_103_Mux_6_i15_4_lut.init = 16'h401a;
    FD1P3IX index_i27 (.D(index_31__N_473[27]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i27.GSR = "ENABLED";
    CCU2D add_1665_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_high_counter[0]), .B1(delay_high_counter[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n3637));
    defparam add_1665_1.INIT0 = 16'hF000;
    defparam add_1665_1.INIT1 = 16'ha666;
    defparam add_1665_1.INJECT1_0 = "NO";
    defparam add_1665_1.INJECT1_1 = "NO";
    FD1P3IX index_i26 (.D(index_31__N_473[26]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i26.GSR = "ENABLED";
    FD1P3IX index_i25 (.D(index_31__N_473[25]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i25.GSR = "ENABLED";
    CCU2D add_1666_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3636), 
          .S0(delay_low_counter_31__N_409[8]));
    defparam add_1666_cout.INIT0 = 16'h0000;
    defparam add_1666_cout.INIT1 = 16'h0000;
    defparam add_1666_cout.INJECT1_0 = "NO";
    defparam add_1666_cout.INJECT1_1 = "NO";
    FD1P3IX index_i24 (.D(index_31__N_473[24]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i24.GSR = "ENABLED";
    CCU2D add_1666_31 (.A0(bit_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3635), .COUT(n3636));
    defparam add_1666_31.INIT0 = 16'hf555;
    defparam add_1666_31.INIT1 = 16'h5555;
    defparam add_1666_31.INJECT1_0 = "NO";
    defparam add_1666_31.INJECT1_1 = "NO";
    FD1P3IX index_i23 (.D(index_31__N_473[23]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i23.GSR = "ENABLED";
    CCU2D add_1666_29 (.A0(bit_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3634), .COUT(n3635));
    defparam add_1666_29.INIT0 = 16'hf555;
    defparam add_1666_29.INIT1 = 16'hf555;
    defparam add_1666_29.INJECT1_0 = "NO";
    defparam add_1666_29.INJECT1_1 = "NO";
    FD1P3IX index_i22 (.D(index_31__N_473[22]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i22.GSR = "ENABLED";
    CCU2D add_1666_27 (.A0(bit_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3633), .COUT(n3634));
    defparam add_1666_27.INIT0 = 16'hf555;
    defparam add_1666_27.INIT1 = 16'hf555;
    defparam add_1666_27.INJECT1_0 = "NO";
    defparam add_1666_27.INJECT1_1 = "NO";
    FD1P3IX index_i21 (.D(index_31__N_473[21]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i21.GSR = "ENABLED";
    CCU2D add_1666_25 (.A0(bit_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3632), .COUT(n3633));
    defparam add_1666_25.INIT0 = 16'hf555;
    defparam add_1666_25.INIT1 = 16'hf555;
    defparam add_1666_25.INJECT1_0 = "NO";
    defparam add_1666_25.INJECT1_1 = "NO";
    FD1P3IX index_i20 (.D(index_31__N_473[20]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i20.GSR = "ENABLED";
    CCU2D add_1666_23 (.A0(bit_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3631), .COUT(n3632));
    defparam add_1666_23.INIT0 = 16'hf555;
    defparam add_1666_23.INIT1 = 16'hf555;
    defparam add_1666_23.INJECT1_0 = "NO";
    defparam add_1666_23.INJECT1_1 = "NO";
    FD1P3IX index_i19 (.D(index_31__N_473[19]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i19.GSR = "ENABLED";
    CCU2D add_1666_21 (.A0(bit_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3630), .COUT(n3631));
    defparam add_1666_21.INIT0 = 16'hf555;
    defparam add_1666_21.INIT1 = 16'hf555;
    defparam add_1666_21.INJECT1_0 = "NO";
    defparam add_1666_21.INJECT1_1 = "NO";
    FD1P3IX index_i18 (.D(index_31__N_473[18]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i18.GSR = "ENABLED";
    CCU2D add_1666_19 (.A0(bit_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3629), .COUT(n3630));
    defparam add_1666_19.INIT0 = 16'hf555;
    defparam add_1666_19.INIT1 = 16'hf555;
    defparam add_1666_19.INJECT1_0 = "NO";
    defparam add_1666_19.INJECT1_1 = "NO";
    FD1P3IX index_i17 (.D(index_31__N_473[17]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i17.GSR = "ENABLED";
    CCU2D add_1666_17 (.A0(bit_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3628), .COUT(n3629));
    defparam add_1666_17.INIT0 = 16'hf555;
    defparam add_1666_17.INIT1 = 16'hf555;
    defparam add_1666_17.INJECT1_0 = "NO";
    defparam add_1666_17.INJECT1_1 = "NO";
    FD1P3IX index_i16 (.D(index_31__N_473[16]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i16.GSR = "ENABLED";
    CCU2D add_1666_15 (.A0(bit_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3627), .COUT(n3628));
    defparam add_1666_15.INIT0 = 16'hf555;
    defparam add_1666_15.INIT1 = 16'hf555;
    defparam add_1666_15.INJECT1_0 = "NO";
    defparam add_1666_15.INJECT1_1 = "NO";
    FD1P3IX index_i15 (.D(index_31__N_473[15]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i15.GSR = "ENABLED";
    CCU2D add_1666_13 (.A0(bit_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3626), .COUT(n3627));
    defparam add_1666_13.INIT0 = 16'hf555;
    defparam add_1666_13.INIT1 = 16'hf555;
    defparam add_1666_13.INJECT1_0 = "NO";
    defparam add_1666_13.INJECT1_1 = "NO";
    FD1P3IX index_i14 (.D(index_31__N_473[14]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i14.GSR = "ENABLED";
    CCU2D add_1666_11 (.A0(bit_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3625), .COUT(n3626));
    defparam add_1666_11.INIT0 = 16'hf555;
    defparam add_1666_11.INIT1 = 16'hf555;
    defparam add_1666_11.INJECT1_0 = "NO";
    defparam add_1666_11.INJECT1_1 = "NO";
    FD1P3IX index_i13 (.D(index_31__N_473[13]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i13.GSR = "ENABLED";
    CCU2D add_1666_9 (.A0(bit_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3624), .COUT(n3625));
    defparam add_1666_9.INIT0 = 16'hf555;
    defparam add_1666_9.INIT1 = 16'hf555;
    defparam add_1666_9.INJECT1_0 = "NO";
    defparam add_1666_9.INJECT1_1 = "NO";
    FD1P3IX index_i12 (.D(index_31__N_473[12]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i12.GSR = "ENABLED";
    CCU2D add_1666_7 (.A0(bit_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3623), .COUT(n3624));
    defparam add_1666_7.INIT0 = 16'hf555;
    defparam add_1666_7.INIT1 = 16'hf555;
    defparam add_1666_7.INJECT1_0 = "NO";
    defparam add_1666_7.INJECT1_1 = "NO";
    FD1P3IX index_i11 (.D(index_31__N_473[11]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i11.GSR = "ENABLED";
    CCU2D add_1666_5 (.A0(bit_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3622), .COUT(n3623));
    defparam add_1666_5.INIT0 = 16'hf555;
    defparam add_1666_5.INIT1 = 16'hf555;
    defparam add_1666_5.INJECT1_0 = "NO";
    defparam add_1666_5.INJECT1_1 = "NO";
    FD1P3IX index_i10 (.D(index_31__N_473[10]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i10.GSR = "ENABLED";
    CCU2D add_1666_3 (.A0(bit_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3621), .COUT(n3622));
    defparam add_1666_3.INIT0 = 16'hf555;
    defparam add_1666_3.INIT1 = 16'hf555;
    defparam add_1666_3.INJECT1_0 = "NO";
    defparam add_1666_3.INJECT1_1 = "NO";
    FD1P3IX index_i9 (.D(index_31__N_473[9]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i9.GSR = "ENABLED";
    CCU2D add_1666_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_counter[0]), .B1(bit_counter[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n3621));
    defparam add_1666_1.INIT0 = 16'hF000;
    defparam add_1666_1.INIT1 = 16'ha666;
    defparam add_1666_1.INJECT1_0 = "NO";
    defparam add_1666_1.INJECT1_1 = "NO";
    FD1P3IX index_i8 (.D(index_31__N_473[8]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i8.GSR = "ENABLED";
    CCU2D add_154_33 (.A0(index[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3620), 
          .S0(index_31__N_473[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_33.INIT0 = 16'h5aaa;
    defparam add_154_33.INIT1 = 16'h0000;
    defparam add_154_33.INJECT1_0 = "NO";
    defparam add_154_33.INJECT1_1 = "NO";
    FD1P3IX index_i7 (.D(index_31__N_473[7]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i7.GSR = "ENABLED";
    CCU2D add_154_31 (.A0(index[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3619), .COUT(n3620), .S0(index_31__N_473[29]), .S1(index_31__N_473[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_31.INIT0 = 16'h5aaa;
    defparam add_154_31.INIT1 = 16'h5aaa;
    defparam add_154_31.INJECT1_0 = "NO";
    defparam add_154_31.INJECT1_1 = "NO";
    FD1P3IX index_i6 (.D(index_31__N_473[6]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i6.GSR = "ENABLED";
    CCU2D add_154_29 (.A0(index[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3618), .COUT(n3619), .S0(index_31__N_473[27]), .S1(index_31__N_473[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_29.INIT0 = 16'h5aaa;
    defparam add_154_29.INIT1 = 16'h5aaa;
    defparam add_154_29.INJECT1_0 = "NO";
    defparam add_154_29.INJECT1_1 = "NO";
    FD1P3IX index_i5 (.D(index_31__N_473[5]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i5.GSR = "ENABLED";
    CCU2D add_154_27 (.A0(index[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3617), .COUT(n3618), .S0(index_31__N_473[25]), .S1(index_31__N_473[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_27.INIT0 = 16'h5aaa;
    defparam add_154_27.INIT1 = 16'h5aaa;
    defparam add_154_27.INJECT1_0 = "NO";
    defparam add_154_27.INJECT1_1 = "NO";
    FD1P3IX index_i4 (.D(index_31__N_473[4]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i4.GSR = "ENABLED";
    CCU2D add_154_25 (.A0(index[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3616), .COUT(n3617), .S0(index_31__N_473[23]), .S1(index_31__N_473[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_25.INIT0 = 16'h5aaa;
    defparam add_154_25.INIT1 = 16'h5aaa;
    defparam add_154_25.INJECT1_0 = "NO";
    defparam add_154_25.INJECT1_1 = "NO";
    FD1P3IX index_i3 (.D(index_31__N_473[3]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i3.GSR = "ENABLED";
    CCU2D add_154_23 (.A0(index[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3615), .COUT(n3616), .S0(index_31__N_473[21]), .S1(index_31__N_473[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_23.INIT0 = 16'h5aaa;
    defparam add_154_23.INIT1 = 16'h5aaa;
    defparam add_154_23.INJECT1_0 = "NO";
    defparam add_154_23.INJECT1_1 = "NO";
    FD1P3IX index_i2 (.D(index_31__N_473[2]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i2.GSR = "ENABLED";
    CCU2D add_154_21 (.A0(index[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3614), .COUT(n3615), .S0(index_31__N_473[19]), .S1(index_31__N_473[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_21.INIT0 = 16'h5aaa;
    defparam add_154_21.INIT1 = 16'h5aaa;
    defparam add_154_21.INJECT1_0 = "NO";
    defparam add_154_21.INJECT1_1 = "NO";
    FD1P3IX index_i1 (.D(index_31__N_473[1]), .SP(clk_c_enable_90), .CD(n3136), 
            .CK(clk_c), .Q(index[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam index_i1.GSR = "ENABLED";
    CCU2D add_154_19 (.A0(index[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3613), .COUT(n3614), .S0(index_31__N_473[17]), .S1(index_31__N_473[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_19.INIT0 = 16'h5aaa;
    defparam add_154_19.INIT1 = 16'h5aaa;
    defparam add_154_19.INJECT1_0 = "NO";
    defparam add_154_19.INJECT1_1 = "NO";
    FD1P3IX delay_low_counter_i31 (.D(delay_low_counter_31__N_345[31]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i31.GSR = "ENABLED";
    CCU2D add_154_17 (.A0(index[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3612), .COUT(n3613), .S0(index_31__N_473[15]), .S1(index_31__N_473[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_17.INIT0 = 16'h5aaa;
    defparam add_154_17.INIT1 = 16'h5aaa;
    defparam add_154_17.INJECT1_0 = "NO";
    defparam add_154_17.INJECT1_1 = "NO";
    FD1P3JX delay_load_counter_i22 (.D(delay_load_counter_31__N_249[22]), 
            .SP(clk_c_enable_176), .PD(n3054), .CK(clk_c), .Q(delay_load_counter[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i22.GSR = "ENABLED";
    CCU2D add_154_15 (.A0(index[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3611), .COUT(n3612), .S0(index_31__N_473[13]), .S1(index_31__N_473[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_15.INIT0 = 16'h5aaa;
    defparam add_154_15.INIT1 = 16'h5aaa;
    defparam add_154_15.INJECT1_0 = "NO";
    defparam add_154_15.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i21 (.D(delay_load_counter_31__N_249[21]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i21.GSR = "ENABLED";
    CCU2D add_154_13 (.A0(index[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3610), .COUT(n3611), .S0(index_31__N_473[11]), .S1(index_31__N_473[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_13.INIT0 = 16'h5aaa;
    defparam add_154_13.INIT1 = 16'h5aaa;
    defparam add_154_13.INJECT1_0 = "NO";
    defparam add_154_13.INJECT1_1 = "NO";
    FD1P3JX delay_load_counter_i20 (.D(delay_load_counter_31__N_249[20]), 
            .SP(clk_c_enable_176), .PD(n3054), .CK(clk_c), .Q(delay_load_counter[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i20.GSR = "ENABLED";
    CCU2D add_154_11 (.A0(index[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3609), .COUT(n3610), .S0(index_31__N_473[9]), .S1(index_31__N_473[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_11.INIT0 = 16'h5aaa;
    defparam add_154_11.INIT1 = 16'h5aaa;
    defparam add_154_11.INJECT1_0 = "NO";
    defparam add_154_11.INJECT1_1 = "NO";
    FD1P3JX delay_load_counter_i19 (.D(delay_load_counter_31__N_249[19]), 
            .SP(clk_c_enable_176), .PD(n3054), .CK(clk_c), .Q(delay_load_counter[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i19.GSR = "ENABLED";
    CCU2D add_154_9 (.A0(index[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3608), 
          .COUT(n3609), .S0(index_31__N_473[7]), .S1(index_31__N_473[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_9.INIT0 = 16'h5aaa;
    defparam add_154_9.INIT1 = 16'h5aaa;
    defparam add_154_9.INJECT1_0 = "NO";
    defparam add_154_9.INJECT1_1 = "NO";
    FD1P3JX delay_load_counter_i18 (.D(delay_load_counter_31__N_249[18]), 
            .SP(clk_c_enable_176), .PD(n3054), .CK(clk_c), .Q(delay_load_counter[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i18.GSR = "ENABLED";
    CCU2D add_154_7 (.A0(index[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3607), 
          .COUT(n3608), .S0(index_31__N_473[5]), .S1(index_31__N_473[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_7.INIT0 = 16'h5aaa;
    defparam add_154_7.INIT1 = 16'h5aaa;
    defparam add_154_7.INJECT1_0 = "NO";
    defparam add_154_7.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i17 (.D(delay_load_counter_31__N_249[17]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i17.GSR = "ENABLED";
    CCU2D add_154_5 (.A0(index[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3606), 
          .COUT(n3607), .S0(index_31__N_473[3]), .S1(index_31__N_473[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_5.INIT0 = 16'h5aaa;
    defparam add_154_5.INIT1 = 16'h5aaa;
    defparam add_154_5.INJECT1_0 = "NO";
    defparam add_154_5.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i16 (.D(delay_load_counter_31__N_249[16]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i16.GSR = "ENABLED";
    CCU2D add_154_3 (.A0(index[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3605), 
          .COUT(n3606), .S0(index_31__N_473[1]), .S1(index_31__N_473[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_3.INIT0 = 16'h5aaa;
    defparam add_154_3.INIT1 = 16'h5aaa;
    defparam add_154_3.INJECT1_0 = "NO";
    defparam add_154_3.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i15 (.D(delay_load_counter_31__N_249[15]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i15.GSR = "ENABLED";
    CCU2D add_154_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_low_counter_31__N_409[8]), .B1(n1783), .C1(index[0]), 
          .D1(GND_net), .COUT(n3605), .S1(index_31__N_473[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(75[6] 93[13])
    defparam add_154_1.INIT0 = 16'hF000;
    defparam add_154_1.INIT1 = 16'hd2d2;
    defparam add_154_1.INJECT1_0 = "NO";
    defparam add_154_1.INJECT1_1 = "NO";
    FD1P3JX delay_load_counter_i14 (.D(delay_load_counter_31__N_249[14]), 
            .SP(clk_c_enable_176), .PD(n3054), .CK(clk_c), .Q(delay_load_counter[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i14.GSR = "ENABLED";
    CCU2D add_156_33 (.A0(delay_high_counter[31]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3604), .S0(delay_high_counter_31__N_281[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_33.INIT0 = 16'h5999;
    defparam add_156_33.INIT1 = 16'h0000;
    defparam add_156_33.INJECT1_0 = "NO";
    defparam add_156_33.INJECT1_1 = "NO";
    FD1P3JX delay_load_counter_i13 (.D(delay_load_counter_31__N_249[13]), 
            .SP(clk_c_enable_176), .PD(n3054), .CK(clk_c), .Q(delay_load_counter[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i13.GSR = "ENABLED";
    CCU2D add_156_31 (.A0(delay_high_counter[29]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[30]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3603), .COUT(n3604), .S0(delay_high_counter_31__N_281[29]), 
          .S1(delay_high_counter_31__N_281[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_31.INIT0 = 16'h5999;
    defparam add_156_31.INIT1 = 16'h5999;
    defparam add_156_31.INJECT1_0 = "NO";
    defparam add_156_31.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i12 (.D(delay_load_counter_31__N_249[12]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i12.GSR = "ENABLED";
    CCU2D add_156_29 (.A0(delay_high_counter[27]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[28]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3602), .COUT(n3603), .S0(delay_high_counter_31__N_281[27]), 
          .S1(delay_high_counter_31__N_281[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_29.INIT0 = 16'h5999;
    defparam add_156_29.INIT1 = 16'h5999;
    defparam add_156_29.INJECT1_0 = "NO";
    defparam add_156_29.INJECT1_1 = "NO";
    FD1P3JX delay_load_counter_i11 (.D(delay_load_counter_31__N_249[11]), 
            .SP(clk_c_enable_176), .PD(n3054), .CK(clk_c), .Q(delay_load_counter[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i11.GSR = "ENABLED";
    CCU2D add_156_27 (.A0(delay_high_counter[25]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[26]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3601), .COUT(n3602), .S0(delay_high_counter_31__N_281[25]), 
          .S1(delay_high_counter_31__N_281[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_27.INIT0 = 16'h5999;
    defparam add_156_27.INIT1 = 16'h5999;
    defparam add_156_27.INJECT1_0 = "NO";
    defparam add_156_27.INJECT1_1 = "NO";
    FD1P3JX delay_load_counter_i10 (.D(delay_load_counter_31__N_249[10]), 
            .SP(clk_c_enable_176), .PD(n3054), .CK(clk_c), .Q(delay_load_counter[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i10.GSR = "ENABLED";
    CCU2D add_156_25 (.A0(delay_high_counter[23]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[24]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3600), .COUT(n3601), .S0(delay_high_counter_31__N_281[23]), 
          .S1(delay_high_counter_31__N_281[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_25.INIT0 = 16'h5999;
    defparam add_156_25.INIT1 = 16'h5999;
    defparam add_156_25.INJECT1_0 = "NO";
    defparam add_156_25.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i9 (.D(delay_load_counter_31__N_249[9]), .SP(clk_c_enable_176), 
            .CD(n3054), .CK(clk_c), .Q(delay_load_counter[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i9.GSR = "ENABLED";
    CCU2D add_156_23 (.A0(delay_high_counter[21]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[22]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3599), .COUT(n3600), .S0(delay_high_counter_31__N_281[21]), 
          .S1(delay_high_counter_31__N_281[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_23.INIT0 = 16'h5999;
    defparam add_156_23.INIT1 = 16'h5999;
    defparam add_156_23.INJECT1_0 = "NO";
    defparam add_156_23.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i8 (.D(delay_load_counter_31__N_249[8]), .SP(clk_c_enable_176), 
            .CD(n3054), .CK(clk_c), .Q(delay_load_counter[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i8.GSR = "ENABLED";
    CCU2D add_156_21 (.A0(delay_high_counter[19]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[20]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3598), .COUT(n3599), .S0(delay_high_counter_31__N_281[19]), 
          .S1(delay_high_counter_31__N_281[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_21.INIT0 = 16'h5999;
    defparam add_156_21.INIT1 = 16'h5999;
    defparam add_156_21.INJECT1_0 = "NO";
    defparam add_156_21.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i7 (.D(delay_load_counter_31__N_249[7]), .SP(clk_c_enable_176), 
            .CD(n3054), .CK(clk_c), .Q(delay_load_counter[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i7.GSR = "ENABLED";
    CCU2D add_156_19 (.A0(delay_high_counter[17]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[18]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3597), .COUT(n3598), .S0(delay_high_counter_31__N_281[17]), 
          .S1(delay_high_counter_31__N_281[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_19.INIT0 = 16'h5999;
    defparam add_156_19.INIT1 = 16'h5999;
    defparam add_156_19.INJECT1_0 = "NO";
    defparam add_156_19.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i6 (.D(delay_load_counter_31__N_249[6]), .SP(clk_c_enable_176), 
            .CD(n3054), .CK(clk_c), .Q(delay_load_counter[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i6.GSR = "ENABLED";
    CCU2D add_156_17 (.A0(delay_high_counter[15]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[16]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3596), .COUT(n3597), .S0(delay_high_counter_31__N_281[15]), 
          .S1(delay_high_counter_31__N_281[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_17.INIT0 = 16'h5999;
    defparam add_156_17.INIT1 = 16'h5999;
    defparam add_156_17.INJECT1_0 = "NO";
    defparam add_156_17.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i5 (.D(delay_load_counter_31__N_249[5]), .SP(clk_c_enable_176), 
            .CD(n3054), .CK(clk_c), .Q(delay_load_counter[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i5.GSR = "ENABLED";
    CCU2D add_156_15 (.A0(delay_high_counter[13]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[14]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3595), .COUT(n3596), .S0(delay_high_counter_31__N_281[13]), 
          .S1(delay_high_counter_31__N_281[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_15.INIT0 = 16'h5999;
    defparam add_156_15.INIT1 = 16'h5999;
    defparam add_156_15.INJECT1_0 = "NO";
    defparam add_156_15.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i4 (.D(delay_load_counter_31__N_249[4]), .SP(clk_c_enable_176), 
            .CD(n3054), .CK(clk_c), .Q(delay_load_counter[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i4.GSR = "ENABLED";
    CCU2D add_156_13 (.A0(delay_high_counter[11]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[12]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3594), .COUT(n3595), .S0(delay_high_counter_31__N_281[11]), 
          .S1(delay_high_counter_31__N_281[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_13.INIT0 = 16'h5999;
    defparam add_156_13.INIT1 = 16'h5999;
    defparam add_156_13.INJECT1_0 = "NO";
    defparam add_156_13.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i3 (.D(delay_load_counter_31__N_249[3]), .SP(clk_c_enable_176), 
            .CD(n3054), .CK(clk_c), .Q(delay_load_counter[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i3.GSR = "ENABLED";
    CCU2D add_156_11 (.A0(delay_high_counter[9]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[10]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3593), .COUT(n3594), .S0(delay_high_counter_31__N_281[9]), 
          .S1(delay_high_counter_31__N_281[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_11.INIT0 = 16'h5999;
    defparam add_156_11.INIT1 = 16'h5999;
    defparam add_156_11.INJECT1_0 = "NO";
    defparam add_156_11.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i2 (.D(delay_load_counter_31__N_249[2]), .SP(clk_c_enable_176), 
            .CD(n3054), .CK(clk_c), .Q(delay_load_counter[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i2.GSR = "ENABLED";
    CCU2D add_156_9 (.A0(delay_high_counter[7]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[8]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3592), .COUT(n3593), .S0(delay_high_counter_31__N_281[7]), 
          .S1(delay_high_counter_31__N_281[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_9.INIT0 = 16'h5999;
    defparam add_156_9.INIT1 = 16'h5999;
    defparam add_156_9.INJECT1_0 = "NO";
    defparam add_156_9.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i1 (.D(delay_load_counter_31__N_249[1]), .SP(clk_c_enable_176), 
            .CD(n3054), .CK(clk_c), .Q(delay_load_counter[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i1.GSR = "ENABLED";
    CCU2D add_156_7 (.A0(delay_high_counter[5]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[6]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3591), .COUT(n3592), .S0(delay_high_counter_31__N_281[5]), 
          .S1(delay_high_counter_31__N_281[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_7.INIT0 = 16'h5999;
    defparam add_156_7.INIT1 = 16'h5999;
    defparam add_156_7.INJECT1_0 = "NO";
    defparam add_156_7.INJECT1_1 = "NO";
    FD1P3AX state_i1 (.D(state_1__N_1[1]), .SP(clk_c_enable_114), .CK(clk_c), 
            .Q(state[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam state_i1.GSR = "ENABLED";
    CCU2D add_156_5 (.A0(delay_high_counter[3]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[4]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3590), .COUT(n3591), .S0(delay_high_counter_31__N_281[3]), 
          .S1(delay_high_counter_31__N_281[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_5.INIT0 = 16'h5999;
    defparam add_156_5.INIT1 = 16'h5999;
    defparam add_156_5.INJECT1_0 = "NO";
    defparam add_156_5.INJECT1_1 = "NO";
    CCU2D add_156_3 (.A0(delay_high_counter[1]), .B0(n1818), .C0(GND_net), 
          .D0(GND_net), .A1(delay_high_counter[2]), .B1(n1818), .C1(GND_net), 
          .D1(GND_net), .CIN(n3589), .COUT(n3590), .S0(delay_high_counter_31__N_281[1]), 
          .S1(delay_high_counter_31__N_281[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_3.INIT0 = 16'h5999;
    defparam add_156_3.INIT1 = 16'h5999;
    defparam add_156_3.INJECT1_0 = "NO";
    defparam add_156_3.INJECT1_1 = "NO";
    CCU2D add_156_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_high_counter[0]), .B1(n1818), .C1(GND_net), .D1(GND_net), 
          .COUT(n3589), .S1(delay_high_counter_31__N_281[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(95[6] 103[13])
    defparam add_156_1.INIT0 = 16'hF000;
    defparam add_156_1.INIT1 = 16'h5999;
    defparam add_156_1.INJECT1_0 = "NO";
    defparam add_156_1.INJECT1_1 = "NO";
    CCU2D add_158_33 (.A0(delay_low_counter[31]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3588), .S0(delay_low_counter_31__N_345[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_33.INIT0 = 16'h5999;
    defparam add_158_33.INIT1 = 16'h0000;
    defparam add_158_33.INJECT1_0 = "NO";
    defparam add_158_33.INJECT1_1 = "NO";
    CCU2D add_158_31 (.A0(delay_low_counter[29]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[30]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3587), .COUT(n3588), .S0(delay_low_counter_31__N_345[29]), 
          .S1(delay_low_counter_31__N_345[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_31.INIT0 = 16'h5999;
    defparam add_158_31.INIT1 = 16'h5999;
    defparam add_158_31.INJECT1_0 = "NO";
    defparam add_158_31.INJECT1_1 = "NO";
    CCU2D add_158_29 (.A0(delay_low_counter[27]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[28]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3586), .COUT(n3587), .S0(delay_low_counter_31__N_345[27]), 
          .S1(delay_low_counter_31__N_345[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_29.INIT0 = 16'h5999;
    defparam add_158_29.INIT1 = 16'h5999;
    defparam add_158_29.INJECT1_0 = "NO";
    defparam add_158_29.INJECT1_1 = "NO";
    CCU2D add_158_27 (.A0(delay_low_counter[25]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[26]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3585), .COUT(n3586), .S0(delay_low_counter_31__N_345[25]), 
          .S1(delay_low_counter_31__N_345[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_27.INIT0 = 16'h5999;
    defparam add_158_27.INIT1 = 16'h5999;
    defparam add_158_27.INJECT1_0 = "NO";
    defparam add_158_27.INJECT1_1 = "NO";
    CCU2D add_158_25 (.A0(delay_low_counter[23]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[24]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3584), .COUT(n3585), .S0(delay_low_counter_31__N_345[23]), 
          .S1(delay_low_counter_31__N_345[24]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_25.INIT0 = 16'h5999;
    defparam add_158_25.INIT1 = 16'h5999;
    defparam add_158_25.INJECT1_0 = "NO";
    defparam add_158_25.INJECT1_1 = "NO";
    CCU2D add_158_23 (.A0(delay_low_counter[21]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[22]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3583), .COUT(n3584), .S0(delay_low_counter_31__N_345[21]), 
          .S1(delay_low_counter_31__N_345[22]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_23.INIT0 = 16'h5999;
    defparam add_158_23.INIT1 = 16'h5999;
    defparam add_158_23.INJECT1_0 = "NO";
    defparam add_158_23.INJECT1_1 = "NO";
    CCU2D add_158_21 (.A0(delay_low_counter[19]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[20]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3582), .COUT(n3583), .S0(delay_low_counter_31__N_345[19]), 
          .S1(delay_low_counter_31__N_345[20]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_21.INIT0 = 16'h5999;
    defparam add_158_21.INIT1 = 16'h5999;
    defparam add_158_21.INJECT1_0 = "NO";
    defparam add_158_21.INJECT1_1 = "NO";
    CCU2D add_158_19 (.A0(delay_low_counter[17]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[18]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3581), .COUT(n3582), .S0(delay_low_counter_31__N_345[17]), 
          .S1(delay_low_counter_31__N_345[18]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_19.INIT0 = 16'h5999;
    defparam add_158_19.INIT1 = 16'h5999;
    defparam add_158_19.INJECT1_0 = "NO";
    defparam add_158_19.INJECT1_1 = "NO";
    CCU2D add_158_17 (.A0(delay_low_counter[15]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[16]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3580), .COUT(n3581), .S0(delay_low_counter_31__N_345[15]), 
          .S1(delay_low_counter_31__N_345[16]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_17.INIT0 = 16'h5999;
    defparam add_158_17.INIT1 = 16'h5999;
    defparam add_158_17.INJECT1_0 = "NO";
    defparam add_158_17.INJECT1_1 = "NO";
    CCU2D add_158_15 (.A0(delay_low_counter[13]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[14]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3579), .COUT(n3580), .S0(delay_low_counter_31__N_345[13]), 
          .S1(delay_low_counter_31__N_345[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_15.INIT0 = 16'h5999;
    defparam add_158_15.INIT1 = 16'h5999;
    defparam add_158_15.INJECT1_0 = "NO";
    defparam add_158_15.INJECT1_1 = "NO";
    CCU2D add_158_13 (.A0(delay_low_counter[11]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[12]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3578), .COUT(n3579), .S0(delay_low_counter_31__N_345[11]), 
          .S1(delay_low_counter_31__N_345[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_13.INIT0 = 16'h5999;
    defparam add_158_13.INIT1 = 16'h5999;
    defparam add_158_13.INJECT1_0 = "NO";
    defparam add_158_13.INJECT1_1 = "NO";
    CCU2D add_158_11 (.A0(delay_low_counter[9]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[10]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3577), .COUT(n3578), .S0(delay_low_counter_31__N_345[9]), 
          .S1(delay_low_counter_31__N_345[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_11.INIT0 = 16'h5999;
    defparam add_158_11.INIT1 = 16'h5999;
    defparam add_158_11.INJECT1_0 = "NO";
    defparam add_158_11.INJECT1_1 = "NO";
    CCU2D add_158_9 (.A0(delay_low_counter[7]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[8]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3576), .COUT(n3577), .S0(delay_low_counter_31__N_345[7]), 
          .S1(delay_low_counter_31__N_345[8]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_9.INIT0 = 16'h5999;
    defparam add_158_9.INIT1 = 16'h5999;
    defparam add_158_9.INJECT1_0 = "NO";
    defparam add_158_9.INJECT1_1 = "NO";
    CCU2D add_158_7 (.A0(delay_low_counter[5]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[6]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3575), .COUT(n3576), .S0(delay_low_counter_31__N_345[5]), 
          .S1(delay_low_counter_31__N_345[6]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_7.INIT0 = 16'h5999;
    defparam add_158_7.INIT1 = 16'h5999;
    defparam add_158_7.INJECT1_0 = "NO";
    defparam add_158_7.INJECT1_1 = "NO";
    CCU2D add_158_5 (.A0(delay_low_counter[3]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[4]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3574), .COUT(n3575), .S0(delay_low_counter_31__N_345[3]), 
          .S1(delay_low_counter_31__N_345[4]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_5.INIT0 = 16'h5999;
    defparam add_158_5.INIT1 = 16'h5999;
    defparam add_158_5.INJECT1_0 = "NO";
    defparam add_158_5.INJECT1_1 = "NO";
    CCU2D add_158_3 (.A0(delay_low_counter[1]), .B0(n1853), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[2]), .B1(n1853), .C1(GND_net), 
          .D1(GND_net), .CIN(n3573), .COUT(n3574), .S0(delay_low_counter_31__N_345[1]), 
          .S1(delay_low_counter_31__N_345[2]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_3.INIT0 = 16'h5999;
    defparam add_158_3.INIT1 = 16'h5999;
    defparam add_158_3.INJECT1_0 = "NO";
    defparam add_158_3.INJECT1_1 = "NO";
    CCU2D add_158_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_low_counter[0]), .B1(n1853), .C1(GND_net), .D1(GND_net), 
          .COUT(n3573), .S1(delay_low_counter_31__N_345[0]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_158_1.INIT0 = 16'hF000;
    defparam add_158_1.INIT1 = 16'h5999;
    defparam add_158_1.INJECT1_0 = "NO";
    defparam add_158_1.INJECT1_1 = "NO";
    CCU2D add_160_33 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[31]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3572), .S0(delay_load_counter_31__N_249[31]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_33.INIT0 = 16'hd2d2;
    defparam add_160_33.INIT1 = 16'h0000;
    defparam add_160_33.INJECT1_0 = "NO";
    defparam add_160_33.INJECT1_1 = "NO";
    CCU2D add_160_31 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[29]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[30]), 
          .D1(GND_net), .CIN(n3571), .COUT(n3572), .S0(delay_load_counter_31__N_249[29]), 
          .S1(delay_load_counter_31__N_249[30]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_31.INIT0 = 16'hd2d2;
    defparam add_160_31.INIT1 = 16'hd2d2;
    defparam add_160_31.INJECT1_0 = "NO";
    defparam add_160_31.INJECT1_1 = "NO";
    CCU2D add_160_29 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[27]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[28]), 
          .D1(GND_net), .CIN(n3570), .COUT(n3571), .S0(delay_load_counter_31__N_249[27]), 
          .S1(delay_load_counter_31__N_249[28]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_29.INIT0 = 16'hd2d2;
    defparam add_160_29.INIT1 = 16'hd2d2;
    defparam add_160_29.INJECT1_0 = "NO";
    defparam add_160_29.INJECT1_1 = "NO";
    CCU2D add_160_27 (.A0(n1853), .B0(n1888), .C0(delay_load_counter[25]), 
          .D0(GND_net), .A1(n1853), .B1(n1888), .C1(delay_load_counter[26]), 
          .D1(GND_net), .CIN(n3569), .COUT(n3570), .S0(delay_load_counter_31__N_249[25]), 
          .S1(delay_load_counter_31__N_249[26]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(105[6] 115[13])
    defparam add_160_27.INIT0 = 16'hd2d2;
    defparam add_160_27.INIT1 = 16'hd2d2;
    defparam add_160_27.INJECT1_0 = "NO";
    defparam add_160_27.INJECT1_1 = "NO";
    CCU2D add_10_15 (.A0(bit_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3547), .COUT(n3548), .S0(bit_counter_31__N_211[13]), 
          .S1(bit_counter_31__N_211[14]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_15.INIT0 = 16'h5555;
    defparam add_10_15.INIT1 = 16'h5555;
    defparam add_10_15.INJECT1_0 = "NO";
    defparam add_10_15.INJECT1_1 = "NO";
    CCU2D add_10_13 (.A0(bit_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3546), .COUT(n3547), .S0(bit_counter_31__N_211[11]), 
          .S1(bit_counter_31__N_211[12]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_13.INIT0 = 16'h5555;
    defparam add_10_13.INIT1 = 16'h5555;
    defparam add_10_13.INJECT1_0 = "NO";
    defparam add_10_13.INJECT1_1 = "NO";
    FD1P3IX delay_low_counter_i30 (.D(delay_low_counter_31__N_345[30]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i30.GSR = "ENABLED";
    CCU2D add_10_11 (.A0(bit_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3545), .COUT(n3546), .S0(bit_counter_31__N_211[9]), 
          .S1(bit_counter_31__N_211[10]));   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(76[22:33])
    defparam add_10_11.INIT0 = 16'h5555;
    defparam add_10_11.INIT1 = 16'h5555;
    defparam add_10_11.INJECT1_0 = "NO";
    defparam add_10_11.INJECT1_1 = "NO";
    LUT4 state_1__I_0_91_Mux_0_i3_3_lut (.A(n67), .B(delay_high_counter_31__N_281[0]), 
         .C(state[1]), .Z(delay_high_counter_31__N_27[0])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_91_Mux_0_i3_3_lut.init = 16'hc5c5;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1477_4_lut (.A(index[0]), .B(index[2]), .C(index[1]), .D(index[3]), 
         .Z(GRB_23__N_187[15])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(70[18:23])
    defparam i1477_4_lut.init = 16'ha022;
    LUT4 i1764_2_lut_rep_21 (.A(state[1]), .B(state[0]), .Z(clk_c_enable_176)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1764_2_lut_rep_21.init = 16'h9999;
    LUT4 i1776_2_lut_rep_16 (.A(n1818), .B(state[0]), .Z(n3844)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1776_2_lut_rep_16.init = 16'h1111;
    LUT4 i29_4_lut (.A(index[1]), .B(index[2]), .C(index[3]), .D(index[0]), 
         .Z(GRB_23__N_187[21])) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(70[18:23])
    defparam i29_4_lut.init = 16'hcaa5;
    VLO i1 (.Z(GND_net));
    FD1P3IX delay_low_counter_i29 (.D(delay_low_counter_31__N_345[29]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i29.GSR = "ENABLED";
    FD1P3IX bit_counter_i31 (.D(bit_counter_31__N_211[31]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i31.GSR = "ENABLED";
    LUT4 n3780_bdd_3_lut_then_3_lut (.A(GRB[19]), .B(GRB[18]), .C(bit_counter_31__N_211[0]), 
         .Z(n3855)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n3780_bdd_3_lut_then_3_lut.init = 16'hacac;
    CCU2D add_1662_32 (.A0(index[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3699), 
          .S1(n1783));
    defparam add_1662_32.INIT0 = 16'hf555;
    defparam add_1662_32.INIT1 = 16'h0000;
    defparam add_1662_32.INJECT1_0 = "NO";
    defparam add_1662_32.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_1 (.A(n1853), .B(n1818), .C(n1888), .D(state[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_1.init = 16'ha088;
    CCU2D add_1662_30 (.A0(index[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3698), .COUT(n3699));
    defparam add_1662_30.INIT0 = 16'h5555;
    defparam add_1662_30.INIT1 = 16'h5555;
    defparam add_1662_30.INJECT1_0 = "NO";
    defparam add_1662_30.INJECT1_1 = "NO";
    CCU2D add_1662_28 (.A0(index[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3697), .COUT(n3698));
    defparam add_1662_28.INIT0 = 16'h5555;
    defparam add_1662_28.INIT1 = 16'h5555;
    defparam add_1662_28.INJECT1_0 = "NO";
    defparam add_1662_28.INJECT1_1 = "NO";
    CCU2D add_1662_26 (.A0(index[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3696), .COUT(n3697));
    defparam add_1662_26.INIT0 = 16'h5555;
    defparam add_1662_26.INIT1 = 16'h5555;
    defparam add_1662_26.INJECT1_0 = "NO";
    defparam add_1662_26.INJECT1_1 = "NO";
    CCU2D add_1662_24 (.A0(index[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3695), .COUT(n3696));
    defparam add_1662_24.INIT0 = 16'h5555;
    defparam add_1662_24.INIT1 = 16'h5555;
    defparam add_1662_24.INJECT1_0 = "NO";
    defparam add_1662_24.INJECT1_1 = "NO";
    CCU2D add_1662_22 (.A0(index[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3694), .COUT(n3695));
    defparam add_1662_22.INIT0 = 16'h5555;
    defparam add_1662_22.INIT1 = 16'h5555;
    defparam add_1662_22.INJECT1_0 = "NO";
    defparam add_1662_22.INJECT1_1 = "NO";
    CCU2D add_1662_20 (.A0(index[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3693), .COUT(n3694));
    defparam add_1662_20.INIT0 = 16'h5555;
    defparam add_1662_20.INIT1 = 16'h5555;
    defparam add_1662_20.INJECT1_0 = "NO";
    defparam add_1662_20.INJECT1_1 = "NO";
    CCU2D add_1662_18 (.A0(index[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3692), .COUT(n3693));
    defparam add_1662_18.INIT0 = 16'h5555;
    defparam add_1662_18.INIT1 = 16'h5555;
    defparam add_1662_18.INJECT1_0 = "NO";
    defparam add_1662_18.INJECT1_1 = "NO";
    LUT4 state_1__I_0_92_Mux_4_i3_3_lut_4_lut (.A(n67), .B(delay_low_counter_31__N_409[8]), 
         .C(delay_low_counter_31__N_345[4]), .D(state[1]), .Z(delay_low_counter_31__N_59[4])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(68[3] 117[12])
    defparam state_1__I_0_92_Mux_4_i3_3_lut_4_lut.init = 16'hf022;
    CCU2D add_1662_16 (.A0(index[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3691), .COUT(n3692));
    defparam add_1662_16.INIT0 = 16'h5555;
    defparam add_1662_16.INIT1 = 16'h5555;
    defparam add_1662_16.INJECT1_0 = "NO";
    defparam add_1662_16.INJECT1_1 = "NO";
    CCU2D add_1662_14 (.A0(index[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3690), .COUT(n3691));
    defparam add_1662_14.INIT0 = 16'h5555;
    defparam add_1662_14.INIT1 = 16'h5555;
    defparam add_1662_14.INJECT1_0 = "NO";
    defparam add_1662_14.INJECT1_1 = "NO";
    CCU2D add_1662_12 (.A0(index[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3689), .COUT(n3690));
    defparam add_1662_12.INIT0 = 16'h5555;
    defparam add_1662_12.INIT1 = 16'h5555;
    defparam add_1662_12.INJECT1_0 = "NO";
    defparam add_1662_12.INJECT1_1 = "NO";
    CCU2D add_1662_10 (.A0(index[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3688), .COUT(n3689));
    defparam add_1662_10.INIT0 = 16'h5555;
    defparam add_1662_10.INIT1 = 16'h5555;
    defparam add_1662_10.INJECT1_0 = "NO";
    defparam add_1662_10.INJECT1_1 = "NO";
    LUT4 n3768_bdd_3_lut (.A(bit_counter_31__N_211[0]), .B(GRB[0]), .C(GRB[1]), 
         .Z(n3826)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n3768_bdd_3_lut.init = 16'he4e4;
    CCU2D add_1662_8 (.A0(index[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3687), 
          .COUT(n3688));
    defparam add_1662_8.INIT0 = 16'h5555;
    defparam add_1662_8.INIT1 = 16'h5555;
    defparam add_1662_8.INJECT1_0 = "NO";
    defparam add_1662_8.INJECT1_1 = "NO";
    CCU2D add_1662_6 (.A0(index[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3686), 
          .COUT(n3687));
    defparam add_1662_6.INIT0 = 16'h5555;
    defparam add_1662_6.INIT1 = 16'h5555;
    defparam add_1662_6.INJECT1_0 = "NO";
    defparam add_1662_6.INJECT1_1 = "NO";
    CCU2D add_1662_4 (.A0(index[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(index[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3685), 
          .COUT(n3686));
    defparam add_1662_4.INIT0 = 16'h5aaa;
    defparam add_1662_4.INIT1 = 16'h5555;
    defparam add_1662_4.INJECT1_0 = "NO";
    defparam add_1662_4.INJECT1_1 = "NO";
    CCU2D add_1662_2 (.A0(index[1]), .B0(index[0]), .C0(GND_net), .D0(GND_net), 
          .A1(index[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3685));
    defparam add_1662_2.INIT0 = 16'h7000;
    defparam add_1662_2.INIT1 = 16'h5aaa;
    defparam add_1662_2.INJECT1_0 = "NO";
    defparam add_1662_2.INJECT1_1 = "NO";
    CCU2D add_1663_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3684), 
          .S0(n1888));
    defparam add_1663_cout.INIT0 = 16'h0000;
    defparam add_1663_cout.INIT1 = 16'h0000;
    defparam add_1663_cout.INJECT1_0 = "NO";
    defparam add_1663_cout.INJECT1_1 = "NO";
    CCU2D add_1663_31 (.A0(delay_load_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3683), .COUT(n3684));
    defparam add_1663_31.INIT0 = 16'hf555;
    defparam add_1663_31.INIT1 = 16'h5555;
    defparam add_1663_31.INJECT1_0 = "NO";
    defparam add_1663_31.INJECT1_1 = "NO";
    CCU2D add_1663_29 (.A0(delay_load_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3682), .COUT(n3683));
    defparam add_1663_29.INIT0 = 16'hf555;
    defparam add_1663_29.INIT1 = 16'hf555;
    defparam add_1663_29.INJECT1_0 = "NO";
    defparam add_1663_29.INJECT1_1 = "NO";
    CCU2D add_1663_27 (.A0(delay_load_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3681), .COUT(n3682));
    defparam add_1663_27.INIT0 = 16'hf555;
    defparam add_1663_27.INIT1 = 16'hf555;
    defparam add_1663_27.INJECT1_0 = "NO";
    defparam add_1663_27.INJECT1_1 = "NO";
    CCU2D add_1663_25 (.A0(delay_load_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3680), .COUT(n3681));
    defparam add_1663_25.INIT0 = 16'hf555;
    defparam add_1663_25.INIT1 = 16'hf555;
    defparam add_1663_25.INJECT1_0 = "NO";
    defparam add_1663_25.INJECT1_1 = "NO";
    CCU2D add_1663_23 (.A0(delay_load_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3679), .COUT(n3680));
    defparam add_1663_23.INIT0 = 16'hf555;
    defparam add_1663_23.INIT1 = 16'hf555;
    defparam add_1663_23.INJECT1_0 = "NO";
    defparam add_1663_23.INJECT1_1 = "NO";
    FD1P3IX delay_low_counter_i28 (.D(delay_low_counter_31__N_345[28]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i28.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i27 (.D(delay_low_counter_31__N_345[27]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i27.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i26 (.D(delay_low_counter_31__N_345[26]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i26.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i25 (.D(delay_low_counter_31__N_345[25]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i25.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i24 (.D(delay_low_counter_31__N_345[24]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i24.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i23 (.D(delay_low_counter_31__N_345[23]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i23.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i22 (.D(delay_low_counter_31__N_345[22]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i22.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i21 (.D(delay_low_counter_31__N_345[21]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i21.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i20 (.D(delay_low_counter_31__N_345[20]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i20.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i19 (.D(delay_low_counter_31__N_345[19]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i19.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i18 (.D(delay_low_counter_31__N_345[18]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i18.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i17 (.D(delay_low_counter_31__N_345[17]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i17.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i16 (.D(delay_low_counter_31__N_345[16]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i16.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i15 (.D(delay_low_counter_31__N_345[15]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i15.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i14 (.D(delay_low_counter_31__N_345[14]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i14.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i13 (.D(delay_low_counter_31__N_345[13]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i13.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i12 (.D(delay_low_counter_31__N_345[12]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i12.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i10 (.D(delay_low_counter_31__N_345[10]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i10.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i9 (.D(delay_low_counter_31__N_345[9]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i9.GSR = "ENABLED";
    FD1P3IX delay_low_counter_i7 (.D(delay_low_counter_31__N_345[7]), .SP(clk_c_enable_137), 
            .CD(state_1__N_1[1]), .CK(clk_c), .Q(delay_low_counter[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_low_counter_i7.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i31 (.D(delay_high_counter_31__N_281[31]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i31.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i30 (.D(delay_high_counter_31__N_281[30]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i30.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i29 (.D(delay_high_counter_31__N_281[29]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i29.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i28 (.D(delay_high_counter_31__N_281[28]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i28.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i27 (.D(delay_high_counter_31__N_281[27]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i27.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i26 (.D(delay_high_counter_31__N_281[26]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i26.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i25 (.D(delay_high_counter_31__N_281[25]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i25.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i24 (.D(delay_high_counter_31__N_281[24]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i24.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i23 (.D(delay_high_counter_31__N_281[23]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i23.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i22 (.D(delay_high_counter_31__N_281[22]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i22.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i21 (.D(delay_high_counter_31__N_281[21]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i21.GSR = "ENABLED";
    FD1P3IX delay_load_counter_i0 (.D(delay_load_counter_31__N_249[0]), .SP(clk_c_enable_176), 
            .CD(n3054), .CK(clk_c), .Q(delay_load_counter[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i0.GSR = "ENABLED";
    CCU2D add_1663_21 (.A0(delay_load_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3678), .COUT(n3679));
    defparam add_1663_21.INIT0 = 16'hf555;
    defparam add_1663_21.INIT1 = 16'hf555;
    defparam add_1663_21.INJECT1_0 = "NO";
    defparam add_1663_21.INJECT1_1 = "NO";
    FD1P3IX delay_high_counter_i20 (.D(delay_high_counter_31__N_281[20]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i20.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i19 (.D(delay_high_counter_31__N_281[19]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i19.GSR = "ENABLED";
    CCU2D add_1663_19 (.A0(delay_load_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3677), .COUT(n3678));
    defparam add_1663_19.INIT0 = 16'hf555;
    defparam add_1663_19.INIT1 = 16'hf555;
    defparam add_1663_19.INJECT1_0 = "NO";
    defparam add_1663_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(state[1]), .B(n8), .Z(clk_c_enable_9)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    FD1P3IX delay_high_counter_i18 (.D(delay_high_counter_31__N_281[18]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i18.GSR = "ENABLED";
    CCU2D add_1663_17 (.A0(delay_load_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3676), .COUT(n3677));
    defparam add_1663_17.INIT0 = 16'hf555;
    defparam add_1663_17.INIT1 = 16'hf555;
    defparam add_1663_17.INJECT1_0 = "NO";
    defparam add_1663_17.INJECT1_1 = "NO";
    FD1P3IX delay_high_counter_i17 (.D(delay_high_counter_31__N_281[17]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i17.GSR = "ENABLED";
    CCU2D add_1663_15 (.A0(delay_load_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3675), .COUT(n3676));
    defparam add_1663_15.INIT0 = 16'hf555;
    defparam add_1663_15.INIT1 = 16'hf555;
    defparam add_1663_15.INJECT1_0 = "NO";
    defparam add_1663_15.INJECT1_1 = "NO";
    FD1P3IX delay_high_counter_i16 (.D(delay_high_counter_31__N_281[16]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i16.GSR = "ENABLED";
    CCU2D add_1663_13 (.A0(delay_load_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3674), .COUT(n3675));
    defparam add_1663_13.INIT0 = 16'hf555;
    defparam add_1663_13.INIT1 = 16'hf555;
    defparam add_1663_13.INJECT1_0 = "NO";
    defparam add_1663_13.INJECT1_1 = "NO";
    FD1P3IX delay_high_counter_i15 (.D(delay_high_counter_31__N_281[15]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i15.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i14 (.D(delay_high_counter_31__N_281[14]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i14.GSR = "ENABLED";
    LUT4 n3780_bdd_3_lut_else_3_lut (.A(GRB[16]), .B(GRB[17]), .C(bit_counter_31__N_211[0]), 
         .Z(n3854)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3780_bdd_3_lut_else_3_lut.init = 16'hcaca;
    FD1P3IX delay_high_counter_i13 (.D(delay_high_counter_31__N_281[13]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i13.GSR = "ENABLED";
    CCU2D add_1663_11 (.A0(delay_load_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3673), .COUT(n3674));
    defparam add_1663_11.INIT0 = 16'hf555;
    defparam add_1663_11.INIT1 = 16'hf555;
    defparam add_1663_11.INJECT1_0 = "NO";
    defparam add_1663_11.INJECT1_1 = "NO";
    CCU2D add_1663_9 (.A0(delay_load_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3672), .COUT(n3673));
    defparam add_1663_9.INIT0 = 16'hf555;
    defparam add_1663_9.INIT1 = 16'hf555;
    defparam add_1663_9.INJECT1_0 = "NO";
    defparam add_1663_9.INJECT1_1 = "NO";
    CCU2D add_1663_7 (.A0(delay_load_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3671), .COUT(n3672));
    defparam add_1663_7.INIT0 = 16'hf555;
    defparam add_1663_7.INIT1 = 16'hf555;
    defparam add_1663_7.INJECT1_0 = "NO";
    defparam add_1663_7.INJECT1_1 = "NO";
    FD1P3IX delay_high_counter_i12 (.D(delay_high_counter_31__N_281[12]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i12.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i11 (.D(delay_high_counter_31__N_281[11]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i11.GSR = "ENABLED";
    CCU2D add_1663_5 (.A0(delay_load_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3670), .COUT(n3671));
    defparam add_1663_5.INIT0 = 16'hf555;
    defparam add_1663_5.INIT1 = 16'hf555;
    defparam add_1663_5.INJECT1_0 = "NO";
    defparam add_1663_5.INJECT1_1 = "NO";
    FD1P3IX delay_high_counter_i10 (.D(delay_high_counter_31__N_281[10]), 
            .SP(clk_c_enable_167), .CD(n3086), .CK(clk_c), .Q(delay_high_counter[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i10.GSR = "ENABLED";
    CCU2D add_1663_3 (.A0(delay_load_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_load_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3669), .COUT(n3670));
    defparam add_1663_3.INIT0 = 16'hf555;
    defparam add_1663_3.INIT1 = 16'hf555;
    defparam add_1663_3.INJECT1_0 = "NO";
    defparam add_1663_3.INJECT1_1 = "NO";
    LUT4 index_3__bdd_4_lut_1790 (.A(index[3]), .B(index[0]), .C(index[2]), 
         .D(index[1]), .Z(GRB_23__N_187[13])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !((C (D))+!B)) */ ;
    defparam index_3__bdd_4_lut_1790.init = 16'hacc6;
    FD1P3IX bit_counter_i0 (.D(bit_counter_31__N_211[0]), .SP(clk_c_enable_161), 
            .CD(clk_c_enable_47), .CK(clk_c), .Q(bit_counter[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam bit_counter_i0.GSR = "ENABLED";
    CCU2D add_1663_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_load_counter[0]), .B1(delay_load_counter[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n3669));
    defparam add_1663_1.INIT0 = 16'hF000;
    defparam add_1663_1.INIT1 = 16'ha666;
    defparam add_1663_1.INJECT1_0 = "NO";
    defparam add_1663_1.INJECT1_1 = "NO";
    LUT4 index_3__bdd_4_lut_1789 (.A(index[3]), .B(index[2]), .C(index[0]), 
         .D(index[1]), .Z(GRB_23__N_187[20])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C+(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam index_3__bdd_4_lut_1789.init = 16'h1085;
    FD1P3IX delay_high_counter_i9 (.D(delay_high_counter_31__N_281[9]), .SP(clk_c_enable_167), 
            .CD(n3086), .CK(clk_c), .Q(delay_high_counter[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i9.GSR = "ENABLED";
    CCU2D add_1664_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3668), 
          .S0(n1853));
    defparam add_1664_cout.INIT0 = 16'h0000;
    defparam add_1664_cout.INIT1 = 16'h0000;
    defparam add_1664_cout.INJECT1_0 = "NO";
    defparam add_1664_cout.INJECT1_1 = "NO";
    CCU2D add_1664_31 (.A0(delay_low_counter[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3667), .COUT(n3668));
    defparam add_1664_31.INIT0 = 16'hf555;
    defparam add_1664_31.INIT1 = 16'h5555;
    defparam add_1664_31.INJECT1_0 = "NO";
    defparam add_1664_31.INJECT1_1 = "NO";
    FD1P3IX delay_high_counter_i8 (.D(delay_high_counter_31__N_281[8]), .SP(clk_c_enable_167), 
            .CD(n3086), .CK(clk_c), .Q(delay_high_counter[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i8.GSR = "ENABLED";
    CCU2D add_1664_29 (.A0(delay_low_counter[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3666), .COUT(n3667));
    defparam add_1664_29.INIT0 = 16'hf555;
    defparam add_1664_29.INIT1 = 16'hf555;
    defparam add_1664_29.INJECT1_0 = "NO";
    defparam add_1664_29.INJECT1_1 = "NO";
    FD1P3IX delay_high_counter_i7 (.D(delay_high_counter_31__N_281[7]), .SP(clk_c_enable_167), 
            .CD(n3086), .CK(clk_c), .Q(delay_high_counter[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i7.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i6 (.D(delay_high_counter_31__N_281[6]), .SP(clk_c_enable_167), 
            .CD(n3086), .CK(clk_c), .Q(delay_high_counter[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i6.GSR = "ENABLED";
    CCU2D add_1664_27 (.A0(delay_low_counter[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3665), .COUT(n3666));
    defparam add_1664_27.INIT0 = 16'hf555;
    defparam add_1664_27.INIT1 = 16'hf555;
    defparam add_1664_27.INJECT1_0 = "NO";
    defparam add_1664_27.INJECT1_1 = "NO";
    FD1P3IX delay_high_counter_i3 (.D(delay_high_counter_31__N_281[3]), .SP(clk_c_enable_167), 
            .CD(n3086), .CK(clk_c), .Q(delay_high_counter[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i3.GSR = "ENABLED";
    FD1P3IX delay_high_counter_i2 (.D(delay_high_counter_31__N_281[2]), .SP(clk_c_enable_167), 
            .CD(n3086), .CK(clk_c), .Q(delay_high_counter[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_high_counter_i2.GSR = "ENABLED";
    CCU2D add_1664_25 (.A0(delay_low_counter[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3664), .COUT(n3665));
    defparam add_1664_25.INIT0 = 16'hf555;
    defparam add_1664_25.INIT1 = 16'hf555;
    defparam add_1664_25.INJECT1_0 = "NO";
    defparam add_1664_25.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i31 (.D(delay_load_counter_31__N_249[31]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i31.GSR = "ENABLED";
    FD1P3IX delay_load_counter_i30 (.D(delay_load_counter_31__N_249[30]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i30.GSR = "ENABLED";
    CCU2D add_1664_23 (.A0(delay_low_counter[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3663), .COUT(n3664));
    defparam add_1664_23.INIT0 = 16'hf555;
    defparam add_1664_23.INIT1 = 16'hf555;
    defparam add_1664_23.INJECT1_0 = "NO";
    defparam add_1664_23.INJECT1_1 = "NO";
    CCU2D add_1664_21 (.A0(delay_low_counter[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3662), .COUT(n3663));
    defparam add_1664_21.INIT0 = 16'hf555;
    defparam add_1664_21.INIT1 = 16'hf555;
    defparam add_1664_21.INJECT1_0 = "NO";
    defparam add_1664_21.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i29 (.D(delay_load_counter_31__N_249[29]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i29.GSR = "ENABLED";
    FD1P3IX delay_load_counter_i28 (.D(delay_load_counter_31__N_249[28]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i28.GSR = "ENABLED";
    CCU2D add_1664_19 (.A0(delay_low_counter[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3661), .COUT(n3662));
    defparam add_1664_19.INIT0 = 16'hf555;
    defparam add_1664_19.INIT1 = 16'hf555;
    defparam add_1664_19.INJECT1_0 = "NO";
    defparam add_1664_19.INJECT1_1 = "NO";
    LUT4 index_0__bdd_4_lut (.A(index[0]), .B(index[3]), .C(index[2]), 
         .D(index[1]), .Z(GRB_23__N_187[7])) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam index_0__bdd_4_lut.init = 16'h8340;
    FD1P3IX delay_load_counter_i27 (.D(delay_load_counter_31__N_249[27]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i27.GSR = "ENABLED";
    CCU2D add_1664_17 (.A0(delay_low_counter[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3660), .COUT(n3661));
    defparam add_1664_17.INIT0 = 16'hf555;
    defparam add_1664_17.INIT1 = 16'hf555;
    defparam add_1664_17.INJECT1_0 = "NO";
    defparam add_1664_17.INJECT1_1 = "NO";
    LUT4 i1769_2_lut_rep_22 (.A(state[0]), .B(state[1]), .Z(clk_c_enable_47)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1769_2_lut_rep_22.init = 16'h1111;
    CCU2D add_1664_15 (.A0(delay_low_counter[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3659), .COUT(n3660));
    defparam add_1664_15.INIT0 = 16'hf555;
    defparam add_1664_15.INIT1 = 16'hf555;
    defparam add_1664_15.INJECT1_0 = "NO";
    defparam add_1664_15.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i26 (.D(delay_load_counter_31__N_249[26]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i26.GSR = "ENABLED";
    LUT4 i1781_4_lut_then_3_lut (.A(state[0]), .B(state[1]), .C(n1818), 
         .Z(n3852)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1781_4_lut_then_3_lut.init = 16'heaea;
    CCU2D add_1664_13 (.A0(delay_low_counter[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3658), .COUT(n3659));
    defparam add_1664_13.INIT0 = 16'hf555;
    defparam add_1664_13.INIT1 = 16'hf555;
    defparam add_1664_13.INJECT1_0 = "NO";
    defparam add_1664_13.INJECT1_1 = "NO";
    LUT4 n3780_bdd_4_lut (.A(bit_counter_31__N_211[4]), .B(n3772), .C(n3771), 
         .D(bit_counter_31__N_211[1]), .Z(n3824)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n3780_bdd_4_lut.init = 16'h4450;
    LUT4 i1779_3_lut (.A(delay_low_counter_31__N_409[8]), .B(state[1]), 
         .C(state[0]), .Z(clk_c_enable_161)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;
    defparam i1779_3_lut.init = 16'h1313;
    CCU2D add_1664_11 (.A0(delay_low_counter[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3657), .COUT(n3658));
    defparam add_1664_11.INIT0 = 16'hf555;
    defparam add_1664_11.INIT1 = 16'hf555;
    defparam add_1664_11.INJECT1_0 = "NO";
    defparam add_1664_11.INJECT1_1 = "NO";
    PFUMX i1787 (.BLUT(n3828), .ALUT(n3824), .C0(bit_counter_31__N_211[3]), 
          .Z(n67));
    LUT4 index_1__bdd_4_lut (.A(index[1]), .B(index[3]), .C(index[0]), 
         .D(index[2]), .Z(GRB_23__N_187[23])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !((D)+!C))+!A !(B+(C+(D)))) */ ;
    defparam index_1__bdd_4_lut.init = 16'h8029;
    FD1P3JX delay_load_counter_i25 (.D(delay_load_counter_31__N_249[25]), 
            .SP(clk_c_enable_176), .PD(n3054), .CK(clk_c), .Q(delay_load_counter[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i25.GSR = "ENABLED";
    CCU2D add_1664_9 (.A0(delay_low_counter[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3656), .COUT(n3657));
    defparam add_1664_9.INIT0 = 16'hf555;
    defparam add_1664_9.INIT1 = 16'hf555;
    defparam add_1664_9.INJECT1_0 = "NO";
    defparam add_1664_9.INJECT1_1 = "NO";
    CCU2D add_1664_7 (.A0(delay_low_counter[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3655), .COUT(n3656));
    defparam add_1664_7.INIT0 = 16'hf555;
    defparam add_1664_7.INIT1 = 16'hf555;
    defparam add_1664_7.INJECT1_0 = "NO";
    defparam add_1664_7.INJECT1_1 = "NO";
    FD1P3IX delay_load_counter_i24 (.D(delay_load_counter_31__N_249[24]), 
            .SP(clk_c_enable_176), .CD(n3054), .CK(clk_c), .Q(delay_load_counter[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i24.GSR = "ENABLED";
    CCU2D add_1664_5 (.A0(delay_low_counter[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3654), .COUT(n3655));
    defparam add_1664_5.INIT0 = 16'hf555;
    defparam add_1664_5.INIT1 = 16'hf555;
    defparam add_1664_5.INJECT1_0 = "NO";
    defparam add_1664_5.INJECT1_1 = "NO";
    CCU2D add_1664_3 (.A0(delay_low_counter[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(delay_low_counter[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3653), .COUT(n3654));
    defparam add_1664_3.INIT0 = 16'hf555;
    defparam add_1664_3.INIT1 = 16'hf555;
    defparam add_1664_3.INJECT1_0 = "NO";
    defparam add_1664_3.INJECT1_1 = "NO";
    FD1P3JX delay_load_counter_i23 (.D(delay_load_counter_31__N_249[23]), 
            .SP(clk_c_enable_176), .PD(n3054), .CK(clk_c), .Q(delay_load_counter[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/ryanm/documents/diamond/ws2812_driver/main.vhd(39[2] 118[14])
    defparam delay_load_counter_i23.GSR = "ENABLED";
    CCU2D add_1664_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay_low_counter[0]), .B1(delay_low_counter[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n3653));
    defparam add_1664_1.INIT0 = 16'hF000;
    defparam add_1664_1.INIT1 = 16'ha666;
    defparam add_1664_1.INJECT1_0 = "NO";
    defparam add_1664_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

