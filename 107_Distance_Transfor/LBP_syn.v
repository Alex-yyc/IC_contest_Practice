/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Jul 25 15:01:37 2023
/////////////////////////////////////////////////////////////


module LBP_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_2_DW01_inc_3 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_dec_2 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  XNOR2X1 U1 ( .A(n1), .B(A[13]), .Y(SUM[13]) );
  XNOR2X1 U2 ( .A(n2), .B(A[12]), .Y(SUM[12]) );
  OR2X2 U3 ( .A(n2), .B(A[12]), .Y(n1) );
  XNOR2X1 U4 ( .A(n3), .B(A[11]), .Y(SUM[11]) );
  OR2X2 U5 ( .A(n3), .B(A[11]), .Y(n2) );
  XNOR2X1 U6 ( .A(n4), .B(A[10]), .Y(SUM[10]) );
  OR2X2 U7 ( .A(n4), .B(A[10]), .Y(n3) );
  XNOR2X1 U8 ( .A(n5), .B(A[9]), .Y(SUM[9]) );
  OR2X2 U9 ( .A(n5), .B(A[9]), .Y(n4) );
  XNOR2X1 U10 ( .A(n6), .B(A[8]), .Y(SUM[8]) );
  OR2X2 U11 ( .A(n6), .B(A[8]), .Y(n5) );
  XNOR2X1 U12 ( .A(n7), .B(A[7]), .Y(SUM[7]) );
  OR2X2 U13 ( .A(n7), .B(A[7]), .Y(n6) );
  XNOR2X1 U14 ( .A(n8), .B(A[6]), .Y(SUM[6]) );
  OR2X2 U15 ( .A(n8), .B(A[6]), .Y(n7) );
  XNOR2X1 U16 ( .A(n9), .B(A[5]), .Y(SUM[5]) );
  OR2X2 U17 ( .A(n9), .B(A[5]), .Y(n8) );
  XNOR2X1 U18 ( .A(n10), .B(A[4]), .Y(SUM[4]) );
  OR2X2 U19 ( .A(n10), .B(A[4]), .Y(n9) );
  XNOR2X1 U20 ( .A(n11), .B(A[3]), .Y(SUM[3]) );
  OR2X2 U21 ( .A(n11), .B(A[3]), .Y(n10) );
  XNOR2X1 U22 ( .A(n12), .B(A[2]), .Y(SUM[2]) );
  OR2X2 U23 ( .A(n12), .B(A[2]), .Y(n11) );
  XNOR2X1 U24 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  OR2X2 U25 ( .A(A[1]), .B(A[0]), .Y(n12) );
  INVXL U30 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, 
        lbp_valid, lbp_data, finish );
  output [13:0] gray_addr;
  input [7:0] gray_data;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, N84, N85, N86, N87, N88, N89, N90,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123,
         N124, N125, N142, N143, N144, N145, N146, N147, N149, N150, N151,
         N152, N153, N154, N155, N156, N181, N182, N183, N184, N185, N186,
         N187, N188, N189, N190, N191, N192, N194, N195, N196, N197, N198,
         N199, N200, N201, N217, N218, N219, N220, N221, N222, N223, N224,
         N225, N226, N227, N228, N229, N230, N233, N234, N235, N236, N237,
         N238, N239, N256, N257, N258, N259, N260, N261, N262, N263, N264,
         N265, N266, N267, N268, N272, N273, N274, N275, N276, N277, N301,
         N302, N303, N304, N305, N306, N307, N308, N309, N310, N311, N312,
         N313, N318, N319, N320, N321, N322, N332, N333, N334, N335, N336,
         N337, N338, N339, N340, N341, N342, N343, N344, N350, N351, N352,
         N353, N378, N379, N380, N381, N382, N383, N384, N385, N386, N387,
         N388, N389, N396, N397, N398, N407, N408, N4610, N4690, N4700, N4710,
         N4720, N4730, N4740, N4750, n840, n860, n870, n880, n900, n91, n93,
         n94, n95, n96, n97, n98, n102, n104, n105, n107, n108, n109, n110,
         n111, n112, n1130, n1140, n1150, n1160, n1170, n1180, n1190, n1200,
         n1210, n1220, n1230, n1240, n1250, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n1420,
         n1430, n1440, n1450, n1460, n1470, n148, n1490, n1500, n1510, n1520,
         n1530, n1540, n1550, n1560, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n176, n177, n178, n179, n180, n1810, n1820, n1830, n1840, n1850,
         n1860, n1870, n1880, n1890, n1900, n1910, n1920, n193, n1940, n1950,
         n1960, n1970, n1980, n1990, n2000, n2010, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n2170, n2180, n2190, n2200, n2210, n2220, n2230, n2240, n2280, n2300,
         n2330, n2340, n2350, n2360, n2390, n240, n242, n243, n244, n246, n247,
         n249, n250, n251, n252, n253, n254, n255, n2560, n2570, n2580, n2590,
         n2600, n2610, n2620, n2630, n2640, n2650, n2660, n2670, n2680, n269,
         n270, n271, n2720, n2730, n2740, n2750, n2760, n2770, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n3010,
         n3020, n3030, n3040, n3050, n3060, n3070, n3080, n3090, n3100, n3110,
         n3120, n3130, n314, n315, n316, n317, n3180, n3190, n3200, n3210,
         n3220, n323, n324, n325, N539, N538, N537, N536, N535, N534, N533,
         N2990, N1110, r543_GE_LT_GT_LE, add_81_carry_7_,
         add_1_root_add_67_2_carry_2_, add_1_root_add_67_2_carry_3_,
         add_1_root_add_67_2_carry_4_, add_1_root_add_67_2_carry_5_,
         add_1_root_add_67_2_carry_6_, add_1_root_add_67_2_carry_7_,
         add_1_root_add_67_2_carry_8_, add_1_root_add_67_2_carry_9_,
         add_1_root_add_67_2_carry_10_, add_1_root_add_67_2_carry_11_,
         add_1_root_add_67_2_carry_12_, add_1_root_add_67_2_carry_13_,
         add_1_root_add_55_2_carry_3_, add_1_root_add_55_2_carry_4_,
         add_1_root_add_55_2_carry_5_, add_1_root_add_55_2_carry_6_,
         add_1_root_add_55_2_carry_7_, add_1_root_add_55_2_carry_8_,
         add_1_root_add_55_2_carry_9_, add_1_root_add_55_2_carry_10_,
         add_1_root_add_55_2_carry_11_, add_1_root_add_55_2_carry_12_,
         add_1_root_add_55_2_carry_13_, add_1_root_add_85_3_carry_2_,
         add_1_root_add_85_3_carry_3_, add_1_root_add_85_3_carry_4_,
         add_1_root_add_85_3_carry_5_, add_1_root_add_85_3_carry_6_,
         add_1_root_add_85_3_carry_7_, add_1_root_add_85_3_carry_8_,
         add_1_root_add_85_3_carry_9_, add_1_root_add_85_3_carry_10_,
         add_1_root_add_85_3_carry_11_, add_1_root_add_85_3_carry_12_,
         add_1_root_add_85_3_carry_13_, n326, n327, n328, n329, n368, n370,
         n371, n372, n373, n374, n375, n376, n377, n3780, n3790, n3810, n3830,
         n3840, n3850, n3860, n3870, n3880, n3890, n390, n391, n392, n393,
         n394, n395, n3960, n3970, n3980, n399, n400, n401, n402, n403, n404,
         n405, n406, n4070, n4080, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453;
  wire   [8:0] temp;
  wire   [7:6] add_75_carry;
  wire   [7:5] add_69_carry;
  wire   [7:4] add_63_carry;
  wire   [7:3] add_57_carry;
  wire   [13:8] add_0_root_sub_0_root_sub_45_2_carry;
  wire   [13:8] add_0_root_sub_0_root_sub_73_carry;

  DFFQX2 temp_reg_1__7_ ( .D(n297), .CK(clk), .Q(temp[8]) );
  DFFQX1 temp_reg_1__6_ ( .D(n298), .CK(clk), .Q(N407) );
  DFFQX1 temp_reg_1__5_ ( .D(n299), .CK(clk), .Q(N396) );
  DFFQX2 temp_reg_1__0_ ( .D(n3040), .CK(clk), .Q(N194) );
  DFFQX1 temp_reg_0__6_ ( .D(n3060), .CK(clk), .Q(temp[6]) );
  DFFQX1 temp_reg_0__5_ ( .D(n3070), .CK(clk), .Q(temp[5]) );
  DFFQX1 temp_reg_0__3_ ( .D(n3090), .CK(clk), .Q(temp[3]) );
  DFFRX1 mid_x_reg_5_ ( .D(n3220), .CK(clk), .RN(n436), .Q(N89) );
  DFFQX1 temp_reg_0__0_ ( .D(n3120), .CK(clk), .Q(temp[0]) );
  DFFQX1 temp_reg_0__1_ ( .D(n3110), .CK(clk), .Q(temp[1]) );
  DFFQX1 temp_reg_0__4_ ( .D(n3080), .CK(clk), .Q(temp[4]) );
  DFFQX1 temp_reg_0__2_ ( .D(n3100), .CK(clk), .Q(temp[2]) );
  DFFRX1 mid_x_reg_4_ ( .D(n3210), .CK(clk), .RN(n436), .Q(N88), .QN(n328) );
  DFFRX1 mid_x_reg_3_ ( .D(n3200), .CK(clk), .RN(n436), .Q(N87) );
  DFFRX1 mid_y_reg_6_ ( .D(n295), .CK(clk), .RN(n436), .Q(N337) );
  DFFRX1 mid_x_reg_2_ ( .D(n3190), .CK(clk), .RN(n436), .Q(N86) );
  DFFRX1 mid_y_reg_5_ ( .D(n294), .CK(clk), .RN(n436), .Q(N336) );
  DFFSX1 mid_x_reg_0_ ( .D(n324), .CK(clk), .SN(n436), .Q(N84), .QN(n326) );
  DFFRX1 mid_x_reg_1_ ( .D(n3180), .CK(clk), .RN(n436), .Q(N85) );
  DFFRX1 mid_y_reg_4_ ( .D(n293), .CK(clk), .RN(n436), .Q(N335) );
  DFFRX1 mid_y_reg_3_ ( .D(n292), .CK(clk), .RN(n436), .Q(N334) );
  DFFRX1 mid_y_reg_2_ ( .D(n291), .CK(clk), .RN(n436), .Q(N333) );
  DFFRX1 mid_y_reg_1_ ( .D(n290), .CK(clk), .RN(n436), .Q(N332) );
  DFFQX2 temp_reg_1__3_ ( .D(n3010), .CK(clk), .Q(N318) );
  DFFQX2 temp_reg_1__1_ ( .D(n3030), .CK(clk), .Q(N233) );
  DFFQX2 temp_reg_1__2_ ( .D(n3020), .CK(clk), .Q(N272) );
  DFFRX1 lbp_valid_reg ( .D(n2610), .CK(clk), .RN(n436), .Q(n483), .QN(n368)
         );
  DFFQX1 gray_addr_reg_2_ ( .D(n287), .CK(clk), .Q(n465) );
  DFFQX1 gray_addr_reg_3_ ( .D(n286), .CK(clk), .Q(n464) );
  DFFQX1 gray_addr_reg_4_ ( .D(n285), .CK(clk), .Q(n463) );
  DFFQX1 gray_addr_reg_5_ ( .D(n284), .CK(clk), .Q(n462) );
  DFFQX1 gray_addr_reg_6_ ( .D(n283), .CK(clk), .Q(n461) );
  DFFQX1 gray_addr_reg_7_ ( .D(n282), .CK(clk), .Q(n460) );
  DFFQX1 gray_addr_reg_8_ ( .D(n281), .CK(clk), .Q(n459) );
  DFFQX1 gray_addr_reg_0_ ( .D(n289), .CK(clk), .Q(n467) );
  DFFQX1 gray_addr_reg_1_ ( .D(n288), .CK(clk), .Q(n466) );
  DFFQX1 gray_addr_reg_9_ ( .D(n280), .CK(clk), .Q(n458) );
  DFFQX1 gray_addr_reg_10_ ( .D(n279), .CK(clk), .Q(n457) );
  DFFQX1 gray_addr_reg_11_ ( .D(n278), .CK(clk), .Q(n456) );
  DFFQX1 gray_addr_reg_12_ ( .D(n2770), .CK(clk), .Q(n455) );
  DFFQX1 lbp_data_reg_0_ ( .D(n253), .CK(clk), .Q(n491) );
  DFFQX1 lbp_data_reg_1_ ( .D(n254), .CK(clk), .Q(n490) );
  DFFQX1 lbp_data_reg_2_ ( .D(n255), .CK(clk), .Q(n489) );
  DFFQX1 lbp_data_reg_3_ ( .D(n2560), .CK(clk), .Q(n488) );
  DFFQX1 lbp_data_reg_4_ ( .D(n2570), .CK(clk), .Q(n487) );
  DFFQX1 lbp_data_reg_5_ ( .D(n2580), .CK(clk), .Q(n486) );
  DFFQX1 lbp_data_reg_6_ ( .D(n2590), .CK(clk), .Q(n485) );
  DFFQX1 lbp_data_reg_7_ ( .D(n2600), .CK(clk), .Q(n484) );
  DFFQX1 lbp_addr_reg_13_ ( .D(n2620), .CK(clk), .Q(n469) );
  DFFQX1 lbp_addr_reg_12_ ( .D(n2630), .CK(clk), .Q(n470) );
  DFFQX1 lbp_addr_reg_11_ ( .D(n2640), .CK(clk), .Q(n471) );
  DFFQX1 lbp_addr_reg_10_ ( .D(n2650), .CK(clk), .Q(n472) );
  DFFQX1 lbp_addr_reg_9_ ( .D(n2660), .CK(clk), .Q(n473) );
  DFFQX1 lbp_addr_reg_8_ ( .D(n2670), .CK(clk), .Q(n474) );
  DFFQX1 lbp_addr_reg_7_ ( .D(n2680), .CK(clk), .Q(n475) );
  DFFQX1 lbp_addr_reg_6_ ( .D(n269), .CK(clk), .Q(n476) );
  DFFQX1 lbp_addr_reg_5_ ( .D(n270), .CK(clk), .Q(n477) );
  DFFQX1 lbp_addr_reg_4_ ( .D(n271), .CK(clk), .Q(n478) );
  DFFQX1 lbp_addr_reg_3_ ( .D(n2720), .CK(clk), .Q(n479) );
  DFFQX1 lbp_addr_reg_2_ ( .D(n2730), .CK(clk), .Q(n480) );
  DFFQX1 lbp_addr_reg_1_ ( .D(n2740), .CK(clk), .Q(n481) );
  DFFQX1 lbp_addr_reg_0_ ( .D(n2750), .CK(clk), .Q(n482) );
  DFFRX1 gray_req_reg ( .D(n247), .CK(clk), .RN(n436), .Q(n468), .QN(n246) );
  DFFRX1 mid_x_reg_6_ ( .D(n323), .CK(clk), .RN(n436), .Q(N90), .QN(n327) );
  DFFRX1 count_reg_1_ ( .D(n316), .CK(clk), .RN(n436), .Q(n451), .QN(n250) );
  DFFRX1 STATE_reg_0_ ( .D(n325), .CK(clk), .RN(n436), .Q(n444) );
  DFFRX1 count_reg_2_ ( .D(n314), .CK(clk), .RN(n436), .Q(n452), .QN(n249) );
  DFFRX1 count_reg_3_ ( .D(n3130), .CK(clk), .RN(n436), .Q(n453), .QN(n244) );
  DFFRX1 STATE_reg_1_ ( .D(n317), .CK(clk), .RN(n436), .Q(n445), .QN(n252) );
  DFFRX1 count_reg_0_ ( .D(n315), .CK(clk), .RN(n436), .Q(n448), .QN(n251) );
  OAI32XL U251 ( .A0(n2350), .A1(n372), .A2(n451), .B0(n250), .B1(n443), .Y(
        n316) );
  AOI2BB1XL U252 ( .A0N(n372), .A1N(n451), .B0(n2350), .Y(n2340) );
  NOR4XL U253 ( .A(n451), .B(n452), .C(n251), .D(n244), .Y(n1820) );
  NAND3XL U254 ( .A(n448), .B(n451), .C(n215), .Y(n2170) );
  NOR4XL U255 ( .A(n448), .B(n451), .C(n452), .D(n244), .Y(n104) );
  INVXL U256 ( .A(n327), .Y(n329) );
  BUFX12 U257 ( .A(n468), .Y(gray_req) );
  INVX12 U259 ( .A(n492), .Y(finish) );
  OAI21X1 U260 ( .A0(n4080), .A1(n328), .B0(n409), .Y(N145) );
  BUFX12 U261 ( .A(n482), .Y(lbp_addr[0]) );
  BUFX12 U262 ( .A(n481), .Y(lbp_addr[1]) );
  BUFX12 U263 ( .A(n480), .Y(lbp_addr[2]) );
  BUFX12 U264 ( .A(n479), .Y(lbp_addr[3]) );
  BUFX12 U265 ( .A(n478), .Y(lbp_addr[4]) );
  BUFX12 U266 ( .A(n477), .Y(lbp_addr[5]) );
  BUFX12 U267 ( .A(n476), .Y(lbp_addr[6]) );
  BUFX12 U268 ( .A(n475), .Y(lbp_addr[7]) );
  BUFX12 U269 ( .A(n474), .Y(lbp_addr[8]) );
  BUFX12 U270 ( .A(n473), .Y(lbp_addr[9]) );
  BUFX12 U271 ( .A(n472), .Y(lbp_addr[10]) );
  BUFX12 U272 ( .A(n471), .Y(lbp_addr[11]) );
  BUFX12 U273 ( .A(n470), .Y(lbp_addr[12]) );
  BUFX12 U274 ( .A(n469), .Y(lbp_addr[13]) );
  BUFX12 U275 ( .A(n484), .Y(lbp_data[7]) );
  BUFX12 U276 ( .A(n485), .Y(lbp_data[6]) );
  BUFX12 U277 ( .A(n486), .Y(lbp_data[5]) );
  BUFX12 U278 ( .A(n487), .Y(lbp_data[4]) );
  BUFX12 U279 ( .A(n488), .Y(lbp_data[3]) );
  BUFX12 U280 ( .A(n489), .Y(lbp_data[2]) );
  BUFX12 U281 ( .A(n490), .Y(lbp_data[1]) );
  BUFX12 U282 ( .A(n491), .Y(lbp_data[0]) );
  BUFX12 U283 ( .A(n454), .Y(gray_addr[13]) );
  BUFX12 U284 ( .A(n455), .Y(gray_addr[12]) );
  BUFX12 U285 ( .A(n456), .Y(gray_addr[11]) );
  BUFX12 U286 ( .A(n457), .Y(gray_addr[10]) );
  BUFX12 U287 ( .A(n458), .Y(gray_addr[9]) );
  BUFX12 U288 ( .A(n466), .Y(gray_addr[1]) );
  BUFX12 U289 ( .A(n467), .Y(gray_addr[0]) );
  BUFX12 U290 ( .A(n459), .Y(gray_addr[8]) );
  BUFX12 U291 ( .A(n460), .Y(gray_addr[7]) );
  BUFX12 U292 ( .A(n461), .Y(gray_addr[6]) );
  BUFX12 U293 ( .A(n462), .Y(gray_addr[5]) );
  BUFX12 U294 ( .A(n463), .Y(gray_addr[4]) );
  BUFX12 U295 ( .A(n464), .Y(gray_addr[3]) );
  BUFX12 U296 ( .A(n465), .Y(gray_addr[2]) );
  INVX12 U297 ( .A(n368), .Y(lbp_valid) );
  OAI2BB2X4 U298 ( .B0(gray_data[0]), .B1(n430), .A0N(n432), .A1N(temp[1]), 
        .Y(n419) );
  OR2X1 U299 ( .A(n413), .B(n395), .Y(n414) );
  OAI221XL U301 ( .A0(temp[3]), .A1(n424), .B0(temp[3]), .B1(n433), .C0(n423), 
        .Y(n425) );
  XOR2XL U303 ( .A(n371), .B(n326), .Y(N119) );
  AND2X1 U305 ( .A(n399), .B(n3980), .Y(add_1_root_add_85_3_carry_2_) );
  AND2X1 U306 ( .A(n399), .B(n3980), .Y(add_1_root_add_67_2_carry_2_) );
  XOR2XL U307 ( .A(n370), .B(N338), .Y(N307) );
  AO21XL U309 ( .A0(n415), .A1(n393), .B0(n371), .Y(N118) );
  OAI2BB1XL U311 ( .A0N(n404), .A1N(n394), .B0(n405), .Y(N305) );
  NAND2X1 U312 ( .A(n2240), .B(n448), .Y(n216) );
  OAI2BB1XL U313 ( .A0N(n403), .A1N(n395), .B0(n404), .Y(N304) );
  OAI2BB1XL U314 ( .A0N(n413), .A1N(n395), .B0(n414), .Y(N116) );
  OAI2BB1XL U315 ( .A0N(n412), .A1N(n3960), .B0(n413), .Y(N115) );
  OAI2BB1XL U316 ( .A0N(n402), .A1N(n3960), .B0(n403), .Y(N303) );
  AOI22XL U317 ( .A0(N113), .A1(n373), .B0(n3980), .B1(n447), .Y(n163) );
  OAI2BB1XL U318 ( .A0N(n401), .A1N(n3970), .B0(n402), .Y(N302) );
  OAI2BB1XL U319 ( .A0N(n411), .A1N(n3970), .B0(n412), .Y(N114) );
  OAI2BB1XL U320 ( .A0N(n399), .A1N(n3980), .B0(n401), .Y(N301) );
  INVX1 U322 ( .A(gray_data[5]), .Y(n434) );
  NOR2BX1 U323 ( .AN(temp[4]), .B(gray_data[4]), .Y(n418) );
  CLKBUFX3 U324 ( .A(N335), .Y(n395) );
  CLKBUFX3 U325 ( .A(N336), .Y(n394) );
  CLKBUFX3 U326 ( .A(N337), .Y(n393) );
  BUFX4 U327 ( .A(n98), .Y(n375) );
  CLKBUFX3 U328 ( .A(n105), .Y(n373) );
  BUFX4 U329 ( .A(n104), .Y(n3790) );
  NOR3X1 U330 ( .A(n445), .B(n246), .C(n444), .Y(n2360) );
  NAND2X2 U331 ( .A(n252), .B(n444), .Y(n870) );
  CLKBUFX3 U332 ( .A(n439), .Y(n3850) );
  CLKINVX1 U333 ( .A(n3810), .Y(n439) );
  INVX3 U334 ( .A(n374), .Y(n438) );
  ADDFXL U335 ( .A(N339), .B(n370), .CI(add_0_root_sub_0_root_sub_73_carry[8]), 
        .CO(add_0_root_sub_0_root_sub_73_carry[9]), .S(N308) );
  ADDFXL U336 ( .A(N340), .B(n370), .CI(add_0_root_sub_0_root_sub_73_carry[9]), 
        .CO(add_0_root_sub_0_root_sub_73_carry[10]), .S(N309) );
  ADDFXL U337 ( .A(N341), .B(n370), .CI(add_0_root_sub_0_root_sub_73_carry[10]), .CO(add_0_root_sub_0_root_sub_73_carry[11]), .S(N310) );
  ADDFXL U338 ( .A(N342), .B(n370), .CI(add_0_root_sub_0_root_sub_73_carry[11]), .CO(add_0_root_sub_0_root_sub_73_carry[12]), .S(N311) );
  ADDFXL U339 ( .A(N343), .B(n370), .CI(add_0_root_sub_0_root_sub_73_carry[12]), .CO(add_0_root_sub_0_root_sub_73_carry[13]), .S(N312) );
  ADDFXL U340 ( .A(N142), .B(n371), .CI(
        add_0_root_sub_0_root_sub_45_2_carry[8]), .CO(
        add_0_root_sub_0_root_sub_45_2_carry[9]), .S(N120) );
  ADDFXL U341 ( .A(N143), .B(n371), .CI(
        add_0_root_sub_0_root_sub_45_2_carry[9]), .CO(
        add_0_root_sub_0_root_sub_45_2_carry[10]), .S(N121) );
  ADDFXL U342 ( .A(N144), .B(n371), .CI(
        add_0_root_sub_0_root_sub_45_2_carry[10]), .CO(
        add_0_root_sub_0_root_sub_45_2_carry[11]), .S(N122) );
  ADDFXL U343 ( .A(N145), .B(n371), .CI(
        add_0_root_sub_0_root_sub_45_2_carry[11]), .CO(
        add_0_root_sub_0_root_sub_45_2_carry[12]), .S(N123) );
  ADDFXL U344 ( .A(N146), .B(n371), .CI(
        add_0_root_sub_0_root_sub_45_2_carry[12]), .CO(
        add_0_root_sub_0_root_sub_45_2_carry[13]), .S(N124) );
  INVX4 U345 ( .A(n2170), .Y(n446) );
  INVX4 U346 ( .A(n216), .Y(n447) );
  INVX3 U347 ( .A(n2390), .Y(n441) );
  OAI2BB2XL U348 ( .B0(n1880), .B1(n177), .A0N(n177), .A1N(n3860), .Y(n299) );
  NOR4X1 U349 ( .A(n1890), .B(n1900), .C(n1910), .D(n1920), .Y(n1880) );
  AO22X1 U350 ( .A0(n3860), .A1(n3790), .B0(N320), .B1(n450), .Y(n1910) );
  AO22X1 U351 ( .A0(N237), .A1(n376), .B0(N275), .B1(n3780), .Y(n1900) );
  OAI2BB2XL U352 ( .B0(n1830), .B1(n177), .A0N(n177), .A1N(n3870), .Y(n298) );
  NOR4X1 U353 ( .A(n1840), .B(n1850), .C(n1860), .D(n1870), .Y(n1830) );
  AO22X1 U354 ( .A0(N397), .A1(n3790), .B0(N321), .B1(n450), .Y(n1860) );
  AO22X1 U355 ( .A0(n3870), .A1(n372), .B0(N352), .B1(n447), .Y(n1870) );
  AOI22X1 U357 ( .A0(N266), .A1(n3780), .B0(N228), .B1(n376), .Y(n1150) );
  AOI22X1 U359 ( .A0(N265), .A1(n3780), .B0(N227), .B1(n376), .Y(n1200) );
  CLKBUFX3 U360 ( .A(n91), .Y(n3810) );
  OAI31XL U361 ( .A0(n172), .A1(n373), .A2(n449), .B0(n173), .Y(n91) );
  AOI222XL U362 ( .A0(N146), .A1(n375), .B0(n449), .B1(n3880), .C0(N191), .C1(
        n446), .Y(n111) );
  CLKBUFX3 U363 ( .A(n437), .Y(n3840) );
  CLKINVX1 U364 ( .A(n840), .Y(n437) );
  CLKBUFX3 U365 ( .A(n2300), .Y(n374) );
  NAND2X1 U366 ( .A(n373), .B(n173), .Y(n2300) );
  AOI22X1 U367 ( .A0(N264), .A1(n3780), .B0(N226), .B1(n376), .Y(n1250) );
  AOI222XL U368 ( .A0(N145), .A1(n375), .B0(n449), .B1(n3890), .C0(N190), .C1(
        n446), .Y(n1160) );
  NOR2X1 U370 ( .A(n405), .B(n393), .Y(N2990) );
  XOR3X1 U371 ( .A(N344), .B(n370), .C(add_0_root_sub_0_root_sub_73_carry[13]), 
        .Y(N313) );
  CLKBUFX3 U372 ( .A(N1110), .Y(n371) );
  NOR2X1 U373 ( .A(n415), .B(n393), .Y(N1110) );
  XOR3X1 U374 ( .A(N147), .B(n371), .C(
        add_0_root_sub_0_root_sub_45_2_carry[13]), .Y(N125) );
  OR2X1 U375 ( .A(n392), .B(n3830), .Y(n406) );
  AOI222XL U377 ( .A0(N144), .A1(n375), .B0(n449), .B1(n390), .C0(N189), .C1(
        n446), .Y(n1210) );
  AOI222XL U378 ( .A0(N143), .A1(n375), .B0(n449), .B1(n391), .C0(N188), .C1(
        n446), .Y(n126) );
  AOI22X1 U379 ( .A0(N262), .A1(n3780), .B0(N224), .B1(n376), .Y(n135) );
  AOI22X1 U380 ( .A0(N308), .A1(n450), .B0(N384), .B1(n3790), .Y(n129) );
  AOI22X1 U381 ( .A0(N307), .A1(n450), .B0(N383), .B1(n3790), .Y(n134) );
  AOI22X1 U382 ( .A0(N261), .A1(n3780), .B0(N223), .B1(n376), .Y(n140) );
  AOI22X1 U383 ( .A0(N306), .A1(n450), .B0(N382), .B1(n3790), .Y(n139) );
  AOI22X1 U384 ( .A0(N305), .A1(n450), .B0(N381), .B1(n3790), .Y(n1440) );
  AOI22X1 U385 ( .A0(N117), .A1(n373), .B0(n394), .B1(n447), .Y(n1430) );
  NAND4X2 U386 ( .A(n394), .B(n395), .C(n393), .D(n243), .Y(N4610) );
  AOI22XL U387 ( .A0(N259), .A1(n3780), .B0(N221), .B1(n102), .Y(n1500) );
  AOI22X1 U388 ( .A0(N304), .A1(n450), .B0(N380), .B1(n3790), .Y(n1490) );
  AOI22XL U389 ( .A0(N258), .A1(n377), .B0(N220), .B1(n376), .Y(n1550) );
  AOI22XL U390 ( .A0(N303), .A1(n450), .B0(N379), .B1(n3790), .Y(n1540) );
  NAND4X1 U391 ( .A(n216), .B(n2170), .C(n2180), .D(n2190), .Y(n172) );
  NOR4X1 U392 ( .A(n3790), .B(n376), .C(n377), .D(n375), .Y(n2190) );
  AO22X1 U393 ( .A0(N155), .A1(n375), .B0(N200), .B1(n446), .Y(n1840) );
  CLKBUFX3 U394 ( .A(n102), .Y(n376) );
  NOR2BX1 U395 ( .AN(n2280), .B(n448), .Y(n102) );
  NOR2X1 U396 ( .A(n453), .B(n452), .Y(n215) );
  AO22X1 U398 ( .A0(N238), .A1(n376), .B0(N276), .B1(n3780), .Y(n1850) );
  AOI22XL U399 ( .A0(N302), .A1(n450), .B0(N378), .B1(n3790), .Y(n159) );
  AO22X1 U400 ( .A0(N154), .A1(n375), .B0(N199), .B1(n446), .Y(n1890) );
  AOI222XL U401 ( .A0(n399), .A1(n375), .B0(n449), .B1(n399), .C0(n400), .C1(
        n446), .Y(n171) );
  AOI222XL U402 ( .A0(n3980), .A1(n375), .B0(n449), .B1(n3980), .C0(N256), 
        .C1(n446), .Y(n166) );
  INVX3 U403 ( .A(n174), .Y(n449) );
  AO22X1 U404 ( .A0(n3860), .A1(n372), .B0(N351), .B1(n447), .Y(n1920) );
  INVXL U405 ( .A(n3860), .Y(N351) );
  AOI22XL U406 ( .A0(n400), .A1(n373), .B0(n399), .B1(n447), .Y(n168) );
  AO22X1 U407 ( .A0(n870), .A1(n399), .B0(N4690), .B1(n440), .Y(n296) );
  NOR2X2 U409 ( .A(n870), .B(N4610), .Y(n2390) );
  AO22X1 U411 ( .A0(n441), .A1(n390), .B0(N341), .B1(n2390), .Y(n3200) );
  AO22X1 U412 ( .A0(n441), .A1(n391), .B0(N340), .B1(n2390), .Y(n3190) );
  AO22X1 U413 ( .A0(n441), .A1(n392), .B0(N339), .B1(n2390), .Y(n3180) );
  INVX4 U414 ( .A(n2180), .Y(n450) );
  NAND2X1 U415 ( .A(n2360), .B(n448), .Y(n2350) );
  XOR2X1 U416 ( .A(n444), .B(n240), .Y(n325) );
  AO21X1 U417 ( .A0(n2360), .A1(n372), .B0(n440), .Y(n240) );
  INVX2 U418 ( .A(n870), .Y(n440) );
  INVXL U419 ( .A(n3870), .Y(N397) );
  OAI2BB2XL U421 ( .B0(n208), .B1(n177), .A0N(n177), .A1N(N233), .Y(n3030) );
  NOR4X1 U422 ( .A(n209), .B(n210), .C(n211), .D(n212), .Y(n208) );
  AO22X1 U423 ( .A0(N233), .A1(n3790), .B0(N233), .B1(n450), .Y(n211) );
  OAI2BB2XL U425 ( .B0(n203), .B1(n177), .A0N(n177), .A1N(N272), .Y(n3020) );
  NOR4X1 U426 ( .A(n204), .B(n205), .C(n206), .D(n207), .Y(n203) );
  AO22X1 U427 ( .A0(N272), .A1(n3790), .B0(N272), .B1(n450), .Y(n206) );
  AO22X1 U428 ( .A0(N151), .A1(n375), .B0(N196), .B1(n446), .Y(n204) );
  OAI2BB2XL U429 ( .B0(n1980), .B1(n177), .A0N(n177), .A1N(N318), .Y(n3010) );
  NOR4X1 U430 ( .A(n1990), .B(n2000), .C(n2010), .D(n202), .Y(n1980) );
  AO22X1 U431 ( .A0(N318), .A1(n3790), .B0(N318), .B1(n450), .Y(n2010) );
  AO22X1 U432 ( .A0(N152), .A1(n375), .B0(N197), .B1(n446), .Y(n1990) );
  OAI2BB2XL U433 ( .B0(n193), .B1(n177), .A0N(n177), .A1N(N350), .Y(n300) );
  NOR4X1 U434 ( .A(n1940), .B(n1950), .C(n1960), .D(n1970), .Y(n193) );
  AO22X1 U435 ( .A0(N350), .A1(n3790), .B0(N319), .B1(n450), .Y(n1960) );
  AO22X1 U436 ( .A0(N153), .A1(n375), .B0(N198), .B1(n446), .Y(n1940) );
  OAI2BB2XL U437 ( .B0(n176), .B1(n177), .A0N(n177), .A1N(temp[8]), .Y(n297)
         );
  NOR4X1 U438 ( .A(n178), .B(n179), .C(n180), .D(n1810), .Y(n176) );
  AO22X1 U439 ( .A0(N398), .A1(n3790), .B0(N322), .B1(n450), .Y(n180) );
  AO22X1 U440 ( .A0(N408), .A1(n372), .B0(N353), .B1(n447), .Y(n1810) );
  OAI2BB2XL U441 ( .B0(n213), .B1(n177), .A0N(n177), .A1N(N194), .Y(n3040) );
  NOR4X1 U442 ( .A(n2200), .B(n2210), .C(n2220), .D(n2230), .Y(n213) );
  AO22X1 U443 ( .A0(N194), .A1(n3790), .B0(N194), .B1(n450), .Y(n2220) );
  AO22X1 U444 ( .A0(N149), .A1(n375), .B0(N194), .B1(n446), .Y(n2200) );
  OAI21XL U446 ( .A0(n372), .A1(n172), .B0(r543_GE_LT_GT_LE), .Y(n214) );
  CLKINVX1 U448 ( .A(gray_data[1]), .Y(n432) );
  AO22XL U451 ( .A0(gray_addr[13]), .A1(n3810), .B0(n3850), .B1(n93), .Y(n2760) );
  NAND4X1 U452 ( .A(n94), .B(n95), .C(n96), .D(n97), .Y(n93) );
  AOI22X1 U453 ( .A0(N125), .A1(n373), .B0(N344), .B1(n447), .Y(n94) );
  AOI22X1 U454 ( .A0(N313), .A1(n450), .B0(N389), .B1(n3790), .Y(n95) );
  CLKBUFX3 U455 ( .A(N332), .Y(n3980) );
  AO22XL U456 ( .A0(gray_addr[11]), .A1(n3810), .B0(n3850), .B1(n112), .Y(n278) );
  NAND4X1 U457 ( .A(n1130), .B(n1140), .C(n1150), .D(n1160), .Y(n112) );
  AOI22X1 U458 ( .A0(N123), .A1(n373), .B0(N342), .B1(n447), .Y(n1130) );
  AOI22X1 U459 ( .A0(N311), .A1(n450), .B0(N387), .B1(n3790), .Y(n1140) );
  CLKINVX1 U460 ( .A(gray_data[7]), .Y(n435) );
  AO22XL U461 ( .A0(gray_addr[12]), .A1(n3810), .B0(n3850), .B1(n107), .Y(
        n2770) );
  NAND4X1 U462 ( .A(n108), .B(n109), .C(n110), .D(n111), .Y(n107) );
  AOI22X1 U463 ( .A0(N124), .A1(n373), .B0(N343), .B1(n447), .Y(n108) );
  AOI22X1 U464 ( .A0(N312), .A1(n450), .B0(N388), .B1(n3790), .Y(n109) );
  CLKBUFX3 U465 ( .A(N333), .Y(n3970) );
  AO22XL U466 ( .A0(gray_addr[10]), .A1(n3810), .B0(n3850), .B1(n1170), .Y(
        n279) );
  NAND4X1 U467 ( .A(n1180), .B(n1190), .C(n1200), .D(n1210), .Y(n1170) );
  AOI22X1 U468 ( .A0(N122), .A1(n373), .B0(N341), .B1(n447), .Y(n1180) );
  AOI22X1 U469 ( .A0(N310), .A1(n450), .B0(N386), .B1(n3790), .Y(n1190) );
  AOI222XL U470 ( .A0(N147), .A1(n375), .B0(n449), .B1(N90), .C0(N192), .C1(
        n446), .Y(n97) );
  NOR2X1 U471 ( .A(n442), .B(reset), .Y(n173) );
  AO22XL U472 ( .A0(gray_addr[0]), .A1(n3810), .B0(n3850), .B1(n167), .Y(n289)
         );
  AOI22XL U474 ( .A0(n400), .A1(n450), .B0(n400), .B1(n3790), .Y(n169) );
  AOI22XL U475 ( .A0(n400), .A1(n3780), .B0(N217), .B1(n102), .Y(n170) );
  AO22XL U476 ( .A0(gray_addr[1]), .A1(n3810), .B0(n3850), .B1(n162), .Y(n288)
         );
  NAND4XL U477 ( .A(n163), .B(n164), .C(n165), .D(n166), .Y(n162) );
  AOI22XL U478 ( .A0(N301), .A1(n450), .B0(N256), .B1(n3790), .Y(n164) );
  AOI22XL U479 ( .A0(N256), .A1(n3780), .B0(N218), .B1(n102), .Y(n165) );
  AO22XL U480 ( .A0(gray_addr[2]), .A1(n3810), .B0(n3850), .B1(n157), .Y(n287)
         );
  NAND4X1 U481 ( .A(n158), .B(n159), .C(n160), .D(n161), .Y(n157) );
  AOI222XL U482 ( .A0(n3970), .A1(n375), .B0(n449), .B1(n3970), .C0(N181), 
        .C1(n446), .Y(n161) );
  AOI22XL U483 ( .A0(N114), .A1(n373), .B0(n3970), .B1(n447), .Y(n158) );
  AO22XL U484 ( .A0(gray_addr[3]), .A1(n3810), .B0(n3850), .B1(n1520), .Y(n286) );
  NAND4X1 U485 ( .A(n1530), .B(n1540), .C(n1550), .D(n1560), .Y(n1520) );
  AOI222XL U486 ( .A0(n3960), .A1(n375), .B0(n449), .B1(n3960), .C0(N182), 
        .C1(n446), .Y(n1560) );
  AOI22XL U487 ( .A0(N115), .A1(n373), .B0(n3960), .B1(n447), .Y(n1530) );
  AO22XL U488 ( .A0(gray_addr[4]), .A1(n3810), .B0(n3850), .B1(n1470), .Y(n285) );
  NAND4X1 U489 ( .A(n148), .B(n1490), .C(n1500), .D(n1510), .Y(n1470) );
  AOI222XL U490 ( .A0(n395), .A1(n375), .B0(n449), .B1(n395), .C0(N183), .C1(
        n446), .Y(n1510) );
  AOI22X1 U491 ( .A0(N116), .A1(n373), .B0(n395), .B1(n447), .Y(n148) );
  AO22XL U492 ( .A0(gray_addr[5]), .A1(n3810), .B0(n3850), .B1(n1420), .Y(n284) );
  NAND4X1 U493 ( .A(n1430), .B(n1440), .C(n1450), .D(n1460), .Y(n1420) );
  AOI222XL U494 ( .A0(n394), .A1(n375), .B0(n449), .B1(n394), .C0(N184), .C1(
        n446), .Y(n1460) );
  AOI22X1 U495 ( .A0(N260), .A1(n3780), .B0(N222), .B1(n376), .Y(n1450) );
  AO22XL U496 ( .A0(gray_addr[6]), .A1(n3810), .B0(n3850), .B1(n137), .Y(n283)
         );
  NAND4X1 U497 ( .A(n138), .B(n139), .C(n140), .D(n141), .Y(n137) );
  AOI222XL U498 ( .A0(n393), .A1(n375), .B0(n449), .B1(n393), .C0(N185), .C1(
        n446), .Y(n141) );
  AOI22X1 U499 ( .A0(N118), .A1(n373), .B0(n393), .B1(n447), .Y(n138) );
  AO22XL U500 ( .A0(gray_addr[7]), .A1(n3810), .B0(n3850), .B1(n132), .Y(n282)
         );
  NAND4X1 U501 ( .A(n133), .B(n134), .C(n135), .D(n136), .Y(n132) );
  AOI222XL U502 ( .A0(n326), .A1(n375), .B0(n449), .B1(n3830), .C0(N186), .C1(
        n446), .Y(n136) );
  AO22XL U504 ( .A0(gray_addr[8]), .A1(n3810), .B0(n3850), .B1(n127), .Y(n281)
         );
  NAND4X1 U505 ( .A(n128), .B(n129), .C(n130), .D(n131), .Y(n127) );
  AOI222XL U506 ( .A0(N142), .A1(n375), .B0(n449), .B1(n392), .C0(N187), .C1(
        n446), .Y(n131) );
  AOI22X1 U507 ( .A0(N120), .A1(n373), .B0(N339), .B1(n447), .Y(n128) );
  AO22XL U508 ( .A0(gray_addr[9]), .A1(n3810), .B0(n3850), .B1(n1220), .Y(n280) );
  NAND4X1 U509 ( .A(n1230), .B(n1240), .C(n1250), .D(n126), .Y(n1220) );
  AOI22X1 U510 ( .A0(N121), .A1(n373), .B0(N340), .B1(n447), .Y(n1230) );
  AOI22X1 U511 ( .A0(N309), .A1(n450), .B0(N385), .B1(n3790), .Y(n1240) );
  CLKBUFX3 U512 ( .A(N334), .Y(n3960) );
  AO22X1 U515 ( .A0(n840), .A1(N194), .B0(lbp_data[0]), .B1(n3840), .Y(n253)
         );
  AO22X1 U516 ( .A0(n840), .A1(N233), .B0(lbp_data[1]), .B1(n3840), .Y(n254)
         );
  AO22X1 U518 ( .A0(n840), .A1(N318), .B0(lbp_data[3]), .B1(n3840), .Y(n2560)
         );
  AO22X1 U519 ( .A0(n840), .A1(N350), .B0(lbp_data[4]), .B1(n3840), .Y(n2570)
         );
  AO22X1 U520 ( .A0(n840), .A1(n3860), .B0(lbp_data[5]), .B1(n3840), .Y(n2580)
         );
  AO22X1 U521 ( .A0(n840), .A1(n3870), .B0(lbp_data[6]), .B1(n3840), .Y(n2590)
         );
  AO22X1 U522 ( .A0(n840), .A1(temp[8]), .B0(lbp_data[7]), .B1(n3840), .Y(
        n2600) );
  AO22X1 U523 ( .A0(n840), .A1(N90), .B0(lbp_addr[13]), .B1(n3840), .Y(n2620)
         );
  AO22X1 U524 ( .A0(n840), .A1(n3880), .B0(lbp_addr[12]), .B1(n3840), .Y(n2630) );
  AO22X1 U525 ( .A0(n840), .A1(n3890), .B0(lbp_addr[11]), .B1(n3840), .Y(n2640) );
  AO22X1 U526 ( .A0(n840), .A1(n390), .B0(lbp_addr[10]), .B1(n3840), .Y(n2650)
         );
  AO22X1 U527 ( .A0(n840), .A1(n391), .B0(lbp_addr[9]), .B1(n3840), .Y(n2660)
         );
  AO22X1 U528 ( .A0(n840), .A1(n392), .B0(lbp_addr[8]), .B1(n3840), .Y(n2670)
         );
  AO22X1 U529 ( .A0(n840), .A1(n3830), .B0(lbp_addr[7]), .B1(n3840), .Y(n2680)
         );
  AO22X1 U530 ( .A0(n840), .A1(n393), .B0(lbp_addr[6]), .B1(n3840), .Y(n269)
         );
  AO22X1 U531 ( .A0(n840), .A1(n394), .B0(lbp_addr[5]), .B1(n3840), .Y(n270)
         );
  AO22X1 U533 ( .A0(n840), .A1(n3960), .B0(lbp_addr[3]), .B1(n3840), .Y(n2720)
         );
  AO22X1 U534 ( .A0(n840), .A1(n3970), .B0(lbp_addr[2]), .B1(n3840), .Y(n2730)
         );
  AO22X1 U535 ( .A0(n840), .A1(n3980), .B0(lbp_addr[1]), .B1(n3840), .Y(n2740)
         );
  AO22X1 U536 ( .A0(n840), .A1(n399), .B0(lbp_addr[0]), .B1(n3840), .Y(n2750)
         );
  AO22X1 U537 ( .A0(temp[0]), .A1(n374), .B0(gray_data[0]), .B1(n438), .Y(
        n3120) );
  AO22X1 U538 ( .A0(temp[1]), .A1(n374), .B0(gray_data[1]), .B1(n438), .Y(
        n3110) );
  AO22X1 U539 ( .A0(temp[2]), .A1(n374), .B0(gray_data[2]), .B1(n438), .Y(
        n3100) );
  AO22X1 U540 ( .A0(temp[3]), .A1(n374), .B0(gray_data[3]), .B1(n438), .Y(
        n3090) );
  AO22X1 U541 ( .A0(temp[4]), .A1(n374), .B0(gray_data[4]), .B1(n438), .Y(
        n3080) );
  AO22X1 U542 ( .A0(temp[5]), .A1(n374), .B0(gray_data[5]), .B1(n438), .Y(
        n3070) );
  AO22X1 U543 ( .A0(temp[6]), .A1(n374), .B0(gray_data[6]), .B1(n438), .Y(
        n3060) );
  CLKBUFX3 U545 ( .A(N85), .Y(n392) );
  CLKBUFX3 U546 ( .A(N84), .Y(n3830) );
  CLKBUFX3 U548 ( .A(N87), .Y(n390) );
  CLKBUFX3 U549 ( .A(N88), .Y(n3890) );
  NAND4BX1 U550 ( .AN(n242), .B(n3880), .C(n3890), .D(n329), .Y(n900) );
  NAND4BX1 U551 ( .AN(n3830), .B(n392), .C(n391), .D(n390), .Y(n242) );
  CLKBUFX3 U552 ( .A(N89), .Y(n3880) );
  AO22X1 U553 ( .A0(n870), .A1(n393), .B0(N4750), .B1(n440), .Y(n295) );
  AO22X1 U554 ( .A0(N156), .A1(n375), .B0(N201), .B1(n446), .Y(n178) );
  AO22X1 U555 ( .A0(n870), .A1(n394), .B0(N4740), .B1(n440), .Y(n294) );
  NOR3X1 U556 ( .A(n453), .B(n249), .C(n451), .Y(n2280) );
  OAI21XL U557 ( .A0(n860), .A1(n870), .B0(n880), .Y(n2610) );
  NOR2BX1 U558 ( .AN(n900), .B(N4610), .Y(n860) );
  OAI211XL U559 ( .A0(n252), .A1(n444), .B0(n870), .C0(n483), .Y(n880) );
  NOR3BXL U560 ( .AN(n215), .B(n250), .C(n448), .Y(n98) );
  AO22X1 U561 ( .A0(N239), .A1(n376), .B0(N277), .B1(n3780), .Y(n179) );
  AO22X1 U562 ( .A0(n870), .A1(n395), .B0(N4730), .B1(n440), .Y(n293) );
  AO22X1 U563 ( .A0(n441), .A1(N90), .B0(N344), .B1(n2390), .Y(n323) );
  AO22X1 U564 ( .A0(n870), .A1(n3960), .B0(N4720), .B1(n440), .Y(n292) );
  NOR3BXL U565 ( .AN(n215), .B(n251), .C(n451), .Y(n105) );
  AO22X1 U566 ( .A0(n870), .A1(n3970), .B0(N4710), .B1(n440), .Y(n291) );
  NAND3X1 U567 ( .A(n250), .B(n215), .C(n251), .Y(n174) );
  AO22X1 U568 ( .A0(N350), .A1(n372), .B0(N350), .B1(n447), .Y(n1970) );
  AO22X1 U569 ( .A0(N318), .A1(n372), .B0(N318), .B1(n447), .Y(n202) );
  AO22X1 U570 ( .A0(N272), .A1(n372), .B0(N272), .B1(n447), .Y(n207) );
  AO22X1 U571 ( .A0(N233), .A1(n372), .B0(N233), .B1(n447), .Y(n212) );
  AO22X1 U572 ( .A0(N194), .A1(n372), .B0(N194), .B1(n447), .Y(n2230) );
  NOR3X1 U573 ( .A(n250), .B(n249), .C(n453), .Y(n2240) );
  NAND2X1 U574 ( .A(n2240), .B(n251), .Y(n2180) );
  CLKBUFX3 U576 ( .A(n377), .Y(n3780) );
  NOR2BX1 U577 ( .AN(n2280), .B(n251), .Y(n377) );
  AO22X1 U578 ( .A0(N235), .A1(n376), .B0(N273), .B1(n3780), .Y(n2000) );
  INVXL U579 ( .A(N318), .Y(N273) );
  AO22X1 U580 ( .A0(N234), .A1(n376), .B0(N272), .B1(n3780), .Y(n205) );
  INVXL U581 ( .A(N272), .Y(N234) );
  AO22X1 U582 ( .A0(N236), .A1(n376), .B0(N274), .B1(n3780), .Y(n1950) );
  AO22X1 U583 ( .A0(N233), .A1(n376), .B0(N233), .B1(n3780), .Y(n210) );
  CLKBUFX3 U585 ( .A(n1820), .Y(n372) );
  OAI21XL U586 ( .A0(n900), .A1(n441), .B0(n252), .Y(n317) );
  AO22X1 U587 ( .A0(n441), .A1(n3830), .B0(N338), .B1(n2390), .Y(n324) );
  AO22X1 U588 ( .A0(n441), .A1(n3880), .B0(N343), .B1(n2390), .Y(n3220) );
  CLKBUFX3 U589 ( .A(N396), .Y(n3860) );
  OAI22XL U590 ( .A0(n244), .A1(n2330), .B0(n442), .B1(n216), .Y(n3130) );
  OA21XL U591 ( .A0(n372), .A1(n452), .B0(n2340), .Y(n2330) );
  OAI32X1 U592 ( .A0(n2350), .A1(n250), .A2(n452), .B0(n249), .B1(n2340), .Y(
        n314) );
  INVXL U593 ( .A(n2350), .Y(n443) );
  CLKBUFX3 U594 ( .A(N407), .Y(n3870) );
  XOR2X1 U595 ( .A(n442), .B(n251), .Y(n315) );
  INVXL U596 ( .A(temp[8]), .Y(N408) );
  INVXL U597 ( .A(N233), .Y(N195) );
  OAI21XL U598 ( .A0(n445), .A1(n444), .B0(n246), .Y(n247) );
  INVX4 U599 ( .A(reset), .Y(n436) );
  XOR2X1 U600 ( .A(temp[8]), .B(add_81_carry_7_), .Y(N353) );
  AND2X1 U601 ( .A(n3860), .B(n3870), .Y(add_81_carry_7_) );
  XOR2X1 U602 ( .A(n3870), .B(n3860), .Y(N352) );
  XOR2X1 U603 ( .A(temp[8]), .B(add_75_carry[7]), .Y(N322) );
  AND2X1 U604 ( .A(add_75_carry[6]), .B(n3870), .Y(add_75_carry[7]) );
  XOR2X1 U605 ( .A(n3870), .B(add_75_carry[6]), .Y(N321) );
  AND2X1 U606 ( .A(N350), .B(n3860), .Y(add_75_carry[6]) );
  XOR2X1 U607 ( .A(n3860), .B(N350), .Y(N320) );
  XOR2X1 U608 ( .A(temp[8]), .B(n3870), .Y(N398) );
  XOR2X1 U609 ( .A(temp[8]), .B(add_69_carry[7]), .Y(N277) );
  AND2X1 U610 ( .A(add_69_carry[6]), .B(n3870), .Y(add_69_carry[7]) );
  XOR2X1 U611 ( .A(n3870), .B(add_69_carry[6]), .Y(N276) );
  AND2X1 U612 ( .A(add_69_carry[5]), .B(n3860), .Y(add_69_carry[6]) );
  XOR2X1 U613 ( .A(n3860), .B(add_69_carry[5]), .Y(N275) );
  AND2X1 U614 ( .A(N318), .B(N350), .Y(add_69_carry[5]) );
  XOR2X1 U615 ( .A(N350), .B(N318), .Y(N274) );
  XOR2X1 U616 ( .A(temp[8]), .B(add_63_carry[7]), .Y(N239) );
  AND2X1 U617 ( .A(add_63_carry[6]), .B(n3870), .Y(add_63_carry[7]) );
  XOR2X1 U618 ( .A(n3870), .B(add_63_carry[6]), .Y(N238) );
  AND2X1 U619 ( .A(add_63_carry[5]), .B(n3860), .Y(add_63_carry[6]) );
  XOR2X1 U620 ( .A(n3860), .B(add_63_carry[5]), .Y(N237) );
  AND2X1 U621 ( .A(add_63_carry[4]), .B(N350), .Y(add_63_carry[5]) );
  XOR2X1 U622 ( .A(N350), .B(add_63_carry[4]), .Y(N236) );
  AND2X1 U623 ( .A(N272), .B(N318), .Y(add_63_carry[4]) );
  XOR2X1 U624 ( .A(N318), .B(N272), .Y(N235) );
  XOR2X1 U625 ( .A(temp[8]), .B(add_57_carry[7]), .Y(N201) );
  AND2X1 U626 ( .A(add_57_carry[6]), .B(n3870), .Y(add_57_carry[7]) );
  XOR2X1 U627 ( .A(n3870), .B(add_57_carry[6]), .Y(N200) );
  AND2X1 U628 ( .A(add_57_carry[5]), .B(n3860), .Y(add_57_carry[6]) );
  XOR2X1 U629 ( .A(n3860), .B(add_57_carry[5]), .Y(N199) );
  AND2X1 U630 ( .A(add_57_carry[4]), .B(N350), .Y(add_57_carry[5]) );
  XOR2X1 U631 ( .A(N350), .B(add_57_carry[4]), .Y(N198) );
  AND2X1 U632 ( .A(add_57_carry[3]), .B(N318), .Y(add_57_carry[4]) );
  XOR2X1 U633 ( .A(N318), .B(add_57_carry[3]), .Y(N197) );
  AND2X1 U634 ( .A(N233), .B(N272), .Y(add_57_carry[3]) );
  XOR2X1 U635 ( .A(N272), .B(N233), .Y(N196) );
  XOR2X1 U636 ( .A(N147), .B(add_1_root_add_55_2_carry_13_), .Y(N192) );
  AND2X1 U637 ( .A(add_1_root_add_55_2_carry_12_), .B(N146), .Y(
        add_1_root_add_55_2_carry_13_) );
  XOR2X1 U638 ( .A(N146), .B(add_1_root_add_55_2_carry_12_), .Y(N191) );
  AND2X1 U639 ( .A(add_1_root_add_55_2_carry_11_), .B(N145), .Y(
        add_1_root_add_55_2_carry_12_) );
  XOR2X1 U640 ( .A(N145), .B(add_1_root_add_55_2_carry_11_), .Y(N190) );
  AND2X1 U641 ( .A(add_1_root_add_55_2_carry_10_), .B(N144), .Y(
        add_1_root_add_55_2_carry_11_) );
  XOR2X1 U642 ( .A(N144), .B(add_1_root_add_55_2_carry_10_), .Y(N189) );
  AND2X1 U643 ( .A(add_1_root_add_55_2_carry_9_), .B(N143), .Y(
        add_1_root_add_55_2_carry_10_) );
  XOR2X1 U644 ( .A(N143), .B(add_1_root_add_55_2_carry_9_), .Y(N188) );
  AND2X1 U645 ( .A(add_1_root_add_55_2_carry_8_), .B(N142), .Y(
        add_1_root_add_55_2_carry_9_) );
  XOR2X1 U646 ( .A(N142), .B(add_1_root_add_55_2_carry_8_), .Y(N187) );
  AND2X1 U647 ( .A(add_1_root_add_55_2_carry_7_), .B(n326), .Y(
        add_1_root_add_55_2_carry_8_) );
  XOR2X1 U648 ( .A(n326), .B(add_1_root_add_55_2_carry_7_), .Y(N186) );
  AND2X1 U649 ( .A(add_1_root_add_55_2_carry_6_), .B(n393), .Y(
        add_1_root_add_55_2_carry_7_) );
  XOR2X1 U650 ( .A(n393), .B(add_1_root_add_55_2_carry_6_), .Y(N185) );
  AND2X1 U651 ( .A(add_1_root_add_55_2_carry_5_), .B(n394), .Y(
        add_1_root_add_55_2_carry_6_) );
  XOR2X1 U652 ( .A(n394), .B(add_1_root_add_55_2_carry_5_), .Y(N184) );
  AND2X1 U653 ( .A(add_1_root_add_55_2_carry_4_), .B(n395), .Y(
        add_1_root_add_55_2_carry_5_) );
  XOR2X1 U654 ( .A(n395), .B(add_1_root_add_55_2_carry_4_), .Y(N183) );
  AND2X1 U655 ( .A(add_1_root_add_55_2_carry_3_), .B(n3960), .Y(
        add_1_root_add_55_2_carry_4_) );
  XOR2X1 U656 ( .A(n3960), .B(add_1_root_add_55_2_carry_3_), .Y(N182) );
  AND2X1 U657 ( .A(add_1_root_add_85_3_carry_2_), .B(n3970), .Y(
        add_1_root_add_55_2_carry_3_) );
  XOR2X1 U658 ( .A(n3970), .B(add_1_root_add_85_3_carry_2_), .Y(N181) );
  XOR2X1 U659 ( .A(N90), .B(add_1_root_add_67_2_carry_13_), .Y(N268) );
  AND2X1 U660 ( .A(add_1_root_add_67_2_carry_12_), .B(n3880), .Y(
        add_1_root_add_67_2_carry_13_) );
  XOR2X1 U661 ( .A(n3880), .B(add_1_root_add_67_2_carry_12_), .Y(N267) );
  AND2X1 U662 ( .A(add_1_root_add_67_2_carry_11_), .B(n3890), .Y(
        add_1_root_add_67_2_carry_12_) );
  XOR2X1 U663 ( .A(n3890), .B(add_1_root_add_67_2_carry_11_), .Y(N266) );
  AND2X1 U664 ( .A(add_1_root_add_67_2_carry_10_), .B(n390), .Y(
        add_1_root_add_67_2_carry_11_) );
  XOR2X1 U665 ( .A(n390), .B(add_1_root_add_67_2_carry_10_), .Y(N265) );
  AND2X1 U666 ( .A(add_1_root_add_67_2_carry_9_), .B(n391), .Y(
        add_1_root_add_67_2_carry_10_) );
  XOR2X1 U667 ( .A(n391), .B(add_1_root_add_67_2_carry_9_), .Y(N264) );
  AND2X1 U668 ( .A(add_1_root_add_67_2_carry_8_), .B(n392), .Y(
        add_1_root_add_67_2_carry_9_) );
  XOR2X1 U669 ( .A(n392), .B(add_1_root_add_67_2_carry_8_), .Y(N263) );
  AND2X1 U670 ( .A(add_1_root_add_67_2_carry_7_), .B(n3830), .Y(
        add_1_root_add_67_2_carry_8_) );
  XOR2X1 U671 ( .A(n3830), .B(add_1_root_add_67_2_carry_7_), .Y(N262) );
  AND2X1 U672 ( .A(add_1_root_add_67_2_carry_6_), .B(n393), .Y(
        add_1_root_add_67_2_carry_7_) );
  XOR2X1 U673 ( .A(n393), .B(add_1_root_add_67_2_carry_6_), .Y(N261) );
  AND2X1 U674 ( .A(add_1_root_add_67_2_carry_5_), .B(n394), .Y(
        add_1_root_add_67_2_carry_6_) );
  XOR2X1 U675 ( .A(n394), .B(add_1_root_add_67_2_carry_5_), .Y(N260) );
  AND2X1 U676 ( .A(add_1_root_add_67_2_carry_4_), .B(n395), .Y(
        add_1_root_add_67_2_carry_5_) );
  XOR2X1 U677 ( .A(n395), .B(add_1_root_add_67_2_carry_4_), .Y(N259) );
  AND2X1 U678 ( .A(add_1_root_add_67_2_carry_3_), .B(n3960), .Y(
        add_1_root_add_67_2_carry_4_) );
  XOR2X1 U679 ( .A(n3960), .B(add_1_root_add_67_2_carry_3_), .Y(N258) );
  AND2X1 U680 ( .A(add_1_root_add_67_2_carry_2_), .B(n3970), .Y(
        add_1_root_add_67_2_carry_3_) );
  XOR2X1 U681 ( .A(n3970), .B(add_1_root_add_67_2_carry_2_), .Y(N257) );
  XOR2X1 U682 ( .A(N344), .B(add_1_root_add_85_3_carry_13_), .Y(N389) );
  AND2X1 U683 ( .A(add_1_root_add_85_3_carry_12_), .B(N343), .Y(
        add_1_root_add_85_3_carry_13_) );
  XOR2X1 U684 ( .A(N343), .B(add_1_root_add_85_3_carry_12_), .Y(N388) );
  AND2X1 U685 ( .A(add_1_root_add_85_3_carry_11_), .B(N342), .Y(
        add_1_root_add_85_3_carry_12_) );
  XOR2X1 U686 ( .A(N342), .B(add_1_root_add_85_3_carry_11_), .Y(N387) );
  AND2X1 U687 ( .A(add_1_root_add_85_3_carry_10_), .B(N341), .Y(
        add_1_root_add_85_3_carry_11_) );
  XOR2X1 U688 ( .A(N341), .B(add_1_root_add_85_3_carry_10_), .Y(N386) );
  AND2X1 U689 ( .A(add_1_root_add_85_3_carry_9_), .B(N340), .Y(
        add_1_root_add_85_3_carry_10_) );
  XOR2X1 U690 ( .A(N340), .B(add_1_root_add_85_3_carry_9_), .Y(N385) );
  AND2X1 U691 ( .A(add_1_root_add_85_3_carry_8_), .B(N339), .Y(
        add_1_root_add_85_3_carry_9_) );
  XOR2X1 U692 ( .A(N339), .B(add_1_root_add_85_3_carry_8_), .Y(N384) );
  AND2X1 U693 ( .A(add_1_root_add_85_3_carry_7_), .B(N338), .Y(
        add_1_root_add_85_3_carry_8_) );
  XOR2X1 U694 ( .A(N338), .B(add_1_root_add_85_3_carry_7_), .Y(N383) );
  AND2X1 U695 ( .A(add_1_root_add_85_3_carry_6_), .B(n393), .Y(
        add_1_root_add_85_3_carry_7_) );
  XOR2X1 U696 ( .A(n393), .B(add_1_root_add_85_3_carry_6_), .Y(N382) );
  AND2X1 U697 ( .A(add_1_root_add_85_3_carry_5_), .B(n394), .Y(
        add_1_root_add_85_3_carry_6_) );
  XOR2X1 U698 ( .A(n394), .B(add_1_root_add_85_3_carry_5_), .Y(N381) );
  AND2X1 U699 ( .A(add_1_root_add_85_3_carry_4_), .B(n395), .Y(
        add_1_root_add_85_3_carry_5_) );
  XOR2X1 U700 ( .A(n395), .B(add_1_root_add_85_3_carry_4_), .Y(N380) );
  AND2X1 U701 ( .A(add_1_root_add_85_3_carry_3_), .B(n3960), .Y(
        add_1_root_add_85_3_carry_4_) );
  XOR2X1 U702 ( .A(n3960), .B(add_1_root_add_85_3_carry_3_), .Y(N379) );
  AND2X1 U703 ( .A(add_1_root_add_85_3_carry_2_), .B(n3970), .Y(
        add_1_root_add_85_3_carry_3_) );
  XOR2X1 U704 ( .A(n3970), .B(add_1_root_add_85_3_carry_2_), .Y(N378) );
  AND2X1 U705 ( .A(N338), .B(n370), .Y(add_0_root_sub_0_root_sub_73_carry[8])
         );
  AND2X1 U706 ( .A(n326), .B(n371), .Y(add_0_root_sub_0_root_sub_45_2_carry[8]) );
  AND2X1 U707 ( .A(n399), .B(N4610), .Y(N533) );
  AND2X1 U708 ( .A(n3980), .B(N4610), .Y(N534) );
  AND2X1 U709 ( .A(n3970), .B(N4610), .Y(N535) );
  AND2X1 U710 ( .A(n3960), .B(N4610), .Y(N536) );
  AND2X1 U711 ( .A(n395), .B(N4610), .Y(N537) );
  AND2X1 U712 ( .A(n394), .B(N4610), .Y(N538) );
  AND2X1 U713 ( .A(N4610), .B(n393), .Y(N539) );
  NAND2BX1 U714 ( .AN(n3980), .B(n400), .Y(n401) );
  OR2X1 U715 ( .A(n401), .B(n3970), .Y(n402) );
  OR2X1 U716 ( .A(n402), .B(n3960), .Y(n403) );
  OR2X1 U717 ( .A(n403), .B(n395), .Y(n404) );
  OAI2BB1X1 U719 ( .A0N(n3830), .A1N(n392), .B0(n406), .Y(N142) );
  OR2X1 U720 ( .A(n406), .B(n391), .Y(n4070) );
  OAI2BB1X1 U721 ( .A0N(n406), .A1N(n391), .B0(n4070), .Y(N143) );
  NOR2X1 U722 ( .A(n4070), .B(n390), .Y(n4080) );
  AO21X1 U723 ( .A0(n4070), .A1(n390), .B0(n4080), .Y(N144) );
  NAND2X1 U724 ( .A(n4080), .B(n328), .Y(n409) );
  XNOR2X1 U725 ( .A(n3880), .B(n409), .Y(N146) );
  XOR2X1 U727 ( .A(n329), .B(n410), .Y(N147) );
  NAND2BX1 U728 ( .AN(n3980), .B(n400), .Y(n411) );
  OR2X1 U729 ( .A(n411), .B(n3970), .Y(n412) );
  OR2X1 U731 ( .A(n414), .B(n394), .Y(n415) );
  OAI2BB1XL U732 ( .A0N(n399), .A1N(n3980), .B0(n411), .Y(N113) );
  OAI2BB1X1 U733 ( .A0N(n414), .A1N(n394), .B0(n415), .Y(N117) );
  NAND2BX1 U734 ( .AN(temp[4]), .B(gray_data[4]), .Y(n416) );
  OAI222XL U735 ( .A0(temp[5]), .A1(n434), .B0(temp[5]), .B1(n416), .C0(n434), 
        .C1(n416), .Y(n417) );
  OAI222XL U736 ( .A0(n417), .A1(gray_data[6]), .B0(n431), .B1(n417), .C0(
        gray_data[6]), .C1(n431), .Y(n428) );
  OAI22XL U737 ( .A0(n418), .A1(n434), .B0(temp[5]), .B1(n418), .Y(n426) );
  NAND2BX1 U738 ( .AN(temp[2]), .B(gray_data[2]), .Y(n424) );
  OAI21XL U739 ( .A0(temp[1]), .A1(n432), .B0(n419), .Y(n422) );
  NOR2BX1 U740 ( .AN(temp[2]), .B(gray_data[2]), .Y(n420) );
  OAI22XL U741 ( .A0(n420), .A1(n433), .B0(temp[3]), .B1(n420), .Y(n421) );
  AOI2BB2X1 U742 ( .B0(n422), .B1(n421), .A0N(n424), .A1N(n433), .Y(n423) );
  OAI211X1 U743 ( .A0(gray_data[6]), .A1(n431), .B0(n426), .C0(n425), .Y(n427)
         );
  AO22X1 U744 ( .A0(n435), .A1(temp[7]), .B0(n428), .B1(n427), .Y(n429) );
  OAI21XL U745 ( .A0(temp[7]), .A1(n435), .B0(n429), .Y(r543_GE_LT_GT_LE) );
  DFFQX4 temp_reg_1__4_ ( .D(n300), .CK(clk), .Q(N350) );
  DFFSX4 mid_y_reg_0_ ( .D(n296), .CK(clk), .SN(n436), .Q(n399), .QN(n400) );
  INVXL U356 ( .A(N350), .Y(N319) );
  LBP_DW01_inc_0_DW01_inc_1 add_51 ( .A({temp[8], n3870, n3860, N350, N318, 
        N272, N233, N194}), .SUM({N156, N155, N154, N153, N152, N151, N150, 
        N149}) );
  LBP_DW01_inc_2_DW01_inc_3 add_109_aco ( .A({N539, N538, N537, N536, N535, 
        N534, N533}), .SUM({N4750, N4740, N4730, N4720, N4710, N4700, N4690})
         );
  LBP_DW01_inc_1_DW01_inc_2 r551 ( .A({n329, n3880, n3890, n390, n391, n392, 
        n3830}), .SUM({N344, N343, N342, N341, N340, N339, N338}) );
  LBP_DW01_dec_2 sub_0_root_sub_61 ( .A({N90, n3880, n3890, n390, n391, n392, 
        n3830, n393, n394, n395, n3960, n3970, n3980, n399}), .SUM({N230, N229, 
        N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217}) );
  DFFX1 temp_reg_0__7_ ( .D(n3050), .CK(clk), .Q(temp[7]) );
  DFFX1 gray_addr_reg_13_ ( .D(n2760), .CK(clk), .Q(n454) );
  NOR2X4 U514 ( .A(n870), .B(reset), .Y(n840) );
  OAI2BB1X4 U445 ( .A0N(n214), .A1N(n174), .B0(n173), .Y(n177) );
  OR2X1 U258 ( .A(N4610), .B(n900), .Y(n492) );
  INVXL U300 ( .A(temp[0]), .Y(n430) );
  INVX1 U302 ( .A(gray_data[3]), .Y(n433) );
  INVXL U304 ( .A(temp[6]), .Y(n431) );
  NOR2XL U308 ( .A(n3880), .B(n409), .Y(n410) );
  BUFX2 U310 ( .A(N2990), .Y(n370) );
  OR2X2 U321 ( .A(n404), .B(n394), .Y(n405) );
  OR2X2 U358 ( .A(n412), .B(n3960), .Y(n413) );
  AO21X1 U369 ( .A0(n405), .A1(n393), .B0(n370), .Y(N306) );
  AND4X1 U376 ( .A(n399), .B(n3980), .C(n3970), .D(n3960), .Y(n243) );
  AOI22XL U397 ( .A0(N268), .A1(n3780), .B0(N230), .B1(n102), .Y(n96) );
  AOI22XL U408 ( .A0(N267), .A1(n3780), .B0(N229), .B1(n376), .Y(n110) );
  AOI22XL U410 ( .A0(N263), .A1(n3780), .B0(N225), .B1(n376), .Y(n130) );
  AOI22XL U420 ( .A0(N119), .A1(n373), .B0(N338), .B1(n447), .Y(n133) );
  AOI22XL U424 ( .A0(N257), .A1(n377), .B0(N219), .B1(n376), .Y(n160) );
  AO22XL U447 ( .A0(N150), .A1(n375), .B0(N195), .B1(n446), .Y(n209) );
  AO22XL U449 ( .A0(N194), .A1(n376), .B0(N194), .B1(n3780), .Y(n2210) );
  INVXL U450 ( .A(n2360), .Y(n442) );
  NAND4XL U473 ( .A(n168), .B(n169), .C(n170), .D(n171), .Y(n167) );
  BUFX2 U503 ( .A(N86), .Y(n391) );
  AO22XL U513 ( .A0(temp[7]), .A1(n374), .B0(gray_data[7]), .B1(n438), .Y(
        n3050) );
  AO22XL U517 ( .A0(n840), .A1(n395), .B0(lbp_addr[4]), .B1(n3840), .Y(n271)
         );
  AO22XL U532 ( .A0(n840), .A1(N272), .B0(lbp_data[2]), .B1(n3840), .Y(n255)
         );
  AO22XL U544 ( .A0(n870), .A1(n3980), .B0(N4700), .B1(n440), .Y(n290) );
  AO22XL U547 ( .A0(n441), .A1(n3890), .B0(N342), .B1(n2390), .Y(n3210) );
  XOR2X1 U575 ( .A(n3980), .B(n399), .Y(N256) );
endmodule

