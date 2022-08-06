
//
// Verific Verilog Description of module mipi_loopback_top
//

module mipi_loopback_top (tx_vga_clk, sw4, sw5, rx, uart_clk, rx_vga_clk, 
            led5, led6, tx_pixel_clk, rx_pixel_clk, my_mipi_tx_DPHY_RSTN, 
            my_mipi_tx_RSTN, my_mipi_tx_VALID, my_mipi_tx_HSYNC, my_mipi_tx_VSYNC, 
            my_mipi_tx_DATA, my_mipi_tx_TYPE, my_mipi_tx_LANES, my_mipi_tx_FRAME_MODE, 
            my_mipi_tx_HRES, my_mipi_tx_VC, my_mipi_tx_ULPS_ENTER, my_mipi_tx_ULPS_EXIT, 
            my_mipi_tx_ULPS_CLK_ENTER, my_mipi_tx_ULPS_CLK_EXIT, my_mipi_rx_DPHY_RSTN, 
            my_mipi_rx_RSTN, my_mipi_rx_CLEAR, my_mipi_rx_LANES, my_mipi_rx_VC_ENA, 
            my_mipi_rx_VALID, my_mipi_rx_HSYNC, my_mipi_rx_VSYNC, my_mipi_rx_DATA, 
            my_mipi_rx_TYPE, my_mipi_rx_VC, my_mipi_rx_CNT, my_mipi_rx_ERROR, 
            my_mipi_rx_ULPS_CLK, my_mipi_rx_ULPS, bscan_DRCK, bscan_RESET, 
            bscan_TMS, bscan_RUNTEST, bscan_SEL, bscan_SHIFT, bscan_TDI, 
            bscan_CAPTURE, bscan_TCK, bscan_UPDATE, bscan_TDO);
    input tx_vga_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input sw4 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input sw5 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input uart_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input rx_vga_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output led5 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output led6 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    input tx_pixel_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input rx_pixel_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
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
    output my_mipi_rx_DPHY_RSTN /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output my_mipi_rx_RSTN /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output my_mipi_rx_CLEAR /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [1:0]my_mipi_rx_LANES /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [3:0]my_mipi_rx_VC_ENA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    input my_mipi_rx_VALID /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [3:0]my_mipi_rx_HSYNC /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [3:0]my_mipi_rx_VSYNC /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [63:0]my_mipi_rx_DATA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [5:0]my_mipi_rx_TYPE /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [1:0]my_mipi_rx_VC /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [3:0]my_mipi_rx_CNT /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [17:0]my_mipi_rx_ERROR /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input my_mipi_rx_ULPS_CLK /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [3:0]my_mipi_rx_ULPS /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input bscan_DRCK /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input bscan_RESET /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input bscan_TMS /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input bscan_RUNTEST /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input bscan_SEL /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input bscan_SHIFT /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input bscan_TDI /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input bscan_CAPTURE /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input bscan_TCK /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input bscan_UPDATE /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output bscan_TDO /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
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
        \patgen/video_hsync , \patgen/equal_26/n33 , ceg_net1, n477, 
        \patgen/video_valid_h , \patgen/n442 , \patgen/equal_5/n33 , ceg_net10, 
        \patgen/equal_4/n33 , \patgen/n475 , \patgen/n42 , \patgen/n682 , 
        \patgen/n40 , \patgen/n39 , \patgen/n38 , \patgen/n702 , \patgen/n707 , 
        \patgen/n712 , \patgen/n34 , \patgen/n722 , \patgen/n727 , \patgen/n732 , 
        \patgen/n737 , \patgen/n742 , \patgen/n747 , \patgen/n752 , 
        \patgen/n1159 , \patgen/n1164 , \patgen/n1169 , \patgen/n1174 , 
        \patgen/n1179 , \patgen/n1184 , \patgen/n1189 , \patgen/n1194 , 
        \~patgen/n677 , \patgen/n1254 , \patgen/n1259 , \patgen/n1264 , 
        \patgen/n1269 , \patgen/n1274 , \patgen/n1279 , \patgen/n1284 , 
        \patgen/n762 , \patgen/n767 , \patgen/n772 , \patgen/n777 , 
        \patgen/n782 , \patgen/n787 , \patgen/n792 , \patgen/n797 , 
        \patgen/n802 , \patgen/n807 , \patgen/n812 , \patgen/n817 , 
        \patgen/n822 , \patgen/n827 , \patgen/n832 , \patgen/n837 , 
        \tx_pixel_clk~O , \tx_vga_clk~O , n492, n493, n494, n495, 
        n496, n497, n498, n499, n500, n501, n502, n503, n504, 
        n505, n506, n507, n508, n509, n510, n511, n512, n513, 
        n514, n515, n516, n517, n518, n519, n520, n521, n522, 
        n523, n524, n525, n526, n527, n528, n529, n530, n531, 
        n532, n533, n534, n535, n536, n537, n538, n539, n540, 
        n541, n542, n543, n544, n545, n546, n547, n548, n549, 
        n550, n551, n552, n553, n554, n555;
    
    assign led6 = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DPHY_RSTN = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_RSTN = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[63] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
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
    assign my_mipi_tx_DATA[47] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[46] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[45] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[44] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[43] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[42] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[41] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[40] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[39] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[37] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[36] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[31] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[30] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[29] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[28] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[27] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[24] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[23] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[22] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[21] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[20] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[19] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[18] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[17] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[16] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[15] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[13] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[12] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[11] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[9] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[7] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[6] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[5] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[4] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[3] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[2] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[1] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[0] = my_mipi_tx_DATA[25] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
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
    assign my_mipi_rx_DPHY_RSTN = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_rx_RSTN = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_rx_CLEAR = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_rx_LANES[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_rx_LANES[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_rx_VC_ENA[2] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_rx_VC_ENA[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_rx_VC_ENA[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign bscan_TDO = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign my_mipi_tx_DATA[26] = 1'b1 /* verific EFX_ATTRIBUTE_CELL_NAME=VCC */ ;
    assign my_mipi_rx_VC_ENA[3] = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_LUT4 LUT__855 (.I0(\x[3] ), .I1(\x[4] ), .I2(\x[2] ), .I3(n492), 
            .O(n493)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__855.LUTMASK = 16'h7f00;
    EFX_FF \patgen/hsync_patgen~FF  (.D(\patgen/video_hsync ), .CE(1'b1), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(my_mipi_tx_HSYNC)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(115)
    defparam \patgen/hsync_patgen~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/hsync_patgen~FF .CE_POLARITY = 1'b1;
    defparam \patgen/hsync_patgen~FF .SR_POLARITY = 1'b1;
    defparam \patgen/hsync_patgen~FF .D_POLARITY = 1'b1;
    defparam \patgen/hsync_patgen~FF .SR_SYNC = 1'b1;
    defparam \patgen/hsync_patgen~FF .SR_VALUE = 1'b0;
    defparam \patgen/hsync_patgen~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/valid_v_patgen~FF  (.D(\patgen/equal_26/n33 ), .CE(ceg_net1), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(valid_v_patgen)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(93)
    defparam \patgen/valid_v_patgen~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/valid_v_patgen~FF .CE_POLARITY = 1'b0;
    defparam \patgen/valid_v_patgen~FF .SR_POLARITY = 1'b1;
    defparam \patgen/valid_v_patgen~FF .D_POLARITY = 1'b0;
    defparam \patgen/valid_v_patgen~FF .SR_SYNC = 1'b1;
    defparam \patgen/valid_v_patgen~FF .SR_VALUE = 1'b0;
    defparam \patgen/valid_v_patgen~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \hsync_patgen_PC~FF  (.D(n477), .CE(1'b1), .CLK(\tx_pixel_clk~O ), 
           .SR(1'b0), .Q(led5)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\mipi_loopback_top.v(274)
    defparam \hsync_patgen_PC~FF .CLK_POLARITY = 1'b1;
    defparam \hsync_patgen_PC~FF .CE_POLARITY = 1'b1;
    defparam \hsync_patgen_PC~FF .SR_POLARITY = 1'b1;
    defparam \hsync_patgen_PC~FF .D_POLARITY = 1'b1;
    defparam \hsync_patgen_PC~FF .SR_SYNC = 1'b1;
    defparam \hsync_patgen_PC~FF .SR_VALUE = 1'b0;
    defparam \hsync_patgen_PC~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/valid_h_patgen~FF  (.D(\patgen/video_valid_h ), .CE(1'b1), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(my_mipi_tx_VALID)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(115)
    defparam \patgen/valid_h_patgen~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/valid_h_patgen~FF .CE_POLARITY = 1'b1;
    defparam \patgen/valid_h_patgen~FF .SR_POLARITY = 1'b1;
    defparam \patgen/valid_h_patgen~FF .D_POLARITY = 1'b1;
    defparam \patgen/valid_h_patgen~FF .SR_SYNC = 1'b1;
    defparam \patgen/valid_h_patgen~FF .SR_VALUE = 1'b0;
    defparam \patgen/valid_h_patgen~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[0]~FF  (.D(\patgen/h_count[0]_2 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[0]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[0]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[0]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[0]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[0]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/vsync_patgen~FF  (.D(\patgen/equal_5/n33 ), .CE(ceg_net10), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(my_mipi_tx_VSYNC)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(93)
    defparam \patgen/vsync_patgen~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/vsync_patgen~FF .CE_POLARITY = 1'b0;
    defparam \patgen/vsync_patgen~FF .SR_POLARITY = 1'b1;
    defparam \patgen/vsync_patgen~FF .D_POLARITY = 1'b1;
    defparam \patgen/vsync_patgen~FF .SR_SYNC = 1'b1;
    defparam \patgen/vsync_patgen~FF .SR_VALUE = 1'b0;
    defparam \patgen/vsync_patgen~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[0]~FF  (.D(\patgen/v_count[0]_2 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[0]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[0]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[0]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[0]~FF .D_POLARITY = 1'b0;
    defparam \patgen/v_count[0]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[0]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[0]~FF  (.D(\patgen/v_count[0]_2 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[0]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[0]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[0]~FF .D_POLARITY = 1'b0;
    defparam \patgen/y[0]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[0]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[0]_2~FF  (.D(\patgen/h_count[0]_2 ), .CE(1'b1), 
           .CLK(\tx_vga_clk~O ), .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[0]_2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[0]_2~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[0]_2~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[0]_2~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[0]_2~FF .D_POLARITY = 1'b0;
    defparam \patgen/h_count[0]_2~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[0]_2~FF .SR_VALUE = 1'b1;
    defparam \patgen/h_count[0]_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[1]~FF  (.D(\patgen/n42 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[1]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[1]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[1]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[1]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[1]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[2]~FF  (.D(\patgen/n682 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[2]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[2]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[2]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[2]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[2]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[3]~FF  (.D(\patgen/n40 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[3]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[3]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[3]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[3]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[3]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[4]~FF  (.D(\patgen/n39 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[4]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[4]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[4]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[4]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[4]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[5]~FF  (.D(\patgen/n38 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[5]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[5]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[5]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[5]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[5]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[6]~FF  (.D(\patgen/n702 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[6]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[6]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[6]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[6]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[6]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[7]~FF  (.D(\patgen/n707 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[7]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[7]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[7]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[7]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[7]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[8]~FF  (.D(\patgen/n712 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[8]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[8]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[8]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[8]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[8]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[9]~FF  (.D(\patgen/n34 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[9]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[9]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[9]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[9]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[9]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[10]~FF  (.D(\patgen/n722 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[10]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[10]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[10]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[10]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[10]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[10]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[11]~FF  (.D(\patgen/n727 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[11]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[11]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[11]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[11]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[11]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[11]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[12]~FF  (.D(\patgen/n732 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[12]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[12]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[12]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[12]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[12]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[12]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[13]~FF  (.D(\patgen/n737 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[13]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[13]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[13]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[13]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[13]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[13]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[14]~FF  (.D(\patgen/n742 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[14]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[14]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[14]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[14]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[14]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[14]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[15]~FF  (.D(\patgen/n747 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[15]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[15]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[15]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[15]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[15]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[15]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/v_count[16]~FF  (.D(\patgen/n752 ), .CE(\patgen/equal_4/n33 ), 
           .CLK(\tx_vga_clk~O ), .SR(1'b0), .Q(\patgen/v_count[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/v_count[16]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/v_count[16]~FF .CE_POLARITY = 1'b0;
    defparam \patgen/v_count[16]~FF .SR_POLARITY = 1'b1;
    defparam \patgen/v_count[16]~FF .D_POLARITY = 1'b1;
    defparam \patgen/v_count[16]~FF .SR_SYNC = 1'b1;
    defparam \patgen/v_count[16]~FF .SR_VALUE = 1'b0;
    defparam \patgen/v_count[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[1]~FF  (.D(\patgen/h_count[1] ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[1]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[1]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[1]~FF .D_POLARITY = 1'b0;
    defparam \patgen/x[1]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[1]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[2]~FF  (.D(\patgen/n1159 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[2]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[2]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[2]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[2]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[2]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[3]~FF  (.D(\patgen/n1164 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[3]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[3]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[3]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[3]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[3]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[4]~FF  (.D(\patgen/n1169 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[4]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[4]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[4]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[4]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[4]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[5]~FF  (.D(\patgen/n1174 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[5]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[5]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[5]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[5]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[5]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[6]~FF  (.D(\patgen/n1179 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[6]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[6]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[6]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[6]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[6]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[7]~FF  (.D(\patgen/n1184 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[7]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[7]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[7]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[7]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[7]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[8]~FF  (.D(\patgen/n1189 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[8]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[8]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[8]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[8]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[8]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/x[9]~FF  (.D(\patgen/n1194 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n442 ), .Q(\x[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/x[9]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/x[9]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/x[9]~FF .D_POLARITY = 1'b1;
    defparam \patgen/x[9]~FF .SR_SYNC = 1'b1;
    defparam \patgen/x[9]~FF .SR_VALUE = 1'b0;
    defparam \patgen/x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[1]~FF  (.D(\~patgen/n677 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[1]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[1]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[1]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[1]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[1]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[2]~FF  (.D(\patgen/n1254 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[2]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[2]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[2]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[2]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[2]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[3]~FF  (.D(\patgen/n1259 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[3]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[3]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[3]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[3]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[3]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[4]~FF  (.D(\patgen/n1264 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[4]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[4]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[4]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[4]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[4]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[5]~FF  (.D(\patgen/n1269 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[5]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[5]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[5]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[5]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[5]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[6]~FF  (.D(\patgen/n1274 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[6]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[6]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[6]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[6]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[6]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[7]~FF  (.D(\patgen/n1279 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[7]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[7]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[7]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[7]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[7]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/y[8]~FF  (.D(\patgen/n1284 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/n475 ), .Q(\y[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(152)
    defparam \patgen/y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/y[8]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/y[8]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/y[8]~FF .D_POLARITY = 1'b1;
    defparam \patgen/y[8]~FF .SR_SYNC = 1'b1;
    defparam \patgen/y[8]~FF .SR_VALUE = 1'b0;
    defparam \patgen/y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[1]~FF  (.D(\patgen/n762 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[1]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[1]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[1]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[1]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[1]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[2]~FF  (.D(\patgen/n767 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[2]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[2]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[2]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[2]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[2]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[3]~FF  (.D(\patgen/n772 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[3]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[3]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[3]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[3]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[3]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[4]~FF  (.D(\patgen/n777 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[4]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[4]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[4]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[4]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[4]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[5]~FF  (.D(\patgen/n782 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[5]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[5]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[5]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[5]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[5]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[6]~FF  (.D(\patgen/n787 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[6]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[6]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[6]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[6]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[6]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[7]~FF  (.D(\patgen/n792 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[7]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[7]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[7]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[7]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[7]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[8]~FF  (.D(\patgen/n797 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[8]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[8]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[8]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[8]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[8]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[9]~FF  (.D(\patgen/n802 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[9]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[9]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[9]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[9]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[9]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[10]~FF  (.D(\patgen/n807 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[10]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[10]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[10]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[10]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[10]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[10]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[11]~FF  (.D(\patgen/n812 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[11]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[11]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[11]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[11]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[11]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[11]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[12]~FF  (.D(\patgen/n817 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[12]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[12]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[12]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[12]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[12]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[12]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[13]~FF  (.D(\patgen/n822 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[13]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[13]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[13]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[13]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[13]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[13]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[14]~FF  (.D(\patgen/n827 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[14]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[14]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[14]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[14]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[14]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[14]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[15]~FF  (.D(\patgen/n832 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[15]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[15]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[15]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[15]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[15]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[15]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \patgen/h_count[16]~FF  (.D(\patgen/n837 ), .CE(1'b1), .CLK(\tx_vga_clk~O ), 
           .SR(\patgen/equal_4/n33 ), .Q(\patgen/h_count[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // D:/MIPI_Loopback\video_gen.v(71)
    defparam \patgen/h_count[16]~FF .CLK_POLARITY = 1'b1;
    defparam \patgen/h_count[16]~FF .CE_POLARITY = 1'b1;
    defparam \patgen/h_count[16]~FF .SR_POLARITY = 1'b0;
    defparam \patgen/h_count[16]~FF .D_POLARITY = 1'b1;
    defparam \patgen/h_count[16]~FF .SR_SYNC = 1'b1;
    defparam \patgen/h_count[16]~FF .SR_VALUE = 1'b0;
    defparam \patgen/h_count[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__856 (.I0(\x[0] ), .I1(\x[1] ), .I2(\x[2] ), .O(n494)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__856.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__857 (.I0(\x[5] ), .I1(\x[6] ), .O(n495)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__857.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__858 (.I0(\x[3] ), .I1(\x[4] ), .I2(n494), .I3(n495), 
            .O(n496)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__858.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__859 (.I0(\x[8] ), .I1(n496), .I2(\x[7] ), .I3(\x[9] ), 
            .O(n497)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00fe */ ;
    defparam LUT__859.LUTMASK = 16'h00fe;
    EFX_LUT4 LUT__860 (.I0(\y[5] ), .I1(\y[6] ), .O(n498)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__860.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__861 (.I0(n498), .I1(\y[2] ), .I2(\y[3] ), .I3(\y[4] ), 
            .O(n499)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__861.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__862 (.I0(\y[0] ), .I1(\y[1] ), .I2(\y[2] ), .O(n500)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__862.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__863 (.I0(\y[3] ), .I1(\y[4] ), .I2(n500), .I3(n498), 
            .O(n501)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__863.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__864 (.I0(n501), .I1(n499), .I2(\y[7] ), .I3(\y[8] ), 
            .O(n502)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc05 */ ;
    defparam LUT__864.LUTMASK = 16'hfc05;
    EFX_LUT4 LUT__865 (.I0(\x[9] ), .I1(n493), .I2(n497), .I3(n502), 
            .O(my_mipi_tx_DATA[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff07 */ ;
    defparam LUT__865.LUTMASK = 16'hff07;
    EFX_LUT4 LUT__866 (.I0(\x[9] ), .I1(n493), .I2(n497), .I3(n502), 
            .O(my_mipi_tx_DATA[38])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__866.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__867 (.I0(\x[9] ), .I1(n493), .I2(n497), .I3(n502), 
            .O(my_mipi_tx_DATA[35])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__867.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__868 (.I0(\x[9] ), .I1(n493), .I2(n497), .I3(n502), 
            .O(my_mipi_tx_DATA[34])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__868.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__869 (.I0(\x[9] ), .I1(n493), .I2(n497), .I3(n502), 
            .O(my_mipi_tx_DATA[33])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__869.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__870 (.I0(\x[9] ), .I1(n493), .I2(n497), .I3(n502), 
            .O(my_mipi_tx_DATA[32])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__870.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__871 (.I0(\x[9] ), .I1(n493), .I2(n497), .I3(n502), 
            .O(my_mipi_tx_DATA[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__871.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__872 (.I0(\x[9] ), .I1(n493), .I2(n497), .I3(n502), 
            .O(my_mipi_tx_DATA[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__872.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__873 (.I0(\x[9] ), .I1(n493), .I2(n497), .I3(n502), 
            .O(my_mipi_tx_DATA[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__873.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__874 (.I0(\patgen/h_count[8] ), .I1(\patgen/h_count[9] ), 
            .O(n503)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__874.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__875 (.I0(\patgen/h_count[4] ), .I1(\patgen/h_count[5] ), 
            .O(n504)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__875.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__876 (.I0(\patgen/h_count[2] ), .I1(\patgen/h_count[3] ), 
            .I2(n504), .O(n505)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__876.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__877 (.I0(n505), .I1(\patgen/h_count[6] ), .I2(\patgen/h_count[7] ), 
            .O(n506)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__877.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__878 (.I0(\patgen/h_count[4] ), .I1(\patgen/h_count[5] ), 
            .I2(\patgen/h_count[6] ), .O(n507)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__878.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__879 (.I0(\patgen/h_count[8] ), .I1(\patgen/h_count[9] ), 
            .O(n508)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__879.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__880 (.I0(n507), .I1(\patgen/h_count[7] ), .I2(n508), 
            .O(n509)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__880.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__881 (.I0(\patgen/h_count[13] ), .I1(\patgen/h_count[14] ), 
            .I2(\patgen/h_count[15] ), .I3(\patgen/h_count[16] ), .O(n510)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__881.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__882 (.I0(\patgen/h_count[10] ), .I1(\patgen/h_count[11] ), 
            .I2(\patgen/h_count[12] ), .I3(n510), .O(n511)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__882.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__883 (.I0(n506), .I1(n503), .I2(n509), .I3(n511), .O(\patgen/video_hsync )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__883.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__884 (.I0(\patgen/v_count[13] ), .I1(\patgen/v_count[14] ), 
            .O(n512)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__884.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__885 (.I0(\patgen/v_count[12] ), .I1(\patgen/v_count[15] ), 
            .I2(\patgen/v_count[16] ), .I3(n512), .O(n513)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__885.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__886 (.I0(\patgen/v_count[1] ), .I1(\patgen/v_count[3] ), 
            .I2(\patgen/v_count[2] ), .I3(\patgen/v_count[0]_2 ), .O(n514)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__886.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__887 (.I0(n513), .I1(n514), .O(n515)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__887.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__888 (.I0(\patgen/v_count[5] ), .I1(\patgen/v_count[4] ), 
            .I2(\patgen/v_count[6] ), .O(n516)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__888.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__889 (.I0(\patgen/v_count[7] ), .I1(\patgen/v_count[8] ), 
            .I2(\patgen/v_count[10] ), .I3(\patgen/v_count[11] ), .O(n517)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__889.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__890 (.I0(\patgen/v_count[9] ), .I1(n516), .I2(n517), 
            .O(n518)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__890.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__891 (.I0(n515), .I1(n518), .O(\patgen/equal_26/n33 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__891.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__892 (.I0(\patgen/h_count[4] ), .I1(\patgen/h_count[5] ), 
            .I2(\patgen/h_count[8] ), .I3(\patgen/h_count[9] ), .O(n519)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__892.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__893 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[1] ), 
            .I2(n519), .I3(\patgen/h_count[2] ), .O(n520)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__893.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__894 (.I0(\patgen/h_count[3] ), .I1(\patgen/h_count[6] ), 
            .I2(\patgen/h_count[7] ), .O(n521)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__894.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__895 (.I0(n511), .I1(n520), .I2(n521), .O(\patgen/equal_4/n33 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f7f */ ;
    defparam LUT__895.LUTMASK = 16'h7f7f;
    EFX_LUT4 LUT__896 (.I0(\patgen/v_count[4] ), .I1(\patgen/v_count[5] ), 
            .O(n522)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__896.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__897 (.I0(\patgen/v_count[6] ), .I1(n517), .I2(\patgen/v_count[9] ), 
            .O(n523)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__897.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__898 (.I0(n523), .I1(n522), .I2(n518), .O(n524)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__898.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__899 (.I0(\patgen/equal_4/n33 ), .I1(n524), .I2(n515), 
            .O(ceg_net1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;
    defparam LUT__899.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__905 (.I0(my_mipi_tx_HSYNC), .I1(my_mipi_tx_VSYNC), .O(n477)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__905.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__906 (.I0(\patgen/h_count[1] ), .I1(\patgen/h_count[2] ), 
            .I2(\patgen/h_count[3] ), .O(n525)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__906.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__907 (.I0(\patgen/h_count[4] ), .I1(\patgen/h_count[5] ), 
            .I2(n525), .O(n526)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__907.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__908 (.I0(n526), .I1(\patgen/h_count[6] ), .I2(\patgen/h_count[7] ), 
            .O(n527)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__908.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__909 (.I0(\patgen/h_count[7] ), .I1(\patgen/h_count[6] ), 
            .I2(n526), .I3(n503), .O(n528)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__909.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__910 (.I0(n511), .I1(valid_v_patgen), .O(n529)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__910.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__911 (.I0(n527), .I1(n508), .I2(n528), .I3(n529), .O(\patgen/video_valid_h )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__911.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__912 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[1] ), 
            .I2(\patgen/h_count[4] ), .I3(\patgen/h_count[5] ), .O(n530)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__912.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__913 (.I0(\patgen/h_count[2] ), .I1(n521), .I2(n530), 
            .I3(n503), .O(n531)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__913.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__914 (.I0(n527), .I1(n508), .I2(n531), .I3(n511), .O(\patgen/n442 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__914.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__915 (.I0(\patgen/v_count[0]_2 ), .I1(n522), .I2(\patgen/v_count[1] ), 
            .I3(\patgen/v_count[3] ), .O(n532)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__915.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__916 (.I0(\patgen/v_count[2] ), .I1(n523), .I2(n532), 
            .I3(n513), .O(\patgen/equal_5/n33 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfff */ ;
    defparam LUT__916.LUTMASK = 16'hbfff;
    EFX_LUT4 LUT__917 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[3] ), .O(n533)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__917.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__918 (.I0(\patgen/v_count[2] ), .I1(n513), .I2(n533), 
            .I3(n518), .O(n534)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__918.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__919 (.I0(n534), .I1(\patgen/equal_5/n33 ), .I2(\patgen/equal_4/n33 ), 
            .O(ceg_net10)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__919.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__920 (.I0(\patgen/v_count[2] ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[3] ), .I3(n522), .O(n535)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__920.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__921 (.I0(\patgen/v_count[6] ), .I1(\patgen/v_count[7] ), 
            .I2(\patgen/v_count[8] ), .O(n536)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__921.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__922 (.I0(n535), .I1(n536), .I2(n517), .I3(\patgen/v_count[9] ), 
            .O(n537)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbb0f */ ;
    defparam LUT__922.LUTMASK = 16'hbb0f;
    EFX_LUT4 LUT__923 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[2] ), .O(n538)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__923.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__924 (.I0(n538), .I1(\patgen/v_count[3] ), .I2(\patgen/v_count[4] ), 
            .O(n539)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__924.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__925 (.I0(n539), .I1(\patgen/v_count[5] ), .I2(\patgen/v_count[6] ), 
            .O(n540)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__925.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__926 (.I0(\patgen/v_count[10] ), .I1(\patgen/v_count[11] ), 
            .I2(n513), .O(n541)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__926.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__927 (.I0(n540), .I1(\patgen/v_count[9] ), .I2(n537), 
            .I3(n541), .O(\patgen/n475 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3e00 */ ;
    defparam LUT__927.LUTMASK = 16'h3e00;
    EFX_LUT4 LUT__928 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .O(\~patgen/n677 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__928.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__929 (.I0(\~patgen/n677 ), .I1(\patgen/equal_5/n33 ), .O(\patgen/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__929.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__930 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[2] ), .O(\patgen/n682 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__930.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__931 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[2] ), .O(n542)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__931.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__932 (.I0(n542), .I1(\patgen/v_count[3] ), .I2(\patgen/equal_5/n33 ), 
            .O(\patgen/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__932.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__933 (.I0(n542), .I1(\patgen/v_count[3] ), .O(n543)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__933.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__934 (.I0(n543), .I1(\patgen/v_count[4] ), .I2(\patgen/equal_5/n33 ), 
            .O(\patgen/n39 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__934.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__935 (.I0(n543), .I1(\patgen/v_count[4] ), .I2(\patgen/v_count[5] ), 
            .I3(\patgen/equal_5/n33 ), .O(\patgen/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__935.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__936 (.I0(n522), .I1(n542), .I2(\patgen/v_count[3] ), 
            .O(n544)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__936.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__937 (.I0(n544), .I1(\patgen/v_count[6] ), .O(\patgen/n702 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__937.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__938 (.I0(n544), .I1(\patgen/v_count[6] ), .I2(\patgen/v_count[7] ), 
            .O(\patgen/n707 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__938.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__939 (.I0(n544), .I1(\patgen/v_count[6] ), .I2(\patgen/v_count[7] ), 
            .I3(\patgen/v_count[8] ), .O(\patgen/n712 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__939.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__940 (.I0(n522), .I1(\patgen/v_count[6] ), .I2(\patgen/v_count[7] ), 
            .O(n545)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__940.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__941 (.I0(n543), .I1(n545), .I2(\patgen/v_count[8] ), 
            .O(n546)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__941.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__942 (.I0(n546), .I1(\patgen/v_count[9] ), .I2(\patgen/equal_5/n33 ), 
            .O(\patgen/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__942.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__943 (.I0(n546), .I1(\patgen/v_count[9] ), .I2(\patgen/v_count[10] ), 
            .O(\patgen/n722 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__943.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__944 (.I0(n546), .I1(\patgen/v_count[9] ), .I2(\patgen/v_count[10] ), 
            .I3(\patgen/v_count[11] ), .O(\patgen/n727 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__944.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__945 (.I0(\patgen/v_count[8] ), .I1(\patgen/v_count[9] ), 
            .I2(\patgen/v_count[10] ), .I3(\patgen/v_count[11] ), .O(n547)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__945.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__946 (.I0(n544), .I1(n547), .I2(\patgen/v_count[6] ), 
            .I3(\patgen/v_count[7] ), .O(n548)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__946.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__947 (.I0(n548), .I1(\patgen/v_count[12] ), .O(\patgen/n732 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__947.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__948 (.I0(n548), .I1(\patgen/v_count[12] ), .I2(\patgen/v_count[13] ), 
            .O(\patgen/n737 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__948.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__949 (.I0(n542), .I1(\patgen/v_count[3] ), .I2(\patgen/v_count[12] ), 
            .I3(\patgen/v_count[13] ), .O(n549)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__949.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__950 (.I0(n545), .I1(n549), .I2(n547), .O(n550)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__950.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__951 (.I0(n550), .I1(\patgen/v_count[14] ), .O(\patgen/n742 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__951.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__952 (.I0(n550), .I1(\patgen/v_count[14] ), .I2(\patgen/v_count[15] ), 
            .O(\patgen/n747 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__952.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__953 (.I0(n550), .I1(\patgen/v_count[14] ), .I2(\patgen/v_count[15] ), 
            .I3(\patgen/v_count[16] ), .O(\patgen/n752 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__953.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__954 (.I0(\patgen/h_count[1] ), .I1(\patgen/h_count[2] ), 
            .O(\patgen/n1159 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__954.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__955 (.I0(\patgen/h_count[1] ), .I1(\patgen/h_count[2] ), 
            .I2(\patgen/h_count[3] ), .O(\patgen/n1164 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__955.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__956 (.I0(n525), .I1(\patgen/h_count[4] ), .O(\patgen/n1169 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__956.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__957 (.I0(\patgen/h_count[4] ), .I1(n525), .I2(\patgen/h_count[5] ), 
            .O(\patgen/n1174 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__957.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__958 (.I0(n526), .I1(\patgen/h_count[6] ), .O(\patgen/n1179 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__958.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__959 (.I0(\patgen/h_count[6] ), .I1(n526), .I2(\patgen/h_count[7] ), 
            .O(\patgen/n1184 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__959.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__960 (.I0(n527), .I1(\patgen/h_count[8] ), .O(\patgen/n1189 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__960.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__961 (.I0(n527), .I1(\patgen/h_count[8] ), .I2(\patgen/h_count[9] ), 
            .O(\patgen/n1194 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__961.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__962 (.I0(\patgen/v_count[0]_2 ), .I1(\patgen/v_count[1] ), 
            .I2(\patgen/v_count[2] ), .O(\patgen/n1254 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__962.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__963 (.I0(n538), .I1(\patgen/v_count[3] ), .O(\patgen/n1259 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__963.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__964 (.I0(n538), .I1(\patgen/v_count[3] ), .I2(\patgen/v_count[4] ), 
            .O(\patgen/n1264 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__964.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__965 (.I0(n539), .I1(\patgen/v_count[5] ), .O(\patgen/n1269 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__965.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__966 (.I0(n539), .I1(\patgen/v_count[5] ), .I2(\patgen/v_count[6] ), 
            .O(\patgen/n1274 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__966.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__967 (.I0(n540), .I1(\patgen/v_count[7] ), .O(\patgen/n1279 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__967.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__968 (.I0(n540), .I1(\patgen/v_count[7] ), .I2(\patgen/v_count[8] ), 
            .O(\patgen/n1284 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__968.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__969 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[1] ), 
            .O(\patgen/n762 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__969.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__970 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[1] ), 
            .I2(\patgen/h_count[2] ), .O(\patgen/n767 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__970.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__971 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[1] ), 
            .I2(\patgen/h_count[2] ), .I3(\patgen/h_count[3] ), .O(\patgen/n772 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__971.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__972 (.I0(\patgen/h_count[0]_2 ), .I1(\patgen/h_count[1] ), 
            .I2(\patgen/h_count[2] ), .I3(\patgen/h_count[3] ), .O(n551)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__972.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__973 (.I0(n551), .I1(\patgen/h_count[4] ), .O(\patgen/n777 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__973.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__974 (.I0(n551), .I1(\patgen/h_count[4] ), .I2(\patgen/h_count[5] ), 
            .O(\patgen/n782 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__974.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__975 (.I0(n504), .I1(n551), .I2(\patgen/h_count[6] ), 
            .O(\patgen/n787 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__975.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__976 (.I0(n504), .I1(n551), .I2(\patgen/h_count[6] ), 
            .I3(\patgen/h_count[7] ), .O(\patgen/n792 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__976.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__977 (.I0(n504), .I1(n551), .I2(\patgen/h_count[6] ), 
            .I3(\patgen/h_count[7] ), .O(n552)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__977.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__978 (.I0(n552), .I1(\patgen/h_count[8] ), .O(\patgen/n797 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__978.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__979 (.I0(n552), .I1(\patgen/h_count[8] ), .I2(\patgen/h_count[9] ), 
            .O(\patgen/n802 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__979.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__980 (.I0(n552), .I1(n503), .I2(\patgen/h_count[10] ), 
            .O(\patgen/n807 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__980.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__981 (.I0(n552), .I1(n503), .I2(\patgen/h_count[10] ), 
            .I3(\patgen/h_count[11] ), .O(\patgen/n812 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__981.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__982 (.I0(n503), .I1(\patgen/h_count[10] ), .I2(\patgen/h_count[11] ), 
            .O(n553)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__982.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__983 (.I0(n552), .I1(n553), .O(n554)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__983.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__984 (.I0(n554), .I1(\patgen/h_count[12] ), .O(\patgen/n817 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__984.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__985 (.I0(n554), .I1(\patgen/h_count[12] ), .I2(\patgen/h_count[13] ), 
            .O(\patgen/n822 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__985.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__986 (.I0(n552), .I1(n553), .I2(\patgen/h_count[12] ), 
            .I3(\patgen/h_count[13] ), .O(n555)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__986.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__987 (.I0(n555), .I1(\patgen/h_count[14] ), .O(\patgen/n827 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__987.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__988 (.I0(n555), .I1(\patgen/h_count[14] ), .I2(\patgen/h_count[15] ), 
            .O(\patgen/n832 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__988.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__989 (.I0(n555), .I1(\patgen/h_count[14] ), .I2(\patgen/h_count[15] ), 
            .I3(\patgen/h_count[16] ), .O(\patgen/n837 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__989.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__854 (.I0(\x[5] ), .I1(\x[6] ), .I2(\x[7] ), .I3(\x[8] ), 
            .O(n492)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__854.LUTMASK = 16'h0001;
    EFX_GBUFCE CLKBUF__1 (.CE(1'b1), .I(tx_pixel_clk), .O(\tx_pixel_clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__1.CE_POLARITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(tx_vga_clk), .O(\tx_vga_clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_0bd37089_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_0bd37089_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_125
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_126
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_127
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_128
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_129
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_0bd37089_130
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_0bd37089_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_0bd37089_1
// module not written out since it is a black box. 
//

