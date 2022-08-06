/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// mipi_loopback_top.v
//
// *******************************
// Revisions:
// 1.0 Initial rev
// *******************************
/////////////////////////////////////////////////////////////////////////////


module mipi_loopback_top (
/* Signals of the video pattern generator */

	input         tx_vga_clk,
	input         sw4,  // change video pattern
	input         sw5,  // bypass MIPI channels
	//input         rst_n,
    input rx, uart_clk,
/* Signals of VGA display output interface */
	    
	input         rx_vga_clk,
    /*
	output        vga_hs,
	output        vga_vs,
	output [4:0]  vga_r,
	output [5:0]  vga_g,
	output [4:0]  vga_b,
    */
/* Flashing LEDs to indicate successful comparison of MIPI data */

        output        led5,
        output        led6,
	
/* Clocks of MIPI TX and RX parallel interfaces */
	    
	input         tx_pixel_clk,
	input         rx_pixel_clk,

/* Signals used by the MIPI TX Interface Designer instance */
	    
	output        my_mipi_tx_DPHY_RSTN,
	output        my_mipi_tx_RSTN,
	output        my_mipi_tx_VALID,
	output        my_mipi_tx_HSYNC,
	output        my_mipi_tx_VSYNC,
	output [63:0] my_mipi_tx_DATA,
	output [5:0]  my_mipi_tx_TYPE,
	output [1:0]  my_mipi_tx_LANES,
	output        my_mipi_tx_FRAME_MODE,
	output [15:0] my_mipi_tx_HRES,
	output [1:0]  my_mipi_tx_VC,
	output [3:0]  my_mipi_tx_ULPS_ENTER,
	output [3:0]  my_mipi_tx_ULPS_EXIT,
	output        my_mipi_tx_ULPS_CLK_ENTER,
	output        my_mipi_tx_ULPS_CLK_EXIT,

/* Signals used by the MIPI RX Interface Designer instance */
	    
	output        my_mipi_rx_DPHY_RSTN,
	output        my_mipi_rx_RSTN,
	output        my_mipi_rx_CLEAR,
	output [1:0]  my_mipi_rx_LANES,
	output [3:0]  my_mipi_rx_VC_ENA,
	input         my_mipi_rx_VALID,
	input [3:0]   my_mipi_rx_HSYNC,
	input [3:0]   my_mipi_rx_VSYNC,
	input [63:0]  my_mipi_rx_DATA,
	input [5:0]   my_mipi_rx_TYPE,
	input [1:0]   my_mipi_rx_VC,
	input [3:0]   my_mipi_rx_CNT,
	input [17:0]  my_mipi_rx_ERROR,
	input         my_mipi_rx_ULPS_CLK,
	input [3:0]   my_mipi_rx_ULPS,

// for HW Debug
	input         bscan_DRCK,
	input         bscan_RESET,
	input         bscan_TMS,
	input         bscan_RUNTEST,
	input         bscan_SEL,
	input         bscan_SHIFT,
	input         bscan_TDI,
	input         bscan_CAPTURE,
	input         bscan_TCK,
	input         bscan_UPDATE,
	output        bscan_TDO
    );

  wire rst_n = 1'b1;
//-----------------------------------------------------------//
// 800*600 VGA
//-----------------------------------------------------------//
parameter syncPulse_h= 80;            
parameter backPorch_h= 50;             
parameter activeVideo_h= 640;            
parameter frontPorch_h= 50; 
           
parameter syncPulse_v= 80;              
parameter backPorch_v = 5;             
parameter activeVideo_v = 480;            
parameter frontPorch_v = 5;

parameter FIFO_ADDR_WIDTH = 12;
parameter FIFO_DEPTH = (1 << FIFO_ADDR_WIDTH);

localparam HALF_FIFO_DEPTH = FIFO_DEPTH >> 1;
localparam total_pixel = activeVideo_h * activeVideo_v;
   
 

//**************************
// Pattern generation module
//**************************
   
wire[3:0] video_pattern;
wire[4:0]  vga_r_patgen;
wire[5:0]  vga_g_patgen;
wire[4:0]  vga_b_patgen; 

wire hsync_patgen;
wire vsync_patgen; 
wire valid_h_patgen;
wire valid_v_patgen;

