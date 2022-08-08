
//
// Verific Verilog Description of module mipi_loopback_top
//

module mipi_loopback_top (tx_vga_clk, sw4, sw5, led5, led6, tx_pixel_clk, 
            my_mipi_tx_DPHY_RSTN, my_mipi_tx_RSTN, my_mipi_tx_VALID, my_mipi_tx_HSYNC, 
            my_mipi_tx_VSYNC, my_mipi_tx_DATA, my_mipi_tx_TYPE, my_mipi_tx_LANES, 
            my_mipi_tx_FRAME_MODE, my_mipi_tx_HRES, my_mipi_tx_VC, my_mipi_tx_ULPS_ENTER, 
            my_mipi_tx_ULPS_EXIT, my_mipi_tx_ULPS_CLK_ENTER, my_mipi_tx_ULPS_CLK_EXIT);
    input tx_vga_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input sw4 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input sw5 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output led5 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output led6 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    input tx_pixel_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output my_mipi_tx_DPHY_RSTN /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output my_mipi_tx_RSTN /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output my_mipi_tx_VALID /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output my_mipi_tx_HSYNC /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output my_mipi_tx_VSYNC /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [63:0]my_mipi_tx_DATA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [5:0]my_mipi_tx_TYPE /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [1:0]my_mipi_tx_LANES /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output my_mipi_tx_FRAME_MODE /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [15:0]my_mipi_tx_HRES /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [1:0]my_mipi_tx_VC /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [3:0]my_mipi_tx_ULPS_ENTER /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [3:0]my_mipi_tx_ULPS_EXIT /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output my_mipi_tx_ULPS_CLK_ENTER /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output my_mipi_tx_ULPS_CLK_EXIT /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
    wire valid_v_patgen, \x[0] , \patgen/v_count[0]_2 , \y[0] , \patgen/h_count[0]_2 , 
        \patgen/v_count[1] , \patgen/v_count[2] , \patgen/v_count[3] , 
        \patgen/v_count[4] , \patgen/v_count[5] , \patgen/v_count[6] , 
        \patgen/v_count[7] , \patgen/v_count[8] , \patgen/v_count[9] , 
        \patgen/v_count[10] , \patgen/v_count[11] , \patgen/v_count[12] , 
        \patgen/v_count[13] , \patgen/v_count[14] , \patgen/v_count[15] , 
        \patgen/v_count[16] , \x[1] , \x[2] , \x[3] , \x[4] , \x[5] , 
        \x[6] , \x[7] , \x[8] , \x[9] , \y[1] , \y[2] , \y[3] , 
        \y[4] , \y[5] , \y[6] , \y[7] , \y[8] , \patgen/h_count[1] , 
        \patgen/h_count[2] , \patgen/h_count[3] , \patgen/h_count[4] , 
        \patgen/h_count[5] , \patgen/h_count[6] , \patgen/h_count[7] , 
        \patgen/h_count[8] , \patgen/h_count[9] , \patgen/h_count[10] , 
        \patgen/h_count[11] , \patgen/h_count[12] , \patgen/h_count[13] , 
        \patgen/h_count[14] , \patgen/h_count[15] , \patgen/h_count[16] , 
        \patgen/equal_26/n33 , ceg_net1, \patgen/video_hsync , \patgen/video_valid_h , 
        \patgen/n442 , \patgen/equal_5/n33 , ceg_net5, \patgen/equal_4/n33 , 
        \patgen/n475 , \patgen/n42 , \patgen/n682 , \patgen/n40 , \patgen/n39 , 
        \patgen/n38 , \patgen/n702 , \patgen/n707 , \patgen/n712 , \patgen/n34 , 
        \patgen/n722 , \patgen/n727 , \patgen/n732 , \patgen/n737 , 
        \patgen/n742 , \patgen/n747 , \patgen/n752 , \tx_vga_clk~O , 
        \patgen/n1159 , \patgen/n1164 , \patgen/n1169 , \patgen/n1174 , 
        \patgen/n1179 , \patgen/n1184 , \patgen/n1189 , \patgen/n1194 , 
        \~patgen/n677 , \patgen/n1254 , \patgen/n1259 , \patgen/n1264 , 
        \patgen/n1269 , \patgen/n1274 , \patgen/n1279 , \patgen/n1284 , 
        \patgen/n762 , \patgen/n767 , \patgen/n772 , \patgen/n777 , 
        \patgen/n782 , \patgen/n787 , \patgen/n792 , \patgen/n797 , 
        \patgen/n802 , \patgen/n807 , \patgen/n812 , \patgen/n817 , 
        \patgen/n822 , \patgen/n827 , \patgen/n832 , \patgen/n837 , 
        n214, n215, n216, n217, n218, n219, n220, n221, n222, 
        n223, n224, n225, n226, n227, n228, n229, n230, n231, 
        n232, n233, n234, n235, n236, n237, n238, n239, n240, 
        n241, n242, n243, n244, n245, n246, n247, n248, n249, 
        n250, n251, n252, n253, n254, n255, n256, n257, n258, 
        n259, n260, n261, n262, n263, n264, n265, n266, n267, 
        n268, n269, n270, n271, n272;
    
    assign led5 = my_mipi_tx_HSYNC /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led6 = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DPHY_RSTN = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_RSTN = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[62] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[61] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[60] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[59] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[58] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[57] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[56] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[55] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[54] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[53] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[52] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[51] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[50] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[49] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[48] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[47] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[46] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[45] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[44] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[43] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[42] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[41] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[40] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[39] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[37] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[36] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[31] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[30] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[29] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[28] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[27] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[26] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[25] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[24] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[22] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[21] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[20] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[19] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[17] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[16] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[15] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[13] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[12] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[11] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[9] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[7] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[6] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[5] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[4] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[3] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[2] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[1] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[0] = my_mipi_tx_DATA[23] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_TYPE[5] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_TYPE[4] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_TYPE[3] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_TYPE[2] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_TYPE[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_TYPE[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_LANES[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_LANES[0] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_FRAME_MODE = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[15] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[14] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[13] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[12] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[11] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[10] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[9] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[8] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[7] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[6] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[5] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[4] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[3] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[2] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_HRES[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_VC[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_VC[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_ULPS_ENTER[3] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_ULPS_ENTER[2] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_ULPS_ENTER[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_ULPS_ENTER[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_ULPS_EXIT[3] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_ULPS_EXIT[2] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_ULPS_EXIT[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_ULPS_EXIT[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_ULPS_CLK_ENTER = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_ULPS_CLK_EXIT = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[18] = 1'b1 /* verific EFX_ATTRIBUTE_CELL_NAME=VCC */ ;
    assign my_mipi_tx_DATA[63] = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_LUT4 LUT__375 (.I0(\x[7] ), .I1(\x[8] ), .O(n215)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__375.LUTMASK = 16'h1111;
    EFX_FF \patgen/valid_v_patgen~FF  (.D(\patgen/equal_26/n33 ), .CE(ceg_net1), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(valid_v_patgen)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(93)
    defparam \patgen/valid_v_patgen~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/valid_v_patgen~FF .CE_POLARITY = 1'b0;
    defparam \patgen/valid_v_patgen~FF .SR_POLARITY = 1'b1;
    defparam \patgen/valid_v_patgen~FF .D_POLARITY = 1'b0;
    defparam \patgen/valid_v_patgen~FF .SR_SYNC = 1'b1;
    defparam \patgen/valid_v_patgen~FF .SR_VALUE = 1'b0;
    defparam \patgen/valid_v_patgen~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/hsync_patgen~FF  (.D(\patgen/video_hsync ), .CE(1'b1), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(my_mipi_tx_HSYNC)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(115)
    defparam \patgen/hsync_patgen~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/hsync_patgen~FF .CE_POLARITY = 1'b1;
    defparam \patgen/hsync_patgen~FF .SR_POLARITY = 1'b1;
    defparam \patgen/hsync_patgen~FF .D_POLARITY = 1'b1;
    defparam \patgen/hsync_patgen~FF .SR_SYNC = 1'b1;
    defparam \patgen/hsync_patgen~FF .SR_VALUE = 1'b0;
    defparam \patgen/hsync_patgen~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/valid_h_patgen~FF  (.D(\patgen/video_valid_h ), .CE(1'b1), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(my_mipi_tx_VALID)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(115)
    defparam \patgen/valid_h_patgen~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/valid_h_patgen~FF .CE_POLARITY = 1'b1;
    defparam \patgen/valid_h_patgen~FF .SR_POLARITY = 1'b1;
    defparam \patgen/valid_h_patgen~FF .D_POLARITY = 1'b1;
    defparam \patgen/valid_h_patgen~FF .SR_SYNC = 1'b1;
    defparam \patgen/valid_h_patgen~FF .SR_VALUE = 1'b0;
    defparam \patgen/valid_h_patgen~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[0]~FF  (.D(\patgen/h_count[0]_2 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[0]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[0]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[0]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[0]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[0]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/vsync_patgen~FF  (.D(\patgen/equal_5/n33 ), .CE(ceg_net5), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(my_mipi_tx_VSYNC)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(93)
    defparam \patgen/vsync_patgen~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/vsync_patgen~FF .CE_POLARITY = 1'b0;
    defparam \patgen/vsync_patgen~FF .SR_POLARITY = 1'b1;
    defparam \patgen/vsync_patgen~FF .D_POLARITY = 1'b1;
    defparam \patgen/vsync_patgen~FF .SR_SYNC = 1'b1;
    defparam \patgen/vsync_patgen~FF .SR_VALUE = 1'b0;
    defparam \patgen/vsync_patgen~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[0]~FF  (.D(\patgen/v_count[0]_2 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[0]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[0]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[0]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[0]~FF .D_POLARITY = 1'b0;
    defparam \patgen/v_count[0]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[0]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[0]~FF  (.D(\patgen/v_count[0]_2 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[0]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[0]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[0]~FF .D_POLARITY = 1'b0;
    defparam \patgen/y[0]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[0]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[0]_2~FF  (.D(\patgen/h_count[0]_2 ), .CE(1'b1), 
           .CLK(\tx_vga_clk~O ), .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[0]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[0]_2~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[0]_2~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[0]_2~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[0]_2~FF .D_POLARITY = 1'b0;
    defparam \patgen/h_count[0]_2~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[0]_2~FF .SR_VALUE = 1'b1;
    defparam \patgen/h_count[0]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[1]~FF  (.D(\patgen/n42 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[1]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[1]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[1]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[1]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[1]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[2]~FF  (.D(\patgen/n682 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[2]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[2]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[2]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[2]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[2]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[3]~FF  (.D(\patgen/n40 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[3]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[3]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[3]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[3]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[3]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[4]~FF  (.D(\patgen/n39 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[4]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[4]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[4]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[4]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[4]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[5]~FF  (.D(\patgen/n38 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[5]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[5]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[5]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[5]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[5]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[6]~FF  (.D(\patgen/n702 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[6]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[6]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[6]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[6]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[6]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[7]~FF  (.D(\patgen/n707 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[7]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[7]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[7]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[7]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[7]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[8]~FF  (.D(\patgen/n712 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[8]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[8]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[8]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[8]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[8]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[9]~FF  (.D(\patgen/n34 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[9]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[9]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[9]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[9]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[9]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[10]~FF  (.D(\patgen/n722 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[10]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[10]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[10]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[10]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[10]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[10]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[11]~FF  (.D(\patgen/n727 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[11]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[11]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[11]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[11]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[11]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[11]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[12]~FF  (.D(\patgen/n732 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[12]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[12]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[12]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[12]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[12]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[12]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[13]~FF  (.D(\patgen/n737 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[13]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[13]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[13]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[13]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[13]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[13]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[14]~FF  (.D(\patgen/n742 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[14]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[14]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[14]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[14]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[14]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[14]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[15]~FF  (.D(\patgen/n747 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[15]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[15]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[15]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[15]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[15]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[15]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[16]~FF  (.D(\patgen/n752 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/v_count[16]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[16]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[16]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[16]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[16]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[16]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[1]~FF  (.D(\patgen/h_count[1] ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[1]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[1]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[1]~FF .D_POLARITY = 1'b0;
    defparam \patgen/x[1]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[1]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[2]~FF  (.D(\patgen/n1159 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[2]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[2]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[2]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[2]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[2]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[3]~FF  (.D(\patgen/n1164 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[3]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[3]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[3]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[3]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[3]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[4]~FF  (.D(\patgen/n1169 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[4]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[4]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[4]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[4]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[4]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[5]~FF  (.D(\patgen/n1174 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[5]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[5]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[5]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[5]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[5]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[6]~FF  (.D(\patgen/n1179 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[6]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[6]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[6]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[6]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[6]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[7]~FF  (.D(\patgen/n1184 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[7]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[7]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[7]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[7]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[7]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[8]~FF  (.D(\patgen/n1189 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[8]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[8]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[8]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[8]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[8]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[9]~FF  (.D(\patgen/n1194 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[9]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[9]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[9]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[9]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[9]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[1]~FF  (.D(\~patgen/n677 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[1]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[1]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[1]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[1]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[1]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[2]~FF  (.D(\patgen/n1254 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[2]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[2]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[2]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[2]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[2]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[3]~FF  (.D(\patgen/n1259 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[3]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[3]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[3]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[3]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[3]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[4]~FF  (.D(\patgen/n1264 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[4]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[4]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[4]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[4]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[4]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[5]~FF  (.D(\patgen/n1269 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[5]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[5]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[5]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[5]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[5]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[6]~FF  (.D(\patgen/n1274 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[6]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[6]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[6]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[6]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[6]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[7]~FF  (.D(\patgen/n1279 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[7]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[7]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[7]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[7]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[7]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[8]~FF  (.D(\patgen/n1284 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(152)
    defparam \patgen/y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[8]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[8]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[8]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[8]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[8]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[1]~FF  (.D(\patgen/n762 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[1]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[1]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[1]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[1]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[1]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[2]~FF  (.D(\patgen/n767 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[2]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[2]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[2]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[2]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[2]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[3]~FF  (.D(\patgen/n772 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[3]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[3]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[3]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[3]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[3]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[4]~FF  (.D(\patgen/n777 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[4]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[4]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[4]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[4]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[4]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[5]~FF  (.D(\patgen/n782 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[5]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[5]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[5]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[5]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[5]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[6]~FF  (.D(\patgen/n787 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[6]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[6]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[6]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[6]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[6]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[7]~FF  (.D(\patgen/n792 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[7]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[7]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[7]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[7]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[7]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[8]~FF  (.D(\patgen/n797 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[8]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[8]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[8]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[8]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[8]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[9]~FF  (.D(\patgen/n802 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[9]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[9]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[9]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[9]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[9]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[10]~FF  (.D(\patgen/n807 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[10]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[10]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[10]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[10]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[10]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[10]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[11]~FF  (.D(\patgen/n812 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[11]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[11]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[11]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[11]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[11]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[11]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[12]~FF  (.D(\patgen/n817 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[12]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[12]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[12]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[12]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[12]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[12]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[13]~FF  (.D(\patgen/n822 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[13]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[13]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[13]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[13]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[13]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[13]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[14]~FF  (.D(\patgen/n827 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[14]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[14]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[14]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[14]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[14]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[14]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[15]~FF  (.D(\patgen/n832 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[15]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[15]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[15]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[15]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[15]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[15]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[16]~FF  (.D(\patgen/n837 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\sanas\OneDrive\Documents\GitHub\Effinix_MIPI_Streaming_to_RK3399\video_gen.v(71)
    defparam \patgen/h_count[16]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[16]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[16]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[16]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[16]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[16]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__376 (.I0(n214), .I1(\x[5] ), .I2(\x[6] ), .I3(n215), 
            .O(n216)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__376.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__377 (.I0(\x[0] ), .I1(\x[1] ), .I2(\x[2] ), .O(n217)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__377.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__378 (.I0(\x[4] ), .I1(n217), .I2(\x[3] ), .I3(\x[6] ), 
            .O(n218)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__378.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__379 (.I0(n218), .I1(\x[5] ), .I2(n215), .O(n219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__379.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__380 (.I0(\y[0] ), .I1(\y[1] ), .I2(\y[2] ), .O(n220)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__380.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__381 (.I0(\y[5] ), .I1(\y[6] ), .O(n221)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__381.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__382 (.I0(\y[3] ), .I1(\y[4] ), .I2(n220), .I3(n221), 
            .O(n222)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__382.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__383 (.I0(n221), .I1(\y[2] ), .I2(\y[3] ), .I3(\y[4] ), 
            .O(n223)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__383.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__384 (.I0(n223), .I1(n222), .I2(\y[7] ), .I3(\y[8] ), 
            .O(n224)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h05fc */ ;
    defparam LUT__384.LUTMASK = 16'h05fc;
    EFX_LUT4 LUT__385 (.I0(n219), .I1(n216), .I2(\x[9] ), .I3(n224), 
            .O(my_mipi_tx_DATA[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3aff */ ;
    defparam LUT__385.LUTMASK = 16'h3aff;
    EFX_LUT4 LUT__386 (.I0(n219), .I1(n216), .I2(\x[9] ), .I3(n224), 
            .O(my_mipi_tx_DATA[38])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__386.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__387 (.I0(n219), .I1(n216), .I2(\x[9] ), .I3(n224), 
            .O(my_mipi_tx_DATA[35])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__387.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__388 (.I0(n219), .I1(n216), .I2(\x[9] ), .I3(n224), 
            .O(my_mipi_tx_DATA[34])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__388.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__389 (.I0(n219), .I1(n216), .I2(\x[9] ), .I3(n224), 
            .O(my_mipi_tx_DATA[33])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__389.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__390 (.I0(n219), .I1(n216), .I2(\x[9] ), .I3(n224), 
            .O(my_mipi_tx_DATA[32])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__390.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__391 (.I0(n219), .I1(n216), .I2(\x[9] ), .I3(n224), 
            .O(my_mipi_tx_DATA[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__391.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__392 (.I0(n219), .I1(n216), .I2(\x[9] ), .I3(n224), 
            .O(my_mipi_tx_DATA[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__392.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__393 (.I0(n219), .I1(n216), .I2(\x[9] ), .I3(n224), 
            .O(my_mipi_tx_DATA[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__393.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__394 (.I0(\patgen/v_count[10] ), .I1(\patgen/v_count[11] ), 
            .O(n225)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__394.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__395 (.I0(\patgen/v_count[5] ), .I1(\patgen/v_count[7] ), 
            .I2(\patgen/v_count[6] ), .I3(\patgen/v_count[4] ), .O(n226)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__395.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__396 (.I0(\patgen/v_count[8] ), .I1(\patgen/v_count[9] ), 
            .I2(n225), .I3(n226), .O(n227)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__396.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__397 (.I0(\patgen/v_count[13] ), .I1(\patgen/v_count[14] ), 
            .I2(\patgen/v_count[15] ), .I3(\patgen/v_count[16] ), .O(n228)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__397.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__398 (.I0(\patgen/v_count[12] ), .I1(n228), .O(n229)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__398.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__399 (.I0(n227), .I1(n229), .O(n230)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__399.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__400 (.I0(\patgen/v_count[1] ), .I1(\patgen/v_count[3] ), 
            .I2(\patgen/v_count[2] ), .I3(\patgen/v_count[0]_2 ), .O(n231)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__400.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__401 (.I0(n230), .I1(n231), .O(\patgen/equal_26/n33 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__401.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__402 (.I0(\patgen/h_count[10] ), .I1(\patgen/h_count[11] ), 
            .I2(\patgen/h_count[12] ), .I3(\patgen/h_count[13] ), .O(n232)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__402.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__403 (.I0(\patgen/h_count[14] ), .I1(\patgen/h_count[15] ), 
            .I2(\patgen/h_count[16] ), .I3(n232), .O(n233)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__403.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__404 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[3] ), 
            .I2(\patgen/h_count[6] ), .I3(\patgen/h_count[7] ), .O(n234)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__404.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__405 (.I0(\patgen/h_count[8] ), .I1(\patgen/h_count[9] ), 
            .O(n235)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__405.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__406 (.I0(\patgen/h_count[1] ), .I1(\patgen/h_count[2] ), 
            .I2(\patgen/h_count[4] ), .I3(\patgen/h_count[5] ), .O(n236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__406.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__407 (.I0(n233), .I1(n234), .I2(n235), .I3(n236), .O(\patgen/equal_4/n33 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;
    defparam LUT__407.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__408 (.I0(\patgen/v_count[6] ), .I1(\patgen/v_count[7] ), 
            .I2(\patgen/v_count[8] ), .O(n237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__408.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__409 (.I0(n237), .I1(\patgen/v_count[9] ), .O(n238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__409.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__410 (.I0(\patgen/v_count[4] ), .I1(\patgen/v_count[5] ), 
            .O(n239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__410.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__411 (.I0(n225), .I1(n239), .I2(n238), .I3(n227), .O(n240)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007f */ ;
    defparam LUT__411.LUTMASK = 16'h007f;
    EFX_LUT4 LUT__412 (.I0(\patgen/equal_4/n33 ), .I1(n240), .I2(n229), 
            .I3(n231), .O(ceg_net1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefff */ ;
    defparam LUT__412.LUTMASK = 16'hefff;
    EFX_LUT4 LUT__413 (.I0(\patgen/h_count[4] ), .I1(\patgen/h_count[5] ), 
            .I2(\patgen/h_count[6] ), .I3(\patgen/h_count[7] ), .O(n241)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__413.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__414 (.I0(\patgen/h_count[4] ), .I1(\patgen/h_count[5] ), 
            .I2(\patgen/h_count[6] ), .I3(\patgen/h_count[7] ), .O(n242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__414.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__415 (.I0(\patgen/h_count[2] ), .I1(\patgen/h_count[3] ), 
            .I2(\patgen/h_count[6] ), .I3(\patgen/h_count[7] ), .O(n243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__415.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__416 (.I0(n243), .I1(n242), .I2(n235), .I3(n233), .O(n244)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__416.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__417 (.I0(\patgen/h_count[9] ), .I1(\patgen/h_count[8] ), 
            .I2(n241), .I3(n244), .O(\patgen/video_hsync )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__417.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__418 (.I0(\patgen/h_count[4] ), .I1(\patgen/h_count[5] ), 
            .I2(n243), .O(n245)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__418.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__419 (.I0(\patgen/h_count[1] ), .I1(n245), .O(n246)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__419.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__420 (.I0(\patgen/h_count[1] ), .I1(\patgen/h_count[2] ), 
            .I2(\patgen/h_count[3] ), .I3(\patgen/h_count[4] ), .O(n247)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__420.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__421 (.I0(\patgen/h_count[6] ), .I1(\patgen/h_count[5] ), 
            .I2(n247), .I3(\patgen/h_count[7] ), .O(n248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__421.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__422 (.I0(\patgen/h_count[8] ), .I1(\patgen/h_count[9] ), 
            .I2(n248), .I3(n233), .O(n249)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__422.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__423 (.I0(n246), .I1(n235), .I2(n249), .I3(valid_v_patgen), 
            .O(\patgen/video_valid_h )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__423.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__424 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[1] ), 
            .I2(n245), .O(n250)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__424.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__425 (.I0(n250), .I1(n235), .I2(n249), .O(\patgen/n442 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__425.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__426 (.I0(\patgen/v_count[3] ), .I1(\patgen/v_count[4] ), 
            .I2(\patgen/v_count[5] ), .O(n251)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__426.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__427 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[2] ), 
            .I2(\patgen/v_count[1] ), .I3(n251), .O(n252)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__427.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__428 (.I0(n229), .I1(n238), .I2(n252), .I3(n225), .O(\patgen/equal_5/n33 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;
    defparam LUT__428.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__429 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[2] ), .I3(\patgen/v_count[3] ), .O(n253)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__429.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__430 (.I0(n253), .I1(n230), .I2(\patgen/equal_5/n33 ), 
            .I3(\patgen/equal_4/n33 ), .O(ceg_net5)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff70 */ ;
    defparam LUT__430.LUTMASK = 16'hff70;
    EFX_LUT4 LUT__431 (.I0(\patgen/v_count[7] ), .I1(\patgen/v_count[8] ), 
            .I2(\patgen/v_count[9] ), .O(n254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__431.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__432 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[2] ), .O(n255)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__432.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__433 (.I0(n255), .I1(\patgen/v_count[3] ), .I2(\patgen/v_count[4] ), 
            .O(n256)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__433.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__434 (.I0(n256), .I1(\patgen/v_count[5] ), .I2(\patgen/v_count[6] ), 
            .O(n257)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__434.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__435 (.I0(\patgen/v_count[2] ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[3] ), .I3(n239), .O(n258)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__435.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__436 (.I0(n258), .I1(n237), .I2(\patgen/v_count[9] ), 
            .O(n259)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__436.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__437 (.I0(n229), .I1(n225), .O(n260)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__437.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__438 (.I0(n257), .I1(n254), .I2(n259), .I3(n260), .O(\patgen/n475 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__438.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__439 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .O(\~patgen/n677 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__439.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__440 (.I0(\~patgen/n677 ), .I1(\patgen/equal_5/n33 ), .O(\patgen/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__440.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__441 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[2] ), .O(\patgen/n682 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__441.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__442 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[2] ), .I3(\patgen/v_count[3] ), .O(n261)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__442.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__443 (.I0(n261), .I1(\patgen/equal_5/n33 ), .O(\patgen/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__443.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__444 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[2] ), .I3(\patgen/v_count[3] ), .O(n262)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__444.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__445 (.I0(n262), .I1(\patgen/v_count[4] ), .I2(\patgen/equal_5/n33 ), 
            .O(\patgen/n39 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__445.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__446 (.I0(n262), .I1(\patgen/v_count[4] ), .I2(\patgen/v_count[5] ), 
            .I3(\patgen/equal_5/n33 ), .O(\patgen/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__446.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__447 (.I0(n239), .I1(n262), .I2(\patgen/v_count[6] ), 
            .O(\patgen/n702 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__447.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__448 (.I0(n239), .I1(n262), .I2(\patgen/v_count[6] ), 
            .I3(\patgen/v_count[7] ), .O(\patgen/n707 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__448.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__449 (.I0(n239), .I1(n262), .I2(\patgen/v_count[6] ), 
            .I3(\patgen/v_count[7] ), .O(n263)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__449.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__450 (.I0(n263), .I1(\patgen/v_count[8] ), .O(\patgen/n712 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__450.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__451 (.I0(n263), .I1(\patgen/v_count[8] ), .I2(\patgen/v_count[9] ), 
            .I3(\patgen/equal_5/n33 ), .O(\patgen/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__451.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__452 (.I0(n263), .I1(\patgen/v_count[8] ), .I2(\patgen/v_count[9] ), 
            .I3(\patgen/v_count[10] ), .O(\patgen/n722 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__452.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__453 (.I0(n263), .I1(\patgen/v_count[8] ), .I2(\patgen/v_count[9] ), 
            .I3(\patgen/v_count[10] ), .O(n264)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__453.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__454 (.I0(n264), .I1(\patgen/v_count[11] ), .O(\patgen/n727 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__454.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__455 (.I0(\patgen/v_count[8] ), .I1(\patgen/v_count[9] ), 
            .I2(\patgen/v_count[10] ), .I3(\patgen/v_count[11] ), .O(n265)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__455.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__456 (.I0(n263), .I1(n265), .I2(\patgen/v_count[12] ), 
            .O(\patgen/n732 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__456.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__457 (.I0(n263), .I1(n265), .I2(\patgen/v_count[12] ), 
            .I3(\patgen/v_count[13] ), .O(\patgen/n737 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__457.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__458 (.I0(n263), .I1(n265), .I2(\patgen/v_count[12] ), 
            .I3(\patgen/v_count[13] ), .O(n266)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__458.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__459 (.I0(n266), .I1(\patgen/v_count[14] ), .O(\patgen/n742 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__459.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__460 (.I0(n266), .I1(\patgen/v_count[14] ), .I2(\patgen/v_count[15] ), 
            .O(\patgen/n747 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__460.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__461 (.I0(n266), .I1(\patgen/v_count[14] ), .I2(\patgen/v_count[15] ), 
            .I3(\patgen/v_count[16] ), .O(\patgen/n752 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__461.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__462 (.I0(\patgen/h_count[1] ), .I1(\patgen/h_count[2] ), 
            .O(\patgen/n1159 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__462.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__463 (.I0(\patgen/h_count[1] ), .I1(\patgen/h_count[2] ), 
            .I2(\patgen/h_count[3] ), .O(\patgen/n1164 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__463.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__464 (.I0(\patgen/h_count[1] ), .I1(\patgen/h_count[2] ), 
            .I2(\patgen/h_count[3] ), .I3(\patgen/h_count[4] ), .O(\patgen/n1169 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;
    defparam LUT__464.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__465 (.I0(n247), .I1(\patgen/h_count[5] ), .O(\patgen/n1174 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__465.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__466 (.I0(\patgen/h_count[5] ), .I1(n247), .I2(\patgen/h_count[6] ), 
            .O(\patgen/n1179 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__466.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__467 (.I0(n246), .I1(n248), .O(\patgen/n1184 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__467.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__468 (.I0(n248), .I1(\patgen/h_count[8] ), .O(\patgen/n1189 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__468.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__469 (.I0(n248), .I1(\patgen/h_count[8] ), .I2(\patgen/h_count[9] ), 
            .O(\patgen/n1194 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__469.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__470 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[2] ), .O(\patgen/n1254 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__470.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__471 (.I0(n255), .I1(\patgen/v_count[3] ), .O(\patgen/n1259 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__471.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__472 (.I0(n255), .I1(\patgen/v_count[3] ), .I2(\patgen/v_count[4] ), 
            .O(\patgen/n1264 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__472.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__473 (.I0(n256), .I1(\patgen/v_count[5] ), .O(\patgen/n1269 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__473.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__474 (.I0(n256), .I1(\patgen/v_count[5] ), .I2(\patgen/v_count[6] ), 
            .O(\patgen/n1274 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__474.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__475 (.I0(n257), .I1(\patgen/v_count[7] ), .O(\patgen/n1279 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__475.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__476 (.I0(n257), .I1(\patgen/v_count[7] ), .I2(\patgen/v_count[8] ), 
            .O(\patgen/n1284 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__476.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__477 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[1] ), 
            .O(\patgen/n762 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__477.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__478 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[1] ), 
            .I2(\patgen/h_count[2] ), .O(\patgen/n767 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__478.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__479 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[1] ), 
            .I2(\patgen/h_count[2] ), .I3(\patgen/h_count[3] ), .O(\patgen/n772 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__479.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__480 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[1] ), 
            .I2(\patgen/h_count[2] ), .I3(\patgen/h_count[3] ), .O(n267)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__480.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__481 (.I0(n267), .I1(\patgen/h_count[4] ), .O(\patgen/n777 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__481.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__482 (.I0(n267), .I1(\patgen/h_count[4] ), .I2(\patgen/h_count[5] ), 
            .O(\patgen/n782 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__482.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__483 (.I0(n267), .I1(\patgen/h_count[4] ), .I2(\patgen/h_count[5] ), 
            .O(n268)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__483.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__484 (.I0(n268), .I1(\patgen/h_count[6] ), .O(\patgen/n787 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__484.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__485 (.I0(n268), .I1(\patgen/h_count[6] ), .I2(\patgen/h_count[7] ), 
            .O(\patgen/n792 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__485.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__486 (.I0(\patgen/h_count[4] ), .I1(\patgen/h_count[5] ), 
            .I2(\patgen/h_count[6] ), .I3(\patgen/h_count[7] ), .O(n269)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__486.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__487 (.I0(n267), .I1(n269), .O(n270)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__487.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__488 (.I0(n270), .I1(\patgen/h_count[8] ), .O(\patgen/n797 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__488.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__489 (.I0(n270), .I1(\patgen/h_count[8] ), .I2(\patgen/h_count[9] ), 
            .O(\patgen/n802 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__489.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__490 (.I0(n270), .I1(n235), .I2(\patgen/h_count[10] ), 
            .O(\patgen/n807 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__490.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__491 (.I0(n270), .I1(n235), .I2(\patgen/h_count[10] ), 
            .I3(\patgen/h_count[11] ), .O(\patgen/n812 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__491.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__492 (.I0(n235), .I1(\patgen/h_count[10] ), .I2(\patgen/h_count[11] ), 
            .O(n271)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__492.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__493 (.I0(n270), .I1(n271), .I2(\patgen/h_count[12] ), 
            .O(\patgen/n817 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__493.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__494 (.I0(n270), .I1(n271), .I2(\patgen/h_count[12] ), 
            .I3(\patgen/h_count[13] ), .O(\patgen/n822 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__494.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__495 (.I0(n270), .I1(n271), .I2(\patgen/h_count[12] ), 
            .I3(\patgen/h_count[13] ), .O(n272)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__495.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__496 (.I0(n272), .I1(\patgen/h_count[14] ), .O(\patgen/n827 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__496.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__497 (.I0(n272), .I1(\patgen/h_count[14] ), .I2(\patgen/h_count[15] ), 
            .O(\patgen/n832 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__497.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__498 (.I0(n272), .I1(\patgen/h_count[14] ), .I2(\patgen/h_count[15] ), 
            .I3(\patgen/h_count[16] ), .O(\patgen/n837 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__498.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__374 (.I0(\x[2] ), .I1(\x[3] ), .I2(\x[4] ), .O(n214)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__374.LUTMASK = 16'h8080;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(tx_vga_clk), .O(\tx_vga_clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5acb9a95_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5acb9a95_124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_5acb9a95_0
// module not written out since it is a black box. 
//

