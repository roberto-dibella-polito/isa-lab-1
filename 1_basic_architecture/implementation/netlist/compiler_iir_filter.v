/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Wed Nov 18 12:04:14 2020
/////////////////////////////////////////////////////////////


module filter ( DIN, b0, b1, a1, VIN, RST_n, CLK, DOUT, VOUT );
  input [7:0] DIN;
  input [7:0] b0;
  input [7:0] b1;
  input [7:0] a1;
  output [7:0] DOUT;
  input VIN, RST_n, CLK;
  output VOUT;
  wire   delay1, wb0_tbs_9_, wb0_tbs_14_, wb0_tbs_13_, wb0_tbs_12_,
         wb0_tbs_11_, wb0_tbs_10_, ff_tbs_9_, ff_tbs_14_, ff_tbs_13_,
         ff_tbs_12_, ff_tbs_11_, ff_tbs_10_, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         reg_in_n24, reg_in_n23, reg_in_n22, reg_in_n21, reg_in_n20,
         reg_in_n19, reg_in_n18, reg_in_n17, reg_in_n16, reg_in_n15,
         reg_in_n14, reg_in_n13, reg_in_n12, reg_in_n11, reg_in_n10, reg_in_n9,
         reg_in_n8, reg_in_n7, reg_in_n6, reg_in_n5, reg_in_n4, reg_in_n3,
         reg_in_n2, reg_in_n1, reg_filter_n27, reg_filter_n26, reg_filter_n25,
         reg_filter_n24, reg_filter_n23, reg_filter_n22, reg_filter_n21,
         reg_filter_n20, reg_filter_n19, reg_filter_n18, reg_filter_n17,
         reg_filter_n16, reg_filter_n15, reg_filter_n14, reg_filter_n13,
         reg_filter_n12, reg_filter_n11, reg_filter_n10, reg_filter_n9,
         reg_filter_n8, reg_filter_n7, reg_filter_n6, reg_filter_n5,
         reg_filter_n4, reg_filter_n3, reg_filter_n2, reg_filter_n1,
         reg_out_n49, reg_out_n48, reg_out_n47, reg_out_n46, reg_out_n45,
         reg_out_n44, reg_out_n43, reg_out_n42, reg_out_n41, reg_out_n40,
         reg_out_n39, reg_out_n38, reg_out_n37, reg_out_n36, reg_out_n35,
         reg_out_n34, reg_out_n33, reg_out_n32, reg_out_n31, reg_out_n30,
         reg_out_n29, reg_out_n28, reg_out_n27, reg_out_n26, reg_out_n25,
         mult_80_n291, mult_80_n290, mult_80_n289, mult_80_n288, mult_80_n287,
         mult_80_n286, mult_80_n285, mult_80_n284, mult_80_n283, mult_80_n282,
         mult_80_n281, mult_80_n280, mult_80_n279, mult_80_n278, mult_80_n277,
         mult_80_n276, mult_80_n275, mult_80_n274, mult_80_n273, mult_80_n272,
         mult_80_n271, mult_80_n270, mult_80_n269, mult_80_n268, mult_80_n267,
         mult_80_n266, mult_80_n265, mult_80_n264, mult_80_n263, mult_80_n262,
         mult_80_n261, mult_80_n260, mult_80_n259, mult_80_n258, mult_80_n257,
         mult_80_n256, mult_80_n255, mult_80_n254, mult_80_n253, mult_80_n252,
         mult_80_n251, mult_80_n250, mult_80_n249, mult_80_n248, mult_80_n247,
         mult_80_n246, mult_80_n245, mult_80_n244, mult_80_n243, mult_80_n242,
         mult_80_n241, mult_80_n240, mult_80_n239, mult_80_n238, mult_80_n237,
         mult_80_n236, mult_80_n235, mult_80_n234, mult_80_n233, mult_80_n232,
         mult_80_n231, mult_80_n230, mult_80_n229, mult_80_n228, mult_80_n227,
         mult_80_n226, mult_80_n225, mult_80_n224, mult_80_n223, mult_80_n222,
         mult_80_n221, mult_80_n220, mult_80_n219, mult_80_n218, mult_80_n217,
         mult_80_n216, mult_80_n215, mult_80_n214, mult_80_n213, mult_80_n212,
         mult_80_n211, mult_80_n210, mult_80_n209, mult_80_n208, mult_80_n109,
         mult_80_n108, mult_80_n107, mult_80_n106, mult_80_n105, mult_80_n104,
         mult_80_n101, mult_80_n100, mult_80_n99, mult_80_n98, mult_80_n97,
         mult_80_n96, mult_80_n93, mult_80_n92, mult_80_n91, mult_80_n90,
         mult_80_n89, mult_80_n88, mult_80_n87, mult_80_n86, mult_80_n84,
         mult_80_n83, mult_80_n82, mult_80_n80, mult_80_n79, mult_80_n78,
         mult_80_n77, mult_80_n73, mult_80_n72, mult_80_n61, mult_80_n60,
         mult_80_n59, mult_80_n58, mult_80_n57, mult_80_n56, mult_80_n55,
         mult_80_n54, mult_80_n53, mult_80_n52, mult_80_n51, mult_80_n50,
         mult_80_n49, mult_80_n48, mult_80_n47, mult_80_n46, mult_80_n45,
         mult_80_n44, mult_80_n43, mult_80_n42, mult_80_n41, mult_80_n40,
         mult_80_n39, mult_80_n38, mult_80_n37, mult_80_n36, mult_80_n35,
         mult_80_n34, mult_80_n33, mult_80_n32, mult_80_n30, mult_80_n29,
         mult_80_n28, mult_80_n27, mult_80_n26, mult_80_n25, mult_80_n24,
         mult_80_n23, mult_80_n22, mult_80_n20, mult_80_n19, mult_80_n18,
         mult_80_n17, mult_80_n16, mult_80_n6, mult_80_n5, mult_80_n4,
         mult_80_n3, mult_80_n2, mult_66_n390, mult_66_n389, mult_66_n388,
         mult_66_n387, mult_66_n386, mult_66_n385, mult_66_n384, mult_66_n383,
         mult_66_n382, mult_66_n381, mult_66_n380, mult_66_n379, mult_66_n378,
         mult_66_n377, mult_66_n376, mult_66_n375, mult_66_n374, mult_66_n373,
         mult_66_n372, mult_66_n371, mult_66_n370, mult_66_n369, mult_66_n368,
         mult_66_n367, mult_66_n366, mult_66_n365, mult_66_n364, mult_66_n363,
         mult_66_n362, mult_66_n361, mult_66_n360, mult_66_n359, mult_66_n358,
         mult_66_n357, mult_66_n356, mult_66_n355, mult_66_n354, mult_66_n353,
         mult_66_n352, mult_66_n351, mult_66_n350, mult_66_n349, mult_66_n348,
         mult_66_n347, mult_66_n346, mult_66_n345, mult_66_n344, mult_66_n343,
         mult_66_n342, mult_66_n341, mult_66_n340, mult_66_n339, mult_66_n338,
         mult_66_n337, mult_66_n336, mult_66_n335, mult_66_n334, mult_66_n333,
         mult_66_n332, mult_66_n331, mult_66_n330, mult_66_n329, mult_66_n328,
         mult_66_n327, mult_66_n326, mult_66_n325, mult_66_n324, mult_66_n323,
         mult_66_n322, mult_66_n321, mult_66_n320, mult_66_n319, mult_66_n318,
         mult_66_n317, mult_66_n316, mult_66_n315, mult_66_n314, mult_66_n313,
         mult_66_n312, mult_66_n311, mult_66_n310, mult_66_n309, mult_66_n308,
         mult_66_n307, mult_66_n306, mult_66_n305, mult_66_n304, mult_66_n303,
         mult_66_n302, mult_66_n301, mult_66_n300, mult_66_n299, mult_66_n298,
         mult_66_n297, mult_66_n296, mult_66_n295, mult_66_n294, mult_66_n293,
         mult_66_n292, mult_66_n291, mult_66_n290, mult_66_n289, mult_66_n288,
         mult_66_n287, mult_66_n286, mult_66_n285, mult_66_n284, mult_66_n283,
         mult_66_n282, mult_66_n281, mult_66_n280, mult_66_n279, mult_66_n278,
         mult_66_n277, mult_66_n276, mult_66_n275, mult_66_n274, mult_66_n273,
         mult_66_n272, mult_66_n271, mult_66_n270, mult_66_n269, mult_66_n268,
         mult_66_n267, mult_66_n266, mult_66_n265, mult_66_n264, mult_66_n263,
         mult_66_n262, mult_66_n261, mult_66_n260, mult_66_n259, mult_66_n258,
         mult_66_n257, mult_66_n256, mult_66_n255, mult_66_n254, mult_66_n253,
         mult_66_n252, mult_66_n251, mult_66_n250, mult_66_n249, mult_66_n248,
         mult_66_n247, mult_66_n246, mult_66_n245, mult_66_n244, mult_66_n243,
         mult_66_n242, mult_66_n241, mult_66_n240, mult_66_n239, mult_66_n238,
         mult_66_n237, mult_66_n236, mult_66_n235, mult_66_n234, mult_66_n233,
         mult_66_n232, mult_66_n231, mult_66_n230, mult_66_n229, mult_66_n228,
         mult_66_n227, mult_66_n226, mult_66_n225, mult_66_n224, mult_66_n223,
         mult_66_n222, mult_66_n221, mult_66_n220, mult_66_n219, mult_66_n218,
         mult_66_n217, mult_66_n216, mult_66_n215, mult_66_n214, mult_66_n213,
         mult_66_n212, mult_66_n211, mult_66_n210, mult_66_n209, mult_66_n208,
         mult_66_n109, mult_66_n108, mult_66_n107, mult_66_n106, mult_66_n105,
         mult_66_n104, mult_66_n101, mult_66_n100, mult_66_n99, mult_66_n98,
         mult_66_n97, mult_66_n96, mult_66_n93, mult_66_n92, mult_66_n91,
         mult_66_n90, mult_66_n89, mult_66_n88, mult_66_n87, mult_66_n86,
         mult_66_n84, mult_66_n83, mult_66_n82, mult_66_n80, mult_66_n79,
         mult_66_n78, mult_66_n77, mult_66_n73, mult_66_n72, mult_66_n59,
         mult_66_n58, mult_66_n57, mult_66_n56, mult_66_n55, mult_66_n54,
         mult_66_n53, mult_66_n52, mult_66_n51, mult_66_n50, mult_66_n49,
         mult_66_n48, mult_66_n47, mult_66_n46, mult_66_n45, mult_66_n44,
         mult_66_n43, mult_66_n42, mult_66_n41, mult_66_n40, mult_66_n39,
         mult_66_n38, mult_66_n37, mult_66_n36, mult_66_n35, mult_66_n34,
         mult_66_n33, mult_66_n32, mult_66_n30, mult_66_n29, mult_66_n28,
         mult_66_n27, mult_66_n26, mult_66_n25, mult_66_n24, mult_66_n23,
         mult_66_n22, mult_66_n20, mult_66_n19, mult_66_n18, mult_66_n17,
         mult_66_n16, mult_66_n6, mult_66_n5, mult_66_n4, mult_66_n3,
         mult_77_n396, mult_77_n395, mult_77_n394, mult_77_n393, mult_77_n392,
         mult_77_n391, mult_77_n390, mult_77_n389, mult_77_n388, mult_77_n387,
         mult_77_n386, mult_77_n385, mult_77_n384, mult_77_n383, mult_77_n382,
         mult_77_n381, mult_77_n380, mult_77_n379, mult_77_n378, mult_77_n377,
         mult_77_n376, mult_77_n375, mult_77_n374, mult_77_n373, mult_77_n372,
         mult_77_n371, mult_77_n370, mult_77_n369, mult_77_n368, mult_77_n367,
         mult_77_n366, mult_77_n365, mult_77_n364, mult_77_n363, mult_77_n362,
         mult_77_n361, mult_77_n360, mult_77_n359, mult_77_n358, mult_77_n357,
         mult_77_n356, mult_77_n355, mult_77_n354, mult_77_n353, mult_77_n352,
         mult_77_n351, mult_77_n350, mult_77_n349, mult_77_n348, mult_77_n347,
         mult_77_n346, mult_77_n345, mult_77_n344, mult_77_n343, mult_77_n342,
         mult_77_n341, mult_77_n340, mult_77_n339, mult_77_n338, mult_77_n337,
         mult_77_n336, mult_77_n335, mult_77_n334, mult_77_n333, mult_77_n332,
         mult_77_n331, mult_77_n330, mult_77_n329, mult_77_n328, mult_77_n327,
         mult_77_n326, mult_77_n325, mult_77_n324, mult_77_n323, mult_77_n322,
         mult_77_n321, mult_77_n320, mult_77_n319, mult_77_n318, mult_77_n317,
         mult_77_n316, mult_77_n315, mult_77_n314, mult_77_n313, mult_77_n312,
         mult_77_n311, mult_77_n310, mult_77_n309, mult_77_n308, mult_77_n307,
         mult_77_n306, mult_77_n305, mult_77_n304, mult_77_n303, mult_77_n302,
         mult_77_n301, mult_77_n300, mult_77_n299, mult_77_n298, mult_77_n297,
         mult_77_n296, mult_77_n295, mult_77_n294, mult_77_n293, mult_77_n292,
         mult_77_n291, mult_77_n290, mult_77_n289, mult_77_n288, mult_77_n287,
         mult_77_n286, mult_77_n285, mult_77_n284, mult_77_n283, mult_77_n282,
         mult_77_n281, mult_77_n280, mult_77_n279, mult_77_n278, mult_77_n277,
         mult_77_n276, mult_77_n275, mult_77_n274, mult_77_n273, mult_77_n272,
         mult_77_n271, mult_77_n270, mult_77_n269, mult_77_n268, mult_77_n267,
         mult_77_n266, mult_77_n265, mult_77_n264, mult_77_n263, mult_77_n262,
         mult_77_n261, mult_77_n260, mult_77_n259, mult_77_n258, mult_77_n257,
         mult_77_n256, mult_77_n255, mult_77_n254, mult_77_n253, mult_77_n252,
         mult_77_n251, mult_77_n250, mult_77_n249, mult_77_n248, mult_77_n247,
         mult_77_n246, mult_77_n245, mult_77_n244, mult_77_n243, mult_77_n242,
         mult_77_n241, mult_77_n240, mult_77_n239, mult_77_n238, mult_77_n237,
         mult_77_n236, mult_77_n235, mult_77_n234, mult_77_n233, mult_77_n232,
         mult_77_n231, mult_77_n230, mult_77_n229, mult_77_n228, mult_77_n227,
         mult_77_n226, mult_77_n225, mult_77_n224, mult_77_n223, mult_77_n222,
         mult_77_n221, mult_77_n220, mult_77_n219, mult_77_n218, mult_77_n217,
         mult_77_n216, mult_77_n215, mult_77_n214, mult_77_n213, mult_77_n212,
         mult_77_n112, mult_77_n111, mult_77_n110, mult_77_n109, mult_77_n108,
         mult_77_n107, mult_77_n104, mult_77_n103, mult_77_n102, mult_77_n101,
         mult_77_n100, mult_77_n99, mult_77_n96, mult_77_n95, mult_77_n94,
         mult_77_n93, mult_77_n92, mult_77_n91, mult_77_n90, mult_77_n89,
         mult_77_n87, mult_77_n86, mult_77_n85, mult_77_n83, mult_77_n82,
         mult_77_n81, mult_77_n80, mult_77_n76, mult_77_n75, mult_77_n62,
         mult_77_n61, mult_77_n60, mult_77_n59, mult_77_n58, mult_77_n57,
         mult_77_n55, mult_77_n54, mult_77_n52, mult_77_n51, mult_77_n50,
         mult_77_n49, mult_77_n48, mult_77_n47, mult_77_n45, mult_77_n44,
         mult_77_n43, mult_77_n42, mult_77_n40, mult_77_n39, mult_77_n38,
         mult_77_n37, mult_77_n36, mult_77_n35, mult_77_n34, mult_77_n32,
         mult_77_n31, mult_77_n30, mult_77_n29, mult_77_n28, mult_77_n27,
         mult_77_n26, mult_77_n25, mult_77_n24, mult_77_n22, mult_77_n21,
         mult_77_n20, mult_77_n19, mult_77_n18, mult_77_n17, mult_77_n8,
         mult_77_n7, mult_77_n6, mult_77_n5, mult_77_n4, mult_77_n3,
         mult_77_n2, add_83_n10, add_83_n8, add_83_n7, add_83_n6, add_83_n5,
         add_83_n4, add_83_n3, add_83_n2, add_83_n1;
  wire   [7:0] x;
  wire   [8:0] w;
  wire   [8:0] w_out;
  wire   [15:9] fb_tbs;
  wire   [5:0] y_tbs;
  wire   [8:1] sub_65_carry;
  wire   [5:2] add_83_carry;

  FA_X1 sub_65_U2_1 ( .A(x[1]), .B(n48), .CI(sub_65_carry[1]), .CO(
        sub_65_carry[2]), .S(w[1]) );
  CLKBUF_X1 U5 ( .A(n14), .Z(n3) );
  INV_X1 U6 ( .A(x[6]), .ZN(n28) );
  NAND3_X1 U7 ( .A1(n22), .A2(n23), .A3(n24), .ZN(n4) );
  NAND3_X1 U8 ( .A1(n22), .A2(n23), .A3(n24), .ZN(n5) );
  NAND3_X1 U9 ( .A1(n22), .A2(n23), .A3(n24), .ZN(sub_65_carry[5]) );
  XNOR2_X1 U10 ( .A(n25), .B(x[3]), .ZN(n12) );
  OR2_X1 U11 ( .A1(fb_tbs[12]), .A2(n6), .ZN(n38) );
  INV_X1 U12 ( .A(x[3]), .ZN(n6) );
  NAND3_X1 U13 ( .A1(n43), .A2(n42), .A3(n41), .ZN(n7) );
  NAND3_X1 U14 ( .A1(n42), .A2(n43), .A3(n41), .ZN(n8) );
  BUF_X2 U15 ( .A(w[5]), .Z(n9) );
  XNOR2_X1 U16 ( .A(n10), .B(n16), .ZN(w[7]) );
  AND3_X1 U17 ( .A1(n44), .A2(n45), .A3(n46), .ZN(n10) );
  CLKBUF_X1 U18 ( .A(sub_65_carry[2]), .Z(n11) );
  XNOR2_X2 U19 ( .A(n50), .B(n12), .ZN(w[3]) );
  XNOR2_X1 U20 ( .A(n3), .B(n13), .ZN(w[4]) );
  XNOR2_X1 U21 ( .A(n51), .B(x[4]), .ZN(n13) );
  NAND3_X1 U22 ( .A1(n37), .A2(n38), .A3(n39), .ZN(n14) );
  NAND3_X1 U23 ( .A1(n38), .A2(n37), .A3(n39), .ZN(sub_65_carry[4]) );
  CLKBUF_X1 U24 ( .A(n52), .Z(n15) );
  CLKBUF_X1 U25 ( .A(w[6]), .Z(n30) );
  XOR2_X1 U26 ( .A(n52), .B(x[7]), .Z(n16) );
  NAND2_X1 U27 ( .A1(n21), .A2(n15), .ZN(n17) );
  NAND2_X1 U28 ( .A1(n20), .A2(x[7]), .ZN(n18) );
  NAND2_X1 U29 ( .A1(n15), .A2(x[7]), .ZN(n19) );
  NAND3_X1 U30 ( .A1(n18), .A2(n17), .A3(n19), .ZN(sub_65_carry[8]) );
  NAND3_X1 U31 ( .A1(n44), .A2(n46), .A3(n45), .ZN(n20) );
  NAND3_X1 U32 ( .A1(n46), .A2(n44), .A3(n45), .ZN(n21) );
  NAND2_X1 U33 ( .A1(n14), .A2(n51), .ZN(n22) );
  NAND2_X1 U34 ( .A1(sub_65_carry[4]), .A2(x[4]), .ZN(n23) );
  NAND2_X1 U35 ( .A1(n51), .A2(x[4]), .ZN(n24) );
  NAND3_X1 U36 ( .A1(n32), .A2(n33), .A3(n34), .ZN(n25) );
  CLKBUF_X1 U37 ( .A(w[8]), .Z(n26) );
  CLKBUF_X1 U38 ( .A(w[4]), .Z(n27) );
  XNOR2_X1 U39 ( .A(sub_65_carry[8]), .B(n35), .ZN(w[8]) );
  XNOR2_X1 U40 ( .A(fb_tbs[15]), .B(n28), .ZN(n29) );
  XNOR2_X1 U41 ( .A(n29), .B(n8), .ZN(w[6]) );
  XOR2_X1 U42 ( .A(n49), .B(x[2]), .Z(n31) );
  XOR2_X1 U43 ( .A(n11), .B(n31), .Z(w[2]) );
  NAND2_X1 U44 ( .A1(sub_65_carry[2]), .A2(n49), .ZN(n32) );
  NAND2_X1 U45 ( .A1(sub_65_carry[2]), .A2(x[2]), .ZN(n33) );
  NAND2_X1 U46 ( .A1(n49), .A2(x[2]), .ZN(n34) );
  NAND3_X1 U47 ( .A1(n33), .A2(n32), .A3(n34), .ZN(sub_65_carry[3]) );
  XNOR2_X1 U48 ( .A(n15), .B(x[7]), .ZN(n35) );
  INV_X1 U49 ( .A(fb_tbs[14]), .ZN(n36) );
  INV_X1 U50 ( .A(fb_tbs[15]), .ZN(n52) );
  NAND2_X1 U51 ( .A1(n50), .A2(sub_65_carry[3]), .ZN(n37) );
  NAND2_X1 U52 ( .A1(sub_65_carry[3]), .A2(x[3]), .ZN(n39) );
  NAND3_X1 U53 ( .A1(n42), .A2(n43), .A3(n41), .ZN(sub_65_carry[6]) );
  XOR2_X1 U54 ( .A(x[5]), .B(n36), .Z(n40) );
  XOR2_X1 U55 ( .A(n40), .B(n5), .Z(w[5]) );
  NAND2_X1 U56 ( .A1(x[5]), .A2(n36), .ZN(n41) );
  NAND2_X1 U57 ( .A1(x[5]), .A2(n4), .ZN(n42) );
  NAND2_X1 U58 ( .A1(n36), .A2(sub_65_carry[5]), .ZN(n43) );
  NAND2_X1 U59 ( .A1(n52), .A2(x[6]), .ZN(n44) );
  NAND2_X1 U60 ( .A1(sub_65_carry[6]), .A2(x[6]), .ZN(n45) );
  NAND2_X1 U61 ( .A1(n52), .A2(n7), .ZN(n46) );
  INV_X1 U62 ( .A(fb_tbs[9]), .ZN(n47) );
  INV_X1 U63 ( .A(fb_tbs[12]), .ZN(n50) );
  INV_X1 U64 ( .A(fb_tbs[13]), .ZN(n51) );
  INV_X1 U65 ( .A(fb_tbs[11]), .ZN(n49) );
  INV_X1 U66 ( .A(fb_tbs[10]), .ZN(n48) );
  OR2_X1 U67 ( .A1(n47), .A2(x[0]), .ZN(sub_65_carry[1]) );
  XNOR2_X1 U68 ( .A(x[0]), .B(n47), .ZN(w[0]) );
  NAND2_X1 reg_in_U17 ( .A1(DIN[7]), .A2(VIN), .ZN(reg_in_n8) );
  OAI21_X1 reg_in_U16 ( .B1(reg_in_n16), .B2(VIN), .A(reg_in_n8), .ZN(
        reg_in_n24) );
  NAND2_X1 reg_in_U15 ( .A1(DIN[6]), .A2(VIN), .ZN(reg_in_n7) );
  OAI21_X1 reg_in_U14 ( .B1(reg_in_n15), .B2(VIN), .A(reg_in_n7), .ZN(
        reg_in_n23) );
  NAND2_X1 reg_in_U13 ( .A1(DIN[5]), .A2(VIN), .ZN(reg_in_n6) );
  OAI21_X1 reg_in_U12 ( .B1(reg_in_n14), .B2(VIN), .A(reg_in_n6), .ZN(
        reg_in_n22) );
  NAND2_X1 reg_in_U11 ( .A1(DIN[4]), .A2(VIN), .ZN(reg_in_n5) );
  OAI21_X1 reg_in_U10 ( .B1(reg_in_n13), .B2(VIN), .A(reg_in_n5), .ZN(
        reg_in_n21) );
  NAND2_X1 reg_in_U9 ( .A1(DIN[3]), .A2(VIN), .ZN(reg_in_n4) );
  OAI21_X1 reg_in_U8 ( .B1(reg_in_n12), .B2(VIN), .A(reg_in_n4), .ZN(
        reg_in_n20) );
  NAND2_X1 reg_in_U7 ( .A1(DIN[2]), .A2(VIN), .ZN(reg_in_n3) );
  OAI21_X1 reg_in_U6 ( .B1(reg_in_n11), .B2(VIN), .A(reg_in_n3), .ZN(
        reg_in_n19) );
  NAND2_X1 reg_in_U5 ( .A1(DIN[1]), .A2(VIN), .ZN(reg_in_n2) );
  OAI21_X1 reg_in_U4 ( .B1(reg_in_n10), .B2(VIN), .A(reg_in_n2), .ZN(
        reg_in_n18) );
  NAND2_X1 reg_in_U3 ( .A1(VIN), .A2(DIN[0]), .ZN(reg_in_n1) );
  OAI21_X1 reg_in_U2 ( .B1(reg_in_n9), .B2(VIN), .A(reg_in_n1), .ZN(reg_in_n17) );
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
  NAND2_X1 reg_filter_U19 ( .A1(n30), .A2(delay1), .ZN(reg_filter_n7) );
  NAND2_X1 reg_filter_U18 ( .A1(w[2]), .A2(delay1), .ZN(reg_filter_n3) );
  OAI21_X1 reg_filter_U17 ( .B1(reg_filter_n12), .B2(delay1), .A(reg_filter_n3), .ZN(reg_filter_n21) );
  NAND2_X1 reg_filter_U16 ( .A1(w[1]), .A2(delay1), .ZN(reg_filter_n2) );
  OAI21_X1 reg_filter_U15 ( .B1(reg_filter_n11), .B2(delay1), .A(reg_filter_n2), .ZN(reg_filter_n20) );
  NAND2_X1 reg_filter_U14 ( .A1(w[7]), .A2(delay1), .ZN(reg_filter_n8) );
  OAI21_X1 reg_filter_U13 ( .B1(reg_filter_n17), .B2(delay1), .A(reg_filter_n8), .ZN(reg_filter_n26) );
  OAI21_X1 reg_filter_U12 ( .B1(reg_filter_n16), .B2(delay1), .A(reg_filter_n7), .ZN(reg_filter_n25) );
  NAND2_X1 reg_filter_U11 ( .A1(n9), .A2(delay1), .ZN(reg_filter_n6) );
  OAI21_X1 reg_filter_U10 ( .B1(reg_filter_n15), .B2(delay1), .A(reg_filter_n6), .ZN(reg_filter_n24) );
  NAND2_X1 reg_filter_U9 ( .A1(n27), .A2(delay1), .ZN(reg_filter_n5) );
  OAI21_X1 reg_filter_U8 ( .B1(reg_filter_n14), .B2(delay1), .A(reg_filter_n5), 
        .ZN(reg_filter_n23) );
  NAND2_X1 reg_filter_U7 ( .A1(w[3]), .A2(delay1), .ZN(reg_filter_n4) );
  OAI21_X1 reg_filter_U6 ( .B1(reg_filter_n13), .B2(delay1), .A(reg_filter_n4), 
        .ZN(reg_filter_n22) );
  NAND2_X1 reg_filter_U5 ( .A1(delay1), .A2(w[0]), .ZN(reg_filter_n1) );
  OAI21_X1 reg_filter_U4 ( .B1(reg_filter_n10), .B2(delay1), .A(reg_filter_n1), 
        .ZN(reg_filter_n19) );
  NAND2_X1 reg_filter_U3 ( .A1(n26), .A2(delay1), .ZN(reg_filter_n9) );
  OAI21_X1 reg_filter_U2 ( .B1(reg_filter_n18), .B2(delay1), .A(reg_filter_n9), 
        .ZN(reg_filter_n27) );
  DFFR_X1 reg_filter_Q_reg_0_ ( .D(reg_filter_n19), .CK(CLK), .RN(RST_n), .Q(
        w_out[0]), .QN(reg_filter_n10) );
  DFFR_X1 reg_filter_Q_reg_1_ ( .D(reg_filter_n20), .CK(CLK), .RN(RST_n), .Q(
        w_out[1]), .QN(reg_filter_n11) );
  DFFR_X1 reg_filter_Q_reg_2_ ( .D(reg_filter_n21), .CK(CLK), .RN(RST_n), .Q(
        w_out[2]), .QN(reg_filter_n12) );
  DFFR_X1 reg_filter_Q_reg_3_ ( .D(reg_filter_n22), .CK(CLK), .RN(RST_n), .Q(
        w_out[3]), .QN(reg_filter_n13) );
  DFFR_X1 reg_filter_Q_reg_4_ ( .D(reg_filter_n23), .CK(CLK), .RN(RST_n), .Q(
        w_out[4]), .QN(reg_filter_n14) );
  DFFR_X1 reg_filter_Q_reg_5_ ( .D(reg_filter_n24), .CK(CLK), .RN(RST_n), .Q(
        w_out[5]), .QN(reg_filter_n15) );
  DFFR_X1 reg_filter_Q_reg_6_ ( .D(reg_filter_n25), .CK(CLK), .RN(RST_n), .Q(
        w_out[6]), .QN(reg_filter_n16) );
  DFFR_X1 reg_filter_Q_reg_7_ ( .D(reg_filter_n26), .CK(CLK), .RN(RST_n), .Q(
        w_out[7]), .QN(reg_filter_n17) );
  DFFR_X1 reg_filter_Q_reg_8_ ( .D(reg_filter_n27), .CK(CLK), .RN(RST_n), .Q(
        w_out[8]), .QN(reg_filter_n18) );
  NAND2_X1 reg_out_U18 ( .A1(y_tbs[5]), .A2(1'b1), .ZN(reg_out_n42) );
  NAND2_X1 reg_out_U17 ( .A1(reg_out_n42), .A2(reg_out_n25), .ZN(reg_out_n26)
         );
  OR2_X1 reg_out_U16 ( .A1(reg_out_n34), .A2(1'b1), .ZN(reg_out_n25) );
  OAI21_X1 reg_out_U15 ( .B1(reg_out_n36), .B2(1'b1), .A(reg_out_n44), .ZN(
        reg_out_n28) );
  NAND2_X1 reg_out_U14 ( .A1(1'b0), .A2(1'b1), .ZN(reg_out_n48) );
  OAI21_X1 reg_out_U13 ( .B1(reg_out_n40), .B2(1'b1), .A(reg_out_n48), .ZN(
        reg_out_n32) );
  NAND2_X1 reg_out_U12 ( .A1(1'b1), .A2(1'b0), .ZN(reg_out_n49) );
  OAI21_X1 reg_out_U11 ( .B1(reg_out_n41), .B2(1'b1), .A(reg_out_n49), .ZN(
        reg_out_n33) );
  NAND2_X1 reg_out_U10 ( .A1(y_tbs[0]), .A2(1'b1), .ZN(reg_out_n47) );
  OAI21_X1 reg_out_U9 ( .B1(reg_out_n39), .B2(1'b1), .A(reg_out_n47), .ZN(
        reg_out_n31) );
  NAND2_X1 reg_out_U8 ( .A1(y_tbs[1]), .A2(1'b1), .ZN(reg_out_n46) );
  OAI21_X1 reg_out_U7 ( .B1(reg_out_n38), .B2(1'b1), .A(reg_out_n46), .ZN(
        reg_out_n30) );
  NAND2_X1 reg_out_U6 ( .A1(y_tbs[2]), .A2(1'b1), .ZN(reg_out_n45) );
  OAI21_X1 reg_out_U5 ( .B1(reg_out_n37), .B2(1'b1), .A(reg_out_n45), .ZN(
        reg_out_n29) );
  NAND2_X1 reg_out_U4 ( .A1(y_tbs[3]), .A2(1'b1), .ZN(reg_out_n44) );
  NAND2_X1 reg_out_U3 ( .A1(y_tbs[4]), .A2(1'b1), .ZN(reg_out_n43) );
  OAI21_X1 reg_out_U2 ( .B1(reg_out_n35), .B2(1'b1), .A(reg_out_n43), .ZN(
        reg_out_n27) );
  DFFR_X2 reg_out_Q_reg_7_ ( .D(reg_out_n26), .CK(CLK), .RN(RST_n), .Q(DOUT[7]), .QN(reg_out_n34) );
  DFFR_X1 reg_out_Q_reg_5_ ( .D(reg_out_n28), .CK(CLK), .RN(RST_n), .Q(DOUT[5]), .QN(reg_out_n36) );
  DFFR_X1 reg_out_Q_reg_6_ ( .D(reg_out_n27), .CK(CLK), .RN(RST_n), .Q(DOUT[6]), .QN(reg_out_n35) );
  DFFR_X1 reg_out_Q_reg_0_ ( .D(reg_out_n33), .CK(CLK), .RN(RST_n), .Q(DOUT[0]), .QN(reg_out_n41) );
  DFFR_X1 reg_out_Q_reg_1_ ( .D(reg_out_n32), .CK(CLK), .RN(RST_n), .Q(DOUT[1]), .QN(reg_out_n40) );
  DFFR_X1 reg_out_Q_reg_2_ ( .D(reg_out_n31), .CK(CLK), .RN(RST_n), .Q(DOUT[2]), .QN(reg_out_n39) );
  DFFR_X1 reg_out_Q_reg_3_ ( .D(reg_out_n30), .CK(CLK), .RN(RST_n), .Q(DOUT[3]), .QN(reg_out_n38) );
  DFFR_X1 reg_out_Q_reg_4_ ( .D(reg_out_n29), .CK(CLK), .RN(RST_n), .Q(DOUT[4]), .QN(reg_out_n37) );
  DFFR_X1 f_d1_Q_reg ( .D(VIN), .CK(CLK), .RN(RST_n), .Q(delay1) );
  DFFR_X1 f_d2_Q_reg ( .D(delay1), .CK(CLK), .RN(RST_n), .Q(VOUT) );
  XOR2_X1 mult_80_U281 ( .A(mult_80_n219), .B(b1[3]), .Z(mult_80_n290) );
  XOR2_X1 mult_80_U280 ( .A(b1[3]), .B(b1[2]), .Z(mult_80_n291) );
  NAND2_X1 mult_80_U279 ( .A1(mult_80_n235), .A2(mult_80_n291), .ZN(
        mult_80_n234) );
  XOR2_X1 mult_80_U278 ( .A(w_out[2]), .B(mult_80_n224), .Z(mult_80_n233) );
  OAI22_X1 mult_80_U277 ( .A1(mult_80_n290), .A2(mult_80_n234), .B1(
        mult_80_n235), .B2(mult_80_n233), .ZN(mult_80_n100) );
  XOR2_X1 mult_80_U276 ( .A(mult_80_n221), .B(b1[3]), .Z(mult_80_n289) );
  OAI22_X1 mult_80_U275 ( .A1(mult_80_n289), .A2(mult_80_n234), .B1(
        mult_80_n235), .B2(mult_80_n290), .ZN(mult_80_n101) );
  XNOR2_X1 mult_80_U274 ( .A(w_out[8]), .B(b1[1]), .ZN(mult_80_n287) );
  NAND2_X1 mult_80_U273 ( .A1(b1[1]), .A2(mult_80_n226), .ZN(mult_80_n275) );
  OAI22_X1 mult_80_U272 ( .A1(mult_80_n226), .A2(mult_80_n287), .B1(
        mult_80_n275), .B2(mult_80_n287), .ZN(mult_80_n288) );
  XNOR2_X1 mult_80_U271 ( .A(w_out[7]), .B(b1[1]), .ZN(mult_80_n286) );
  OAI22_X1 mult_80_U270 ( .A1(mult_80_n286), .A2(mult_80_n275), .B1(
        mult_80_n287), .B2(mult_80_n226), .ZN(mult_80_n104) );
  XNOR2_X1 mult_80_U269 ( .A(w_out[6]), .B(b1[1]), .ZN(mult_80_n285) );
  OAI22_X1 mult_80_U268 ( .A1(mult_80_n285), .A2(mult_80_n275), .B1(
        mult_80_n286), .B2(mult_80_n226), .ZN(mult_80_n105) );
  XNOR2_X1 mult_80_U267 ( .A(w_out[5]), .B(b1[1]), .ZN(mult_80_n284) );
  OAI22_X1 mult_80_U266 ( .A1(mult_80_n284), .A2(mult_80_n275), .B1(
        mult_80_n285), .B2(mult_80_n226), .ZN(mult_80_n106) );
  XNOR2_X1 mult_80_U265 ( .A(w_out[4]), .B(b1[1]), .ZN(mult_80_n283) );
  OAI22_X1 mult_80_U264 ( .A1(mult_80_n283), .A2(mult_80_n275), .B1(
        mult_80_n284), .B2(mult_80_n226), .ZN(mult_80_n107) );
  XNOR2_X1 mult_80_U263 ( .A(w_out[3]), .B(b1[1]), .ZN(mult_80_n282) );
  OAI22_X1 mult_80_U262 ( .A1(mult_80_n282), .A2(mult_80_n275), .B1(
        mult_80_n283), .B2(mult_80_n226), .ZN(mult_80_n108) );
  XNOR2_X1 mult_80_U261 ( .A(w_out[2]), .B(b1[1]), .ZN(mult_80_n276) );
  OAI22_X1 mult_80_U260 ( .A1(mult_80_n276), .A2(mult_80_n275), .B1(
        mult_80_n282), .B2(mult_80_n226), .ZN(mult_80_n109) );
  XOR2_X1 mult_80_U259 ( .A(w_out[7]), .B(mult_80_n223), .Z(mult_80_n251) );
  XOR2_X1 mult_80_U258 ( .A(b1[5]), .B(b1[4]), .Z(mult_80_n281) );
  NAND2_X1 mult_80_U257 ( .A1(mult_80_n242), .A2(mult_80_n281), .ZN(
        mult_80_n244) );
  XOR2_X1 mult_80_U256 ( .A(w_out[8]), .B(mult_80_n223), .Z(mult_80_n253) );
  OAI22_X1 mult_80_U255 ( .A1(mult_80_n251), .A2(mult_80_n244), .B1(
        mult_80_n242), .B2(mult_80_n253), .ZN(mult_80_n20) );
  XOR2_X1 mult_80_U254 ( .A(w_out[7]), .B(mult_80_n224), .Z(mult_80_n279) );
  XOR2_X1 mult_80_U253 ( .A(w_out[8]), .B(mult_80_n224), .Z(mult_80_n241) );
  OAI22_X1 mult_80_U252 ( .A1(mult_80_n279), .A2(mult_80_n234), .B1(
        mult_80_n235), .B2(mult_80_n241), .ZN(mult_80_n30) );
  XOR2_X1 mult_80_U251 ( .A(w_out[2]), .B(mult_80_n222), .Z(mult_80_n256) );
  XOR2_X1 mult_80_U250 ( .A(b1[7]), .B(b1[6]), .Z(mult_80_n280) );
  NAND2_X1 mult_80_U249 ( .A1(mult_80_n230), .A2(mult_80_n280), .ZN(
        mult_80_n231) );
  XOR2_X1 mult_80_U248 ( .A(w_out[3]), .B(mult_80_n222), .Z(mult_80_n257) );
  OAI22_X1 mult_80_U247 ( .A1(mult_80_n256), .A2(mult_80_n231), .B1(
        mult_80_n230), .B2(mult_80_n257), .ZN(mult_80_n277) );
  XOR2_X1 mult_80_U246 ( .A(w_out[6]), .B(mult_80_n224), .Z(mult_80_n239) );
  OAI22_X1 mult_80_U245 ( .A1(mult_80_n239), .A2(mult_80_n234), .B1(
        mult_80_n235), .B2(mult_80_n279), .ZN(mult_80_n278) );
  OR2_X1 mult_80_U244 ( .A1(mult_80_n277), .A2(mult_80_n278), .ZN(mult_80_n36)
         );
  XNOR2_X1 mult_80_U243 ( .A(mult_80_n277), .B(mult_80_n278), .ZN(mult_80_n37)
         );
  OAI22_X1 mult_80_U242 ( .A1(w_out[1]), .A2(mult_80_n275), .B1(mult_80_n276), 
        .B2(mult_80_n226), .ZN(mult_80_n274) );
  NAND3_X1 mult_80_U241 ( .A1(mult_80_n274), .A2(mult_80_n219), .A3(b1[1]), 
        .ZN(mult_80_n272) );
  NAND2_X1 mult_80_U240 ( .A1(mult_80_n225), .A2(mult_80_n274), .ZN(
        mult_80_n273) );
  MUX2_X1 mult_80_U239 ( .A(mult_80_n272), .B(mult_80_n273), .S(w_out[0]), .Z(
        mult_80_n269) );
  NAND3_X1 mult_80_U238 ( .A1(mult_80_n225), .A2(mult_80_n221), .A3(b1[3]), 
        .ZN(mult_80_n271) );
  OAI21_X1 mult_80_U237 ( .B1(mult_80_n224), .B2(mult_80_n234), .A(
        mult_80_n271), .ZN(mult_80_n270) );
  OAI222_X1 mult_80_U236 ( .A1(mult_80_n269), .A2(mult_80_n218), .B1(
        mult_80_n220), .B2(mult_80_n269), .C1(mult_80_n220), .C2(mult_80_n218), 
        .ZN(mult_80_n268) );
  AOI222_X1 mult_80_U235 ( .A1(mult_80_n268), .A2(mult_80_n59), .B1(
        mult_80_n268), .B2(mult_80_n60), .C1(mult_80_n60), .C2(mult_80_n59), 
        .ZN(mult_80_n267) );
  AOI222_X1 mult_80_U234 ( .A1(mult_80_n217), .A2(mult_80_n55), .B1(
        mult_80_n217), .B2(mult_80_n58), .C1(mult_80_n58), .C2(mult_80_n55), 
        .ZN(mult_80_n266) );
  AOI222_X1 mult_80_U233 ( .A1(mult_80_n216), .A2(mult_80_n51), .B1(
        mult_80_n216), .B2(mult_80_n54), .C1(mult_80_n54), .C2(mult_80_n51), 
        .ZN(mult_80_n265) );
  AOI222_X1 mult_80_U232 ( .A1(mult_80_n215), .A2(mult_80_n45), .B1(
        mult_80_n215), .B2(mult_80_n50), .C1(mult_80_n50), .C2(mult_80_n45), 
        .ZN(mult_80_n264) );
  AOI222_X1 mult_80_U231 ( .A1(mult_80_n214), .A2(mult_80_n39), .B1(
        mult_80_n214), .B2(mult_80_n44), .C1(mult_80_n44), .C2(mult_80_n39), 
        .ZN(mult_80_n263) );
  OR3_X1 mult_80_U230 ( .A1(mult_80_n230), .A2(w_out[0]), .A3(mult_80_n222), 
        .ZN(mult_80_n262) );
  OAI21_X1 mult_80_U229 ( .B1(mult_80_n222), .B2(mult_80_n231), .A(
        mult_80_n262), .ZN(mult_80_n72) );
  OR3_X1 mult_80_U228 ( .A1(mult_80_n242), .A2(w_out[0]), .A3(mult_80_n223), 
        .ZN(mult_80_n261) );
  OAI21_X1 mult_80_U227 ( .B1(mult_80_n223), .B2(mult_80_n244), .A(
        mult_80_n261), .ZN(mult_80_n73) );
  XOR2_X1 mult_80_U226 ( .A(w_out[6]), .B(mult_80_n222), .Z(mult_80_n260) );
  XNOR2_X1 mult_80_U225 ( .A(w_out[7]), .B(b1[7]), .ZN(mult_80_n232) );
  OAI22_X1 mult_80_U224 ( .A1(mult_80_n260), .A2(mult_80_n231), .B1(
        mult_80_n230), .B2(mult_80_n232), .ZN(mult_80_n77) );
  XOR2_X1 mult_80_U223 ( .A(w_out[5]), .B(mult_80_n222), .Z(mult_80_n259) );
  OAI22_X1 mult_80_U222 ( .A1(mult_80_n259), .A2(mult_80_n231), .B1(
        mult_80_n230), .B2(mult_80_n260), .ZN(mult_80_n78) );
  XOR2_X1 mult_80_U221 ( .A(w_out[4]), .B(mult_80_n222), .Z(mult_80_n258) );
  OAI22_X1 mult_80_U220 ( .A1(mult_80_n258), .A2(mult_80_n231), .B1(
        mult_80_n230), .B2(mult_80_n259), .ZN(mult_80_n79) );
  OAI22_X1 mult_80_U219 ( .A1(mult_80_n257), .A2(mult_80_n231), .B1(
        mult_80_n230), .B2(mult_80_n258), .ZN(mult_80_n80) );
  XOR2_X1 mult_80_U218 ( .A(mult_80_n219), .B(b1[7]), .Z(mult_80_n255) );
  OAI22_X1 mult_80_U217 ( .A1(mult_80_n255), .A2(mult_80_n231), .B1(
        mult_80_n230), .B2(mult_80_n256), .ZN(mult_80_n82) );
  XOR2_X1 mult_80_U216 ( .A(mult_80_n221), .B(b1[7]), .Z(mult_80_n254) );
  OAI22_X1 mult_80_U215 ( .A1(mult_80_n254), .A2(mult_80_n231), .B1(
        mult_80_n230), .B2(mult_80_n255), .ZN(mult_80_n83) );
  NOR2_X1 mult_80_U214 ( .A1(mult_80_n230), .A2(mult_80_n221), .ZN(mult_80_n84) );
  OAI22_X1 mult_80_U213 ( .A1(mult_80_n253), .A2(mult_80_n242), .B1(
        mult_80_n244), .B2(mult_80_n253), .ZN(mult_80_n252) );
  XOR2_X1 mult_80_U212 ( .A(w_out[6]), .B(mult_80_n223), .Z(mult_80_n250) );
  OAI22_X1 mult_80_U211 ( .A1(mult_80_n250), .A2(mult_80_n244), .B1(
        mult_80_n242), .B2(mult_80_n251), .ZN(mult_80_n86) );
  XOR2_X1 mult_80_U210 ( .A(w_out[5]), .B(mult_80_n223), .Z(mult_80_n249) );
  OAI22_X1 mult_80_U209 ( .A1(mult_80_n249), .A2(mult_80_n244), .B1(
        mult_80_n242), .B2(mult_80_n250), .ZN(mult_80_n87) );
  XOR2_X1 mult_80_U208 ( .A(w_out[4]), .B(mult_80_n223), .Z(mult_80_n248) );
  OAI22_X1 mult_80_U207 ( .A1(mult_80_n248), .A2(mult_80_n244), .B1(
        mult_80_n242), .B2(mult_80_n249), .ZN(mult_80_n88) );
  XOR2_X1 mult_80_U206 ( .A(w_out[3]), .B(mult_80_n223), .Z(mult_80_n247) );
  OAI22_X1 mult_80_U205 ( .A1(mult_80_n247), .A2(mult_80_n244), .B1(
        mult_80_n242), .B2(mult_80_n248), .ZN(mult_80_n89) );
  XOR2_X1 mult_80_U204 ( .A(w_out[2]), .B(mult_80_n223), .Z(mult_80_n246) );
  OAI22_X1 mult_80_U203 ( .A1(mult_80_n246), .A2(mult_80_n244), .B1(
        mult_80_n242), .B2(mult_80_n247), .ZN(mult_80_n90) );
  XOR2_X1 mult_80_U202 ( .A(mult_80_n219), .B(b1[5]), .Z(mult_80_n245) );
  OAI22_X1 mult_80_U201 ( .A1(mult_80_n245), .A2(mult_80_n244), .B1(
        mult_80_n242), .B2(mult_80_n246), .ZN(mult_80_n91) );
  XOR2_X1 mult_80_U200 ( .A(mult_80_n221), .B(b1[5]), .Z(mult_80_n243) );
  OAI22_X1 mult_80_U199 ( .A1(mult_80_n243), .A2(mult_80_n244), .B1(
        mult_80_n242), .B2(mult_80_n245), .ZN(mult_80_n92) );
  NOR2_X1 mult_80_U198 ( .A1(mult_80_n242), .A2(mult_80_n221), .ZN(mult_80_n93) );
  OAI22_X1 mult_80_U197 ( .A1(mult_80_n241), .A2(mult_80_n235), .B1(
        mult_80_n234), .B2(mult_80_n241), .ZN(mult_80_n240) );
  XOR2_X1 mult_80_U196 ( .A(w_out[5]), .B(mult_80_n224), .Z(mult_80_n238) );
  OAI22_X1 mult_80_U195 ( .A1(mult_80_n238), .A2(mult_80_n234), .B1(
        mult_80_n235), .B2(mult_80_n239), .ZN(mult_80_n96) );
  XOR2_X1 mult_80_U194 ( .A(w_out[4]), .B(mult_80_n224), .Z(mult_80_n237) );
  OAI22_X1 mult_80_U193 ( .A1(mult_80_n237), .A2(mult_80_n234), .B1(
        mult_80_n235), .B2(mult_80_n238), .ZN(mult_80_n97) );
  XOR2_X1 mult_80_U192 ( .A(w_out[3]), .B(mult_80_n224), .Z(mult_80_n236) );
  OAI22_X1 mult_80_U191 ( .A1(mult_80_n236), .A2(mult_80_n234), .B1(
        mult_80_n235), .B2(mult_80_n237), .ZN(mult_80_n98) );
  OAI22_X1 mult_80_U190 ( .A1(mult_80_n233), .A2(mult_80_n234), .B1(
        mult_80_n235), .B2(mult_80_n236), .ZN(mult_80_n99) );
  XOR2_X1 mult_80_U189 ( .A(mult_80_n222), .B(w_out[8]), .Z(mult_80_n229) );
  OAI22_X1 mult_80_U188 ( .A1(mult_80_n229), .A2(mult_80_n230), .B1(
        mult_80_n231), .B2(mult_80_n232), .ZN(mult_80_n227) );
  XOR2_X1 mult_80_U187 ( .A(mult_80_n2), .B(mult_80_n16), .Z(mult_80_n228) );
  XNOR2_X1 mult_80_U186 ( .A(mult_80_n227), .B(mult_80_n228), .ZN(ff_tbs_14_)
         );
  INV_X1 mult_80_U185 ( .A(mult_80_n61), .ZN(mult_80_n218) );
  INV_X1 mult_80_U184 ( .A(mult_80_n270), .ZN(mult_80_n220) );
  INV_X1 mult_80_U183 ( .A(w_out[1]), .ZN(mult_80_n219) );
  INV_X1 mult_80_U182 ( .A(w_out[0]), .ZN(mult_80_n221) );
  INV_X1 mult_80_U181 ( .A(b1[0]), .ZN(mult_80_n226) );
  INV_X1 mult_80_U180 ( .A(b1[7]), .ZN(mult_80_n222) );
  INV_X1 mult_80_U179 ( .A(b1[3]), .ZN(mult_80_n224) );
  INV_X1 mult_80_U178 ( .A(b1[5]), .ZN(mult_80_n223) );
  XNOR2_X1 mult_80_U177 ( .A(b1[6]), .B(b1[5]), .ZN(mult_80_n230) );
  XNOR2_X1 mult_80_U176 ( .A(b1[2]), .B(b1[1]), .ZN(mult_80_n235) );
  XNOR2_X1 mult_80_U175 ( .A(b1[4]), .B(b1[3]), .ZN(mult_80_n242) );
  INV_X1 mult_80_U174 ( .A(mult_80_n252), .ZN(mult_80_n211) );
  INV_X1 mult_80_U173 ( .A(mult_80_n20), .ZN(mult_80_n210) );
  INV_X1 mult_80_U172 ( .A(mult_80_n30), .ZN(mult_80_n208) );
  INV_X1 mult_80_U171 ( .A(mult_80_n267), .ZN(mult_80_n217) );
  INV_X1 mult_80_U170 ( .A(mult_80_n266), .ZN(mult_80_n216) );
  INV_X1 mult_80_U169 ( .A(mult_80_n235), .ZN(mult_80_n225) );
  INV_X1 mult_80_U168 ( .A(mult_80_n288), .ZN(mult_80_n212) );
  INV_X1 mult_80_U167 ( .A(mult_80_n240), .ZN(mult_80_n209) );
  INV_X1 mult_80_U166 ( .A(mult_80_n265), .ZN(mult_80_n215) );
  INV_X1 mult_80_U165 ( .A(mult_80_n264), .ZN(mult_80_n214) );
  INV_X1 mult_80_U164 ( .A(mult_80_n263), .ZN(mult_80_n213) );
  HA_X1 mult_80_U40 ( .A(mult_80_n101), .B(mult_80_n109), .CO(mult_80_n60), 
        .S(mult_80_n61) );
  FA_X1 mult_80_U39 ( .A(mult_80_n108), .B(mult_80_n93), .CI(mult_80_n100), 
        .CO(mult_80_n58), .S(mult_80_n59) );
  HA_X1 mult_80_U38 ( .A(mult_80_n73), .B(mult_80_n92), .CO(mult_80_n56), .S(
        mult_80_n57) );
  FA_X1 mult_80_U37 ( .A(mult_80_n99), .B(mult_80_n107), .CI(mult_80_n57), 
        .CO(mult_80_n54), .S(mult_80_n55) );
  FA_X1 mult_80_U36 ( .A(mult_80_n106), .B(mult_80_n84), .CI(mult_80_n98), 
        .CO(mult_80_n52), .S(mult_80_n53) );
  FA_X1 mult_80_U35 ( .A(mult_80_n56), .B(mult_80_n91), .CI(mult_80_n53), .CO(
        mult_80_n50), .S(mult_80_n51) );
  HA_X1 mult_80_U34 ( .A(mult_80_n72), .B(mult_80_n83), .CO(mult_80_n48), .S(
        mult_80_n49) );
  FA_X1 mult_80_U33 ( .A(mult_80_n90), .B(mult_80_n105), .CI(mult_80_n97), 
        .CO(mult_80_n46), .S(mult_80_n47) );
  FA_X1 mult_80_U32 ( .A(mult_80_n52), .B(mult_80_n49), .CI(mult_80_n47), .CO(
        mult_80_n44), .S(mult_80_n45) );
  HA_X1 mult_80_U31 ( .A(mult_80_n82), .B(mult_80_n89), .CO(mult_80_n42), .S(
        mult_80_n43) );
  FA_X1 mult_80_U30 ( .A(mult_80_n96), .B(mult_80_n104), .CI(mult_80_n48), 
        .CO(mult_80_n40), .S(mult_80_n41) );
  FA_X1 mult_80_U29 ( .A(mult_80_n46), .B(mult_80_n43), .CI(mult_80_n41), .CO(
        mult_80_n38), .S(mult_80_n39) );
  FA_X1 mult_80_U26 ( .A(mult_80_n212), .B(mult_80_n88), .CI(mult_80_n42), 
        .CO(mult_80_n34), .S(mult_80_n35) );
  FA_X1 mult_80_U25 ( .A(mult_80_n40), .B(mult_80_n37), .CI(mult_80_n35), .CO(
        mult_80_n32), .S(mult_80_n33) );
  FA_X1 mult_80_U23 ( .A(mult_80_n80), .B(mult_80_n87), .CI(mult_80_n208), 
        .CO(mult_80_n28), .S(mult_80_n29) );
  FA_X1 mult_80_U22 ( .A(mult_80_n34), .B(mult_80_n36), .CI(mult_80_n29), .CO(
        mult_80_n26), .S(mult_80_n27) );
  FA_X1 mult_80_U21 ( .A(mult_80_n86), .B(mult_80_n30), .CI(mult_80_n209), 
        .CO(mult_80_n24), .S(mult_80_n25) );
  FA_X1 mult_80_U20 ( .A(mult_80_n28), .B(mult_80_n79), .CI(mult_80_n25), .CO(
        mult_80_n22), .S(mult_80_n23) );
  FA_X1 mult_80_U18 ( .A(mult_80_n210), .B(mult_80_n78), .CI(mult_80_n24), 
        .CO(mult_80_n18), .S(mult_80_n19) );
  FA_X1 mult_80_U17 ( .A(mult_80_n77), .B(mult_80_n20), .CI(mult_80_n211), 
        .CO(mult_80_n16), .S(mult_80_n17) );
  FA_X1 mult_80_U7 ( .A(mult_80_n33), .B(mult_80_n38), .CI(mult_80_n213), .CO(
        mult_80_n6), .S(ff_tbs_9_) );
  FA_X1 mult_80_U6 ( .A(mult_80_n27), .B(mult_80_n32), .CI(mult_80_n6), .CO(
        mult_80_n5), .S(ff_tbs_10_) );
  FA_X1 mult_80_U5 ( .A(mult_80_n23), .B(mult_80_n26), .CI(mult_80_n5), .CO(
        mult_80_n4), .S(ff_tbs_11_) );
  FA_X1 mult_80_U4 ( .A(mult_80_n19), .B(mult_80_n22), .CI(mult_80_n4), .CO(
        mult_80_n3), .S(ff_tbs_12_) );
  FA_X1 mult_80_U3 ( .A(mult_80_n18), .B(mult_80_n17), .CI(mult_80_n3), .CO(
        mult_80_n2), .S(ff_tbs_13_) );
  XOR2_X1 mult_66_U407 ( .A(mult_66_n324), .B(b0[3]), .Z(mult_66_n389) );
  XOR2_X1 mult_66_U406 ( .A(b0[3]), .B(b0[2]), .Z(mult_66_n390) );
  NAND2_X1 mult_66_U405 ( .A1(mult_66_n340), .A2(mult_66_n390), .ZN(
        mult_66_n339) );
  XOR2_X1 mult_66_U404 ( .A(w[2]), .B(mult_66_n329), .Z(mult_66_n338) );
  OAI22_X1 mult_66_U403 ( .A1(mult_66_n389), .A2(mult_66_n339), .B1(
        mult_66_n340), .B2(mult_66_n338), .ZN(mult_66_n100) );
  XOR2_X1 mult_66_U402 ( .A(mult_66_n326), .B(b0[3]), .Z(mult_66_n388) );
  XNOR2_X1 mult_66_U401 ( .A(w[8]), .B(b0[1]), .ZN(mult_66_n387) );
  NAND2_X1 mult_66_U400 ( .A1(b0[1]), .A2(mult_66_n331), .ZN(mult_66_n375) );
  XNOR2_X1 mult_66_U399 ( .A(w[7]), .B(b0[1]), .ZN(mult_66_n386) );
  XNOR2_X1 mult_66_U398 ( .A(w[6]), .B(b0[1]), .ZN(mult_66_n385) );
  XNOR2_X1 mult_66_U397 ( .A(n9), .B(b0[1]), .ZN(mult_66_n384) );
  OAI22_X1 mult_66_U396 ( .A1(mult_66_n384), .A2(mult_66_n375), .B1(
        mult_66_n385), .B2(mult_66_n331), .ZN(mult_66_n106) );
  XNOR2_X1 mult_66_U395 ( .A(w[4]), .B(b0[1]), .ZN(mult_66_n383) );
  OAI22_X1 mult_66_U394 ( .A1(mult_66_n266), .A2(mult_66_n375), .B1(
        mult_66_n384), .B2(mult_66_n331), .ZN(mult_66_n107) );
  XNOR2_X1 mult_66_U393 ( .A(w[3]), .B(b0[1]), .ZN(mult_66_n382) );
  OAI22_X1 mult_66_U392 ( .A1(mult_66_n265), .A2(mult_66_n375), .B1(
        mult_66_n383), .B2(mult_66_n331), .ZN(mult_66_n108) );
  XNOR2_X1 mult_66_U391 ( .A(w[2]), .B(b0[1]), .ZN(mult_66_n376) );
  OAI22_X1 mult_66_U390 ( .A1(mult_66_n376), .A2(mult_66_n375), .B1(
        mult_66_n382), .B2(mult_66_n331), .ZN(mult_66_n109) );
  XOR2_X1 mult_66_U389 ( .A(mult_66_n267), .B(mult_66_n328), .Z(mult_66_n356)
         );
  XOR2_X1 mult_66_U388 ( .A(b0[5]), .B(b0[4]), .Z(mult_66_n381) );
  NAND2_X1 mult_66_U387 ( .A1(mult_66_n347), .A2(mult_66_n381), .ZN(
        mult_66_n349) );
  XOR2_X1 mult_66_U386 ( .A(mult_66_n283), .B(mult_66_n328), .Z(mult_66_n358)
         );
  OAI22_X1 mult_66_U385 ( .A1(mult_66_n356), .A2(mult_66_n349), .B1(
        mult_66_n347), .B2(mult_66_n358), .ZN(mult_66_n20) );
  XOR2_X1 mult_66_U384 ( .A(mult_66_n230), .B(mult_66_n329), .Z(mult_66_n379)
         );
  OAI22_X1 mult_66_U383 ( .A1(mult_66_n379), .A2(mult_66_n339), .B1(
        mult_66_n340), .B2(mult_66_n346), .ZN(mult_66_n30) );
  XOR2_X1 mult_66_U382 ( .A(w[2]), .B(mult_66_n327), .Z(mult_66_n361) );
  XOR2_X1 mult_66_U381 ( .A(b0[7]), .B(b0[6]), .Z(mult_66_n380) );
  NAND2_X1 mult_66_U380 ( .A1(mult_66_n335), .A2(mult_66_n380), .ZN(
        mult_66_n336) );
  XOR2_X1 mult_66_U379 ( .A(w[3]), .B(mult_66_n327), .Z(mult_66_n362) );
  OAI22_X1 mult_66_U378 ( .A1(mult_66_n361), .A2(mult_66_n336), .B1(
        mult_66_n335), .B2(mult_66_n362), .ZN(mult_66_n377) );
  XOR2_X1 mult_66_U377 ( .A(mult_66_n264), .B(mult_66_n329), .Z(mult_66_n344)
         );
  OAI22_X1 mult_66_U376 ( .A1(mult_66_n344), .A2(mult_66_n339), .B1(
        mult_66_n340), .B2(mult_66_n379), .ZN(mult_66_n378) );
  OR2_X1 mult_66_U375 ( .A1(mult_66_n377), .A2(mult_66_n378), .ZN(mult_66_n36)
         );
  XNOR2_X1 mult_66_U374 ( .A(mult_66_n377), .B(mult_66_n378), .ZN(mult_66_n37)
         );
  OAI22_X1 mult_66_U373 ( .A1(w[1]), .A2(mult_66_n375), .B1(mult_66_n376), 
        .B2(mult_66_n331), .ZN(mult_66_n374) );
  NAND3_X1 mult_66_U372 ( .A1(mult_66_n374), .A2(mult_66_n324), .A3(b0[1]), 
        .ZN(mult_66_n372) );
  NAND2_X1 mult_66_U371 ( .A1(mult_66_n330), .A2(mult_66_n374), .ZN(
        mult_66_n373) );
  MUX2_X1 mult_66_U370 ( .A(mult_66_n372), .B(mult_66_n373), .S(w[0]), .Z(
        mult_66_n369) );
  NAND3_X1 mult_66_U369 ( .A1(mult_66_n330), .A2(mult_66_n326), .A3(b0[3]), 
        .ZN(mult_66_n371) );
  OAI21_X1 mult_66_U368 ( .B1(mult_66_n329), .B2(mult_66_n339), .A(
        mult_66_n371), .ZN(mult_66_n370) );
  OAI222_X1 mult_66_U367 ( .A1(mult_66_n369), .A2(mult_66_n219), .B1(
        mult_66_n325), .B2(mult_66_n369), .C1(mult_66_n325), .C2(mult_66_n219), 
        .ZN(mult_66_n368) );
  OR3_X1 mult_66_U366 ( .A1(mult_66_n335), .A2(w[0]), .A3(mult_66_n327), .ZN(
        mult_66_n367) );
  OAI21_X1 mult_66_U365 ( .B1(mult_66_n327), .B2(mult_66_n336), .A(
        mult_66_n367), .ZN(mult_66_n72) );
  OR3_X1 mult_66_U364 ( .A1(mult_66_n347), .A2(w[0]), .A3(mult_66_n328), .ZN(
        mult_66_n366) );
  OAI21_X1 mult_66_U363 ( .B1(mult_66_n328), .B2(mult_66_n349), .A(
        mult_66_n366), .ZN(mult_66_n73) );
  XOR2_X1 mult_66_U362 ( .A(mult_66_n264), .B(mult_66_n327), .Z(mult_66_n365)
         );
  XNOR2_X1 mult_66_U361 ( .A(mult_66_n267), .B(b0[7]), .ZN(mult_66_n337) );
  OAI22_X1 mult_66_U360 ( .A1(mult_66_n365), .A2(mult_66_n336), .B1(
        mult_66_n335), .B2(mult_66_n337), .ZN(mult_66_n77) );
  XOR2_X1 mult_66_U359 ( .A(n9), .B(mult_66_n327), .Z(mult_66_n364) );
  OAI22_X1 mult_66_U358 ( .A1(mult_66_n364), .A2(mult_66_n336), .B1(
        mult_66_n335), .B2(mult_66_n365), .ZN(mult_66_n78) );
  XOR2_X1 mult_66_U357 ( .A(mult_66_n215), .B(mult_66_n327), .Z(mult_66_n363)
         );
  OAI22_X1 mult_66_U356 ( .A1(mult_66_n363), .A2(mult_66_n336), .B1(
        mult_66_n335), .B2(mult_66_n364), .ZN(mult_66_n79) );
  OAI22_X1 mult_66_U355 ( .A1(mult_66_n362), .A2(mult_66_n336), .B1(
        mult_66_n335), .B2(mult_66_n363), .ZN(mult_66_n80) );
  XOR2_X1 mult_66_U354 ( .A(mult_66_n324), .B(b0[7]), .Z(mult_66_n360) );
  OAI22_X1 mult_66_U353 ( .A1(mult_66_n360), .A2(mult_66_n336), .B1(
        mult_66_n335), .B2(mult_66_n361), .ZN(mult_66_n82) );
  XOR2_X1 mult_66_U352 ( .A(mult_66_n326), .B(b0[7]), .Z(mult_66_n359) );
  OAI22_X1 mult_66_U351 ( .A1(mult_66_n359), .A2(mult_66_n336), .B1(
        mult_66_n335), .B2(mult_66_n360), .ZN(mult_66_n83) );
  NOR2_X1 mult_66_U350 ( .A1(mult_66_n335), .A2(mult_66_n326), .ZN(mult_66_n84) );
  OAI22_X1 mult_66_U349 ( .A1(mult_66_n358), .A2(mult_66_n347), .B1(
        mult_66_n349), .B2(mult_66_n358), .ZN(mult_66_n357) );
  XOR2_X1 mult_66_U348 ( .A(mult_66_n264), .B(mult_66_n328), .Z(mult_66_n355)
         );
  OAI22_X1 mult_66_U347 ( .A1(mult_66_n355), .A2(mult_66_n349), .B1(
        mult_66_n347), .B2(mult_66_n356), .ZN(mult_66_n86) );
  XOR2_X1 mult_66_U346 ( .A(n9), .B(mult_66_n328), .Z(mult_66_n354) );
  OAI22_X1 mult_66_U345 ( .A1(mult_66_n354), .A2(mult_66_n349), .B1(
        mult_66_n347), .B2(mult_66_n355), .ZN(mult_66_n87) );
  XOR2_X1 mult_66_U344 ( .A(mult_66_n215), .B(mult_66_n328), .Z(mult_66_n353)
         );
  OAI22_X1 mult_66_U343 ( .A1(mult_66_n353), .A2(mult_66_n349), .B1(
        mult_66_n347), .B2(mult_66_n354), .ZN(mult_66_n88) );
  XOR2_X1 mult_66_U342 ( .A(w[3]), .B(mult_66_n328), .Z(mult_66_n352) );
  OAI22_X1 mult_66_U341 ( .A1(mult_66_n352), .A2(mult_66_n349), .B1(
        mult_66_n347), .B2(mult_66_n353), .ZN(mult_66_n89) );
  XOR2_X1 mult_66_U340 ( .A(w[2]), .B(mult_66_n328), .Z(mult_66_n351) );
  OAI22_X1 mult_66_U339 ( .A1(mult_66_n351), .A2(mult_66_n349), .B1(
        mult_66_n347), .B2(mult_66_n352), .ZN(mult_66_n90) );
  XOR2_X1 mult_66_U338 ( .A(mult_66_n324), .B(b0[5]), .Z(mult_66_n350) );
  OAI22_X1 mult_66_U337 ( .A1(mult_66_n350), .A2(mult_66_n349), .B1(
        mult_66_n347), .B2(mult_66_n351), .ZN(mult_66_n91) );
  XOR2_X1 mult_66_U336 ( .A(mult_66_n326), .B(b0[5]), .Z(mult_66_n348) );
  OAI22_X1 mult_66_U335 ( .A1(mult_66_n348), .A2(mult_66_n349), .B1(
        mult_66_n347), .B2(mult_66_n350), .ZN(mult_66_n92) );
  NOR2_X1 mult_66_U334 ( .A1(mult_66_n347), .A2(mult_66_n326), .ZN(mult_66_n93) );
  OAI22_X1 mult_66_U333 ( .A1(mult_66_n346), .A2(mult_66_n340), .B1(
        mult_66_n339), .B2(mult_66_n346), .ZN(mult_66_n345) );
  XOR2_X1 mult_66_U332 ( .A(n9), .B(mult_66_n329), .Z(mult_66_n343) );
  OAI22_X1 mult_66_U331 ( .A1(mult_66_n343), .A2(mult_66_n339), .B1(
        mult_66_n340), .B2(mult_66_n344), .ZN(mult_66_n96) );
  XOR2_X1 mult_66_U330 ( .A(w[4]), .B(mult_66_n329), .Z(mult_66_n342) );
  XOR2_X1 mult_66_U329 ( .A(w[3]), .B(mult_66_n329), .Z(mult_66_n341) );
  OAI22_X1 mult_66_U328 ( .A1(mult_66_n341), .A2(mult_66_n339), .B1(
        mult_66_n340), .B2(mult_66_n342), .ZN(mult_66_n98) );
  OAI22_X1 mult_66_U327 ( .A1(mult_66_n338), .A2(mult_66_n339), .B1(
        mult_66_n340), .B2(mult_66_n341), .ZN(mult_66_n99) );
  XOR2_X1 mult_66_U326 ( .A(mult_66_n327), .B(mult_66_n283), .Z(mult_66_n334)
         );
  OAI22_X1 mult_66_U325 ( .A1(mult_66_n334), .A2(mult_66_n335), .B1(
        mult_66_n336), .B2(mult_66_n337), .ZN(mult_66_n332) );
  XNOR2_X1 mult_66_U324 ( .A(mult_66_n333), .B(mult_66_n332), .ZN(wb0_tbs_14_)
         );
  NAND3_X1 mult_66_U323 ( .A1(mult_66_n317), .A2(mult_66_n318), .A3(
        mult_66_n319), .ZN(mult_66_n4) );
  NAND2_X1 mult_66_U322 ( .A1(mult_66_n23), .A2(mult_66_n26), .ZN(mult_66_n319) );
  NAND2_X1 mult_66_U321 ( .A1(mult_66_n5), .A2(mult_66_n26), .ZN(mult_66_n318)
         );
  NAND2_X1 mult_66_U320 ( .A1(mult_66_n234), .A2(mult_66_n23), .ZN(
        mult_66_n317) );
  NAND2_X1 mult_66_U319 ( .A1(mult_66_n18), .A2(mult_66_n17), .ZN(mult_66_n316) );
  NAND2_X1 mult_66_U318 ( .A1(mult_66_n3), .A2(mult_66_n17), .ZN(mult_66_n315)
         );
  NAND2_X1 mult_66_U317 ( .A1(mult_66_n246), .A2(mult_66_n18), .ZN(
        mult_66_n314) );
  INV_X1 mult_66_U316 ( .A(b0[7]), .ZN(mult_66_n327) );
  INV_X1 mult_66_U315 ( .A(b0[3]), .ZN(mult_66_n329) );
  INV_X1 mult_66_U314 ( .A(b0[5]), .ZN(mult_66_n328) );
  XNOR2_X1 mult_66_U313 ( .A(b0[6]), .B(b0[5]), .ZN(mult_66_n335) );
  XNOR2_X1 mult_66_U312 ( .A(b0[2]), .B(b0[1]), .ZN(mult_66_n340) );
  XNOR2_X1 mult_66_U311 ( .A(b0[4]), .B(b0[3]), .ZN(mult_66_n347) );
  INV_X1 mult_66_U310 ( .A(mult_66_n30), .ZN(mult_66_n320) );
  INV_X1 mult_66_U309 ( .A(mult_66_n340), .ZN(mult_66_n330) );
  INV_X1 mult_66_U308 ( .A(w[1]), .ZN(mult_66_n324) );
  INV_X1 mult_66_U307 ( .A(mult_66_n345), .ZN(mult_66_n321) );
  INV_X1 mult_66_U306 ( .A(mult_66_n20), .ZN(mult_66_n322) );
  INV_X1 mult_66_U305 ( .A(w[0]), .ZN(mult_66_n326) );
  INV_X1 mult_66_U304 ( .A(mult_66_n357), .ZN(mult_66_n323) );
  INV_X1 mult_66_U303 ( .A(mult_66_n370), .ZN(mult_66_n325) );
  NAND2_X1 mult_66_U302 ( .A1(mult_66_n45), .A2(mult_66_n50), .ZN(mult_66_n313) );
  NAND2_X1 mult_66_U301 ( .A1(mult_66_n291), .A2(mult_66_n50), .ZN(
        mult_66_n312) );
  NAND2_X1 mult_66_U300 ( .A1(mult_66_n45), .A2(mult_66_n250), .ZN(
        mult_66_n311) );
  NAND2_X1 mult_66_U299 ( .A1(mult_66_n54), .A2(mult_66_n51), .ZN(mult_66_n310) );
  NAND2_X1 mult_66_U298 ( .A1(mult_66_n208), .A2(mult_66_n54), .ZN(
        mult_66_n309) );
  NAND2_X1 mult_66_U297 ( .A1(mult_66_n208), .A2(mult_66_n51), .ZN(
        mult_66_n308) );
  NAND2_X1 mult_66_U296 ( .A1(mult_66_n39), .A2(mult_66_n44), .ZN(mult_66_n307) );
  NAND2_X1 mult_66_U295 ( .A1(mult_66_n299), .A2(mult_66_n44), .ZN(
        mult_66_n306) );
  NAND2_X1 mult_66_U294 ( .A1(mult_66_n300), .A2(mult_66_n39), .ZN(
        mult_66_n305) );
  CLKBUF_X1 mult_66_U293 ( .A(mult_66_n385), .Z(mult_66_n304) );
  NAND3_X1 mult_66_U292 ( .A1(mult_66_n301), .A2(mult_66_n302), .A3(
        mult_66_n303), .ZN(mult_66_n50) );
  NAND2_X1 mult_66_U291 ( .A1(mult_66_n56), .A2(mult_66_n91), .ZN(mult_66_n303) );
  NAND2_X1 mult_66_U290 ( .A1(mult_66_n282), .A2(mult_66_n91), .ZN(
        mult_66_n302) );
  NAND2_X1 mult_66_U289 ( .A1(mult_66_n282), .A2(mult_66_n56), .ZN(
        mult_66_n301) );
  NAND3_X1 mult_66_U288 ( .A1(mult_66_n311), .A2(mult_66_n312), .A3(
        mult_66_n313), .ZN(mult_66_n300) );
  NAND3_X1 mult_66_U287 ( .A1(mult_66_n311), .A2(mult_66_n312), .A3(
        mult_66_n313), .ZN(mult_66_n299) );
  NAND2_X1 mult_66_U286 ( .A1(mult_66_n46), .A2(mult_66_n43), .ZN(mult_66_n298) );
  NAND2_X1 mult_66_U285 ( .A1(mult_66_n263), .A2(mult_66_n43), .ZN(
        mult_66_n297) );
  NAND2_X1 mult_66_U284 ( .A1(mult_66_n263), .A2(mult_66_n46), .ZN(
        mult_66_n296) );
  NAND3_X1 mult_66_U283 ( .A1(mult_66_n293), .A2(mult_66_n294), .A3(
        mult_66_n295), .ZN(mult_66_n46) );
  NAND2_X1 mult_66_U282 ( .A1(mult_66_n97), .A2(mult_66_n90), .ZN(mult_66_n295) );
  NAND2_X1 mult_66_U281 ( .A1(mult_66_n217), .A2(mult_66_n90), .ZN(
        mult_66_n294) );
  NAND2_X1 mult_66_U280 ( .A1(mult_66_n217), .A2(mult_66_n97), .ZN(
        mult_66_n293) );
  XNOR2_X1 mult_66_U279 ( .A(mult_66_n56), .B(mult_66_n91), .ZN(mult_66_n292)
         );
  XNOR2_X1 mult_66_U278 ( .A(mult_66_n53), .B(mult_66_n292), .ZN(mult_66_n51)
         );
  NAND3_X1 mult_66_U277 ( .A1(mult_66_n310), .A2(mult_66_n309), .A3(
        mult_66_n308), .ZN(mult_66_n291) );
  NAND3_X1 mult_66_U276 ( .A1(mult_66_n305), .A2(mult_66_n307), .A3(
        mult_66_n306), .ZN(mult_66_n290) );
  XNOR2_X1 mult_66_U275 ( .A(mult_66_n97), .B(mult_66_n90), .ZN(mult_66_n287)
         );
  XNOR2_X1 mult_66_U274 ( .A(mult_66_n105), .B(mult_66_n287), .ZN(mult_66_n47)
         );
  OAI22_X1 mult_66_U273 ( .A1(mult_66_n304), .A2(mult_66_n375), .B1(
        mult_66_n386), .B2(mult_66_n331), .ZN(mult_66_n105) );
  NAND3_X1 mult_66_U272 ( .A1(mult_66_n284), .A2(mult_66_n285), .A3(
        mult_66_n286), .ZN(mult_66_n44) );
  NAND2_X1 mult_66_U271 ( .A1(mult_66_n52), .A2(mult_66_n49), .ZN(mult_66_n286) );
  NAND2_X1 mult_66_U270 ( .A1(mult_66_n47), .A2(mult_66_n49), .ZN(mult_66_n285) );
  NAND2_X1 mult_66_U269 ( .A1(mult_66_n47), .A2(mult_66_n52), .ZN(mult_66_n284) );
  INV_X1 mult_66_U268 ( .A(mult_66_n59), .ZN(mult_66_n289) );
  XNOR2_X1 mult_66_U267 ( .A(mult_66_n46), .B(mult_66_n43), .ZN(mult_66_n281)
         );
  XNOR2_X1 mult_66_U266 ( .A(mult_66_n41), .B(mult_66_n281), .ZN(mult_66_n39)
         );
  XNOR2_X1 mult_66_U265 ( .A(mult_66_n52), .B(mult_66_n49), .ZN(mult_66_n280)
         );
  XNOR2_X1 mult_66_U264 ( .A(mult_66_n47), .B(mult_66_n280), .ZN(mult_66_n45)
         );
  CLKBUF_X1 mult_66_U263 ( .A(mult_66_n53), .Z(mult_66_n282) );
  NAND3_X2 mult_66_U262 ( .A1(mult_66_n296), .A2(mult_66_n297), .A3(
        mult_66_n298), .ZN(mult_66_n38) );
  NAND3_X1 mult_66_U261 ( .A1(mult_66_n278), .A2(mult_66_n277), .A3(
        mult_66_n279), .ZN(mult_66_n6) );
  NAND2_X1 mult_66_U260 ( .A1(mult_66_n218), .A2(mult_66_n38), .ZN(
        mult_66_n279) );
  NAND2_X1 mult_66_U259 ( .A1(mult_66_n290), .A2(mult_66_n38), .ZN(
        mult_66_n278) );
  NAND2_X1 mult_66_U258 ( .A1(mult_66_n239), .A2(mult_66_n218), .ZN(
        mult_66_n277) );
  NAND3_X1 mult_66_U257 ( .A1(mult_66_n274), .A2(mult_66_n275), .A3(
        mult_66_n276), .ZN(mult_66_n54) );
  NAND2_X1 mult_66_U256 ( .A1(mult_66_n99), .A2(mult_66_n57), .ZN(mult_66_n276) );
  NAND2_X1 mult_66_U255 ( .A1(mult_66_n107), .A2(mult_66_n57), .ZN(
        mult_66_n275) );
  NAND2_X1 mult_66_U254 ( .A1(mult_66_n107), .A2(mult_66_n99), .ZN(
        mult_66_n274) );
  NAND3_X1 mult_66_U253 ( .A1(mult_66_n271), .A2(mult_66_n272), .A3(
        mult_66_n273), .ZN(mult_66_n26) );
  NAND2_X1 mult_66_U252 ( .A1(mult_66_n36), .A2(mult_66_n29), .ZN(mult_66_n273) );
  NAND2_X1 mult_66_U251 ( .A1(mult_66_n34), .A2(mult_66_n29), .ZN(mult_66_n272) );
  NAND2_X1 mult_66_U250 ( .A1(mult_66_n34), .A2(mult_66_n36), .ZN(mult_66_n271) );
  NAND3_X1 mult_66_U249 ( .A1(mult_66_n268), .A2(mult_66_n269), .A3(
        mult_66_n270), .ZN(mult_66_n28) );
  NAND2_X1 mult_66_U248 ( .A1(mult_66_n87), .A2(mult_66_n320), .ZN(
        mult_66_n270) );
  NAND2_X1 mult_66_U247 ( .A1(mult_66_n80), .A2(mult_66_n320), .ZN(
        mult_66_n269) );
  NAND2_X1 mult_66_U246 ( .A1(mult_66_n80), .A2(mult_66_n87), .ZN(mult_66_n268) );
  INV_X1 mult_66_U245 ( .A(mult_66_n368), .ZN(mult_66_n288) );
  CLKBUF_X1 mult_66_U244 ( .A(mult_66_n230), .Z(mult_66_n267) );
  CLKBUF_X1 mult_66_U243 ( .A(mult_66_n383), .Z(mult_66_n266) );
  CLKBUF_X1 mult_66_U242 ( .A(mult_66_n382), .Z(mult_66_n265) );
  CLKBUF_X1 mult_66_U241 ( .A(w[6]), .Z(mult_66_n264) );
  NAND2_X1 mult_66_U240 ( .A1(mult_66_n55), .A2(mult_66_n58), .ZN(mult_66_n262) );
  NAND2_X1 mult_66_U239 ( .A1(mult_66_n211), .A2(mult_66_n58), .ZN(
        mult_66_n261) );
  NAND2_X1 mult_66_U238 ( .A1(mult_66_n211), .A2(mult_66_n55), .ZN(
        mult_66_n260) );
  NAND3_X1 mult_66_U237 ( .A1(mult_66_n212), .A2(mult_66_n257), .A3(
        mult_66_n259), .ZN(mult_66_n5) );
  NAND2_X1 mult_66_U236 ( .A1(mult_66_n27), .A2(mult_66_n32), .ZN(mult_66_n259) );
  NAND2_X1 mult_66_U235 ( .A1(mult_66_n6), .A2(mult_66_n32), .ZN(mult_66_n258)
         );
  NAND2_X1 mult_66_U234 ( .A1(mult_66_n241), .A2(mult_66_n27), .ZN(
        mult_66_n257) );
  NAND3_X1 mult_66_U233 ( .A1(mult_66_n315), .A2(mult_66_n314), .A3(
        mult_66_n316), .ZN(mult_66_n256) );
  XNOR2_X1 mult_66_U232 ( .A(mult_66_n256), .B(mult_66_n255), .ZN(mult_66_n333) );
  NAND3_X1 mult_66_U231 ( .A1(mult_66_n252), .A2(mult_66_n253), .A3(
        mult_66_n254), .ZN(mult_66_n3) );
  NAND2_X1 mult_66_U230 ( .A1(mult_66_n22), .A2(mult_66_n19), .ZN(mult_66_n254) );
  NAND2_X1 mult_66_U229 ( .A1(mult_66_n4), .A2(mult_66_n19), .ZN(mult_66_n253)
         );
  NAND2_X1 mult_66_U228 ( .A1(mult_66_n248), .A2(mult_66_n22), .ZN(
        mult_66_n252) );
  XOR2_X1 mult_66_U227 ( .A(mult_66_n248), .B(mult_66_n251), .Z(wb0_tbs_12_)
         );
  XOR2_X1 mult_66_U226 ( .A(mult_66_n22), .B(mult_66_n19), .Z(mult_66_n251) );
  NAND3_X1 mult_66_U225 ( .A1(mult_66_n308), .A2(mult_66_n309), .A3(
        mult_66_n310), .ZN(mult_66_n250) );
  XNOR2_X1 mult_66_U224 ( .A(mult_66_n33), .B(mult_66_n38), .ZN(mult_66_n249)
         );
  XNOR2_X1 mult_66_U223 ( .A(mult_66_n240), .B(mult_66_n249), .ZN(wb0_tbs_9_)
         );
  NAND3_X1 mult_66_U222 ( .A1(mult_66_n318), .A2(mult_66_n317), .A3(
        mult_66_n319), .ZN(mult_66_n248) );
  NAND3_X1 mult_66_U221 ( .A1(mult_66_n244), .A2(mult_66_n253), .A3(
        mult_66_n254), .ZN(mult_66_n247) );
  NAND3_X1 mult_66_U220 ( .A1(mult_66_n252), .A2(mult_66_n253), .A3(
        mult_66_n254), .ZN(mult_66_n246) );
  XNOR2_X1 mult_66_U219 ( .A(mult_66_n23), .B(mult_66_n26), .ZN(mult_66_n245)
         );
  XNOR2_X1 mult_66_U218 ( .A(mult_66_n213), .B(mult_66_n245), .ZN(wb0_tbs_11_)
         );
  CLKBUF_X1 mult_66_U217 ( .A(mult_66_n252), .Z(mult_66_n244) );
  XNOR2_X1 mult_66_U216 ( .A(mult_66_n27), .B(mult_66_n32), .ZN(mult_66_n243)
         );
  XNOR2_X1 mult_66_U215 ( .A(mult_66_n214), .B(mult_66_n243), .ZN(wb0_tbs_10_)
         );
  XNOR2_X1 mult_66_U214 ( .A(mult_66_n34), .B(mult_66_n36), .ZN(mult_66_n242)
         );
  XNOR2_X1 mult_66_U213 ( .A(mult_66_n242), .B(mult_66_n29), .ZN(mult_66_n27)
         );
  NAND3_X1 mult_66_U212 ( .A1(mult_66_n277), .A2(mult_66_n278), .A3(
        mult_66_n279), .ZN(mult_66_n241) );
  NAND3_X1 mult_66_U211 ( .A1(mult_66_n221), .A2(mult_66_n226), .A3(
        mult_66_n210), .ZN(mult_66_n240) );
  NAND3_X1 mult_66_U210 ( .A1(mult_66_n305), .A2(mult_66_n307), .A3(
        mult_66_n306), .ZN(mult_66_n239) );
  NAND2_X1 mult_66_U209 ( .A1(mult_66_n101), .A2(mult_66_n109), .ZN(
        mult_66_n238) );
  AOI22_X1 mult_66_U208 ( .A1(b0[0]), .A2(mult_66_n237), .B1(mult_66_n236), 
        .B2(mult_66_n237), .ZN(mult_66_n235) );
  NAND3_X1 mult_66_U207 ( .A1(mult_66_n257), .A2(mult_66_n258), .A3(
        mult_66_n259), .ZN(mult_66_n234) );
  NAND3_X1 mult_66_U206 ( .A1(mult_66_n231), .A2(mult_66_n232), .A3(
        mult_66_n233), .ZN(mult_66_n32) );
  NAND2_X1 mult_66_U205 ( .A1(mult_66_n40), .A2(mult_66_n37), .ZN(mult_66_n233) );
  NAND2_X1 mult_66_U204 ( .A1(mult_66_n35), .A2(mult_66_n37), .ZN(mult_66_n232) );
  NAND2_X1 mult_66_U203 ( .A1(mult_66_n35), .A2(mult_66_n40), .ZN(mult_66_n231) );
  CLKBUF_X1 mult_66_U202 ( .A(w[7]), .Z(mult_66_n230) );
  XNOR2_X1 mult_66_U201 ( .A(mult_66_n99), .B(mult_66_n57), .ZN(mult_66_n229)
         );
  XNOR2_X1 mult_66_U200 ( .A(mult_66_n107), .B(mult_66_n229), .ZN(mult_66_n55)
         );
  XNOR2_X1 mult_66_U199 ( .A(mult_66_n40), .B(mult_66_n37), .ZN(mult_66_n228)
         );
  XNOR2_X1 mult_66_U198 ( .A(mult_66_n35), .B(mult_66_n228), .ZN(mult_66_n33)
         );
  CLKBUF_X1 mult_66_U197 ( .A(mult_66_n307), .Z(mult_66_n226) );
  NAND3_X1 mult_66_U196 ( .A1(mult_66_n223), .A2(mult_66_n224), .A3(
        mult_66_n225), .ZN(mult_66_n52) );
  NAND2_X1 mult_66_U195 ( .A1(mult_66_n98), .A2(mult_66_n84), .ZN(mult_66_n225) );
  NAND2_X1 mult_66_U194 ( .A1(mult_66_n106), .A2(mult_66_n84), .ZN(
        mult_66_n224) );
  NAND2_X1 mult_66_U193 ( .A1(mult_66_n106), .A2(mult_66_n98), .ZN(
        mult_66_n223) );
  XOR2_X1 mult_66_U192 ( .A(mult_66_n106), .B(mult_66_n222), .Z(mult_66_n53)
         );
  XOR2_X1 mult_66_U191 ( .A(mult_66_n98), .B(mult_66_n84), .Z(mult_66_n222) );
  CLKBUF_X1 mult_66_U190 ( .A(mult_66_n305), .Z(mult_66_n221) );
  XNOR2_X1 mult_66_U189 ( .A(mult_66_n80), .B(mult_66_n87), .ZN(mult_66_n220)
         );
  XNOR2_X1 mult_66_U188 ( .A(mult_66_n220), .B(mult_66_n320), .ZN(mult_66_n29)
         );
  XNOR2_X1 mult_66_U187 ( .A(mult_66_n101), .B(mult_66_n109), .ZN(mult_66_n219) );
  BUF_X1 mult_66_U186 ( .A(mult_66_n41), .Z(mult_66_n263) );
  XNOR2_X1 mult_66_U185 ( .A(mult_66_n35), .B(mult_66_n228), .ZN(mult_66_n218)
         );
  OAI22_X1 mult_66_U184 ( .A1(mult_66_n304), .A2(mult_66_n375), .B1(
        mult_66_n386), .B2(mult_66_n331), .ZN(mult_66_n217) );
  XNOR2_X1 mult_66_U183 ( .A(mult_66_n227), .B(mult_66_n216), .ZN(mult_66_n237) );
  CLKBUF_X1 mult_66_U182 ( .A(w[4]), .Z(mult_66_n215) );
  NAND3_X1 mult_66_U181 ( .A1(mult_66_n277), .A2(mult_66_n278), .A3(
        mult_66_n279), .ZN(mult_66_n214) );
  XNOR2_X1 mult_66_U180 ( .A(mult_66_n283), .B(b0[3]), .ZN(mult_66_n346) );
  NAND3_X1 mult_66_U179 ( .A1(mult_66_n257), .A2(mult_66_n212), .A3(
        mult_66_n259), .ZN(mult_66_n213) );
  NAND2_X1 mult_66_U178 ( .A1(mult_66_n6), .A2(mult_66_n32), .ZN(mult_66_n212)
         );
  OAI222_X1 mult_66_U177 ( .A1(mult_66_n288), .A2(mult_66_n289), .B1(
        mult_66_n288), .B2(mult_66_n238), .C1(mult_66_n238), .C2(mult_66_n289), 
        .ZN(mult_66_n211) );
  OAI22_X1 mult_66_U176 ( .A1(mult_66_n387), .A2(mult_66_n331), .B1(
        mult_66_n386), .B2(mult_66_n375), .ZN(mult_66_n104) );
  INV_X1 mult_66_U175 ( .A(mult_66_n375), .ZN(mult_66_n236) );
  OAI22_X1 mult_66_U174 ( .A1(mult_66_n388), .A2(mult_66_n339), .B1(
        mult_66_n340), .B2(mult_66_n389), .ZN(mult_66_n101) );
  OAI22_X1 mult_66_U173 ( .A1(mult_66_n342), .A2(mult_66_n339), .B1(
        mult_66_n340), .B2(mult_66_n343), .ZN(mult_66_n97) );
  BUF_X1 mult_66_U172 ( .A(w[8]), .Z(mult_66_n283) );
  BUF_X1 mult_66_U171 ( .A(w[8]), .Z(mult_66_n227) );
  CLKBUF_X1 mult_66_U170 ( .A(mult_66_n306), .Z(mult_66_n210) );
  XNOR2_X1 mult_66_U169 ( .A(mult_66_n18), .B(mult_66_n17), .ZN(mult_66_n209)
         );
  XNOR2_X1 mult_66_U168 ( .A(mult_66_n247), .B(mult_66_n209), .ZN(wb0_tbs_13_)
         );
  INV_X1 mult_66_U167 ( .A(mult_66_n16), .ZN(mult_66_n255) );
  INV_X1 mult_66_U166 ( .A(b0[1]), .ZN(mult_66_n216) );
  INV_X1 mult_66_U165 ( .A(b0[0]), .ZN(mult_66_n331) );
  NAND3_X1 mult_66_U164 ( .A1(mult_66_n260), .A2(mult_66_n261), .A3(
        mult_66_n262), .ZN(mult_66_n208) );
  FA_X1 mult_66_U39 ( .A(mult_66_n100), .B(mult_66_n93), .CI(mult_66_n108), 
        .CO(mult_66_n58), .S(mult_66_n59) );
  HA_X1 mult_66_U38 ( .A(mult_66_n73), .B(mult_66_n92), .CO(mult_66_n56), .S(
        mult_66_n57) );
  HA_X1 mult_66_U34 ( .A(mult_66_n72), .B(mult_66_n83), .CO(mult_66_n48), .S(
        mult_66_n49) );
  HA_X1 mult_66_U31 ( .A(mult_66_n82), .B(mult_66_n89), .CO(mult_66_n42), .S(
        mult_66_n43) );
  FA_X1 mult_66_U30 ( .A(mult_66_n96), .B(mult_66_n48), .CI(mult_66_n104), 
        .CO(mult_66_n40), .S(mult_66_n41) );
  FA_X1 mult_66_U26 ( .A(mult_66_n42), .B(mult_66_n88), .CI(mult_66_n235), 
        .CO(mult_66_n34), .S(mult_66_n35) );
  FA_X1 mult_66_U21 ( .A(mult_66_n30), .B(mult_66_n86), .CI(mult_66_n321), 
        .CO(mult_66_n24), .S(mult_66_n25) );
  FA_X1 mult_66_U20 ( .A(mult_66_n28), .B(mult_66_n79), .CI(mult_66_n25), .CO(
        mult_66_n22), .S(mult_66_n23) );
  FA_X1 mult_66_U18 ( .A(mult_66_n322), .B(mult_66_n78), .CI(mult_66_n24), 
        .CO(mult_66_n18), .S(mult_66_n19) );
  FA_X1 mult_66_U17 ( .A(mult_66_n77), .B(mult_66_n20), .CI(mult_66_n323), 
        .CO(mult_66_n16), .S(mult_66_n17) );
  XNOR2_X1 mult_77_U408 ( .A(w_out[4]), .B(a1[3]), .ZN(mult_77_n395) );
  XNOR2_X1 mult_77_U407 ( .A(w_out[5]), .B(a1[3]), .ZN(mult_77_n339) );
  OAI22_X1 mult_77_U406 ( .A1(mult_77_n395), .A2(mult_77_n236), .B1(
        mult_77_n317), .B2(mult_77_n339), .ZN(mult_77_n100) );
  XNOR2_X1 mult_77_U405 ( .A(w_out[3]), .B(a1[3]), .ZN(mult_77_n394) );
  OAI22_X1 mult_77_U404 ( .A1(mult_77_n394), .A2(mult_77_n236), .B1(
        mult_77_n317), .B2(mult_77_n395), .ZN(mult_77_n101) );
  XNOR2_X1 mult_77_U403 ( .A(w_out[2]), .B(a1[3]), .ZN(mult_77_n393) );
  OAI22_X1 mult_77_U402 ( .A1(mult_77_n393), .A2(mult_77_n236), .B1(
        mult_77_n317), .B2(mult_77_n394), .ZN(mult_77_n102) );
  XNOR2_X1 mult_77_U401 ( .A(w_out[1]), .B(a1[3]), .ZN(mult_77_n392) );
  OAI22_X1 mult_77_U400 ( .A1(mult_77_n236), .A2(mult_77_n392), .B1(
        mult_77_n317), .B2(mult_77_n393), .ZN(mult_77_n103) );
  XNOR2_X1 mult_77_U399 ( .A(w_out[0]), .B(a1[3]), .ZN(mult_77_n391) );
  XNOR2_X1 mult_77_U398 ( .A(w_out[8]), .B(a1[1]), .ZN(mult_77_n389) );
  NAND2_X1 mult_77_U397 ( .A1(a1[1]), .A2(mult_77_n336), .ZN(mult_77_n376) );
  OAI22_X1 mult_77_U396 ( .A1(mult_77_n280), .A2(mult_77_n389), .B1(
        mult_77_n279), .B2(mult_77_n389), .ZN(mult_77_n390) );
  XNOR2_X1 mult_77_U395 ( .A(w_out[7]), .B(a1[1]), .ZN(mult_77_n388) );
  OAI22_X1 mult_77_U394 ( .A1(mult_77_n388), .A2(mult_77_n279), .B1(
        mult_77_n389), .B2(mult_77_n281), .ZN(mult_77_n107) );
  XNOR2_X1 mult_77_U393 ( .A(w_out[6]), .B(a1[1]), .ZN(mult_77_n387) );
  OAI22_X1 mult_77_U392 ( .A1(mult_77_n387), .A2(mult_77_n279), .B1(
        mult_77_n388), .B2(mult_77_n281), .ZN(mult_77_n108) );
  XNOR2_X1 mult_77_U391 ( .A(w_out[5]), .B(a1[1]), .ZN(mult_77_n386) );
  OAI22_X1 mult_77_U390 ( .A1(mult_77_n386), .A2(mult_77_n279), .B1(
        mult_77_n387), .B2(mult_77_n280), .ZN(mult_77_n109) );
  XNOR2_X1 mult_77_U389 ( .A(w_out[4]), .B(a1[1]), .ZN(mult_77_n385) );
  OAI22_X1 mult_77_U388 ( .A1(mult_77_n385), .A2(mult_77_n279), .B1(
        mult_77_n386), .B2(mult_77_n281), .ZN(mult_77_n110) );
  XNOR2_X1 mult_77_U387 ( .A(w_out[3]), .B(a1[1]), .ZN(mult_77_n384) );
  OAI22_X1 mult_77_U386 ( .A1(mult_77_n384), .A2(mult_77_n376), .B1(
        mult_77_n385), .B2(mult_77_n280), .ZN(mult_77_n111) );
  XNOR2_X1 mult_77_U385 ( .A(w_out[2]), .B(a1[1]), .ZN(mult_77_n377) );
  OAI22_X1 mult_77_U384 ( .A1(mult_77_n377), .A2(mult_77_n376), .B1(
        mult_77_n384), .B2(mult_77_n281), .ZN(mult_77_n112) );
  XOR2_X1 mult_77_U383 ( .A(w_out[7]), .B(a1[7]), .Z(mult_77_n365) );
  XNOR2_X1 mult_77_U382 ( .A(mult_77_n332), .B(a1[6]), .ZN(mult_77_n383) );
  XNOR2_X1 mult_77_U381 ( .A(w_out[8]), .B(mult_77_n332), .ZN(mult_77_n338) );
  XNOR2_X1 mult_77_U380 ( .A(w_out[7]), .B(a1[5]), .ZN(mult_77_n353) );
  XNOR2_X1 mult_77_U379 ( .A(w_out[8]), .B(mult_77_n252), .ZN(mult_77_n355) );
  OAI22_X1 mult_77_U378 ( .A1(mult_77_n353), .A2(mult_77_n224), .B1(
        mult_77_n225), .B2(mult_77_n355), .ZN(mult_77_n22) );
  XNOR2_X1 mult_77_U377 ( .A(w_out[7]), .B(mult_77_n226), .ZN(mult_77_n382) );
  XNOR2_X1 mult_77_U376 ( .A(w_out[8]), .B(mult_77_n226), .ZN(mult_77_n343) );
  OAI22_X1 mult_77_U375 ( .A1(mult_77_n382), .A2(mult_77_n222), .B1(
        mult_77_n317), .B2(mult_77_n343), .ZN(mult_77_n32) );
  XNOR2_X1 mult_77_U374 ( .A(w_out[2]), .B(a1[7]), .ZN(mult_77_n360) );
  XNOR2_X1 mult_77_U373 ( .A(w_out[3]), .B(a1[7]), .ZN(mult_77_n361) );
  OAI22_X1 mult_77_U372 ( .A1(mult_77_n360), .A2(mult_77_n266), .B1(
        mult_77_n356), .B2(mult_77_n361), .ZN(mult_77_n380) );
  XNOR2_X1 mult_77_U371 ( .A(w_out[6]), .B(mult_77_n226), .ZN(mult_77_n341) );
  OAI22_X1 mult_77_U370 ( .A1(mult_77_n341), .A2(mult_77_n222), .B1(
        mult_77_n317), .B2(mult_77_n382), .ZN(mult_77_n381) );
  OR2_X1 mult_77_U369 ( .A1(mult_77_n380), .A2(mult_77_n381), .ZN(mult_77_n38)
         );
  XNOR2_X1 mult_77_U368 ( .A(mult_77_n380), .B(mult_77_n381), .ZN(mult_77_n39)
         );
  NAND3_X1 mult_77_U367 ( .A1(mult_77_n333), .A2(mult_77_n330), .A3(a1[7]), 
        .ZN(mult_77_n379) );
  OAI21_X1 mult_77_U366 ( .B1(mult_77_n332), .B2(mult_77_n358), .A(
        mult_77_n379), .ZN(mult_77_n75) );
  OAI21_X1 mult_77_U365 ( .B1(mult_77_n334), .B2(mult_77_n346), .A(
        mult_77_n378), .ZN(mult_77_n76) );
  OAI22_X1 mult_77_U364 ( .A1(w_out[1]), .A2(mult_77_n376), .B1(mult_77_n377), 
        .B2(mult_77_n281), .ZN(mult_77_n375) );
  NAND2_X1 mult_77_U363 ( .A1(mult_77_n371), .A2(mult_77_n221), .ZN(
        mult_77_n373) );
  NAND3_X1 mult_77_U362 ( .A1(mult_77_n375), .A2(mult_77_n329), .A3(a1[1]), 
        .ZN(mult_77_n374) );
  NAND3_X1 mult_77_U361 ( .A1(mult_77_n371), .A2(mult_77_n330), .A3(a1[3]), 
        .ZN(mult_77_n370) );
  OAI21_X1 mult_77_U360 ( .B1(mult_77_n335), .B2(mult_77_n236), .A(
        mult_77_n370), .ZN(mult_77_n369) );
  OAI222_X1 mult_77_U359 ( .A1(mult_77_n270), .A2(mult_77_n244), .B1(
        mult_77_n368), .B2(mult_77_n216), .C1(mult_77_n244), .C2(mult_77_n216), 
        .ZN(mult_77_n367) );
  AOI222_X1 mult_77_U358 ( .A1(mult_77_n319), .A2(mult_77_n47), .B1(
        mult_77_n367), .B2(mult_77_n52), .C1(mult_77_n47), .C2(mult_77_n52), 
        .ZN(mult_77_n366) );
  OAI222_X1 mult_77_U357 ( .A1(mult_77_n320), .A2(mult_77_n218), .B1(
        mult_77_n366), .B2(mult_77_n215), .C1(mult_77_n215), .C2(mult_77_n218), 
        .ZN(mult_77_n8) );
  XNOR2_X1 mult_77_U356 ( .A(w_out[6]), .B(a1[7]), .ZN(mult_77_n364) );
  OAI22_X1 mult_77_U355 ( .A1(mult_77_n364), .A2(mult_77_n265), .B1(
        mult_77_n356), .B2(mult_77_n328), .ZN(mult_77_n80) );
  XNOR2_X1 mult_77_U354 ( .A(w_out[5]), .B(a1[7]), .ZN(mult_77_n363) );
  OAI22_X1 mult_77_U353 ( .A1(mult_77_n363), .A2(mult_77_n266), .B1(
        mult_77_n356), .B2(mult_77_n364), .ZN(mult_77_n81) );
  XNOR2_X1 mult_77_U352 ( .A(w_out[4]), .B(a1[7]), .ZN(mult_77_n362) );
  OAI22_X1 mult_77_U351 ( .A1(mult_77_n362), .A2(mult_77_n266), .B1(
        mult_77_n356), .B2(mult_77_n363), .ZN(mult_77_n82) );
  OAI22_X1 mult_77_U350 ( .A1(mult_77_n361), .A2(mult_77_n265), .B1(
        mult_77_n356), .B2(mult_77_n362), .ZN(mult_77_n83) );
  XNOR2_X1 mult_77_U349 ( .A(w_out[1]), .B(a1[7]), .ZN(mult_77_n359) );
  OAI22_X1 mult_77_U348 ( .A1(mult_77_n359), .A2(mult_77_n266), .B1(
        mult_77_n356), .B2(mult_77_n360), .ZN(mult_77_n85) );
  XNOR2_X1 mult_77_U347 ( .A(w_out[0]), .B(a1[7]), .ZN(mult_77_n357) );
  NOR2_X1 mult_77_U346 ( .A1(mult_77_n356), .A2(mult_77_n330), .ZN(mult_77_n87) );
  OAI22_X1 mult_77_U345 ( .A1(mult_77_n355), .A2(mult_77_n225), .B1(
        mult_77_n224), .B2(mult_77_n355), .ZN(mult_77_n354) );
  XNOR2_X1 mult_77_U344 ( .A(w_out[6]), .B(a1[5]), .ZN(mult_77_n352) );
  OAI22_X1 mult_77_U343 ( .A1(mult_77_n352), .A2(mult_77_n238), .B1(
        mult_77_n225), .B2(mult_77_n353), .ZN(mult_77_n89) );
  XNOR2_X1 mult_77_U342 ( .A(w_out[5]), .B(a1[5]), .ZN(mult_77_n351) );
  OAI22_X1 mult_77_U341 ( .A1(mult_77_n351), .A2(mult_77_n238), .B1(
        mult_77_n225), .B2(mult_77_n352), .ZN(mult_77_n90) );
  XNOR2_X1 mult_77_U340 ( .A(w_out[4]), .B(a1[5]), .ZN(mult_77_n350) );
  OAI22_X1 mult_77_U339 ( .A1(mult_77_n350), .A2(mult_77_n224), .B1(
        mult_77_n223), .B2(mult_77_n351), .ZN(mult_77_n91) );
  XNOR2_X1 mult_77_U338 ( .A(w_out[3]), .B(a1[5]), .ZN(mult_77_n349) );
  OAI22_X1 mult_77_U337 ( .A1(mult_77_n349), .A2(mult_77_n346), .B1(
        mult_77_n223), .B2(mult_77_n350), .ZN(mult_77_n92) );
  XNOR2_X1 mult_77_U336 ( .A(w_out[2]), .B(a1[5]), .ZN(mult_77_n348) );
  OAI22_X1 mult_77_U335 ( .A1(mult_77_n348), .A2(mult_77_n346), .B1(
        mult_77_n223), .B2(mult_77_n349), .ZN(mult_77_n93) );
  XNOR2_X1 mult_77_U334 ( .A(w_out[1]), .B(a1[5]), .ZN(mult_77_n347) );
  OAI22_X1 mult_77_U333 ( .A1(mult_77_n347), .A2(mult_77_n346), .B1(
        mult_77_n223), .B2(mult_77_n348), .ZN(mult_77_n94) );
  XNOR2_X1 mult_77_U332 ( .A(w_out[0]), .B(a1[5]), .ZN(mult_77_n345) );
  OAI22_X1 mult_77_U331 ( .A1(mult_77_n345), .A2(mult_77_n346), .B1(
        mult_77_n223), .B2(mult_77_n347), .ZN(mult_77_n95) );
  NOR2_X1 mult_77_U330 ( .A1(mult_77_n318), .A2(mult_77_n330), .ZN(mult_77_n96) );
  OAI22_X1 mult_77_U329 ( .A1(mult_77_n343), .A2(mult_77_n317), .B1(
        mult_77_n222), .B2(mult_77_n343), .ZN(mult_77_n342) );
  OAI22_X1 mult_77_U328 ( .A1(mult_77_n339), .A2(mult_77_n236), .B1(
        mult_77_n317), .B2(mult_77_n341), .ZN(mult_77_n99) );
  AOI22_X1 mult_77_U327 ( .A1(mult_77_n338), .A2(mult_77_n333), .B1(
        mult_77_n331), .B2(mult_77_n338), .ZN(mult_77_n337) );
  INV_X1 mult_77_U326 ( .A(mult_77_n321), .ZN(mult_77_n371) );
  INV_X1 mult_77_U325 ( .A(a1[3]), .ZN(mult_77_n335) );
  INV_X1 mult_77_U324 ( .A(mult_77_n32), .ZN(mult_77_n323) );
  INV_X1 mult_77_U323 ( .A(mult_77_n342), .ZN(mult_77_n324) );
  INV_X1 mult_77_U322 ( .A(mult_77_n390), .ZN(mult_77_n327) );
  AOI222_X1 mult_77_U321 ( .A1(mult_77_n319), .A2(mult_77_n47), .B1(
        mult_77_n367), .B2(mult_77_n52), .C1(mult_77_n52), .C2(mult_77_n47), 
        .ZN(mult_77_n320) );
  OAI222_X1 mult_77_U320 ( .A1(mult_77_n271), .A2(mult_77_n244), .B1(
        mult_77_n271), .B2(mult_77_n216), .C1(mult_77_n216), .C2(mult_77_n244), 
        .ZN(mult_77_n319) );
  NAND2_X1 mult_77_U319 ( .A1(mult_77_n322), .A2(mult_77_n396), .ZN(
        mult_77_n340) );
  XNOR2_X1 mult_77_U318 ( .A(a1[3]), .B(a1[4]), .ZN(mult_77_n344) );
  XNOR2_X1 mult_77_U317 ( .A(a1[1]), .B(a1[2]), .ZN(mult_77_n321) );
  BUF_X2 mult_77_U316 ( .A(mult_77_n321), .Z(mult_77_n317) );
  INV_X1 mult_77_U315 ( .A(a1[7]), .ZN(mult_77_n332) );
  INV_X1 mult_77_U314 ( .A(w_out[0]), .ZN(mult_77_n330) );
  INV_X1 mult_77_U313 ( .A(w_out[1]), .ZN(mult_77_n329) );
  XNOR2_X1 mult_77_U312 ( .A(a1[1]), .B(a1[2]), .ZN(mult_77_n322) );
  INV_X1 mult_77_U311 ( .A(a1[5]), .ZN(mult_77_n334) );
  INV_X1 mult_77_U310 ( .A(mult_77_n365), .ZN(mult_77_n328) );
  INV_X1 mult_77_U309 ( .A(mult_77_n265), .ZN(mult_77_n331) );
  INV_X1 mult_77_U308 ( .A(mult_77_n356), .ZN(mult_77_n333) );
  INV_X1 mult_77_U307 ( .A(mult_77_n354), .ZN(mult_77_n326) );
  INV_X1 mult_77_U306 ( .A(mult_77_n22), .ZN(mult_77_n325) );
  XNOR2_X1 mult_77_U305 ( .A(mult_77_n2), .B(mult_77_n337), .ZN(mult_77_n316)
         );
  NAND2_X1 mult_77_U304 ( .A1(mult_77_n62), .A2(mult_77_n61), .ZN(mult_77_n315) );
  NAND2_X1 mult_77_U303 ( .A1(mult_77_n245), .A2(mult_77_n61), .ZN(
        mult_77_n313) );
  XNOR2_X1 mult_77_U302 ( .A(mult_77_n316), .B(mult_77_n309), .ZN(fb_tbs[15])
         );
  NAND3_X1 mult_77_U301 ( .A1(mult_77_n306), .A2(mult_77_n307), .A3(
        mult_77_n308), .ZN(mult_77_n60) );
  NAND2_X1 mult_77_U300 ( .A1(mult_77_n219), .A2(mult_77_n234), .ZN(
        mult_77_n308) );
  NAND2_X1 mult_77_U299 ( .A1(mult_77_n103), .A2(mult_77_n234), .ZN(
        mult_77_n307) );
  NAND2_X1 mult_77_U298 ( .A1(mult_77_n103), .A2(mult_77_n219), .ZN(
        mult_77_n306) );
  NAND3_X1 mult_77_U297 ( .A1(mult_77_n305), .A2(mult_77_n304), .A3(
        mult_77_n303), .ZN(mult_77_n6) );
  NAND2_X1 mult_77_U296 ( .A1(mult_77_n7), .A2(mult_77_n34), .ZN(mult_77_n305)
         );
  NAND2_X1 mult_77_U295 ( .A1(mult_77_n231), .A2(mult_77_n29), .ZN(
        mult_77_n304) );
  NAND2_X1 mult_77_U294 ( .A1(mult_77_n29), .A2(mult_77_n34), .ZN(mult_77_n303) );
  NAND3_X1 mult_77_U293 ( .A1(mult_77_n302), .A2(mult_77_n301), .A3(
        mult_77_n300), .ZN(mult_77_n7) );
  NAND2_X1 mult_77_U292 ( .A1(mult_77_n8), .A2(mult_77_n40), .ZN(mult_77_n302)
         );
  NAND2_X1 mult_77_U291 ( .A1(mult_77_n8), .A2(mult_77_n35), .ZN(mult_77_n301)
         );
  NAND2_X1 mult_77_U290 ( .A1(mult_77_n35), .A2(mult_77_n40), .ZN(mult_77_n300) );
  XOR2_X1 mult_77_U289 ( .A(a1[5]), .B(a1[4]), .Z(mult_77_n312) );
  NAND2_X1 mult_77_U288 ( .A1(mult_77_n312), .A2(mult_77_n344), .ZN(
        mult_77_n346) );
  AOI22_X4 mult_77_U287 ( .A1(mult_77_n365), .A2(mult_77_n331), .B1(
        mult_77_n333), .B2(mult_77_n338), .ZN(mult_77_n17) );
  NAND3_X1 mult_77_U286 ( .A1(mult_77_n297), .A2(mult_77_n298), .A3(
        mult_77_n299), .ZN(mult_77_n2) );
  NAND2_X1 mult_77_U285 ( .A1(mult_77_n17), .A2(mult_77_n18), .ZN(mult_77_n299) );
  NAND2_X1 mult_77_U284 ( .A1(mult_77_n3), .A2(mult_77_n18), .ZN(mult_77_n298)
         );
  NAND2_X1 mult_77_U283 ( .A1(mult_77_n284), .A2(mult_77_n17), .ZN(
        mult_77_n297) );
  NAND3_X1 mult_77_U282 ( .A1(mult_77_n294), .A2(mult_77_n295), .A3(
        mult_77_n296), .ZN(mult_77_n5) );
  NAND2_X1 mult_77_U281 ( .A1(mult_77_n28), .A2(mult_77_n25), .ZN(mult_77_n296) );
  NAND2_X1 mult_77_U280 ( .A1(mult_77_n6), .A2(mult_77_n25), .ZN(mult_77_n295)
         );
  NAND2_X1 mult_77_U279 ( .A1(mult_77_n262), .A2(mult_77_n28), .ZN(
        mult_77_n294) );
  XOR2_X1 mult_77_U278 ( .A(mult_77_n263), .B(mult_77_n293), .Z(fb_tbs[11]) );
  XOR2_X1 mult_77_U277 ( .A(mult_77_n28), .B(mult_77_n25), .Z(mult_77_n293) );
  NAND3_X1 mult_77_U276 ( .A1(mult_77_n290), .A2(mult_77_n291), .A3(
        mult_77_n292), .ZN(mult_77_n3) );
  NAND2_X1 mult_77_U275 ( .A1(mult_77_n19), .A2(mult_77_n20), .ZN(mult_77_n292) );
  NAND2_X1 mult_77_U274 ( .A1(mult_77_n4), .A2(mult_77_n20), .ZN(mult_77_n291)
         );
  NAND2_X1 mult_77_U273 ( .A1(mult_77_n260), .A2(mult_77_n19), .ZN(
        mult_77_n290) );
  NAND3_X1 mult_77_U272 ( .A1(mult_77_n288), .A2(mult_77_n287), .A3(
        mult_77_n289), .ZN(mult_77_n4) );
  NAND2_X1 mult_77_U271 ( .A1(mult_77_n24), .A2(mult_77_n21), .ZN(mult_77_n289) );
  NAND2_X1 mult_77_U270 ( .A1(mult_77_n261), .A2(mult_77_n21), .ZN(
        mult_77_n288) );
  NAND2_X1 mult_77_U269 ( .A1(mult_77_n5), .A2(mult_77_n24), .ZN(mult_77_n287)
         );
  XOR2_X1 mult_77_U268 ( .A(mult_77_n259), .B(mult_77_n286), .Z(fb_tbs[12]) );
  XOR2_X1 mult_77_U267 ( .A(mult_77_n24), .B(mult_77_n21), .Z(mult_77_n286) );
  NAND3_X1 mult_77_U266 ( .A1(mult_77_n290), .A2(mult_77_n249), .A3(
        mult_77_n292), .ZN(mult_77_n285) );
  NAND3_X1 mult_77_U265 ( .A1(mult_77_n249), .A2(mult_77_n290), .A3(
        mult_77_n292), .ZN(mult_77_n284) );
  OR2_X1 mult_77_U264 ( .A1(mult_77_n318), .A2(mult_77_n283), .ZN(mult_77_n378) );
  OR2_X1 mult_77_U263 ( .A1(w_out[0]), .A2(mult_77_n334), .ZN(mult_77_n283) );
  XNOR2_X1 mult_77_U262 ( .A(mult_77_n96), .B(mult_77_n111), .ZN(mult_77_n282)
         );
  NAND2_X1 mult_77_U261 ( .A1(a1[1]), .A2(mult_77_n280), .ZN(mult_77_n279) );
  INV_X1 mult_77_U260 ( .A(mult_77_n369), .ZN(mult_77_n310) );
  XNOR2_X1 mult_77_U259 ( .A(mult_77_n19), .B(mult_77_n20), .ZN(mult_77_n278)
         );
  XNOR2_X1 mult_77_U258 ( .A(mult_77_n251), .B(mult_77_n278), .ZN(fb_tbs[13])
         );
  NAND2_X1 mult_77_U257 ( .A1(mult_77_n60), .A2(mult_77_n57), .ZN(mult_77_n277) );
  NAND2_X1 mult_77_U256 ( .A1(mult_77_n269), .A2(mult_77_n60), .ZN(
        mult_77_n276) );
  NAND2_X1 mult_77_U255 ( .A1(mult_77_n230), .A2(mult_77_n57), .ZN(
        mult_77_n275) );
  NAND3_X1 mult_77_U254 ( .A1(mult_77_n272), .A2(mult_77_n273), .A3(
        mult_77_n274), .ZN(mult_77_n52) );
  NAND2_X1 mult_77_U253 ( .A1(mult_77_n58), .A2(mult_77_n94), .ZN(mult_77_n274) );
  NAND2_X1 mult_77_U252 ( .A1(mult_77_n55), .A2(mult_77_n94), .ZN(mult_77_n273) );
  NAND2_X1 mult_77_U251 ( .A1(mult_77_n55), .A2(mult_77_n58), .ZN(mult_77_n272) );
  AND3_X1 mult_77_U250 ( .A1(mult_77_n275), .A2(mult_77_n276), .A3(
        mult_77_n277), .ZN(mult_77_n368) );
  AND3_X1 mult_77_U249 ( .A1(mult_77_n229), .A2(mult_77_n275), .A3(
        mult_77_n277), .ZN(mult_77_n271) );
  NAND3_X1 mult_77_U248 ( .A1(mult_77_n313), .A2(mult_77_n315), .A3(
        mult_77_n314), .ZN(mult_77_n269) );
  NAND2_X1 mult_77_U247 ( .A1(mult_77_n356), .A2(mult_77_n383), .ZN(
        mult_77_n358) );
  NAND2_X1 mult_77_U246 ( .A1(mult_77_n267), .A2(mult_77_n268), .ZN(
        mult_77_n86) );
  OR2_X1 mult_77_U245 ( .A1(mult_77_n356), .A2(mult_77_n359), .ZN(mult_77_n268) );
  OR2_X1 mult_77_U244 ( .A1(mult_77_n357), .A2(mult_77_n358), .ZN(mult_77_n267) );
  NAND2_X1 mult_77_U243 ( .A1(mult_77_n356), .A2(mult_77_n383), .ZN(
        mult_77_n266) );
  NAND2_X1 mult_77_U242 ( .A1(mult_77_n356), .A2(mult_77_n383), .ZN(
        mult_77_n265) );
  AND3_X1 mult_77_U241 ( .A1(mult_77_n229), .A2(mult_77_n275), .A3(
        mult_77_n277), .ZN(mult_77_n270) );
  NAND3_X1 mult_77_U240 ( .A1(mult_77_n213), .A2(mult_77_n214), .A3(
        mult_77_n303), .ZN(mult_77_n263) );
  NAND3_X1 mult_77_U239 ( .A1(mult_77_n304), .A2(mult_77_n212), .A3(
        mult_77_n303), .ZN(mult_77_n262) );
  NAND3_X1 mult_77_U238 ( .A1(mult_77_n295), .A2(mult_77_n294), .A3(
        mult_77_n296), .ZN(mult_77_n261) );
  NAND3_X1 mult_77_U237 ( .A1(mult_77_n288), .A2(mult_77_n287), .A3(
        mult_77_n289), .ZN(mult_77_n260) );
  XNOR2_X1 mult_77_U236 ( .A(mult_77_n29), .B(mult_77_n34), .ZN(mult_77_n258)
         );
  XNOR2_X1 mult_77_U235 ( .A(mult_77_n258), .B(mult_77_n250), .ZN(fb_tbs[10])
         );
  NAND3_X1 mult_77_U234 ( .A1(mult_77_n255), .A2(mult_77_n256), .A3(
        mult_77_n257), .ZN(mult_77_n40) );
  NAND2_X1 mult_77_U233 ( .A1(mult_77_n45), .A2(mult_77_n48), .ZN(mult_77_n257) );
  NAND2_X1 mult_77_U232 ( .A1(mult_77_n43), .A2(mult_77_n48), .ZN(mult_77_n256) );
  NAND2_X1 mult_77_U231 ( .A1(mult_77_n43), .A2(mult_77_n45), .ZN(mult_77_n255) );
  XOR2_X1 mult_77_U230 ( .A(mult_77_n45), .B(mult_77_n48), .Z(mult_77_n254) );
  NAND2_X1 mult_77_U229 ( .A1(mult_77_n76), .A2(mult_77_n95), .ZN(mult_77_n253) );
  INV_X1 mult_77_U228 ( .A(mult_77_n253), .ZN(mult_77_n58) );
  XOR2_X1 mult_77_U227 ( .A(mult_77_n95), .B(mult_77_n76), .Z(mult_77_n59) );
  INV_X1 mult_77_U226 ( .A(mult_77_n334), .ZN(mult_77_n252) );
  NAND3_X1 mult_77_U225 ( .A1(mult_77_n288), .A2(mult_77_n287), .A3(
        mult_77_n289), .ZN(mult_77_n251) );
  XNOR2_X1 mult_77_U224 ( .A(mult_77_n285), .B(mult_77_n217), .ZN(fb_tbs[14])
         );
  NAND3_X1 mult_77_U223 ( .A1(mult_77_n301), .A2(mult_77_n302), .A3(
        mult_77_n300), .ZN(mult_77_n250) );
  NAND2_X1 mult_77_U222 ( .A1(mult_77_n4), .A2(mult_77_n20), .ZN(mult_77_n249)
         );
  NAND2_X1 mult_77_U221 ( .A1(mult_77_n102), .A2(mult_77_n110), .ZN(
        mult_77_n248) );
  NAND2_X1 mult_77_U220 ( .A1(mult_77_n235), .A2(mult_77_n110), .ZN(
        mult_77_n247) );
  NAND2_X1 mult_77_U219 ( .A1(mult_77_n235), .A2(mult_77_n102), .ZN(
        mult_77_n246) );
  OAI222_X1 mult_77_U218 ( .A1(mult_77_n372), .A2(mult_77_n311), .B1(
        mult_77_n310), .B2(mult_77_n372), .C1(mult_77_n311), .C2(mult_77_n310), 
        .ZN(mult_77_n245) );
  XNOR2_X1 mult_77_U217 ( .A(mult_77_n35), .B(mult_77_n40), .ZN(mult_77_n243)
         );
  XNOR2_X1 mult_77_U216 ( .A(mult_77_n243), .B(mult_77_n264), .ZN(fb_tbs[9])
         );
  XOR2_X1 mult_77_U215 ( .A(a1[2]), .B(a1[3]), .Z(mult_77_n396) );
  NAND2_X1 mult_77_U214 ( .A1(mult_77_n49), .A2(mult_77_n54), .ZN(mult_77_n242) );
  NAND2_X1 mult_77_U213 ( .A1(mult_77_n54), .A2(mult_77_n51), .ZN(mult_77_n241) );
  NAND2_X1 mult_77_U212 ( .A1(mult_77_n51), .A2(mult_77_n49), .ZN(mult_77_n240) );
  XNOR2_X2 mult_77_U211 ( .A(a1[6]), .B(a1[5]), .ZN(mult_77_n356) );
  CLKBUF_X1 mult_77_U210 ( .A(mult_77_n346), .Z(mult_77_n238) );
  XNOR2_X1 mult_77_U209 ( .A(mult_77_n49), .B(mult_77_n54), .ZN(mult_77_n237)
         );
  XNOR2_X1 mult_77_U208 ( .A(mult_77_n237), .B(mult_77_n51), .ZN(mult_77_n47)
         );
  NAND2_X1 mult_77_U207 ( .A1(mult_77_n233), .A2(mult_77_n322), .ZN(
        mult_77_n236) );
  BUF_X1 mult_77_U206 ( .A(mult_77_n59), .Z(mult_77_n235) );
  BUF_X1 mult_77_U205 ( .A(mult_77_n96), .Z(mult_77_n234) );
  XOR2_X1 mult_77_U204 ( .A(a1[3]), .B(a1[2]), .Z(mult_77_n233) );
  XNOR2_X1 mult_77_U203 ( .A(mult_77_n102), .B(mult_77_n110), .ZN(mult_77_n232) );
  XNOR2_X1 mult_77_U202 ( .A(mult_77_n59), .B(mult_77_n232), .ZN(mult_77_n57)
         );
  NAND3_X1 mult_77_U201 ( .A1(mult_77_n302), .A2(mult_77_n301), .A3(
        mult_77_n300), .ZN(mult_77_n231) );
  NAND3_X1 mult_77_U200 ( .A1(mult_77_n313), .A2(mult_77_n314), .A3(
        mult_77_n315), .ZN(mult_77_n230) );
  CLKBUF_X1 mult_77_U199 ( .A(mult_77_n261), .Z(mult_77_n259) );
  NAND2_X1 mult_77_U198 ( .A1(mult_77_n269), .A2(mult_77_n60), .ZN(
        mult_77_n229) );
  INV_X1 mult_77_U197 ( .A(mult_77_n228), .ZN(mult_77_n314) );
  INV_X1 mult_77_U196 ( .A(mult_77_n372), .ZN(mult_77_n227) );
  AND4_X1 mult_77_U195 ( .A1(mult_77_n227), .A2(mult_77_n220), .A3(
        mult_77_n369), .A4(mult_77_n112), .ZN(mult_77_n228) );
  XNOR2_X1 mult_77_U194 ( .A(mult_77_n104), .B(mult_77_n112), .ZN(mult_77_n311) );
  XNOR2_X1 mult_77_U193 ( .A(mult_77_n239), .B(mult_77_n55), .ZN(mult_77_n244)
         );
  XNOR2_X1 mult_77_U192 ( .A(mult_77_n103), .B(mult_77_n282), .ZN(mult_77_n61)
         );
  AND2_X1 mult_77_U191 ( .A1(mult_77_n220), .A2(mult_77_n112), .ZN(mult_77_n62) );
  INV_X1 mult_77_U190 ( .A(mult_77_n335), .ZN(mult_77_n226) );
  CLKBUF_X1 mult_77_U189 ( .A(mult_77_n223), .Z(mult_77_n225) );
  CLKBUF_X1 mult_77_U188 ( .A(mult_77_n346), .Z(mult_77_n224) );
  MUX2_X2 mult_77_U187 ( .A(mult_77_n374), .B(mult_77_n373), .S(w_out[0]), .Z(
        mult_77_n372) );
  BUF_X2 mult_77_U186 ( .A(mult_77_n344), .Z(mult_77_n223) );
  CLKBUF_X1 mult_77_U185 ( .A(mult_77_n236), .Z(mult_77_n222) );
  OAI22_X1 mult_77_U184 ( .A1(w_out[1]), .A2(mult_77_n376), .B1(mult_77_n377), 
        .B2(mult_77_n281), .ZN(mult_77_n221) );
  OAI22_X1 mult_77_U183 ( .A1(mult_77_n340), .A2(mult_77_n391), .B1(
        mult_77_n321), .B2(mult_77_n392), .ZN(mult_77_n104) );
  CLKBUF_X1 mult_77_U182 ( .A(mult_77_n104), .Z(mult_77_n220) );
  XNOR2_X1 mult_77_U181 ( .A(mult_77_n253), .B(mult_77_n94), .ZN(mult_77_n239)
         );
  BUF_X1 mult_77_U180 ( .A(mult_77_n344), .Z(mult_77_n318) );
  BUF_X1 mult_77_U179 ( .A(mult_77_n111), .Z(mult_77_n219) );
  INV_X1 mult_77_U178 ( .A(a1[0]), .ZN(mult_77_n336) );
  XNOR2_X1 mult_77_U177 ( .A(mult_77_n43), .B(mult_77_n254), .ZN(mult_77_n218)
         );
  XNOR2_X1 mult_77_U176 ( .A(mult_77_n17), .B(mult_77_n18), .ZN(mult_77_n217)
         );
  AND3_X1 mult_77_U175 ( .A1(mult_77_n246), .A2(mult_77_n247), .A3(
        mult_77_n248), .ZN(mult_77_n216) );
  AND3_X1 mult_77_U174 ( .A1(mult_77_n240), .A2(mult_77_n241), .A3(
        mult_77_n242), .ZN(mult_77_n215) );
  INV_X1 mult_77_U173 ( .A(a1[0]), .ZN(mult_77_n280) );
  INV_X1 mult_77_U172 ( .A(a1[0]), .ZN(mult_77_n281) );
  INV_X1 mult_77_U171 ( .A(mult_77_n17), .ZN(mult_77_n309) );
  CLKBUF_X1 mult_77_U170 ( .A(mult_77_n8), .Z(mult_77_n264) );
  CLKBUF_X1 mult_77_U169 ( .A(mult_77_n305), .Z(mult_77_n214) );
  CLKBUF_X1 mult_77_U168 ( .A(mult_77_n304), .Z(mult_77_n213) );
  NAND2_X1 mult_77_U167 ( .A1(mult_77_n7), .A2(mult_77_n34), .ZN(mult_77_n212)
         );
  FA_X1 mult_77_U37 ( .A(mult_77_n109), .B(mult_77_n87), .CI(mult_77_n101), 
        .CO(mult_77_n54), .S(mult_77_n55) );
  HA_X1 mult_77_U35 ( .A(mult_77_n75), .B(mult_77_n86), .CO(mult_77_n50), .S(
        mult_77_n51) );
  FA_X1 mult_77_U34 ( .A(mult_77_n108), .B(mult_77_n100), .CI(mult_77_n93), 
        .CO(mult_77_n48), .S(mult_77_n49) );
  HA_X1 mult_77_U32 ( .A(mult_77_n85), .B(mult_77_n92), .CO(mult_77_n44), .S(
        mult_77_n45) );
  FA_X1 mult_77_U31 ( .A(mult_77_n99), .B(mult_77_n107), .CI(mult_77_n50), 
        .CO(mult_77_n42), .S(mult_77_n43) );
  FA_X1 mult_77_U27 ( .A(mult_77_n327), .B(mult_77_n91), .CI(mult_77_n44), 
        .CO(mult_77_n36), .S(mult_77_n37) );
  FA_X1 mult_77_U26 ( .A(mult_77_n42), .B(mult_77_n39), .CI(mult_77_n37), .CO(
        mult_77_n34), .S(mult_77_n35) );
  FA_X1 mult_77_U24 ( .A(mult_77_n83), .B(mult_77_n90), .CI(mult_77_n323), 
        .CO(mult_77_n30), .S(mult_77_n31) );
  FA_X1 mult_77_U23 ( .A(mult_77_n36), .B(mult_77_n38), .CI(mult_77_n31), .CO(
        mult_77_n28), .S(mult_77_n29) );
  FA_X1 mult_77_U22 ( .A(mult_77_n89), .B(mult_77_n32), .CI(mult_77_n324), 
        .CO(mult_77_n26), .S(mult_77_n27) );
  FA_X1 mult_77_U21 ( .A(mult_77_n30), .B(mult_77_n82), .CI(mult_77_n27), .CO(
        mult_77_n24), .S(mult_77_n25) );
  FA_X1 mult_77_U19 ( .A(mult_77_n325), .B(mult_77_n81), .CI(mult_77_n26), 
        .CO(mult_77_n20), .S(mult_77_n21) );
  FA_X1 mult_77_U18 ( .A(mult_77_n80), .B(mult_77_n22), .CI(mult_77_n326), 
        .CO(mult_77_n18), .S(mult_77_n19) );
  XOR2_X1 add_83_U14 ( .A(ff_tbs_9_), .B(wb0_tbs_9_), .Z(y_tbs[0]) );
  NAND3_X1 add_83_U13 ( .A1(add_83_n7), .A2(add_83_n6), .A3(add_83_n8), .ZN(
        add_83_carry[5]) );
  NAND2_X1 add_83_U12 ( .A1(wb0_tbs_13_), .A2(ff_tbs_13_), .ZN(add_83_n8) );
  NAND2_X1 add_83_U11 ( .A1(add_83_carry[4]), .A2(ff_tbs_13_), .ZN(add_83_n7)
         );
  NAND2_X1 add_83_U10 ( .A1(add_83_carry[4]), .A2(wb0_tbs_13_), .ZN(add_83_n6)
         );
  XOR2_X1 add_83_U9 ( .A(add_83_n5), .B(add_83_carry[4]), .Z(y_tbs[4]) );
  XOR2_X1 add_83_U8 ( .A(wb0_tbs_13_), .B(ff_tbs_13_), .Z(add_83_n5) );
  NAND3_X1 add_83_U7 ( .A1(add_83_n2), .A2(add_83_n3), .A3(add_83_n4), .ZN(
        add_83_carry[2]) );
  NAND2_X1 add_83_U6 ( .A1(add_83_n10), .A2(ff_tbs_10_), .ZN(add_83_n4) );
  NAND2_X1 add_83_U5 ( .A1(wb0_tbs_10_), .A2(ff_tbs_10_), .ZN(add_83_n3) );
  NAND2_X1 add_83_U4 ( .A1(wb0_tbs_10_), .A2(add_83_n10), .ZN(add_83_n2) );
  XOR2_X1 add_83_U3 ( .A(wb0_tbs_10_), .B(add_83_n1), .Z(y_tbs[1]) );
  XOR2_X1 add_83_U2 ( .A(add_83_n10), .B(ff_tbs_10_), .Z(add_83_n1) );
  AND2_X2 add_83_U1 ( .A1(ff_tbs_9_), .A2(wb0_tbs_9_), .ZN(add_83_n10) );
  FA_X1 add_83_U1_2 ( .A(wb0_tbs_11_), .B(ff_tbs_11_), .CI(add_83_carry[2]), 
        .CO(add_83_carry[3]), .S(y_tbs[2]) );
  FA_X1 add_83_U1_3 ( .A(wb0_tbs_12_), .B(ff_tbs_12_), .CI(add_83_carry[3]), 
        .CO(add_83_carry[4]), .S(y_tbs[3]) );
  FA_X1 add_83_U1_5 ( .A(wb0_tbs_14_), .B(ff_tbs_14_), .CI(add_83_carry[5]), 
        .S(y_tbs[5]) );
endmodule