wire [9:0] x,y;
video_gen #(.syncPulse_h (syncPulse_h),
            .backPorch_h (backPorch_h),
            .activeVideo_h (activeVideo_h),
            .frontPorch_h (frontPorch_h),
            .syncPulse_v (syncPulse_v),
            .backPorch_v (backPorch_v),
            .activeVideo_v (activeVideo_v),
            .frontPorch_v (frontPorch_v)
            ) patgen (
                    .rst (~rst_n),
                    .clk (tx_vga_clk),
                    .video_pattern (video_pattern),
                    .video_valid_h_o (valid_h_patgen),
                    .video_valid_h_o_2 (),
                    .video_hsync_o (hsync_patgen),
                    .video_hsync_o_2 (),
                    .video_vsync_o (vsync_patgen),
                    .video_valid_v_o (valid_v_patgen),
                    .red_o (vga_r_patgen),
                    .green_o (vga_g_patgen),
                    .blue_o (vga_b_patgen),
                    .x(x),
                    .y(y)
                    );

wire [4:0] vga_r_i;
wire [5:0] vga_g_i;
wire [4:0] vga_b_i;

assign vga_r_i = (valid_h_patgen && valid_v_patgen) ? vga_r_patgen : 5'b00000;
assign vga_g_i = (valid_h_patgen && valid_v_patgen) ? vga_g_patgen : 6'b000000;
assign vga_b_i = (valid_h_patgen && valid_v_patgen) ? vga_b_patgen : 5'b00000;

//***********************************************
// Switch 4 debouncer
//   Press sw4 to toggle between 4 video patterns
//***********************************************

sw_counter #(.MAX_CNT(4)) sw4_inst (
                                    .clk (tx_vga_clk),
                                    .rst_n (rst_n),
                                    .sw (sw4),
                                    .mode (video_pattern)
                                    );
	

//********************************************
// Pixel-to-MIPI-Tx Data Packer
//********************************************

// RGB565
   parameter DWIDTH = 24;
   parameter PIXELPERCLK   = 2;
   parameter PIXELPERCLKRX = 4;
   
// since RGB565 is 4 pixels per tx_pixel_clk, need to send through shift register

reg [DWIDTH-1:0] data1;
reg [DWIDTH-1:0] data2;
reg [DWIDTH-1:0] data3;

always @(posedge tx_vga_clk)
	begin
	if(~rst_n) begin
		data3<=0;
		data2<=0;
		data1<=0;
	end
	else
	begin
		data3<=data2;
		data2<=data1;
		data1<={vga_r_i,vga_g_i,vga_b_i};
	end
	end

/* pxlword_cnt counts from 0 to 3. A 64-bit tx_pixel_data is formed every time pxlword_cnt=3 */   
   reg [2:0] pxlword_cnt;
   reg 	     pxlword_state;
    
reg [63:0] tx_pixel_data;       // 64-bit Tx pixel data in 1/6x tx_vga_clk domain
reg [63:0] tx_pixel_data_PC;    // 64-bit Tx pixel data in tx_pixel_clk domain
reg 	   vsync_patgen_divided;  // vsync_patgen in 1/6x divided tx_vga_clk domain
reg 	   vsync_patgen_PC;       // vsync_patgen in tx_pixel_clk domain
reg 	   hsync_patgen_divided;  // hsync_patgen in 1/6x divided tx_vga_clk domain
reg 	   hsync_patgen_PC;       // hsync_patgen in tx_pixel_clk domain
reg 	   valid_h_patgen_divided; // valid_h_patgen in 1/6x divided tx_vga_clk domain
reg 	   valid_h_patgen_PC;      // valid_h_patgen in tx_pixel_clk domain
   
   
always @(posedge tx_vga_clk) begin
   if (~rst_n) begin
      pxlword_cnt <= 0;
      pxlword_state <= 0; // not counting
   end
   else if (~pxlword_state && ~valid_h_patgen) begin
      pxlword_cnt <= 0;
      pxlword_state <= 0; // not counting
   end      
   else if (~pxlword_state && valid_h_patgen) begin
      pxlword_state <= 1; // counting
      pxlword_cnt <= 1;
   end
   else begin
      if (pxlword_cnt == PIXELPERCLK-1)
	pxlword_cnt <= 0;
      else
	pxlword_cnt <= pxlword_cnt + 1;
      if (~valid_h_patgen && pxlword_cnt == PIXELPERCLK-1)
	pxlword_state <= 0; // not counting
   end
