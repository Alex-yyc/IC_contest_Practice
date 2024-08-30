/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Jan 30 16:10:32 2024
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  AND2X2 U2 ( .A(A[8]), .B(n3), .Y(n2) );
  XOR2XL U3 ( .A(A[8]), .B(n3), .Y(SUM[8]) );
  XOR2XL U4 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XOR2XL U5 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2X1 U6 ( .A(A[9]), .B(n2), .Y(SUM[9]) );
  AND2X2 U7 ( .A(A[7]), .B(carry[7]), .Y(n3) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N62, N63, N64, N65, N66, N67, N68, N69, N70, N77, N78, N79, n918,
         n919, n920, n921, n922, n923, n924, n925, n926, n927, n928, n929,
         n930, n931, n932, n933, n934, n935, n936, n937, n938, \worker[3] ,
         \whotake_whichjob[0][3] , \whotake_whichjob[0][2] ,
         \whotake_whichjob[0][1] , \whotake_whichjob[0][0] ,
         \whotake_whichjob[1][3] , \whotake_whichjob[1][2] ,
         \whotake_whichjob[1][1] , \whotake_whichjob[1][0] ,
         \whotake_whichjob[2][3] , \whotake_whichjob[2][2] ,
         \whotake_whichjob[2][1] , \whotake_whichjob[2][0] ,
         \whotake_whichjob[3][3] , \whotake_whichjob[3][2] ,
         \whotake_whichjob[3][1] , \whotake_whichjob[3][0] ,
         \whotake_whichjob[4][3] , \whotake_whichjob[4][2] ,
         \whotake_whichjob[4][1] , \whotake_whichjob[4][0] ,
         \whotake_whichjob[5][3] , \whotake_whichjob[5][2] ,
         \whotake_whichjob[5][1] , \whotake_whichjob[5][0] ,
         \whotake_whichjob[6][3] , \whotake_whichjob[6][2] ,
         \whotake_whichjob[6][1] , \whotake_whichjob[6][0] ,
         \whotake_whichjob[7][3] , \whotake_whichjob[7][2] ,
         \whotake_whichjob[7][1] , \whotake_whichjob[7][0] , N80, N81, N82,
         N83, N84, N85, N86, N87, seq_all_complete, N113, N114, N115, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N131, N132,
         N175, N176, N177, N178, N180, N181, N182, N190, N191, N192, N193,
         N294, N295, N296, N297, N299, N300, N301, N302, n55, n57, n60, n61,
         n63, n65, n68, n70, n71, n72, n73, n74, n75, n76, n77, n78, n81, n82,
         n84, n85, n87, n89, n101, n102, n104, n105, n106, n108, n110, n119,
         n120, n121, n124, n125, n126, n128, n129, n131, n133, n134, n136,
         n138, n140, n142, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n154, n155, n157, n158, n159, n162, n163, n164, n165, n166,
         n170, n171, n172, n174, n176, n178, n179, n180, n183, n185, n187,
         n188, n189, n192, n194, n196, n197, n198, n201, n203, n204, n205,
         n206, n207, n208, n211, n212, n213, n216, n218, n221, n224, n227,
         n228, n229, n231, n232, n234, n235, n236, n237, n238, n239, n240,
         n241, n244, n246, n247, n249, n250, n252, n253, n254, n256, n257,
         n259, n260, n261, n262, n263, n264, n267, n269, n270, n271, n275,
         n276, n278, n279, n282, n284, n285, n286, n288, n291, n292, n293,
         n294, n297, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n312, n313, n314, n315, n316, n317, n319, n320, n322,
         n323, n324, n325, n326, n328, n329, n330, n332, n333, n334, n335,
         n336, n337, n338, n339, n341, n342, n343, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n357, n358, n359, n360,
         n361, n362, n363, n366, n369, n370, n371, n372, n374, n375, n376,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n391, n392,
         n393, n395, n397, n398, n399, n400, n401, n403, n405, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n418, n419, n420, n421,
         n422, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n843,
         n844, n845, n846, n847, n848, n849, n850, n851, n852, n853, n854,
         n855, n856, n857, n858, n859, n860, n861, n862, n863, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n898,
         n899, n900, n901, n902, n903, n904, n905, n906, n907, n908, n909,
         n910, n911, n912, n913, n914, n915, n916, n917;
  wire   [9:0] temp_cost;
  wire   [9:0] min_cost;
  wire   [2:0] next_state;

  OAI31X2 U373 ( .A0(n353), .A1(n354), .A2(n857), .B0(n769), .Y(n133) );
  JAM_DW01_add_0_DW01_add_2 add_85 ( .A(temp_cost), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), .SUM({N129, N128, N127, N126, N125, N124, N123, N122, N121, N120}) );
  DFFRX1 seq_all_complete_reg ( .D(n415), .CK(CLK), .RN(n778), .Q(
        seq_all_complete), .QN(n594) );
  DFFRX1 \worker_reg[3]  ( .D(n484), .CK(CLK), .RN(n779), .Q(\worker[3] ) );
  DFFSX1 \minMAX_reg[3]  ( .D(n490), .CK(CLK), .SN(n784), .QN(n903) );
  DFFRX1 \worker_reg[0]  ( .D(n486), .CK(CLK), .RN(n779), .Q(N68), .QN(n432)
         );
  DFFRX1 \worker_reg[1]  ( .D(n487), .CK(CLK), .RN(n779), .Q(N69), .QN(n431)
         );
  DFFSX1 \minMAX_reg[2]  ( .D(n491), .CK(CLK), .SN(n784), .QN(n904) );
  DFFSX1 \minMAX_reg[0]  ( .D(n493), .CK(CLK), .SN(n784), .QN(n906) );
  DFFSX1 \minMAX_reg[1]  ( .D(n492), .CK(CLK), .SN(n784), .QN(n905) );
  DFFRX1 \whotake_whichjob_reg[6][3]  ( .D(n505), .CK(CLK), .RN(n782), .Q(
        \whotake_whichjob[6][3] ), .QN(n575) );
  DFFRX1 \whotake_whichjob_reg[7][3]  ( .D(n501), .CK(CLK), .RN(n782), .Q(
        \whotake_whichjob[7][3] ), .QN(n573) );
  DFFRX1 \whotake_whichjob_reg[3][3]  ( .D(n524), .CK(CLK), .RN(n783), .Q(
        \whotake_whichjob[3][3] ), .QN(n581) );
  DFFRX1 \temp_cost_reg[9]  ( .D(n464), .CK(CLK), .RN(n780), .Q(temp_cost[9]), 
        .QN(n586) );
  DFFRX1 \whotake_whichjob_reg[5][3]  ( .D(n497), .CK(CLK), .RN(n783), .Q(
        \whotake_whichjob[5][3] ), .QN(n576) );
  DFFSX1 \whotake_whichjob_reg[7][0]  ( .D(n504), .CK(CLK), .SN(n784), .Q(
        \whotake_whichjob[7][0] ), .QN(n570) );
  DFFRX1 \temp_cost_reg[8]  ( .D(n465), .CK(CLK), .RN(n780), .Q(temp_cost[8]), 
        .QN(n587) );
  DFFRX1 \whotake_whichjob_reg[6][0]  ( .D(n508), .CK(CLK), .RN(n778), .Q(
        \whotake_whichjob[6][0] ), .QN(n572) );
  DFFSX1 \whotake_whichjob_reg[6][2]  ( .D(n506), .CK(CLK), .SN(n784), .Q(
        \whotake_whichjob[6][2] ), .QN(n571) );
  DFFSX1 \whotake_whichjob_reg[7][2]  ( .D(n502), .CK(CLK), .SN(n784), .Q(
        \whotake_whichjob[7][2] ), .QN(n580) );
  DFFSX1 \whotake_whichjob_reg[6][1]  ( .D(n507), .CK(CLK), .SN(n784), .Q(
        \whotake_whichjob[6][1] ), .QN(n568) );
  DFFSX1 \whotake_whichjob_reg[3][1]  ( .D(n526), .CK(CLK), .SN(n784), .Q(
        \whotake_whichjob[3][1] ), .QN(n583) );
  DFFSX1 \whotake_whichjob_reg[7][1]  ( .D(n503), .CK(CLK), .SN(n784), .Q(
        \whotake_whichjob[7][1] ), .QN(n567) );
  DFFRX1 \whotake_whichjob_reg[3][2]  ( .D(n525), .CK(CLK), .RN(n783), .Q(
        \whotake_whichjob[3][2] ), .QN(n577) );
  DFFRX1 \temp_cost_reg[7]  ( .D(n466), .CK(CLK), .RN(n780), .Q(temp_cost[7]), 
        .QN(n584) );
  DFFSX1 \whotake_whichjob_reg[1][0]  ( .D(n519), .CK(CLK), .SN(n782), .Q(
        \whotake_whichjob[1][0] ) );
  DFFSX1 \whotake_whichjob_reg[5][0]  ( .D(n500), .CK(CLK), .SN(n784), .Q(
        \whotake_whichjob[5][0] ), .QN(n574) );
  DFFSX1 \whotake_whichjob_reg[5][2]  ( .D(n498), .CK(CLK), .SN(n784), .Q(
        \whotake_whichjob[5][2] ), .QN(n582) );
  DFFRX1 \whotake_whichjob_reg[5][1]  ( .D(n499), .CK(CLK), .RN(n783), .Q(
        \whotake_whichjob[5][1] ), .QN(n569) );
  DFFRX1 \temp_cost_reg[6]  ( .D(n467), .CK(CLK), .RN(n780), .Q(temp_cost[6]), 
        .QN(n588) );
  DFFRX1 \temp_cost_reg[5]  ( .D(n468), .CK(CLK), .RN(n780), .Q(temp_cost[5]), 
        .QN(n592) );
  DFFRX1 \temp_cost_reg[4]  ( .D(n469), .CK(CLK), .RN(n780), .Q(temp_cost[4]), 
        .QN(n593) );
  DFFRX1 \temp_cost_reg[3]  ( .D(n470), .CK(CLK), .RN(n780), .Q(temp_cost[3]), 
        .QN(n591) );
  DFFRX1 \temp_cost_reg[2]  ( .D(n471), .CK(CLK), .RN(n780), .Q(temp_cost[2]), 
        .QN(n589) );
  DFFRX1 \temp_cost_reg[1]  ( .D(n472), .CK(CLK), .RN(n780), .Q(temp_cost[1]), 
        .QN(n590) );
  DFFRX1 \temp_cost_reg[0]  ( .D(n473), .CK(CLK), .RN(n780), .Q(temp_cost[0]), 
        .QN(n585) );
  DFFRX1 \worker_reg[2]  ( .D(n485), .CK(CLK), .RN(n779), .Q(N70), .QN(n430)
         );
  DFFSX1 \cur_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .SN(n782), .QN(n434) );
  DFFRX1 \switch_point_reg[0]  ( .D(n528), .CK(CLK), .RN(n778), .Q(N65), .QN(
        n419) );
  DFFRX1 \switch_point_reg[1]  ( .D(n489), .CK(CLK), .RN(n778), .Q(N66), .QN(
        n418) );
  DFFRX1 \pivot_reg[0]  ( .D(n510), .CK(CLK), .RN(n778), .Q(N62), .QN(n425) );
  DFFRX1 \whotake_whichjob_reg[0][3]  ( .D(n477), .CK(CLK), .RN(n783), .Q(
        \whotake_whichjob[0][3] ), .QN(n579) );
  DFFRX1 \whotake_whichjob_reg[0][0]  ( .D(n475), .CK(CLK), .RN(n783), .Q(
        \whotake_whichjob[0][0] ), .QN(n578) );
  DFFRX1 Valid_reg ( .D(n414), .CK(CLK), .RN(n780), .Q(n938), .QN(n413) );
  DFFRX1 \MinCost_reg[0]  ( .D(n462), .CK(CLK), .RN(n782), .Q(n937), .QN(n387)
         );
  DFFRX1 \MinCost_reg[9]  ( .D(n460), .CK(CLK), .RN(n782), .Q(n928), .QN(n389)
         );
  DFFRX1 \MinCost_reg[8]  ( .D(n458), .CK(CLK), .RN(n782), .Q(n929), .QN(n391)
         );
  DFFRX1 \MinCost_reg[7]  ( .D(n456), .CK(CLK), .RN(n782), .Q(n930), .QN(n393)
         );
  DFFRX1 \MinCost_reg[6]  ( .D(n454), .CK(CLK), .RN(n782), .Q(n931), .QN(n395)
         );
  DFFRX1 \MinCost_reg[5]  ( .D(n452), .CK(CLK), .RN(n781), .Q(n932), .QN(n397)
         );
  DFFRX1 \MinCost_reg[4]  ( .D(n450), .CK(CLK), .RN(n781), .Q(n933), .QN(n399)
         );
  DFFRX1 \MinCost_reg[3]  ( .D(n448), .CK(CLK), .RN(n781), .Q(n934), .QN(n401)
         );
  DFFRX1 \MinCost_reg[2]  ( .D(n446), .CK(CLK), .RN(n781), .Q(n935), .QN(n403)
         );
  DFFRX1 \MinCost_reg[1]  ( .D(n444), .CK(CLK), .RN(n781), .Q(n936), .QN(n405)
         );
  DFFRX1 \MatchCount_reg[1]  ( .D(n442), .CK(CLK), .RN(n781), .Q(n926), .QN(
        n407) );
  DFFRX1 \MatchCount_reg[2]  ( .D(n438), .CK(CLK), .RN(n781), .Q(n925), .QN(
        n409) );
  DFFRX1 \MatchCount_reg[3]  ( .D(n436), .CK(CLK), .RN(n781), .Q(n924), .QN(
        n410) );
  DFFRX1 \MatchCount_reg[0]  ( .D(n440), .CK(CLK), .RN(n781), .Q(n927), .QN(
        n408) );
  DFFRX1 \J_reg[0]  ( .D(n483), .CK(CLK), .RN(n779), .Q(n923), .QN(n381) );
  DFFRX1 \W_reg[0]  ( .D(n482), .CK(CLK), .RN(n779), .Q(n920), .QN(n382) );
  DFFRX1 \J_reg[2]  ( .D(n481), .CK(CLK), .RN(n779), .Q(n921), .QN(n383) );
  DFFRX1 \J_reg[1]  ( .D(n480), .CK(CLK), .RN(n779), .Q(n922), .QN(n384) );
  DFFRX1 \W_reg[2]  ( .D(n479), .CK(CLK), .RN(n779), .Q(n918), .QN(n385) );
  DFFRX1 \W_reg[1]  ( .D(n478), .CK(CLK), .RN(n779), .Q(n919), .QN(n386) );
  DFFSX1 \cur_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .SN(n833), .Q(n866), 
        .QN(n433) );
  DFFSX1 \min_cost_reg[9]  ( .D(n461), .CK(CLK), .SN(n833), .QN(n825) );
  DFFSX1 \min_cost_reg[8]  ( .D(n459), .CK(CLK), .SN(n833), .Q(min_cost[8]), 
        .QN(n392) );
  DFFSX1 \min_cost_reg[7]  ( .D(n457), .CK(CLK), .SN(n833), .QN(n826) );
  DFFSX1 \min_cost_reg[6]  ( .D(n455), .CK(CLK), .SN(n833), .QN(n827) );
  DFFSX1 \min_cost_reg[5]  ( .D(n453), .CK(CLK), .SN(n833), .Q(min_cost[5]), 
        .QN(n398) );
  DFFSX1 \min_cost_reg[4]  ( .D(n451), .CK(CLK), .SN(n833), .Q(min_cost[4]), 
        .QN(n400) );
  DFFSX1 \min_cost_reg[3]  ( .D(n449), .CK(CLK), .SN(n833), .Q(min_cost[3]), 
        .QN(n828) );
  DFFSX1 \min_cost_reg[2]  ( .D(n447), .CK(CLK), .SN(n833), .QN(n829) );
  DFFSX1 \min_cost_reg[1]  ( .D(n445), .CK(CLK), .SN(n833), .Q(min_cost[1]), 
        .QN(n830) );
  DFFSX1 \min_cost_reg[0]  ( .D(n463), .CK(CLK), .SN(n833), .Q(min_cost[0]), 
        .QN(n388) );
  DFFRX1 \whotake_whichjob_reg[0][2]  ( .D(n476), .CK(CLK), .RN(n833), .Q(
        \whotake_whichjob[0][2] ), .QN(n913) );
  DFFRX1 \whotake_whichjob_reg[0][1]  ( .D(n530), .CK(CLK), .RN(n833), .Q(
        \whotake_whichjob[0][1] ), .QN(n914) );
  DFFRX1 \bias_reg[0]  ( .D(n496), .CK(CLK), .RN(n833), .Q(n891), .QN(n428) );
  DFFRX1 \bias_reg[1]  ( .D(n494), .CK(CLK), .RN(n833), .Q(n896), .QN(n427) );
  DFFRXL give_reg ( .D(n529), .CK(CLK), .RN(n833), .Q(n897), .QN(n412) );
  DFFRXL \duplicate_combination_reg[2]  ( .D(n439), .CK(CLK), .RN(n833), .Q(
        n902), .QN(n420) );
  DFFRXL \duplicate_combination_reg[1]  ( .D(n443), .CK(CLK), .RN(n833), .Q(
        n901), .QN(n421) );
  DFFRXL \duplicate_combination_reg[3]  ( .D(n437), .CK(CLK), .RN(n833), .QN(
        n411) );
  DFFRX4 \pivot_reg[2]  ( .D(n515), .CK(CLK), .RN(n833), .Q(N64), .QN(n639) );
  DFFRX4 \switch_point_reg[2]  ( .D(n488), .CK(CLK), .RN(n833), .Q(N67), .QN(
        n660) );
  DFFRX2 \pivot_reg[1]  ( .D(n509), .CK(CLK), .RN(n833), .Q(N63), .QN(n637) );
  DFFSX2 \whotake_whichjob_reg[3][0]  ( .D(n527), .CK(CLK), .SN(n833), .Q(
        \whotake_whichjob[3][0] ), .QN(n889) );
  DFFSX2 \whotake_whichjob_reg[2][1]  ( .D(n522), .CK(CLK), .SN(n833), .Q(
        \whotake_whichjob[2][1] ), .QN(n912) );
  DFFRX2 \whotake_whichjob_reg[2][2]  ( .D(n521), .CK(CLK), .RN(n833), .Q(
        \whotake_whichjob[2][2] ), .QN(n911) );
  DFFRX2 \whotake_whichjob_reg[1][1]  ( .D(n518), .CK(CLK), .RN(n833), .Q(
        \whotake_whichjob[1][1] ), .QN(n909) );
  DFFRX2 \whotake_whichjob_reg[4][1]  ( .D(n513), .CK(CLK), .RN(n833), .Q(
        \whotake_whichjob[4][1] ), .QN(n917) );
  DFFSX2 \whotake_whichjob_reg[4][2]  ( .D(n512), .CK(CLK), .SN(n833), .Q(
        \whotake_whichjob[4][2] ), .QN(n916) );
  DFFRX2 \whotake_whichjob_reg[2][3]  ( .D(n520), .CK(CLK), .RN(n833), .Q(
        \whotake_whichjob[2][3] ), .QN(n910) );
  DFFRX2 \whotake_whichjob_reg[2][0]  ( .D(n523), .CK(CLK), .RN(n833), .Q(
        \whotake_whichjob[2][0] ), .QN(n883) );
  DFFRX2 \whotake_whichjob_reg[1][3]  ( .D(n516), .CK(CLK), .RN(n833), .Q(
        \whotake_whichjob[1][3] ), .QN(n907) );
  DFFRX2 \whotake_whichjob_reg[1][2]  ( .D(n517), .CK(CLK), .RN(n833), .Q(
        \whotake_whichjob[1][2] ), .QN(n908) );
  DFFRX2 \whotake_whichjob_reg[4][3]  ( .D(n511), .CK(CLK), .RN(n833), .Q(
        \whotake_whichjob[4][3] ), .QN(n915) );
  DFFRX2 \whotake_whichjob_reg[4][0]  ( .D(n514), .CK(CLK), .RN(n833), .Q(
        \whotake_whichjob[4][0] ), .QN(n894) );
  DFFRX1 \cur_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n833), .Q(n850), 
        .QN(n435) );
  DFFRX1 \bias_reg[2]  ( .D(n495), .CK(CLK), .RN(n833), .QN(n426) );
  DFFRX1 \duplicate_combination_reg[0]  ( .D(n441), .CK(CLK), .RN(n833), .Q(
        n900), .QN(n422) );
  DFFRX1 find_minMax_done_reg ( .D(n474), .CK(CLK), .RN(n833), .QN(n429) );
  CLKINVX1 U468 ( .A(n228), .Y(n856) );
  OAI221X1 U469 ( .A0(n325), .A1(n207), .B0(n856), .B1(n320), .C0(n846), .Y(
        n317) );
  OAI211X1 U470 ( .A0(n338), .A1(n856), .B0(n843), .C0(n846), .Y(n326) );
  OAI31X1 U471 ( .A0(n769), .A1(n639), .A2(n637), .B0(n227), .Y(n212) );
  XNOR2X2 U472 ( .A(n375), .B(n376), .Y(N78) );
  AOI32XL U473 ( .A0(n433), .A1(n897), .A2(n435), .B0(n752), .B1(n429), .Y(n68) );
  AOI211XL U474 ( .A0(\whotake_whichjob[4][1] ), .A1(n569), .B0(n574), .C0(
        \whotake_whichjob[4][0] ), .Y(n307) );
  AOI211XL U475 ( .A0(\whotake_whichjob[2][1] ), .A1(n583), .B0(n889), .C0(
        \whotake_whichjob[2][0] ), .Y(n297) );
  XOR2XL U476 ( .A(n426), .B(N64), .Y(n371) );
  NAND2XL U477 ( .A(n637), .B(N64), .Y(n208) );
  INVX8 U478 ( .A(RST), .Y(n833) );
  NOR2X2 U479 ( .A(N77), .B(N78), .Y(n676) );
  OAI22X1 U480 ( .A0(n639), .A1(n628), .B0(N64), .B1(n627), .Y(N81) );
  NOR2X2 U481 ( .A(N77), .B(N78), .Y(n721) );
  OAI22X1 U482 ( .A0(n639), .A1(n624), .B0(N64), .B1(n623), .Y(N82) );
  NOR2X2 U483 ( .A(N77), .B(N78), .Y(n699) );
  NOR2X2 U484 ( .A(N62), .B(N63), .Y(n630) );
  NOR2X2 U485 ( .A(N65), .B(N66), .Y(n653) );
  NOR2X2 U486 ( .A(n684), .B(N78), .Y(n722) );
  NOR2X2 U487 ( .A(n683), .B(n684), .Y(n679) );
  NOR2X2 U488 ( .A(n638), .B(N63), .Y(n631) );
  NOR2X2 U489 ( .A(n706), .B(N78), .Y(n700) );
  NOR2X2 U490 ( .A(n662), .B(N66), .Y(n654) );
  NOR2X2 U491 ( .A(n683), .B(N77), .Y(n680) );
  NOR2X2 U492 ( .A(n637), .B(n638), .Y(n633) );
  NOR2X2 U493 ( .A(n661), .B(n662), .Y(n656) );
  NOR2X2 U494 ( .A(n728), .B(n706), .Y(n702) );
  NOR2X2 U495 ( .A(n728), .B(N77), .Y(n725) );
  BUFX12 U496 ( .A(n919), .Y(W[1]) );
  BUFX12 U497 ( .A(n918), .Y(W[2]) );
  BUFX12 U498 ( .A(n922), .Y(J[1]) );
  BUFX12 U499 ( .A(n921), .Y(J[2]) );
  BUFX12 U500 ( .A(n920), .Y(W[0]) );
  BUFX12 U501 ( .A(n923), .Y(J[0]) );
  BUFX12 U502 ( .A(n927), .Y(MatchCount[0]) );
  BUFX12 U503 ( .A(n924), .Y(MatchCount[3]) );
  BUFX12 U504 ( .A(n925), .Y(MatchCount[2]) );
  BUFX12 U505 ( .A(n926), .Y(MatchCount[1]) );
  BUFX12 U506 ( .A(n936), .Y(MinCost[1]) );
  BUFX12 U507 ( .A(n935), .Y(MinCost[2]) );
  BUFX12 U508 ( .A(n934), .Y(MinCost[3]) );
  BUFX12 U509 ( .A(n933), .Y(MinCost[4]) );
  BUFX12 U510 ( .A(n932), .Y(MinCost[5]) );
  BUFX12 U511 ( .A(n931), .Y(MinCost[6]) );
  BUFX12 U512 ( .A(n930), .Y(MinCost[7]) );
  BUFX12 U513 ( .A(n929), .Y(MinCost[8]) );
  BUFX12 U514 ( .A(n928), .Y(MinCost[9]) );
  BUFX12 U515 ( .A(n937), .Y(MinCost[0]) );
  BUFX12 U516 ( .A(n938), .Y(Valid) );
  OAI22X1 U517 ( .A0(temp_cost[9]), .A1(n825), .B0(n831), .B1(n818), .Y(N131)
         );
  NOR2X2 U518 ( .A(n684), .B(N78), .Y(n677) );
  NOR2X2 U519 ( .A(n728), .B(n684), .Y(n724) );
  NOR2X2 U520 ( .A(n637), .B(N62), .Y(n634) );
  NOR2X2 U521 ( .A(n661), .B(N65), .Y(n657) );
  NOR2X2 U522 ( .A(n728), .B(N77), .Y(n703) );
  NAND3BXL U523 ( .AN(N131), .B(n820), .C(n819), .Y(n823) );
  AO22XL U524 ( .A0(n771), .A1(n677), .B0(\whotake_whichjob[4][1] ), .B1(n676), 
        .Y(n667) );
  AO22XL U525 ( .A0(\whotake_whichjob[1][1] ), .A1(n677), .B0(
        \whotake_whichjob[0][1] ), .B1(n676), .Y(n668) );
  AO22XL U526 ( .A0(n771), .A1(n700), .B0(\whotake_whichjob[4][1] ), .B1(n699), 
        .Y(n690) );
  AO22XL U527 ( .A0(\whotake_whichjob[1][1] ), .A1(n700), .B0(
        \whotake_whichjob[0][1] ), .B1(n699), .Y(n691) );
  AO22XL U528 ( .A0(n761), .A1(n677), .B0(\whotake_whichjob[4][2] ), .B1(n676), 
        .Y(n671) );
  AO22XL U529 ( .A0(\whotake_whichjob[1][2] ), .A1(n677), .B0(
        \whotake_whichjob[0][2] ), .B1(n676), .Y(n672) );
  AO22XL U530 ( .A0(n764), .A1(n700), .B0(\whotake_whichjob[4][0] ), .B1(n699), 
        .Y(n686) );
  AO22XL U531 ( .A0(n768), .A1(n700), .B0(\whotake_whichjob[0][0] ), .B1(n699), 
        .Y(n687) );
  AO22XL U532 ( .A0(n764), .A1(n677), .B0(\whotake_whichjob[4][0] ), .B1(n676), 
        .Y(n663) );
  AO22XL U533 ( .A0(n768), .A1(n677), .B0(\whotake_whichjob[0][0] ), .B1(n676), 
        .Y(n664) );
  AO22XL U534 ( .A0(n761), .A1(n700), .B0(\whotake_whichjob[4][2] ), .B1(n699), 
        .Y(n694) );
  AO22XL U535 ( .A0(\whotake_whichjob[1][2] ), .A1(n700), .B0(
        \whotake_whichjob[0][2] ), .B1(n699), .Y(n695) );
  AO22XL U536 ( .A0(n771), .A1(n631), .B0(\whotake_whichjob[4][1] ), .B1(n630), 
        .Y(n621) );
  AO22XL U537 ( .A0(\whotake_whichjob[1][1] ), .A1(n631), .B0(
        \whotake_whichjob[0][1] ), .B1(n630), .Y(n622) );
  AO22XL U538 ( .A0(n773), .A1(n677), .B0(\whotake_whichjob[4][3] ), .B1(n676), 
        .Y(n675) );
  AO22XL U539 ( .A0(\whotake_whichjob[1][3] ), .A1(n677), .B0(
        \whotake_whichjob[0][3] ), .B1(n676), .Y(n678) );
  AO22XL U540 ( .A0(n764), .A1(n631), .B0(\whotake_whichjob[4][0] ), .B1(n630), 
        .Y(n617) );
  AO22XL U541 ( .A0(n768), .A1(n631), .B0(\whotake_whichjob[0][0] ), .B1(n630), 
        .Y(n618) );
  AO22XL U542 ( .A0(n761), .A1(n631), .B0(\whotake_whichjob[4][2] ), .B1(n630), 
        .Y(n625) );
  AO22XL U543 ( .A0(\whotake_whichjob[1][2] ), .A1(n631), .B0(
        \whotake_whichjob[0][2] ), .B1(n630), .Y(n626) );
  AO22XL U544 ( .A0(\whotake_whichjob[1][3] ), .A1(n700), .B0(
        \whotake_whichjob[0][3] ), .B1(n699), .Y(n701) );
  AO22XL U545 ( .A0(n773), .A1(n700), .B0(\whotake_whichjob[4][3] ), .B1(n699), 
        .Y(n698) );
  AO22XL U546 ( .A0(n773), .A1(n631), .B0(\whotake_whichjob[4][3] ), .B1(n630), 
        .Y(n629) );
  AO22XL U547 ( .A0(\whotake_whichjob[1][3] ), .A1(n631), .B0(
        \whotake_whichjob[0][3] ), .B1(n630), .Y(n632) );
  AO22XL U548 ( .A0(n761), .A1(n654), .B0(\whotake_whichjob[4][2] ), .B1(n653), 
        .Y(n648) );
  AO22XL U549 ( .A0(\whotake_whichjob[1][2] ), .A1(n654), .B0(
        \whotake_whichjob[0][2] ), .B1(n653), .Y(n649) );
  AO22XL U550 ( .A0(n771), .A1(n654), .B0(\whotake_whichjob[4][1] ), .B1(n653), 
        .Y(n644) );
  AO22XL U551 ( .A0(\whotake_whichjob[1][1] ), .A1(n654), .B0(
        \whotake_whichjob[0][1] ), .B1(n653), .Y(n645) );
  AO22XL U552 ( .A0(n773), .A1(n654), .B0(\whotake_whichjob[4][3] ), .B1(n653), 
        .Y(n652) );
  AO22XL U553 ( .A0(\whotake_whichjob[1][3] ), .A1(n654), .B0(
        \whotake_whichjob[0][3] ), .B1(n653), .Y(n655) );
  AO22XL U554 ( .A0(n764), .A1(n654), .B0(\whotake_whichjob[4][0] ), .B1(n653), 
        .Y(n640) );
  AO22XL U555 ( .A0(n768), .A1(n654), .B0(\whotake_whichjob[0][0] ), .B1(n653), 
        .Y(n641) );
  AO22XL U556 ( .A0(n768), .A1(n722), .B0(\whotake_whichjob[0][0] ), .B1(n721), 
        .Y(n709) );
  AO22XL U557 ( .A0(\whotake_whichjob[1][1] ), .A1(n722), .B0(
        \whotake_whichjob[0][1] ), .B1(n721), .Y(n713) );
  AO22XL U558 ( .A0(\whotake_whichjob[1][2] ), .A1(n722), .B0(
        \whotake_whichjob[0][2] ), .B1(n721), .Y(n717) );
  AO22XL U559 ( .A0(\whotake_whichjob[1][3] ), .A1(n722), .B0(
        \whotake_whichjob[0][3] ), .B1(n721), .Y(n723) );
  AO22XL U560 ( .A0(n773), .A1(n722), .B0(\whotake_whichjob[4][3] ), .B1(n721), 
        .Y(n720) );
  AO22XL U561 ( .A0(n764), .A1(n722), .B0(\whotake_whichjob[4][0] ), .B1(n721), 
        .Y(n708) );
  AO22XL U562 ( .A0(n771), .A1(n722), .B0(\whotake_whichjob[4][1] ), .B1(n721), 
        .Y(n712) );
  AO22XL U563 ( .A0(n761), .A1(n722), .B0(\whotake_whichjob[4][2] ), .B1(n721), 
        .Y(n716) );
  OAI21XL U564 ( .A0(n836), .A1(n81), .B0(n758), .Y(n85) );
  OAI21XL U565 ( .A0(n275), .A1(n276), .B0(n154), .Y(n148) );
  OA21XL U566 ( .A0(n775), .A1(n576), .B0(n313), .Y(n250) );
  OAI21XL U567 ( .A0(N180), .A1(n904), .B0(n358), .Y(n355) );
  CLKBUFX3 U568 ( .A(n213), .Y(n753) );
  NAND2X1 U569 ( .A(n846), .B(n267), .Y(n253) );
  NAND2X1 U570 ( .A(n204), .B(n205), .Y(n163) );
  NAND2X1 U571 ( .A(N85), .B(n752), .Y(n183) );
  NAND2X1 U572 ( .A(N86), .B(n752), .Y(n192) );
  CLKINVX1 U573 ( .A(n341), .Y(n844) );
  NAND2X1 U574 ( .A(N87), .B(n752), .Y(n201) );
  CLKINVX1 U575 ( .A(n232), .Y(n840) );
  CLKINVX1 U576 ( .A(n330), .Y(n874) );
  OAI21XL U577 ( .A0(n773), .A1(n915), .B0(n304), .Y(n276) );
  OAI21XL U578 ( .A0(\whotake_whichjob[4][3] ), .A1(n581), .B0(n308), .Y(n291)
         );
  OAI21X1 U579 ( .A0(n774), .A1(n910), .B0(n292), .Y(n74) );
  OAI21XL U580 ( .A0(\whotake_whichjob[0][3] ), .A1(n907), .B0(n278), .Y(n72)
         );
  NOR4X2 U581 ( .A(n754), .B(n848), .C(n755), .D(n352), .Y(n341) );
  NOR3X2 U582 ( .A(n866), .B(n434), .C(n850), .Y(n101) );
  NAND2X1 U583 ( .A(n238), .B(n174), .Y(n232) );
  NAND3X1 U584 ( .A(n871), .B(n895), .C(n660), .Y(n345) );
  NAND2X1 U585 ( .A(n639), .B(n637), .Y(n325) );
  NAND3X1 U586 ( .A(n419), .B(n895), .C(n660), .Y(n330) );
  NAND3X1 U587 ( .A(n418), .B(n871), .C(n660), .Y(n320) );
  NAND3X1 U588 ( .A(n433), .B(n850), .C(n434), .Y(n65) );
  CLKINVX1 U589 ( .A(n431), .Y(n899) );
  CLKINVX1 U590 ( .A(n85), .Y(n835) );
  NOR2BX2 U591 ( .AN(n133), .B(n857), .Y(n134) );
  CLKINVX1 U592 ( .A(N77), .Y(n684) );
  CLKINVX1 U593 ( .A(N77), .Y(n706) );
  INVX3 U594 ( .A(n758), .Y(n837) );
  CLKINVX1 U595 ( .A(n194), .Y(n861) );
  CLKINVX1 U596 ( .A(n185), .Y(n863) );
  CLKINVX1 U597 ( .A(n176), .Y(n865) );
  CLKINVX1 U598 ( .A(n203), .Y(n859) );
  CLKINVX1 U599 ( .A(n172), .Y(n864) );
  CLKINVX1 U600 ( .A(n201), .Y(n858) );
  CLKINVX1 U601 ( .A(n192), .Y(n860) );
  CLKINVX1 U602 ( .A(n183), .Y(n862) );
  OAI21X1 U603 ( .A0(n271), .A1(n836), .B0(n769), .Y(n158) );
  NOR4X1 U604 ( .A(n250), .B(n890), .C(n152), .D(n159), .Y(n271) );
  CLKINVX1 U605 ( .A(n249), .Y(n892) );
  OR2X1 U606 ( .A(n250), .B(n892), .Y(n275) );
  CLKINVX1 U607 ( .A(n246), .Y(n890) );
  CLKINVX1 U608 ( .A(n326), .Y(n842) );
  CLKINVX1 U609 ( .A(n317), .Y(n845) );
  AO21X1 U610 ( .A0(n249), .A1(n250), .B0(n152), .Y(n147) );
  CLKINVX1 U611 ( .A(n754), .Y(n846) );
  CLKBUFX3 U612 ( .A(n847), .Y(n769) );
  CLKINVX1 U613 ( .A(n753), .Y(n847) );
  OAI21XL U614 ( .A0(n852), .A1(n853), .B0(n128), .Y(n129) );
  CLKINVX1 U615 ( .A(n131), .Y(n853) );
  CLKINVX1 U616 ( .A(n163), .Y(n838) );
  CLKINVX1 U617 ( .A(n128), .Y(n854) );
  CLKINVX1 U618 ( .A(n253), .Y(n841) );
  INVX3 U619 ( .A(n204), .Y(n848) );
  NAND2X1 U620 ( .A(n239), .B(n753), .Y(n174) );
  CLKBUFX3 U621 ( .A(n851), .Y(n770) );
  CLKINVX1 U622 ( .A(n759), .Y(n851) );
  CLKBUFX3 U623 ( .A(n833), .Y(n784) );
  CLKBUFX3 U624 ( .A(n782), .Y(n783) );
  CLKBUFX3 U625 ( .A(n833), .Y(n781) );
  CLKBUFX3 U626 ( .A(n781), .Y(n780) );
  CLKBUFX3 U627 ( .A(n833), .Y(n779) );
  CLKBUFX3 U628 ( .A(n782), .Y(n778) );
  CLKBUFX3 U629 ( .A(n833), .Y(n782) );
  AOI2BB2X1 U630 ( .B0(n355), .B1(n616), .A0N(n357), .A1N(n903), .Y(n354) );
  OAI211X1 U631 ( .A0(N175), .A1(n888), .B0(n361), .C0(n157), .Y(n353) );
  NOR2X1 U632 ( .A(n355), .B(n616), .Y(n357) );
  CLKINVX1 U633 ( .A(N176), .Y(n885) );
  CLKINVX1 U634 ( .A(N78), .Y(n683) );
  OAI2BB1X1 U635 ( .A0N(n888), .A1N(N175), .B0(n362), .Y(n361) );
  OAI21XL U636 ( .A0(N176), .A1(n887), .B0(n363), .Y(n362) );
  OAI221XL U637 ( .A0(N81), .A1(n885), .B0(N82), .B1(n884), .C0(n366), .Y(n363) );
  OAI211X1 U638 ( .A0(N177), .A1(n886), .B0(n879), .C0(N178), .Y(n366) );
  OAI211X1 U639 ( .A0(n906), .A1(n133), .B0(n142), .C0(n769), .Y(n493) );
  NAND2X1 U640 ( .A(N193), .B(n134), .Y(n142) );
  OAI211X1 U641 ( .A0(n905), .A1(n133), .B0(n140), .C0(n769), .Y(n492) );
  NAND2X1 U642 ( .A(N192), .B(n134), .Y(n140) );
  OAI211X1 U643 ( .A0(n904), .A1(n133), .B0(n138), .C0(n769), .Y(n491) );
  NAND2X1 U644 ( .A(N191), .B(n134), .Y(n138) );
  OAI211X1 U645 ( .A0(n903), .A1(n133), .B0(n136), .C0(n769), .Y(n490) );
  NAND2X1 U646 ( .A(N190), .B(n134), .Y(n136) );
  INVXL U647 ( .A(N177), .Y(n884) );
  CLKXOR2X2 U648 ( .A(n891), .B(n893), .Y(N77) );
  OAI2BB2XL U649 ( .B0(n359), .B1(n360), .A0N(n904), .A1N(N180), .Y(n358) );
  NOR2X1 U650 ( .A(N181), .B(n905), .Y(n360) );
  OAI2BB2XL U651 ( .B0(n588), .B1(n757), .A0N(N126), .A1N(n849), .Y(n467) );
  NAND2BX1 U652 ( .AN(N131), .B(N132), .Y(n81) );
  OA21XL U653 ( .A0(n81), .A1(n901), .B0(n84), .Y(n82) );
  CLKBUFX3 U654 ( .A(n89), .Y(n758) );
  NAND2XL U655 ( .A(N131), .B(n101), .Y(n89) );
  CLKINVX1 U656 ( .A(n78), .Y(n834) );
  OAI2BB2XL U657 ( .B0(n592), .B1(n757), .A0N(N125), .A1N(n849), .Y(n468) );
  INVXL U658 ( .A(N82), .Y(n886) );
  OAI2BB2XL U659 ( .B0(n593), .B1(n757), .A0N(N124), .A1N(n849), .Y(n469) );
  CLKINVX1 U660 ( .A(N79), .Y(n685) );
  OAI2BB2XL U661 ( .B0(n591), .B1(n757), .A0N(N123), .A1N(n849), .Y(n470) );
  INVXL U662 ( .A(N81), .Y(n887) );
  OAI2BB2XL U663 ( .B0(n589), .B1(n757), .A0N(N122), .A1N(n849), .Y(n471) );
  CLKINVX1 U664 ( .A(N83), .Y(n879) );
  OAI2BB2XL U665 ( .B0(n590), .B1(n757), .A0N(N121), .A1N(n849), .Y(n472) );
  CLKINVX1 U666 ( .A(N79), .Y(n707) );
  CLKINVX1 U667 ( .A(N80), .Y(n888) );
  NAND2X1 U668 ( .A(N81), .B(n752), .Y(n185) );
  OAI22XL U669 ( .A0(n577), .A1(n844), .B0(n341), .B1(n346), .Y(n525) );
  AOI221XL U670 ( .A0(n754), .A1(n761), .B0(n848), .B1(n767), .C0(n347), .Y(
        n346) );
  OAI222XL U671 ( .A0(n870), .A1(n183), .B0(n185), .B1(n345), .C0(n571), .C1(
        n843), .Y(n347) );
  NAND2X1 U672 ( .A(N82), .B(n752), .Y(n194) );
  OAI22XL U673 ( .A0(n583), .A1(n844), .B0(n341), .B1(n348), .Y(n526) );
  AOI221XL U674 ( .A0(n754), .A1(n771), .B0(n848), .B1(n766), .C0(n349), .Y(
        n348) );
  OAI222XL U675 ( .A0(n870), .A1(n192), .B0(n194), .B1(n345), .C0(n568), .C1(
        n843), .Y(n349) );
  OAI22XL U676 ( .A0(n841), .A1(n917), .B0(n261), .B1(n253), .Y(n513) );
  AOI221XL U677 ( .A0(n755), .A1(n771), .B0(n848), .B1(n762), .C0(n262), .Y(
        n261) );
  OAI222XL U678 ( .A0(n257), .A1(n192), .B0(n567), .B1(n170), .C0(n194), .C1(
        n868), .Y(n262) );
  OAI22XL U679 ( .A0(n838), .A1(n569), .B0(n187), .B1(n163), .Y(n499) );
  AOI211X1 U680 ( .A0(n754), .A1(n760), .B0(n188), .C0(n189), .Y(n187) );
  OAI22XL U681 ( .A0(n917), .A1(n843), .B0(n568), .B1(n170), .Y(n189) );
  OAI222XL U682 ( .A0(n171), .A1(n192), .B0(n567), .B1(n174), .C0(n872), .C1(
        n194), .Y(n188) );
  OAI22XL U683 ( .A0(n841), .A1(n916), .B0(n259), .B1(n253), .Y(n512) );
  AOI221XL U684 ( .A0(n755), .A1(n761), .B0(n848), .B1(n763), .C0(n260), .Y(
        n259) );
  OAI222XL U685 ( .A0(n257), .A1(n183), .B0(n580), .B1(n170), .C0(n185), .C1(
        n868), .Y(n260) );
  OAI22XL U686 ( .A0(n838), .A1(n582), .B0(n178), .B1(n163), .Y(n498) );
  AOI211X1 U687 ( .A0(n754), .A1(n772), .B0(n179), .C0(n180), .Y(n178) );
  OAI22XL U688 ( .A0(n916), .A1(n843), .B0(n571), .B1(n170), .Y(n180) );
  OAI222XL U689 ( .A0(n171), .A1(n183), .B0(n580), .B1(n174), .C0(n872), .C1(
        n185), .Y(n179) );
  OAI22XL U690 ( .A0(n909), .A1(n317), .B0(n845), .B1(n323), .Y(n518) );
  AOI222XL U691 ( .A0(n753), .A1(n766), .B0(n860), .B1(n320), .C0(n869), .C1(
        n861), .Y(n323) );
  OAI22XL U692 ( .A0(n908), .A1(n317), .B0(n845), .B1(n322), .Y(n517) );
  AOI222XL U693 ( .A0(n753), .A1(n767), .B0(n862), .B1(n320), .C0(n869), .C1(
        n863), .Y(n322) );
  OAI22XL U694 ( .A0(n840), .A1(n568), .B0(n236), .B1(n232), .Y(n507) );
  AOI222XL U695 ( .A0(N300), .A1(n753), .B0(n860), .B1(n867), .C0(n234), .C1(
        n861), .Y(n236) );
  OAI22XL U696 ( .A0(n840), .A1(n571), .B0(n235), .B1(n232), .Y(n506) );
  AOI222XL U697 ( .A0(N301), .A1(n753), .B0(n862), .B1(n867), .C0(n234), .C1(
        n863), .Y(n235) );
  OAI22XL U698 ( .A0(n911), .A1(n326), .B0(n842), .B1(n332), .Y(n521) );
  AOI221XL U699 ( .A0(n755), .A1(n767), .B0(n754), .B1(n763), .C0(n333), .Y(
        n332) );
  OAI22XL U700 ( .A0(n185), .A1(n330), .B0(n874), .B1(n183), .Y(n333) );
  OAI22XL U701 ( .A0(n912), .A1(n326), .B0(n842), .B1(n334), .Y(n522) );
  AOI221XL U702 ( .A0(n755), .A1(n766), .B0(n754), .B1(n762), .C0(n335), .Y(
        n334) );
  OAI22XL U703 ( .A0(n194), .A1(n330), .B0(n874), .B1(n192), .Y(n335) );
  NAND2X1 U704 ( .A(N80), .B(n752), .Y(n176) );
  OAI22XL U705 ( .A0(n581), .A1(n844), .B0(n341), .B1(n342), .Y(n524) );
  AOI221XL U706 ( .A0(n754), .A1(n773), .B0(n848), .B1(n776), .C0(n343), .Y(
        n342) );
  OAI222XL U707 ( .A0(n870), .A1(n172), .B0(n176), .B1(n345), .C0(n575), .C1(
        n843), .Y(n343) );
  NAND2X1 U708 ( .A(N83), .B(n752), .Y(n203) );
  OAI22XL U709 ( .A0(n889), .A1(n844), .B0(n341), .B1(n350), .Y(n527) );
  AOI221XL U710 ( .A0(n754), .A1(n764), .B0(n848), .B1(n765), .C0(n351), .Y(
        n350) );
  OAI222XL U711 ( .A0(n870), .A1(n201), .B0(n203), .B1(n345), .C0(n572), .C1(
        n843), .Y(n351) );
  OAI22XL U712 ( .A0(n841), .A1(n915), .B0(n252), .B1(n253), .Y(n511) );
  AOI221XL U713 ( .A0(n755), .A1(n773), .B0(n848), .B1(n775), .C0(n256), .Y(
        n252) );
  OAI222XL U714 ( .A0(n257), .A1(n172), .B0(n573), .B1(n170), .C0(n176), .C1(
        n868), .Y(n256) );
  OAI22XL U715 ( .A0(n841), .A1(n894), .B0(n263), .B1(n253), .Y(n514) );
  AOI221XL U716 ( .A0(n755), .A1(n764), .B0(n848), .B1(n777), .C0(n264), .Y(
        n263) );
  OAI222XL U717 ( .A0(n257), .A1(n201), .B0(n570), .B1(n170), .C0(n203), .C1(
        n868), .Y(n264) );
  OAI22XL U718 ( .A0(n838), .A1(n576), .B0(n162), .B1(n163), .Y(n497) );
  AOI211X1 U719 ( .A0(n754), .A1(n774), .B0(n165), .C0(n166), .Y(n162) );
  OAI22XL U720 ( .A0(n915), .A1(n843), .B0(n575), .B1(n170), .Y(n166) );
  OAI222XL U721 ( .A0(n171), .A1(n172), .B0(n573), .B1(n174), .C0(n872), .C1(
        n176), .Y(n165) );
  OAI22XL U722 ( .A0(n840), .A1(n575), .B0(n231), .B1(n232), .Y(n505) );
  AOI222XL U723 ( .A0(N302), .A1(n753), .B0(n864), .B1(n867), .C0(n234), .C1(
        n865), .Y(n231) );
  OAI22XL U724 ( .A0(n840), .A1(n572), .B0(n237), .B1(n232), .Y(n508) );
  AOI222XL U725 ( .A0(N299), .A1(n753), .B0(n858), .B1(n867), .C0(n234), .C1(
        n859), .Y(n237) );
  OAI222XL U726 ( .A0(n106), .A1(n887), .B0(n108), .B1(n877), .C0(n110), .C1(
        n913), .Y(n476) );
  CLKINVX1 U727 ( .A(N85), .Y(n877) );
  OAI22XL U728 ( .A0(n907), .A1(n317), .B0(n845), .B1(n319), .Y(n516) );
  AOI222XL U729 ( .A0(n753), .A1(n776), .B0(n864), .B1(n320), .C0(n869), .C1(
        n865), .Y(n319) );
  OAI22XL U730 ( .A0(n839), .A1(n570), .B0(n224), .B1(n212), .Y(n504) );
  AOI222XL U731 ( .A0(N294), .A1(n753), .B0(n858), .B1(n873), .C0(n216), .C1(
        n859), .Y(n224) );
  OAI222XL U732 ( .A0(n106), .A1(n886), .B0(n108), .B1(n876), .C0(n110), .C1(
        n914), .Y(n530) );
  CLKINVX1 U733 ( .A(N86), .Y(n876) );
  NAND2X1 U734 ( .A(N84), .B(n752), .Y(n172) );
  OAI22XL U735 ( .A0(n883), .A1(n326), .B0(n842), .B1(n336), .Y(n523) );
  AOI221XL U736 ( .A0(n755), .A1(n765), .B0(n754), .B1(n777), .C0(n337), .Y(
        n336) );
  OAI22XL U737 ( .A0(n203), .A1(n330), .B0(n874), .B1(n201), .Y(n337) );
  OAI22XL U738 ( .A0(n910), .A1(n326), .B0(n842), .B1(n328), .Y(n520) );
  AOI221XL U739 ( .A0(n755), .A1(n776), .B0(n754), .B1(n775), .C0(n329), .Y(
        n328) );
  OAI22XL U740 ( .A0(n176), .A1(n330), .B0(n874), .B1(n172), .Y(n329) );
  OAI2BB2XL U741 ( .B0(n845), .B1(n324), .A0N(n768), .A1N(n845), .Y(n519) );
  AOI222XL U742 ( .A0(n753), .A1(n765), .B0(n858), .B1(n320), .C0(n869), .C1(
        n859), .Y(n324) );
  OAI222XL U743 ( .A0(n106), .A1(n888), .B0(n108), .B1(n878), .C0(n110), .C1(
        n579), .Y(n477) );
  INVXL U744 ( .A(N84), .Y(n878) );
  CLKINVX1 U745 ( .A(N78), .Y(n728) );
  OAI211X1 U746 ( .A0(n71), .A1(n74), .B0(n249), .C0(n882), .Y(n159) );
  CLKINVX1 U747 ( .A(n148), .Y(n882) );
  NAND2X1 U748 ( .A(n270), .B(n291), .Y(n71) );
  NOR2BX1 U749 ( .AN(n276), .B(n275), .Y(n270) );
  OAI21X1 U750 ( .A0(n776), .A1(n575), .B0(n300), .Y(n249) );
  OAI22XL U751 ( .A0(n301), .A1(n302), .B0(n775), .B1(n573), .Y(n300) );
  NOR2X1 U752 ( .A(n767), .B(n571), .Y(n301) );
  AOI221XL U753 ( .A0(n767), .A1(n571), .B0(n766), .B1(n568), .C0(n303), .Y(
        n302) );
  AOI211X1 U754 ( .A0(n762), .A1(n567), .B0(n570), .C0(n777), .Y(n303) );
  NAND4BX1 U755 ( .AN(n71), .B(n72), .C(n73), .D(n74), .Y(n154) );
  AO21X1 U756 ( .A0(n157), .A1(n752), .B0(n158), .Y(n155) );
  OAI222XL U757 ( .A0(n106), .A1(n879), .B0(n108), .B1(n875), .C0(n110), .C1(
        n578), .Y(n475) );
  INVXL U758 ( .A(N87), .Y(n875) );
  AOI211X1 U759 ( .A0(n771), .A1(n568), .B0(n572), .C0(n764), .Y(n316) );
  OAI22XL U760 ( .A0(n773), .A1(n575), .B0(n314), .B1(n315), .Y(n313) );
  NOR2X1 U761 ( .A(n763), .B(n582), .Y(n315) );
  AOI221XL U762 ( .A0(n763), .A1(n582), .B0(n762), .B1(n569), .C0(n316), .Y(
        n314) );
  NOR3BX1 U763 ( .AN(n74), .B(n71), .C(n73), .Y(n152) );
  NAND2BX1 U764 ( .AN(n291), .B(n270), .Y(n246) );
  CLKINVX1 U765 ( .A(n735), .Y(n751) );
  INVX3 U766 ( .A(n752), .Y(n857) );
  NOR2X1 U767 ( .A(n339), .B(n874), .Y(n338) );
  NOR2X1 U768 ( .A(n157), .B(n857), .Y(n228) );
  NAND2X1 U769 ( .A(n228), .B(n893), .Y(n207) );
  NOR2X1 U770 ( .A(n850), .B(n57), .Y(n213) );
  CLKBUFX3 U771 ( .A(n164), .Y(n754) );
  NOR3X1 U772 ( .A(n893), .B(n325), .C(n769), .Y(n164) );
  INVX3 U773 ( .A(n755), .Y(n843) );
  NOR2BX2 U774 ( .AN(n370), .B(n856), .Y(n110) );
  OAI21XL U775 ( .A0(n325), .A1(n893), .B0(n369), .Y(n370) );
  NAND2X1 U776 ( .A(n110), .B(n369), .Y(n108) );
  OAI21XL U777 ( .A0(n71), .A1(n74), .B0(n246), .Y(n151) );
  CLKINVX1 U778 ( .A(n212), .Y(n839) );
  NAND2BX1 U779 ( .AN(n369), .B(n110), .Y(n106) );
  CLKINVX1 U780 ( .A(n736), .Y(n750) );
  OAI21X1 U781 ( .A0(n124), .A1(n897), .B0(n856), .Y(n131) );
  OA21XL U782 ( .A0(n899), .A1(n124), .B0(n129), .Y(n125) );
  NAND2X1 U783 ( .A(n131), .B(n898), .Y(n128) );
  OAI222XL U784 ( .A0(n206), .A1(n769), .B0(n207), .B1(n208), .C0(n856), .C1(
        n872), .Y(n205) );
  CLKINVX1 U785 ( .A(n216), .Y(n873) );
  INVX3 U786 ( .A(n101), .Y(n836) );
  OAI31XL U787 ( .A0(n70), .A1(n71), .A2(n836), .B0(n594), .Y(n415) );
  NAND3BX1 U788 ( .AN(n72), .B(n73), .C(n74), .Y(n70) );
  OAI21XL U789 ( .A0(N64), .A1(n769), .B0(n269), .Y(n267) );
  OAI21XL U790 ( .A0(n257), .A1(n239), .B0(n228), .Y(n269) );
  NAND2X1 U791 ( .A(n339), .B(n753), .Y(n204) );
  CLKINVX1 U792 ( .A(n234), .Y(n867) );
  NOR2X1 U793 ( .A(n208), .B(n893), .Y(n239) );
  NAND3X2 U794 ( .A(n893), .B(N63), .C(n753), .Y(n170) );
  CLKINVX1 U795 ( .A(n171), .Y(n872) );
  CLKINVX1 U796 ( .A(n257), .Y(n868) );
  CLKINVX1 U797 ( .A(n345), .Y(n870) );
  CLKBUFX3 U798 ( .A(n102), .Y(n757) );
  NAND2X1 U799 ( .A(n769), .B(n65), .Y(n102) );
  CLKINVX1 U800 ( .A(n320), .Y(n869) );
  CLKINVX1 U801 ( .A(n124), .Y(n852) );
  CLKINVX1 U802 ( .A(n756), .Y(n855) );
  CLKBUFX3 U803 ( .A(n75), .Y(n759) );
  INVX3 U804 ( .A(n65), .Y(n849) );
  NOR2X1 U805 ( .A(n428), .B(n425), .Y(n376) );
  OAI21XL U806 ( .A0(n637), .A1(n427), .B0(n374), .Y(n375) );
  OAI2BB2XL U807 ( .B0(n660), .B1(n133), .A0N(N79), .A1N(n134), .Y(n488) );
  OAI2BB2XL U808 ( .B0(n418), .B1(n133), .A0N(N78), .A1N(n134), .Y(n489) );
  OAI2BB2XL U809 ( .B0(n419), .B1(n133), .A0N(N77), .A1N(n134), .Y(n528) );
  NAND2X1 U810 ( .A(n637), .B(n427), .Y(n374) );
  OAI2BB2XL U811 ( .B0(n586), .B1(n757), .A0N(N129), .A1N(n849), .Y(n464) );
  INVX3 U812 ( .A(n425), .Y(n893) );
  OAI2BB2XL U813 ( .B0(n587), .B1(n757), .A0N(N128), .A1N(n849), .Y(n465) );
  OAI2BB2XL U814 ( .B0(n584), .B1(n757), .A0N(N127), .A1N(n849), .Y(n466) );
  AOI211XL U815 ( .A0(N181), .A1(n905), .B0(n906), .C0(N182), .Y(n359) );
  CLKINVX1 U816 ( .A(n820), .Y(n831) );
  CLKINVX1 U817 ( .A(n806), .Y(n832) );
  AOI2BB1X1 U818 ( .A0N(n81), .A1N(n900), .B0(n835), .Y(n84) );
  OAI21XL U819 ( .A0(n411), .A1(n76), .B0(n77), .Y(n437) );
  NAND4X1 U820 ( .A(n411), .B(n78), .C(n901), .D(n902), .Y(n77) );
  OA21XL U821 ( .A0(n81), .A1(n902), .B0(n82), .Y(n76) );
  OAI32X1 U822 ( .A0(n902), .A1(n421), .A2(n834), .B0(n420), .B1(n82), .Y(n439) );
  NOR3X1 U823 ( .A(n835), .B(n422), .C(n81), .Y(n78) );
  OAI22XL U824 ( .A0(n421), .A1(n84), .B0(n834), .B1(n901), .Y(n443) );
  CLKINVX1 U825 ( .A(N62), .Y(n638) );
  CLKXOR2X4 U826 ( .A(n371), .B(n372), .Y(N79) );
  AOI32X1 U827 ( .A0(n891), .A1(n893), .A2(n374), .B0(n896), .B1(N63), .Y(n372) );
  OAI22XL U828 ( .A0(n422), .A1(n85), .B0(n835), .B1(n87), .Y(n441) );
  NOR2XL U829 ( .A(N131), .B(n422), .Y(n87) );
  OA22X1 U830 ( .A0(n705), .A1(n707), .B0(N79), .B1(n704), .Y(n616) );
  OAI22XL U831 ( .A0(n388), .A1(n837), .B0(n758), .B1(n585), .Y(n463) );
  OAI22XL U832 ( .A0(n826), .A1(n837), .B0(n758), .B1(n584), .Y(n457) );
  OAI22XL U833 ( .A0(n392), .A1(n837), .B0(n758), .B1(n587), .Y(n459) );
  OAI22XL U834 ( .A0(n830), .A1(n837), .B0(n758), .B1(n590), .Y(n445) );
  OAI22XL U835 ( .A0(n827), .A1(n837), .B0(n758), .B1(n588), .Y(n455) );
  OAI22XL U836 ( .A0(n829), .A1(n837), .B0(n758), .B1(n589), .Y(n447) );
  OAI22XL U837 ( .A0(n825), .A1(n837), .B0(n758), .B1(n586), .Y(n461) );
  OAI22XL U838 ( .A0(n398), .A1(n837), .B0(n758), .B1(n592), .Y(n453) );
  OAI22XL U839 ( .A0(n400), .A1(n837), .B0(n758), .B1(n593), .Y(n451) );
  OAI22XL U840 ( .A0(n828), .A1(n837), .B0(n758), .B1(n591), .Y(n449) );
  OAI2BB2XL U841 ( .B0(n585), .B1(n757), .A0N(N120), .A1N(n849), .Y(n473) );
  CLKBUFX3 U842 ( .A(\whotake_whichjob[5][1] ), .Y(n771) );
  OAI22XL U843 ( .A0(n839), .A1(n567), .B0(n221), .B1(n212), .Y(n503) );
  AOI222XL U844 ( .A0(N295), .A1(n753), .B0(n860), .B1(n873), .C0(n216), .C1(
        n861), .Y(n221) );
  OAI22XL U845 ( .A0(n839), .A1(n580), .B0(n218), .B1(n212), .Y(n502) );
  AOI222XL U846 ( .A0(N296), .A1(n753), .B0(n862), .B1(n873), .C0(n216), .C1(
        n863), .Y(n218) );
  CLKBUFX3 U847 ( .A(\whotake_whichjob[5][2] ), .Y(n761) );
  CLKBUFX3 U848 ( .A(\whotake_whichjob[5][0] ), .Y(n764) );
  CLKBUFX3 U849 ( .A(\whotake_whichjob[1][0] ), .Y(n768) );
  CLKBUFX3 U850 ( .A(\whotake_whichjob[3][2] ), .Y(n772) );
  CLKBUFX3 U851 ( .A(\whotake_whichjob[7][1] ), .Y(n766) );
  CLKBUFX3 U852 ( .A(\whotake_whichjob[3][1] ), .Y(n760) );
  CLKBUFX3 U853 ( .A(\whotake_whichjob[6][1] ), .Y(n762) );
  CLKBUFX3 U854 ( .A(\whotake_whichjob[7][2] ), .Y(n767) );
  CLKBUFX3 U855 ( .A(\whotake_whichjob[6][2] ), .Y(n763) );
  OAI22XL U856 ( .A0(n839), .A1(n573), .B0(n211), .B1(n212), .Y(n501) );
  AOI222XL U857 ( .A0(N297), .A1(n753), .B0(n864), .B1(n873), .C0(n216), .C1(
        n865), .Y(n211) );
  OAI22XL U858 ( .A0(n838), .A1(n574), .B0(n196), .B1(n163), .Y(n500) );
  AOI211X1 U859 ( .A0(n754), .A1(\whotake_whichjob[3][0] ), .B0(n197), .C0(
        n198), .Y(n196) );
  OAI22XL U860 ( .A0(n894), .A1(n843), .B0(n572), .B1(n170), .Y(n198) );
  OAI222XL U861 ( .A0(n171), .A1(n201), .B0(n570), .B1(n174), .C0(n872), .C1(
        n203), .Y(n197) );
  CLKBUFX3 U862 ( .A(\whotake_whichjob[6][0] ), .Y(n777) );
  CLKBUFX3 U863 ( .A(\whotake_whichjob[7][0] ), .Y(n765) );
  CLKINVX1 U864 ( .A(N65), .Y(n662) );
  CLKINVX1 U865 ( .A(N66), .Y(n661) );
  CLKBUFX3 U866 ( .A(\whotake_whichjob[5][3] ), .Y(n773) );
  CLKBUFX3 U867 ( .A(\whotake_whichjob[3][3] ), .Y(n774) );
  CLKBUFX3 U868 ( .A(\whotake_whichjob[7][3] ), .Y(n776) );
  CLKBUFX3 U869 ( .A(\whotake_whichjob[6][3] ), .Y(n775) );
  OAI221XL U870 ( .A0(n896), .A1(n144), .B0(n427), .B1(n145), .C0(n146), .Y(
        n494) );
  OAI21XL U871 ( .A0(n147), .A1(n148), .B0(n101), .Y(n146) );
  NAND3X1 U872 ( .A(n752), .B(n155), .C(n428), .Y(n144) );
  OAI21XL U873 ( .A0(n149), .A1(n426), .B0(n150), .Y(n495) );
  OAI31XL U874 ( .A0(n151), .A1(n152), .A2(n880), .B0(n101), .Y(n150) );
  OA21XL U875 ( .A0(n427), .A1(n857), .B0(n145), .Y(n149) );
  CLKINVX1 U876 ( .A(n154), .Y(n880) );
  OA21XL U877 ( .A0(n428), .A1(n857), .B0(n155), .Y(n145) );
  OAI221XL U878 ( .A0(n881), .A1(n836), .B0(n428), .B1(n155), .C0(n144), .Y(
        n496) );
  CLKINVX1 U879 ( .A(n159), .Y(n881) );
  OAI22XL U880 ( .A0(\whotake_whichjob[4][3] ), .A1(n576), .B0(n305), .B1(n306), .Y(n304) );
  NOR2X1 U881 ( .A(n761), .B(n916), .Y(n306) );
  AOI221XL U882 ( .A0(n761), .A1(n916), .B0(n771), .B1(n917), .C0(n307), .Y(
        n305) );
  AOI211X1 U883 ( .A0(n760), .A1(n917), .B0(n894), .C0(
        \whotake_whichjob[3][0] ), .Y(n312) );
  OAI22XL U884 ( .A0(n774), .A1(n915), .B0(n309), .B1(n310), .Y(n308) );
  NOR2X1 U885 ( .A(\whotake_whichjob[4][2] ), .B(n577), .Y(n310) );
  AOI221XL U886 ( .A0(\whotake_whichjob[4][2] ), .A1(n577), .B0(
        \whotake_whichjob[4][1] ), .B1(n583), .C0(n312), .Y(n309) );
  OAI22XL U887 ( .A0(n639), .A1(n158), .B0(n270), .B1(n836), .Y(n515) );
  OAI21XL U888 ( .A0(n637), .A1(n158), .B0(n244), .Y(n509) );
  OAI21XL U889 ( .A0(n892), .A1(n151), .B0(n101), .Y(n244) );
  OAI21XL U890 ( .A0(n425), .A1(n158), .B0(n247), .Y(n510) );
  OAI21XL U891 ( .A0(n890), .A1(n147), .B0(n101), .Y(n247) );
  OAI21X1 U892 ( .A0(\whotake_whichjob[2][3] ), .A1(n907), .B0(n284), .Y(n73)
         );
  OAI22XL U893 ( .A0(n285), .A1(n286), .B0(\whotake_whichjob[1][3] ), .B1(n910), .Y(n284) );
  NOR2X1 U894 ( .A(\whotake_whichjob[2][2] ), .B(n908), .Y(n285) );
  AOI221XL U895 ( .A0(\whotake_whichjob[2][2] ), .A1(n908), .B0(
        \whotake_whichjob[2][1] ), .B1(n909), .C0(n288), .Y(n286) );
  AOI211X1 U896 ( .A0(\whotake_whichjob[1][1] ), .A1(n912), .B0(n883), .C0(
        n768), .Y(n288) );
  OAI22XL U897 ( .A0(n293), .A1(n294), .B0(\whotake_whichjob[2][3] ), .B1(n581), .Y(n292) );
  NOR2X1 U898 ( .A(n772), .B(n911), .Y(n293) );
  AOI221XL U899 ( .A0(n772), .A1(n911), .B0(n760), .B1(n912), .C0(n297), .Y(
        n294) );
  OAI221XL U900 ( .A0(\whotake_whichjob[1][3] ), .A1(n579), .B0(
        \whotake_whichjob[1][2] ), .B1(n913), .C0(n279), .Y(n278) );
  OAI221XL U901 ( .A0(\whotake_whichjob[0][1] ), .A1(n909), .B0(
        \whotake_whichjob[0][2] ), .B1(n908), .C0(n282), .Y(n279) );
  OAI211X1 U902 ( .A0(\whotake_whichjob[1][1] ), .A1(n914), .B0(n578), .C0(
        n768), .Y(n282) );
  CLKBUFX3 U903 ( .A(n63), .Y(n752) );
  NOR3X1 U904 ( .A(n435), .B(n434), .C(n866), .Y(n63) );
  NAND2X1 U905 ( .A(n434), .B(n866), .Y(n57) );
  CLKBUFX3 U906 ( .A(n254), .Y(n755) );
  NOR3X1 U907 ( .A(n325), .B(n425), .C(n769), .Y(n254) );
  OAI2BB2XL U908 ( .B0(n381), .B1(n756), .A0N(N115), .A1N(n756), .Y(n483) );
  OAI2BB2XL U909 ( .B0(n383), .B1(n756), .A0N(N113), .A1N(n756), .Y(n481) );
  OAI2BB2XL U910 ( .B0(n384), .B1(n756), .A0N(N114), .A1N(n756), .Y(n480) );
  OAI2BB1X1 U911 ( .A0N(n228), .A1N(n229), .B0(n769), .Y(n227) );
  OAI31XL U912 ( .A0(n425), .A1(n639), .A2(n637), .B0(n873), .Y(n229) );
  CLKINVX1 U913 ( .A(N68), .Y(n802) );
  OAI2BB1X1 U914 ( .A0N(\worker[3] ), .A1N(n120), .B0(n121), .Y(n484) );
  NAND4X1 U915 ( .A(n854), .B(n756), .C(n899), .D(N70), .Y(n121) );
  OAI21XL U916 ( .A0(N70), .A1(n124), .B0(n125), .Y(n120) );
  NAND3X1 U917 ( .A(n426), .B(n427), .C(n428), .Y(n157) );
  OAI32X1 U918 ( .A0(N64), .A1(n637), .A2(n207), .B0(n345), .B1(n856), .Y(n352) );
  CLKINVX1 U919 ( .A(n418), .Y(n895) );
  NOR3X2 U920 ( .A(n418), .B(n660), .C(n419), .Y(n216) );
  OAI21XL U921 ( .A0(n430), .A1(n125), .B0(n126), .Y(n485) );
  NAND4X1 U922 ( .A(n854), .B(n852), .C(n430), .D(n899), .Y(n126) );
  OAI32X1 U923 ( .A0(n128), .A1(n899), .A2(n124), .B0(n431), .B1(n129), .Y(
        n487) );
  CLKINVX1 U924 ( .A(N63), .Y(n749) );
  OAI32X1 U925 ( .A0(n124), .A1(n853), .A2(n898), .B0(n432), .B1(n131), .Y(
        n486) );
  NOR3X1 U926 ( .A(N64), .B(n637), .C(n893), .Y(n339) );
  CLKINVX1 U927 ( .A(n419), .Y(n871) );
  OAI2BB2XL U928 ( .B0(n240), .B1(n769), .A0N(n228), .A1N(n241), .Y(n238) );
  AND2X2 U929 ( .A(n208), .B(n206), .Y(n240) );
  OAI31XL U930 ( .A0(n893), .A1(n639), .A2(n637), .B0(n867), .Y(n241) );
  NOR3X2 U931 ( .A(n418), .B(n660), .C(n871), .Y(n234) );
  NOR2X1 U932 ( .A(n239), .B(n639), .Y(n206) );
  NOR3X2 U933 ( .A(n419), .B(n660), .C(n895), .Y(n171) );
  NAND3X1 U934 ( .A(n418), .B(n419), .C(n660), .Y(n369) );
  NOR3X2 U935 ( .A(n871), .B(n660), .C(n895), .Y(n257) );
  NAND3X2 U936 ( .A(n434), .B(n433), .C(n435), .Y(n124) );
  OAI2BB2XL U937 ( .B0(n429), .B1(n104), .A0N(n104), .A1N(n752), .Y(n474) );
  OAI31XL U938 ( .A0(n105), .A1(n428), .A2(n857), .B0(n769), .Y(n104) );
  NAND2X1 U939 ( .A(n426), .B(n427), .Y(n105) );
  NAND3X1 U940 ( .A(n770), .B(n836), .C(n68), .Y(next_state[0]) );
  OAI22XL U941 ( .A0(n432), .A1(n855), .B0(n382), .B1(n756), .Y(n482) );
  OAI22XL U942 ( .A0(n430), .A1(n855), .B0(n385), .B1(n756), .Y(n479) );
  OAI22XL U943 ( .A0(n431), .A1(n855), .B0(n386), .B1(n756), .Y(n478) );
  CLKBUFX3 U944 ( .A(n119), .Y(n756) );
  NOR2X1 U945 ( .A(n124), .B(\worker[3] ), .Y(n119) );
  OAI22XL U946 ( .A0(n388), .A1(n770), .B0(n387), .B1(n759), .Y(n462) );
  OAI22XL U947 ( .A0(n825), .A1(n770), .B0(n389), .B1(n759), .Y(n460) );
  OAI22XL U948 ( .A0(n392), .A1(n770), .B0(n391), .B1(n759), .Y(n458) );
  OAI22XL U949 ( .A0(n826), .A1(n770), .B0(n393), .B1(n759), .Y(n456) );
  OAI22XL U950 ( .A0(n827), .A1(n770), .B0(n395), .B1(n75), .Y(n454) );
  OAI22XL U951 ( .A0(n398), .A1(n770), .B0(n397), .B1(n75), .Y(n452) );
  OAI22XL U952 ( .A0(n400), .A1(n770), .B0(n399), .B1(n75), .Y(n450) );
  OAI22XL U953 ( .A0(n828), .A1(n770), .B0(n401), .B1(n75), .Y(n448) );
  OAI22XL U954 ( .A0(n829), .A1(n770), .B0(n403), .B1(n759), .Y(n446) );
  OAI22XL U955 ( .A0(n830), .A1(n770), .B0(n405), .B1(n759), .Y(n444) );
  OAI22XL U956 ( .A0(n421), .A1(n770), .B0(n407), .B1(n759), .Y(n442) );
  OAI22XL U957 ( .A0(n420), .A1(n770), .B0(n409), .B1(n759), .Y(n438) );
  OAI22XL U958 ( .A0(n411), .A1(n770), .B0(n410), .B1(n759), .Y(n436) );
  OAI22XL U959 ( .A0(n422), .A1(n770), .B0(n408), .B1(n759), .Y(n440) );
  NOR2X1 U960 ( .A(n57), .B(n435), .Y(n75) );
  NAND3X1 U961 ( .A(n836), .B(n769), .C(n60), .Y(next_state[1]) );
  AOI33X1 U962 ( .A0(\worker[3] ), .A1(n430), .A2(n61), .B0(n429), .B1(n594), 
        .B2(n752), .Y(n60) );
  NOR3X1 U963 ( .A(n899), .B(n65), .C(n898), .Y(n61) );
  NAND2X1 U964 ( .A(n413), .B(n770), .Y(n414) );
  OAI21XL U965 ( .A0(n55), .A1(n857), .B0(n57), .Y(next_state[2]) );
  NOR2BX1 U966 ( .AN(n429), .B(seq_all_complete), .Y(n55) );
  CLKINVX1 U967 ( .A(n432), .Y(n898) );
  OAI21XL U968 ( .A0(n412), .A1(n849), .B0(n124), .Y(n529) );
  CLKINVX1 U969 ( .A(N70), .Y(n801) );
  AOI221XL U970 ( .A0(n777), .A1(n634), .B0(n765), .B1(n633), .C0(n617), .Y(
        n620) );
  AOI221XL U971 ( .A0(\whotake_whichjob[2][0] ), .A1(n634), .B0(
        \whotake_whichjob[3][0] ), .B1(n633), .C0(n618), .Y(n619) );
  OAI22XL U972 ( .A0(n639), .A1(n620), .B0(N64), .B1(n619), .Y(N83) );
  AOI221XL U973 ( .A0(n762), .A1(n634), .B0(n766), .B1(n633), .C0(n621), .Y(
        n624) );
  AOI221XL U974 ( .A0(\whotake_whichjob[2][1] ), .A1(n634), .B0(n760), .B1(
        n633), .C0(n622), .Y(n623) );
  AOI221XL U975 ( .A0(n763), .A1(n634), .B0(n767), .B1(n633), .C0(n625), .Y(
        n628) );
  AOI221XL U976 ( .A0(\whotake_whichjob[2][2] ), .A1(n634), .B0(n772), .B1(
        n633), .C0(n626), .Y(n627) );
  AOI221XL U977 ( .A0(n775), .A1(n634), .B0(n776), .B1(n633), .C0(n629), .Y(
        n636) );
  AOI221XL U978 ( .A0(\whotake_whichjob[2][3] ), .A1(n634), .B0(n774), .B1(
        n633), .C0(n632), .Y(n635) );
  OAI22XL U979 ( .A0(n636), .A1(n639), .B0(N64), .B1(n635), .Y(N80) );
  AOI221XL U980 ( .A0(n777), .A1(n657), .B0(n765), .B1(n656), .C0(n640), .Y(
        n643) );
  AOI221XL U981 ( .A0(\whotake_whichjob[2][0] ), .A1(n657), .B0(
        \whotake_whichjob[3][0] ), .B1(n656), .C0(n641), .Y(n642) );
  OAI22XL U982 ( .A0(n660), .A1(n643), .B0(N67), .B1(n642), .Y(N87) );
  AOI221XL U983 ( .A0(n762), .A1(n657), .B0(n766), .B1(n656), .C0(n644), .Y(
        n647) );
  AOI221XL U984 ( .A0(\whotake_whichjob[2][1] ), .A1(n657), .B0(n760), .B1(
        n656), .C0(n645), .Y(n646) );
  OAI22XL U985 ( .A0(n660), .A1(n647), .B0(N67), .B1(n646), .Y(N86) );
  AOI221XL U986 ( .A0(n763), .A1(n657), .B0(n767), .B1(n656), .C0(n648), .Y(
        n651) );
  AOI221XL U987 ( .A0(\whotake_whichjob[2][2] ), .A1(n657), .B0(n772), .B1(
        n656), .C0(n649), .Y(n650) );
  OAI22XL U988 ( .A0(n660), .A1(n651), .B0(N67), .B1(n650), .Y(N85) );
  AOI221XL U989 ( .A0(n775), .A1(n657), .B0(n776), .B1(n656), .C0(n652), .Y(
        n659) );
  AOI221XL U990 ( .A0(\whotake_whichjob[2][3] ), .A1(n657), .B0(n774), .B1(
        n656), .C0(n655), .Y(n658) );
  OAI22XL U991 ( .A0(n659), .A1(n660), .B0(N67), .B1(n658), .Y(N84) );
  AOI221XL U992 ( .A0(n777), .A1(n680), .B0(n765), .B1(n679), .C0(n663), .Y(
        n666) );
  AOI221XL U993 ( .A0(\whotake_whichjob[2][0] ), .A1(n680), .B0(
        \whotake_whichjob[3][0] ), .B1(n679), .C0(n664), .Y(n665) );
  OAI22XL U994 ( .A0(n685), .A1(n666), .B0(N79), .B1(n665), .Y(N178) );
  AOI221XL U995 ( .A0(n762), .A1(n680), .B0(n766), .B1(n679), .C0(n667), .Y(
        n670) );
  AOI221XL U996 ( .A0(\whotake_whichjob[2][1] ), .A1(n680), .B0(n760), .B1(
        n679), .C0(n668), .Y(n669) );
  OAI22XL U997 ( .A0(n685), .A1(n670), .B0(N79), .B1(n669), .Y(N177) );
  AOI221XL U998 ( .A0(n763), .A1(n680), .B0(n767), .B1(n679), .C0(n671), .Y(
        n674) );
  AOI221XL U999 ( .A0(\whotake_whichjob[2][2] ), .A1(n680), .B0(n772), .B1(
        n679), .C0(n672), .Y(n673) );
  OAI22XL U1000 ( .A0(n685), .A1(n674), .B0(N79), .B1(n673), .Y(N176) );
  AOI221XL U1001 ( .A0(n775), .A1(n680), .B0(n776), .B1(n679), .C0(n675), .Y(
        n682) );
  AOI221XL U1002 ( .A0(\whotake_whichjob[2][3] ), .A1(n680), .B0(n774), .B1(
        n679), .C0(n678), .Y(n681) );
  OAI22XL U1003 ( .A0(n682), .A1(n685), .B0(N79), .B1(n681), .Y(N175) );
  AOI221XL U1004 ( .A0(n777), .A1(n703), .B0(n765), .B1(n702), .C0(n686), .Y(
        n689) );
  AOI221XL U1005 ( .A0(\whotake_whichjob[2][0] ), .A1(n703), .B0(
        \whotake_whichjob[3][0] ), .B1(n702), .C0(n687), .Y(n688) );
  OAI22XL U1006 ( .A0(n707), .A1(n689), .B0(N79), .B1(n688), .Y(N182) );
  AOI221XL U1007 ( .A0(n762), .A1(n703), .B0(n766), .B1(n702), .C0(n690), .Y(
        n693) );
  AOI221XL U1008 ( .A0(\whotake_whichjob[2][1] ), .A1(n703), .B0(n760), .B1(
        n702), .C0(n691), .Y(n692) );
  OAI22XL U1009 ( .A0(n707), .A1(n693), .B0(N79), .B1(n692), .Y(N181) );
  AOI221XL U1010 ( .A0(n763), .A1(n703), .B0(n767), .B1(n702), .C0(n694), .Y(
        n697) );
  AOI221XL U1011 ( .A0(\whotake_whichjob[2][2] ), .A1(n703), .B0(n772), .B1(
        n702), .C0(n695), .Y(n696) );
  OAI22XL U1012 ( .A0(n707), .A1(n697), .B0(N79), .B1(n696), .Y(N180) );
  AOI221XL U1013 ( .A0(n775), .A1(n703), .B0(n776), .B1(n702), .C0(n698), .Y(
        n705) );
  AOI221XL U1014 ( .A0(\whotake_whichjob[2][3] ), .A1(n703), .B0(n774), .B1(
        n702), .C0(n701), .Y(n704) );
  AOI221XL U1015 ( .A0(n777), .A1(n725), .B0(n765), .B1(n724), .C0(n708), .Y(
        n711) );
  AOI221XL U1016 ( .A0(\whotake_whichjob[2][0] ), .A1(n725), .B0(
        \whotake_whichjob[3][0] ), .B1(n724), .C0(n709), .Y(n710) );
  OAI22XL U1017 ( .A0(n685), .A1(n711), .B0(N79), .B1(n710), .Y(N193) );
  AOI221XL U1018 ( .A0(n762), .A1(n725), .B0(n766), .B1(n724), .C0(n712), .Y(
        n715) );
  AOI221XL U1019 ( .A0(\whotake_whichjob[2][1] ), .A1(n725), .B0(n760), .B1(
        n724), .C0(n713), .Y(n714) );
  OAI22XL U1020 ( .A0(n685), .A1(n715), .B0(N79), .B1(n714), .Y(N192) );
  AOI221XL U1021 ( .A0(n763), .A1(n725), .B0(n767), .B1(n724), .C0(n716), .Y(
        n719) );
  AOI221XL U1022 ( .A0(\whotake_whichjob[2][2] ), .A1(n725), .B0(n772), .B1(
        n724), .C0(n717), .Y(n718) );
  OAI22XL U1023 ( .A0(n707), .A1(n719), .B0(N79), .B1(n718), .Y(N191) );
  AOI221XL U1024 ( .A0(n775), .A1(n725), .B0(n776), .B1(n724), .C0(n720), .Y(
        n727) );
  AOI221XL U1025 ( .A0(\whotake_whichjob[2][3] ), .A1(n725), .B0(n774), .B1(
        n724), .C0(n723), .Y(n726) );
  OAI22XL U1026 ( .A0(n727), .A1(n707), .B0(N79), .B1(n726), .Y(N190) );
  NOR2X1 U1027 ( .A(n638), .B(N64), .Y(n736) );
  NAND2X1 U1028 ( .A(n736), .B(n749), .Y(n734) );
  NAND2X1 U1029 ( .A(n736), .B(N63), .Y(n733) );
  OAI22XL U1030 ( .A0(\whotake_whichjob[4][0] ), .A1(n749), .B0(
        \whotake_whichjob[2][0] ), .B1(N63), .Y(n738) );
  NOR2X1 U1031 ( .A(N62), .B(N64), .Y(n735) );
  AOI2BB2X1 U1032 ( .B0(n765), .B1(N64), .A0N(n738), .A1N(n751), .Y(n729) );
  OAI221XL U1033 ( .A0(n889), .A1(n734), .B0(n574), .B1(n733), .C0(n729), .Y(
        N299) );
  OAI22XL U1034 ( .A0(\whotake_whichjob[4][1] ), .A1(n749), .B0(
        \whotake_whichjob[2][1] ), .B1(N63), .Y(n740) );
  AOI2BB2X1 U1035 ( .B0(n766), .B1(N64), .A0N(n740), .A1N(n751), .Y(n730) );
  OAI221XL U1036 ( .A0(n583), .A1(n734), .B0(n569), .B1(n733), .C0(n730), .Y(
        N300) );
  OAI22XL U1037 ( .A0(\whotake_whichjob[4][2] ), .A1(n749), .B0(
        \whotake_whichjob[2][2] ), .B1(N63), .Y(n742) );
  AOI2BB2X1 U1038 ( .B0(n767), .B1(N64), .A0N(n742), .A1N(n751), .Y(n731) );
  OAI221XL U1039 ( .A0(n577), .A1(n734), .B0(n582), .B1(n733), .C0(n731), .Y(
        N301) );
  OAI22XL U1040 ( .A0(\whotake_whichjob[4][3] ), .A1(n749), .B0(
        \whotake_whichjob[2][3] ), .B1(N63), .Y(n747) );
  AOI2BB2X1 U1041 ( .B0(n776), .B1(N64), .A0N(n747), .A1N(n751), .Y(n732) );
  OAI221XL U1042 ( .A0(n581), .A1(n734), .B0(n576), .B1(n733), .C0(n732), .Y(
        N302) );
  NAND2X1 U1043 ( .A(n735), .B(N63), .Y(n748) );
  NOR2X1 U1044 ( .A(n751), .B(N63), .Y(n745) );
  AND2X1 U1045 ( .A(N64), .B(n638), .Y(n744) );
  AND2X1 U1046 ( .A(N64), .B(N62), .Y(n743) );
  AOI222XL U1047 ( .A0(n768), .A1(n745), .B0(n764), .B1(n744), .C0(n777), .C1(
        n743), .Y(n737) );
  OAI221XL U1048 ( .A0(n748), .A1(n889), .B0(n738), .B1(n750), .C0(n737), .Y(
        N294) );
  AOI222XL U1049 ( .A0(\whotake_whichjob[1][1] ), .A1(n745), .B0(n771), .B1(
        n744), .C0(n762), .C1(n743), .Y(n739) );
  OAI221XL U1050 ( .A0(n748), .A1(n583), .B0(n740), .B1(n750), .C0(n739), .Y(
        N295) );
  AOI222XL U1051 ( .A0(\whotake_whichjob[1][2] ), .A1(n745), .B0(n761), .B1(
        n744), .C0(n763), .C1(n743), .Y(n741) );
  OAI221XL U1052 ( .A0(n748), .A1(n577), .B0(n742), .B1(n750), .C0(n741), .Y(
        N296) );
  AOI222XL U1053 ( .A0(\whotake_whichjob[1][3] ), .A1(n745), .B0(n773), .B1(
        n744), .C0(n775), .C1(n743), .Y(n746) );
  OAI221XL U1054 ( .A0(n748), .A1(n581), .B0(n747), .B1(n750), .C0(n746), .Y(
        N297) );
  NOR2X1 U1055 ( .A(n431), .B(N68), .Y(n798) );
  NOR2X1 U1056 ( .A(n431), .B(n802), .Y(n797) );
  NOR2X1 U1057 ( .A(n802), .B(N69), .Y(n795) );
  NOR2X1 U1058 ( .A(N68), .B(N69), .Y(n794) );
  AO22X1 U1059 ( .A0(n764), .A1(n795), .B0(\whotake_whichjob[4][0] ), .B1(n794), .Y(n785) );
  AOI221XL U1060 ( .A0(n777), .A1(n798), .B0(n765), .B1(n797), .C0(n785), .Y(
        n788) );
  AO22X1 U1061 ( .A0(n768), .A1(n795), .B0(\whotake_whichjob[0][0] ), .B1(n794), .Y(n786) );
  AOI221XL U1062 ( .A0(\whotake_whichjob[2][0] ), .A1(n798), .B0(
        \whotake_whichjob[3][0] ), .B1(n797), .C0(n786), .Y(n787) );
  OAI22XL U1063 ( .A0(n801), .A1(n788), .B0(N70), .B1(n787), .Y(N115) );
  AO22X1 U1064 ( .A0(n771), .A1(n795), .B0(\whotake_whichjob[4][1] ), .B1(n794), .Y(n789) );
  AOI221XL U1065 ( .A0(n762), .A1(n798), .B0(n766), .B1(n797), .C0(n789), .Y(
        n792) );
  AO22X1 U1066 ( .A0(\whotake_whichjob[1][1] ), .A1(n795), .B0(
        \whotake_whichjob[0][1] ), .B1(n794), .Y(n790) );
  AOI221XL U1067 ( .A0(\whotake_whichjob[2][1] ), .A1(n798), .B0(n760), .B1(
        n797), .C0(n790), .Y(n791) );
  OAI22XL U1068 ( .A0(n801), .A1(n792), .B0(N70), .B1(n791), .Y(N114) );
  AO22X1 U1069 ( .A0(n761), .A1(n795), .B0(\whotake_whichjob[4][2] ), .B1(n794), .Y(n793) );
  AOI221XL U1070 ( .A0(n763), .A1(n798), .B0(n767), .B1(n797), .C0(n793), .Y(
        n800) );
  AO22X1 U1071 ( .A0(\whotake_whichjob[1][2] ), .A1(n795), .B0(
        \whotake_whichjob[0][2] ), .B1(n794), .Y(n796) );
  AOI221XL U1072 ( .A0(\whotake_whichjob[2][2] ), .A1(n798), .B0(n772), .B1(
        n797), .C0(n796), .Y(n799) );
  OAI22XL U1073 ( .A0(n800), .A1(n801), .B0(N70), .B1(n799), .Y(N113) );
  NOR2BX1 U1074 ( .AN(temp_cost[0]), .B(min_cost[0]), .Y(n803) );
  OAI22XL U1075 ( .A0(temp_cost[1]), .A1(n803), .B0(n803), .B1(n830), .Y(n805)
         );
  NAND2X1 U1076 ( .A(temp_cost[7]), .B(n826), .Y(n817) );
  NAND2X1 U1077 ( .A(temp_cost[6]), .B(n827), .Y(n812) );
  NOR2X1 U1078 ( .A(n587), .B(min_cost[8]), .Y(n806) );
  NOR2X1 U1079 ( .A(n592), .B(min_cost[5]), .Y(n813) );
  NOR3BXL U1080 ( .AN(n812), .B(n806), .C(n813), .Y(n804) );
  NAND3X1 U1081 ( .A(n805), .B(n817), .C(n804), .Y(n824) );
  NAND2X1 U1082 ( .A(temp_cost[9]), .B(n825), .Y(n820) );
  NOR2BX1 U1083 ( .AN(temp_cost[3]), .B(min_cost[3]), .Y(n822) );
  NOR2X1 U1084 ( .A(n593), .B(min_cost[4]), .Y(n821) );
  NOR2X1 U1085 ( .A(n822), .B(n821), .Y(n811) );
  NOR2BX1 U1086 ( .AN(min_cost[0]), .B(temp_cost[0]), .Y(n808) );
  AO21X1 U1087 ( .A0(n590), .A1(n808), .B0(min_cost[1]), .Y(n807) );
  NAND2X1 U1088 ( .A(temp_cost[2]), .B(n829), .Y(n819) );
  OAI211X1 U1089 ( .A0(n808), .A1(n590), .B0(n807), .C0(n819), .Y(n809) );
  OAI221XL U1090 ( .A0(temp_cost[2]), .A1(n829), .B0(temp_cost[3]), .B1(n828), 
        .C0(n809), .Y(n810) );
  AOI222XL U1091 ( .A0(min_cost[5]), .A1(n592), .B0(min_cost[4]), .B1(n593), 
        .C0(n811), .C1(n810), .Y(n815) );
  NAND2BX1 U1092 ( .AN(n813), .B(n812), .Y(n814) );
  OAI222XL U1093 ( .A0(n815), .A1(n814), .B0(temp_cost[6]), .B1(n827), .C0(
        temp_cost[7]), .C1(n826), .Y(n816) );
  AOI32X1 U1094 ( .A0(n817), .A1(n832), .A2(n816), .B0(min_cost[8]), .B1(n587), 
        .Y(n818) );
  NOR4X1 U1095 ( .A(n824), .B(n823), .C(n822), .D(n821), .Y(N132) );
endmodule

