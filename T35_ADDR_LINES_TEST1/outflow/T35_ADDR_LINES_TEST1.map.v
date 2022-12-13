
//
// Verific Verilog Description of module T35_ADDR_LINES_TEST1_top
//

module T35_ADDR_LINES_TEST1_top (n_reset, pll0_LOCKED, pll0_2MHz, n_boardReset, 
            S100adr0_15, S100adr16_19, SBCLEDS, pDBIN, pSYNC, pSTVAL, 
            n_pWR, sMWRT, seg7, seg7_dp, boardActive, F_add_oe, 
            F_bus_stat_oe, F_bus_ctl_oe);
    input n_reset /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input pll0_LOCKED /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input pll0_2MHz /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input n_boardReset /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output [15:0]S100adr0_15 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [3:0]S100adr16_19 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [7:0]SBCLEDS /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output pDBIN /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output pSYNC /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output pSTVAL /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output n_pWR /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output sMWRT /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [6:0]seg7 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output seg7_dp /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output boardActive /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output F_add_oe /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output F_bus_stat_oe /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output F_bus_ctl_oe /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    wire n56_2;
    
    wire n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
        n17, \counter[0] , n19, n20, n21, n22, n23, n24, n25, 
        n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, 
        n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, 
        n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, 
        n56, n57, n58, \counter[1] , \counter[2] , \counter[3] , 
        \counter[4] , \counter[5] , \counter[6] , \counter[7] , \counter[8] , 
        \counter[9] , \counter[10] , \pll0_2MHz~O ;
    
    assign boardActive = pll0_LOCKED /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    assign pSYNC = pll0_2MHz /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    assign S100adr16_19[3] = S100adr0_15[10] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign S100adr16_19[2] = S100adr0_15[9] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign S100adr16_19[1] = S100adr0_15[8] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign S100adr16_19[0] = S100adr0_15[7] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign pSTVAL = pDBIN /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[6] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[5] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[4] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[3] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[2] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[0] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7_dp = S100adr0_15[9] /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign F_add_oe = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign F_bus_stat_oe = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign F_bus_ctl_oe = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign n_pWR = 1'b1 /* verific EFX_ATTRIBUTE_CELL_NAME=VCC */ ;
    assign sMWRT = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_LUT4 LUT__292 (.I0(n_reset), .I1(n_boardReset), .O(n56_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__292.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__307 (.I0(S100adr0_15[15]), .O(SBCLEDS[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__307.LUTMASK = 16'h5555;
    EFX_FF \counter[0]~FF  (.D(\counter[0] ), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(\counter[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \counter[0]~FF .SR_POLARITY = 1'b1;
    defparam \counter[0]~FF .D_POLARITY = 1'b0;
    defparam \counter[0]~FF .SR_SYNC = 1'b1;
    defparam \counter[0]~FF .SR_VALUE = 1'b0;
    defparam \counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[1]~FF  (.D(n57), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(n56_2), 
           .Q(\counter[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \counter[1]~FF .SR_POLARITY = 1'b1;
    defparam \counter[1]~FF .D_POLARITY = 1'b1;
    defparam \counter[1]~FF .SR_SYNC = 1'b1;
    defparam \counter[1]~FF .SR_VALUE = 1'b0;
    defparam \counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[2]~FF  (.D(n55), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(n56_2), 
           .Q(\counter[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \counter[2]~FF .SR_POLARITY = 1'b1;
    defparam \counter[2]~FF .D_POLARITY = 1'b1;
    defparam \counter[2]~FF .SR_SYNC = 1'b1;
    defparam \counter[2]~FF .SR_VALUE = 1'b0;
    defparam \counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[3]~FF  (.D(n53), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(n56_2), 
           .Q(\counter[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \counter[3]~FF .SR_POLARITY = 1'b1;
    defparam \counter[3]~FF .D_POLARITY = 1'b1;
    defparam \counter[3]~FF .SR_SYNC = 1'b1;
    defparam \counter[3]~FF .SR_VALUE = 1'b0;
    defparam \counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[4]~FF  (.D(n51), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(n56_2), 
           .Q(\counter[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \counter[4]~FF .SR_POLARITY = 1'b1;
    defparam \counter[4]~FF .D_POLARITY = 1'b1;
    defparam \counter[4]~FF .SR_SYNC = 1'b1;
    defparam \counter[4]~FF .SR_VALUE = 1'b0;
    defparam \counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[5]~FF  (.D(n49), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(n56_2), 
           .Q(\counter[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \counter[5]~FF .SR_POLARITY = 1'b1;
    defparam \counter[5]~FF .D_POLARITY = 1'b1;
    defparam \counter[5]~FF .SR_SYNC = 1'b1;
    defparam \counter[5]~FF .SR_VALUE = 1'b0;
    defparam \counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[6]~FF  (.D(n47), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(n56_2), 
           .Q(\counter[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \counter[6]~FF .SR_POLARITY = 1'b1;
    defparam \counter[6]~FF .D_POLARITY = 1'b1;
    defparam \counter[6]~FF .SR_SYNC = 1'b1;
    defparam \counter[6]~FF .SR_VALUE = 1'b0;
    defparam \counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[7]~FF  (.D(n45), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(n56_2), 
           .Q(\counter[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \counter[7]~FF .SR_POLARITY = 1'b1;
    defparam \counter[7]~FF .D_POLARITY = 1'b1;
    defparam \counter[7]~FF .SR_SYNC = 1'b1;
    defparam \counter[7]~FF .SR_VALUE = 1'b0;
    defparam \counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[8]~FF  (.D(n43), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(n56_2), 
           .Q(\counter[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \counter[8]~FF .SR_POLARITY = 1'b1;
    defparam \counter[8]~FF .D_POLARITY = 1'b1;
    defparam \counter[8]~FF .SR_SYNC = 1'b1;
    defparam \counter[8]~FF .SR_VALUE = 1'b0;
    defparam \counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[9]~FF  (.D(n41), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(n56_2), 
           .Q(\counter[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \counter[9]~FF .SR_POLARITY = 1'b1;
    defparam \counter[9]~FF .D_POLARITY = 1'b1;
    defparam \counter[9]~FF .SR_SYNC = 1'b1;
    defparam \counter[9]~FF .SR_VALUE = 1'b0;
    defparam \counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[10]~FF  (.D(n39), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(\counter[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \counter[10]~FF .SR_POLARITY = 1'b1;
    defparam \counter[10]~FF .D_POLARITY = 1'b1;
    defparam \counter[10]~FF .SR_SYNC = 1'b1;
    defparam \counter[10]~FF .SR_VALUE = 1'b0;
    defparam \counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[0]~FF  (.D(n37), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[0]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[0]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[0]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[0]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[0]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[0]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[1]~FF  (.D(n35), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[1]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[1]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[1]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[1]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[1]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[1]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[2]~FF  (.D(n33), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[2]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[2]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[2]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[2]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[2]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[2]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[3]~FF  (.D(n31), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[3]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[3]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[3]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[3]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[3]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[3]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[4]~FF  (.D(n29), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[4]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[4]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[4]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[4]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[4]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[4]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[5]~FF  (.D(n27), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[5]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[5]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[5]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[5]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[5]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[5]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[6]~FF  (.D(n25), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[6]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[6]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[6]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[6]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[6]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[6]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr16_19[0]~FF  (.D(n23), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr16_19[0]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr16_19[0]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr16_19[0]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr16_19[0]~FF .D_POLARITY = 1'b1;
    defparam \S100adr16_19[0]~FF .SR_SYNC = 1'b1;
    defparam \S100adr16_19[0]~FF .SR_VALUE = 1'b0;
    defparam \S100adr16_19[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr16_19[1]~FF  (.D(n21), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr16_19[1]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr16_19[1]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr16_19[1]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr16_19[1]~FF .D_POLARITY = 1'b1;
    defparam \S100adr16_19[1]~FF .SR_SYNC = 1'b1;
    defparam \S100adr16_19[1]~FF .SR_VALUE = 1'b0;
    defparam \S100adr16_19[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \seg7_dp~FF  (.D(n19), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(n56_2), 
           .Q(S100adr0_15[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \seg7_dp~FF .CLK_POLARITY = 1'b1;
    defparam \seg7_dp~FF .CE_POLARITY = 1'b1;
    defparam \seg7_dp~FF .SR_POLARITY = 1'b1;
    defparam \seg7_dp~FF .D_POLARITY = 1'b1;
    defparam \seg7_dp~FF .SR_SYNC = 1'b1;
    defparam \seg7_dp~FF .SR_VALUE = 1'b0;
    defparam \seg7_dp~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr16_19[3]~FF  (.D(n7), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr16_19[3]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr16_19[3]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr16_19[3]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr16_19[3]~FF .D_POLARITY = 1'b1;
    defparam \S100adr16_19[3]~FF .SR_SYNC = 1'b1;
    defparam \S100adr16_19[3]~FF .SR_VALUE = 1'b0;
    defparam \S100adr16_19[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[11]~FF  (.D(n9), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[11]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[11]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[11]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[11]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[11]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[11]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[12]~FF  (.D(n16), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[12]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[12]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[12]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[12]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[12]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[12]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[13]~FF  (.D(n11), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[13]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[13]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[13]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[13]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[13]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[13]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[14]~FF  (.D(n13), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[14]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[14]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[14]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[14]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[14]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[14]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[15]~FF  (.D(n15), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(n56_2), .Q(S100adr0_15[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(87)
    defparam \S100adr0_15[15]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[15]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr0_15[15]~FF .SR_POLARITY = 1'b1;
    defparam \S100adr0_15[15]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[15]~FF .SR_SYNC = 1'b1;
    defparam \S100adr0_15[15]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \add_21/i22  (.I0(S100adr0_15[10]), .I1(1'b0), .CI(n20), .O(n7), 
            .CO(n8)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i22 .I0_POLARITY = 1'b1;
    defparam \add_21/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i23  (.I0(S100adr0_15[11]), .I1(1'b0), .CI(n8), .O(n9), 
            .CO(n10)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i23 .I0_POLARITY = 1'b1;
    defparam \add_21/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i25  (.I0(S100adr0_15[13]), .I1(1'b0), .CI(n17), .O(n11), 
            .CO(n12)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i25 .I0_POLARITY = 1'b1;
    defparam \add_21/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i26  (.I0(S100adr0_15[14]), .I1(1'b0), .CI(n12), .O(n13), 
            .CO(n14)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i26 .I0_POLARITY = 1'b1;
    defparam \add_21/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i27  (.I0(S100adr0_15[15]), .I1(1'b0), .CI(n14), .O(n15)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i27 .I0_POLARITY = 1'b1;
    defparam \add_21/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i24  (.I0(S100adr0_15[12]), .I1(1'b0), .CI(n10), .O(n16), 
            .CO(n17)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i24 .I0_POLARITY = 1'b1;
    defparam \add_21/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i21  (.I0(S100adr0_15[9]), .I1(1'b0), .CI(n22), .O(n19), 
            .CO(n20)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i21 .I0_POLARITY = 1'b1;
    defparam \add_21/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i20  (.I0(S100adr0_15[8]), .I1(1'b0), .CI(n24), .O(n21), 
            .CO(n22)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i20 .I0_POLARITY = 1'b1;
    defparam \add_21/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i19  (.I0(S100adr0_15[7]), .I1(1'b0), .CI(n26), .O(n23), 
            .CO(n24)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i19 .I0_POLARITY = 1'b1;
    defparam \add_21/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i18  (.I0(S100adr0_15[6]), .I1(1'b0), .CI(n28), .O(n25), 
            .CO(n26)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i18 .I0_POLARITY = 1'b1;
    defparam \add_21/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i17  (.I0(S100adr0_15[5]), .I1(1'b0), .CI(n30), .O(n27), 
            .CO(n28)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i17 .I0_POLARITY = 1'b1;
    defparam \add_21/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i16  (.I0(S100adr0_15[4]), .I1(1'b0), .CI(n32), .O(n29), 
            .CO(n30)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i16 .I0_POLARITY = 1'b1;
    defparam \add_21/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i15  (.I0(S100adr0_15[3]), .I1(1'b0), .CI(n34), .O(n31), 
            .CO(n32)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i15 .I0_POLARITY = 1'b1;
    defparam \add_21/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i14  (.I0(S100adr0_15[2]), .I1(1'b0), .CI(n36), .O(n33), 
            .CO(n34)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i14 .I0_POLARITY = 1'b1;
    defparam \add_21/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i13  (.I0(S100adr0_15[1]), .I1(1'b0), .CI(n38), .O(n35), 
            .CO(n36)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i13 .I0_POLARITY = 1'b1;
    defparam \add_21/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i12  (.I0(S100adr0_15[0]), .I1(1'b0), .CI(n40), .O(n37), 
            .CO(n38)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i12 .I0_POLARITY = 1'b1;
    defparam \add_21/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i11  (.I0(\counter[10] ), .I1(1'b0), .CI(n42), .O(n39), 
            .CO(n40)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i11 .I0_POLARITY = 1'b1;
    defparam \add_21/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i10  (.I0(\counter[9] ), .I1(1'b0), .CI(n44), .O(n41), 
            .CO(n42)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i10 .I0_POLARITY = 1'b1;
    defparam \add_21/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i9  (.I0(\counter[8] ), .I1(1'b0), .CI(n46), .O(n43), 
            .CO(n44)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i9 .I0_POLARITY = 1'b1;
    defparam \add_21/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i8  (.I0(\counter[7] ), .I1(1'b0), .CI(n48), .O(n45), 
            .CO(n46)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i8 .I0_POLARITY = 1'b1;
    defparam \add_21/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i7  (.I0(\counter[6] ), .I1(1'b0), .CI(n50), .O(n47), 
            .CO(n48)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i7 .I0_POLARITY = 1'b1;
    defparam \add_21/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i6  (.I0(\counter[5] ), .I1(1'b0), .CI(n52), .O(n49), 
            .CO(n50)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i6 .I0_POLARITY = 1'b1;
    defparam \add_21/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i5  (.I0(\counter[4] ), .I1(1'b0), .CI(n54), .O(n51), 
            .CO(n52)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i5 .I0_POLARITY = 1'b1;
    defparam \add_21/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i4  (.I0(\counter[3] ), .I1(1'b0), .CI(n56), .O(n53), 
            .CO(n54)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i4 .I0_POLARITY = 1'b1;
    defparam \add_21/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i3  (.I0(\counter[2] ), .I1(1'b0), .CI(n58), .O(n55), 
            .CO(n56)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i3 .I0_POLARITY = 1'b1;
    defparam \add_21/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_21/i2  (.I0(\counter[1] ), .I1(\counter[0] ), .CI(1'b0), 
            .O(n57), .CO(n58)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1_top.v(85)
    defparam \add_21/i2 .I0_POLARITY = 1'b1;
    defparam \add_21/i2 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__308 (.I0(S100adr0_15[14]), .O(SBCLEDS[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__308.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__309 (.I0(S100adr0_15[13]), .O(SBCLEDS[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__309.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__310 (.I0(S100adr0_15[12]), .O(SBCLEDS[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__310.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__311 (.I0(S100adr0_15[11]), .O(SBCLEDS[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__311.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__312 (.I0(S100adr0_15[10]), .O(SBCLEDS[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__312.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__313 (.I0(S100adr0_15[9]), .O(SBCLEDS[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__313.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__314 (.I0(S100adr0_15[8]), .O(SBCLEDS[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__314.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__315 (.I0(pSYNC), .O(pDBIN)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__315.LUTMASK = 16'h5555;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(pSYNC), .O(\pll0_2MHz~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_dd6d407c_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd6d407c_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_dd6d407c_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_dd6d407c_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_dd6d407c_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_dd6d407c_0
// module not written out since it is a black box. 
//

