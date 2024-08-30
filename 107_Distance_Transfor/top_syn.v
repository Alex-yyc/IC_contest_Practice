/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Thu Jul 20 15:59:14 2023
/////////////////////////////////////////////////////////////


module LBP_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_dec_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  NAND2BXL U1 ( .AN(A[1]), .B(SUM[0]), .Y(n13) );
  OAI2BB1XL U2 ( .A0N(A[0]), .A1N(A[1]), .B0(n13), .Y(SUM[1]) );
  CLKINVX1 U3 ( .A(n16), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U5 ( .A(A[10]), .Y(n4) );
  CLKINVX1 U6 ( .A(A[11]), .Y(n3) );
  AO21X1 U7 ( .A0(n5), .A1(A[9]), .B0(n6), .Y(SUM[9]) );
  OAI2BB1X1 U8 ( .A0N(n7), .A1N(A[8]), .B0(n5), .Y(SUM[8]) );
  OAI2BB1X1 U9 ( .A0N(n8), .A1N(A[7]), .B0(n7), .Y(SUM[7]) );
  OAI2BB1X1 U10 ( .A0N(n9), .A1N(A[6]), .B0(n8), .Y(SUM[6]) );
  OAI2BB1X1 U11 ( .A0N(n10), .A1N(A[5]), .B0(n9), .Y(SUM[5]) );
  OAI2BB1X1 U12 ( .A0N(n11), .A1N(A[4]), .B0(n10), .Y(SUM[4]) );
  OAI2BB1X1 U13 ( .A0N(n12), .A1N(A[3]), .B0(n11), .Y(SUM[3]) );
  OAI2BB1X1 U14 ( .A0N(n13), .A1N(A[2]), .B0(n12), .Y(SUM[2]) );
  XOR2X1 U15 ( .A(A[13]), .B(n14), .Y(SUM[13]) );
  NOR2X1 U16 ( .A(A[12]), .B(n15), .Y(n14) );
  XNOR2X1 U17 ( .A(A[12]), .B(n15), .Y(SUM[12]) );
  OAI21XL U18 ( .A0(n2), .A1(n3), .B0(n15), .Y(SUM[11]) );
  NAND2X1 U19 ( .A(n2), .B(n3), .Y(n15) );
  OAI21XL U20 ( .A0(n6), .A1(n4), .B0(n16), .Y(SUM[10]) );
  NAND2X1 U21 ( .A(n6), .B(n4), .Y(n16) );
  NOR2X1 U22 ( .A(n5), .B(A[9]), .Y(n6) );
  OR2X1 U23 ( .A(n7), .B(A[8]), .Y(n5) );
  OR2X1 U24 ( .A(n8), .B(A[7]), .Y(n7) );
  OR2X1 U25 ( .A(n9), .B(A[6]), .Y(n8) );
  OR2X1 U26 ( .A(n10), .B(A[5]), .Y(n9) );
  OR2X1 U27 ( .A(n11), .B(A[4]), .Y(n10) );
  OR2X1 U28 ( .A(n12), .B(A[3]), .Y(n11) );
  OR2X1 U29 ( .A(n13), .B(A[2]), .Y(n12) );
endmodule


module LBP_DW01_inc_3_DW01_inc_4 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_2_DW01_inc_3 ( A, SUM );
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


module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, 
        lbp_valid, lbp_data, finish );
  output [13:0] gray_addr;
  input [7:0] gray_data;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, \mid_y[7] , \temp[1][7] , \temp[0][7] ,
         \temp[0][6] , \temp[0][5] , \temp[0][4] , \temp[0][3] , \temp[0][2] ,
         \temp[0][1] , \temp[0][0] , N100, N101, N102, N103, N104, N105, N106,
         N129, N130, N131, N132, N133, N134, N135, N136, N137, N138, N139,
         N140, N141, N150, N151, N152, N153, N154, N155, N156, N157, N158,
         N159, N160, N161, N162, N185, N186, N187, N188, N189, N190, N191,
         N192, N193, N194, N195, N196, N197, N212, N213, N214, N215, N216,
         N217, N218, N219, N220, N221, N222, N223, N224, N225, N241, N242,
         N243, N244, N245, N246, N247, N248, N249, N250, N251, N252, N253,
         N276, N277, N278, N279, N280, N281, N282, N283, N284, N285, N286,
         N287, N288, N303, N304, N305, N306, N307, N308, N309, N333, N334,
         N335, N336, N337, N338, N339, N340, N341, N342, N343, N344, N399,
         N400, N401, N402, N403, N404, N405, N406, N409, N411, N412, N413,
         N414, N415, N416, N420, N422, N423, N424, N425, N426, N431, N433,
         N434, N435, N436, N442, N444, N445, N446, N453, N455, N456, N464,
         N466, N475, N476, N519, N520, N521, N522, N523, N524, N525, N526,
         N527, N528, N529, N530, N531, N532, N533, N534, N613, n92, n93, n94,
         n95, n98, n99, n100, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n120, n121,
         n122, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, N622, N621,
         N620, N619, N618, N617, N616, N615, N127, N121, N113, N112, N111,
         N110, N109, N108, N274, N268, N260, N259, N258, N257, N256, N255,
         N254, \r550/GE_LT_GT_LE , \add_129/carry[7] ,
         \add_1_root_add_80_2/carry[2] , \add_1_root_add_80_2/carry[3] ,
         \add_1_root_add_80_2/carry[4] , \add_1_root_add_80_2/carry[5] ,
         \add_1_root_add_80_2/carry[6] , \add_1_root_add_80_2/carry[7] ,
         \add_1_root_add_80_2/carry[8] , \add_1_root_add_80_2/carry[9] ,
         \add_1_root_add_80_2/carry[10] , \add_1_root_add_80_2/carry[11] ,
         \add_1_root_add_80_2/carry[12] , \add_1_root_add_80_2/carry[13] ,
         \add_1_root_add_89_3/carry[2] , \add_1_root_add_89_3/carry[3] ,
         \add_1_root_add_89_3/carry[4] , \add_1_root_add_89_3/carry[5] ,
         \add_1_root_add_89_3/carry[6] , \add_1_root_add_89_3/carry[7] ,
         \add_1_root_add_89_3/carry[8] , \add_1_root_add_89_3/carry[9] ,
         \add_1_root_add_89_3/carry[10] , \add_1_root_add_89_3/carry[11] ,
         \add_1_root_add_89_3/carry[12] , \add_1_root_add_89_3/carry[13] ,
         \add_1_root_add_74_2/carry[2] , \add_1_root_add_74_2/carry[3] ,
         \add_1_root_add_74_2/carry[4] , \add_1_root_add_74_2/carry[5] ,
         \add_1_root_add_74_2/carry[6] , \add_1_root_add_74_2/carry[7] ,
         \add_1_root_add_74_2/carry[8] , \add_1_root_add_74_2/carry[9] ,
         \add_1_root_add_74_2/carry[10] , \add_1_root_add_74_2/carry[11] ,
         \add_1_root_add_74_2/carry[12] , \add_1_root_add_74_2/carry[13] ,
         n341, n342, n343, n344, n345, n348, n350, n352, n354, n356, n358,
         n360, n362, n364, n366, n368, n370, n372, n374, n376, n378, n380,
         n382, n384, n386, n388, n390, n392, n394, n396, n398, n400, n402,
         n404, n406, n408, n410, n412, n414, n416, n418, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516;
  wire   [7:0] mid_x;
  wire   [3:0] count;
  wire   [2:0] STATE;
  wire   [7:1] \add_124/carry ;
  wire   [7:1] \add_119/carry ;
  wire   [7:1] \add_114/carry ;
  wire   [7:1] \add_109/carry ;
  wire   [13:1] \r537/carry ;
  wire   [13:1] \add_0_root_sub_0_root_sub_83/carry ;
  wire   [13:1] \add_86_2/carry ;
  wire   [13:1] \add_0_root_sub_0_root_sub_68_2/carry ;
  wire   [13:1] \add_71/carry ;

  LBP_DW01_inc_0_DW01_inc_1 add_165 ( .A({mid_x[7:6], n445, n446, n447, n448, 
        n449, n422}), .SUM({N526, N525, N524, N523, N522, N521, N520, N519})
         );
  LBP_DW01_inc_1_DW01_inc_2 add_104 ( .A({\temp[1][7] , n443, n444, n442, n441, 
        n440, n439, N409}), .SUM({N406, N405, N404, N403, N402, N401, N400, 
        N399}) );
  LBP_DW01_dec_0 sub_0_root_sub_77 ( .A({N106, N105, N104, N103, N102, N101, 
        N100, n451, n452, n453, n454, n455, n456, n472}), .SUM({N225, N224, 
        N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, N212}) );
  LBP_DW01_inc_3_DW01_inc_4 add_161_aco ( .A({N622, N621, N620, N619, N618, 
        N617, N616, N615}), .SUM({N534, N533, N532, N531, N530, N529, N528, 
        N527}) );
  LBP_DW01_inc_2_DW01_inc_3 r545 ( .A({mid_x[6], n445, n446, n447, n448, n449, 
        n422}), .SUM({N260, N259, N258, N257, N256, N255, N254}) );
  DFFRX1 \temp_reg[1][6]  ( .D(n267), .CK(clk), .RN(n463), .Q(N475), .QN(n102)
         );
  DFFRX1 \temp_reg[1][5]  ( .D(n269), .CK(clk), .RN(n462), .Q(N464), .QN(n103)
         );
  DFFRX1 \temp_reg[1][4]  ( .D(n271), .CK(clk), .RN(n463), .Q(N453), .QN(n104)
         );
  DFFRX1 \temp_reg[0][7]  ( .D(n280), .CK(clk), .RN(n462), .Q(\temp[0][7] ) );
  DFFRX1 \temp_reg[1][3]  ( .D(n273), .CK(clk), .RN(n463), .Q(N442), .QN(n105)
         );
  DFFRX1 \temp_reg[0][6]  ( .D(n281), .CK(clk), .RN(n462), .Q(\temp[0][6] ), 
        .QN(n344) );
  DFFRX1 \temp_reg[1][1]  ( .D(n279), .CK(clk), .RN(n463), .Q(N420), .QN(n107)
         );
  DFFRX1 \temp_reg[1][2]  ( .D(n275), .CK(clk), .RN(n463), .Q(N431), .QN(n106)
         );
  DFFRX1 \mid_x_reg[5]  ( .D(n330), .CK(clk), .RN(n459), .Q(mid_x[5]) );
  DFFRX1 \mid_x_reg[7]  ( .D(n336), .CK(clk), .RN(n458), .Q(mid_x[7]) );
  DFFRX1 \temp_reg[0][5]  ( .D(n282), .CK(clk), .RN(n462), .Q(\temp[0][5] ) );
  DFFRX1 \temp_reg[0][3]  ( .D(n284), .CK(clk), .RN(n462), .Q(\temp[0][3] ) );
  DFFRX1 \temp_reg[0][0]  ( .D(n287), .CK(clk), .RN(n462), .Q(\temp[0][0] ), 
        .QN(n343) );
  DFFRX1 \temp_reg[0][1]  ( .D(n286), .CK(clk), .RN(n462), .Q(\temp[0][1] ) );
  DFFRX1 \mid_x_reg[4]  ( .D(n331), .CK(clk), .RN(n459), .Q(mid_x[4]), .QN(
        n342) );
  DFFRX1 \temp_reg[0][4]  ( .D(n283), .CK(clk), .RN(n462), .Q(\temp[0][4] ) );
  DFFRX1 \temp_reg[0][2]  ( .D(n285), .CK(clk), .RN(n462), .Q(\temp[0][2] ) );
  DFFRX1 \mid_x_reg[3]  ( .D(n332), .CK(clk), .RN(n459), .Q(mid_x[3]) );
  DFFRX1 \mid_x_reg[2]  ( .D(n333), .CK(clk), .RN(n459), .Q(mid_x[2]) );
  DFFSX1 \mid_x_reg[0]  ( .D(n335), .CK(clk), .SN(n509), .Q(mid_x[0]), .QN(
        n341) );
  DFFRX1 \mid_x_reg[1]  ( .D(n334), .CK(clk), .RN(n459), .Q(mid_x[1]) );
  DFFRX1 \mid_y_reg[7]  ( .D(n324), .CK(clk), .RN(n458), .Q(\mid_y[7] ) );
  DFFRX1 \mid_y_reg[6]  ( .D(n323), .CK(clk), .RN(n458), .Q(N155) );
  DFFRX1 \mid_y_reg[5]  ( .D(n322), .CK(clk), .RN(n458), .Q(N154) );
  DFFRX1 \mid_y_reg[4]  ( .D(n321), .CK(clk), .RN(n458), .Q(N153) );
  DFFRX1 \mid_y_reg[3]  ( .D(n320), .CK(clk), .RN(n458), .Q(N152) );
  DFFRX1 \mid_y_reg[2]  ( .D(n319), .CK(clk), .RN(n458), .Q(N151) );
  DFFRX1 \mid_y_reg[1]  ( .D(n318), .CK(clk), .RN(n458), .Q(N150) );
  DFFRX1 \STATE_reg[0]  ( .D(n328), .CK(clk), .RN(n458), .Q(STATE[0]), .QN(n94) );
  DFFRX1 \STATE_reg[1]  ( .D(n327), .CK(clk), .RN(n460), .Q(STATE[1]), .QN(n93) );
  DFFRX1 \STATE_reg[2]  ( .D(n337), .CK(clk), .RN(n460), .Q(STATE[2]), .QN(n92) );
  DFFRX1 \count_reg[0]  ( .D(n340), .CK(clk), .RN(n458), .Q(count[0]), .QN(
        n100) );
  DFFRX1 \count_reg[1]  ( .D(n325), .CK(clk), .RN(n460), .Q(count[1]), .QN(n99) );
  DFFRX1 \count_reg[3]  ( .D(n339), .CK(clk), .RN(n458), .Q(count[3]) );
  DFFRX1 gray_req_reg ( .D(n338), .CK(clk), .RN(n458), .Q(n530), .QN(n95) );
  DFFRX1 lbp_valid_reg ( .D(n302), .CK(clk), .RN(n460), .Q(n545), .QN(n418) );
  DFFRX1 \gray_addr_reg[12]  ( .D(n299), .CK(clk), .RN(n462), .Q(n517), .QN(
        n416) );
  DFFRX1 \gray_addr_reg[11]  ( .D(n298), .CK(clk), .RN(n461), .Q(n518), .QN(
        n414) );
  DFFRX1 \gray_addr_reg[10]  ( .D(n297), .CK(clk), .RN(n461), .Q(n519), .QN(
        n412) );
  DFFRX1 \gray_addr_reg[9]  ( .D(n296), .CK(clk), .RN(n461), .Q(n520), .QN(
        n410) );
  DFFRX1 \gray_addr_reg[8]  ( .D(n295), .CK(clk), .RN(n461), .Q(n521), .QN(
        n408) );
  DFFRX1 \gray_addr_reg[7]  ( .D(n294), .CK(clk), .RN(n461), .Q(n522), .QN(
        n406) );
  DFFRX1 \gray_addr_reg[6]  ( .D(n293), .CK(clk), .RN(n461), .Q(n523), .QN(
        n404) );
  DFFRX1 \gray_addr_reg[5]  ( .D(n292), .CK(clk), .RN(n461), .Q(n524), .QN(
        n402) );
  DFFRX1 \gray_addr_reg[4]  ( .D(n291), .CK(clk), .RN(n461), .Q(n525), .QN(
        n400) );
  DFFRX1 \gray_addr_reg[3]  ( .D(n290), .CK(clk), .RN(n461), .Q(n526), .QN(
        n398) );
  DFFRX1 \gray_addr_reg[2]  ( .D(n289), .CK(clk), .RN(n461), .Q(n527), .QN(
        n396) );
  DFFRX1 \lbp_addr_reg[13]  ( .D(n315), .CK(clk), .RN(n460), .Q(n531), .QN(
        n394) );
  DFFRX1 \lbp_addr_reg[12]  ( .D(n314), .CK(clk), .RN(n460), .Q(n532), .QN(
        n392) );
  DFFRX1 \lbp_addr_reg[11]  ( .D(n313), .CK(clk), .RN(n460), .Q(n533), .QN(
        n390) );
  DFFRX1 \lbp_addr_reg[10]  ( .D(n312), .CK(clk), .RN(n460), .Q(n534), .QN(
        n388) );
  DFFRX1 \lbp_addr_reg[9]  ( .D(n311), .CK(clk), .RN(n460), .Q(n535), .QN(n386) );
  DFFRX1 \lbp_addr_reg[8]  ( .D(n310), .CK(clk), .RN(n460), .Q(n536), .QN(n384) );
  DFFRX1 \lbp_addr_reg[7]  ( .D(n309), .CK(clk), .RN(n460), .Q(n537), .QN(n382) );
  DFFRX1 \lbp_addr_reg[6]  ( .D(n308), .CK(clk), .RN(n460), .Q(n538), .QN(n380) );
  DFFRX1 \lbp_addr_reg[5]  ( .D(n307), .CK(clk), .RN(n459), .Q(n539), .QN(n378) );
  DFFRX1 \lbp_addr_reg[4]  ( .D(n306), .CK(clk), .RN(n459), .Q(n540), .QN(n376) );
  DFFRX1 \lbp_addr_reg[3]  ( .D(n305), .CK(clk), .RN(n459), .Q(n541), .QN(n374) );
  DFFRX1 \lbp_addr_reg[2]  ( .D(n304), .CK(clk), .RN(n459), .Q(n542), .QN(n372) );
  DFFRX1 \lbp_addr_reg[1]  ( .D(n303), .CK(clk), .RN(n459), .Q(n543), .QN(n370) );
  DFFRX1 \lbp_addr_reg[0]  ( .D(n316), .CK(clk), .RN(n459), .Q(n544), .QN(n368) );
  DFFRX1 \gray_addr_reg[0]  ( .D(n301), .CK(clk), .RN(n462), .Q(n529), .QN(
        n366) );
  DFFRX1 \gray_addr_reg[1]  ( .D(n288), .CK(clk), .RN(n461), .Q(n528), .QN(
        n364) );
  DFFRX1 \lbp_data_reg[5]  ( .D(n268), .CK(clk), .RN(n509), .Q(n548), .QN(n362) );
  DFFRX1 \lbp_data_reg[7]  ( .D(n264), .CK(clk), .RN(n509), .Q(n546), .QN(n360) );
  DFFRX1 \lbp_data_reg[6]  ( .D(n266), .CK(clk), .RN(n509), .Q(n547), .QN(n358) );
  DFFRX1 \lbp_data_reg[4]  ( .D(n270), .CK(clk), .RN(n463), .Q(n549), .QN(n356) );
  DFFRX1 \lbp_data_reg[3]  ( .D(n272), .CK(clk), .RN(n463), .Q(n550), .QN(n354) );
  DFFRX1 \lbp_data_reg[2]  ( .D(n274), .CK(clk), .RN(n463), .Q(n551), .QN(n352) );
  DFFRX1 \lbp_data_reg[1]  ( .D(n278), .CK(clk), .RN(n463), .Q(n552), .QN(n350) );
  DFFRX1 \lbp_data_reg[0]  ( .D(n276), .CK(clk), .RN(n463), .Q(n553), .QN(n348) );
  DFFRXL \gray_addr_reg[13]  ( .D(n300), .CK(clk), .RN(n509), .QN(n345) );
  DFFSX2 \mid_y_reg[0]  ( .D(n317), .CK(clk), .SN(n509), .QN(n473) );
  DFFRX2 \mid_x_reg[6]  ( .D(n329), .CK(clk), .RN(n509), .Q(mid_x[6]) );
  DFFRX2 \count_reg[2]  ( .D(n326), .CK(clk), .RN(n509), .Q(count[2]), .QN(n98) );
  DFFRX2 \temp_reg[1][7]  ( .D(n265), .CK(clk), .RN(n509), .Q(\temp[1][7] ), 
        .QN(N476) );
  DFFRX2 \temp_reg[1][0]  ( .D(n277), .CK(clk), .RN(n509), .Q(N409), .QN(n108)
         );
  INVX3 U258 ( .A(reset), .Y(n509) );
  INVX12 U259 ( .A(n345), .Y(gray_addr[13]) );
  NOR2X2 U260 ( .A(n490), .B(n450), .Y(N274) );
  OR2X1 U261 ( .A(N613), .B(n222), .Y(n554) );
  INVX12 U262 ( .A(n554), .Y(finish) );
  INVX12 U263 ( .A(n348), .Y(lbp_data[0]) );
  INVX12 U264 ( .A(n350), .Y(lbp_data[1]) );
  INVX12 U265 ( .A(n352), .Y(lbp_data[2]) );
  INVX12 U266 ( .A(n354), .Y(lbp_data[3]) );
  INVX12 U267 ( .A(n356), .Y(lbp_data[4]) );
  INVX12 U268 ( .A(n358), .Y(lbp_data[6]) );
  INVX12 U269 ( .A(n360), .Y(lbp_data[7]) );
  INVX12 U270 ( .A(n362), .Y(lbp_data[5]) );
  INVX12 U271 ( .A(n364), .Y(gray_addr[1]) );
  INVX12 U272 ( .A(n366), .Y(gray_addr[0]) );
  INVX12 U273 ( .A(n368), .Y(lbp_addr[0]) );
  INVX12 U274 ( .A(n370), .Y(lbp_addr[1]) );
  INVX12 U275 ( .A(n372), .Y(lbp_addr[2]) );
  INVX12 U276 ( .A(n374), .Y(lbp_addr[3]) );
  INVX12 U277 ( .A(n376), .Y(lbp_addr[4]) );
  INVX12 U278 ( .A(n378), .Y(lbp_addr[5]) );
  INVX12 U279 ( .A(n380), .Y(lbp_addr[6]) );
  INVX12 U280 ( .A(n382), .Y(lbp_addr[7]) );
  INVX12 U281 ( .A(n384), .Y(lbp_addr[8]) );
  INVX12 U282 ( .A(n386), .Y(lbp_addr[9]) );
  INVX12 U283 ( .A(n388), .Y(lbp_addr[10]) );
  INVX12 U284 ( .A(n390), .Y(lbp_addr[11]) );
  INVX12 U285 ( .A(n392), .Y(lbp_addr[12]) );
  INVX12 U286 ( .A(n394), .Y(lbp_addr[13]) );
  INVX12 U287 ( .A(n396), .Y(gray_addr[2]) );
  INVX12 U288 ( .A(n398), .Y(gray_addr[3]) );
  INVX12 U289 ( .A(n400), .Y(gray_addr[4]) );
  INVX12 U290 ( .A(n402), .Y(gray_addr[5]) );
  INVX12 U291 ( .A(n404), .Y(gray_addr[6]) );
  INVX12 U292 ( .A(n406), .Y(gray_addr[7]) );
  INVX12 U293 ( .A(n408), .Y(gray_addr[8]) );
  INVX12 U294 ( .A(n410), .Y(gray_addr[9]) );
  INVX12 U295 ( .A(n412), .Y(gray_addr[10]) );
  INVX12 U296 ( .A(n414), .Y(gray_addr[11]) );
  INVX12 U297 ( .A(n416), .Y(gray_addr[12]) );
  INVX12 U298 ( .A(n418), .Y(lbp_valid) );
  BUFX12 U299 ( .A(n530), .Y(gray_req) );
  OAI21X1 U300 ( .A0(n476), .A1(n342), .B0(n477), .Y(N111) );
  AND2XL U301 ( .A(\add_71/carry [11]), .B(N111), .Y(\add_71/carry [12]) );
  AND2XL U302 ( .A(\add_1_root_add_74_2/carry[11] ), .B(N111), .Y(
        \add_1_root_add_74_2/carry[12] ) );
  XOR2XL U303 ( .A(N111), .B(\add_1_root_add_74_2/carry[11] ), .Y(N195) );
  XOR3X1 U304 ( .A(N113), .B(N127), .C(
        \add_0_root_sub_0_root_sub_68_2/carry [13]), .Y(N141) );
  AND2XL U305 ( .A(n472), .B(n456), .Y(\add_1_root_add_89_3/carry[2] ) );
  AND2XL U306 ( .A(n472), .B(n456), .Y(\add_1_root_add_74_2/carry[2] ) );
  AND2XL U307 ( .A(n472), .B(n456), .Y(\add_1_root_add_80_2/carry[2] ) );
  XOR2XL U308 ( .A(N121), .B(n341), .Y(N135) );
  NOR2BX1 U309 ( .AN(n262), .B(n263), .Y(n221) );
  NAND4BXL U310 ( .AN(n450), .B(n472), .C(n456), .D(n455), .Y(n263) );
  OAI2BB1XL U311 ( .A0N(n489), .A1N(n451), .B0(n490), .Y(N281) );
  OAI2BB1XL U312 ( .A0N(n488), .A1N(n452), .B0(n489), .Y(N280) );
  OAI2BB1XL U313 ( .A0N(n487), .A1N(n453), .B0(n488), .Y(N279) );
  OAI2BB1XL U314 ( .A0N(n486), .A1N(n454), .B0(n487), .Y(N278) );
  OAI2BB1XL U315 ( .A0N(n485), .A1N(n455), .B0(n486), .Y(N277) );
  OAI2BB1XL U316 ( .A0N(n472), .A1N(n456), .B0(n485), .Y(N276) );
  OAI2BB1XL U317 ( .A0N(n472), .A1N(n456), .B0(n479), .Y(N129) );
  XOR2XL U318 ( .A(n456), .B(n472), .Y(N185) );
  CLKBUFX3 U319 ( .A(\mid_y[7] ), .Y(n450) );
  CLKINVX1 U320 ( .A(n121), .Y(n424) );
  CLKBUFX3 U321 ( .A(n148), .Y(n437) );
  AOI22XL U322 ( .A0(n456), .A1(n430), .B0(N129), .B1(n429), .Y(n149) );
  OR4X1 U323 ( .A(n98), .B(n457), .C(count[1]), .D(count[3]), .Y(n421) );
  CLKBUFX3 U324 ( .A(n146), .Y(n436) );
  NAND3X1 U325 ( .A(STATE[1]), .B(n92), .C(STATE[0]), .Y(n124) );
  NOR3X1 U326 ( .A(STATE[1]), .B(STATE[2]), .C(STATE[0]), .Y(n233) );
  NOR2X2 U327 ( .A(n484), .B(n450), .Y(N127) );
  INVX3 U328 ( .A(n236), .Y(n515) );
  INVX3 U329 ( .A(n468), .Y(n464) );
  CLKINVX1 U330 ( .A(n224), .Y(n512) );
  INVX3 U331 ( .A(n467), .Y(n465) );
  ADDFXL U332 ( .A(N255), .B(N274), .CI(
        \add_0_root_sub_0_root_sub_83/carry [8]), .CO(
        \add_0_root_sub_0_root_sub_83/carry [9]), .S(N283) );
  ADDFXL U333 ( .A(N256), .B(N274), .CI(
        \add_0_root_sub_0_root_sub_83/carry [9]), .CO(
        \add_0_root_sub_0_root_sub_83/carry [10]), .S(N284) );
  ADDFXL U334 ( .A(N257), .B(N274), .CI(
        \add_0_root_sub_0_root_sub_83/carry [10]), .CO(
        \add_0_root_sub_0_root_sub_83/carry [11]), .S(N285) );
  ADDFXL U335 ( .A(N258), .B(N274), .CI(
        \add_0_root_sub_0_root_sub_83/carry [11]), .CO(
        \add_0_root_sub_0_root_sub_83/carry [12]), .S(N286) );
  ADDFXL U336 ( .A(N259), .B(N274), .CI(
        \add_0_root_sub_0_root_sub_83/carry [12]), .CO(
        \add_0_root_sub_0_root_sub_83/carry [13]), .S(N287) );
  ADDFXL U337 ( .A(N108), .B(N127), .CI(
        \add_0_root_sub_0_root_sub_68_2/carry [8]), .CO(
        \add_0_root_sub_0_root_sub_68_2/carry [9]), .S(N136) );
  ADDFXL U338 ( .A(N109), .B(N127), .CI(
        \add_0_root_sub_0_root_sub_68_2/carry [9]), .CO(
        \add_0_root_sub_0_root_sub_68_2/carry [10]), .S(N137) );
  ADDFXL U339 ( .A(N110), .B(N127), .CI(
        \add_0_root_sub_0_root_sub_68_2/carry [10]), .CO(
        \add_0_root_sub_0_root_sub_68_2/carry [11]), .S(N138) );
  ADDFXL U340 ( .A(N111), .B(N127), .CI(
        \add_0_root_sub_0_root_sub_68_2/carry [11]), .CO(
        \add_0_root_sub_0_root_sub_68_2/carry [12]), .S(N139) );
  ADDFXL U341 ( .A(N112), .B(N127), .CI(
        \add_0_root_sub_0_root_sub_68_2/carry [12]), .CO(
        \add_0_root_sub_0_root_sub_68_2/carry [13]), .S(N140) );
  INVX3 U342 ( .A(n221), .Y(N613) );
  AO22X1 U343 ( .A0(n465), .A1(n472), .B0(N527), .B1(n469), .Y(n317) );
  NAND2X2 U344 ( .A(n466), .B(n221), .Y(n236) );
  CLKINVX1 U345 ( .A(n231), .Y(n511) );
  INVX3 U346 ( .A(n438), .Y(n513) );
  CLKBUFX3 U347 ( .A(n470), .Y(n468) );
  CLKBUFX3 U348 ( .A(n470), .Y(n466) );
  NAND2X1 U349 ( .A(n514), .B(n231), .Y(n224) );
  CLKBUFX3 U350 ( .A(n470), .Y(n467) );
  CLKBUFX3 U351 ( .A(n509), .Y(n463) );
  CLKBUFX3 U352 ( .A(n509), .Y(n462) );
  CLKBUFX3 U353 ( .A(n509), .Y(n461) );
  CLKBUFX3 U354 ( .A(n509), .Y(n460) );
  CLKBUFX3 U355 ( .A(n509), .Y(n459) );
  CLKBUFX3 U356 ( .A(n509), .Y(n458) );
  NAND2X2 U357 ( .A(n514), .B(n109), .Y(n111) );
  AOI22X1 U358 ( .A0(N162), .A1(n431), .B0(N141), .B1(n429), .Y(n209) );
  AOI22X1 U359 ( .A0(N287), .A1(n426), .B0(N252), .B1(n423), .Y(n206) );
  AOI22X1 U360 ( .A0(N161), .A1(n431), .B0(N140), .B1(n429), .Y(n204) );
  AOI22X1 U361 ( .A0(N160), .A1(n431), .B0(N139), .B1(n429), .Y(n199) );
  AOI22X1 U362 ( .A0(N286), .A1(n426), .B0(N251), .B1(n423), .Y(n201) );
  AOI22X1 U363 ( .A0(N285), .A1(n425), .B0(N250), .B1(n120), .Y(n196) );
  AOI22X1 U364 ( .A0(N159), .A1(n431), .B0(N138), .B1(n429), .Y(n194) );
  AOI22X1 U365 ( .A0(N284), .A1(n425), .B0(N249), .B1(n423), .Y(n191) );
  AOI22X1 U366 ( .A0(N158), .A1(n431), .B0(N137), .B1(n429), .Y(n189) );
  AOI22X1 U367 ( .A0(N283), .A1(n426), .B0(N248), .B1(n423), .Y(n186) );
  AOI22X1 U368 ( .A0(N157), .A1(n431), .B0(N136), .B1(n429), .Y(n184) );
  AOI22X1 U369 ( .A0(N156), .A1(n431), .B0(N135), .B1(n429), .Y(n179) );
  AOI22X1 U370 ( .A0(N282), .A1(n426), .B0(N247), .B1(n423), .Y(n181) );
  INVX3 U371 ( .A(n473), .Y(n472) );
  ADDFXL U372 ( .A(N254), .B(n450), .CI(\add_1_root_add_89_3/carry[7] ), .CO(
        \add_1_root_add_89_3/carry[8] ), .S(N338) );
  ADDFXL U373 ( .A(n341), .B(n450), .CI(\add_1_root_add_74_2/carry[7] ), .CO(
        \add_1_root_add_74_2/carry[8] ), .S(N191) );
  ADDFXL U374 ( .A(n422), .B(n450), .CI(\add_1_root_add_80_2/carry[7] ), .CO(
        \add_1_root_add_80_2/carry[8] ), .S(N247) );
  OR2X1 U375 ( .A(n449), .B(n422), .Y(n474) );
  AOI22X1 U376 ( .A0(N281), .A1(n425), .B0(N246), .B1(n423), .Y(n176) );
  AOI22X1 U377 ( .A0(n451), .A1(n431), .B0(N134), .B1(n429), .Y(n174) );
  AOI22X1 U378 ( .A0(N280), .A1(n425), .B0(N245), .B1(n423), .Y(n171) );
  AND4X1 U379 ( .A(n454), .B(n453), .C(n452), .D(n451), .Y(n262) );
  AOI22X1 U380 ( .A0(n452), .A1(n431), .B0(N133), .B1(n429), .Y(n169) );
  AOI22X1 U381 ( .A0(N279), .A1(n426), .B0(N244), .B1(n423), .Y(n166) );
  AOI22X1 U382 ( .A0(n453), .A1(n431), .B0(N132), .B1(n429), .Y(n164) );
  INVX3 U383 ( .A(n437), .Y(n510) );
  AO22X1 U384 ( .A0(N405), .A1(n116), .B0(N415), .B1(n430), .Y(n249) );
  AOI22X1 U385 ( .A0(N278), .A1(n426), .B0(N243), .B1(n423), .Y(n161) );
  AOI22X1 U386 ( .A0(n454), .A1(n431), .B0(N131), .B1(n429), .Y(n159) );
  NAND2X1 U387 ( .A(n256), .B(n257), .Y(n218) );
  NOR4X1 U388 ( .A(n429), .B(n431), .C(n433), .D(n435), .Y(n257) );
  NOR4X1 U389 ( .A(n423), .B(n426), .C(n471), .D(n427), .Y(n256) );
  INVX3 U390 ( .A(n424), .Y(n426) );
  BUFX4 U391 ( .A(n122), .Y(n471) );
  AO22X1 U392 ( .A0(N404), .A1(n116), .B0(N414), .B1(n431), .Y(n254) );
  AO22X1 U393 ( .A0(N425), .A1(n432), .B0(N435), .B1(n434), .Y(n248) );
  INVX3 U394 ( .A(n421), .Y(n435) );
  AOI22X1 U395 ( .A0(N277), .A1(n425), .B0(N242), .B1(n423), .Y(n156) );
  AOI22X1 U396 ( .A0(n455), .A1(n431), .B0(N130), .B1(n116), .Y(n154) );
  AO22X1 U397 ( .A0(N403), .A1(n429), .B0(N413), .B1(n431), .Y(n115) );
  AO22X1 U398 ( .A0(N424), .A1(n432), .B0(N434), .B1(n434), .Y(n253) );
  INVX3 U399 ( .A(n230), .Y(n514) );
  INVX3 U400 ( .A(n424), .Y(n425) );
  AO22X1 U401 ( .A0(n440), .A1(n120), .B0(n440), .B1(n425), .Y(n132) );
  AO22X1 U402 ( .A0(n439), .A1(n423), .B0(n439), .B1(n426), .Y(n142) );
  AO22X1 U403 ( .A0(n441), .A1(n423), .B0(n441), .B1(n426), .Y(n127) );
  AO22X1 U404 ( .A0(n104), .A1(n423), .B0(n442), .B1(n426), .Y(n113) );
  AOI22X1 U405 ( .A0(N276), .A1(n425), .B0(N241), .B1(n423), .Y(n151) );
  AO22X1 U406 ( .A0(N401), .A1(n116), .B0(N411), .B1(n431), .Y(n134) );
  AO22X1 U407 ( .A0(N402), .A1(n429), .B0(N412), .B1(n431), .Y(n129) );
  AO22X1 U408 ( .A0(N400), .A1(n429), .B0(n107), .B1(n431), .Y(n144) );
  AOI22X1 U409 ( .A0(n473), .A1(n425), .B0(n473), .B1(n423), .Y(n216) );
  AO22X1 U410 ( .A0(n236), .A1(n445), .B0(N524), .B1(n515), .Y(n330) );
  AO22X1 U411 ( .A0(n236), .A1(n446), .B0(N523), .B1(n515), .Y(n331) );
  AO22X1 U412 ( .A0(n236), .A1(n447), .B0(N522), .B1(n515), .Y(n332) );
  AO22X1 U413 ( .A0(n236), .A1(n448), .B0(N521), .B1(n515), .Y(n333) );
  AO22X1 U414 ( .A0(n236), .A1(n449), .B0(N520), .B1(n515), .Y(n334) );
  AOI222XL U415 ( .A0(n456), .A1(n471), .B0(n456), .B1(n436), .C0(N241), .C1(
        n428), .Y(n152) );
  AOI222XL U416 ( .A0(n472), .A1(n471), .B0(n472), .B1(n436), .C0(n473), .C1(
        n428), .Y(n217) );
  CLKBUFX3 U417 ( .A(n427), .Y(n428) );
  NOR2BX1 U418 ( .AN(n239), .B(n457), .Y(n427) );
  NAND2X1 U419 ( .A(n239), .B(n457), .Y(n231) );
  CLKBUFX3 U420 ( .A(n145), .Y(n438) );
  NAND2X1 U421 ( .A(n436), .B(n514), .Y(n145) );
  CLKINVX1 U422 ( .A(n124), .Y(n470) );
  INVX3 U423 ( .A(n421), .Y(n434) );
  CLKINVX1 U424 ( .A(n223), .Y(n516) );
  CLKINVX1 U425 ( .A(n124), .Y(n469) );
  NAND2X2 U426 ( .A(n235), .B(n255), .Y(n109) );
  NAND3X1 U427 ( .A(n514), .B(n218), .C(\r550/GE_LT_GT_LE ), .Y(n255) );
  OAI22XL U428 ( .A0(n109), .A1(n108), .B0(n135), .B1(n111), .Y(n277) );
  NOR4X1 U429 ( .A(n136), .B(n137), .C(n138), .D(n139), .Y(n135) );
  AO22X1 U430 ( .A0(N409), .A1(n471), .B0(N409), .B1(n428), .Y(n136) );
  AO22X1 U431 ( .A0(N409), .A1(n433), .B0(N409), .B1(n434), .Y(n138) );
  OAI22XL U432 ( .A0(n109), .A1(n107), .B0(n140), .B1(n111), .Y(n279) );
  NOR4X1 U433 ( .A(n141), .B(n142), .C(n143), .D(n144), .Y(n140) );
  AO22X1 U434 ( .A0(n439), .A1(n471), .B0(n439), .B1(n428), .Y(n141) );
  AO22X1 U435 ( .A0(n439), .A1(n433), .B0(n439), .B1(n435), .Y(n143) );
  OAI22XL U436 ( .A0(n109), .A1(n106), .B0(n130), .B1(n111), .Y(n275) );
  NOR4X1 U437 ( .A(n131), .B(n132), .C(n133), .D(n134), .Y(n130) );
  AO22X1 U438 ( .A0(n440), .A1(n471), .B0(n440), .B1(n428), .Y(n131) );
  AO22X1 U439 ( .A0(n106), .A1(n433), .B0(n440), .B1(n434), .Y(n133) );
  OAI22XL U440 ( .A0(n109), .A1(n105), .B0(n125), .B1(n111), .Y(n273) );
  NOR4X1 U441 ( .A(n126), .B(n127), .C(n128), .D(n129), .Y(n125) );
  AO22X1 U442 ( .A0(n441), .A1(n471), .B0(n441), .B1(n428), .Y(n126) );
  AO22X1 U443 ( .A0(N422), .A1(n433), .B0(n105), .B1(n435), .Y(n128) );
  OAI22XL U444 ( .A0(n109), .A1(n104), .B0(n110), .B1(n111), .Y(n271) );
  NOR4X1 U445 ( .A(n112), .B(n113), .C(n114), .D(n115), .Y(n110) );
  AO22X1 U446 ( .A0(n442), .A1(n471), .B0(n442), .B1(n428), .Y(n112) );
  AO22X1 U447 ( .A0(N423), .A1(n433), .B0(N433), .B1(n435), .Y(n114) );
  OAI22XL U448 ( .A0(n109), .A1(n102), .B0(n245), .B1(n111), .Y(n267) );
  NOR4X1 U449 ( .A(n246), .B(n247), .C(n248), .D(n249), .Y(n245) );
  AO22X1 U450 ( .A0(n102), .A1(n471), .B0(n443), .B1(n428), .Y(n246) );
  AO22X1 U451 ( .A0(N445), .A1(n120), .B0(N455), .B1(n425), .Y(n247) );
  OAI22XL U452 ( .A0(n109), .A1(N476), .B0(n240), .B1(n111), .Y(n265) );
  NOR4X1 U453 ( .A(n241), .B(n242), .C(n243), .D(n244), .Y(n240) );
  AO22X1 U454 ( .A0(N466), .A1(n471), .B0(N476), .B1(n427), .Y(n241) );
  AO22X1 U455 ( .A0(N446), .A1(n423), .B0(N456), .B1(n426), .Y(n242) );
  OAI22XL U456 ( .A0(n109), .A1(n103), .B0(n250), .B1(n111), .Y(n269) );
  NOR4X1 U457 ( .A(n251), .B(n252), .C(n253), .D(n254), .Y(n250) );
  AO22X1 U458 ( .A0(n444), .A1(n471), .B0(n444), .B1(n428), .Y(n251) );
  AO22X1 U459 ( .A0(N444), .A1(n120), .B0(n103), .B1(n425), .Y(n252) );
  CLKINVX1 U460 ( .A(gray_data[1]), .Y(n505) );
  AOI22X1 U461 ( .A0(N288), .A1(n425), .B0(N253), .B1(n423), .Y(n211) );
  XOR3XL U462 ( .A(N260), .B(N274), .C(
        \add_0_root_sub_0_root_sub_83/carry [13]), .Y(N288) );
  AO22X1 U463 ( .A0(n510), .A1(n208), .B0(gray_addr[13]), .B1(n437), .Y(n300)
         );
  NAND4X1 U464 ( .A(n209), .B(n210), .C(n211), .D(n212), .Y(n208) );
  AOI222XL U465 ( .A0(N309), .A1(n471), .B0(N106), .B1(n436), .C0(N344), .C1(
        n428), .Y(n212) );
  AOI22X1 U466 ( .A0(N225), .A1(n434), .B0(N197), .B1(n433), .Y(n210) );
  CLKBUFX3 U467 ( .A(N150), .Y(n456) );
  CLKINVX1 U468 ( .A(gray_data[5]), .Y(n507) );
  CLKINVX1 U469 ( .A(gray_data[3]), .Y(n506) );
  AO22X1 U470 ( .A0(n510), .A1(n203), .B0(n517), .B1(n437), .Y(n299) );
  NAND4X1 U471 ( .A(n204), .B(n205), .C(n206), .D(n207), .Y(n203) );
  AOI222XL U472 ( .A0(N308), .A1(n471), .B0(N105), .B1(n436), .C0(N343), .C1(
        n428), .Y(n207) );
  AOI22X1 U473 ( .A0(N224), .A1(n435), .B0(N196), .B1(n433), .Y(n205) );
  AO22X1 U474 ( .A0(n510), .A1(n198), .B0(n518), .B1(n437), .Y(n298) );
  NAND4X1 U475 ( .A(n199), .B(n200), .C(n201), .D(n202), .Y(n198) );
  AOI222XL U476 ( .A0(N307), .A1(n471), .B0(N104), .B1(n436), .C0(N342), .C1(
        n428), .Y(n202) );
  AOI22X1 U477 ( .A0(N223), .A1(n435), .B0(N195), .B1(n433), .Y(n200) );
  CLKBUFX3 U478 ( .A(N151), .Y(n455) );
  AO22X1 U479 ( .A0(n510), .A1(n193), .B0(n519), .B1(n437), .Y(n297) );
  NAND4X1 U480 ( .A(n194), .B(n195), .C(n196), .D(n197), .Y(n193) );
  AOI222XL U481 ( .A0(N306), .A1(n471), .B0(N103), .B1(n436), .C0(N341), .C1(
        n428), .Y(n197) );
  AOI22X1 U482 ( .A0(N222), .A1(n434), .B0(N194), .B1(n433), .Y(n195) );
  AO22X1 U483 ( .A0(n510), .A1(n188), .B0(n520), .B1(n437), .Y(n296) );
  NAND4X1 U484 ( .A(n189), .B(n190), .C(n191), .D(n192), .Y(n188) );
  AOI222XL U485 ( .A0(N305), .A1(n471), .B0(N102), .B1(n436), .C0(N340), .C1(
        n428), .Y(n192) );
  AOI22X1 U486 ( .A0(N221), .A1(n434), .B0(N193), .B1(n433), .Y(n190) );
  CLKBUFX3 U487 ( .A(N152), .Y(n454) );
  AO22X1 U488 ( .A0(n510), .A1(n183), .B0(n521), .B1(n437), .Y(n295) );
  NAND4X1 U489 ( .A(n184), .B(n185), .C(n186), .D(n187), .Y(n183) );
  AOI222XL U490 ( .A0(N304), .A1(n471), .B0(N101), .B1(n436), .C0(N339), .C1(
        n428), .Y(n187) );
  AOI22X1 U491 ( .A0(N220), .A1(n435), .B0(N192), .B1(n433), .Y(n185) );
  AO22X1 U492 ( .A0(n510), .A1(n178), .B0(n522), .B1(n437), .Y(n294) );
  NAND4X1 U493 ( .A(n179), .B(n180), .C(n181), .D(n182), .Y(n178) );
  AOI222XL U494 ( .A0(N303), .A1(n471), .B0(N100), .B1(n436), .C0(N338), .C1(
        n428), .Y(n182) );
  AOI22X1 U495 ( .A0(N219), .A1(n435), .B0(N191), .B1(n433), .Y(n180) );
  CLKBUFX3 U496 ( .A(N153), .Y(n453) );
  CLKINVX1 U497 ( .A(gray_data[7]), .Y(n508) );
  CLKBUFX3 U498 ( .A(N154), .Y(n452) );
  CLKBUFX3 U499 ( .A(N155), .Y(n451) );
  NAND2X1 U500 ( .A(gray_ready), .B(n233), .Y(n235) );
  OAI211X1 U501 ( .A0(n223), .A1(n95), .B0(n464), .C0(n234), .Y(n228) );
  NOR2BX1 U502 ( .AN(n235), .B(n514), .Y(n234) );
  OAI21XL U503 ( .A0(n94), .A1(n228), .B0(n232), .Y(n328) );
  OAI21XL U504 ( .A0(n514), .A1(n233), .B0(n228), .Y(n232) );
  OAI2BB2XL U505 ( .B0(n93), .B1(n228), .A0N(n229), .A1N(n228), .Y(n327) );
  OAI21XL U506 ( .A0(n230), .A1(n231), .B0(n223), .Y(n229) );
  OAI2BB2XL U507 ( .B0(n95), .B1(n237), .A0N(n237), .A1N(n233), .Y(n338) );
  OAI21XL U508 ( .A0(n230), .A1(n231), .B0(n235), .Y(n237) );
  CLKBUFX3 U509 ( .A(mid_x[1]), .Y(n449) );
  AO22X1 U510 ( .A0(gray_data[6]), .A1(n513), .B0(\temp[0][6] ), .B1(n438), 
        .Y(n281) );
  AO22X1 U511 ( .A0(gray_data[2]), .A1(n513), .B0(\temp[0][2] ), .B1(n438), 
        .Y(n285) );
  AO22X1 U512 ( .A0(gray_data[4]), .A1(n513), .B0(\temp[0][4] ), .B1(n438), 
        .Y(n283) );
  AO22X1 U513 ( .A0(gray_data[1]), .A1(n513), .B0(\temp[0][1] ), .B1(n438), 
        .Y(n286) );
  AO22X1 U514 ( .A0(gray_data[3]), .A1(n513), .B0(\temp[0][3] ), .B1(n438), 
        .Y(n284) );
  AO22X1 U515 ( .A0(gray_data[5]), .A1(n513), .B0(\temp[0][5] ), .B1(n438), 
        .Y(n282) );
  AO22X1 U516 ( .A0(gray_data[7]), .A1(n513), .B0(\temp[0][7] ), .B1(n438), 
        .Y(n280) );
  AO22X1 U517 ( .A0(gray_data[0]), .A1(n513), .B0(\temp[0][0] ), .B1(n438), 
        .Y(n287) );
  CLKBUFX3 U518 ( .A(mid_x[0]), .Y(n422) );
  CLKBUFX3 U519 ( .A(mid_x[2]), .Y(n448) );
  CLKBUFX3 U520 ( .A(mid_x[3]), .Y(n447) );
  AO22X1 U521 ( .A0(n510), .A1(n173), .B0(n523), .B1(n437), .Y(n293) );
  NAND4X1 U522 ( .A(n174), .B(n175), .C(n176), .D(n177), .Y(n173) );
  AOI222XL U523 ( .A0(n451), .A1(n471), .B0(n451), .B1(n436), .C0(N337), .C1(
        n428), .Y(n177) );
  AOI22X1 U524 ( .A0(N218), .A1(n434), .B0(N190), .B1(n433), .Y(n175) );
  CLKBUFX3 U525 ( .A(mid_x[4]), .Y(n446) );
  AO22X1 U526 ( .A0(n510), .A1(n168), .B0(n524), .B1(n437), .Y(n292) );
  NAND4X1 U527 ( .A(n169), .B(n170), .C(n171), .D(n172), .Y(n168) );
  AOI222XL U528 ( .A0(n452), .A1(n471), .B0(n452), .B1(n436), .C0(N336), .C1(
        n428), .Y(n172) );
  AOI22X1 U529 ( .A0(N217), .A1(n434), .B0(N189), .B1(n433), .Y(n170) );
  AO22X1 U530 ( .A0(n467), .A1(N106), .B0(n531), .B1(n465), .Y(n315) );
  NAND2X1 U531 ( .A(n260), .B(n261), .Y(n222) );
  AND4X1 U532 ( .A(n447), .B(n446), .C(n445), .D(mid_x[6]), .Y(n260) );
  NOR4BBX1 U533 ( .AN(n449), .BN(n448), .C(mid_x[7]), .D(n422), .Y(n261) );
  AO22X1 U534 ( .A0(n466), .A1(N105), .B0(n532), .B1(n465), .Y(n314) );
  AO22X1 U535 ( .A0(n464), .A1(n450), .B0(N534), .B1(n469), .Y(n324) );
  CLKBUFX3 U536 ( .A(mid_x[5]), .Y(n445) );
  AO22X1 U537 ( .A0(n510), .A1(n163), .B0(n525), .B1(n437), .Y(n291) );
  NAND4X1 U538 ( .A(n164), .B(n165), .C(n166), .D(n167), .Y(n163) );
  AOI222XL U539 ( .A0(n453), .A1(n471), .B0(n453), .B1(n436), .C0(N335), .C1(
        n428), .Y(n167) );
  AOI22X1 U540 ( .A0(N216), .A1(n435), .B0(N188), .B1(n433), .Y(n165) );
  AO22X1 U541 ( .A0(N406), .A1(n429), .B0(N416), .B1(n431), .Y(n244) );
  CLKBUFX3 U542 ( .A(N431), .Y(n440) );
  CLKBUFX3 U543 ( .A(N420), .Y(n439) );
  AO22X1 U544 ( .A0(n464), .A1(n451), .B0(N533), .B1(n466), .Y(n323) );
  AO22X1 U545 ( .A0(n467), .A1(N104), .B0(n533), .B1(n465), .Y(n313) );
  AO22X1 U546 ( .A0(n510), .A1(n213), .B0(n529), .B1(n437), .Y(n301) );
  NAND4X1 U547 ( .A(n214), .B(n215), .C(n216), .D(n217), .Y(n213) );
  AOI22X1 U548 ( .A0(n472), .A1(n117), .B0(n473), .B1(n429), .Y(n214) );
  AOI22X1 U549 ( .A0(N212), .A1(n434), .B0(n473), .B1(n433), .Y(n215) );
  AO22X1 U550 ( .A0(n510), .A1(n158), .B0(n526), .B1(n437), .Y(n290) );
  NAND4X1 U551 ( .A(n159), .B(n160), .C(n161), .D(n162), .Y(n158) );
  AOI222XL U552 ( .A0(n454), .A1(n471), .B0(n454), .B1(n436), .C0(N334), .C1(
        n428), .Y(n162) );
  AOI22X1 U553 ( .A0(N215), .A1(n435), .B0(N187), .B1(n433), .Y(n160) );
  AO22X1 U554 ( .A0(n510), .A1(n153), .B0(n527), .B1(n437), .Y(n289) );
  NAND4X1 U555 ( .A(n154), .B(n155), .C(n156), .D(n157), .Y(n153) );
  AOI222XL U556 ( .A0(n455), .A1(n471), .B0(n455), .B1(n436), .C0(N333), .C1(
        n428), .Y(n157) );
  AOI22X1 U557 ( .A0(N214), .A1(n434), .B0(N186), .B1(n118), .Y(n155) );
  AO22X1 U558 ( .A0(n510), .A1(n147), .B0(n528), .B1(n437), .Y(n288) );
  NAND4X1 U559 ( .A(n149), .B(n150), .C(n151), .D(n152), .Y(n147) );
  AOI22X1 U560 ( .A0(N213), .A1(n434), .B0(N185), .B1(n433), .Y(n150) );
  OAI211XL U561 ( .A0(n436), .A1(n218), .B0(n516), .C0(gray_req), .Y(n148) );
  AO22X1 U562 ( .A0(n464), .A1(n452), .B0(N532), .B1(n469), .Y(n322) );
  OAI31XL U563 ( .A0(n219), .A1(n467), .A2(n516), .B0(n220), .Y(n302) );
  AO21X1 U564 ( .A0(n221), .A1(n222), .B0(n465), .Y(n220) );
  OAI31XL U565 ( .A0(n92), .A1(STATE[1]), .A2(STATE[0]), .B0(n545), .Y(n219)
         );
  CLKBUFX3 U566 ( .A(N442), .Y(n441) );
  AO22X1 U567 ( .A0(n464), .A1(n453), .B0(N531), .B1(n469), .Y(n321) );
  AO22X1 U568 ( .A0(N426), .A1(n433), .B0(N436), .B1(n435), .Y(n243) );
  NOR2X1 U569 ( .A(n99), .B(count[3]), .Y(n258) );
  NOR3BXL U570 ( .AN(n258), .B(n457), .C(n98), .Y(n121) );
  AO22X1 U571 ( .A0(n466), .A1(N103), .B0(n534), .B1(n465), .Y(n312) );
  AO22X1 U572 ( .A0(n467), .A1(N102), .B0(n535), .B1(n465), .Y(n311) );
  AO22X1 U573 ( .A0(n466), .A1(N101), .B0(n536), .B1(n465), .Y(n310) );
  AO22X1 U574 ( .A0(n467), .A1(N100), .B0(n537), .B1(n465), .Y(n309) );
  AO22X1 U575 ( .A0(n466), .A1(n451), .B0(n538), .B1(n465), .Y(n308) );
  AO22X1 U576 ( .A0(n467), .A1(n452), .B0(n539), .B1(n465), .Y(n307) );
  AO22X1 U577 ( .A0(n467), .A1(n453), .B0(n540), .B1(n465), .Y(n306) );
  AO22X1 U578 ( .A0(n466), .A1(n454), .B0(n541), .B1(n465), .Y(n305) );
  AO22X1 U579 ( .A0(n467), .A1(n455), .B0(n542), .B1(n465), .Y(n304) );
  AO22X1 U580 ( .A0(n468), .A1(n456), .B0(n543), .B1(n465), .Y(n303) );
  AO22X1 U581 ( .A0(n469), .A1(n472), .B0(n544), .B1(n465), .Y(n316) );
  CLKBUFX3 U582 ( .A(n118), .Y(n433) );
  NOR3BXL U583 ( .AN(n258), .B(n100), .C(count[2]), .Y(n118) );
  CLKBUFX3 U584 ( .A(n117), .Y(n431) );
  NOR3BXL U585 ( .AN(n258), .B(n457), .C(count[2]), .Y(n117) );
  AND3X2 U586 ( .A(n258), .B(n457), .C(count[2]), .Y(n122) );
  AO22X1 U587 ( .A0(n464), .A1(n454), .B0(N530), .B1(n466), .Y(n320) );
  NOR3X1 U588 ( .A(count[1]), .B(count[3]), .C(n100), .Y(n259) );
  CLKBUFX3 U589 ( .A(n116), .Y(n429) );
  NOR2BX1 U590 ( .AN(n259), .B(count[2]), .Y(n116) );
  CLKBUFX3 U591 ( .A(n120), .Y(n423) );
  NOR2BX1 U592 ( .AN(n259), .B(n98), .Y(n120) );
  OAI2BB2XL U593 ( .B0(n464), .B1(n103), .A0N(n548), .A1N(n464), .Y(n268) );
  OAI2BB2XL U594 ( .B0(n464), .B1(N476), .A0N(n546), .A1N(n465), .Y(n264) );
  OAI2BB2XL U595 ( .B0(n464), .B1(n102), .A0N(n547), .A1N(n465), .Y(n266) );
  OAI2BB2XL U596 ( .B0(n104), .B1(n464), .A0N(n549), .A1N(n465), .Y(n270) );
  OAI2BB2XL U597 ( .B0(n464), .B1(n105), .A0N(n550), .A1N(n464), .Y(n272) );
  OAI2BB2XL U598 ( .B0(n464), .B1(n106), .A0N(n551), .A1N(n464), .Y(n274) );
  OAI2BB2XL U599 ( .B0(n464), .B1(n107), .A0N(n552), .A1N(n465), .Y(n278) );
  OAI2BB2XL U600 ( .B0(n464), .B1(n108), .A0N(n553), .A1N(n465), .Y(n276) );
  CLKBUFX3 U601 ( .A(count[0]), .Y(n457) );
  AND3X2 U602 ( .A(count[3]), .B(n99), .C(n98), .Y(n239) );
  AO22X1 U603 ( .A0(n464), .A1(n455), .B0(N529), .B1(n469), .Y(n319) );
  CLKBUFX3 U604 ( .A(N453), .Y(n442) );
  AO22X1 U605 ( .A0(n465), .A1(n456), .B0(N528), .B1(n469), .Y(n318) );
  CLKBUFX3 U606 ( .A(N464), .Y(n444) );
  AO22X1 U607 ( .A0(n236), .A1(mid_x[7]), .B0(N526), .B1(n515), .Y(n336) );
  NAND3X1 U608 ( .A(n94), .B(n92), .C(STATE[1]), .Y(n230) );
  AO22X1 U609 ( .A0(N409), .A1(n120), .B0(N409), .B1(n425), .Y(n137) );
  NOR4X1 U610 ( .A(n457), .B(count[1]), .C(count[2]), .D(count[3]), .Y(n146)
         );
  AO22X1 U611 ( .A0(N399), .A1(n116), .B0(N409), .B1(n431), .Y(n139) );
  NOR3BXL U612 ( .AN(n258), .B(n457), .C(count[2]), .Y(n430) );
  AO22X1 U613 ( .A0(n236), .A1(mid_x[6]), .B0(N525), .B1(n515), .Y(n329) );
  NOR3BXL U614 ( .AN(n258), .B(n100), .C(count[2]), .Y(n432) );
  AO22X1 U615 ( .A0(n236), .A1(n422), .B0(N519), .B1(n515), .Y(n335) );
  OA21XL U616 ( .A0(count[1]), .A1(n511), .B0(n225), .Y(n226) );
  AO22X1 U617 ( .A0(n471), .A1(n512), .B0(count[3]), .B1(n238), .Y(n339) );
  OAI21XL U618 ( .A0(count[2]), .A1(n511), .B0(n226), .Y(n238) );
  CLKBUFX3 U619 ( .A(N475), .Y(n443) );
  OAI21XL U620 ( .A0(n236), .A1(n222), .B0(n92), .Y(n337) );
  OAI21XL U621 ( .A0(n226), .A1(n98), .B0(n227), .Y(n326) );
  NAND4X1 U622 ( .A(n512), .B(count[1]), .C(n457), .D(n98), .Y(n227) );
  NAND3X1 U623 ( .A(n93), .B(n92), .C(STATE[0]), .Y(n223) );
  OAI32X1 U624 ( .A0(n224), .A1(count[1]), .A2(n100), .B0(n225), .B1(n99), .Y(
        n325) );
  OAI22XL U625 ( .A0(n514), .A1(n100), .B0(n457), .B1(n224), .Y(n340) );
  NOR2X1 U626 ( .A(n230), .B(n100), .Y(n225) );
  XOR2X1 U627 ( .A(\temp[1][7] ), .B(\add_109/carry [7]), .Y(N416) );
  AND2X1 U628 ( .A(\add_109/carry [6]), .B(n443), .Y(\add_109/carry [7]) );
  XOR2X1 U629 ( .A(n443), .B(\add_109/carry [6]), .Y(N415) );
  XOR2X1 U630 ( .A(\temp[1][7] ), .B(\add_119/carry [7]), .Y(N436) );
  AND2X1 U631 ( .A(\add_119/carry [6]), .B(n443), .Y(\add_119/carry [7]) );
  XOR2X1 U632 ( .A(n443), .B(\add_119/carry [6]), .Y(N435) );
  XOR2X1 U633 ( .A(\temp[1][7] ), .B(\add_114/carry [7]), .Y(N426) );
  AND2X1 U634 ( .A(\add_114/carry [6]), .B(n443), .Y(\add_114/carry [7]) );
  XOR2X1 U635 ( .A(n443), .B(\add_114/carry [6]), .Y(N425) );
  XOR2X1 U636 ( .A(\temp[1][7] ), .B(\add_129/carry[7] ), .Y(N456) );
  AND2X1 U637 ( .A(n444), .B(n443), .Y(\add_129/carry[7] ) );
  XOR2X1 U638 ( .A(n443), .B(n444), .Y(N455) );
  XOR2X1 U639 ( .A(\temp[1][7] ), .B(\add_124/carry [7]), .Y(N446) );
  AND2X1 U640 ( .A(\add_124/carry [6]), .B(n443), .Y(\add_124/carry [7]) );
  XOR2X1 U641 ( .A(n443), .B(\add_124/carry [6]), .Y(N445) );
  XOR2X1 U642 ( .A(\temp[1][7] ), .B(n443), .Y(N466) );
  AND2X1 U643 ( .A(\add_109/carry [5]), .B(n444), .Y(\add_109/carry [6]) );
  XOR2X1 U644 ( .A(n444), .B(\add_109/carry [5]), .Y(N414) );
  AND2X1 U645 ( .A(\add_109/carry [4]), .B(n442), .Y(\add_109/carry [5]) );
  XOR2X1 U646 ( .A(n442), .B(\add_109/carry [4]), .Y(N413) );
  AND2X1 U647 ( .A(\add_109/carry [3]), .B(n441), .Y(\add_109/carry [4]) );
  XOR2X1 U648 ( .A(n441), .B(\add_109/carry [3]), .Y(N412) );
  AND2X1 U649 ( .A(n439), .B(n440), .Y(\add_109/carry [3]) );
  XOR2X1 U650 ( .A(n440), .B(n439), .Y(N411) );
  AND2X1 U651 ( .A(\add_119/carry [5]), .B(n444), .Y(\add_119/carry [6]) );
  XOR2X1 U652 ( .A(n444), .B(\add_119/carry [5]), .Y(N434) );
  AND2X1 U653 ( .A(n441), .B(n442), .Y(\add_119/carry [5]) );
  XOR2X1 U654 ( .A(n442), .B(n441), .Y(N433) );
  AND2X1 U655 ( .A(\add_114/carry [5]), .B(n444), .Y(\add_114/carry [6]) );
  XOR2X1 U656 ( .A(n444), .B(\add_114/carry [5]), .Y(N424) );
  AND2X1 U657 ( .A(\add_114/carry [4]), .B(n442), .Y(\add_114/carry [5]) );
  XOR2X1 U658 ( .A(n442), .B(\add_114/carry [4]), .Y(N423) );
  AND2X1 U659 ( .A(n440), .B(n441), .Y(\add_114/carry [4]) );
  XOR2X1 U660 ( .A(n441), .B(n440), .Y(N422) );
  AND2X1 U661 ( .A(n442), .B(n444), .Y(\add_124/carry [6]) );
  XOR2X1 U662 ( .A(n444), .B(n442), .Y(N444) );
  XOR2X1 U663 ( .A(N260), .B(\add_1_root_add_89_3/carry[13] ), .Y(N344) );
  XOR2X1 U664 ( .A(N260), .B(\add_86_2/carry [13]), .Y(N309) );
  XOR2X1 U665 ( .A(mid_x[6]), .B(\add_1_root_add_80_2/carry[13] ), .Y(N253) );
  XOR2X1 U666 ( .A(N113), .B(\add_1_root_add_74_2/carry[13] ), .Y(N197) );
  XOR2X1 U667 ( .A(N113), .B(\add_71/carry [13]), .Y(N162) );
  AND2X1 U668 ( .A(\add_1_root_add_89_3/carry[12] ), .B(N259), .Y(
        \add_1_root_add_89_3/carry[13] ) );
  XOR2X1 U669 ( .A(N259), .B(\add_1_root_add_89_3/carry[12] ), .Y(N343) );
  AND2X1 U670 ( .A(\add_86_2/carry [12]), .B(N259), .Y(\add_86_2/carry [13])
         );
  XOR2X1 U671 ( .A(N259), .B(\add_86_2/carry [12]), .Y(N308) );
  AND2X1 U672 ( .A(\add_1_root_add_80_2/carry[12] ), .B(n445), .Y(
        \add_1_root_add_80_2/carry[13] ) );
  XOR2X1 U673 ( .A(n445), .B(\add_1_root_add_80_2/carry[12] ), .Y(N252) );
  AND2X1 U674 ( .A(\add_1_root_add_74_2/carry[12] ), .B(N112), .Y(
        \add_1_root_add_74_2/carry[13] ) );
  XOR2X1 U675 ( .A(N112), .B(\add_1_root_add_74_2/carry[12] ), .Y(N196) );
  AND2X1 U676 ( .A(\add_71/carry [12]), .B(N112), .Y(\add_71/carry [13]) );
  XOR2X1 U677 ( .A(N112), .B(\add_71/carry [12]), .Y(N161) );
  AND2X1 U678 ( .A(\add_1_root_add_89_3/carry[11] ), .B(N258), .Y(
        \add_1_root_add_89_3/carry[12] ) );
  XOR2X1 U679 ( .A(N258), .B(\add_1_root_add_89_3/carry[11] ), .Y(N342) );
  AND2X1 U680 ( .A(\add_86_2/carry [11]), .B(N258), .Y(\add_86_2/carry [12])
         );
  XOR2X1 U681 ( .A(N258), .B(\add_86_2/carry [11]), .Y(N307) );
  AND2X1 U682 ( .A(\add_1_root_add_80_2/carry[11] ), .B(n446), .Y(
        \add_1_root_add_80_2/carry[12] ) );
  XOR2X1 U683 ( .A(n446), .B(\add_1_root_add_80_2/carry[11] ), .Y(N251) );
  XOR2X1 U684 ( .A(N111), .B(\add_71/carry [11]), .Y(N160) );
  AND2X1 U685 ( .A(\add_1_root_add_89_3/carry[10] ), .B(N257), .Y(
        \add_1_root_add_89_3/carry[11] ) );
  XOR2X1 U686 ( .A(N257), .B(\add_1_root_add_89_3/carry[10] ), .Y(N341) );
  AND2X1 U687 ( .A(\add_86_2/carry [10]), .B(N257), .Y(\add_86_2/carry [11])
         );
  XOR2X1 U688 ( .A(N257), .B(\add_86_2/carry [10]), .Y(N306) );
  AND2X1 U689 ( .A(\add_1_root_add_80_2/carry[10] ), .B(n447), .Y(
        \add_1_root_add_80_2/carry[11] ) );
  XOR2X1 U690 ( .A(n447), .B(\add_1_root_add_80_2/carry[10] ), .Y(N250) );
  AND2X1 U691 ( .A(\add_1_root_add_74_2/carry[10] ), .B(N110), .Y(
        \add_1_root_add_74_2/carry[11] ) );
  XOR2X1 U692 ( .A(N110), .B(\add_1_root_add_74_2/carry[10] ), .Y(N194) );
  AND2X1 U693 ( .A(\add_71/carry [10]), .B(N110), .Y(\add_71/carry [11]) );
  XOR2X1 U694 ( .A(N110), .B(\add_71/carry [10]), .Y(N159) );
  AND2X1 U695 ( .A(\add_1_root_add_89_3/carry[9] ), .B(N256), .Y(
        \add_1_root_add_89_3/carry[10] ) );
  XOR2X1 U696 ( .A(N256), .B(\add_1_root_add_89_3/carry[9] ), .Y(N340) );
  AND2X1 U697 ( .A(\add_86_2/carry [9]), .B(N256), .Y(\add_86_2/carry [10]) );
  XOR2X1 U698 ( .A(N256), .B(\add_86_2/carry [9]), .Y(N305) );
  AND2X1 U699 ( .A(\add_1_root_add_80_2/carry[9] ), .B(n448), .Y(
        \add_1_root_add_80_2/carry[10] ) );
  XOR2X1 U700 ( .A(n448), .B(\add_1_root_add_80_2/carry[9] ), .Y(N249) );
  AND2X1 U701 ( .A(\add_1_root_add_74_2/carry[9] ), .B(N109), .Y(
        \add_1_root_add_74_2/carry[10] ) );
  XOR2X1 U702 ( .A(N109), .B(\add_1_root_add_74_2/carry[9] ), .Y(N193) );
  AND2X1 U703 ( .A(\add_71/carry [9]), .B(N109), .Y(\add_71/carry [10]) );
  XOR2X1 U704 ( .A(N109), .B(\add_71/carry [9]), .Y(N158) );
  AND2X1 U705 ( .A(\add_1_root_add_89_3/carry[8] ), .B(N255), .Y(
        \add_1_root_add_89_3/carry[9] ) );
  XOR2X1 U706 ( .A(N255), .B(\add_1_root_add_89_3/carry[8] ), .Y(N339) );
  AND2X1 U707 ( .A(\add_86_2/carry [8]), .B(N255), .Y(\add_86_2/carry [9]) );
  XOR2X1 U708 ( .A(N255), .B(\add_86_2/carry [8]), .Y(N304) );
  AND2X1 U709 ( .A(\add_1_root_add_80_2/carry[8] ), .B(n449), .Y(
        \add_1_root_add_80_2/carry[9] ) );
  XOR2X1 U710 ( .A(n449), .B(\add_1_root_add_80_2/carry[8] ), .Y(N248) );
  AND2X1 U711 ( .A(\add_1_root_add_74_2/carry[8] ), .B(N108), .Y(
        \add_1_root_add_74_2/carry[9] ) );
  XOR2X1 U712 ( .A(N108), .B(\add_1_root_add_74_2/carry[8] ), .Y(N192) );
  AND2X1 U713 ( .A(\add_71/carry [8]), .B(N108), .Y(\add_71/carry [9]) );
  XOR2X1 U714 ( .A(N108), .B(\add_71/carry [8]), .Y(N157) );
  AND2X1 U715 ( .A(N254), .B(n450), .Y(\add_86_2/carry [8]) );
  XOR2X1 U716 ( .A(n450), .B(N254), .Y(N303) );
  AND2X1 U717 ( .A(N254), .B(N268), .Y(\add_0_root_sub_0_root_sub_83/carry [8]) );
  XOR2X1 U718 ( .A(N268), .B(N254), .Y(N282) );
  AND2X1 U719 ( .A(n341), .B(N121), .Y(
        \add_0_root_sub_0_root_sub_68_2/carry [8]) );
  AND2X1 U720 ( .A(n341), .B(n450), .Y(\add_71/carry [8]) );
  XOR2X1 U721 ( .A(n450), .B(n341), .Y(N156) );
  AND2X1 U722 ( .A(\add_1_root_add_89_3/carry[6] ), .B(n451), .Y(
        \add_1_root_add_89_3/carry[7] ) );
  XOR2X1 U723 ( .A(n451), .B(\add_1_root_add_89_3/carry[6] ), .Y(N337) );
  AND2X1 U724 ( .A(\add_1_root_add_80_2/carry[6] ), .B(n451), .Y(
        \add_1_root_add_80_2/carry[7] ) );
  XOR2X1 U725 ( .A(n451), .B(\add_1_root_add_80_2/carry[6] ), .Y(N246) );
  AND2X1 U726 ( .A(\add_1_root_add_74_2/carry[6] ), .B(n451), .Y(
        \add_1_root_add_74_2/carry[7] ) );
  XOR2X1 U727 ( .A(n451), .B(\add_1_root_add_74_2/carry[6] ), .Y(N190) );
  AND2X1 U728 ( .A(\add_1_root_add_89_3/carry[5] ), .B(n452), .Y(
        \add_1_root_add_89_3/carry[6] ) );
  XOR2X1 U729 ( .A(n452), .B(\add_1_root_add_89_3/carry[5] ), .Y(N336) );
  AND2X1 U730 ( .A(\add_1_root_add_80_2/carry[5] ), .B(n452), .Y(
        \add_1_root_add_80_2/carry[6] ) );
  XOR2X1 U731 ( .A(n452), .B(\add_1_root_add_80_2/carry[5] ), .Y(N245) );
  AND2X1 U732 ( .A(\add_1_root_add_74_2/carry[5] ), .B(n452), .Y(
        \add_1_root_add_74_2/carry[6] ) );
  XOR2X1 U733 ( .A(n452), .B(\add_1_root_add_74_2/carry[5] ), .Y(N189) );
  AND2X1 U734 ( .A(\add_1_root_add_89_3/carry[4] ), .B(n453), .Y(
        \add_1_root_add_89_3/carry[5] ) );
  XOR2X1 U735 ( .A(n453), .B(\add_1_root_add_89_3/carry[4] ), .Y(N335) );
  AND2X1 U736 ( .A(\add_1_root_add_80_2/carry[4] ), .B(n453), .Y(
        \add_1_root_add_80_2/carry[5] ) );
  XOR2X1 U737 ( .A(n453), .B(\add_1_root_add_80_2/carry[4] ), .Y(N244) );
  AND2X1 U738 ( .A(\add_1_root_add_74_2/carry[4] ), .B(n453), .Y(
        \add_1_root_add_74_2/carry[5] ) );
  XOR2X1 U739 ( .A(n453), .B(\add_1_root_add_74_2/carry[4] ), .Y(N188) );
  AND2X1 U740 ( .A(\add_1_root_add_89_3/carry[3] ), .B(n454), .Y(
        \add_1_root_add_89_3/carry[4] ) );
  XOR2X1 U741 ( .A(n454), .B(\add_1_root_add_89_3/carry[3] ), .Y(N334) );
  AND2X1 U742 ( .A(\add_1_root_add_80_2/carry[3] ), .B(n454), .Y(
        \add_1_root_add_80_2/carry[4] ) );
  XOR2X1 U743 ( .A(n454), .B(\add_1_root_add_80_2/carry[3] ), .Y(N243) );
  AND2X1 U744 ( .A(\add_1_root_add_74_2/carry[3] ), .B(n454), .Y(
        \add_1_root_add_74_2/carry[4] ) );
  XOR2X1 U745 ( .A(n454), .B(\add_1_root_add_74_2/carry[3] ), .Y(N187) );
  AND2X1 U746 ( .A(\add_1_root_add_89_3/carry[2] ), .B(n455), .Y(
        \add_1_root_add_89_3/carry[3] ) );
  XOR2X1 U747 ( .A(n455), .B(\add_1_root_add_89_3/carry[2] ), .Y(N333) );
  AND2X1 U748 ( .A(\add_1_root_add_80_2/carry[2] ), .B(n455), .Y(
        \add_1_root_add_80_2/carry[3] ) );
  XOR2X1 U749 ( .A(n455), .B(\add_1_root_add_80_2/carry[2] ), .Y(N242) );
  AND2X1 U750 ( .A(\add_1_root_add_74_2/carry[2] ), .B(n455), .Y(
        \add_1_root_add_74_2/carry[3] ) );
  XOR2X1 U751 ( .A(n455), .B(\add_1_root_add_74_2/carry[2] ), .Y(N186) );
  XOR2X1 U752 ( .A(n456), .B(n472), .Y(N241) );
  XOR2X1 U753 ( .A(mid_x[6]), .B(\r537/carry [13]), .Y(N106) );
  AND2X1 U754 ( .A(\r537/carry [12]), .B(n445), .Y(\r537/carry [13]) );
  XOR2X1 U755 ( .A(n445), .B(\r537/carry [12]), .Y(N105) );
  AND2X1 U756 ( .A(\r537/carry [11]), .B(n446), .Y(\r537/carry [12]) );
  XOR2X1 U757 ( .A(n446), .B(\r537/carry [11]), .Y(N104) );
  AND2X1 U758 ( .A(\r537/carry [10]), .B(n447), .Y(\r537/carry [11]) );
  XOR2X1 U759 ( .A(n447), .B(\r537/carry [10]), .Y(N103) );
  AND2X1 U760 ( .A(\r537/carry [9]), .B(n448), .Y(\r537/carry [10]) );
  XOR2X1 U761 ( .A(n448), .B(\r537/carry [9]), .Y(N102) );
  AND2X1 U762 ( .A(\r537/carry [8]), .B(n449), .Y(\r537/carry [9]) );
  XOR2X1 U763 ( .A(n449), .B(\r537/carry [8]), .Y(N101) );
  AND2X1 U764 ( .A(n422), .B(n450), .Y(\r537/carry [8]) );
  XOR2X1 U765 ( .A(n450), .B(n422), .Y(N100) );
  AND2X1 U766 ( .A(n472), .B(N613), .Y(N615) );
  AND2X1 U767 ( .A(n456), .B(N613), .Y(N616) );
  AND2X1 U768 ( .A(n455), .B(N613), .Y(N617) );
  AND2X1 U769 ( .A(n454), .B(N613), .Y(N618) );
  AND2X1 U770 ( .A(n453), .B(N613), .Y(N619) );
  AND2X1 U771 ( .A(n452), .B(N613), .Y(N620) );
  AND2X1 U772 ( .A(n451), .B(N613), .Y(N621) );
  AND2X1 U773 ( .A(N613), .B(n450), .Y(N622) );
  OAI2BB1X1 U774 ( .A0N(n422), .A1N(n449), .B0(n474), .Y(N108) );
  OR2X1 U775 ( .A(n474), .B(n448), .Y(n475) );
  OAI2BB1X1 U776 ( .A0N(n474), .A1N(n448), .B0(n475), .Y(N109) );
  NOR2X1 U777 ( .A(n475), .B(n447), .Y(n476) );
  AO21X1 U778 ( .A0(n475), .A1(n447), .B0(n476), .Y(N110) );
  NAND2X1 U779 ( .A(n476), .B(n342), .Y(n477) );
  XNOR2X1 U780 ( .A(n445), .B(n477), .Y(N112) );
  NOR2X1 U781 ( .A(n445), .B(n477), .Y(n478) );
  XOR2X1 U782 ( .A(mid_x[6]), .B(n478), .Y(N113) );
  NAND2BX1 U783 ( .AN(n456), .B(n473), .Y(n479) );
  OR2X1 U784 ( .A(n479), .B(n455), .Y(n480) );
  OR2X1 U785 ( .A(n480), .B(n454), .Y(n481) );
  OR2X1 U786 ( .A(n481), .B(n453), .Y(n482) );
  OR2X1 U787 ( .A(n482), .B(n452), .Y(n483) );
  OR2X1 U788 ( .A(n483), .B(n451), .Y(n484) );
  OAI2BB1X1 U789 ( .A0N(n479), .A1N(n455), .B0(n480), .Y(N130) );
  OAI2BB1X1 U790 ( .A0N(n480), .A1N(n454), .B0(n481), .Y(N131) );
  OAI2BB1X1 U791 ( .A0N(n481), .A1N(n453), .B0(n482), .Y(N132) );
  OAI2BB1X1 U792 ( .A0N(n482), .A1N(n452), .B0(n483), .Y(N133) );
  OAI2BB1X1 U793 ( .A0N(n483), .A1N(n451), .B0(n484), .Y(N134) );
  AO21X1 U794 ( .A0(n484), .A1(n450), .B0(N127), .Y(N121) );
  NAND2BX1 U795 ( .AN(n456), .B(n473), .Y(n485) );
  OR2X1 U796 ( .A(n485), .B(n455), .Y(n486) );
  OR2X1 U797 ( .A(n486), .B(n454), .Y(n487) );
  OR2X1 U798 ( .A(n487), .B(n453), .Y(n488) );
  OR2X1 U799 ( .A(n488), .B(n452), .Y(n489) );
  OR2X1 U800 ( .A(n489), .B(n451), .Y(n490) );
  AO21X1 U801 ( .A0(n490), .A1(n450), .B0(N274), .Y(N268) );
  NAND2BX1 U802 ( .AN(\temp[0][4] ), .B(gray_data[4]), .Y(n491) );
  OAI222XL U803 ( .A0(\temp[0][5] ), .A1(n507), .B0(\temp[0][5] ), .B1(n491), 
        .C0(n507), .C1(n491), .Y(n492) );
  OAI222XL U804 ( .A0(gray_data[6]), .A1(n492), .B0(n344), .B1(n492), .C0(
        gray_data[6]), .C1(n344), .Y(n503) );
  NOR2BX1 U805 ( .AN(\temp[0][4] ), .B(gray_data[4]), .Y(n493) );
  OAI22XL U806 ( .A0(n493), .A1(n507), .B0(\temp[0][5] ), .B1(n493), .Y(n501)
         );
  NAND2BX1 U807 ( .AN(\temp[0][2] ), .B(gray_data[2]), .Y(n499) );
  OAI2BB2XL U808 ( .B0(gray_data[0]), .B1(n343), .A0N(n505), .A1N(\temp[0][1] ), .Y(n494) );
  OAI21XL U809 ( .A0(\temp[0][1] ), .A1(n505), .B0(n494), .Y(n497) );
  NOR2BX1 U810 ( .AN(\temp[0][2] ), .B(gray_data[2]), .Y(n495) );
  OAI22XL U811 ( .A0(n495), .A1(n506), .B0(\temp[0][3] ), .B1(n495), .Y(n496)
         );
  AOI2BB2X1 U812 ( .B0(n497), .B1(n496), .A0N(n499), .A1N(n506), .Y(n498) );
  OAI221XL U813 ( .A0(\temp[0][3] ), .A1(n499), .B0(\temp[0][3] ), .B1(n506), 
        .C0(n498), .Y(n500) );
  OAI211X1 U814 ( .A0(gray_data[6]), .A1(n344), .B0(n501), .C0(n500), .Y(n502)
         );
  AO22X1 U815 ( .A0(n508), .A1(\temp[0][7] ), .B0(n503), .B1(n502), .Y(n504)
         );
  OAI21XL U816 ( .A0(\temp[0][7] ), .A1(n508), .B0(n504), .Y(
        \r550/GE_LT_GT_LE ) );
endmodule

