/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Mar 26 20:19:50 2024
/////////////////////////////////////////////////////////////


module DT ( clk, reset, done, sti_rd, sti_addr, sti_di, res_wr, res_rd, 
        res_addr, res_do, res_di );
  output [9:0] sti_addr;
  input [15:0] sti_di;
  output [13:0] res_addr;
  output [7:0] res_do;
  input [7:0] res_di;
  input clk, reset;
  output done, sti_rd, res_wr, res_rd;
  wire   flag, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         \C73/DATA2_0 , \C73/DATA2_1 , \C73/DATA2_2 , \C73/DATA2_3 , n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n331, n332, \C1/DATA2_5 , \C1/DATA2_4 ,
         \C1/DATA2_3 , \C1/DATA2_2 , \C1/DATA2_1 , \DP_OP_168_132_6504/n5 ,
         \DP_OP_168_132_6504/n4 , \DP_OP_168_132_6504/n3 ,
         \DP_OP_168_132_6504/n2 , \DP_OP_168_132_6504/n1 , n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739,
         n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923;
  wire   [3:0] cur_state;
  wire   [2:0] count;
  wire   [7:0] min;
  wire   [3:0] next_state;

  DFFRX1 \cur_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n920), .Q(
        cur_state[0]), .QN(n343) );
  DFFRX1 flag_reg ( .D(n322), .CK(clk), .RN(n920), .Q(flag), .QN(n907) );
  DFFRX1 \cur_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n920), .Q(
        cur_state[2]), .QN(n904) );
  DFFRX1 \cur_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n920), .Q(
        cur_state[1]), .QN(n903) );
  DFFRX1 \y_reg[1]  ( .D(n298), .CK(clk), .RN(n920), .Q(\C73/DATA2_1 ) );
  DFFRX1 \count_reg[0]  ( .D(n312), .CK(clk), .RN(n920), .Q(count[0]), .QN(
        n898) );
  DFFRX1 \count_reg[1]  ( .D(n311), .CK(clk), .RN(n920), .Q(count[1]), .QN(
        n905) );
  DFFRX1 \count_reg[2]  ( .D(n313), .CK(clk), .RN(n920), .Q(count[2]) );
  DFFSX1 \min_reg[7]  ( .D(n323), .CK(clk), .SN(reset), .Q(min[7]), .QN(n901)
         );
  ADDHXL \DP_OP_168_132_6504/U6  ( .A(n921), .B(\C73/DATA2_0 ), .CO(
        \DP_OP_168_132_6504/n5 ), .S(\C1/DATA2_1 ) );
  ADDHXL \DP_OP_168_132_6504/U3  ( .A(N107), .B(\DP_OP_168_132_6504/n3 ), .CO(
        \DP_OP_168_132_6504/n2 ), .S(\C1/DATA2_4 ) );
  ADDHXL \DP_OP_168_132_6504/U2  ( .A(N108), .B(\DP_OP_168_132_6504/n2 ), .CO(
        \DP_OP_168_132_6504/n1 ), .S(\C1/DATA2_5 ) );
  DFFSX1 \min_reg[0]  ( .D(n923), .CK(clk), .SN(n920), .Q(min[0]), .QN(n906)
         );
  DFFSX1 \min_reg[4]  ( .D(n326), .CK(clk), .SN(reset), .Q(min[4]), .QN(n899)
         );
  ADDHXL \DP_OP_168_132_6504/U5  ( .A(\C73/DATA2_2 ), .B(
        \DP_OP_168_132_6504/n5 ), .CO(\DP_OP_168_132_6504/n4 ), .S(
        \C1/DATA2_2 ) );
  ADDHXL \DP_OP_168_132_6504/U4  ( .A(\C73/DATA2_3 ), .B(
        \DP_OP_168_132_6504/n4 ), .CO(\DP_OP_168_132_6504/n3 ), .S(
        \C1/DATA2_3 ) );
  DFFRX2 \x_reg[6]  ( .D(n310), .CK(clk), .RN(n920), .Q(N116), .QN(n914) );
  DFFRX2 \x_reg[3]  ( .D(n306), .CK(clk), .RN(n920), .Q(N113), .QN(n916) );
  DFFRX2 \y_reg[2]  ( .D(n299), .CK(clk), .RN(n920), .Q(\C73/DATA2_2 ), .QN(
        n897) );
  DFFRX2 \y_reg[3]  ( .D(n300), .CK(clk), .RN(reset), .Q(\C73/DATA2_3 ), .QN(
        n913) );
  DFFRX2 \y_reg[6]  ( .D(n309), .CK(clk), .RN(reset), .Q(N109), .QN(n896) );
  DFFRX2 \y_reg[5]  ( .D(n302), .CK(clk), .RN(reset), .Q(N108), .QN(n912) );
  DFFRX2 \y_reg[4]  ( .D(n301), .CK(clk), .RN(reset), .Q(N107), .QN(n902) );
  DFFRX2 \x_reg[5]  ( .D(n308), .CK(clk), .RN(reset), .Q(N115), .QN(n915) );
  DFFRX2 \x_reg[4]  ( .D(n307), .CK(clk), .RN(reset), .Q(N114), .QN(n911) );
  DFFRX2 \x_reg[2]  ( .D(n305), .CK(clk), .RN(reset), .Q(N112), .QN(n910) );
  DFFRX2 \res_addr_reg[13]  ( .D(n283), .CK(clk), .RN(n920), .Q(res_addr[13])
         );
  DFFSX2 \min_reg[5]  ( .D(n325), .CK(clk), .SN(n920), .Q(min[5]), .QN(n909)
         );
  DFFSX1 \x_reg[0]  ( .D(n303), .CK(clk), .SN(reset), .Q(N110), .QN(n344) );
  DFFSX2 \min_reg[2]  ( .D(n328), .CK(clk), .SN(n920), .Q(min[2]), .QN(n895)
         );
  DFFSX1 \min_reg[3]  ( .D(n327), .CK(clk), .SN(n920), .Q(min[3]), .QN(n346)
         );
  DFFSX4 \y_reg[0]  ( .D(n297), .CK(clk), .SN(reset), .Q(\C73/DATA2_0 ), .QN(
        n922) );
  DFFRX1 \cur_state_reg[3]  ( .D(next_state[3]), .CK(clk), .RN(n920), .Q(
        cur_state[3]), .QN(n345) );
  DFFRX2 \x_reg[1]  ( .D(n304), .CK(clk), .RN(reset), .Q(N111), .QN(n917) );
  DFFRX2 \res_do_reg[3]  ( .D(n318), .CK(clk), .RN(n920), .Q(res_do[3]) );
  DFFRX2 res_wr_reg ( .D(n271), .CK(clk), .RN(reset), .Q(res_wr) );
  DFFRX2 \sti_addr_reg[8]  ( .D(n274), .CK(clk), .RN(n920), .Q(sti_addr[8]) );
  DFFRX2 \sti_addr_reg[7]  ( .D(n275), .CK(clk), .RN(n920), .Q(sti_addr[7]) );
  DFFRX2 \sti_addr_reg[3]  ( .D(n279), .CK(clk), .RN(n920), .Q(sti_addr[3]) );
  DFFRX2 \res_do_reg[0]  ( .D(n321), .CK(clk), .RN(n920), .Q(res_do[0]) );
  DFFRX2 \res_do_reg[5]  ( .D(n316), .CK(clk), .RN(reset), .Q(res_do[5]) );
  DFFRX2 \res_do_reg[6]  ( .D(n315), .CK(clk), .RN(n920), .Q(res_do[6]) );
  DFFRX2 \res_do_reg[4]  ( .D(n317), .CK(clk), .RN(n920), .Q(res_do[4]) );
  DFFRX2 res_rd_reg ( .D(n331), .CK(clk), .RN(n920), .Q(res_rd) );
  DFFRX2 \sti_addr_reg[9]  ( .D(n273), .CK(clk), .RN(n920), .Q(sti_addr[9]) );
  DFFRX2 \sti_addr_reg[6]  ( .D(n276), .CK(clk), .RN(n920), .Q(sti_addr[6]) );
  DFFRX2 \sti_addr_reg[5]  ( .D(n277), .CK(clk), .RN(n920), .Q(sti_addr[5]) );
  DFFRX2 \sti_addr_reg[2]  ( .D(n280), .CK(clk), .RN(n920), .Q(sti_addr[2]) );
  DFFRX2 \sti_addr_reg[1]  ( .D(n281), .CK(clk), .RN(n920), .Q(sti_addr[1]) );
  DFFRX2 \sti_addr_reg[0]  ( .D(n282), .CK(clk), .RN(n920), .Q(sti_addr[0]) );
  DFFRX2 \res_do_reg[7]  ( .D(n314), .CK(clk), .RN(n920), .Q(res_do[7]) );
  DFFRX2 done_reg ( .D(n332), .CK(clk), .RN(n920), .Q(done) );
  DFFRX2 sti_rd_reg ( .D(n272), .CK(clk), .RN(n920), .Q(sti_rd) );
  DFFRX2 \res_addr_reg[0]  ( .D(n296), .CK(clk), .RN(n920), .Q(res_addr[0]) );
  DFFRX2 \res_addr_reg[12]  ( .D(n284), .CK(clk), .RN(n920), .Q(res_addr[12])
         );
  DFFRX2 \res_addr_reg[11]  ( .D(n285), .CK(clk), .RN(n920), .Q(res_addr[11])
         );
  DFFRX2 \res_addr_reg[10]  ( .D(n286), .CK(clk), .RN(reset), .Q(res_addr[10])
         );
  DFFRX2 \res_addr_reg[9]  ( .D(n287), .CK(clk), .RN(reset), .Q(res_addr[9])
         );
  DFFRX2 \res_addr_reg[7]  ( .D(n289), .CK(clk), .RN(n920), .Q(res_addr[7]) );
  DFFRX2 \res_addr_reg[6]  ( .D(n290), .CK(clk), .RN(n920), .Q(res_addr[6]) );
  DFFRX2 \res_addr_reg[5]  ( .D(n291), .CK(clk), .RN(reset), .Q(res_addr[5])
         );
  DFFRX2 \res_addr_reg[4]  ( .D(n292), .CK(clk), .RN(n920), .Q(res_addr[4]) );
  DFFRX2 \res_addr_reg[3]  ( .D(n293), .CK(clk), .RN(n920), .Q(res_addr[3]) );
  DFFRX2 \res_addr_reg[2]  ( .D(n294), .CK(clk), .RN(n920), .Q(res_addr[2]) );
  DFFRX2 \res_addr_reg[1]  ( .D(n295), .CK(clk), .RN(reset), .Q(res_addr[1])
         );
  DFFRX2 \res_do_reg[1]  ( .D(n320), .CK(clk), .RN(n920), .Q(res_do[1]), .QN(
        n918) );
  DFFRX2 \res_do_reg[2]  ( .D(n319), .CK(clk), .RN(n920), .Q(res_do[2]), .QN(
        n919) );
  DFFRX2 \sti_addr_reg[4]  ( .D(n278), .CK(clk), .RN(n920), .Q(sti_addr[4]) );
  DFFRX2 \res_addr_reg[8]  ( .D(n288), .CK(clk), .RN(reset), .Q(res_addr[8])
         );
  DFFSX1 \min_reg[1]  ( .D(n329), .CK(clk), .SN(n920), .Q(min[1]), .QN(n900)
         );
  DFFSX1 \min_reg[6]  ( .D(n324), .CK(clk), .SN(n920), .Q(min[6]), .QN(n908)
         );
  AO21X1 U348 ( .A0(n855), .A1(n789), .B0(n513), .Y(n304) );
  NAND3X1 U349 ( .A(n855), .B(n344), .C(n850), .Y(n817) );
  CLKBUFX8 U350 ( .A(n537), .Y(n542) );
  NAND2X1 U351 ( .A(n849), .B(n823), .Y(n825) );
  BUFX2 U352 ( .A(n654), .Y(n887) );
  NAND3X4 U353 ( .A(n468), .B(n421), .C(n467), .Y(n423) );
  CLKINVX1 U354 ( .A(n808), .Y(n864) );
  BUFX12 U355 ( .A(n819), .Y(n849) );
  CLKINVX1 U356 ( .A(n670), .Y(n782) );
  NAND2BX2 U357 ( .AN(n376), .B(n380), .Y(n383) );
  NOR2X4 U358 ( .A(n529), .B(n570), .Y(n465) );
  INVX3 U359 ( .A(n850), .Y(n341) );
  INVX4 U360 ( .A(n422), .Y(n427) );
  NAND2X2 U361 ( .A(n407), .B(n406), .Y(n419) );
  NAND3X2 U362 ( .A(n454), .B(n453), .C(n452), .Y(n455) );
  MXI2X6 U363 ( .A(n480), .B(n366), .S0(n913), .Y(n593) );
  NOR2X1 U364 ( .A(res_di[7]), .B(n429), .Y(n432) );
  NAND2X1 U365 ( .A(n648), .B(n856), .Y(n656) );
  CLKINVX1 U366 ( .A(n487), .Y(n764) );
  OAI21XL U367 ( .A0(n647), .A1(n646), .B0(n907), .Y(n648) );
  NOR3X4 U368 ( .A(n410), .B(n409), .C(n408), .Y(n411) );
  NAND2X1 U369 ( .A(n404), .B(res_di[6]), .Y(n407) );
  NOR2X1 U370 ( .A(n388), .B(n814), .Y(n610) );
  NOR2X1 U371 ( .A(n438), .B(n437), .Y(n441) );
  NOR2X1 U372 ( .A(res_di[2]), .B(n895), .Y(n450) );
  NOR2X1 U373 ( .A(res_di[4]), .B(n899), .Y(n443) );
  NOR2X1 U374 ( .A(res_di[7]), .B(n616), .Y(n438) );
  INVX6 U375 ( .A(n404), .Y(n417) );
  NAND4X4 U376 ( .A(n351), .B(n350), .C(n349), .D(n348), .Y(n359) );
  NAND4X4 U377 ( .A(n357), .B(n356), .C(n355), .D(n354), .Y(n358) );
  NAND2X4 U378 ( .A(res_di[1]), .B(res_di[0]), .Y(n399) );
  NAND2X4 U379 ( .A(n444), .B(n862), .Y(n449) );
  MXI2X4 U380 ( .A(sti_di[14]), .B(sti_di[10]), .S0(n685), .Y(n360) );
  NAND3X4 U381 ( .A(sti_di[2]), .B(n685), .C(n352), .Y(n349) );
  NAND3X4 U382 ( .A(sti_di[1]), .B(n377), .C(n922), .Y(n355) );
  NAND2X4 U383 ( .A(n369), .B(n444), .Y(n395) );
  INVX4 U384 ( .A(res_di[5]), .Y(n433) );
  NAND3X2 U385 ( .A(sti_di[4]), .B(\C73/DATA2_0 ), .C(n347), .Y(n351) );
  NOR2X1 U386 ( .A(n636), .B(n760), .Y(n562) );
  NOR2X1 U387 ( .A(count[0]), .B(count[1]), .Y(n644) );
  NOR2X2 U388 ( .A(n549), .B(n903), .Y(n836) );
  NOR2X1 U389 ( .A(min[0]), .B(min[1]), .Y(n551) );
  INVX3 U390 ( .A(count[2]), .Y(n760) );
  NAND2X1 U391 ( .A(n588), .B(n343), .Y(n833) );
  NOR2X2 U392 ( .A(n345), .B(cur_state[2]), .Y(n588) );
  INVXL U393 ( .A(n653), .Y(n623) );
  NOR2XL U394 ( .A(n703), .B(n704), .Y(n631) );
  NAND2XL U395 ( .A(n877), .B(N108), .Y(n721) );
  NOR2XL U396 ( .A(n769), .B(n668), .Y(n669) );
  NOR3XL U397 ( .A(n883), .B(n653), .C(n652), .Y(n654) );
  NOR2X2 U398 ( .A(n480), .B(n479), .Y(n484) );
  INVXL U399 ( .A(n425), .Y(n426) );
  AOI21XL U400 ( .A0(n692), .A1(n691), .B0(n690), .Y(n696) );
  INVX3 U401 ( .A(n656), .Y(n883) );
  OR2X2 U402 ( .A(n505), .B(\C73/DATA2_2 ), .Y(n495) );
  NOR3X1 U403 ( .A(n904), .B(cur_state[3]), .C(cur_state[1]), .Y(n428) );
  AND2X2 U404 ( .A(n656), .B(n655), .Y(n885) );
  INVXL U405 ( .A(n863), .Y(n583) );
  NOR2BX1 U406 ( .AN(n922), .B(n521), .Y(n390) );
  NOR2X1 U407 ( .A(n521), .B(n506), .Y(n507) );
  INVXL U408 ( .A(n833), .Y(n555) );
  NAND2X4 U409 ( .A(n428), .B(cur_state[0]), .Y(n856) );
  NAND2X1 U410 ( .A(n837), .B(n907), .Y(n893) );
  NAND2X2 U411 ( .A(n510), .B(n511), .Y(n527) );
  INVXL U412 ( .A(n736), .Y(n292) );
  OAI211XL U413 ( .A0(n582), .A1(n899), .B0(n581), .C0(n580), .Y(n317) );
  OAI21X2 U414 ( .A0(n922), .A1(n527), .B0(n391), .Y(n297) );
  NAND3X1 U415 ( .A(n544), .B(min[6]), .C(n342), .Y(n471) );
  INVXL U416 ( .A(n894), .Y(n576) );
  OAI21X2 U417 ( .A0(n528), .A1(n527), .B0(n526), .Y(n298) );
  NAND2X2 U418 ( .A(n825), .B(n824), .Y(n826) );
  AOI211X2 U419 ( .A0(n525), .A1(n524), .B0(n523), .C0(n522), .Y(n526) );
  CLKINVX1 U420 ( .A(n701), .Y(n732) );
  INVX1 U421 ( .A(n867), .Y(n868) );
  NAND2X1 U422 ( .A(n880), .B(n879), .Y(n881) );
  NAND2X1 U423 ( .A(n869), .B(n867), .Y(n802) );
  OAI211X1 U424 ( .A0(n345), .A1(n591), .B0(n590), .C0(n589), .Y(next_state[3]) );
  NAND2X1 U425 ( .A(n666), .B(n877), .Y(n784) );
  NAND2X1 U426 ( .A(n667), .B(n877), .Y(n771) );
  NAND3X1 U427 ( .A(n876), .B(n875), .C(n874), .Y(n878) );
  NOR2X4 U428 ( .A(n432), .B(n431), .Y(n461) );
  NAND2X1 U429 ( .A(n877), .B(N109), .Y(n705) );
  NAND2X1 U430 ( .A(n864), .B(res_do[4]), .Y(n580) );
  INVX3 U431 ( .A(n577), .Y(n565) );
  NAND2X1 U432 ( .A(n864), .B(res_do[7]), .Y(n569) );
  NAND2X1 U433 ( .A(n864), .B(res_do[6]), .Y(n584) );
  AOI22X1 U434 ( .A0(n864), .A1(res_do[3]), .B0(n859), .B1(n346), .Y(n860) );
  CLKINVX1 U435 ( .A(n893), .Y(n577) );
  NAND2X1 U436 ( .A(n462), .B(n894), .Y(n463) );
  INVXL U437 ( .A(n837), .Y(n462) );
  NAND2X2 U438 ( .A(n368), .B(n856), .Y(n479) );
  NOR2X2 U439 ( .A(n561), .B(n650), .Y(n575) );
  NAND2X1 U440 ( .A(n562), .B(n428), .Y(n368) );
  NAND2X1 U441 ( .A(n587), .B(n638), .Y(n599) );
  NOR2X2 U442 ( .A(n549), .B(cur_state[1]), .Y(n837) );
  NAND2X2 U443 ( .A(n588), .B(n375), .Y(n561) );
  NAND2X1 U444 ( .A(n551), .B(n550), .Y(n553) );
  NAND2X2 U445 ( .A(n588), .B(n374), .Y(n606) );
  CLKINVX1 U446 ( .A(n644), .Y(n636) );
  OR2X1 U447 ( .A(min[5]), .B(min[6]), .Y(n552) );
  NAND2X1 U448 ( .A(N115), .B(N113), .Y(n384) );
  NAND2X1 U449 ( .A(N112), .B(N114), .Y(n385) );
  NAND2X1 U450 ( .A(N116), .B(N111), .Y(n386) );
  CLKBUFX3 U451 ( .A(N110), .Y(n814) );
  INVX3 U452 ( .A(n415), .Y(n416) );
  INVX3 U453 ( .A(res_di[2]), .Y(n369) );
  BUFX12 U454 ( .A(reset), .Y(n920) );
  INVX1 U455 ( .A(n892), .Y(n283) );
  INVX1 U456 ( .A(n806), .Y(n284) );
  INVX1 U457 ( .A(n728), .Y(n291) );
  INVX1 U458 ( .A(n660), .Y(n289) );
  INVX1 U459 ( .A(n751), .Y(n285) );
  INVX1 U460 ( .A(n778), .Y(n287) );
  INVX1 U461 ( .A(n719), .Y(n295) );
  INVX1 U462 ( .A(n793), .Y(n288) );
  INVX1 U463 ( .A(n754), .Y(n296) );
  INVX1 U464 ( .A(n689), .Y(n294) );
  INVX1 U465 ( .A(n712), .Y(n290) );
  INVX1 U466 ( .A(n700), .Y(n293) );
  INVX1 U467 ( .A(n681), .Y(n286) );
  AOI211X1 U468 ( .A0(n805), .A1(n890), .B0(n804), .C0(n803), .Y(n806) );
  AOI211X1 U469 ( .A0(n735), .A1(n890), .B0(n734), .C0(n733), .Y(n736) );
  AOI211X1 U470 ( .A0(n727), .A1(n890), .B0(n726), .C0(n725), .Y(n728) );
  AOI211X1 U471 ( .A0(n659), .A1(n890), .B0(n658), .C0(n657), .Y(n660) );
  AOI211X1 U472 ( .A0(n792), .A1(n890), .B0(n791), .C0(n790), .Y(n793) );
  AOI211X1 U473 ( .A0(n680), .A1(n890), .B0(n679), .C0(n678), .Y(n681) );
  AOI211X1 U474 ( .A0(n750), .A1(n890), .B0(n749), .C0(n748), .Y(n751) );
  AOI211X1 U475 ( .A0(n885), .A1(\C73/DATA2_0 ), .B0(n753), .C0(n752), .Y(n754) );
  AOI211X1 U476 ( .A0(n718), .A1(n890), .B0(n717), .C0(n716), .Y(n719) );
  AOI211X1 U477 ( .A0(n777), .A1(n890), .B0(n776), .C0(n775), .Y(n778) );
  AOI211X1 U478 ( .A0(n699), .A1(n890), .B0(n698), .C0(n697), .Y(n700) );
  AOI211X1 U479 ( .A0(n688), .A1(n890), .B0(n687), .C0(n686), .Y(n689) );
  AOI211X1 U480 ( .A0(n711), .A1(n890), .B0(n710), .C0(n709), .Y(n712) );
  AOI21X1 U481 ( .A0(n782), .A1(n770), .B0(n769), .Y(n774) );
  OAI211X1 U482 ( .A0(n622), .A1(n621), .B0(n620), .C0(n619), .Y(next_state[0]) );
  OAI211X1 U483 ( .A0(n607), .A1(n606), .B0(n620), .C0(n605), .Y(next_state[1]) );
  NAND2X2 U484 ( .A(n842), .B(n841), .Y(n843) );
  NAND2X1 U485 ( .A(n817), .B(n816), .Y(n303) );
  AOI21X1 U486 ( .A0(n782), .A1(n781), .B0(n780), .Y(n787) );
  INVX1 U487 ( .A(n608), .Y(n622) );
  AOI31X1 U488 ( .A0(n542), .A1(res_di[1]), .A2(n557), .B0(n541), .Y(n515) );
  OAI21X2 U489 ( .A0(n671), .A1(n670), .B0(n669), .Y(n740) );
  AOI31X4 U490 ( .A0(n650), .A1(n856), .A2(n768), .B0(n883), .Y(n651) );
  BUFX8 U491 ( .A(n543), .Y(n342) );
  NAND2X1 U492 ( .A(n595), .B(n856), .Y(n608) );
  INVX1 U493 ( .A(n663), .Y(n781) );
  NAND2X1 U494 ( .A(n784), .B(n779), .Y(n769) );
  AOI21X1 U495 ( .A0(flag), .A1(n618), .B0(n617), .Y(n619) );
  INVX1 U496 ( .A(n737), .Y(n738) );
  NOR2X1 U497 ( .A(n663), .B(n783), .Y(n770) );
  INVX1 U498 ( .A(n682), .Y(n692) );
  INVX1 U499 ( .A(n594), .Y(n595) );
  NAND2X1 U500 ( .A(n642), .B(n877), .Y(n779) );
  NAND2X1 U501 ( .A(n745), .B(n877), .Y(n794) );
  OR2X1 U502 ( .A(n801), .B(n877), .Y(n869) );
  OR2X1 U503 ( .A(n667), .B(n877), .Y(n772) );
  NAND2X1 U504 ( .A(n676), .B(n877), .Y(n737) );
  NOR2X1 U505 ( .A(n690), .B(n625), .Y(n626) );
  OR2X1 U506 ( .A(n676), .B(n877), .Y(n739) );
  OR2X1 U507 ( .A(n878), .B(n877), .Y(n880) );
  NOR2X1 U508 ( .A(n666), .B(n877), .Y(n783) );
  OAI211X1 U509 ( .A0(n768), .A1(n767), .B0(n766), .C0(n765), .Y(next_state[2]) );
  NOR2X1 U510 ( .A(n745), .B(n877), .Y(n795) );
  NAND2X1 U511 ( .A(n801), .B(n877), .Y(n867) );
  NAND2X1 U512 ( .A(n730), .B(n722), .Y(n703) );
  AO21X1 U513 ( .A0(n572), .A1(min[7]), .B0(n571), .Y(n314) );
  NAND3X1 U514 ( .A(n834), .B(n573), .C(n894), .Y(n813) );
  INVX1 U515 ( .A(n713), .Y(n624) );
  NAND2X1 U516 ( .A(n641), .B(n640), .Y(n642) );
  NAND2X1 U517 ( .A(n665), .B(n664), .Y(n667) );
  NAND2X1 U518 ( .A(n675), .B(n674), .Y(n676) );
  OAI211X1 U519 ( .A0(n586), .A1(n908), .B0(n585), .C0(n584), .Y(n315) );
  INVX1 U520 ( .A(n683), .Y(n690) );
  NAND2X1 U521 ( .A(n691), .B(n694), .Y(n627) );
  INVX1 U522 ( .A(n720), .Y(n730) );
  INVX1 U523 ( .A(n721), .Y(n628) );
  INVX1 U524 ( .A(n755), .Y(n767) );
  NAND2X1 U525 ( .A(n744), .B(n743), .Y(n745) );
  NAND2X1 U526 ( .A(n800), .B(n799), .Y(n801) );
  INVX1 U527 ( .A(n729), .Y(n629) );
  NAND2X1 U528 ( .A(n556), .B(n768), .Y(n647) );
  NAND2X1 U529 ( .A(n877), .B(n685), .Y(n683) );
  NAND2X1 U530 ( .A(n877), .B(n921), .Y(n713) );
  NAND2X1 U531 ( .A(n877), .B(N107), .Y(n729) );
  NAND2X1 U532 ( .A(n877), .B(\C73/DATA2_3 ), .Y(n693) );
  NOR2X1 U533 ( .A(n877), .B(N109), .Y(n704) );
  OAI2BB1X1 U534 ( .A0N(min[5]), .A1N(n866), .B0(n865), .Y(n316) );
  OAI2BB1X1 U535 ( .A0N(n862), .A1N(n861), .B0(n860), .Y(n318) );
  NAND2X1 U536 ( .A(n839), .B(n760), .Y(n556) );
  INVX1 U537 ( .A(n481), .Y(n381) );
  NAND2X1 U538 ( .A(n602), .B(n639), .Y(n839) );
  NAND2X1 U539 ( .A(n380), .B(n894), .Y(n481) );
  NAND3X6 U540 ( .A(n414), .B(n413), .C(n412), .Y(n468) );
  OR2X1 U541 ( .A(n499), .B(N108), .Y(n500) );
  NAND2X1 U542 ( .A(n611), .B(n836), .Y(n602) );
  OR2X1 U543 ( .A(n847), .B(N115), .Y(n848) );
  INVX1 U544 ( .A(n479), .Y(n380) );
  NAND3X1 U545 ( .A(n859), .B(min[4]), .C(n862), .Y(n863) );
  NAND2X1 U546 ( .A(min[7]), .B(n763), .Y(n425) );
  INVX1 U547 ( .A(n573), .Y(n809) );
  AND2X2 U548 ( .A(n836), .B(n811), .Y(n655) );
  NAND2X1 U549 ( .A(n477), .B(n476), .Y(n487) );
  OR2X1 U550 ( .A(n797), .B(N114), .Y(n847) );
  OR2X1 U551 ( .A(n491), .B(N107), .Y(n499) );
  INVX3 U552 ( .A(n419), .Y(n424) );
  INVX1 U553 ( .A(n561), .Y(n763) );
  INVX1 U554 ( .A(n377), .Y(n596) );
  INVX1 U555 ( .A(n562), .Y(n650) );
  OR2X2 U556 ( .A(n757), .B(done), .Y(n332) );
  NOR2X1 U557 ( .A(n561), .B(count[2]), .Y(n600) );
  OR2X1 U558 ( .A(n742), .B(N113), .Y(n797) );
  AND2X2 U559 ( .A(n645), .B(n644), .Y(n646) );
  AND2X2 U560 ( .A(n616), .B(n561), .Y(n573) );
  OR2X1 U561 ( .A(n495), .B(\C73/DATA2_3 ), .Y(n491) );
  INVX1 U562 ( .A(n567), .Y(n568) );
  MXI2X6 U563 ( .A(n365), .B(n364), .S0(n921), .Y(n366) );
  NOR2X1 U564 ( .A(n901), .B(n616), .Y(n437) );
  INVX1 U565 ( .A(n352), .Y(n353) );
  XNOR2X1 U566 ( .A(n505), .B(n685), .Y(n508) );
  NOR2X1 U567 ( .A(n566), .B(n895), .Y(n567) );
  OR2X1 U568 ( .A(n672), .B(N112), .Y(n742) );
  NOR2X1 U569 ( .A(n673), .B(n910), .Y(n741) );
  INVX1 U570 ( .A(n788), .Y(n789) );
  NAND2X2 U571 ( .A(n417), .B(n405), .Y(n406) );
  NOR2X1 U572 ( .A(n343), .B(cur_state[1]), .Y(n374) );
  OR2X1 U573 ( .A(n814), .B(N111), .Y(n672) );
  NAND2X1 U574 ( .A(n814), .B(N111), .Y(n673) );
  INVX1 U575 ( .A(n563), .Y(n566) );
  INVX1 U576 ( .A(n614), .Y(n591) );
  INVX1 U577 ( .A(n811), .Y(n652) );
  NOR3X1 U578 ( .A(n386), .B(n385), .C(n384), .Y(n387) );
  NOR2X1 U579 ( .A(n903), .B(n343), .Y(n375) );
  OR2X1 U580 ( .A(\C73/DATA2_0 ), .B(n921), .Y(n505) );
  NAND2X2 U581 ( .A(n612), .B(n367), .Y(n894) );
  INVX1 U582 ( .A(n517), .Y(n520) );
  NOR2X1 U583 ( .A(n903), .B(cur_state[0]), .Y(n367) );
  NOR4X1 U584 ( .A(N108), .B(N107), .C(N109), .D(\C73/DATA2_3 ), .Y(n476) );
  BUFX4 U585 ( .A(\C73/DATA2_1 ), .Y(n921) );
  NAND2X1 U586 ( .A(min[5]), .B(min[6]), .Y(n570) );
  NAND2X1 U587 ( .A(N109), .B(\C73/DATA2_3 ), .Y(n378) );
  NOR2X1 U588 ( .A(cur_state[2]), .B(cur_state[3]), .Y(n612) );
  NAND2X1 U589 ( .A(N108), .B(N107), .Y(n379) );
  INVX1 U590 ( .A(res_di[7]), .Y(n475) );
  NOR3X1 U591 ( .A(n596), .B(n379), .C(n378), .Y(n482) );
  NAND4X6 U592 ( .A(n373), .B(n372), .C(n371), .D(n370), .Y(n592) );
  NAND3X2 U593 ( .A(n544), .B(min[5]), .C(n342), .Y(n530) );
  NAND2X2 U594 ( .A(n830), .B(n829), .Y(n831) );
  NAND2X2 U595 ( .A(n853), .B(n852), .Y(n854) );
  NAND3X2 U596 ( .A(n544), .B(n862), .C(n342), .Y(n533) );
  NOR2X2 U597 ( .A(n548), .B(n424), .Y(n473) );
  MXI2X8 U598 ( .A(n363), .B(n362), .S0(\C73/DATA2_0 ), .Y(n364) );
  MXI2X6 U599 ( .A(sti_di[13]), .B(sti_di[9]), .S0(n685), .Y(n363) );
  AOI211X1 U600 ( .A0(n525), .A1(n508), .B0(n507), .C0(n522), .Y(n509) );
  NAND3X4 U601 ( .A(n420), .B(n424), .C(n552), .Y(n467) );
  NAND2X2 U602 ( .A(n529), .B(n908), .Y(n420) );
  NAND2X2 U603 ( .A(n529), .B(n909), .Y(n412) );
  AOI2BB2X4 U604 ( .B0(n419), .B1(n908), .A0N(n547), .A1N(min[4]), .Y(n413) );
  NAND3X2 U605 ( .A(n544), .B(min[1]), .C(n342), .Y(n514) );
  OAI211X1 U606 ( .A0(n548), .A1(n516), .B0(n515), .C0(n514), .Y(n329) );
  AOI21X1 U607 ( .A0(n714), .A1(\C73/DATA2_0 ), .B0(n624), .Y(n682) );
  INVXL U608 ( .A(n693), .Y(n625) );
  NAND3X4 U609 ( .A(n468), .B(n467), .C(n466), .Y(n470) );
  INVX6 U610 ( .A(res_di[3]), .Y(n444) );
  NOR2X1 U611 ( .A(n922), .B(n921), .Y(n352) );
  NAND2XL U612 ( .A(n872), .B(n789), .Y(n661) );
  INVXL U613 ( .A(n779), .Y(n780) );
  OR2X2 U614 ( .A(n877), .B(n921), .Y(n714) );
  OR2X2 U615 ( .A(n877), .B(\C73/DATA2_3 ), .Y(n694) );
  NAND2XL U616 ( .A(n691), .B(n683), .Y(n684) );
  NAND2XL U617 ( .A(n694), .B(n693), .Y(n695) );
  NAND2XL U618 ( .A(n730), .B(n729), .Y(n731) );
  OAI21XL U619 ( .A0(n732), .A1(n720), .B0(n729), .Y(n724) );
  NAND2XL U620 ( .A(n722), .B(n721), .Y(n723) );
  NAND2XL U621 ( .A(n706), .B(n705), .Y(n707) );
  INVXL U622 ( .A(n704), .Y(n706) );
  NAND2XL U623 ( .A(n781), .B(n779), .Y(n643) );
  NAND2XL U624 ( .A(n772), .B(n771), .Y(n773) );
  NAND2XL U625 ( .A(n739), .B(n737), .Y(n677) );
  NAND2XL U626 ( .A(n746), .B(n794), .Y(n747) );
  INVXL U627 ( .A(n795), .Y(n746) );
  INVXL U628 ( .A(n616), .Y(n587) );
  BUFX2 U629 ( .A(min[3]), .Y(n862) );
  NAND2X2 U630 ( .A(res_di[3]), .B(res_di[2]), .Y(n410) );
  NAND2X2 U631 ( .A(res_di[4]), .B(res_di[1]), .Y(n409) );
  AND2X2 U632 ( .A(n741), .B(N113), .Y(n798) );
  NOR2BX1 U633 ( .AN(n388), .B(n381), .Y(n382) );
  INVX3 U634 ( .A(n511), .Y(n525) );
  NOR2XL U635 ( .A(n341), .B(n599), .Y(n604) );
  INVXL U636 ( .A(n756), .Y(n758) );
  CLKINVX1 U637 ( .A(n645), .Y(n639) );
  NOR3XL U638 ( .A(n912), .B(n902), .C(n896), .Y(n598) );
  NOR2XL U639 ( .A(n596), .B(n913), .Y(n597) );
  OAI211XL U640 ( .A0(n341), .A1(n616), .B0(n756), .C0(n615), .Y(n617) );
  NAND2XL U641 ( .A(n594), .B(n593), .Y(n620) );
  NAND3BX2 U642 ( .AN(n473), .B(n472), .C(n471), .Y(n324) );
  NAND4X4 U643 ( .A(sti_di[3]), .B(\C73/DATA2_2 ), .C(n922), .D(n528), .Y(n356) );
  NAND2XL U644 ( .A(n872), .B(n344), .Y(n640) );
  AOI22XL U645 ( .A0(n873), .A1(N112), .B0(n871), .B1(n818), .Y(n665) );
  NAND2XL U646 ( .A(n872), .B(n827), .Y(n674) );
  NAND2XL U647 ( .A(n828), .B(n871), .Y(n743) );
  AOI22XL U648 ( .A0(n872), .A1(n832), .B0(n873), .B1(N114), .Y(n744) );
  NAND2XL U649 ( .A(n840), .B(n871), .Y(n800) );
  AOI21X1 U650 ( .A0(res_di[1]), .A1(n566), .B0(n551), .Y(n448) );
  NAND2X4 U651 ( .A(res_di[4]), .B(res_di[5]), .Y(n415) );
  NAND2XL U652 ( .A(n884), .B(n871), .Y(n876) );
  NAND2XL U653 ( .A(n878), .B(n877), .Y(n879) );
  AOI22X1 U654 ( .A0(res_di[3]), .A1(n346), .B0(res_di[2]), .B1(n895), .Y(n445) );
  NOR3X2 U655 ( .A(n441), .B(n440), .C(count[2]), .Y(n457) );
  NOR2X1 U656 ( .A(n439), .B(min[6]), .Y(n440) );
  CLKINVX1 U657 ( .A(n593), .Y(n376) );
  NAND2XL U658 ( .A(n785), .B(n784), .Y(n786) );
  INVXL U659 ( .A(n783), .Y(n785) );
  INVXL U660 ( .A(\C1/DATA2_2 ), .Y(n506) );
  XNOR2X1 U661 ( .A(n715), .B(\C73/DATA2_0 ), .Y(n718) );
  OAI2BB1XL U662 ( .A0N(sti_rd), .A1N(n894), .B0(n893), .Y(n272) );
  NOR2XL U663 ( .A(n561), .B(n638), .Y(n558) );
  NAND3XL U664 ( .A(n859), .B(n862), .C(n899), .Y(n581) );
  NOR4XL U665 ( .A(n808), .B(n577), .C(n576), .D(n575), .Y(n578) );
  INVXL U666 ( .A(n529), .Y(n532) );
  AOI211X1 U667 ( .A0(n525), .A1(n493), .B0(n492), .C0(n522), .Y(n494) );
  XNOR2X1 U668 ( .A(n491), .B(N107), .Y(n493) );
  AOI211X1 U669 ( .A0(n525), .A1(n489), .B0(n488), .C0(n522), .Y(n490) );
  XNOR2X1 U670 ( .A(n499), .B(N108), .Y(n489) );
  NOR2BX1 U671 ( .AN(\C1/DATA2_5 ), .B(n521), .Y(n488) );
  AOI211X1 U672 ( .A0(n525), .A1(n503), .B0(n502), .C0(n522), .Y(n504) );
  XNOR2X1 U673 ( .A(n500), .B(N109), .Y(n503) );
  NOR2BX1 U674 ( .AN(n501), .B(n521), .Y(n502) );
  AOI211X1 U675 ( .A0(n525), .A1(n497), .B0(n496), .C0(n522), .Y(n498) );
  NOR2BX1 U676 ( .AN(\C1/DATA2_3 ), .B(n521), .Y(n496) );
  MXI2X1 U677 ( .A(n573), .B(n813), .S0(count[0]), .Y(n312) );
  XNOR2X1 U678 ( .A(\C73/DATA2_0 ), .B(n921), .Y(n524) );
  INVXL U679 ( .A(n592), .Y(n607) );
  NAND4XL U680 ( .A(n764), .B(n763), .C(n814), .D(n762), .Y(n765) );
  NOR2X6 U681 ( .A(n359), .B(n358), .Y(n480) );
  AOI2BB1X2 U682 ( .A0N(n851), .A1N(n915), .B0(n341), .Y(n841) );
  AO21X2 U683 ( .A0(n855), .A1(n844), .B0(n843), .Y(n308) );
  AOI22XL U684 ( .A0(n872), .A1(n844), .B0(n873), .B1(N115), .Y(n799) );
  ADDHX1 U685 ( .A(N115), .B(n845), .CO(n846), .S(n844) );
  NOR2X4 U686 ( .A(res_di[6]), .B(n908), .Y(n442) );
  NAND3XL U687 ( .A(n583), .B(min[5]), .C(n908), .Y(n585) );
  MXI2X6 U688 ( .A(sti_di[15]), .B(sti_di[11]), .S0(n685), .Y(n361) );
  MXI2X6 U689 ( .A(sti_di[12]), .B(sti_di[8]), .S0(n685), .Y(n362) );
  NOR2X1 U690 ( .A(n353), .B(n685), .Y(n477) );
  OR2X2 U691 ( .A(n877), .B(n685), .Y(n691) );
  AOI211XL U692 ( .A0(flag), .A1(n836), .B0(n758), .C0(n757), .Y(n766) );
  NAND4XL U693 ( .A(n856), .B(flag), .C(n894), .D(n833), .Y(n835) );
  NAND3X4 U694 ( .A(sti_di[0]), .B(\C73/DATA2_0 ), .C(n377), .Y(n357) );
  NAND2X2 U695 ( .A(n616), .B(n606), .Y(n557) );
  NAND2X2 U696 ( .A(n428), .B(n343), .Y(n616) );
  MX2X1 U697 ( .A(n814), .B(sti_addr[3]), .S0(n565), .Y(n279) );
  MX2X1 U698 ( .A(N114), .B(sti_addr[7]), .S0(n565), .Y(n275) );
  MX2X1 U699 ( .A(N115), .B(sti_addr[8]), .S0(n565), .Y(n274) );
  MX2X1 U700 ( .A(n579), .B(res_wr), .S0(n578), .Y(n271) );
  AOI22XL U701 ( .A0(n873), .A1(N111), .B0(n871), .B1(n788), .Y(n662) );
  INVXL U702 ( .A(n632), .Y(n634) );
  NAND2XL U703 ( .A(n886), .B(n872), .Y(n875) );
  NAND2XL U704 ( .A(n872), .B(n822), .Y(n664) );
  INVXL U705 ( .A(n771), .Y(n668) );
  NAND2X1 U706 ( .A(n439), .B(min[6]), .Y(n436) );
  OAI21X1 U707 ( .A0(n796), .A1(n795), .B0(n794), .Y(n870) );
  OAI21XL U708 ( .A0(n732), .A1(n703), .B0(n702), .Y(n708) );
  NAND2XL U709 ( .A(n714), .B(n713), .Y(n715) );
  NOR3XL U710 ( .A(n510), .B(n341), .C(n388), .Y(n389) );
  NOR2BX1 U711 ( .AN(\C1/DATA2_4 ), .B(n521), .Y(n492) );
  NOR2BX1 U712 ( .AN(\C1/DATA2_1 ), .B(n521), .Y(n523) );
  AND3X1 U713 ( .A(n610), .B(n759), .C(n609), .Y(n755) );
  NAND2XL U714 ( .A(n649), .B(n833), .Y(n560) );
  MX2X1 U715 ( .A(n560), .B(res_rd), .S0(n559), .Y(n331) );
  INVX3 U716 ( .A(n921), .Y(n528) );
  NOR2X1 U717 ( .A(n528), .B(\C73/DATA2_2 ), .Y(n347) );
  NAND4X4 U718 ( .A(sti_di[7]), .B(n922), .C(n897), .D(n528), .Y(n350) );
  INVX4 U719 ( .A(n897), .Y(n685) );
  NAND3X6 U720 ( .A(sti_di[5]), .B(n347), .C(n922), .Y(n348) );
  NOR2X1 U721 ( .A(n897), .B(n528), .Y(n377) );
  NAND2X6 U722 ( .A(sti_di[6]), .B(n477), .Y(n354) );
  MXI2X8 U723 ( .A(n361), .B(n360), .S0(\C73/DATA2_0 ), .Y(n365) );
  AOI2BB1X4 U724 ( .A0N(n593), .A1N(n894), .B0(n479), .Y(n510) );
  INVX3 U725 ( .A(n395), .Y(n373) );
  NOR2X2 U726 ( .A(res_di[7]), .B(res_di[1]), .Y(n372) );
  NOR2X2 U727 ( .A(res_di[4]), .B(res_di[5]), .Y(n371) );
  NOR2X2 U728 ( .A(res_di[0]), .B(res_di[6]), .Y(n370) );
  NOR2X8 U729 ( .A(n592), .B(n606), .Y(n478) );
  NOR2X4 U730 ( .A(n478), .B(n575), .Y(n511) );
  NAND2BX1 U731 ( .AN(\C73/DATA2_0 ), .B(n482), .Y(n388) );
  NAND2X8 U732 ( .A(n383), .B(n382), .Y(n521) );
  NAND2X2 U733 ( .A(n610), .B(n387), .Y(n850) );
  AOI211X4 U734 ( .A0(n525), .A1(n922), .B0(n390), .C0(n389), .Y(n391) );
  NAND4X8 U735 ( .A(res_di[2]), .B(res_di[1]), .C(res_di[3]), .D(res_di[0]), 
        .Y(n404) );
  CLKINVX1 U736 ( .A(res_di[4]), .Y(n392) );
  XOR2X4 U737 ( .A(n417), .B(n392), .Y(n547) );
  NAND2X2 U738 ( .A(n547), .B(min[4]), .Y(n403) );
  XNOR2X4 U739 ( .A(res_di[0]), .B(res_di[1]), .Y(n516) );
  NOR2X1 U740 ( .A(n906), .B(n900), .Y(n563) );
  NOR2X4 U741 ( .A(n516), .B(n563), .Y(n393) );
  XNOR2X4 U742 ( .A(n399), .B(res_di[2]), .Y(n517) );
  OAI22X4 U743 ( .A0(n393), .A1(n551), .B0(n517), .B1(n895), .Y(n398) );
  NAND2X1 U744 ( .A(n399), .B(n444), .Y(n394) );
  NAND4X2 U745 ( .A(n395), .B(n394), .C(n404), .D(n346), .Y(n397) );
  NAND2X2 U746 ( .A(n517), .B(n895), .Y(n396) );
  NAND3X4 U747 ( .A(n398), .B(n397), .C(n396), .Y(n402) );
  XOR2X2 U748 ( .A(res_di[2]), .B(res_di[3]), .Y(n400) );
  MXI2X2 U749 ( .A(n400), .B(res_di[3]), .S0(n399), .Y(n535) );
  NAND2X2 U750 ( .A(n535), .B(n862), .Y(n401) );
  NAND3X4 U751 ( .A(n403), .B(n402), .C(n401), .Y(n414) );
  XNOR2X2 U752 ( .A(n415), .B(res_di[6]), .Y(n405) );
  INVX3 U753 ( .A(res_di[0]), .Y(n408) );
  XOR2X4 U754 ( .A(n411), .B(res_di[5]), .Y(n529) );
  NAND3X4 U755 ( .A(n417), .B(n416), .C(res_di[6]), .Y(n418) );
  XNOR2X4 U756 ( .A(n418), .B(res_di[7]), .Y(n422) );
  AOI2BB1X2 U757 ( .A0N(n422), .A1N(n425), .B0(n465), .Y(n421) );
  OA21X4 U758 ( .A0(n427), .A1(min[7]), .B0(n600), .Y(n469) );
  NAND2X4 U759 ( .A(n423), .B(n469), .Y(n548) );
  NAND3X6 U760 ( .A(n427), .B(n426), .C(n760), .Y(n460) );
  NAND2X1 U761 ( .A(n437), .B(n760), .Y(n429) );
  NOR2X1 U762 ( .A(n343), .B(cur_state[3]), .Y(n430) );
  NAND2X1 U763 ( .A(n904), .B(n430), .Y(n549) );
  NAND3X1 U764 ( .A(n565), .B(n894), .C(n606), .Y(n431) );
  NAND2X4 U765 ( .A(res_di[5]), .B(n909), .Y(n439) );
  INVX3 U766 ( .A(n442), .Y(n434) );
  NAND2X8 U767 ( .A(n433), .B(min[5]), .Y(n446) );
  NAND4X4 U768 ( .A(n434), .B(n446), .C(res_di[4]), .D(n899), .Y(n435) );
  OAI2BB1X1 U769 ( .A0N(res_di[6]), .A1N(n436), .B0(n435), .Y(n458) );
  NOR2X4 U770 ( .A(n443), .B(n442), .Y(n453) );
  NAND4BX2 U771 ( .AN(n445), .B(n453), .C(n446), .D(n449), .Y(n456) );
  INVX2 U772 ( .A(n446), .Y(n447) );
  NOR2X2 U773 ( .A(n448), .B(n447), .Y(n454) );
  INVX2 U774 ( .A(n449), .Y(n451) );
  NOR2X4 U775 ( .A(n451), .B(n450), .Y(n452) );
  NAND4BX4 U776 ( .AN(n458), .B(n457), .C(n456), .D(n455), .Y(n459) );
  NAND3X8 U777 ( .A(n460), .B(n461), .C(n459), .Y(n537) );
  INVX1 U778 ( .A(n461), .Y(n464) );
  NAND2X2 U779 ( .A(n464), .B(n463), .Y(n536) );
  INVX3 U780 ( .A(n536), .Y(n541) );
  AOI31X1 U781 ( .A0(n542), .A1(res_di[6]), .A2(n557), .B0(n541), .Y(n472) );
  INVX1 U782 ( .A(n465), .Y(n466) );
  NAND2X8 U783 ( .A(n470), .B(n469), .Y(n544) );
  INVX3 U784 ( .A(n537), .Y(n543) );
  NAND2X1 U785 ( .A(n537), .B(n557), .Y(n538) );
  NAND2X1 U786 ( .A(n342), .B(min[7]), .Y(n474) );
  OAI211X1 U787 ( .A0(n538), .A1(n475), .B0(n536), .C0(n474), .Y(n323) );
  NAND2X4 U788 ( .A(n478), .B(n764), .Y(n486) );
  NAND3BX1 U789 ( .AN(\C73/DATA2_0 ), .B(n482), .C(n481), .Y(n483) );
  AOI2BB2X4 U790 ( .B0(n575), .B1(n764), .A0N(n484), .A1N(n483), .Y(n485) );
  AND2X8 U791 ( .A(n486), .B(n485), .Y(n815) );
  AOI21X4 U792 ( .A0(n487), .A1(n850), .B0(n815), .Y(n522) );
  OAI21X1 U793 ( .A0(n527), .A1(n912), .B0(n490), .Y(n302) );
  OAI21X1 U794 ( .A0(n527), .A1(n902), .B0(n494), .Y(n301) );
  XNOR2X1 U795 ( .A(n495), .B(\C73/DATA2_3 ), .Y(n497) );
  OAI21X1 U796 ( .A0(n527), .A1(n913), .B0(n498), .Y(n300) );
  XOR2X1 U797 ( .A(\DP_OP_168_132_6504/n1 ), .B(N109), .Y(n501) );
  OAI21X1 U798 ( .A0(n527), .A1(n896), .B0(n504), .Y(n309) );
  OAI21X1 U799 ( .A0(n897), .A1(n527), .B0(n509), .Y(n299) );
  NOR2X4 U800 ( .A(n510), .B(n815), .Y(n855) );
  XNOR2X1 U801 ( .A(n814), .B(N111), .Y(n788) );
  INVX4 U802 ( .A(n815), .Y(n851) );
  NOR2X8 U803 ( .A(n815), .B(n511), .Y(n819) );
  NAND2X1 U804 ( .A(n819), .B(n788), .Y(n512) );
  OAI211X1 U805 ( .A0(n851), .A1(n917), .B0(n850), .C0(n512), .Y(n513) );
  AOI31X1 U806 ( .A0(n542), .A1(res_di[2]), .A2(n557), .B0(n541), .Y(n519) );
  NAND3X1 U807 ( .A(n544), .B(min[2]), .C(n342), .Y(n518) );
  OAI211X1 U808 ( .A0(n548), .A1(n520), .B0(n519), .C0(n518), .Y(n328) );
  AOI31X1 U809 ( .A0(n542), .A1(res_di[5]), .A2(n557), .B0(n541), .Y(n531) );
  OAI211X1 U810 ( .A0(n548), .A1(n532), .B0(n531), .C0(n530), .Y(n325) );
  AOI31X1 U811 ( .A0(n542), .A1(res_di[3]), .A2(n557), .B0(n541), .Y(n534) );
  OAI211X1 U812 ( .A0(n548), .A1(n535), .B0(n534), .C0(n533), .Y(n327) );
  OAI21XL U813 ( .A0(n537), .A1(n906), .B0(n536), .Y(n540) );
  MXI2X4 U814 ( .A(n548), .B(n538), .S0(res_di[0]), .Y(n539) );
  AO21X4 U815 ( .A0(n544), .A1(n540), .B0(n539), .Y(n923) );
  AOI31X1 U816 ( .A0(n542), .A1(res_di[4]), .A2(n557), .B0(n541), .Y(n546) );
  NAND3X2 U817 ( .A(n544), .B(min[4]), .C(n342), .Y(n545) );
  OAI211X1 U818 ( .A0(n548), .A1(n547), .B0(n546), .C0(n545), .Y(n326) );
  CLKINVX1 U819 ( .A(n836), .Y(n649) );
  NOR2X1 U820 ( .A(min[2]), .B(n862), .Y(n550) );
  NOR3X1 U821 ( .A(n553), .B(n552), .C(min[4]), .Y(n554) );
  NAND2BX1 U822 ( .AN(min[7]), .B(n554), .Y(n611) );
  NOR2X4 U823 ( .A(n833), .B(n903), .Y(n645) );
  NAND2X1 U824 ( .A(n555), .B(n903), .Y(n768) );
  NOR2X1 U825 ( .A(n898), .B(n905), .Y(n632) );
  NAND2X1 U826 ( .A(n632), .B(n760), .Y(n638) );
  AOI211XL U827 ( .A0(n647), .A1(n907), .B0(n558), .C0(n557), .Y(n559) );
  OA21XL U828 ( .A0(n768), .A1(flag), .B0(n565), .Y(n834) );
  MX2X1 U829 ( .A(N116), .B(sti_addr[9]), .S0(n565), .Y(n273) );
  MX2X1 U830 ( .A(N112), .B(sti_addr[5]), .S0(n565), .Y(n277) );
  MX2X1 U831 ( .A(N108), .B(sti_addr[1]), .S0(n565), .Y(n281) );
  NOR2XL U832 ( .A(cur_state[1]), .B(cur_state[0]), .Y(n614) );
  NOR3XL U833 ( .A(n591), .B(n345), .C(n904), .Y(n757) );
  MX2X1 U834 ( .A(N109), .B(sti_addr[2]), .S0(n893), .Y(n280) );
  MX2X1 U835 ( .A(N107), .B(sti_addr[0]), .S0(n893), .Y(n282) );
  NAND3X1 U836 ( .A(n645), .B(n562), .C(n907), .Y(n858) );
  NAND2X1 U837 ( .A(n858), .B(n856), .Y(n808) );
  XNOR2X1 U838 ( .A(n563), .B(min[2]), .Y(n564) );
  OAI222XL U839 ( .A0(n919), .A1(n808), .B0(n858), .B1(n895), .C0(n856), .C1(
        n564), .Y(n319) );
  MX2X1 U840 ( .A(N113), .B(sti_addr[6]), .S0(n565), .Y(n276) );
  OAI21XL U841 ( .A0(n567), .A1(n856), .B0(n858), .Y(n861) );
  AOI2BB1X1 U842 ( .A0N(n862), .A1N(n856), .B0(n861), .Y(n582) );
  OAI21XL U843 ( .A0(min[4]), .A1(n856), .B0(n582), .Y(n866) );
  AOI2BB1X1 U844 ( .A0N(min[5]), .A1N(n856), .B0(n866), .Y(n586) );
  OAI21XL U845 ( .A0(min[6]), .A1(n856), .B0(n586), .Y(n572) );
  NOR2X1 U846 ( .A(n568), .B(n856), .Y(n859) );
  OAI31XL U847 ( .A0(n863), .A1(min[7]), .A2(n570), .B0(n569), .Y(n571) );
  OAI21XL U848 ( .A0(n632), .A1(n760), .B0(n638), .Y(n574) );
  OAI2BB2XL U849 ( .B0(n813), .B1(n760), .A0N(n809), .A1N(n574), .Y(n313) );
  NAND2XL U850 ( .A(n639), .B(n856), .Y(n579) );
  AO21X1 U851 ( .A0(n894), .A1(n599), .B0(n850), .Y(n590) );
  INVXL U852 ( .A(n588), .Y(n589) );
  NOR2X1 U853 ( .A(n341), .B(n894), .Y(n594) );
  OAI21XL U854 ( .A0(\C73/DATA2_0 ), .A1(n598), .B0(n597), .Y(n621) );
  AOI211XL U855 ( .A0(flag), .A1(n837), .B0(n645), .C0(n600), .Y(n601) );
  OAI21XL U856 ( .A0(flag), .A1(n602), .B0(n601), .Y(n603) );
  AOI211X1 U857 ( .A0(n608), .A1(n621), .B0(n604), .C0(n603), .Y(n605) );
  NOR2XL U858 ( .A(N116), .B(N115), .Y(n759) );
  NOR4XL U859 ( .A(N111), .B(N112), .C(N114), .D(N113), .Y(n609) );
  OAI21XL U860 ( .A0(n755), .A1(n768), .B0(n639), .Y(n618) );
  OA22X1 U861 ( .A0(n611), .A1(n649), .B0(n616), .B1(n638), .Y(n756) );
  NOR2XL U862 ( .A(n343), .B(flag), .Y(n613) );
  OAI21XL U863 ( .A0(n614), .A1(n613), .B0(n612), .Y(n615) );
  NAND2X2 U864 ( .A(n645), .B(n760), .Y(n653) );
  NOR2X1 U865 ( .A(n898), .B(count[1]), .Y(n810) );
  NAND2X1 U866 ( .A(n623), .B(n810), .Y(n637) );
  NAND2X1 U867 ( .A(n836), .B(n644), .Y(n635) );
  NAND2X1 U868 ( .A(n836), .B(n810), .Y(n633) );
  NAND3X6 U869 ( .A(n637), .B(n635), .C(n633), .Y(n877) );
  OAI21X2 U870 ( .A0(n682), .A1(n627), .B0(n626), .Y(n701) );
  NOR2X1 U871 ( .A(n877), .B(N107), .Y(n720) );
  OR2X1 U872 ( .A(n877), .B(N108), .Y(n722) );
  NOR2X1 U873 ( .A(n629), .B(n628), .Y(n702) );
  NAND2X1 U874 ( .A(n705), .B(n702), .Y(n630) );
  AOI21X2 U875 ( .A0(n701), .A1(n631), .B0(n630), .Y(n670) );
  OAI21X2 U876 ( .A0(n649), .A1(n634), .B0(n633), .Y(n871) );
  OAI21X2 U877 ( .A0(n653), .A1(n636), .B0(n635), .Y(n873) );
  MXI2X1 U878 ( .A(n871), .B(n873), .S0(n814), .Y(n641) );
  OAI21X2 U879 ( .A0(n639), .A1(n638), .B0(n637), .Y(n872) );
  NOR2X1 U880 ( .A(n642), .B(n877), .Y(n663) );
  XNOR2X1 U881 ( .A(n782), .B(n643), .Y(n659) );
  NOR2X1 U882 ( .A(count[0]), .B(n905), .Y(n811) );
  AOI211X4 U883 ( .A0(n649), .A1(n653), .B0(n883), .C0(n811), .Y(n890) );
  AO22X1 U884 ( .A0(n651), .A1(n814), .B0(n883), .B1(res_addr[7]), .Y(n658) );
  AO22X1 U885 ( .A0(n887), .A1(n344), .B0(n885), .B1(n344), .Y(n657) );
  NAND2X1 U886 ( .A(n662), .B(n661), .Y(n666) );
  XNOR2X1 U887 ( .A(n672), .B(N112), .Y(n818) );
  XOR2X1 U888 ( .A(n673), .B(n910), .Y(n822) );
  NAND2X1 U889 ( .A(n770), .B(n772), .Y(n671) );
  XNOR2X1 U890 ( .A(n742), .B(N113), .Y(n823) );
  AOI22XL U891 ( .A0(n873), .A1(N113), .B0(n823), .B1(n871), .Y(n675) );
  XNOR2X1 U892 ( .A(n741), .B(n916), .Y(n827) );
  XNOR2X1 U893 ( .A(n740), .B(n677), .Y(n680) );
  AO22X1 U894 ( .A0(n651), .A1(N113), .B0(n883), .B1(res_addr[10]), .Y(n679)
         );
  AO22X1 U895 ( .A0(n887), .A1(n827), .B0(n885), .B1(n823), .Y(n678) );
  XNOR2X1 U896 ( .A(n692), .B(n684), .Y(n688) );
  AO22X1 U897 ( .A0(n651), .A1(n685), .B0(n883), .B1(res_addr[2]), .Y(n687) );
  AO22X1 U898 ( .A0(n887), .A1(n685), .B0(n885), .B1(n685), .Y(n686) );
  XOR2X1 U899 ( .A(n696), .B(n695), .Y(n699) );
  AO22X1 U900 ( .A0(n651), .A1(\C73/DATA2_3 ), .B0(n883), .B1(res_addr[3]), 
        .Y(n698) );
  AO22X1 U901 ( .A0(n887), .A1(\C73/DATA2_3 ), .B0(n885), .B1(\C73/DATA2_3 ), 
        .Y(n697) );
  XNOR2X1 U902 ( .A(n708), .B(n707), .Y(n711) );
  AO22X1 U903 ( .A0(n651), .A1(N109), .B0(n883), .B1(res_addr[6]), .Y(n710) );
  AO22X1 U904 ( .A0(n887), .A1(N109), .B0(n885), .B1(N109), .Y(n709) );
  AO22X1 U905 ( .A0(n651), .A1(n921), .B0(n883), .B1(res_addr[1]), .Y(n717) );
  AO22X1 U906 ( .A0(n887), .A1(n921), .B0(n885), .B1(n921), .Y(n716) );
  XNOR2X1 U907 ( .A(n724), .B(n723), .Y(n727) );
  AO22X1 U908 ( .A0(n651), .A1(N108), .B0(n883), .B1(res_addr[5]), .Y(n726) );
  AO22X1 U909 ( .A0(n887), .A1(N108), .B0(n885), .B1(N108), .Y(n725) );
  XOR2X1 U910 ( .A(n732), .B(n731), .Y(n735) );
  AO22X1 U911 ( .A0(n651), .A1(N107), .B0(n883), .B1(res_addr[4]), .Y(n734) );
  AO22X1 U912 ( .A0(n887), .A1(N107), .B0(n885), .B1(N107), .Y(n733) );
  AOI21X2 U913 ( .A0(n740), .A1(n739), .B0(n738), .Y(n796) );
  XNOR2X1 U914 ( .A(n797), .B(N114), .Y(n828) );
  XOR2X1 U915 ( .A(n796), .B(n747), .Y(n750) );
  AO22X1 U916 ( .A0(n651), .A1(N114), .B0(n883), .B1(res_addr[11]), .Y(n749)
         );
  AO22X1 U917 ( .A0(n887), .A1(n832), .B0(n885), .B1(n828), .Y(n748) );
  AO22X1 U918 ( .A0(n890), .A1(n922), .B0(n887), .B1(\C73/DATA2_0 ), .Y(n753)
         );
  AO22X1 U919 ( .A0(n651), .A1(\C73/DATA2_0 ), .B0(n883), .B1(res_addr[0]), 
        .Y(n752) );
  NAND3XL U920 ( .A(n759), .B(n910), .C(n911), .Y(n761) );
  NOR4XL U921 ( .A(n761), .B(N113), .C(N111), .D(n760), .Y(n762) );
  XOR2X1 U922 ( .A(n774), .B(n773), .Y(n777) );
  AO22X1 U923 ( .A0(n651), .A1(N112), .B0(n883), .B1(res_addr[9]), .Y(n776) );
  AO22X1 U924 ( .A0(n887), .A1(n822), .B0(n885), .B1(n818), .Y(n775) );
  XOR2X1 U925 ( .A(n787), .B(n786), .Y(n792) );
  AO22X1 U926 ( .A0(n651), .A1(N111), .B0(n883), .B1(res_addr[8]), .Y(n791) );
  AO22X1 U927 ( .A0(n887), .A1(n789), .B0(n885), .B1(n788), .Y(n790) );
  XNOR2X1 U928 ( .A(n847), .B(N115), .Y(n840) );
  ADDHX1 U929 ( .A(N114), .B(n798), .CO(n845), .S(n832) );
  XNOR2X1 U930 ( .A(n870), .B(n802), .Y(n805) );
  AO22X1 U931 ( .A0(n651), .A1(N115), .B0(n883), .B1(res_addr[12]), .Y(n804)
         );
  AO22X1 U932 ( .A0(n887), .A1(n844), .B0(n885), .B1(n840), .Y(n803) );
  MX2X1 U933 ( .A(N111), .B(sti_addr[4]), .S0(n893), .Y(n278) );
  XNOR2X1 U934 ( .A(min[0]), .B(min[1]), .Y(n807) );
  OAI222XL U935 ( .A0(n918), .A1(n808), .B0(n858), .B1(n900), .C0(n856), .C1(
        n807), .Y(n320) );
  OAI21XL U936 ( .A0(n811), .A1(n810), .B0(n809), .Y(n812) );
  OAI21XL U937 ( .A0(n813), .A1(n905), .B0(n812), .Y(n311) );
  AOI22X1 U938 ( .A0(n849), .A1(n344), .B0(n815), .B1(n814), .Y(n816) );
  NAND2X1 U939 ( .A(n819), .B(n818), .Y(n820) );
  OAI211X1 U940 ( .A0(n910), .A1(n851), .B0(n820), .C0(n850), .Y(n821) );
  AO21X1 U941 ( .A0(n855), .A1(n822), .B0(n821), .Y(n305) );
  AOI2BB1X4 U942 ( .A0N(n851), .A1N(n916), .B0(n341), .Y(n824) );
  AO21X1 U943 ( .A0(n855), .A1(n827), .B0(n826), .Y(n306) );
  NAND2X1 U944 ( .A(n849), .B(n828), .Y(n830) );
  AOI2BB1X4 U945 ( .A0N(n851), .A1N(n911), .B0(n341), .Y(n829) );
  AO21X1 U946 ( .A0(n855), .A1(n832), .B0(n831), .Y(n307) );
  OAI31XL U947 ( .A0(n837), .A1(n836), .A2(n835), .B0(n834), .Y(n838) );
  AO21X1 U948 ( .A0(n907), .A1(n839), .B0(n838), .Y(n322) );
  NAND2X1 U949 ( .A(n849), .B(n840), .Y(n842) );
  XOR2X1 U950 ( .A(n846), .B(N116), .Y(n886) );
  XNOR2X1 U951 ( .A(n848), .B(N116), .Y(n884) );
  NAND2X1 U952 ( .A(n849), .B(n884), .Y(n853) );
  AOI2BB1X4 U953 ( .A0N(n851), .A1N(n914), .B0(n341), .Y(n852) );
  AO21X1 U954 ( .A0(n855), .A1(n886), .B0(n854), .Y(n310) );
  AOI2BB2X1 U955 ( .B0(n864), .B1(res_do[0]), .A0N(min[0]), .A1N(n856), .Y(
        n857) );
  OAI21XL U956 ( .A0(n906), .A1(n858), .B0(n857), .Y(n321) );
  AOI2BB2X1 U957 ( .B0(n864), .B1(res_do[5]), .A0N(min[5]), .A1N(n863), .Y(
        n865) );
  AOI21X1 U958 ( .A0(n870), .A1(n869), .B0(n868), .Y(n882) );
  NAND2XL U959 ( .A(n873), .B(N116), .Y(n874) );
  XOR2X1 U960 ( .A(n882), .B(n881), .Y(n891) );
  AO22X1 U961 ( .A0(n651), .A1(N116), .B0(n883), .B1(res_addr[13]), .Y(n889)
         );
  AO22X1 U962 ( .A0(n887), .A1(n886), .B0(n885), .B1(n884), .Y(n888) );
  AOI211X1 U963 ( .A0(n891), .A1(n890), .B0(n889), .C0(n888), .Y(n892) );
endmodule

