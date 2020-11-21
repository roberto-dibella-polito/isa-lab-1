/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Sat Nov 21 22:35:21 2020
/////////////////////////////////////////////////////////////


module filter ( DIN, b0, b1, a1, VIN, RST_n, CLK, DOUT, VOUT );
  input [7:0] DIN;
  input [7:0] b0;
  input [7:0] b1;
  input [7:0] a1;
  output [7:0] DOUT;
  input VIN, RST_n, CLK;
  output VOUT;
  wire   delay1, n30, n31, n32, n33, n34, n35, wb0_tbs_9_, wb0_tbs_14_,
         wb0_tbs_13_, wb0_tbs_12_, wb0_tbs_11_, wb0_tbs_10_, ff_tbs_9_,
         ff_tbs_14_, ff_tbs_13_, ff_tbs_12_, ff_tbs_11_, ff_tbs_10_, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, reg_in_n8,
         reg_in_n7, reg_in_n6, reg_in_n5, reg_in_n4, reg_in_n3, reg_in_n2,
         reg_in_n1, reg_in_n12, reg_in_n24, reg_in_n23, reg_in_n22, reg_in_n21,
         reg_in_n20, reg_in_n19, reg_in_n18, reg_in_n17, reg_in_n16,
         reg_in_n15, reg_in_n14, reg_in_n13, reg_in_n11, reg_in_n10, reg_in_n9,
         reg_filter_n42, reg_filter_n41, reg_filter_n14, reg_filter_n13,
         reg_filter_n12, reg_filter_n11, reg_filter_n9, reg_filter_n8,
         reg_filter_n7, reg_filter_n6, reg_filter_n1, reg_filter_n39,
         reg_filter_n38, reg_filter_n37, reg_filter_n36, reg_filter_n35,
         reg_filter_n32, reg_filter_n31, reg_filter_n30, reg_filter_n27,
         reg_filter_n26, reg_filter_n25, reg_filter_n24, reg_filter_n23,
         reg_filter_n22, reg_filter_n21, reg_filter_n20, reg_filter_n19,
         reg_filter_n10, reg_out_n33, reg_out_n32, reg_out_n8, reg_out_n7,
         reg_out_n6, reg_out_n5, reg_out_n4, reg_out_n3, reg_out_n2,
         reg_out_n1, reg_out_n17, reg_out_n16, reg_out_n15, reg_out_n10,
         reg_out_n9, reg_out_n27, reg_out_n26, reg_out_n25, reg_out_n24,
         reg_out_n23, reg_out_n22, reg_out_n21, reg_out_n14, reg_out_n13,
         reg_out_n12, reg_out_n11, mult_77_n699, mult_77_n697, mult_77_n696,
         mult_77_n695, mult_77_n694, mult_77_n693, mult_77_n692, mult_77_n691,
         mult_77_n690, mult_77_n689, mult_77_n688, mult_77_n687, mult_77_n686,
         mult_77_n685, mult_77_n684, mult_77_n683, mult_77_n682, mult_77_n681,
         mult_77_n680, mult_77_n679, mult_77_n678, mult_77_n677, mult_77_n676,
         mult_77_n675, mult_77_n674, mult_77_n673, mult_77_n672, mult_77_n671,
         mult_77_n670, mult_77_n669, mult_77_n668, mult_77_n667, mult_77_n666,
         mult_77_n665, mult_77_n664, mult_77_n663, mult_77_n662, mult_77_n661,
         mult_77_n660, mult_77_n659, mult_77_n658, mult_77_n657, mult_77_n656,
         mult_77_n655, mult_77_n892, mult_77_n891, mult_77_n890, mult_77_n889,
         mult_77_n888, mult_77_n887, mult_77_n886, mult_77_n885, mult_77_n884,
         mult_77_n883, mult_77_n882, mult_77_n881, mult_77_n880, mult_77_n879,
         mult_77_n878, mult_77_n877, mult_77_n876, mult_77_n875, mult_77_n874,
         mult_77_n873, mult_77_n872, mult_77_n871, mult_77_n870, mult_77_n869,
         mult_77_n868, mult_77_n867, mult_77_n866, mult_77_n865, mult_77_n864,
         mult_77_n863, mult_77_n862, mult_77_n861, mult_77_n860, mult_77_n859,
         mult_77_n858, mult_77_n857, mult_77_n856, mult_77_n855, mult_77_n854,
         mult_77_n853, mult_77_n852, mult_77_n851, mult_77_n850, mult_77_n849,
         mult_77_n848, mult_77_n847, mult_77_n846, mult_77_n845, mult_77_n844,
         mult_77_n843, mult_77_n842, mult_77_n841, mult_77_n840, mult_77_n839,
         mult_77_n838, mult_77_n837, mult_77_n836, mult_77_n835, mult_77_n834,
         mult_77_n833, mult_77_n832, mult_77_n831, mult_77_n830, mult_77_n829,
         mult_77_n828, mult_77_n827, mult_77_n826, mult_77_n825, mult_77_n824,
         mult_77_n823, mult_77_n822, mult_77_n821, mult_77_n820, mult_77_n819,
         mult_77_n818, mult_77_n817, mult_77_n816, mult_77_n815, mult_77_n814,
         mult_77_n813, mult_77_n812, mult_77_n811, mult_77_n810, mult_77_n809,
         mult_77_n808, mult_77_n807, mult_77_n806, mult_77_n805, mult_77_n804,
         mult_77_n803, mult_77_n802, mult_77_n801, mult_77_n800, mult_77_n799,
         mult_77_n798, mult_77_n797, mult_77_n796, mult_77_n795, mult_77_n794,
         mult_77_n793, mult_77_n792, mult_77_n791, mult_77_n790, mult_77_n789,
         mult_77_n788, mult_77_n787, mult_77_n786, mult_77_n785, mult_77_n784,
         mult_77_n783, mult_77_n782, mult_77_n781, mult_77_n780, mult_77_n779,
         mult_77_n778, mult_77_n777, mult_77_n776, mult_77_n775, mult_77_n774,
         mult_77_n773, mult_77_n772, mult_77_n771, mult_77_n770, mult_77_n769,
         mult_77_n768, mult_77_n767, mult_77_n766, mult_77_n765, mult_77_n764,
         mult_77_n763, mult_77_n762, mult_77_n761, mult_77_n760, mult_77_n759,
         mult_77_n758, mult_77_n757, mult_77_n756, mult_77_n755, mult_77_n754,
         mult_77_n753, mult_77_n752, mult_77_n751, mult_77_n750, mult_77_n749,
         mult_77_n748, mult_77_n747, mult_77_n746, mult_77_n745, mult_77_n744,
         mult_77_n743, mult_77_n742, mult_77_n741, mult_77_n740, mult_77_n739,
         mult_77_n738, mult_77_n737, mult_77_n736, mult_77_n735, mult_77_n734,
         mult_77_n733, mult_77_n732, mult_77_n731, mult_77_n730, mult_77_n729,
         mult_77_n728, mult_77_n727, mult_77_n726, mult_77_n725, mult_77_n724,
         mult_77_n723, mult_77_n722, mult_77_n721, mult_77_n720, mult_77_n719,
         mult_77_n718, mult_77_n717, mult_77_n716, mult_77_n715, mult_77_n714,
         mult_77_n713, mult_77_n712, mult_77_n711, mult_77_n710, mult_77_n709,
         mult_77_n708, mult_77_n707, mult_77_n706, mult_77_n705, mult_77_n704,
         mult_77_n703, mult_77_n702, mult_77_n701, mult_77_n700, mult_77_n698,
         mult_80_n332, mult_80_n331, mult_80_n330, mult_80_n329, mult_80_n328,
         mult_80_n327, mult_80_n326, mult_80_n325, mult_80_n324, mult_80_n323,
         mult_80_n322, mult_80_n321, mult_80_n320, mult_80_n319, mult_80_n318,
         mult_80_n317, mult_80_n316, mult_80_n315, mult_80_n314, mult_80_n313,
         mult_80_n312, mult_80_n311, mult_80_n310, mult_80_n309, mult_80_n308,
         mult_80_n283, mult_80_n282, mult_80_n281, mult_80_n280, mult_80_n279,
         mult_80_n278, mult_80_n277, mult_80_n256, mult_80_n255, mult_80_n254,
         mult_80_n253, mult_80_n252, mult_80_n251, mult_80_n250, mult_80_n233,
         mult_80_n232, mult_80_n231, mult_80_n230, mult_80_n220, mult_80_n219,
         mult_80_n218, mult_80_n217, mult_80_n216, mult_80_n215, mult_80_n214,
         mult_80_n213, mult_80_n212, mult_80_n211, mult_80_n210, mult_80_n209,
         mult_80_n208, mult_80_n207, mult_80_n206, mult_80_n205, mult_80_n204,
         mult_80_n203, mult_80_n202, mult_80_n201, mult_80_n200, mult_80_n199,
         mult_80_n198, mult_80_n197, mult_80_n196, mult_80_n195, mult_80_n194,
         mult_80_n193, mult_80_n192, mult_80_n191, mult_80_n190, mult_80_n189,
         mult_80_n188, mult_80_n187, mult_80_n186, mult_80_n185, mult_80_n184,
         mult_80_n183, mult_80_n182, mult_80_n181, mult_80_n180, mult_80_n179,
         mult_80_n178, mult_80_n177, mult_80_n176, mult_80_n175, mult_80_n174,
         mult_80_n173, mult_80_n171, mult_80_n170, mult_80_n169, mult_80_n168,
         mult_80_n167, mult_80_n166, mult_80_n165, mult_80_n164, mult_80_n162,
         mult_80_n161, mult_80_n160, mult_80_n159, mult_80_n158, mult_80_n157,
         mult_80_n156, mult_80_n155, mult_80_n153, mult_80_n152, mult_80_n151,
         mult_80_n150, mult_80_n149, mult_80_n148, mult_80_n147, mult_80_n146,
         mult_80_n145, mult_80_n144, mult_80_n143, mult_80_n142, mult_80_n141,
         mult_80_n139, mult_80_n136, mult_80_n133, mult_80_n130, mult_80_n129,
         mult_80_n128, mult_80_n127, mult_80_n126, mult_80_n125, mult_80_n124,
         mult_80_n123, mult_80_n122, mult_80_n121, mult_80_n120, mult_80_n119,
         mult_80_n118, mult_80_n117, mult_80_n116, mult_80_n115, mult_80_n114,
         mult_80_n113, mult_80_n112, mult_80_n111, mult_80_n110, mult_80_n109,
         mult_80_n108, mult_80_n107, mult_80_n106, mult_80_n105, mult_80_n104,
         mult_80_n103, mult_80_n102, mult_80_n101, mult_80_n99, mult_80_n98,
         mult_80_n97, mult_80_n96, mult_80_n95, mult_80_n94, mult_80_n93,
         mult_80_n92, mult_80_n91, mult_80_n89, mult_80_n88, mult_80_n87,
         mult_80_n86, mult_80_n85, mult_80_n71, mult_80_n70, mult_80_n69,
         mult_80_n68, mult_80_n66, mult_80_n65, mult_80_n64, mult_80_n59,
         mult_80_n58, mult_80_n57, mult_80_n56, mult_80_n55, mult_80_n54,
         mult_80_n53, mult_80_n52, mult_80_n51, mult_80_n50, mult_80_n49,
         mult_80_n48, mult_80_n47, mult_80_n46, mult_80_n45, mult_80_n44,
         mult_80_n43, mult_80_n42, mult_80_n39, mult_80_n38, mult_80_n37,
         mult_80_n34, mult_80_n33, mult_80_n32, mult_80_n31, mult_80_n30,
         mult_80_n25, mult_80_n24, mult_80_n23, mult_80_n22, mult_80_n21,
         mult_80_n20, mult_80_n16, mult_80_n15, mult_80_n14, mult_80_n13,
         mult_80_n12, mult_80_n11, mult_80_n10, mult_80_n9, mult_80_n7,
         mult_80_n6, mult_80_n5, mult_80_n4, mult_80_n3, mult_80_n2,
         add_83_n80, add_83_n79, add_83_n78, add_83_n71, add_83_n70,
         add_83_n69, add_83_n68, add_83_n66, add_83_n63, add_83_n62,
         add_83_n61, add_83_n59, add_83_n58, add_83_n56, add_83_n25,
         add_83_n23, add_83_n22, add_83_n21, add_83_n19, add_83_n18,
         add_83_n17, add_83_n16, add_83_n15, add_83_n14, add_83_n13,
         add_83_n12, add_83_n11, add_83_n10, add_83_n9, add_83_n8, add_83_n1,
         mult_66_n716, mult_66_n637, mult_66_n636, mult_66_n635, mult_66_n634,
         mult_66_n633, mult_66_n632, mult_66_n631, mult_66_n630, mult_66_n629,
         mult_66_n628, mult_66_n627, mult_66_n626, mult_66_n625, mult_66_n624,
         mult_66_n623, mult_66_n622, mult_66_n621, mult_66_n620, mult_66_n619,
         mult_66_n618, mult_66_n617, mult_66_n616, mult_66_n615, mult_66_n614,
         mult_66_n613, mult_66_n612, mult_66_n611, mult_66_n610, mult_66_n609,
         mult_66_n608, mult_66_n607, mult_66_n606, mult_66_n605, mult_66_n604,
         mult_66_n603, mult_66_n602, mult_66_n601, mult_66_n600, mult_66_n599,
         mult_66_n598, mult_66_n835, mult_66_n834, mult_66_n833, mult_66_n832,
         mult_66_n831, mult_66_n830, mult_66_n829, mult_66_n828, mult_66_n827,
         mult_66_n826, mult_66_n825, mult_66_n824, mult_66_n823, mult_66_n822,
         mult_66_n821, mult_66_n820, mult_66_n819, mult_66_n818, mult_66_n817,
         mult_66_n816, mult_66_n815, mult_66_n814, mult_66_n813, mult_66_n812,
         mult_66_n811, mult_66_n810, mult_66_n809, mult_66_n808, mult_66_n807,
         mult_66_n806, mult_66_n805, mult_66_n804, mult_66_n803, mult_66_n802,
         mult_66_n801, mult_66_n800, mult_66_n799, mult_66_n798, mult_66_n797,
         mult_66_n796, mult_66_n795, mult_66_n794, mult_66_n793, mult_66_n792,
         mult_66_n791, mult_66_n790, mult_66_n789, mult_66_n788, mult_66_n787,
         mult_66_n786, mult_66_n785, mult_66_n784, mult_66_n783, mult_66_n782,
         mult_66_n781, mult_66_n780, mult_66_n779, mult_66_n778, mult_66_n777,
         mult_66_n776, mult_66_n775, mult_66_n774, mult_66_n773, mult_66_n772,
         mult_66_n771, mult_66_n770, mult_66_n769, mult_66_n768, mult_66_n767,
         mult_66_n766, mult_66_n765, mult_66_n764, mult_66_n763, mult_66_n762,
         mult_66_n761, mult_66_n760, mult_66_n759, mult_66_n758, mult_66_n757,
         mult_66_n756, mult_66_n755, mult_66_n754, mult_66_n753, mult_66_n752,
         mult_66_n751, mult_66_n750, mult_66_n749, mult_66_n748, mult_66_n747,
         mult_66_n746, mult_66_n745, mult_66_n744, mult_66_n743, mult_66_n742,
         mult_66_n741, mult_66_n740, mult_66_n739, mult_66_n738, mult_66_n737,
         mult_66_n736, mult_66_n735, mult_66_n734, mult_66_n733, mult_66_n732,
         mult_66_n731, mult_66_n730, mult_66_n729, mult_66_n728, mult_66_n727,
         mult_66_n726, mult_66_n725, mult_66_n724, mult_66_n723, mult_66_n722,
         mult_66_n721, mult_66_n720, mult_66_n719, mult_66_n718, mult_66_n717,
         mult_66_n715, mult_66_n714, mult_66_n713, mult_66_n712, mult_66_n711,
         mult_66_n710, mult_66_n709, mult_66_n708, mult_66_n707, mult_66_n706,
         mult_66_n705, mult_66_n704, mult_66_n703, mult_66_n702, mult_66_n701,
         mult_66_n700, mult_66_n699, mult_66_n698, mult_66_n697, mult_66_n696,
         mult_66_n695, mult_66_n694, mult_66_n693, mult_66_n692, mult_66_n691,
         mult_66_n690, mult_66_n689, mult_66_n688, mult_66_n687, mult_66_n686,
         mult_66_n685, mult_66_n684, mult_66_n683, mult_66_n682, mult_66_n681,
         mult_66_n680, mult_66_n679, mult_66_n678, mult_66_n677, mult_66_n676,
         mult_66_n675, mult_66_n674, mult_66_n673, mult_66_n672, mult_66_n671,
         mult_66_n670, mult_66_n669, mult_66_n668, mult_66_n667, mult_66_n666,
         mult_66_n665, mult_66_n664, mult_66_n663, mult_66_n662, mult_66_n661,
         mult_66_n660, mult_66_n659, mult_66_n658, mult_66_n657, mult_66_n656,
         mult_66_n655, mult_66_n654, mult_66_n653, mult_66_n652, mult_66_n651,
         mult_66_n650, mult_66_n649, mult_66_n648, mult_66_n647, mult_66_n646,
         mult_66_n645, mult_66_n644, mult_66_n643, mult_66_n642, mult_66_n641,
         mult_66_n640, mult_66_n639, mult_66_n638;
  wire   [7:0] x;
  wire   [8:0] w;
  wire   [8:0] w_out;
  wire   [15:9] fb_tbs;
  wire   [5:0] y_tbs;

  XOR2_X1 U131 ( .A(n230), .B(n231), .Z(w[8]) );
  XOR2_X1 U132 ( .A(n235), .B(n236), .Z(w[6]) );
  XOR2_X1 U133 ( .A(n239), .B(n240), .Z(n35) );
  XOR2_X1 U134 ( .A(n246), .B(n247), .Z(n34) );
  OAI33_X1 U135 ( .A1(n259), .A2(n262), .A3(n272), .B1(n273), .B2(n244), .B3(
        n270), .ZN(n260) );
  XOR2_X1 U136 ( .A(n263), .B(n264), .Z(n30) );
  XOR2_X1 U137 ( .A(x[2]), .B(fb_tbs[11]), .Z(n264) );
  INV_X1 U138 ( .A(fb_tbs[13]), .ZN(n271) );
  INV_X1 U139 ( .A(n262), .ZN(n273) );
  NOR2_X1 U140 ( .A1(n248), .A2(n249), .ZN(n262) );
  INV_X1 U141 ( .A(fb_tbs[15]), .ZN(n266) );
  INV_X1 U142 ( .A(n241), .ZN(n268) );
  INV_X1 U143 ( .A(n258), .ZN(n275) );
  INV_X1 U144 ( .A(n250), .ZN(n265) );
  NOR2_X1 U145 ( .A1(n248), .A2(n272), .ZN(n247) );
  OR2_X1 U146 ( .A1(n244), .A2(n249), .ZN(n246) );
  AOI21_X1 U147 ( .B1(n256), .B2(n238), .A(n258), .ZN(n263) );
  INV_X1 U148 ( .A(n245), .ZN(n272) );
  XNOR2_X1 U149 ( .A(n257), .B(n238), .ZN(n32) );
  NAND2_X1 U150 ( .A1(n275), .A2(n256), .ZN(n257) );
  AOI221_X1 U151 ( .B1(n267), .B2(n250), .C1(n237), .C2(n231), .A(n251), .ZN(
        n33) );
  AOI21_X1 U152 ( .B1(n267), .B2(n234), .A(n252), .ZN(n251) );
  AOI21_X1 U153 ( .B1(n265), .B2(n269), .A(n267), .ZN(n252) );
  INV_X1 U154 ( .A(n231), .ZN(n267) );
  AOI221_X1 U155 ( .B1(n275), .B2(n276), .C1(n282), .C2(fb_tbs[11]), .A(n274), 
        .ZN(n255) );
  INV_X1 U156 ( .A(n238), .ZN(n276) );
  INV_X1 U157 ( .A(n256), .ZN(n274) );
  OAI22_X1 U158 ( .A1(fb_tbs[15]), .A2(n278), .B1(n237), .B2(n268), .ZN(n250)
         );
  NOR2_X1 U159 ( .A1(n281), .A2(fb_tbs[12]), .ZN(n248) );
  NOR2_X1 U160 ( .A1(n279), .A2(fb_tbs[14]), .ZN(n241) );
  NOR2_X1 U161 ( .A1(n283), .A2(fb_tbs[10]), .ZN(n258) );
  NOR2_X1 U162 ( .A1(n282), .A2(fb_tbs[11]), .ZN(n249) );
  NAND2_X1 U163 ( .A1(fb_tbs[12]), .A2(n281), .ZN(n245) );
  NAND2_X1 U164 ( .A1(fb_tbs[10]), .A2(n283), .ZN(n256) );
  OR2_X1 U165 ( .A1(n269), .A2(n237), .ZN(n234) );
  AOI211_X1 U166 ( .C1(n272), .C2(n259), .A(n260), .B(n261), .ZN(n31) );
  AND3_X1 U167 ( .A1(n244), .A2(n245), .A3(n270), .ZN(n261) );
  INV_X1 U168 ( .A(n259), .ZN(n270) );
  OAI21_X1 U169 ( .B1(fb_tbs[9]), .B2(n284), .A(n238), .ZN(w[0]) );
  AOI21_X1 U170 ( .B1(n282), .B2(fb_tbs[11]), .A(n263), .ZN(n244) );
  XNOR2_X1 U171 ( .A(n277), .B(fb_tbs[15]), .ZN(n231) );
  NAND2_X1 U172 ( .A1(fb_tbs[9]), .A2(n284), .ZN(n238) );
  AOI22_X1 U173 ( .A1(x[7]), .A2(n232), .B1(n233), .B2(n266), .ZN(n230) );
  OAI21_X1 U174 ( .B1(n268), .B2(n278), .A(n234), .ZN(n232) );
  NAND4_X1 U175 ( .A1(n234), .A2(n268), .A3(n278), .A4(n277), .ZN(n233) );
  NOR2_X1 U176 ( .A1(n266), .A2(x[6]), .ZN(n237) );
  INV_X1 U177 ( .A(n253), .ZN(n269) );
  AOI222_X1 U178 ( .A1(n280), .A2(fb_tbs[13]), .B1(n243), .B2(n254), .C1(n279), 
        .C2(fb_tbs[14]), .ZN(n253) );
  INV_X1 U179 ( .A(x[4]), .ZN(n280) );
  OAI21_X1 U180 ( .B1(n273), .B2(n255), .A(n245), .ZN(n254) );
  NAND2_X1 U181 ( .A1(x[4]), .A2(n271), .ZN(n243) );
  AOI21_X1 U182 ( .B1(x[6]), .B2(n266), .A(n237), .ZN(n236) );
  NAND2_X1 U183 ( .A1(n268), .A2(n269), .ZN(n235) );
  NAND2_X1 U184 ( .A1(n242), .A2(n243), .ZN(n239) );
  AOI21_X1 U185 ( .B1(fb_tbs[14]), .B2(n279), .A(n241), .ZN(n240) );
  OAI221_X1 U186 ( .B1(n244), .B2(n273), .C1(x[4]), .C2(n271), .A(n245), .ZN(
        n242) );
  XNOR2_X1 U187 ( .A(n271), .B(x[4]), .ZN(n259) );
  INV_X1 U188 ( .A(x[6]), .ZN(n278) );
  INV_X1 U189 ( .A(x[5]), .ZN(n279) );
  INV_X1 U190 ( .A(x[2]), .ZN(n282) );
  INV_X1 U191 ( .A(x[7]), .ZN(n277) );
  INV_X1 U192 ( .A(x[0]), .ZN(n284) );
  INV_X1 U193 ( .A(x[1]), .ZN(n283) );
  INV_X1 U194 ( .A(x[3]), .ZN(n281) );
  NAND2_X1 reg_in_U17 ( .A1(VIN), .A2(DIN[7]), .ZN(reg_in_n1) );
  OAI21_X1 reg_in_U16 ( .B1(reg_in_n16), .B2(VIN), .A(reg_in_n1), .ZN(
        reg_in_n24) );
  NAND2_X1 reg_in_U15 ( .A1(DIN[6]), .A2(VIN), .ZN(reg_in_n2) );
  OAI21_X1 reg_in_U14 ( .B1(reg_in_n15), .B2(VIN), .A(reg_in_n2), .ZN(
        reg_in_n23) );
  NAND2_X1 reg_in_U13 ( .A1(DIN[5]), .A2(VIN), .ZN(reg_in_n3) );
  OAI21_X1 reg_in_U12 ( .B1(reg_in_n14), .B2(VIN), .A(reg_in_n3), .ZN(
        reg_in_n22) );
  NAND2_X1 reg_in_U11 ( .A1(DIN[4]), .A2(VIN), .ZN(reg_in_n4) );
  OAI21_X1 reg_in_U10 ( .B1(reg_in_n13), .B2(VIN), .A(reg_in_n4), .ZN(
        reg_in_n21) );
  NAND2_X1 reg_in_U9 ( .A1(DIN[3]), .A2(VIN), .ZN(reg_in_n5) );
  OAI21_X1 reg_in_U8 ( .B1(reg_in_n12), .B2(VIN), .A(reg_in_n5), .ZN(
        reg_in_n20) );
  NAND2_X1 reg_in_U7 ( .A1(DIN[2]), .A2(VIN), .ZN(reg_in_n6) );
  OAI21_X1 reg_in_U6 ( .B1(reg_in_n11), .B2(VIN), .A(reg_in_n6), .ZN(
        reg_in_n19) );
  NAND2_X1 reg_in_U5 ( .A1(DIN[1]), .A2(VIN), .ZN(reg_in_n7) );
  OAI21_X1 reg_in_U4 ( .B1(reg_in_n10), .B2(VIN), .A(reg_in_n7), .ZN(
        reg_in_n18) );
  NAND2_X1 reg_in_U3 ( .A1(DIN[0]), .A2(VIN), .ZN(reg_in_n8) );
  OAI21_X1 reg_in_U2 ( .B1(reg_in_n9), .B2(VIN), .A(reg_in_n8), .ZN(reg_in_n17) );
  DFFR_X1 reg_in_Q_reg_0_ ( .D(reg_in_n17), .CK(CLK), .RN(RST_n), .Q(x[0]), 
        .QN(reg_in_n9) );
  DFFR_X1 reg_in_Q_reg_1_ ( .D(reg_in_n18), .CK(CLK), .RN(RST_n), .Q(x[1]), 
        .QN(reg_in_n10) );
  DFFR_X1 reg_in_Q_reg_2_ ( .D(reg_in_n19), .CK(CLK), .RN(RST_n), .Q(x[2]), 
        .QN(reg_in_n11) );
  DFFR_X1 reg_in_Q_reg_3_ ( .D(reg_in_n20), .CK(CLK), .RN(RST_n), .Q(x[3]), 
        .QN(reg_in_n12) );
  DFFR_X1 reg_in_Q_reg_4_ ( .D(reg_in_n21), .CK(CLK), .RN(RST_n), .Q(x[4]), 
        .QN(reg_in_n13) );
  DFFR_X1 reg_in_Q_reg_5_ ( .D(reg_in_n22), .CK(CLK), .RN(RST_n), .Q(x[5]), 
        .QN(reg_in_n14) );
  DFFR_X1 reg_in_Q_reg_6_ ( .D(reg_in_n23), .CK(CLK), .RN(RST_n), .Q(x[6]), 
        .QN(reg_in_n15) );
  DFFR_X1 reg_in_Q_reg_7_ ( .D(reg_in_n24), .CK(CLK), .RN(RST_n), .Q(x[7]), 
        .QN(reg_in_n16) );
  BUF_X1 reg_filter_U21 ( .A(delay1), .Z(reg_filter_n42) );
  BUF_X1 reg_filter_U20 ( .A(delay1), .Z(reg_filter_n41) );
  NAND2_X1 reg_filter_U19 ( .A1(n35), .A2(reg_filter_n41), .ZN(reg_filter_n8)
         );
  OAI21_X1 reg_filter_U18 ( .B1(reg_filter_n31), .B2(reg_filter_n41), .A(
        reg_filter_n8), .ZN(reg_filter_n24) );
  NAND2_X1 reg_filter_U17 ( .A1(n31), .A2(reg_filter_n41), .ZN(reg_filter_n9)
         );
  OAI21_X1 reg_filter_U16 ( .B1(reg_filter_n30), .B2(reg_filter_n41), .A(
        reg_filter_n9), .ZN(reg_filter_n23) );
  NAND2_X1 reg_filter_U15 ( .A1(n32), .A2(reg_filter_n41), .ZN(reg_filter_n13)
         );
  OAI21_X1 reg_filter_U14 ( .B1(reg_filter_n38), .B2(reg_filter_n41), .A(
        reg_filter_n13), .ZN(reg_filter_n20) );
  NAND2_X1 reg_filter_U13 ( .A1(n30), .A2(reg_filter_n41), .ZN(reg_filter_n12)
         );
  OAI21_X1 reg_filter_U12 ( .B1(reg_filter_n39), .B2(reg_filter_n41), .A(
        reg_filter_n12), .ZN(reg_filter_n21) );
  NAND2_X1 reg_filter_U11 ( .A1(n34), .A2(reg_filter_n41), .ZN(reg_filter_n11)
         );
  OAI21_X1 reg_filter_U10 ( .B1(reg_filter_n37), .B2(reg_filter_n42), .A(
        reg_filter_n11), .ZN(reg_filter_n22) );
  NAND2_X1 reg_filter_U9 ( .A1(w[0]), .A2(reg_filter_n41), .ZN(reg_filter_n14)
         );
  OAI21_X1 reg_filter_U8 ( .B1(reg_filter_n10), .B2(reg_filter_n42), .A(
        reg_filter_n14), .ZN(reg_filter_n19) );
  NAND2_X1 reg_filter_U7 ( .A1(w[6]), .A2(reg_filter_n41), .ZN(reg_filter_n7)
         );
  OAI21_X1 reg_filter_U6 ( .B1(reg_filter_n42), .B2(reg_filter_n35), .A(
        reg_filter_n7), .ZN(reg_filter_n25) );
  NAND2_X1 reg_filter_U5 ( .A1(reg_filter_n42), .A2(w[8]), .ZN(reg_filter_n1)
         );
  OAI21_X1 reg_filter_U4 ( .B1(reg_filter_n42), .B2(reg_filter_n36), .A(
        reg_filter_n1), .ZN(reg_filter_n27) );
  NAND2_X1 reg_filter_U3 ( .A1(n33), .A2(reg_filter_n41), .ZN(reg_filter_n6)
         );
  OAI21_X1 reg_filter_U2 ( .B1(reg_filter_n32), .B2(reg_filter_n42), .A(
        reg_filter_n6), .ZN(reg_filter_n26) );
  DFFR_X1 reg_filter_Q_reg_0_ ( .D(reg_filter_n19), .CK(CLK), .RN(RST_n), .Q(
        w_out[0]), .QN(reg_filter_n10) );
  DFFR_X1 reg_filter_Q_reg_2_ ( .D(reg_filter_n21), .CK(CLK), .RN(RST_n), .Q(
        w_out[2]), .QN(reg_filter_n39) );
  DFFR_X1 reg_filter_Q_reg_1_ ( .D(reg_filter_n20), .CK(CLK), .RN(RST_n), .Q(
        w_out[1]), .QN(reg_filter_n38) );
  DFFR_X1 reg_filter_Q_reg_3_ ( .D(reg_filter_n22), .CK(CLK), .RN(RST_n), .Q(
        w_out[3]), .QN(reg_filter_n37) );
  DFFR_X1 reg_filter_Q_reg_8_ ( .D(reg_filter_n27), .CK(CLK), .RN(RST_n), .Q(
        w_out[8]), .QN(reg_filter_n36) );
  DFFR_X1 reg_filter_Q_reg_6_ ( .D(reg_filter_n25), .CK(CLK), .RN(RST_n), .Q(
        w_out[6]), .QN(reg_filter_n35) );
  DFFR_X1 reg_filter_Q_reg_4_ ( .D(reg_filter_n23), .CK(CLK), .RN(RST_n), .Q(
        w_out[4]), .QN(reg_filter_n30) );
  DFFR_X1 reg_filter_Q_reg_5_ ( .D(reg_filter_n24), .CK(CLK), .RN(RST_n), .Q(
        w_out[5]), .QN(reg_filter_n31) );
  DFFR_X1 reg_filter_Q_reg_7_ ( .D(reg_filter_n26), .CK(CLK), .RN(RST_n), .Q(
        w_out[7]), .QN(reg_filter_n32) );
  NAND2_X1 reg_out_U19 ( .A1(1'b0), .A2(reg_out_n32), .ZN(reg_out_n2) );
  OAI21_X1 reg_out_U18 ( .B1(reg_out_n27), .B2(reg_out_n32), .A(reg_out_n2), 
        .ZN(reg_out_n23) );
  NAND2_X1 reg_out_U17 ( .A1(reg_out_n33), .A2(1'b0), .ZN(reg_out_n1) );
  OAI21_X1 reg_out_U16 ( .B1(reg_out_n9), .B2(reg_out_n32), .A(reg_out_n1), 
        .ZN(reg_out_n24) );
  BUF_X1 reg_out_U15 ( .A(delay1), .Z(reg_out_n33) );
  BUF_X1 reg_out_U14 ( .A(delay1), .Z(reg_out_n32) );
  NAND2_X1 reg_out_U13 ( .A1(y_tbs[0]), .A2(reg_out_n32), .ZN(reg_out_n3) );
  OAI21_X1 reg_out_U12 ( .B1(reg_out_n10), .B2(reg_out_n32), .A(reg_out_n3), 
        .ZN(reg_out_n22) );
  NAND2_X1 reg_out_U11 ( .A1(y_tbs[2]), .A2(reg_out_n32), .ZN(reg_out_n5) );
  OAI21_X1 reg_out_U10 ( .B1(reg_out_n16), .B2(reg_out_n33), .A(reg_out_n5), 
        .ZN(reg_out_n14) );
  NAND2_X1 reg_out_U9 ( .A1(y_tbs[1]), .A2(reg_out_n32), .ZN(reg_out_n4) );
  OAI21_X1 reg_out_U8 ( .B1(reg_out_n15), .B2(reg_out_n32), .A(reg_out_n4), 
        .ZN(reg_out_n21) );
  NAND2_X1 reg_out_U7 ( .A1(y_tbs[3]), .A2(reg_out_n32), .ZN(reg_out_n6) );
  OAI21_X1 reg_out_U6 ( .B1(reg_out_n17), .B2(reg_out_n33), .A(reg_out_n6), 
        .ZN(reg_out_n13) );
  NAND2_X1 reg_out_U5 ( .A1(y_tbs[4]), .A2(reg_out_n32), .ZN(reg_out_n7) );
  OAI21_X1 reg_out_U4 ( .B1(reg_out_n26), .B2(reg_out_n33), .A(reg_out_n7), 
        .ZN(reg_out_n12) );
  NAND2_X1 reg_out_U3 ( .A1(y_tbs[5]), .A2(reg_out_n32), .ZN(reg_out_n8) );
  OAI21_X1 reg_out_U2 ( .B1(reg_out_n25), .B2(reg_out_n32), .A(reg_out_n8), 
        .ZN(reg_out_n11) );
  DFFR_X1 reg_out_Q_reg_7_ ( .D(reg_out_n11), .CK(CLK), .RN(RST_n), .Q(DOUT[7]), .QN(reg_out_n25) );
  DFFR_X1 reg_out_Q_reg_3_ ( .D(reg_out_n21), .CK(CLK), .RN(RST_n), .Q(DOUT[3]), .QN(reg_out_n15) );
  DFFR_X1 reg_out_Q_reg_6_ ( .D(reg_out_n12), .CK(CLK), .RN(RST_n), .Q(DOUT[6]), .QN(reg_out_n26) );
  DFFR_X1 reg_out_Q_reg_5_ ( .D(reg_out_n13), .CK(CLK), .RN(RST_n), .Q(DOUT[5]), .QN(reg_out_n17) );
  DFFR_X1 reg_out_Q_reg_4_ ( .D(reg_out_n14), .CK(CLK), .RN(RST_n), .Q(DOUT[4]), .QN(reg_out_n16) );
  DFFR_X1 reg_out_Q_reg_0_ ( .D(reg_out_n24), .CK(CLK), .RN(RST_n), .Q(DOUT[0]), .QN(reg_out_n9) );
  DFFR_X1 reg_out_Q_reg_1_ ( .D(reg_out_n23), .CK(CLK), .RN(RST_n), .Q(DOUT[1]), .QN(reg_out_n27) );
  DFFR_X1 reg_out_Q_reg_2_ ( .D(reg_out_n22), .CK(CLK), .RN(RST_n), .Q(DOUT[2]), .QN(reg_out_n10) );
  DFFR_X1 f_d1_Q_reg ( .D(VIN), .CK(CLK), .RN(RST_n), .Q(delay1) );
  DFFR_X1 f_d2_Q_reg ( .D(delay1), .CK(CLK), .RN(RST_n), .Q(VOUT) );
  XOR2_X2 mult_77_U497 ( .A(a1[2]), .B(mult_77_n697), .Z(mult_77_n764) );
  XNOR2_X1 mult_77_U496 ( .A(w_out[8]), .B(a1[7]), .ZN(mult_77_n704) );
  INV_X1 mult_77_U467 ( .A(a1[7]), .ZN(mult_77_n694) );
  XNOR2_X1 mult_77_U466 ( .A(w_out[8]), .B(a1[1]), .ZN(mult_77_n891) );
  XNOR2_X1 mult_77_U465 ( .A(w_out[7]), .B(a1[1]), .ZN(mult_77_n879) );
  XNOR2_X1 mult_77_U464 ( .A(w_out[6]), .B(a1[1]), .ZN(mult_77_n847) );
  XNOR2_X1 mult_77_U463 ( .A(w_out[5]), .B(a1[1]), .ZN(mult_77_n848) );
  XNOR2_X1 mult_77_U462 ( .A(w_out[4]), .B(a1[1]), .ZN(mult_77_n839) );
  XNOR2_X1 mult_77_U461 ( .A(w_out[3]), .B(a1[1]), .ZN(mult_77_n827) );
  XNOR2_X1 mult_77_U460 ( .A(w_out[2]), .B(a1[1]), .ZN(mult_77_n825) );
  INV_X1 mult_77_U459 ( .A(w_out[0]), .ZN(mult_77_n693) );
  XNOR2_X1 mult_77_U458 ( .A(w_out[1]), .B(a1[7]), .ZN(mult_77_n873) );
  XNOR2_X1 mult_77_U457 ( .A(w_out[7]), .B(a1[7]), .ZN(mult_77_n718) );
  XNOR2_X1 mult_77_U456 ( .A(w_out[6]), .B(a1[7]), .ZN(mult_77_n727) );
  XNOR2_X1 mult_77_U455 ( .A(w_out[5]), .B(a1[7]), .ZN(mult_77_n747) );
  XNOR2_X1 mult_77_U454 ( .A(w_out[7]), .B(a1[3]), .ZN(mult_77_n885) );
  XNOR2_X1 mult_77_U453 ( .A(w_out[6]), .B(a1[3]), .ZN(mult_77_n878) );
  XNOR2_X1 mult_77_U452 ( .A(w_out[3]), .B(a1[7]), .ZN(mult_77_n883) );
  XNOR2_X1 mult_77_U451 ( .A(w_out[4]), .B(a1[7]), .ZN(mult_77_n768) );
  XNOR2_X1 mult_77_U450 ( .A(w_out[2]), .B(a1[7]), .ZN(mult_77_n880) );
  XNOR2_X1 mult_77_U449 ( .A(w_out[5]), .B(a1[3]), .ZN(mult_77_n877) );
  XNOR2_X1 mult_77_U448 ( .A(w_out[8]), .B(a1[3]), .ZN(mult_77_n765) );
  XNOR2_X1 mult_77_U447 ( .A(w_out[1]), .B(a1[3]), .ZN(mult_77_n833) );
  XNOR2_X1 mult_77_U446 ( .A(w_out[2]), .B(a1[3]), .ZN(mult_77_n838) );
  XNOR2_X1 mult_77_U445 ( .A(w_out[4]), .B(a1[3]), .ZN(mult_77_n849) );
  XNOR2_X1 mult_77_U444 ( .A(w_out[3]), .B(a1[3]), .ZN(mult_77_n850) );
  OR2_X1 mult_77_U443 ( .A1(w_out[0]), .A2(mult_77_n730), .ZN(mult_77_n856) );
  AOI21_X1 mult_77_U442 ( .B1(mult_77_n729), .B2(mult_77_n856), .A(
        mult_77_n695), .ZN(mult_77_n854) );
  NAND2_X1 mult_77_U441 ( .A1(a1[1]), .A2(mult_77_n699), .ZN(mult_77_n828) );
  OR2_X1 mult_77_U440 ( .A1(w_out[0]), .A2(mult_77_n719), .ZN(mult_77_n871) );
  AOI21_X1 mult_77_U439 ( .B1(mult_77_n706), .B2(mult_77_n871), .A(
        mult_77_n694), .ZN(mult_77_n801) );
  INV_X1 mult_77_U438 ( .A(a1[5]), .ZN(mult_77_n695) );
  XNOR2_X1 mult_77_U437 ( .A(w_out[0]), .B(a1[5]), .ZN(mult_77_n853) );
  OAI22_X1 mult_77_U436 ( .A1(mult_77_n730), .A2(mult_77_n845), .B1(
        mult_77_n853), .B2(mult_77_n729), .ZN(mult_77_n852) );
  INV_X1 mult_77_U435 ( .A(a1[0]), .ZN(mult_77_n699) );
  XNOR2_X1 mult_77_U434 ( .A(w_out[0]), .B(a1[7]), .ZN(mult_77_n872) );
  OAI22_X1 mult_77_U433 ( .A1(mult_77_n872), .A2(mult_77_n706), .B1(
        mult_77_n719), .B2(mult_77_n873), .ZN(mult_77_n804) );
  XNOR2_X1 mult_77_U432 ( .A(mult_77_n694), .B(a1[6]), .ZN(mult_77_n890) );
  NAND2_X1 mult_77_U431 ( .A1(mult_77_n719), .A2(mult_77_n890), .ZN(
        mult_77_n706) );
  NAND2_X1 mult_77_U430 ( .A1(mult_77_n730), .A2(mult_77_n892), .ZN(
        mult_77_n729) );
  XNOR2_X1 mult_77_U429 ( .A(w_out[0]), .B(a1[3]), .ZN(mult_77_n834) );
  OAI22_X1 mult_77_U428 ( .A1(mult_77_n764), .A2(mult_77_n833), .B1(
        mult_77_n834), .B2(mult_77_n763), .ZN(mult_77_n832) );
  INV_X1 mult_77_U427 ( .A(mult_77_n832), .ZN(mult_77_n691) );
  INV_X1 mult_77_U426 ( .A(a1[1]), .ZN(mult_77_n697) );
  AOI22_X1 mult_77_U425 ( .A1(mult_77_n825), .A2(a1[0]), .B1(mult_77_n764), 
        .B2(w_out[0]), .ZN(mult_77_n824) );
  OAI22_X1 mult_77_U424 ( .A1(w_out[1]), .A2(mult_77_n697), .B1(mult_77_n699), 
        .B2(mult_77_n693), .ZN(mult_77_n823) );
  OAI211_X1 mult_77_U423 ( .C1(mult_77_n821), .C2(mult_77_n820), .A(
        mult_77_n823), .B(mult_77_n824), .ZN(mult_77_n822) );
  INV_X1 mult_77_U422 ( .A(mult_77_n822), .ZN(mult_77_n688) );
  INV_X1 mult_77_U421 ( .A(mult_77_n763), .ZN(mult_77_n696) );
  NOR2_X1 mult_77_U420 ( .A1(w_out[0]), .A2(mult_77_n764), .ZN(mult_77_n835)
         );
  OAI21_X1 mult_77_U419 ( .B1(mult_77_n835), .B2(mult_77_n696), .A(a1[3]), 
        .ZN(mult_77_n826) );
  NAND2_X1 mult_77_U418 ( .A1(mult_77_n764), .A2(mult_77_n887), .ZN(
        mult_77_n763) );
  AOI21_X1 mult_77_U417 ( .B1(mult_77_n729), .B2(mult_77_n730), .A(
        mult_77_n731), .ZN(mult_77_n728) );
  INV_X1 mult_77_U416 ( .A(mult_77_n728), .ZN(mult_77_n686) );
  INV_X1 mult_77_U415 ( .A(mult_77_n852), .ZN(mult_77_n692) );
  NAND2_X1 mult_77_U414 ( .A1(mult_77_n854), .A2(mult_77_n855), .ZN(
        mult_77_n792) );
  INV_X1 mult_77_U413 ( .A(mult_77_n840), .ZN(mult_77_n679) );
  AOI21_X1 mult_77_U412 ( .B1(mult_77_n852), .B2(mult_77_n679), .A(
        mult_77_n842), .ZN(mult_77_n851) );
  NOR2_X1 mult_77_U411 ( .A1(mult_77_n826), .A2(mult_77_n691), .ZN(
        mult_77_n817) );
  NOR2_X1 mult_77_U410 ( .A1(mult_77_n693), .A2(mult_77_n730), .ZN(
        mult_77_n831) );
  NOR2_X1 mult_77_U409 ( .A1(mult_77_n693), .A2(mult_77_n719), .ZN(
        mult_77_n807) );
  OAI22_X1 mult_77_U408 ( .A1(mult_77_n880), .A2(mult_77_n706), .B1(
        mult_77_n719), .B2(mult_77_n883), .ZN(mult_77_n889) );
  INV_X1 mult_77_U407 ( .A(mult_77_n889), .ZN(mult_77_n687) );
  OAI22_X1 mult_77_U406 ( .A1(mult_77_n879), .A2(mult_77_n699), .B1(
        mult_77_n847), .B2(mult_77_n828), .ZN(mult_77_n805) );
  AOI21_X1 mult_77_U405 ( .B1(mult_77_n763), .B2(mult_77_n764), .A(
        mult_77_n765), .ZN(mult_77_n751) );
  OAI21_X1 mult_77_U404 ( .B1(mult_77_n801), .B2(mult_77_n804), .A(
        mult_77_n803), .ZN(mult_77_n869) );
  INV_X1 mult_77_U403 ( .A(mult_77_n869), .ZN(mult_77_n689) );
  AOI21_X1 mult_77_U402 ( .B1(mult_77_n804), .B2(mult_77_n801), .A(
        mult_77_n689), .ZN(mult_77_n798) );
  OAI22_X1 mult_77_U401 ( .A1(mult_77_n849), .A2(mult_77_n763), .B1(
        mult_77_n764), .B2(mult_77_n877), .ZN(mult_77_n806) );
  OAI21_X1 mult_77_U400 ( .B1(mult_77_n854), .B2(mult_77_n855), .A(
        mult_77_n792), .ZN(mult_77_n840) );
  OAI22_X1 mult_77_U399 ( .A1(mult_77_n844), .A2(mult_77_n729), .B1(
        mult_77_n730), .B2(mult_77_n870), .ZN(mult_77_n803) );
  OAI22_X1 mult_77_U398 ( .A1(mult_77_n870), .A2(mult_77_n729), .B1(
        mult_77_n730), .B2(mult_77_n886), .ZN(mult_77_n875) );
  OAI22_X1 mult_77_U397 ( .A1(mult_77_n891), .A2(mult_77_n699), .B1(
        mult_77_n879), .B2(mult_77_n828), .ZN(mult_77_n874) );
  OAI22_X1 mult_77_U396 ( .A1(mult_77_n873), .A2(mult_77_n706), .B1(
        mult_77_n719), .B2(mult_77_n880), .ZN(mult_77_n861) );
  AOI21_X1 mult_77_U395 ( .B1(mult_77_n699), .B2(mult_77_n697), .A(
        mult_77_n891), .ZN(mult_77_n866) );
  OAI22_X1 mult_77_U394 ( .A1(mult_77_n730), .A2(mult_77_n767), .B1(
        mult_77_n884), .B2(mult_77_n729), .ZN(mult_77_n762) );
  OAI22_X1 mult_77_U393 ( .A1(mult_77_n764), .A2(mult_77_n849), .B1(
        mult_77_n850), .B2(mult_77_n763), .ZN(mult_77_n810) );
  OAI22_X1 mult_77_U392 ( .A1(mult_77_n827), .A2(mult_77_n699), .B1(
        mult_77_n825), .B2(mult_77_n828), .ZN(mult_77_n820) );
  OAI22_X1 mult_77_U391 ( .A1(mult_77_n885), .A2(mult_77_n763), .B1(
        mult_77_n764), .B2(mult_77_n765), .ZN(mult_77_n745) );
  OAI22_X1 mult_77_U390 ( .A1(mult_77_n886), .A2(mult_77_n729), .B1(
        mult_77_n730), .B2(mult_77_n884), .ZN(mult_77_n862) );
  OAI22_X1 mult_77_U389 ( .A1(mult_77_n839), .A2(mult_77_n699), .B1(
        mult_77_n827), .B2(mult_77_n828), .ZN(mult_77_n837) );
  OAI22_X1 mult_77_U388 ( .A1(mult_77_n848), .A2(mult_77_n699), .B1(
        mult_77_n839), .B2(mult_77_n828), .ZN(mult_77_n855) );
  OAI22_X1 mult_77_U387 ( .A1(mult_77_n878), .A2(mult_77_n763), .B1(
        mult_77_n764), .B2(mult_77_n885), .ZN(mult_77_n863) );
  OAI22_X1 mult_77_U386 ( .A1(mult_77_n747), .A2(mult_77_n706), .B1(
        mult_77_n719), .B2(mult_77_n727), .ZN(mult_77_n725) );
  OAI22_X1 mult_77_U385 ( .A1(mult_77_n730), .A2(mult_77_n844), .B1(
        mult_77_n845), .B2(mult_77_n729), .ZN(mult_77_n795) );
  OAI22_X1 mult_77_U384 ( .A1(mult_77_n764), .A2(mult_77_n850), .B1(
        mult_77_n838), .B2(mult_77_n763), .ZN(mult_77_n842) );
  OAI22_X1 mult_77_U383 ( .A1(mult_77_n877), .A2(mult_77_n763), .B1(
        mult_77_n764), .B2(mult_77_n878), .ZN(mult_77_n859) );
  OAI22_X1 mult_77_U382 ( .A1(mult_77_n833), .A2(mult_77_n763), .B1(
        mult_77_n764), .B2(mult_77_n838), .ZN(mult_77_n830) );
  OAI22_X1 mult_77_U381 ( .A1(mult_77_n847), .A2(mult_77_n699), .B1(
        mult_77_n848), .B2(mult_77_n828), .ZN(mult_77_n808) );
  OAI22_X1 mult_77_U380 ( .A1(mult_77_n883), .A2(mult_77_n706), .B1(
        mult_77_n719), .B2(mult_77_n768), .ZN(mult_77_n760) );
  OAI22_X1 mult_77_U379 ( .A1(mult_77_n727), .A2(mult_77_n706), .B1(
        mult_77_n719), .B2(mult_77_n718), .ZN(mult_77_n715) );
  OAI22_X1 mult_77_U378 ( .A1(mult_77_n730), .A2(mult_77_n746), .B1(
        mult_77_n767), .B2(mult_77_n729), .ZN(mult_77_n742) );
  OAI22_X1 mult_77_U377 ( .A1(mult_77_n768), .A2(mult_77_n706), .B1(
        mult_77_n719), .B2(mult_77_n747), .ZN(mult_77_n743) );
  OAI22_X1 mult_77_U376 ( .A1(mult_77_n718), .A2(mult_77_n706), .B1(
        mult_77_n719), .B2(mult_77_n704), .ZN(mult_77_n705) );
  OAI22_X1 mult_77_U375 ( .A1(mult_77_n730), .A2(mult_77_n731), .B1(
        mult_77_n746), .B2(mult_77_n729), .ZN(mult_77_n716) );
  NOR2_X1 mult_77_U374 ( .A1(mult_77_n704), .A2(mult_77_n706), .ZN(
        mult_77_n703) );
  OAI21_X1 mult_77_U373 ( .B1(mult_77_n707), .B2(mult_77_n674), .A(
        mult_77_n708), .ZN(mult_77_n701) );
  AOI22_X1 mult_77_U372 ( .A1(mult_77_n703), .A2(mult_77_n675), .B1(
        mult_77_n704), .B2(mult_77_n705), .ZN(mult_77_n702) );
  AOI221_X1 mult_77_U371 ( .B1(mult_77_n818), .B2(mult_77_n817), .C1(
        mult_77_n820), .C2(mult_77_n821), .A(mult_77_n688), .ZN(mult_77_n819)
         );
  INV_X1 mult_77_U370 ( .A(mult_77_n819), .ZN(mult_77_n684) );
  OAI221_X1 mult_77_U369 ( .B1(mult_77_n815), .B2(mult_77_n814), .C1(
        mult_77_n817), .C2(mult_77_n818), .A(mult_77_n684), .ZN(mult_77_n816)
         );
  INV_X1 mult_77_U368 ( .A(mult_77_n816), .ZN(mult_77_n680) );
  OR2_X1 mult_77_U367 ( .A1(mult_77_n705), .A2(mult_77_n714), .ZN(mult_77_n708) );
  INV_X1 mult_77_U366 ( .A(mult_77_n705), .ZN(mult_77_n675) );
  INV_X1 mult_77_U365 ( .A(mult_77_n792), .ZN(mult_77_n678) );
  INV_X1 mult_77_U364 ( .A(mult_77_n837), .ZN(mult_77_n685) );
  AND2_X1 mult_77_U363 ( .A1(mult_77_n805), .A2(mult_77_n806), .ZN(
        mult_77_n858) );
  NAND2_X1 mult_77_U362 ( .A1(mult_77_n714), .A2(mult_77_n705), .ZN(
        mult_77_n709) );
  NAND2_X1 mult_77_U361 ( .A1(mult_77_n875), .A2(mult_77_n874), .ZN(
        mult_77_n865) );
  XNOR2_X1 mult_77_U360 ( .A(mult_77_n866), .B(mult_77_n687), .ZN(mult_77_n864) );
  XNOR2_X1 mult_77_U359 ( .A(mult_77_n864), .B(mult_77_n865), .ZN(mult_77_n777) );
  INV_X1 mult_77_U358 ( .A(mult_77_n745), .ZN(mult_77_n670) );
  AOI21_X1 mult_77_U357 ( .B1(mult_77_n830), .B2(mult_77_n837), .A(
        mult_77_n831), .ZN(mult_77_n836) );
  INV_X1 mult_77_U356 ( .A(mult_77_n830), .ZN(mult_77_n690) );
  AOI21_X1 mult_77_U355 ( .B1(mult_77_n685), .B2(mult_77_n690), .A(
        mult_77_n836), .ZN(mult_77_n815) );
  AOI21_X1 mult_77_U354 ( .B1(mult_77_n760), .B2(mult_77_n670), .A(
        mult_77_n762), .ZN(mult_77_n761) );
  INV_X1 mult_77_U353 ( .A(mult_77_n761), .ZN(mult_77_n669) );
  OAI21_X1 mult_77_U352 ( .B1(mult_77_n670), .B2(mult_77_n760), .A(
        mult_77_n669), .ZN(mult_77_n749) );
  XNOR2_X1 mult_77_U351 ( .A(mult_77_n686), .B(mult_77_n716), .ZN(mult_77_n726) );
  XNOR2_X1 mult_77_U350 ( .A(mult_77_n726), .B(mult_77_n715), .ZN(mult_77_n722) );
  XNOR2_X1 mult_77_U349 ( .A(mult_77_n742), .B(mult_77_n670), .ZN(mult_77_n766) );
  XNOR2_X1 mult_77_U348 ( .A(mult_77_n743), .B(mult_77_n766), .ZN(mult_77_n748) );
  INV_X1 mult_77_U347 ( .A(mult_77_n716), .ZN(mult_77_n676) );
  OAI21_X1 mult_77_U346 ( .B1(mult_77_n676), .B2(mult_77_n672), .A(
        mult_77_n725), .ZN(mult_77_n724) );
  OAI21_X1 mult_77_U345 ( .B1(mult_77_n723), .B2(mult_77_n716), .A(
        mult_77_n724), .ZN(mult_77_n721) );
  XNOR2_X1 mult_77_U344 ( .A(mult_77_n842), .B(mult_77_n692), .ZN(mult_77_n841) );
  XNOR2_X1 mult_77_U343 ( .A(mult_77_n840), .B(mult_77_n841), .ZN(mult_77_n814) );
  AOI21_X1 mult_77_U342 ( .B1(mult_77_n808), .B2(mult_77_n807), .A(
        mult_77_n810), .ZN(mult_77_n809) );
  INV_X1 mult_77_U341 ( .A(mult_77_n809), .ZN(mult_77_n682) );
  OAI21_X1 mult_77_U340 ( .B1(mult_77_n807), .B2(mult_77_n808), .A(
        mult_77_n682), .ZN(mult_77_n799) );
  AOI21_X1 mult_77_U339 ( .B1(mult_77_n749), .B2(mult_77_n748), .A(
        mult_77_n751), .ZN(mult_77_n750) );
  INV_X1 mult_77_U338 ( .A(mult_77_n750), .ZN(mult_77_n668) );
  OAI21_X1 mult_77_U337 ( .B1(mult_77_n748), .B2(mult_77_n749), .A(
        mult_77_n668), .ZN(mult_77_n740) );
  XNOR2_X1 mult_77_U336 ( .A(mult_77_n791), .B(mult_77_n681), .ZN(mult_77_n789) );
  XNOR2_X1 mult_77_U335 ( .A(mult_77_n789), .B(mult_77_n790), .ZN(mult_77_n787) );
  INV_X1 mult_77_U334 ( .A(mult_77_n797), .ZN(mult_77_n661) );
  OAI21_X1 mult_77_U333 ( .B1(mult_77_n661), .B2(mult_77_n663), .A(
        mult_77_n798), .ZN(mult_77_n868) );
  OAI21_X1 mult_77_U332 ( .B1(mult_77_n867), .B2(mult_77_n797), .A(
        mult_77_n868), .ZN(mult_77_n781) );
  OR2_X1 mult_77_U331 ( .A1(mult_77_n686), .A2(mult_77_n715), .ZN(mult_77_n717) );
  AOI22_X1 mult_77_U330 ( .A1(mult_77_n686), .A2(mult_77_n715), .B1(
        mult_77_n716), .B2(mult_77_n717), .ZN(mult_77_n714) );
  AOI21_X1 mult_77_U329 ( .B1(mult_77_n794), .B2(mult_77_n678), .A(
        mult_77_n795), .ZN(mult_77_n793) );
  AOI21_X1 mult_77_U328 ( .B1(mult_77_n792), .B2(mult_77_n683), .A(
        mult_77_n793), .ZN(mult_77_n788) );
  OAI21_X1 mult_77_U327 ( .B1(mult_77_n742), .B2(mult_77_n743), .A(
        mult_77_n745), .ZN(mult_77_n744) );
  INV_X1 mult_77_U326 ( .A(mult_77_n744), .ZN(mult_77_n673) );
  AOI21_X1 mult_77_U325 ( .B1(mult_77_n742), .B2(mult_77_n743), .A(
        mult_77_n673), .ZN(mult_77_n723) );
  NOR2_X1 mult_77_U324 ( .A1(mult_77_n863), .A2(mult_77_n862), .ZN(
        mult_77_n758) );
  AOI21_X1 mult_77_U323 ( .B1(mult_77_n862), .B2(mult_77_n863), .A(
        mult_77_n758), .ZN(mult_77_n776) );
  AOI21_X1 mult_77_U322 ( .B1(mult_77_n791), .B2(mult_77_n681), .A(
        mult_77_n790), .ZN(mult_77_n800) );
  INV_X1 mult_77_U321 ( .A(mult_77_n791), .ZN(mult_77_n665) );
  AOI21_X1 mult_77_U320 ( .B1(mult_77_n799), .B2(mult_77_n665), .A(
        mult_77_n800), .ZN(mult_77_n786) );
  OR2_X1 mult_77_U319 ( .A1(mult_77_n866), .A2(mult_77_n865), .ZN(mult_77_n888) );
  AOI22_X1 mult_77_U318 ( .A1(mult_77_n865), .A2(mult_77_n866), .B1(
        mult_77_n888), .B2(mult_77_n687), .ZN(mult_77_n755) );
  XNOR2_X1 mult_77_U317 ( .A(mult_77_n751), .B(mult_77_n749), .ZN(mult_77_n759) );
  AND2_X1 mult_77_U316 ( .A1(mult_77_n859), .A2(mult_77_n858), .ZN(
        mult_77_n860) );
  OAI22_X1 mult_77_U315 ( .A1(mult_77_n858), .A2(mult_77_n859), .B1(
        mult_77_n860), .B2(mult_77_n861), .ZN(mult_77_n779) );
  XNOR2_X1 mult_77_U314 ( .A(mult_77_n797), .B(mult_77_n798), .ZN(mult_77_n796) );
  XNOR2_X1 mult_77_U313 ( .A(mult_77_n725), .B(mult_77_n716), .ZN(mult_77_n741) );
  XNOR2_X1 mult_77_U312 ( .A(mult_77_n831), .B(mult_77_n685), .ZN(mult_77_n829) );
  XNOR2_X1 mult_77_U311 ( .A(mult_77_n795), .B(mult_77_n678), .ZN(mult_77_n843) );
  AOI21_X1 mult_77_U310 ( .B1(mult_77_n840), .B2(mult_77_n692), .A(
        mult_77_n851), .ZN(mult_77_n811) );
  AOI221_X1 mult_77_U309 ( .B1(mult_77_n814), .B2(mult_77_n815), .C1(
        mult_77_n812), .C2(mult_77_n811), .A(mult_77_n680), .ZN(mult_77_n813)
         );
  INV_X1 mult_77_U308 ( .A(mult_77_n813), .ZN(mult_77_n677) );
  OAI21_X1 mult_77_U307 ( .B1(mult_77_n811), .B2(mult_77_n812), .A(
        mult_77_n677), .ZN(mult_77_n782) );
  INV_X1 mult_77_U306 ( .A(mult_77_n709), .ZN(mult_77_n674) );
  AND2_X1 mult_77_U305 ( .A1(mult_77_n756), .A2(mult_77_n755), .ZN(
        mult_77_n757) );
  INV_X1 mult_77_U304 ( .A(mult_77_n758), .ZN(mult_77_n666) );
  OAI22_X1 mult_77_U303 ( .A1(mult_77_n755), .A2(mult_77_n756), .B1(
        mult_77_n757), .B2(mult_77_n666), .ZN(mult_77_n754) );
  INV_X1 mult_77_U302 ( .A(mult_77_n754), .ZN(mult_77_n658) );
  INV_X1 mult_77_U301 ( .A(mult_77_n723), .ZN(mult_77_n672) );
  AND2_X1 mult_77_U300 ( .A1(mult_77_n722), .A2(mult_77_n721), .ZN(
        mult_77_n712) );
  INV_X1 mult_77_U299 ( .A(mult_77_n794), .ZN(mult_77_n683) );
  AND2_X1 mult_77_U298 ( .A1(mult_77_n658), .A2(mult_77_n753), .ZN(
        mult_77_n737) );
  INV_X1 mult_77_U297 ( .A(mult_77_n867), .ZN(mult_77_n663) );
  INV_X1 mult_77_U296 ( .A(mult_77_n784), .ZN(mult_77_n662) );
  INV_X1 mult_77_U295 ( .A(mult_77_n799), .ZN(mult_77_n681) );
  NAND2_X1 mult_77_U294 ( .A1(mult_77_n739), .A2(mult_77_n740), .ZN(
        mult_77_n734) );
  NAND2_X1 mult_77_U293 ( .A1(mult_77_n780), .A2(mult_77_n781), .ZN(
        mult_77_n700) );
  NOR2_X1 mult_77_U292 ( .A1(mult_77_n740), .A2(mult_77_n739), .ZN(
        mult_77_n732) );
  NOR2_X1 mult_77_U291 ( .A1(mult_77_n753), .A2(mult_77_n658), .ZN(
        mult_77_n738) );
  NOR2_X1 mult_77_U290 ( .A1(mult_77_n721), .A2(mult_77_n722), .ZN(
        mult_77_n713) );
  XNOR2_X1 mult_77_U289 ( .A(mult_77_n776), .B(mult_77_n779), .ZN(mult_77_n857) );
  XNOR2_X1 mult_77_U288 ( .A(mult_77_n777), .B(mult_77_n857), .ZN(mult_77_n780) );
  NOR2_X1 mult_77_U287 ( .A1(mult_77_n781), .A2(mult_77_n780), .ZN(
        mult_77_n773) );
  XNOR2_X1 mult_77_U286 ( .A(mult_77_n755), .B(mult_77_n758), .ZN(mult_77_n881) );
  XNOR2_X1 mult_77_U285 ( .A(mult_77_n881), .B(mult_77_n756), .ZN(mult_77_n770) );
  AND2_X1 mult_77_U284 ( .A1(mult_77_n776), .A2(mult_77_n777), .ZN(
        mult_77_n778) );
  OAI22_X1 mult_77_U283 ( .A1(mult_77_n776), .A2(mult_77_n777), .B1(
        mult_77_n778), .B2(mult_77_n779), .ZN(mult_77_n772) );
  OAI22_X1 mult_77_U282 ( .A1(mult_77_n786), .A2(mult_77_n662), .B1(
        mult_77_n788), .B2(mult_77_n787), .ZN(mult_77_n783) );
  OAI211_X1 mult_77_U281 ( .C1(mult_77_n786), .C2(mult_77_n662), .A(
        mult_77_n787), .B(mult_77_n788), .ZN(mult_77_n785) );
  INV_X1 mult_77_U280 ( .A(mult_77_n786), .ZN(mult_77_n664) );
  OAI221_X1 mult_77_U279 ( .B1(mult_77_n782), .B2(mult_77_n783), .C1(
        mult_77_n784), .C2(mult_77_n664), .A(mult_77_n785), .ZN(mult_77_n698)
         );
  NAND2_X1 mult_77_U278 ( .A1(mult_77_n708), .A2(mult_77_n709), .ZN(
        mult_77_n710) );
  INV_X1 mult_77_U277 ( .A(mult_77_n773), .ZN(mult_77_n659) );
  INV_X1 mult_77_U276 ( .A(mult_77_n770), .ZN(mult_77_n656) );
  NAND2_X1 mult_77_U275 ( .A1(mult_77_n659), .A2(mult_77_n700), .ZN(
        mult_77_n655) );
  XNOR2_X1 mult_77_U274 ( .A(mult_77_n698), .B(mult_77_n655), .ZN(fb_tbs[9])
         );
  OAI211_X1 mult_77_U273 ( .C1(mult_77_n656), .C2(mult_77_n772), .A(
        mult_77_n700), .B(mult_77_n698), .ZN(mult_77_n771) );
  NOR2_X1 mult_77_U272 ( .A1(mult_77_n773), .A2(mult_77_n656), .ZN(
        mult_77_n769) );
  INV_X1 mult_77_U271 ( .A(mult_77_n772), .ZN(mult_77_n660) );
  OAI221_X1 mult_77_U270 ( .B1(mult_77_n660), .B2(mult_77_n769), .C1(
        mult_77_n770), .C2(mult_77_n659), .A(mult_77_n771), .ZN(mult_77_n736)
         );
  OAI21_X1 mult_77_U269 ( .B1(mult_77_n732), .B2(mult_77_n733), .A(
        mult_77_n734), .ZN(mult_77_n711) );
  INV_X1 mult_77_U268 ( .A(mult_77_n713), .ZN(mult_77_n671) );
  AOI21_X1 mult_77_U267 ( .B1(mult_77_n711), .B2(mult_77_n671), .A(
        mult_77_n712), .ZN(mult_77_n707) );
  OAI21_X1 mult_77_U266 ( .B1(mult_77_n773), .B2(mult_77_n698), .A(
        mult_77_n700), .ZN(mult_77_n775) );
  XNOR2_X1 mult_77_U265 ( .A(mult_77_n775), .B(mult_77_n772), .ZN(mult_77_n774) );
  XNOR2_X1 mult_77_U264 ( .A(mult_77_n770), .B(mult_77_n774), .ZN(fb_tbs[10])
         );
  INV_X1 mult_77_U263 ( .A(mult_77_n738), .ZN(mult_77_n657) );
  AOI21_X1 mult_77_U262 ( .B1(mult_77_n657), .B2(mult_77_n736), .A(
        mult_77_n737), .ZN(mult_77_n733) );
  INV_X1 mult_77_U261 ( .A(mult_77_n732), .ZN(mult_77_n667) );
  NAND2_X1 mult_77_U260 ( .A1(mult_77_n667), .A2(mult_77_n734), .ZN(
        mult_77_n735) );
  NOR2_X1 mult_77_U259 ( .A1(mult_77_n712), .A2(mult_77_n713), .ZN(
        mult_77_n720) );
  NOR2_X1 mult_77_U258 ( .A1(mult_77_n738), .A2(mult_77_n737), .ZN(
        mult_77_n752) );
  XOR2_X1 mult_77_U257 ( .A(a1[6]), .B(mult_77_n695), .Z(mult_77_n719) );
  XNOR2_X1 mult_77_U256 ( .A(a1[4]), .B(a1[3]), .ZN(mult_77_n730) );
  XOR2_X1 mult_77_U500 ( .A(w_out[3]), .B(mult_77_n695), .Z(mult_77_n870) );
  XOR2_X1 mult_77_U499 ( .A(a1[5]), .B(a1[4]), .Z(mult_77_n892) );
  XOR2_X1 mult_77_U498 ( .A(w_out[4]), .B(mult_77_n695), .Z(mult_77_n886) );
  XOR2_X1 mult_77_U495 ( .A(a1[3]), .B(a1[2]), .Z(mult_77_n887) );
  XOR2_X1 mult_77_U494 ( .A(w_out[5]), .B(mult_77_n695), .Z(mult_77_n884) );
  XOR2_X1 mult_77_U493 ( .A(w_out[6]), .B(mult_77_n695), .Z(mult_77_n767) );
  XOR2_X1 mult_77_U492 ( .A(mult_77_n762), .B(mult_77_n760), .Z(mult_77_n882)
         );
  XOR2_X1 mult_77_U491 ( .A(mult_77_n670), .B(mult_77_n882), .Z(mult_77_n756)
         );
  XOR2_X1 mult_77_U490 ( .A(mult_77_n861), .B(mult_77_n858), .Z(mult_77_n876)
         );
  XOR2_X1 mult_77_U489 ( .A(mult_77_n876), .B(mult_77_n859), .Z(mult_77_n867)
         );
  XOR2_X1 mult_77_U488 ( .A(mult_77_n874), .B(mult_77_n875), .Z(mult_77_n797)
         );
  XOR2_X1 mult_77_U487 ( .A(w_out[2]), .B(mult_77_n695), .Z(mult_77_n844) );
  XOR2_X1 mult_77_U486 ( .A(w_out[1]), .B(mult_77_n695), .Z(mult_77_n845) );
  XOR2_X1 mult_77_U485 ( .A(mult_77_n807), .B(mult_77_n810), .Z(mult_77_n846)
         );
  XOR2_X1 mult_77_U484 ( .A(mult_77_n846), .B(mult_77_n808), .Z(mult_77_n794)
         );
  XOR2_X1 mult_77_U483 ( .A(mult_77_n683), .B(mult_77_n843), .Z(mult_77_n812)
         );
  XOR2_X1 mult_77_U482 ( .A(mult_77_n829), .B(mult_77_n830), .Z(mult_77_n818)
         );
  XOR2_X1 mult_77_U481 ( .A(mult_77_n826), .B(mult_77_n691), .Z(mult_77_n821)
         );
  XOR2_X1 mult_77_U480 ( .A(mult_77_n805), .B(mult_77_n806), .Z(mult_77_n791)
         );
  XOR2_X1 mult_77_U479 ( .A(mult_77_n803), .B(mult_77_n804), .Z(mult_77_n802)
         );
  XOR2_X1 mult_77_U478 ( .A(mult_77_n801), .B(mult_77_n802), .Z(mult_77_n790)
         );
  XOR2_X1 mult_77_U477 ( .A(mult_77_n796), .B(mult_77_n663), .Z(mult_77_n784)
         );
  XOR2_X1 mult_77_U476 ( .A(w_out[7]), .B(mult_77_n695), .Z(mult_77_n746) );
  XOR2_X1 mult_77_U475 ( .A(mult_77_n748), .B(mult_77_n759), .Z(mult_77_n753)
         );
  XOR2_X1 mult_77_U474 ( .A(mult_77_n736), .B(mult_77_n752), .Z(fb_tbs[11]) );
  XOR2_X1 mult_77_U473 ( .A(w_out[8]), .B(mult_77_n695), .Z(mult_77_n731) );
  XOR2_X1 mult_77_U472 ( .A(mult_77_n741), .B(mult_77_n672), .Z(mult_77_n739)
         );
  XOR2_X1 mult_77_U471 ( .A(mult_77_n735), .B(mult_77_n733), .Z(fb_tbs[12]) );
  XOR2_X1 mult_77_U470 ( .A(mult_77_n711), .B(mult_77_n720), .Z(fb_tbs[13]) );
  XOR2_X1 mult_77_U469 ( .A(mult_77_n710), .B(mult_77_n707), .Z(fb_tbs[14]) );
  XOR2_X1 mult_77_U468 ( .A(mult_77_n701), .B(mult_77_n702), .Z(fb_tbs[15]) );
  INV_X1 mult_80_U423 ( .A(b1[5]), .ZN(mult_80_n327) );
  INV_X1 mult_80_U422 ( .A(b1[7]), .ZN(mult_80_n325) );
  INV_X1 mult_80_U421 ( .A(b1[1]), .ZN(mult_80_n331) );
  XNOR2_X1 mult_80_U420 ( .A(b1[1]), .B(mult_80_n308), .ZN(mult_80_n219) );
  OAI22_X1 mult_80_U419 ( .A1(mult_80_n253), .A2(mult_80_n331), .B1(
        mult_80_n220), .B2(mult_80_n332), .ZN(mult_80_n144) );
  OAI22_X1 mult_80_U418 ( .A1(mult_80_n253), .A2(mult_80_n219), .B1(
        mult_80_n218), .B2(mult_80_n332), .ZN(mult_80_n180) );
  AND2_X1 mult_80_U417 ( .A1(mult_80_n180), .A2(mult_80_n144), .ZN(
        mult_80_n279) );
  BUF_X1 mult_80_U416 ( .A(w_out[0]), .Z(mult_80_n308) );
  XNOR2_X1 mult_80_U415 ( .A(b1[5]), .B(mult_80_n308), .ZN(mult_80_n199) );
  XNOR2_X1 mult_80_U414 ( .A(b1[7]), .B(mult_80_n308), .ZN(mult_80_n189) );
  INV_X1 mult_80_U412 ( .A(b1[0]), .ZN(mult_80_n332) );
  XNOR2_X1 mult_80_U411 ( .A(b1[1]), .B(w_out[8]), .ZN(mult_80_n211) );
  XNOR2_X1 mult_80_U409 ( .A(b1[5]), .B(w_out[8]), .ZN(mult_80_n191) );
  XNOR2_X1 mult_80_U408 ( .A(b1[3]), .B(w_out[8]), .ZN(mult_80_n201) );
  XNOR2_X1 mult_80_U406 ( .A(b1[1]), .B(w_out[1]), .ZN(mult_80_n218) );
  XNOR2_X1 mult_80_U405 ( .A(b1[1]), .B(w_out[7]), .ZN(mult_80_n212) );
  XNOR2_X1 mult_80_U403 ( .A(b1[1]), .B(w_out[5]), .ZN(mult_80_n214) );
  XNOR2_X1 mult_80_U402 ( .A(b1[1]), .B(w_out[6]), .ZN(mult_80_n213) );
  XNOR2_X1 mult_80_U401 ( .A(b1[1]), .B(w_out[4]), .ZN(mult_80_n215) );
  XNOR2_X1 mult_80_U400 ( .A(b1[1]), .B(w_out[3]), .ZN(mult_80_n216) );
  XNOR2_X1 mult_80_U399 ( .A(b1[1]), .B(w_out[2]), .ZN(mult_80_n217) );
  XNOR2_X1 mult_80_U398 ( .A(b1[5]), .B(w_out[1]), .ZN(mult_80_n198) );
  XNOR2_X1 mult_80_U397 ( .A(b1[3]), .B(w_out[1]), .ZN(mult_80_n208) );
  XNOR2_X1 mult_80_U396 ( .A(b1[7]), .B(w_out[1]), .ZN(mult_80_n188) );
  XNOR2_X1 mult_80_U395 ( .A(b1[7]), .B(w_out[7]), .ZN(mult_80_n182) );
  XNOR2_X1 mult_80_U394 ( .A(b1[3]), .B(w_out[5]), .ZN(mult_80_n204) );
  XNOR2_X1 mult_80_U393 ( .A(b1[3]), .B(w_out[3]), .ZN(mult_80_n206) );
  XNOR2_X1 mult_80_U392 ( .A(b1[3]), .B(w_out[4]), .ZN(mult_80_n205) );
  XNOR2_X1 mult_80_U391 ( .A(b1[3]), .B(w_out[2]), .ZN(mult_80_n207) );
  XNOR2_X1 mult_80_U390 ( .A(b1[5]), .B(w_out[2]), .ZN(mult_80_n197) );
  XNOR2_X1 mult_80_U389 ( .A(b1[5]), .B(w_out[3]), .ZN(mult_80_n196) );
  XNOR2_X1 mult_80_U388 ( .A(b1[3]), .B(w_out[6]), .ZN(mult_80_n203) );
  XNOR2_X1 mult_80_U387 ( .A(b1[5]), .B(w_out[5]), .ZN(mult_80_n194) );
  XNOR2_X1 mult_80_U386 ( .A(b1[5]), .B(w_out[4]), .ZN(mult_80_n195) );
  XNOR2_X1 mult_80_U385 ( .A(b1[7]), .B(w_out[6]), .ZN(mult_80_n183) );
  XNOR2_X1 mult_80_U384 ( .A(b1[7]), .B(w_out[5]), .ZN(mult_80_n184) );
  XNOR2_X1 mult_80_U383 ( .A(b1[7]), .B(w_out[2]), .ZN(mult_80_n187) );
  XNOR2_X1 mult_80_U382 ( .A(b1[5]), .B(w_out[7]), .ZN(mult_80_n192) );
  XNOR2_X1 mult_80_U381 ( .A(b1[5]), .B(w_out[6]), .ZN(mult_80_n193) );
  XNOR2_X1 mult_80_U380 ( .A(b1[7]), .B(w_out[3]), .ZN(mult_80_n186) );
  XNOR2_X1 mult_80_U379 ( .A(b1[7]), .B(w_out[4]), .ZN(mult_80_n185) );
  XNOR2_X1 mult_80_U378 ( .A(b1[3]), .B(w_out[7]), .ZN(mult_80_n202) );
  XNOR2_X1 mult_80_U377 ( .A(b1[7]), .B(w_out[8]), .ZN(mult_80_n181) );
  OAI22_X1 mult_80_U376 ( .A1(mult_80_n250), .A2(mult_80_n182), .B1(
        mult_80_n254), .B2(mult_80_n181), .ZN(mult_80_n145) );
  INV_X1 mult_80_U375 ( .A(mult_80_n145), .ZN(mult_80_n320) );
  INV_X1 mult_80_U374 ( .A(b1[3]), .ZN(mult_80_n329) );
  OR2_X1 mult_80_U373 ( .A1(mult_80_n308), .A2(mult_80_n329), .ZN(mult_80_n210) );
  OAI22_X1 mult_80_U372 ( .A1(mult_80_n252), .A2(mult_80_n329), .B1(
        mult_80_n210), .B2(mult_80_n256), .ZN(mult_80_n143) );
  NAND2_X1 mult_80_U371 ( .A1(mult_80_n233), .A2(mult_80_n332), .ZN(
        mult_80_n253) );
  NAND2_X1 mult_80_U370 ( .A1(mult_80_n230), .A2(mult_80_n254), .ZN(
        mult_80_n250) );
  XNOR2_X1 mult_80_U369 ( .A(b1[3]), .B(mult_80_n308), .ZN(mult_80_n209) );
  OAI22_X1 mult_80_U368 ( .A1(mult_80_n252), .A2(mult_80_n209), .B1(
        mult_80_n256), .B2(mult_80_n208), .ZN(mult_80_n170) );
  OAI22_X1 mult_80_U367 ( .A1(mult_80_n253), .A2(mult_80_n217), .B1(
        mult_80_n216), .B2(mult_80_n332), .ZN(mult_80_n178) );
  NAND2_X1 mult_80_U366 ( .A1(mult_80_n231), .A2(mult_80_n255), .ZN(
        mult_80_n251) );
  NAND2_X1 mult_80_U365 ( .A1(mult_80_n232), .A2(mult_80_n256), .ZN(
        mult_80_n252) );
  OR2_X1 mult_80_U364 ( .A1(mult_80_n308), .A2(mult_80_n331), .ZN(mult_80_n220) );
  OR2_X1 mult_80_U363 ( .A1(mult_80_n85), .A2(mult_80_n320), .ZN(mult_80_n283)
         );
  INV_X1 mult_80_U362 ( .A(mult_80_n256), .ZN(mult_80_n330) );
  AND2_X1 mult_80_U361 ( .A1(mult_80_n308), .A2(mult_80_n330), .ZN(
        mult_80_n171) );
  INV_X1 mult_80_U360 ( .A(mult_80_n254), .ZN(mult_80_n326) );
  INV_X1 mult_80_U359 ( .A(mult_80_n255), .ZN(mult_80_n328) );
  AOI21_X1 mult_80_U358 ( .B1(mult_80_n251), .B2(mult_80_n255), .A(
        mult_80_n191), .ZN(mult_80_n133) );
  INV_X1 mult_80_U357 ( .A(mult_80_n133), .ZN(mult_80_n322) );
  OAI22_X1 mult_80_U356 ( .A1(mult_80_n250), .A2(mult_80_n183), .B1(
        mult_80_n254), .B2(mult_80_n182), .ZN(mult_80_n146) );
  OAI22_X1 mult_80_U355 ( .A1(mult_80_n253), .A2(mult_80_n218), .B1(
        mult_80_n217), .B2(mult_80_n332), .ZN(mult_80_n179) );
  OAI22_X1 mult_80_U354 ( .A1(mult_80_n251), .A2(mult_80_n192), .B1(
        mult_80_n255), .B2(mult_80_n191), .ZN(mult_80_n89) );
  NOR2_X1 mult_80_U353 ( .A1(mult_80_n130), .A2(mult_80_n143), .ZN(mult_80_n69) );
  AOI21_X1 mult_80_U352 ( .B1(mult_80_n281), .B2(mult_80_n279), .A(
        mult_80_n277), .ZN(mult_80_n71) );
  OAI21_X1 mult_80_U351 ( .B1(mult_80_n69), .B2(mult_80_n71), .A(mult_80_n70), 
        .ZN(mult_80_n68) );
  INV_X1 mult_80_U350 ( .A(mult_80_n68), .ZN(mult_80_n324) );
  NAND2_X1 mult_80_U349 ( .A1(mult_80_n128), .A2(mult_80_n129), .ZN(
        mult_80_n66) );
  OAI22_X1 mult_80_U348 ( .A1(mult_80_n251), .A2(mult_80_n196), .B1(
        mult_80_n255), .B2(mult_80_n195), .ZN(mult_80_n158) );
  OAI22_X1 mult_80_U347 ( .A1(mult_80_n250), .A2(mult_80_n188), .B1(
        mult_80_n254), .B2(mult_80_n187), .ZN(mult_80_n151) );
  NAND2_X1 mult_80_U346 ( .A1(mult_80_n130), .A2(mult_80_n143), .ZN(
        mult_80_n70) );
  NOR2_X1 mult_80_U345 ( .A1(mult_80_n128), .A2(mult_80_n129), .ZN(mult_80_n65) );
  OAI22_X1 mult_80_U344 ( .A1(mult_80_n252), .A2(mult_80_n206), .B1(
        mult_80_n256), .B2(mult_80_n205), .ZN(mult_80_n167) );
  AND2_X1 mult_80_U343 ( .A1(mult_80_n308), .A2(mult_80_n326), .ZN(
        mult_80_n153) );
  OAI22_X1 mult_80_U342 ( .A1(mult_80_n253), .A2(mult_80_n214), .B1(
        mult_80_n213), .B2(mult_80_n332), .ZN(mult_80_n175) );
  OAI22_X1 mult_80_U341 ( .A1(mult_80_n251), .A2(mult_80_n197), .B1(
        mult_80_n255), .B2(mult_80_n196), .ZN(mult_80_n159) );
  OAI22_X1 mult_80_U340 ( .A1(mult_80_n252), .A2(mult_80_n205), .B1(
        mult_80_n256), .B2(mult_80_n204), .ZN(mult_80_n166) );
  OAI22_X1 mult_80_U339 ( .A1(mult_80_n253), .A2(mult_80_n213), .B1(
        mult_80_n212), .B2(mult_80_n332), .ZN(mult_80_n174) );
  INV_X1 mult_80_U338 ( .A(mult_80_n99), .ZN(mult_80_n316) );
  OAI22_X1 mult_80_U337 ( .A1(mult_80_n251), .A2(mult_80_n194), .B1(
        mult_80_n255), .B2(mult_80_n193), .ZN(mult_80_n156) );
  OAI22_X1 mult_80_U336 ( .A1(mult_80_n250), .A2(mult_80_n186), .B1(
        mult_80_n254), .B2(mult_80_n185), .ZN(mult_80_n149) );
  OAI22_X1 mult_80_U335 ( .A1(mult_80_n252), .A2(mult_80_n204), .B1(
        mult_80_n256), .B2(mult_80_n203), .ZN(mult_80_n165) );
  OAI22_X1 mult_80_U334 ( .A1(mult_80_n253), .A2(mult_80_n212), .B1(
        mult_80_n211), .B2(mult_80_n332), .ZN(mult_80_n173) );
  AOI21_X1 mult_80_U333 ( .B1(mult_80_n253), .B2(mult_80_n332), .A(
        mult_80_n211), .ZN(mult_80_n139) );
  OAI22_X1 mult_80_U332 ( .A1(mult_80_n251), .A2(mult_80_n195), .B1(
        mult_80_n255), .B2(mult_80_n194), .ZN(mult_80_n157) );
  INV_X1 mult_80_U331 ( .A(mult_80_n139), .ZN(mult_80_n323) );
  AOI21_X1 mult_80_U330 ( .B1(mult_80_n252), .B2(mult_80_n256), .A(
        mult_80_n201), .ZN(mult_80_n136) );
  INV_X1 mult_80_U329 ( .A(mult_80_n136), .ZN(mult_80_n321) );
  OAI22_X1 mult_80_U328 ( .A1(mult_80_n251), .A2(mult_80_n193), .B1(
        mult_80_n255), .B2(mult_80_n192), .ZN(mult_80_n155) );
  OAI22_X1 mult_80_U327 ( .A1(mult_80_n252), .A2(mult_80_n207), .B1(
        mult_80_n256), .B2(mult_80_n206), .ZN(mult_80_n168) );
  OAI22_X1 mult_80_U326 ( .A1(mult_80_n253), .A2(mult_80_n215), .B1(
        mult_80_n214), .B2(mult_80_n332), .ZN(mult_80_n176) );
  NAND2_X1 mult_80_U325 ( .A1(mult_80_n85), .A2(mult_80_n320), .ZN(mult_80_n9)
         );
  OAI21_X1 mult_80_U324 ( .B1(mult_80_n49), .B2(mult_80_n11), .A(mult_80_n12), 
        .ZN(mult_80_n10) );
  NAND2_X1 mult_80_U323 ( .A1(mult_80_n283), .A2(mult_80_n9), .ZN(mult_80_n2)
         );
  XNOR2_X1 mult_80_U322 ( .A(mult_80_n10), .B(mult_80_n2), .ZN(ff_tbs_14_) );
  OAI22_X1 mult_80_U321 ( .A1(mult_80_n252), .A2(mult_80_n208), .B1(
        mult_80_n256), .B2(mult_80_n207), .ZN(mult_80_n169) );
  AND2_X1 mult_80_U320 ( .A1(mult_80_n308), .A2(mult_80_n328), .ZN(
        mult_80_n162) );
  OAI22_X1 mult_80_U319 ( .A1(mult_80_n253), .A2(mult_80_n216), .B1(
        mult_80_n215), .B2(mult_80_n332), .ZN(mult_80_n177) );
  INV_X1 mult_80_U318 ( .A(mult_80_n89), .ZN(mult_80_n319) );
  OAI22_X1 mult_80_U317 ( .A1(mult_80_n250), .A2(mult_80_n184), .B1(
        mult_80_n254), .B2(mult_80_n183), .ZN(mult_80_n147) );
  OAI22_X1 mult_80_U316 ( .A1(mult_80_n250), .A2(mult_80_n185), .B1(
        mult_80_n254), .B2(mult_80_n184), .ZN(mult_80_n148) );
  OAI22_X1 mult_80_U315 ( .A1(mult_80_n251), .A2(mult_80_n198), .B1(
        mult_80_n255), .B2(mult_80_n197), .ZN(mult_80_n160) );
  OR2_X1 mult_80_U314 ( .A1(mult_80_n308), .A2(mult_80_n327), .ZN(mult_80_n200) );
  OAI22_X1 mult_80_U313 ( .A1(mult_80_n251), .A2(mult_80_n199), .B1(
        mult_80_n255), .B2(mult_80_n198), .ZN(mult_80_n161) );
  OAI22_X1 mult_80_U312 ( .A1(mult_80_n251), .A2(mult_80_n327), .B1(
        mult_80_n200), .B2(mult_80_n255), .ZN(mult_80_n142) );
  OR2_X1 mult_80_U311 ( .A1(mult_80_n308), .A2(mult_80_n325), .ZN(mult_80_n190) );
  OAI22_X1 mult_80_U310 ( .A1(mult_80_n250), .A2(mult_80_n189), .B1(
        mult_80_n254), .B2(mult_80_n188), .ZN(mult_80_n152) );
  OAI22_X1 mult_80_U309 ( .A1(mult_80_n250), .A2(mult_80_n325), .B1(
        mult_80_n190), .B2(mult_80_n254), .ZN(mult_80_n141) );
  OAI22_X1 mult_80_U308 ( .A1(mult_80_n252), .A2(mult_80_n203), .B1(
        mult_80_n256), .B2(mult_80_n202), .ZN(mult_80_n164) );
  OAI22_X1 mult_80_U307 ( .A1(mult_80_n250), .A2(mult_80_n187), .B1(
        mult_80_n254), .B2(mult_80_n186), .ZN(mult_80_n150) );
  OAI22_X1 mult_80_U306 ( .A1(mult_80_n252), .A2(mult_80_n202), .B1(
        mult_80_n256), .B2(mult_80_n201), .ZN(mult_80_n99) );
  OR2_X1 mult_80_U305 ( .A1(mult_80_n179), .A2(mult_80_n171), .ZN(mult_80_n281) );
  AND2_X1 mult_80_U304 ( .A1(mult_80_n179), .A2(mult_80_n171), .ZN(
        mult_80_n277) );
  NAND2_X1 mult_80_U303 ( .A1(mult_80_n87), .A2(mult_80_n86), .ZN(mult_80_n20)
         );
  OR2_X1 mult_80_U302 ( .A1(mult_80_n87), .A2(mult_80_n86), .ZN(mult_80_n278)
         );
  OR2_X1 mult_80_U301 ( .A1(mult_80_n124), .A2(mult_80_n127), .ZN(mult_80_n282) );
  AND2_X1 mult_80_U300 ( .A1(mult_80_n124), .A2(mult_80_n127), .ZN(
        mult_80_n280) );
  OAI21_X1 mult_80_U299 ( .B1(mult_80_n65), .B2(mult_80_n324), .A(mult_80_n66), 
        .ZN(mult_80_n64) );
  AOI21_X1 mult_80_U298 ( .B1(mult_80_n282), .B2(mult_80_n64), .A(mult_80_n280), .ZN(mult_80_n59) );
  NAND2_X1 mult_80_U297 ( .A1(mult_80_n120), .A2(mult_80_n123), .ZN(
        mult_80_n58) );
  NAND2_X1 mult_80_U296 ( .A1(mult_80_n114), .A2(mult_80_n119), .ZN(
        mult_80_n55) );
  NOR2_X1 mult_80_U295 ( .A1(mult_80_n120), .A2(mult_80_n123), .ZN(mult_80_n57) );
  NOR2_X1 mult_80_U294 ( .A1(mult_80_n114), .A2(mult_80_n119), .ZN(mult_80_n54) );
  NAND2_X1 mult_80_U293 ( .A1(mult_80_n88), .A2(mult_80_n91), .ZN(mult_80_n31)
         );
  OR2_X1 mult_80_U292 ( .A1(mult_80_n164), .A2(mult_80_n150), .ZN(mult_80_n105) );
  XNOR2_X1 mult_80_U291 ( .A(mult_80_n164), .B(mult_80_n150), .ZN(mult_80_n106) );
  NAND2_X1 mult_80_U290 ( .A1(mult_80_n92), .A2(mult_80_n95), .ZN(mult_80_n38)
         );
  NOR2_X1 mult_80_U289 ( .A1(mult_80_n92), .A2(mult_80_n95), .ZN(mult_80_n37)
         );
  NOR2_X1 mult_80_U288 ( .A1(mult_80_n88), .A2(mult_80_n91), .ZN(mult_80_n30)
         );
  NOR2_X1 mult_80_U287 ( .A1(mult_80_n37), .A2(mult_80_n30), .ZN(mult_80_n24)
         );
  INV_X1 mult_80_U286 ( .A(mult_80_n31), .ZN(mult_80_n310) );
  INV_X1 mult_80_U285 ( .A(mult_80_n30), .ZN(mult_80_n309) );
  NAND2_X1 mult_80_U284 ( .A1(mult_80_n108), .A2(mult_80_n113), .ZN(
        mult_80_n53) );
  NAND2_X1 mult_80_U283 ( .A1(mult_80_n309), .A2(mult_80_n278), .ZN(
        mult_80_n15) );
  NAND2_X1 mult_80_U282 ( .A1(mult_80_n96), .A2(mult_80_n101), .ZN(mult_80_n45) );
  INV_X1 mult_80_U281 ( .A(mult_80_n37), .ZN(mult_80_n311) );
  OAI21_X1 mult_80_U280 ( .B1(mult_80_n52), .B2(mult_80_n55), .A(mult_80_n53), 
        .ZN(mult_80_n51) );
  NOR2_X1 mult_80_U279 ( .A1(mult_80_n52), .A2(mult_80_n54), .ZN(mult_80_n50)
         );
  OAI21_X1 mult_80_U278 ( .B1(mult_80_n57), .B2(mult_80_n59), .A(mult_80_n58), 
        .ZN(mult_80_n56) );
  AOI21_X1 mult_80_U277 ( .B1(mult_80_n50), .B2(mult_80_n56), .A(mult_80_n51), 
        .ZN(mult_80_n49) );
  NAND2_X1 mult_80_U276 ( .A1(mult_80_n102), .A2(mult_80_n107), .ZN(
        mult_80_n48) );
  INV_X1 mult_80_U275 ( .A(mult_80_n42), .ZN(mult_80_n315) );
  OAI21_X1 mult_80_U274 ( .B1(mult_80_n49), .B2(mult_80_n315), .A(mult_80_n314), .ZN(mult_80_n39) );
  NAND2_X1 mult_80_U273 ( .A1(mult_80_n311), .A2(mult_80_n38), .ZN(mult_80_n5)
         );
  XNOR2_X1 mult_80_U272 ( .A(mult_80_n39), .B(mult_80_n5), .ZN(ff_tbs_11_) );
  NAND2_X1 mult_80_U271 ( .A1(mult_80_n42), .A2(mult_80_n311), .ZN(mult_80_n33) );
  OAI21_X1 mult_80_U270 ( .B1(mult_80_n49), .B2(mult_80_n33), .A(mult_80_n34), 
        .ZN(mult_80_n32) );
  NAND2_X1 mult_80_U269 ( .A1(mult_80_n309), .A2(mult_80_n31), .ZN(mult_80_n4)
         );
  XNOR2_X1 mult_80_U268 ( .A(mult_80_n32), .B(mult_80_n4), .ZN(ff_tbs_12_) );
  INV_X1 mult_80_U267 ( .A(mult_80_n38), .ZN(mult_80_n312) );
  AOI21_X1 mult_80_U266 ( .B1(mult_80_n43), .B2(mult_80_n311), .A(mult_80_n312), .ZN(mult_80_n34) );
  INV_X1 mult_80_U265 ( .A(mult_80_n20), .ZN(mult_80_n317) );
  AOI21_X1 mult_80_U264 ( .B1(mult_80_n310), .B2(mult_80_n278), .A(
        mult_80_n317), .ZN(mult_80_n16) );
  OAI21_X1 mult_80_U263 ( .B1(mult_80_n15), .B2(mult_80_n38), .A(mult_80_n16), 
        .ZN(mult_80_n14) );
  AOI21_X1 mult_80_U262 ( .B1(mult_80_n43), .B2(mult_80_n13), .A(mult_80_n14), 
        .ZN(mult_80_n12) );
  OAI21_X1 mult_80_U261 ( .B1(mult_80_n38), .B2(mult_80_n30), .A(mult_80_n31), 
        .ZN(mult_80_n25) );
  AOI21_X1 mult_80_U260 ( .B1(mult_80_n43), .B2(mult_80_n24), .A(mult_80_n25), 
        .ZN(mult_80_n23) );
  NOR2_X1 mult_80_U259 ( .A1(mult_80_n108), .A2(mult_80_n113), .ZN(mult_80_n52) );
  NOR2_X1 mult_80_U258 ( .A1(mult_80_n37), .A2(mult_80_n15), .ZN(mult_80_n13)
         );
  NOR2_X1 mult_80_U257 ( .A1(mult_80_n96), .A2(mult_80_n101), .ZN(mult_80_n44)
         );
  NAND2_X1 mult_80_U256 ( .A1(mult_80_n42), .A2(mult_80_n24), .ZN(mult_80_n22)
         );
  OAI21_X1 mult_80_U255 ( .B1(mult_80_n49), .B2(mult_80_n22), .A(mult_80_n23), 
        .ZN(mult_80_n21) );
  NAND2_X1 mult_80_U254 ( .A1(mult_80_n278), .A2(mult_80_n20), .ZN(mult_80_n3)
         );
  XNOR2_X1 mult_80_U252 ( .A(mult_80_n21), .B(mult_80_n3), .ZN(ff_tbs_13_) );
  NOR2_X1 mult_80_U251 ( .A1(mult_80_n102), .A2(mult_80_n107), .ZN(mult_80_n47) );
  NAND2_X1 mult_80_U250 ( .A1(mult_80_n42), .A2(mult_80_n13), .ZN(mult_80_n11)
         );
  INV_X1 mult_80_U249 ( .A(mult_80_n44), .ZN(mult_80_n313) );
  OAI21_X1 mult_80_U248 ( .B1(mult_80_n49), .B2(mult_80_n47), .A(mult_80_n48), 
        .ZN(mult_80_n46) );
  NAND2_X1 mult_80_U247 ( .A1(mult_80_n313), .A2(mult_80_n45), .ZN(mult_80_n6)
         );
  XNOR2_X1 mult_80_U246 ( .A(mult_80_n46), .B(mult_80_n6), .ZN(ff_tbs_10_) );
  NOR2_X1 mult_80_U245 ( .A1(mult_80_n47), .A2(mult_80_n44), .ZN(mult_80_n42)
         );
  OAI21_X1 mult_80_U244 ( .B1(mult_80_n44), .B2(mult_80_n48), .A(mult_80_n45), 
        .ZN(mult_80_n43) );
  INV_X1 mult_80_U243 ( .A(mult_80_n47), .ZN(mult_80_n318) );
  NAND2_X1 mult_80_U242 ( .A1(mult_80_n318), .A2(mult_80_n48), .ZN(mult_80_n7)
         );
  INV_X1 mult_80_U241 ( .A(mult_80_n43), .ZN(mult_80_n314) );
  XNOR2_X1 mult_80_U240 ( .A(b1[6]), .B(b1[5]), .ZN(mult_80_n254) );
  XNOR2_X1 mult_80_U239 ( .A(b1[4]), .B(b1[3]), .ZN(mult_80_n255) );
  XNOR2_X1 mult_80_U238 ( .A(b1[2]), .B(b1[1]), .ZN(mult_80_n256) );
  XOR2_X1 mult_80_U413 ( .A(b1[6]), .B(b1[7]), .Z(mult_80_n230) );
  XOR2_X1 mult_80_U410 ( .A(b1[4]), .B(b1[5]), .Z(mult_80_n231) );
  XOR2_X1 mult_80_U407 ( .A(b1[2]), .B(b1[3]), .Z(mult_80_n232) );
  XOR2_X1 mult_80_U404 ( .A(b1[0]), .B(b1[1]), .Z(mult_80_n233) );
  XOR2_X1 mult_80_U253 ( .A(mult_80_n49), .B(mult_80_n7), .Z(ff_tbs_9_) );
  HA_X1 mult_80_U114 ( .A(mult_80_n170), .B(mult_80_n178), .CO(mult_80_n129), 
        .S(mult_80_n130) );
  FA_X1 mult_80_U113 ( .A(mult_80_n177), .B(mult_80_n162), .CI(mult_80_n169), 
        .CO(mult_80_n127), .S(mult_80_n128) );
  HA_X1 mult_80_U112 ( .A(mult_80_n142), .B(mult_80_n161), .CO(mult_80_n125), 
        .S(mult_80_n126) );
  FA_X1 mult_80_U111 ( .A(mult_80_n168), .B(mult_80_n176), .CI(mult_80_n126), 
        .CO(mult_80_n123), .S(mult_80_n124) );
  FA_X1 mult_80_U110 ( .A(mult_80_n175), .B(mult_80_n153), .CI(mult_80_n167), 
        .CO(mult_80_n121), .S(mult_80_n122) );
  FA_X1 mult_80_U109 ( .A(mult_80_n125), .B(mult_80_n160), .CI(mult_80_n122), 
        .CO(mult_80_n119), .S(mult_80_n120) );
  HA_X1 mult_80_U108 ( .A(mult_80_n141), .B(mult_80_n152), .CO(mult_80_n117), 
        .S(mult_80_n118) );
  FA_X1 mult_80_U107 ( .A(mult_80_n159), .B(mult_80_n174), .CI(mult_80_n166), 
        .CO(mult_80_n115), .S(mult_80_n116) );
  FA_X1 mult_80_U106 ( .A(mult_80_n121), .B(mult_80_n118), .CI(mult_80_n116), 
        .CO(mult_80_n113), .S(mult_80_n114) );
  HA_X1 mult_80_U105 ( .A(mult_80_n151), .B(mult_80_n158), .CO(mult_80_n111), 
        .S(mult_80_n112) );
  FA_X1 mult_80_U104 ( .A(mult_80_n165), .B(mult_80_n173), .CI(mult_80_n117), 
        .CO(mult_80_n109), .S(mult_80_n110) );
  FA_X1 mult_80_U103 ( .A(mult_80_n115), .B(mult_80_n112), .CI(mult_80_n110), 
        .CO(mult_80_n107), .S(mult_80_n108) );
  FA_X1 mult_80_U100 ( .A(mult_80_n323), .B(mult_80_n157), .CI(mult_80_n111), 
        .CO(mult_80_n103), .S(mult_80_n104) );
  FA_X1 mult_80_U99 ( .A(mult_80_n109), .B(mult_80_n106), .CI(mult_80_n104), 
        .CO(mult_80_n101), .S(mult_80_n102) );
  FA_X1 mult_80_U97 ( .A(mult_80_n149), .B(mult_80_n156), .CI(mult_80_n316), 
        .CO(mult_80_n97), .S(mult_80_n98) );
  FA_X1 mult_80_U96 ( .A(mult_80_n103), .B(mult_80_n105), .CI(mult_80_n98), 
        .CO(mult_80_n95), .S(mult_80_n96) );
  FA_X1 mult_80_U95 ( .A(mult_80_n155), .B(mult_80_n99), .CI(mult_80_n321), 
        .CO(mult_80_n93), .S(mult_80_n94) );
  FA_X1 mult_80_U94 ( .A(mult_80_n97), .B(mult_80_n148), .CI(mult_80_n94), 
        .CO(mult_80_n91), .S(mult_80_n92) );
  FA_X1 mult_80_U92 ( .A(mult_80_n319), .B(mult_80_n147), .CI(mult_80_n93), 
        .CO(mult_80_n87), .S(mult_80_n88) );
  FA_X1 mult_80_U91 ( .A(mult_80_n146), .B(mult_80_n89), .CI(mult_80_n322), 
        .CO(mult_80_n85), .S(mult_80_n86) );
  OR2_X1 add_83_U77 ( .A1(wb0_tbs_9_), .A2(ff_tbs_9_), .ZN(add_83_n68) );
  AND2_X1 add_83_U76 ( .A1(add_83_n61), .A2(add_83_n68), .ZN(y_tbs[0]) );
  AND2_X1 add_83_U75 ( .A1(add_83_n79), .A2(add_83_n19), .ZN(add_83_n59) );
  XNOR2_X1 add_83_U74 ( .A(add_83_n59), .B(add_83_n80), .ZN(y_tbs[2]) );
  NAND2_X1 add_83_U73 ( .A1(add_83_n58), .A2(add_83_n23), .ZN(add_83_n56) );
  OAI21_X1 add_83_U72 ( .B1(add_83_n80), .B2(add_83_n18), .A(add_83_n19), .ZN(
        add_83_n17) );
  AND2_X1 add_83_U71 ( .A1(add_83_n63), .A2(add_83_n11), .ZN(add_83_n62) );
  XNOR2_X1 add_83_U70 ( .A(add_83_n12), .B(add_83_n62), .ZN(y_tbs[4]) );
  NAND2_X1 add_83_U69 ( .A1(add_83_n69), .A2(add_83_n8), .ZN(add_83_n1) );
  XNOR2_X1 add_83_U68 ( .A(add_83_n9), .B(add_83_n1), .ZN(y_tbs[5]) );
  OR2_X1 add_83_U67 ( .A1(wb0_tbs_14_), .A2(ff_tbs_14_), .ZN(add_83_n69) );
  NAND2_X1 add_83_U66 ( .A1(wb0_tbs_14_), .A2(ff_tbs_14_), .ZN(add_83_n8) );
  NAND2_X1 add_83_U65 ( .A1(wb0_tbs_9_), .A2(ff_tbs_9_), .ZN(add_83_n61) );
  NAND2_X1 add_83_U64 ( .A1(wb0_tbs_9_), .A2(ff_tbs_9_), .ZN(add_83_n25) );
  OR2_X1 add_83_U63 ( .A1(wb0_tbs_13_), .A2(ff_tbs_13_), .ZN(add_83_n63) );
  NAND2_X1 add_83_U62 ( .A1(wb0_tbs_11_), .A2(ff_tbs_11_), .ZN(add_83_n19) );
  NOR2_X1 add_83_U60 ( .A1(wb0_tbs_12_), .A2(ff_tbs_12_), .ZN(add_83_n15) );
  NAND2_X1 add_83_U59 ( .A1(wb0_tbs_13_), .A2(ff_tbs_13_), .ZN(add_83_n11) );
  NAND2_X1 add_83_U58 ( .A1(wb0_tbs_12_), .A2(ff_tbs_12_), .ZN(add_83_n16) );
  NOR2_X1 add_83_U57 ( .A1(wb0_tbs_13_), .A2(ff_tbs_13_), .ZN(add_83_n10) );
  OAI21_X1 add_83_U56 ( .B1(add_83_n12), .B2(add_83_n10), .A(add_83_n11), .ZN(
        add_83_n9) );
  NOR2_X1 add_83_U55 ( .A1(wb0_tbs_12_), .A2(ff_tbs_12_), .ZN(add_83_n66) );
  NOR2_X1 add_83_U54 ( .A1(wb0_tbs_11_), .A2(ff_tbs_11_), .ZN(add_83_n18) );
  INV_X1 add_83_U53 ( .A(add_83_n18), .ZN(add_83_n79) );
  OR2_X1 add_83_U52 ( .A1(wb0_tbs_10_), .A2(ff_tbs_10_), .ZN(add_83_n58) );
  OAI21_X1 add_83_U51 ( .B1(add_83_n22), .B2(add_83_n25), .A(add_83_n23), .ZN(
        add_83_n21) );
  INV_X1 add_83_U50 ( .A(add_83_n21), .ZN(add_83_n80) );
  NAND2_X1 add_83_U49 ( .A1(wb0_tbs_10_), .A2(ff_tbs_10_), .ZN(add_83_n23) );
  NOR2_X1 add_83_U48 ( .A1(wb0_tbs_10_), .A2(ff_tbs_10_), .ZN(add_83_n22) );
  INV_X1 add_83_U47 ( .A(add_83_n66), .ZN(add_83_n78) );
  AND2_X1 add_83_U46 ( .A1(add_83_n78), .A2(add_83_n16), .ZN(add_83_n70) );
  OAI21_X1 add_83_U45 ( .B1(add_83_n19), .B2(add_83_n15), .A(add_83_n16), .ZN(
        add_83_n14) );
  NOR2_X1 add_83_U44 ( .A1(add_83_n18), .A2(add_83_n66), .ZN(add_83_n13) );
  OAI21_X1 add_83_U43 ( .B1(add_83_n22), .B2(add_83_n25), .A(add_83_n23), .ZN(
        add_83_n71) );
  AOI21_X1 add_83_U42 ( .B1(add_83_n13), .B2(add_83_n71), .A(add_83_n14), .ZN(
        add_83_n12) );
  XOR2_X1 add_83_U61 ( .A(add_83_n17), .B(add_83_n70), .Z(y_tbs[3]) );
  XOR2_X1 add_83_U41 ( .A(add_83_n56), .B(add_83_n61), .Z(y_tbs[1]) );
  INV_X1 mult_66_U474 ( .A(b0[3]), .ZN(mult_66_n637) );
  INV_X1 mult_66_U452 ( .A(b0[7]), .ZN(mult_66_n635) );
  INV_X1 mult_66_U441 ( .A(b0[5]), .ZN(mult_66_n636) );
  NAND2_X1 mult_66_U440 ( .A1(b0[1]), .A2(mult_66_n716), .ZN(mult_66_n750) );
  INV_X1 mult_66_U439 ( .A(b0[0]), .ZN(mult_66_n716) );
  NAND2_X1 mult_66_U438 ( .A1(mult_66_n657), .A2(mult_66_n835), .ZN(
        mult_66_n656) );
  XNOR2_X1 mult_66_U437 ( .A(mult_66_n636), .B(b0[4]), .ZN(mult_66_n829) );
  NAND2_X1 mult_66_U436 ( .A1(mult_66_n668), .A2(mult_66_n829), .ZN(
        mult_66_n667) );
  NAND2_X1 mult_66_U435 ( .A1(mult_66_n714), .A2(mult_66_n828), .ZN(
        mult_66_n713) );
  OAI22_X1 mult_66_U434 ( .A1(n32), .A2(mult_66_n750), .B1(mult_66_n770), .B2(
        mult_66_n716), .ZN(mult_66_n772) );
  OAI21_X1 mult_66_U433 ( .B1(mult_66_n714), .B2(mult_66_n634), .A(
        mult_66_n773), .ZN(mult_66_n771) );
  AND2_X1 mult_66_U432 ( .A1(mult_66_n771), .A2(mult_66_n772), .ZN(
        mult_66_n764) );
  OAI21_X1 mult_66_U431 ( .B1(b0[1]), .B2(b0[0]), .A(mult_66_n805), .ZN(
        mult_66_n727) );
  XNOR2_X1 mult_66_U430 ( .A(n31), .B(b0[1]), .ZN(mult_66_n762) );
  XNOR2_X1 mult_66_U429 ( .A(n32), .B(b0[5]), .ZN(mult_66_n811) );
  XNOR2_X1 mult_66_U428 ( .A(n32), .B(b0[7]), .ZN(mult_66_n833) );
  XNOR2_X1 mult_66_U427 ( .A(n33), .B(b0[5]), .ZN(mult_66_n692) );
  XNOR2_X1 mult_66_U426 ( .A(n33), .B(b0[3]), .ZN(mult_66_n723) );
  XNOR2_X1 mult_66_U425 ( .A(n32), .B(b0[3]), .ZN(mult_66_n780) );
  XNOR2_X1 mult_66_U424 ( .A(n31), .B(b0[3]), .ZN(mult_66_n752) );
  XNOR2_X1 mult_66_U423 ( .A(n35), .B(b0[1]), .ZN(mult_66_n749) );
  XNOR2_X1 mult_66_U422 ( .A(w[6]), .B(b0[1]), .ZN(mult_66_n751) );
  XNOR2_X1 mult_66_U421 ( .A(n34), .B(b0[1]), .ZN(mult_66_n763) );
  XNOR2_X1 mult_66_U420 ( .A(n35), .B(b0[3]), .ZN(mult_66_n823) );
  XNOR2_X1 mult_66_U419 ( .A(n30), .B(b0[1]), .ZN(mult_66_n770) );
  XNOR2_X1 mult_66_U418 ( .A(n34), .B(b0[3]), .ZN(mult_66_n753) );
  XNOR2_X1 mult_66_U417 ( .A(w[6]), .B(b0[5]), .ZN(mult_66_n707) );
  XNOR2_X1 mult_66_U416 ( .A(w[6]), .B(b0[3]), .ZN(mult_66_n804) );
  XNOR2_X1 mult_66_U415 ( .A(n30), .B(b0[7]), .ZN(mult_66_n802) );
  XNOR2_X1 mult_66_U414 ( .A(n30), .B(b0[3]), .ZN(mult_66_n779) );
  XNOR2_X1 mult_66_U413 ( .A(w[0]), .B(b0[3]), .ZN(mult_66_n781) );
  OAI22_X1 mult_66_U412 ( .A1(mult_66_n714), .A2(mult_66_n780), .B1(
        mult_66_n781), .B2(mult_66_n713), .ZN(mult_66_n769) );
  XNOR2_X1 mult_66_U411 ( .A(w[0]), .B(b0[5]), .ZN(mult_66_n813) );
  OAI22_X1 mult_66_U410 ( .A1(mult_66_n668), .A2(mult_66_n811), .B1(
        mult_66_n813), .B2(mult_66_n667), .ZN(mult_66_n786) );
  XNOR2_X1 mult_66_U409 ( .A(w[0]), .B(b0[7]), .ZN(mult_66_n834) );
  OAI22_X1 mult_66_U408 ( .A1(mult_66_n657), .A2(mult_66_n833), .B1(
        mult_66_n834), .B2(mult_66_n656), .ZN(mult_66_n827) );
  XNOR2_X1 mult_66_U407 ( .A(n33), .B(b0[1]), .ZN(mult_66_n820) );
  OR2_X1 mult_66_U406 ( .A1(mult_66_n634), .A2(mult_66_n668), .ZN(mult_66_n775) );
  OAI22_X1 mult_66_U405 ( .A1(mult_66_n714), .A2(mult_66_n779), .B1(
        mult_66_n780), .B2(mult_66_n713), .ZN(mult_66_n778) );
  INV_X1 mult_66_U404 ( .A(mult_66_n778), .ZN(mult_66_n630) );
  NAND2_X1 mult_66_U403 ( .A1(mult_66_n768), .A2(mult_66_n769), .ZN(
        mult_66_n776) );
  OAI22_X1 mult_66_U402 ( .A1(mult_66_n751), .A2(mult_66_n750), .B1(
        mult_66_n820), .B2(mult_66_n716), .ZN(mult_66_n819) );
  INV_X1 mult_66_U401 ( .A(mult_66_n819), .ZN(mult_66_n617) );
  NAND2_X1 mult_66_U400 ( .A1(mult_66_n785), .A2(mult_66_n786), .ZN(
        mult_66_n787) );
  OAI21_X1 mult_66_U399 ( .B1(mult_66_n785), .B2(mult_66_n786), .A(
        mult_66_n787), .ZN(mult_66_n784) );
  INV_X1 mult_66_U398 ( .A(mult_66_n784), .ZN(mult_66_n633) );
  OAI22_X1 mult_66_U397 ( .A1(mult_66_n666), .A2(mult_66_n656), .B1(
        mult_66_n657), .B2(mult_66_n655), .ZN(mult_66_n665) );
  INV_X1 mult_66_U396 ( .A(mult_66_n665), .ZN(mult_66_n620) );
  AND3_X1 mult_66_U395 ( .A1(mult_66_n831), .A2(mult_66_n827), .A3(
        mult_66_n826), .ZN(mult_66_n724) );
  NOR2_X1 mult_66_U394 ( .A1(mult_66_n634), .A2(mult_66_n657), .ZN(
        mult_66_n790) );
  OR2_X1 mult_66_U393 ( .A1(w[0]), .A2(mult_66_n714), .ZN(mult_66_n782) );
  AOI21_X1 mult_66_U392 ( .B1(mult_66_n713), .B2(mult_66_n782), .A(
        mult_66_n637), .ZN(mult_66_n768) );
  OR2_X1 mult_66_U391 ( .A1(w[0]), .A2(mult_66_n668), .ZN(mult_66_n814) );
  AOI21_X1 mult_66_U390 ( .B1(mult_66_n667), .B2(mult_66_n814), .A(
        mult_66_n636), .ZN(mult_66_n785) );
  AOI21_X1 mult_66_U389 ( .B1(mult_66_n827), .B2(mult_66_n826), .A(
        mult_66_n831), .ZN(mult_66_n830) );
  NOR2_X1 mult_66_U388 ( .A1(mult_66_n724), .A2(mult_66_n830), .ZN(
        mult_66_n806) );
  XNOR2_X1 mult_66_U387 ( .A(mult_66_n803), .B(mult_66_n725), .ZN(mult_66_n729) );
  OAI22_X1 mult_66_U386 ( .A1(mult_66_n833), .A2(mult_66_n656), .B1(
        mult_66_n657), .B2(mult_66_n802), .ZN(mult_66_n831) );
  OR2_X1 mult_66_U385 ( .A1(w[0]), .A2(mult_66_n657), .ZN(mult_66_n832) );
  AOI21_X1 mult_66_U384 ( .B1(mult_66_n832), .B2(mult_66_n656), .A(
        mult_66_n635), .ZN(mult_66_n826) );
  OAI22_X1 mult_66_U383 ( .A1(mult_66_n823), .A2(mult_66_n713), .B1(
        mult_66_n714), .B2(mult_66_n804), .ZN(mult_66_n798) );
  OAI22_X1 mult_66_U382 ( .A1(mult_66_n763), .A2(mult_66_n716), .B1(
        mult_66_n770), .B2(mult_66_n750), .ZN(mult_66_n765) );
  AND2_X1 mult_66_U381 ( .A1(mult_66_n765), .A2(mult_66_n764), .ZN(
        mult_66_n766) );
  OAI22_X1 mult_66_U380 ( .A1(mult_66_n764), .A2(mult_66_n765), .B1(
        mult_66_n766), .B2(mult_66_n767), .ZN(mult_66_n760) );
  OAI22_X1 mult_66_U379 ( .A1(mult_66_n802), .A2(mult_66_n656), .B1(
        mult_66_n657), .B2(mult_66_n722), .ZN(mult_66_n799) );
  OAI22_X1 mult_66_U378 ( .A1(mult_66_n655), .A2(mult_66_n656), .B1(
        mult_66_n657), .B2(mult_66_n658), .ZN(mult_66_n650) );
  OAI22_X1 mult_66_U377 ( .A1(mult_66_n723), .A2(mult_66_n713), .B1(
        mult_66_n714), .B2(mult_66_n715), .ZN(mult_66_n709) );
  AOI21_X1 mult_66_U376 ( .B1(mult_66_n713), .B2(mult_66_n714), .A(
        mult_66_n715), .ZN(mult_66_n694) );
  AOI21_X1 mult_66_U375 ( .B1(mult_66_n667), .B2(mult_66_n668), .A(
        mult_66_n669), .ZN(mult_66_n664) );
  OAI22_X1 mult_66_U374 ( .A1(mult_66_n811), .A2(mult_66_n667), .B1(
        mult_66_n668), .B2(mult_66_n812), .ZN(mult_66_n788) );
  OAI22_X1 mult_66_U373 ( .A1(mult_66_n668), .A2(mult_66_n721), .B1(
        mult_66_n801), .B2(mult_66_n667), .ZN(mult_66_n800) );
  OAI222_X1 mult_66_U372 ( .A1(mult_66_n762), .A2(mult_66_n716), .B1(
        mult_66_n763), .B2(mult_66_n750), .C1(mult_66_n760), .C2(mult_66_n759), 
        .ZN(mult_66_n761) );
  INV_X1 mult_66_U371 ( .A(mult_66_n761), .ZN(mult_66_n626) );
  AOI221_X1 mult_66_U370 ( .B1(mult_66_n759), .B2(mult_66_n760), .C1(
        mult_66_n629), .C2(mult_66_n757), .A(mult_66_n626), .ZN(mult_66_n758)
         );
  INV_X1 mult_66_U369 ( .A(mult_66_n758), .ZN(mult_66_n624) );
  OAI22_X1 mult_66_U368 ( .A1(mult_66_n714), .A2(mult_66_n753), .B1(
        mult_66_n779), .B2(mult_66_n713), .ZN(mult_66_n756) );
  OAI22_X1 mult_66_U367 ( .A1(mult_66_n692), .A2(mult_66_n667), .B1(
        mult_66_n668), .B2(mult_66_n669), .ZN(mult_66_n672) );
  OAI22_X1 mult_66_U366 ( .A1(mult_66_n721), .A2(mult_66_n667), .B1(
        mult_66_n668), .B2(mult_66_n707), .ZN(mult_66_n710) );
  OAI22_X1 mult_66_U365 ( .A1(mult_66_n714), .A2(mult_66_n752), .B1(
        mult_66_n753), .B2(mult_66_n713), .ZN(mult_66_n743) );
  AND2_X1 mult_66_U364 ( .A1(mult_66_n725), .A2(mult_66_n724), .ZN(
        mult_66_n726) );
  OAI22_X1 mult_66_U363 ( .A1(mult_66_n724), .A2(mult_66_n725), .B1(
        mult_66_n726), .B2(mult_66_n727), .ZN(mult_66_n701) );
  OAI22_X1 mult_66_U362 ( .A1(mult_66_n749), .A2(mult_66_n716), .B1(
        mult_66_n762), .B2(mult_66_n750), .ZN(mult_66_n754) );
  OAI22_X1 mult_66_U361 ( .A1(mult_66_n752), .A2(mult_66_n713), .B1(
        mult_66_n714), .B2(mult_66_n823), .ZN(mult_66_n817) );
  OAI22_X1 mult_66_U360 ( .A1(mult_66_n707), .A2(mult_66_n667), .B1(
        mult_66_n668), .B2(mult_66_n692), .ZN(mult_66_n687) );
  OAI22_X1 mult_66_U359 ( .A1(mult_66_n812), .A2(mult_66_n667), .B1(
        mult_66_n668), .B2(mult_66_n824), .ZN(mult_66_n818) );
  OAI22_X1 mult_66_U358 ( .A1(mult_66_n722), .A2(mult_66_n656), .B1(
        mult_66_n657), .B2(mult_66_n712), .ZN(mult_66_n697) );
  OAI22_X1 mult_66_U357 ( .A1(mult_66_n804), .A2(mult_66_n713), .B1(
        mult_66_n714), .B2(mult_66_n723), .ZN(mult_66_n725) );
  OAI22_X1 mult_66_U356 ( .A1(mult_66_n749), .A2(mult_66_n750), .B1(
        mult_66_n751), .B2(mult_66_n716), .ZN(mult_66_n742) );
  OAI22_X1 mult_66_U355 ( .A1(mult_66_n712), .A2(mult_66_n656), .B1(
        mult_66_n657), .B2(mult_66_n693), .ZN(mult_66_n696) );
  OAI22_X1 mult_66_U354 ( .A1(mult_66_n824), .A2(mult_66_n667), .B1(
        mult_66_n668), .B2(mult_66_n801), .ZN(mult_66_n796) );
  OAI22_X1 mult_66_U353 ( .A1(mult_66_n693), .A2(mult_66_n656), .B1(
        mult_66_n657), .B2(mult_66_n666), .ZN(mult_66_n652) );
  INV_X1 mult_66_U352 ( .A(mult_66_n805), .ZN(mult_66_n615) );
  OAI22_X1 mult_66_U351 ( .A1(mult_66_n820), .A2(mult_66_n750), .B1(
        mult_66_n615), .B2(mult_66_n716), .ZN(mult_66_n795) );
  OAI21_X1 mult_66_U350 ( .B1(mult_66_n652), .B2(mult_66_n653), .A(
        mult_66_n651), .ZN(mult_66_n654) );
  INV_X1 mult_66_U349 ( .A(mult_66_n654), .ZN(mult_66_n601) );
  INV_X1 mult_66_U348 ( .A(mult_66_n787), .ZN(mult_66_n632) );
  NAND2_X1 mult_66_U347 ( .A1(mult_66_n629), .A2(mult_66_n774), .ZN(
        mult_66_n759) );
  INV_X1 mult_66_U346 ( .A(mult_66_n709), .ZN(mult_66_n607) );
  AOI21_X1 mult_66_U345 ( .B1(mult_66_n776), .B2(mult_66_n775), .A(
        mult_66_n630), .ZN(mult_66_n777) );
  INV_X1 mult_66_U344 ( .A(mult_66_n777), .ZN(mult_66_n629) );
  INV_X1 mult_66_U343 ( .A(mult_66_n651), .ZN(mult_66_n602) );
  NOR2_X1 mult_66_U342 ( .A1(mult_66_n653), .A2(mult_66_n602), .ZN(
        mult_66_n662) );
  XNOR2_X1 mult_66_U341 ( .A(mult_66_n664), .B(mult_66_n620), .ZN(mult_66_n663) );
  OAI22_X1 mult_66_U340 ( .A1(mult_66_n619), .A2(mult_66_n662), .B1(
        mult_66_n663), .B2(mult_66_n652), .ZN(mult_66_n660) );
  INV_X1 mult_66_U339 ( .A(mult_66_n652), .ZN(mult_66_n619) );
  OAI21_X1 mult_66_U338 ( .B1(mult_66_n633), .B2(mult_66_n754), .A(
        mult_66_n756), .ZN(mult_66_n755) );
  INV_X1 mult_66_U337 ( .A(mult_66_n755), .ZN(mult_66_n623) );
  AOI21_X1 mult_66_U336 ( .B1(mult_66_n754), .B2(mult_66_n633), .A(
        mult_66_n623), .ZN(mult_66_n740) );
  NAND2_X1 mult_66_U335 ( .A1(mult_66_n620), .A2(mult_66_n664), .ZN(
        mult_66_n651) );
  INV_X1 mult_66_U334 ( .A(mult_66_n697), .ZN(mult_66_n627) );
  INV_X1 mult_66_U333 ( .A(w[0]), .ZN(mult_66_n634) );
  XNOR2_X1 mult_66_U332 ( .A(mult_66_n622), .B(mult_66_n743), .ZN(mult_66_n748) );
  AOI21_X1 mult_66_U331 ( .B1(mult_66_n742), .B2(mult_66_n622), .A(
        mult_66_n743), .ZN(mult_66_n741) );
  AOI21_X1 mult_66_U330 ( .B1(mult_66_n651), .B2(mult_66_n652), .A(
        mult_66_n653), .ZN(mult_66_n649) );
  NOR2_X1 mult_66_U329 ( .A1(mult_66_n790), .A2(mult_66_n632), .ZN(
        mult_66_n789) );
  XNOR2_X1 mult_66_U328 ( .A(mult_66_n788), .B(mult_66_n789), .ZN(mult_66_n744) );
  OAI21_X1 mult_66_U327 ( .B1(mult_66_n619), .B2(mult_66_n671), .A(
        mult_66_n672), .ZN(mult_66_n670) );
  INV_X1 mult_66_U326 ( .A(mult_66_n671), .ZN(mult_66_n608) );
  OAI21_X1 mult_66_U325 ( .B1(mult_66_n608), .B2(mult_66_n652), .A(
        mult_66_n670), .ZN(mult_66_n661) );
  OAI21_X1 mult_66_U324 ( .B1(mult_66_n627), .B2(mult_66_n709), .A(
        mult_66_n710), .ZN(mult_66_n708) );
  OAI21_X1 mult_66_U323 ( .B1(mult_66_n607), .B2(mult_66_n697), .A(
        mult_66_n708), .ZN(mult_66_n690) );
  OAI21_X1 mult_66_U322 ( .B1(mult_66_n688), .B2(mult_66_n687), .A(
        mult_66_n690), .ZN(mult_66_n689) );
  INV_X1 mult_66_U321 ( .A(mult_66_n689), .ZN(mult_66_n603) );
  AOI21_X1 mult_66_U320 ( .B1(mult_66_n687), .B2(mult_66_n688), .A(
        mult_66_n603), .ZN(mult_66_n685) );
  AOI21_X1 mult_66_U319 ( .B1(mult_66_n701), .B2(mult_66_n700), .A(
        mult_66_n703), .ZN(mult_66_n702) );
  INV_X1 mult_66_U318 ( .A(mult_66_n702), .ZN(mult_66_n606) );
  OAI21_X1 mult_66_U317 ( .B1(mult_66_n700), .B2(mult_66_n701), .A(
        mult_66_n606), .ZN(mult_66_n683) );
  XNOR2_X1 mult_66_U316 ( .A(mult_66_n793), .B(mult_66_n617), .ZN(mult_66_n792) );
  XNOR2_X1 mult_66_U315 ( .A(mult_66_n791), .B(mult_66_n792), .ZN(mult_66_n737) );
  AOI21_X1 mult_66_U314 ( .B1(mult_66_n799), .B2(mult_66_n800), .A(
        mult_66_n703), .ZN(mult_66_n730) );
  OAI21_X1 mult_66_U313 ( .B1(mult_66_n632), .B2(mult_66_n790), .A(
        mult_66_n788), .ZN(mult_66_n793) );
  NOR2_X1 mult_66_U312 ( .A1(mult_66_n800), .A2(mult_66_n799), .ZN(
        mult_66_n703) );
  OAI21_X1 mult_66_U311 ( .B1(mult_66_n795), .B2(mult_66_n796), .A(
        mult_66_n798), .ZN(mult_66_n797) );
  INV_X1 mult_66_U310 ( .A(mult_66_n797), .ZN(mult_66_n614) );
  AOI21_X1 mult_66_U309 ( .B1(mult_66_n795), .B2(mult_66_n796), .A(
        mult_66_n614), .ZN(mult_66_n728) );
  NOR2_X1 mult_66_U308 ( .A1(mult_66_n664), .A2(mult_66_n620), .ZN(
        mult_66_n653) );
  XNOR2_X1 mult_66_U307 ( .A(mult_66_n719), .B(mult_66_n700), .ZN(mult_66_n717) );
  OAI21_X1 mult_66_U306 ( .B1(mult_66_n817), .B2(mult_66_n818), .A(
        mult_66_n815), .ZN(mult_66_n825) );
  INV_X1 mult_66_U305 ( .A(mult_66_n825), .ZN(mult_66_n621) );
  AOI21_X1 mult_66_U304 ( .B1(mult_66_n818), .B2(mult_66_n817), .A(
        mult_66_n621), .ZN(mult_66_n809) );
  XNOR2_X1 mult_66_U303 ( .A(mult_66_n815), .B(mult_66_n816), .ZN(mult_66_n791) );
  AND2_X1 mult_66_U302 ( .A1(mult_66_n728), .A2(mult_66_n729), .ZN(
        mult_66_n731) );
  OAI22_X1 mult_66_U301 ( .A1(mult_66_n728), .A2(mult_66_n729), .B1(
        mult_66_n730), .B2(mult_66_n731), .ZN(mult_66_n718) );
  INV_X1 mult_66_U300 ( .A(mult_66_n694), .ZN(mult_66_n609) );
  AOI21_X1 mult_66_U299 ( .B1(mult_66_n696), .B2(mult_66_n609), .A(
        mult_66_n697), .ZN(mult_66_n695) );
  INV_X1 mult_66_U298 ( .A(mult_66_n696), .ZN(mult_66_n625) );
  AOI21_X1 mult_66_U297 ( .B1(mult_66_n625), .B2(mult_66_n694), .A(
        mult_66_n695), .ZN(mult_66_n671) );
  XNOR2_X1 mult_66_U296 ( .A(mult_66_n729), .B(mult_66_n794), .ZN(mult_66_n736) );
  XNOR2_X1 mult_66_U295 ( .A(mult_66_n694), .B(mult_66_n627), .ZN(mult_66_n711) );
  XNOR2_X1 mult_66_U294 ( .A(mult_66_n711), .B(mult_66_n696), .ZN(mult_66_n688) );
  XNOR2_X1 mult_66_U293 ( .A(mult_66_n748), .B(mult_66_n742), .ZN(mult_66_n747) );
  OAI21_X1 mult_66_U292 ( .B1(mult_66_n757), .B2(mult_66_n629), .A(
        mult_66_n624), .ZN(mult_66_n745) );
  AND2_X1 mult_66_U291 ( .A1(mult_66_n745), .A2(mult_66_n744), .ZN(
        mult_66_n746) );
  OAI22_X1 mult_66_U290 ( .A1(mult_66_n744), .A2(mult_66_n745), .B1(
        mult_66_n746), .B2(mult_66_n747), .ZN(mult_66_n738) );
  XNOR2_X1 mult_66_U289 ( .A(mult_66_n627), .B(mult_66_n710), .ZN(mult_66_n720) );
  XNOR2_X1 mult_66_U288 ( .A(mult_66_n607), .B(mult_66_n720), .ZN(mult_66_n700) );
  XNOR2_X1 mult_66_U287 ( .A(mult_66_n619), .B(mult_66_n672), .ZN(mult_66_n691) );
  INV_X1 mult_66_U286 ( .A(mult_66_n742), .ZN(mult_66_n618) );
  AOI221_X1 mult_66_U285 ( .B1(mult_66_n618), .B2(mult_66_n740), .C1(
        mult_66_n738), .C2(mult_66_n737), .A(mult_66_n741), .ZN(mult_66_n739)
         );
  INV_X1 mult_66_U284 ( .A(mult_66_n739), .ZN(mult_66_n616) );
  OAI21_X1 mult_66_U283 ( .B1(mult_66_n737), .B2(mult_66_n738), .A(
        mult_66_n616), .ZN(mult_66_n640) );
  AND2_X1 mult_66_U282 ( .A1(mult_66_n791), .A2(mult_66_n617), .ZN(
        mult_66_n810) );
  OAI22_X1 mult_66_U281 ( .A1(mult_66_n617), .A2(mult_66_n791), .B1(
        mult_66_n810), .B2(mult_66_n793), .ZN(mult_66_n642) );
  XNOR2_X1 mult_66_U280 ( .A(mult_66_n688), .B(mult_66_n706), .ZN(mult_66_n680) );
  XNOR2_X1 mult_66_U279 ( .A(mult_66_n756), .B(mult_66_n633), .ZN(mult_66_n783) );
  INV_X1 mult_66_U278 ( .A(mult_66_n806), .ZN(mult_66_n628) );
  AOI21_X1 mult_66_U277 ( .B1(mult_66_n628), .B2(mult_66_n808), .A(
        mult_66_n809), .ZN(mult_66_n807) );
  AOI21_X1 mult_66_U276 ( .B1(mult_66_n806), .B2(mult_66_n612), .A(
        mult_66_n807), .ZN(mult_66_n733) );
  INV_X1 mult_66_U275 ( .A(mult_66_n650), .ZN(mult_66_n599) );
  AOI21_X1 mult_66_U274 ( .B1(mult_66_n646), .B2(mult_66_n600), .A(
        mult_66_n647), .ZN(mult_66_n645) );
  OAI22_X1 mult_66_U273 ( .A1(mult_66_n599), .A2(mult_66_n601), .B1(
        mult_66_n649), .B2(mult_66_n650), .ZN(mult_66_n644) );
  XNOR2_X1 mult_66_U272 ( .A(mult_66_n795), .B(mult_66_n796), .ZN(mult_66_n822) );
  XNOR2_X1 mult_66_U271 ( .A(mult_66_n806), .B(mult_66_n809), .ZN(mult_66_n821) );
  OR2_X1 mult_66_U270 ( .A1(mult_66_n718), .A2(mult_66_n717), .ZN(mult_66_n704) );
  OR2_X1 mult_66_U269 ( .A1(mult_66_n686), .A2(mult_66_n685), .ZN(mult_66_n673) );
  INV_X1 mult_66_U268 ( .A(mult_66_n736), .ZN(mult_66_n613) );
  INV_X1 mult_66_U267 ( .A(mult_66_n740), .ZN(mult_66_n622) );
  AND2_X1 mult_66_U266 ( .A1(mult_66_n660), .A2(mult_66_n661), .ZN(
        mult_66_n647) );
  INV_X1 mult_66_U265 ( .A(n32), .ZN(mult_66_n631) );
  NAND2_X1 mult_66_U264 ( .A1(mult_66_n685), .A2(mult_66_n686), .ZN(
        mult_66_n677) );
  NAND2_X1 mult_66_U263 ( .A1(mult_66_n717), .A2(mult_66_n718), .ZN(
        mult_66_n682) );
  INV_X1 mult_66_U262 ( .A(mult_66_n683), .ZN(mult_66_n605) );
  OR2_X1 mult_66_U261 ( .A1(mult_66_n642), .A2(mult_66_n643), .ZN(mult_66_n641) );
  AOI21_X1 mult_66_U260 ( .B1(mult_66_n640), .B2(mult_66_n641), .A(
        mult_66_n610), .ZN(mult_66_n639) );
  XNOR2_X1 mult_66_U259 ( .A(mult_66_n639), .B(mult_66_n611), .ZN(mult_66_n638) );
  XNOR2_X1 mult_66_U258 ( .A(mult_66_n613), .B(mult_66_n638), .ZN(wb0_tbs_9_)
         );
  NOR2_X1 mult_66_U257 ( .A1(mult_66_n661), .A2(mult_66_n660), .ZN(
        mult_66_n648) );
  INV_X1 mult_66_U256 ( .A(mult_66_n680), .ZN(mult_66_n604) );
  NOR2_X1 mult_66_U255 ( .A1(mult_66_n604), .A2(mult_66_n683), .ZN(
        mult_66_n681) );
  OAI22_X1 mult_66_U254 ( .A1(mult_66_n605), .A2(mult_66_n680), .B1(
        mult_66_n681), .B2(mult_66_n682), .ZN(mult_66_n676) );
  INV_X1 mult_66_U253 ( .A(mult_66_n808), .ZN(mult_66_n612) );
  INV_X1 mult_66_U252 ( .A(mult_66_n733), .ZN(mult_66_n611) );
  NAND2_X1 mult_66_U251 ( .A1(mult_66_n643), .A2(mult_66_n642), .ZN(
        mult_66_n734) );
  NAND2_X1 mult_66_U250 ( .A1(mult_66_n684), .A2(mult_66_n682), .ZN(
        mult_66_n699) );
  XNOR2_X1 mult_66_U249 ( .A(mult_66_n699), .B(mult_66_n605), .ZN(mult_66_n698) );
  XNOR2_X1 mult_66_U248 ( .A(mult_66_n680), .B(mult_66_n698), .ZN(wb0_tbs_11_)
         );
  AOI21_X1 mult_66_U247 ( .B1(mult_66_n680), .B2(mult_66_n605), .A(
        mult_66_n684), .ZN(mult_66_n675) );
  NOR2_X1 mult_66_U246 ( .A1(mult_66_n610), .A2(mult_66_n611), .ZN(
        mult_66_n732) );
  OAI221_X1 mult_66_U245 ( .B1(mult_66_n643), .B2(mult_66_n642), .C1(
        mult_66_n611), .C2(mult_66_n736), .A(mult_66_n640), .ZN(mult_66_n735)
         );
  OAI221_X1 mult_66_U244 ( .B1(mult_66_n732), .B2(mult_66_n613), .C1(
        mult_66_n733), .C2(mult_66_n734), .A(mult_66_n735), .ZN(mult_66_n705)
         );
  INV_X1 mult_66_U243 ( .A(mult_66_n648), .ZN(mult_66_n600) );
  NAND2_X1 mult_66_U242 ( .A1(mult_66_n704), .A2(mult_66_n682), .ZN(
        mult_66_n598) );
  XNOR2_X1 mult_66_U241 ( .A(mult_66_n705), .B(mult_66_n598), .ZN(wb0_tbs_10_)
         );
  INV_X1 mult_66_U240 ( .A(mult_66_n734), .ZN(mult_66_n610) );
  OAI21_X1 mult_66_U239 ( .B1(mult_66_n675), .B2(mult_66_n676), .A(
        mult_66_n677), .ZN(mult_66_n674) );
  NAND2_X1 mult_66_U238 ( .A1(mult_66_n673), .A2(mult_66_n674), .ZN(
        mult_66_n646) );
  NOR2_X1 mult_66_U237 ( .A1(mult_66_n675), .A2(mult_66_n676), .ZN(
        mult_66_n679) );
  NAND2_X1 mult_66_U236 ( .A1(mult_66_n673), .A2(mult_66_n677), .ZN(
        mult_66_n678) );
  NAND2_X1 mult_66_U235 ( .A1(mult_66_n704), .A2(mult_66_n705), .ZN(
        mult_66_n684) );
  NOR2_X1 mult_66_U234 ( .A1(mult_66_n648), .A2(mult_66_n647), .ZN(
        mult_66_n659) );
  XOR2_X1 mult_66_U233 ( .A(b0[6]), .B(mult_66_n636), .Z(mult_66_n657) );
  XNOR2_X1 mult_66_U232 ( .A(b0[2]), .B(b0[1]), .ZN(mult_66_n714) );
  XNOR2_X1 mult_66_U231 ( .A(b0[4]), .B(b0[3]), .ZN(mult_66_n668) );
  XOR2_X1 mult_66_U473 ( .A(b0[7]), .B(b0[6]), .Z(mult_66_n835) );
  XOR2_X1 mult_66_U472 ( .A(n30), .B(mult_66_n636), .Z(mult_66_n812) );
  XOR2_X1 mult_66_U471 ( .A(n34), .B(mult_66_n636), .Z(mult_66_n824) );
  XOR2_X1 mult_66_U470 ( .A(b0[3]), .B(b0[2]), .Z(mult_66_n828) );
  XOR2_X1 mult_66_U469 ( .A(mult_66_n826), .B(mult_66_n827), .Z(mult_66_n815)
         );
  XOR2_X1 mult_66_U468 ( .A(w[8]), .B(b0[1]), .Z(mult_66_n805) );
  XOR2_X1 mult_66_U467 ( .A(n31), .B(mult_66_n636), .Z(mult_66_n801) );
  XOR2_X1 mult_66_U466 ( .A(mult_66_n822), .B(mult_66_n798), .Z(mult_66_n808)
         );
  XOR2_X1 mult_66_U465 ( .A(mult_66_n821), .B(mult_66_n612), .Z(mult_66_n643)
         );
  XOR2_X1 mult_66_U464 ( .A(mult_66_n817), .B(mult_66_n818), .Z(mult_66_n816)
         );
  XOR2_X1 mult_66_U463 ( .A(mult_66_n724), .B(mult_66_n727), .Z(mult_66_n803)
         );
  XOR2_X1 mult_66_U462 ( .A(n34), .B(mult_66_n635), .Z(mult_66_n722) );
  XOR2_X1 mult_66_U461 ( .A(n35), .B(mult_66_n636), .Z(mult_66_n721) );
  XOR2_X1 mult_66_U460 ( .A(mult_66_n730), .B(mult_66_n728), .Z(mult_66_n794)
         );
  XOR2_X1 mult_66_U459 ( .A(mult_66_n754), .B(mult_66_n783), .Z(mult_66_n757)
         );
  NAND3_X1 mult_66_U458 ( .A1(mult_66_n775), .A2(mult_66_n776), .A3(
        mult_66_n630), .ZN(mult_66_n774) );
  NAND3_X1 mult_66_U457 ( .A1(mult_66_n631), .A2(mult_66_n634), .A3(b0[1]), 
        .ZN(mult_66_n773) );
  XOR2_X1 mult_66_U456 ( .A(mult_66_n768), .B(mult_66_n769), .Z(mult_66_n767)
         );
  XOR2_X1 mult_66_U455 ( .A(mult_66_n701), .B(mult_66_n703), .Z(mult_66_n719)
         );
  XOR2_X1 mult_66_U454 ( .A(w[8]), .B(mult_66_n637), .Z(mult_66_n715) );
  XOR2_X1 mult_66_U453 ( .A(n31), .B(mult_66_n635), .Z(mult_66_n712) );
  XOR2_X1 mult_66_U451 ( .A(n35), .B(mult_66_n635), .Z(mult_66_n693) );
  XOR2_X1 mult_66_U450 ( .A(mult_66_n690), .B(mult_66_n687), .Z(mult_66_n706)
         );
  XOR2_X1 mult_66_U449 ( .A(w[6]), .B(mult_66_n635), .Z(mult_66_n666) );
  XOR2_X1 mult_66_U448 ( .A(w[8]), .B(mult_66_n636), .Z(mult_66_n669) );
  XOR2_X1 mult_66_U447 ( .A(mult_66_n671), .B(mult_66_n691), .Z(mult_66_n686)
         );
  XOR2_X1 mult_66_U446 ( .A(mult_66_n678), .B(mult_66_n679), .Z(wb0_tbs_12_)
         );
  XOR2_X1 mult_66_U445 ( .A(n33), .B(mult_66_n635), .Z(mult_66_n655) );
  XOR2_X1 mult_66_U444 ( .A(mult_66_n646), .B(mult_66_n659), .Z(wb0_tbs_13_)
         );
  XOR2_X1 mult_66_U443 ( .A(w[8]), .B(mult_66_n635), .Z(mult_66_n658) );
  XOR2_X1 mult_66_U442 ( .A(mult_66_n644), .B(mult_66_n645), .Z(wb0_tbs_14_)
         );
endmodule