end

/* Sync TX signals from 1x tx_vga_clk to 1/4x tx_vga_clk */
   
always @(posedge tx_vga_clk) begin
   if (~rst_n) begin
      tx_pixel_data <= 0;
      vsync_patgen_divided <= 0;
      hsync_patgen_divided <= 0;
      valid_h_patgen_divided <= 0;
   end
   else if (pxlword_cnt == PIXELPERCLK-1) begin
      tx_pixel_data <= {vga_r_i,vga_g_i,vga_b_i,data1,data2,data3};
      vsync_patgen_divided <= vsync_patgen;
      hsync_patgen_divided <= hsync_patgen;
      valid_h_patgen_divided <= valid_h_patgen && valid_v_patgen;
   end
end
   
/* Sync Tx signals from 1/4x tx_vga_clk to tx_pixel_clk */

   always @(posedge tx_pixel_clk) begin
      if (~rst_n) begin
	 tx_pixel_data_PC <= 64'b0;
	 vsync_patgen_PC <= 0;
	 hsync_patgen_PC <= 0;
	 valid_h_patgen_PC <= 0;
      end
      else begin
	 tx_pixel_data_PC <= tx_pixel_data;
	 vsync_patgen_PC <= vsync_patgen;
	 hsync_patgen_PC <= hsync_patgen && vsync_patgen; 
	 valid_h_patgen_PC <= valid_h_patgen_divided;
      end
   end
   
         
//***************
// MIPI TX HOOKUP
//***************



wire valid_data ;
wire [64:0]pixel_data;
reg [25:0]i;
reg char;
wire [23:0] pixel_0, pixel_1;
always @(posedge tx_vga_clk)begin
    if(valid_h_patgen_PC)i <= i + 1;
end

/*
true_dual_port_ram
#(
	.DATA_WIDTH(48),
	.ADDR_WIDTH(9),
	.WRITE_MODE_1("WRITE_FIRST"),
	.WRITE_MODE_2("WRITE_FIRST"),
	.OUTPUT_REG_1("TRUE"),
	.OUTPUT_REG_2("TRUE"),
	.RAM_INIT_FILE("buffer.mem")		// Initial code file   ("piv2_720p_reg.mem")
)
inst_piv2_reg
(
	.we1(1'b0),
	.we2(1'b0),
	.clka(tx_vga_clk),
	.clkb(tx_vga_clk),
	.din1({8{1'b0}}),
	.din2({8{1'b0}}),
	.addr1({y,x}),
	//.addr2(i_dbg_addr),
	.dout1(pixel_data)
//	.dout2(o_dbg_dout)
);
*/

/*
assign pixel_0 = {0,0,buffer[0i+1]};
assign pixel_1 = {0,0,buffer[i]};

assign valid_data = hsync_patgen_PC ? 1'b1 : 1'b0;
*/

wire [7:0] rx_data;
wire rx_busy;
uart uart_txrx(
	.clk(uart_clk),
	.reset_n(1'b1),
	.rx_busy(rx_busy),
	.rx_data(rx_data),
	.rx(uart_rx)
);
reg [47:0] pixel_word;
always@(negedge rx_busy)begin
	pixel_word = (pixel_word << 8) | rx_data;
end

assign pixel_data = ( y > 100 && y < (480-100) && x > 100  && x < (640-100))?64'h204f4c4c4548: 64'hFF00FFFF00FF;
                    //(i[25:24]==2'b10)?64'h00ff0000ff00:
                    //(i[25:24]==2'b11)?64'h0000ff0000ff:
                                          //  64'hFFFFFFFFFFFF;
//assign pixel_data = {x,y};                                            
assign my_mipi_tx_DPHY_RSTN = 1'b1;
assign my_mipi_tx_RSTN = 1'b1;
//assign my_mipi_tx_VALID = valid_h_patgen_PC;
assign my_mipi_tx_VALID = valid_h_patgen;
assign my_mipi_tx_HSYNC = hsync_patgen;//hsync_patgen_PC;
assign my_mipi_tx_VSYNC = vsync_patgen;//vsync_patgen_PC;
assign my_mipi_tx_DATA =  pixel_data;//64'h204f4c4c4548;// tx_pixel_data_PC;//pixel_data; 64'hff0000ff0000; //: 64'd0;//tx_pixel_data_PC;//64'hFF111111000000;
assign my_mipi_tx_TYPE = 6'h24;			// RGB565
assign my_mipi_tx_LANES = 2'b01;                // 2 lanes
assign my_mipi_tx_FRAME_MODE = 1'b0;            // Generic Frame Mode
assign my_mipi_tx_HRES = activeVideo_h;         // Number of pixels per line
assign my_mipi_tx_VC = 2'b00;                   // Virtual Channel select
assign my_mipi_tx_ULPS_ENTER = 4'b0000;
assign my_mipi_tx_ULPS_EXIT = 4'b0000;
assign my_mipi_tx_ULPS_CLK_ENTER = 1'b0;
assign my_mipi_tx_ULPS_CLK_EXIT = 1'b0;

//***************************************************************
// Switch 5 debouncer
//   Press sw5 to toggle between sourcing the VGA output display
//   from MIPI Rx & directly from pattern generator (MIPI_bypass)
//***************************************************************
   wire [3:0] mipi_bypass;

   sw_counter #(.MAX_CNT(2)) sw5_inst (
                                       .clk (rx_vga_clk),
                                       .rst_n (rst_n),
                                       .sw (sw5),
                                       .mode (mipi_bypass)
                                       );

   assign led5 = hsync_patgen_PC;//(flash_cnt==25'b0) ? 1 : flash_cnt[24];
   assign led6 = valid_data;//vsync_patgen_PC;//(flash_cnt==25'b0) ? 1 : ~flash_cnt[24];



endmodule

//////////////////////////////////////////////////////////////////////////////
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
  //
// This   document  contains  proprietary information  which   is
// protected by  copyright. All rights  are reserved.  This notice
// refers to original work by Efinix, Inc. which may be derivitive
// of other work distributed under license of the authors.  In the
// case of derivative work, nothing in this notice overrides the
// original author's license agreement.  Where applicable, the 
// original license agreement is included in it's original 
// unmodified form immediately below this header.
//
// WARRANTY DISCLAIMER.  
//     THE  DESIGN, CODE, OR INFORMATION ARE PROVIDED “AS IS” AND 
//     EFINIX MAKES NO WARRANTIES, EXPRESS OR IMPLIED WITH 
//     RESPECT THERETO, AND EXPRESSLY DISCLAIMS ANY IMPLIED WARRANTIES, 
//     INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF 
//     MERCHANTABILITY, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR 
//     PURPOSE.  SOME STATES DO NOT ALLOW EXCLUSIONS OF AN IMPLIED 
//     WARRANTY, SO THIS DISCLAIMER MAY NOT APPLY TO LICENSEE.
//
// LIMITATION OF LIABILITY.  
//     NOTWITHSTANDING ANYTHING TO THE CONTRARY, EXCEPT FOR BODILY 
//     INJURY, EFINIX SHALL NOT BE LIABLE WITH RESPECT TO ANY SUBJECT 
//     MATTER OF THIS AGREEMENT UNDER TORT, CONTRACT, STRICT LIABILITY 
//     OR ANY OTHER LEGAL OR EQUITABLE THEORY (I) FOR ANY INDIRECT, 
//     SPECIAL, INCIDENTAL, EXEMPLARY OR CONSEQUENTIAL DAMAGES OF ANY 
//     CHARACTER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF 
//     GOODWILL, DATA OR PROFIT, WORK STOPPAGE, OR COMPUTER FAILURE OR 
//     MALFUNCTION, OR IN ANY EVENT (II) FOR ANY AMOUNT IN EXCESS, IN 
//     THE AGGREGATE, OF THE FEE PAID BY LICENSEE TO EFINIX HEREUNDER 
//     (OR, IF THE FEE HAS BEEN WAIVED, $100), EVEN IF EFINIX SHALL HAVE 
//     BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGES.  SOME STATES DO 
//     NOT ALLOW THE EXCLUSION OR LIMITATION OF INCIDENTAL OR 
//     CONSEQUENTIAL DAMAGES, SO THIS LIMITATION AND EXCLUSION MAY NOT 
//     APPLY TO LICENSEE.
//
/////////////////////////////////////////////////////////////////////////////
