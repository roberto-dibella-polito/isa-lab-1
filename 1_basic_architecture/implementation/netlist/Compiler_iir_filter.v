/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Wed Nov 18 19:04:17 2020
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
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
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
         mult_80_n3, mult_80_n2, mult_66_n327, mult_66_n326, mult_66_n325,
         mult_66_n324, mult_66_n323, mult_66_n322, mult_66_n321, mult_66_n320,
         mult_66_n319, mult_66_n318, mult_66_n317, mult_66_n316, mult_66_n315,
         mult_66_n314, mult_66_n313, mult_66_n312, mult_66_n311, mult_66_n310,
         mult_66_n309, mult_66_n308, mult_66_n307, mult_66_n306, mult_66_n305,
         mult_66_n304, mult_66_n303, mult_66_n302, mult_66_n301, mult_66_n300,
         mult_66_n299, mult_66_n298, mult_66_n297, mult_66_n296, mult_66_n295,
         mult_66_n294, mult_66_n293, mult_66_n292, mult_66_n291, mult_66_n290,
         mult_66_n289, mult_66_n288, mult_66_n287, mult_66_n286, mult_66_n285,
         mult_66_n284, mult_66_n283, mult_66_n282, mult_66_n281, mult_66_n280,
         mult_66_n279, mult_66_n278, mult_66_n277, mult_66_n276, mult_66_n275,
         mult_66_n274, mult_66_n273, mult_66_n272, mult_66_n271, mult_66_n270,
         mult_66_n269, mult_66_n268, mult_66_n267, mult_66_n266, mult_66_n265,
         mult_66_n264, mult_66_n263, mult_66_n262, mult_66_n261, mult_66_n260,
         mult_66_n259, mult_66_n258, mult_66_n257, mult_66_n256, mult_66_n255,
         mult_66_n254, mult_66_n253, mult_66_n252, mult_66_n251, mult_66_n250,
         mult_66_n249, mult_66_n248, mult_66_n247, mult_66_n246, mult_66_n245,
         mult_66_n244, mult_66_n243, mult_66_n242, mult_66_n241, mult_66_n240,
         mult_66_n239, mult_66_n238, mult_66_n237, mult_66_n236, mult_66_n235,
         mult_66_n234, mult_66_n233, mult_66_n232, mult_66_n231, mult_66_n230,
         mult_66_n229, mult_66_n228, mult_66_n227, mult_66_n226, mult_66_n225,
         mult_66_n224, mult_66_n223, mult_66_n222, mult_66_n221, mult_66_n220,
         mult_66_n219, mult_66_n218, mult_66_n217, mult_66_n216, mult_66_n215,
         mult_66_n214, mult_66_n213, mult_66_n212, mult_66_n211, mult_66_n210,
         mult_66_n209, mult_66_n208, mult_66_n109, mult_66_n108, mult_66_n107,
         mult_66_n106, mult_66_n105, mult_66_n104, mult_66_n101, mult_66_n100,
         mult_66_n99, mult_66_n98, mult_66_n97, mult_66_n96, mult_66_n93,
         mult_66_n92, mult_66_n91, mult_66_n90, mult_66_n89, mult_66_n88,
         mult_66_n87, mult_66_n86, mult_66_n84, mult_66_n83, mult_66_n82,
         mult_66_n80, mult_66_n79, mult_66_n78, mult_66_n77, mult_66_n73,
         mult_66_n72, mult_66_n61, mult_66_n60, mult_66_n59, mult_66_n58,
         mult_66_n57, mult_66_n56, mult_66_n55, mult_66_n54, mult_66_n53,
         mult_66_n52, mult_66_n51, mult_66_n50, mult_66_n49, mult_66_n48,
         mult_66_n47, mult_66_n46, mult_66_n45, mult_66_n43, mult_66_n42,
         mult_66_n41, mult_66_n40, mult_66_n39, mult_66_n38, mult_66_n37,
         mult_66_n36, mult_66_n35, mult_66_n34, mult_66_n33, mult_66_n32,
         mult_66_n30, mult_66_n29, mult_66_n28, mult_66_n27, mult_66_n26,
         mult_66_n25, mult_66_n24, mult_66_n23, mult_66_n22, mult_66_n20,
         mult_66_n19, mult_66_n18, mult_66_n17, mult_66_n16, mult_66_n6,
         mult_66_n5, mult_66_n4, mult_66_n3, mult_66_n2, mult_77_n349,
         mult_77_n348, mult_77_n347, mult_77_n346, mult_77_n345, mult_77_n344,
         mult_77_n343, mult_77_n342, mult_77_n341, mult_77_n340, mult_77_n339,
         mult_77_n338, mult_77_n337, mult_77_n336, mult_77_n335, mult_77_n334,
         mult_77_n333, mult_77_n332, mult_77_n331, mult_77_n330, mult_77_n329,
         mult_77_n328, mult_77_n327, mult_77_n326, mult_77_n325, mult_77_n324,
         mult_77_n323, mult_77_n322, mult_77_n321, mult_77_n320, mult_77_n319,
         mult_77_n318, mult_77_n317, mult_77_n316, mult_77_n315, mult_77_n314,
         mult_77_n313, mult_77_n312, mult_77_n311, mult_77_n310, mult_77_n309,
         mult_77_n308, mult_77_n307, mult_77_n306, mult_77_n305, mult_77_n304,
         mult_77_n303, mult_77_n302, mult_77_n301, mult_77_n300, mult_77_n299,
         mult_77_n298, mult_77_n297, mult_77_n296, mult_77_n295, mult_77_n294,
         mult_77_n293, mult_77_n292, mult_77_n291, mult_77_n290, mult_77_n289,
         mult_77_n288, mult_77_n287, mult_77_n286, mult_77_n285, mult_77_n284,
         mult_77_n283, mult_77_n282, mult_77_n281, mult_77_n280, mult_77_n279,
         mult_77_n278, mult_77_n277, mult_77_n276, mult_77_n275, mult_77_n274,
         mult_77_n273, mult_77_n272, mult_77_n271, mult_77_n270, mult_77_n269,
         mult_77_n268, mult_77_n267, mult_77_n266, mult_77_n265, mult_77_n264,
         mult_77_n263, mult_77_n262, mult_77_n261, mult_77_n260, mult_77_n259,
         mult_77_n258, mult_77_n257, mult_77_n256, mult_77_n255, mult_77_n254,
         mult_77_n253, mult_77_n252, mult_77_n251, mult_77_n250, mult_77_n249,
         mult_77_n248, mult_77_n247, mult_77_n246, mult_77_n245, mult_77_n244,
         mult_77_n243, mult_77_n242, mult_77_n241, mult_77_n240, mult_77_n239,
         mult_77_n238, mult_77_n237, mult_77_n236, mult_77_n235, mult_77_n234,
         mult_77_n233, mult_77_n232, mult_77_n231, mult_77_n230, mult_77_n229,
         mult_77_n228, mult_77_n227, mult_77_n226, mult_77_n225, mult_77_n224,
         mult_77_n223, mult_77_n222, mult_77_n221, mult_77_n220, mult_77_n219,
         mult_77_n218, mult_77_n217, mult_77_n216, mult_77_n215, mult_77_n214,
         mult_77_n213, mult_77_n212, mult_77_n112, mult_77_n111, mult_77_n110,
         mult_77_n109, mult_77_n108, mult_77_n107, mult_77_n104, mult_77_n103,
         mult_77_n102, mult_77_n101, mult_77_n100, mult_77_n99, mult_77_n96,
         mult_77_n95, mult_77_n94, mult_77_n93, mult_77_n92, mult_77_n91,
         mult_77_n90, mult_77_n89, mult_77_n87, mult_77_n86, mult_77_n85,
         mult_77_n83, mult_77_n82, mult_77_n81, mult_77_n80, mult_77_n76,
         mult_77_n75, mult_77_n63, mult_77_n62, mult_77_n61, mult_77_n60,
         mult_77_n59, mult_77_n58, mult_77_n57, mult_77_n56, mult_77_n55,
         mult_77_n54, mult_77_n53, mult_77_n52, mult_77_n51, mult_77_n50,
         mult_77_n49, mult_77_n48, mult_77_n47, mult_77_n46, mult_77_n45,
         mult_77_n44, mult_77_n43, mult_77_n42, mult_77_n41, mult_77_n40,
         mult_77_n39, mult_77_n38, mult_77_n37, mult_77_n36, mult_77_n35,
         mult_77_n34, mult_77_n32, mult_77_n31, mult_77_n30, mult_77_n29,
         mult_77_n28, mult_77_n27, mult_77_n26, mult_77_n25, mult_77_n24,
         mult_77_n22, mult_77_n21, mult_77_n20, mult_77_n19, mult_77_n18,
         mult_77_n17, mult_77_n8, mult_77_n7, mult_77_n6, mult_77_n5,
         mult_77_n4, mult_77_n3, mult_77_n2, add_83_n3, add_83_n1;
  wire   [7:0] x;
  wire   [8:0] w;
  wire   [8:0] w_out;
  wire   [15:9] fb_tbs;
  wire   [5:0] y_tbs;
  wire   [8:1] sub_65_carry;
  wire   [5:2] add_83_carry;

  FA_X1 sub_65_U2_3 ( .A(x[3]), .B(n20), .CI(sub_65_carry[3]), .CO(
        sub_65_carry[4]), .S(w[3]) );
  FA_X1 sub_65_U2_4 ( .A(x[4]), .B(n21), .CI(sub_65_carry[4]), .CO(
        sub_65_carry[5]), .S(w[4]) );
  FA_X1 sub_65_U2_6 ( .A(x[6]), .B(n23), .CI(sub_65_carry[6]), .CO(
        sub_65_carry[7]), .S(w[6]) );
  FA_X1 sub_65_U2_7 ( .A(x[7]), .B(n16), .CI(sub_65_carry[7]), .CO(
        sub_65_carry[8]), .S(w[7]) );
  XOR2_X1 U5 ( .A(sub_65_carry[5]), .B(n12), .Z(w[5]) );
  XOR2_X1 U6 ( .A(x[1]), .B(n18), .Z(n3) );
  XOR2_X1 U7 ( .A(n3), .B(sub_65_carry[1]), .Z(w[1]) );
  NAND2_X1 U8 ( .A1(x[1]), .A2(n18), .ZN(n4) );
  NAND2_X1 U9 ( .A1(x[1]), .A2(sub_65_carry[1]), .ZN(n5) );
  NAND2_X1 U10 ( .A1(n18), .A2(sub_65_carry[1]), .ZN(n6) );
  NAND3_X1 U11 ( .A1(n4), .A2(n5), .A3(n6), .ZN(sub_65_carry[2]) );
  XOR2_X1 U12 ( .A(x[2]), .B(n19), .Z(n7) );
  XOR2_X1 U13 ( .A(n7), .B(sub_65_carry[2]), .Z(w[2]) );
  NAND2_X1 U14 ( .A1(x[2]), .A2(n19), .ZN(n8) );
  NAND2_X1 U15 ( .A1(x[2]), .A2(sub_65_carry[2]), .ZN(n9) );
  NAND2_X1 U16 ( .A1(n19), .A2(sub_65_carry[2]), .ZN(n10) );
  NAND3_X1 U17 ( .A1(n8), .A2(n9), .A3(n10), .ZN(sub_65_carry[3]) );
  XNOR2_X1 U18 ( .A(sub_65_carry[8]), .B(n11), .ZN(w[8]) );
  XNOR2_X1 U19 ( .A(n16), .B(x[7]), .ZN(n11) );
  XOR2_X1 U20 ( .A(n22), .B(x[5]), .Z(n12) );
  NAND2_X1 U21 ( .A1(sub_65_carry[5]), .A2(n22), .ZN(n13) );
  NAND2_X1 U22 ( .A1(sub_65_carry[5]), .A2(x[5]), .ZN(n14) );
  NAND2_X1 U23 ( .A1(n22), .A2(x[5]), .ZN(n15) );
  NAND3_X1 U24 ( .A1(n13), .A2(n14), .A3(n15), .ZN(sub_65_carry[6]) );
  CLKBUF_X1 U25 ( .A(n23), .Z(n16) );
  INV_X1 U26 ( .A(fb_tbs[9]), .ZN(n17) );
  INV_X1 U27 ( .A(fb_tbs[14]), .ZN(n22) );
  INV_X1 U28 ( .A(fb_tbs[13]), .ZN(n21) );
  INV_X1 U29 ( .A(fb_tbs[12]), .ZN(n20) );
  INV_X1 U30 ( .A(fb_tbs[11]), .ZN(n19) );
  INV_X1 U31 ( .A(fb_tbs[10]), .ZN(n18) );
  INV_X1 U32 ( .A(fb_tbs[15]), .ZN(n23) );
  OR2_X1 U33 ( .A1(n17), .A2(x[0]), .ZN(sub_65_carry[1]) );
  XNOR2_X1 U34 ( .A(x[0]), .B(n17), .ZN(w[0]) );
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
  NAND2_X1 reg_filter_U19 ( .A1(w[6]), .A2(delay1), .ZN(reg_filter_n7) );
  NAND2_X1 reg_filter_U18 ( .A1(w[2]), .A2(delay1), .ZN(reg_filter_n3) );
  OAI21_X1 reg_filter_U17 ( .B1(reg_filter_n12), .B2(delay1), .A(reg_filter_n3), .ZN(reg_filter_n21) );
  NAND2_X1 reg_filter_U16 ( .A1(w[1]), .A2(delay1), .ZN(reg_filter_n2) );
  OAI21_X1 reg_filter_U15 ( .B1(reg_filter_n11), .B2(delay1), .A(reg_filter_n2), .ZN(reg_filter_n20) );
  NAND2_X1 reg_filter_U14 ( .A1(w[5]), .A2(delay1), .ZN(reg_filter_n6) );
  OAI21_X1 reg_filter_U13 ( .B1(reg_filter_n15), .B2(delay1), .A(reg_filter_n6), .ZN(reg_filter_n24) );
  NAND2_X1 reg_filter_U12 ( .A1(w[4]), .A2(delay1), .ZN(reg_filter_n5) );
  OAI21_X1 reg_filter_U11 ( .B1(reg_filter_n14), .B2(delay1), .A(reg_filter_n5), .ZN(reg_filter_n23) );
  NAND2_X1 reg_filter_U10 ( .A1(w[3]), .A2(delay1), .ZN(reg_filter_n4) );
  OAI21_X1 reg_filter_U9 ( .B1(reg_filter_n13), .B2(delay1), .A(reg_filter_n4), 
        .ZN(reg_filter_n22) );
  NAND2_X1 reg_filter_U8 ( .A1(delay1), .A2(w[0]), .ZN(reg_filter_n1) );
  OAI21_X1 reg_filter_U7 ( .B1(reg_filter_n10), .B2(delay1), .A(reg_filter_n1), 
        .ZN(reg_filter_n19) );
  NAND2_X1 reg_filter_U6 ( .A1(w[8]), .A2(delay1), .ZN(reg_filter_n9) );
  OAI21_X1 reg_filter_U5 ( .B1(reg_filter_n18), .B2(delay1), .A(reg_filter_n9), 
        .ZN(reg_filter_n27) );
  NAND2_X1 reg_filter_U4 ( .A1(w[7]), .A2(delay1), .ZN(reg_filter_n8) );
  OAI21_X1 reg_filter_U3 ( .B1(reg_filter_n17), .B2(delay1), .A(reg_filter_n8), 
        .ZN(reg_filter_n26) );
  OAI21_X1 reg_filter_U2 ( .B1(reg_filter_n16), .B2(delay1), .A(reg_filter_n7), 
        .ZN(reg_filter_n25) );
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
  NAND2_X1 reg_out_U15 ( .A1(1'b0), .A2(1'b1), .ZN(reg_out_n48) );
  OAI21_X1 reg_out_U14 ( .B1(reg_out_n40), .B2(1'b1), .A(reg_out_n48), .ZN(
        reg_out_n32) );
  NAND2_X1 reg_out_U13 ( .A1(1'b1), .A2(1'b0), .ZN(reg_out_n49) );
  OAI21_X1 reg_out_U12 ( .B1(reg_out_n41), .B2(1'b1), .A(reg_out_n49), .ZN(
        reg_out_n33) );
  NAND2_X1 reg_out_U11 ( .A1(y_tbs[0]), .A2(1'b1), .ZN(reg_out_n47) );
  OAI21_X1 reg_out_U10 ( .B1(reg_out_n39), .B2(1'b1), .A(reg_out_n47), .ZN(
        reg_out_n31) );
  NAND2_X1 reg_out_U9 ( .A1(y_tbs[1]), .A2(1'b1), .ZN(reg_out_n46) );
  OAI21_X1 reg_out_U8 ( .B1(reg_out_n38), .B2(1'b1), .A(reg_out_n46), .ZN(
        reg_out_n30) );
  NAND2_X1 reg_out_U7 ( .A1(y_tbs[2]), .A2(1'b1), .ZN(reg_out_n45) );
  OAI21_X1 reg_out_U6 ( .B1(reg_out_n37), .B2(1'b1), .A(reg_out_n45), .ZN(
        reg_out_n29) );
  NAND2_X1 reg_out_U5 ( .A1(y_tbs[3]), .A2(1'b1), .ZN(reg_out_n44) );
  OAI21_X1 reg_out_U4 ( .B1(reg_out_n36), .B2(1'b1), .A(reg_out_n44), .ZN(
        reg_out_n28) );
  NAND2_X1 reg_out_U3 ( .A1(y_tbs[4]), .A2(1'b1), .ZN(reg_out_n43) );
  OAI21_X1 reg_out_U2 ( .B1(reg_out_n35), .B2(1'b1), .A(reg_out_n43), .ZN(
        reg_out_n27) );
  DFFR_X1 reg_out_Q_reg_7_ ( .D(reg_out_n26), .CK(CLK), .RN(RST_n), .Q(DOUT[7]), .QN(reg_out_n34) );
  DFFR_X1 reg_out_Q_reg_0_ ( .D(reg_out_n33), .CK(CLK), .RN(RST_n), .Q(DOUT[0]), .QN(reg_out_n41) );
  DFFR_X1 reg_out_Q_reg_1_ ( .D(reg_out_n32), .CK(CLK), .RN(RST_n), .Q(DOUT[1]), .QN(reg_out_n40) );
  DFFR_X1 reg_out_Q_reg_2_ ( .D(reg_out_n31), .CK(CLK), .RN(RST_n), .Q(DOUT[2]), .QN(reg_out_n39) );
  DFFR_X1 reg_out_Q_reg_3_ ( .D(reg_out_n30), .CK(CLK), .RN(RST_n), .Q(DOUT[3]), .QN(reg_out_n38) );
  DFFR_X1 reg_out_Q_reg_4_ ( .D(reg_out_n29), .CK(CLK), .RN(RST_n), .Q(DOUT[4]), .QN(reg_out_n37) );
  DFFR_X1 reg_out_Q_reg_5_ ( .D(reg_out_n28), .CK(CLK), .RN(RST_n), .Q(DOUT[5]), .QN(reg_out_n36) );
  DFFR_X1 reg_out_Q_reg_6_ ( .D(reg_out_n27), .CK(CLK), .RN(RST_n), .Q(DOUT[6]), .QN(reg_out_n35) );
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
  INV_X1 mult_80_U185 ( .A(w_out[1]), .ZN(mult_80_n219) );
  INV_X1 mult_80_U184 ( .A(w_out[0]), .ZN(mult_80_n221) );
  INV_X1 mult_80_U183 ( .A(b1[7]), .ZN(mult_80_n222) );
  INV_X1 mult_80_U182 ( .A(b1[5]), .ZN(mult_80_n223) );
  XNOR2_X1 mult_80_U181 ( .A(b1[6]), .B(b1[5]), .ZN(mult_80_n230) );
  INV_X1 mult_80_U180 ( .A(mult_80_n61), .ZN(mult_80_n218) );
  INV_X1 mult_80_U179 ( .A(mult_80_n270), .ZN(mult_80_n220) );
  INV_X1 mult_80_U178 ( .A(b1[0]), .ZN(mult_80_n226) );
  INV_X1 mult_80_U177 ( .A(b1[3]), .ZN(mult_80_n224) );
  XNOR2_X1 mult_80_U176 ( .A(b1[2]), .B(b1[1]), .ZN(mult_80_n235) );
  XNOR2_X1 mult_80_U175 ( .A(b1[4]), .B(b1[3]), .ZN(mult_80_n242) );
  INV_X1 mult_80_U174 ( .A(mult_80_n30), .ZN(mult_80_n208) );
  INV_X1 mult_80_U173 ( .A(mult_80_n240), .ZN(mult_80_n209) );
  INV_X1 mult_80_U172 ( .A(mult_80_n288), .ZN(mult_80_n212) );
  INV_X1 mult_80_U171 ( .A(mult_80_n252), .ZN(mult_80_n211) );
  INV_X1 mult_80_U170 ( .A(mult_80_n20), .ZN(mult_80_n210) );
  INV_X1 mult_80_U169 ( .A(mult_80_n267), .ZN(mult_80_n217) );
  INV_X1 mult_80_U168 ( .A(mult_80_n266), .ZN(mult_80_n216) );
  INV_X1 mult_80_U167 ( .A(mult_80_n235), .ZN(mult_80_n225) );
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
  XOR2_X1 mult_66_U328 ( .A(mult_66_n258), .B(b0[3]), .Z(mult_66_n326) );
  XOR2_X1 mult_66_U327 ( .A(b0[3]), .B(b0[2]), .Z(mult_66_n327) );
  NAND2_X1 mult_66_U326 ( .A1(mult_66_n273), .A2(mult_66_n327), .ZN(
        mult_66_n272) );
  XOR2_X1 mult_66_U325 ( .A(w[2]), .B(mult_66_n263), .Z(mult_66_n271) );
  OAI22_X1 mult_66_U324 ( .A1(mult_66_n326), .A2(mult_66_n272), .B1(
        mult_66_n273), .B2(mult_66_n271), .ZN(mult_66_n100) );
  XOR2_X1 mult_66_U323 ( .A(mult_66_n260), .B(b0[3]), .Z(mult_66_n325) );
  OAI22_X1 mult_66_U322 ( .A1(mult_66_n325), .A2(mult_66_n272), .B1(
        mult_66_n273), .B2(mult_66_n326), .ZN(mult_66_n101) );
  XNOR2_X1 mult_66_U321 ( .A(w[8]), .B(b0[1]), .ZN(mult_66_n323) );
  NAND2_X1 mult_66_U320 ( .A1(b0[1]), .A2(mult_66_n265), .ZN(mult_66_n311) );
  OAI22_X1 mult_66_U319 ( .A1(mult_66_n265), .A2(mult_66_n323), .B1(
        mult_66_n323), .B2(mult_66_n311), .ZN(mult_66_n324) );
  XNOR2_X1 mult_66_U318 ( .A(w[7]), .B(b0[1]), .ZN(mult_66_n322) );
  OAI22_X1 mult_66_U317 ( .A1(mult_66_n322), .A2(mult_66_n311), .B1(
        mult_66_n323), .B2(mult_66_n265), .ZN(mult_66_n104) );
  XNOR2_X1 mult_66_U316 ( .A(w[6]), .B(b0[1]), .ZN(mult_66_n321) );
  OAI22_X1 mult_66_U315 ( .A1(mult_66_n321), .A2(mult_66_n311), .B1(
        mult_66_n322), .B2(mult_66_n265), .ZN(mult_66_n105) );
  XNOR2_X1 mult_66_U314 ( .A(w[5]), .B(b0[1]), .ZN(mult_66_n320) );
  OAI22_X1 mult_66_U313 ( .A1(mult_66_n320), .A2(mult_66_n311), .B1(
        mult_66_n321), .B2(mult_66_n265), .ZN(mult_66_n106) );
  XNOR2_X1 mult_66_U312 ( .A(w[4]), .B(b0[1]), .ZN(mult_66_n319) );
  OAI22_X1 mult_66_U311 ( .A1(mult_66_n319), .A2(mult_66_n311), .B1(
        mult_66_n320), .B2(mult_66_n265), .ZN(mult_66_n107) );
  XNOR2_X1 mult_66_U310 ( .A(w[3]), .B(b0[1]), .ZN(mult_66_n318) );
  OAI22_X1 mult_66_U309 ( .A1(mult_66_n318), .A2(mult_66_n311), .B1(
        mult_66_n319), .B2(mult_66_n265), .ZN(mult_66_n108) );
  XNOR2_X1 mult_66_U308 ( .A(w[2]), .B(b0[1]), .ZN(mult_66_n312) );
  OAI22_X1 mult_66_U307 ( .A1(mult_66_n312), .A2(mult_66_n311), .B1(
        mult_66_n318), .B2(mult_66_n265), .ZN(mult_66_n109) );
  XOR2_X1 mult_66_U306 ( .A(w[7]), .B(mult_66_n262), .Z(mult_66_n289) );
  XOR2_X1 mult_66_U305 ( .A(b0[5]), .B(b0[4]), .Z(mult_66_n317) );
  NAND2_X1 mult_66_U304 ( .A1(mult_66_n280), .A2(mult_66_n317), .ZN(
        mult_66_n282) );
  XOR2_X1 mult_66_U303 ( .A(mult_66_n216), .B(mult_66_n262), .Z(mult_66_n291)
         );
  OAI22_X1 mult_66_U302 ( .A1(mult_66_n289), .A2(mult_66_n282), .B1(
        mult_66_n280), .B2(mult_66_n291), .ZN(mult_66_n20) );
  XOR2_X1 mult_66_U301 ( .A(w[7]), .B(mult_66_n263), .Z(mult_66_n315) );
  XOR2_X1 mult_66_U300 ( .A(mult_66_n216), .B(mult_66_n263), .Z(mult_66_n279)
         );
  OAI22_X1 mult_66_U299 ( .A1(mult_66_n315), .A2(mult_66_n272), .B1(
        mult_66_n273), .B2(mult_66_n279), .ZN(mult_66_n30) );
  XOR2_X1 mult_66_U298 ( .A(w[2]), .B(mult_66_n261), .Z(mult_66_n294) );
  XOR2_X1 mult_66_U297 ( .A(b0[7]), .B(b0[6]), .Z(mult_66_n316) );
  NAND2_X1 mult_66_U296 ( .A1(mult_66_n268), .A2(mult_66_n316), .ZN(
        mult_66_n269) );
  XOR2_X1 mult_66_U295 ( .A(w[3]), .B(mult_66_n261), .Z(mult_66_n295) );
  OAI22_X1 mult_66_U294 ( .A1(mult_66_n294), .A2(mult_66_n269), .B1(
        mult_66_n268), .B2(mult_66_n295), .ZN(mult_66_n313) );
  XOR2_X1 mult_66_U293 ( .A(mult_66_n209), .B(mult_66_n263), .Z(mult_66_n277)
         );
  OAI22_X1 mult_66_U292 ( .A1(mult_66_n277), .A2(mult_66_n272), .B1(
        mult_66_n273), .B2(mult_66_n315), .ZN(mult_66_n314) );
  OR2_X1 mult_66_U291 ( .A1(mult_66_n313), .A2(mult_66_n314), .ZN(mult_66_n36)
         );
  XNOR2_X1 mult_66_U290 ( .A(mult_66_n313), .B(mult_66_n314), .ZN(mult_66_n37)
         );
  OAI22_X1 mult_66_U289 ( .A1(w[1]), .A2(mult_66_n311), .B1(mult_66_n312), 
        .B2(mult_66_n265), .ZN(mult_66_n310) );
  NAND3_X1 mult_66_U288 ( .A1(mult_66_n310), .A2(mult_66_n258), .A3(b0[1]), 
        .ZN(mult_66_n308) );
  NAND2_X1 mult_66_U287 ( .A1(mult_66_n264), .A2(mult_66_n310), .ZN(
        mult_66_n309) );
  MUX2_X1 mult_66_U286 ( .A(mult_66_n308), .B(mult_66_n309), .S(w[0]), .Z(
        mult_66_n305) );
  NAND3_X1 mult_66_U285 ( .A1(mult_66_n264), .A2(mult_66_n260), .A3(b0[3]), 
        .ZN(mult_66_n307) );
  OAI21_X1 mult_66_U284 ( .B1(mult_66_n263), .B2(mult_66_n272), .A(
        mult_66_n307), .ZN(mult_66_n306) );
  OAI222_X1 mult_66_U283 ( .A1(mult_66_n305), .A2(mult_66_n257), .B1(
        mult_66_n259), .B2(mult_66_n305), .C1(mult_66_n259), .C2(mult_66_n257), 
        .ZN(mult_66_n304) );
  AOI222_X1 mult_66_U282 ( .A1(mult_66_n304), .A2(mult_66_n59), .B1(
        mult_66_n304), .B2(mult_66_n60), .C1(mult_66_n60), .C2(mult_66_n59), 
        .ZN(mult_66_n303) );
  AOI222_X1 mult_66_U281 ( .A1(mult_66_n256), .A2(mult_66_n55), .B1(
        mult_66_n256), .B2(mult_66_n58), .C1(mult_66_n58), .C2(mult_66_n55), 
        .ZN(mult_66_n302) );
  OR3_X1 mult_66_U280 ( .A1(mult_66_n268), .A2(w[0]), .A3(mult_66_n261), .ZN(
        mult_66_n300) );
  OAI21_X1 mult_66_U279 ( .B1(mult_66_n261), .B2(mult_66_n269), .A(
        mult_66_n300), .ZN(mult_66_n72) );
  OR3_X1 mult_66_U278 ( .A1(mult_66_n280), .A2(w[0]), .A3(mult_66_n262), .ZN(
        mult_66_n299) );
  OAI21_X1 mult_66_U277 ( .B1(mult_66_n262), .B2(mult_66_n282), .A(
        mult_66_n299), .ZN(mult_66_n73) );
  XOR2_X1 mult_66_U276 ( .A(mult_66_n231), .B(mult_66_n261), .Z(mult_66_n298)
         );
  XNOR2_X1 mult_66_U275 ( .A(w[7]), .B(b0[7]), .ZN(mult_66_n270) );
  OAI22_X1 mult_66_U274 ( .A1(mult_66_n298), .A2(mult_66_n269), .B1(
        mult_66_n268), .B2(mult_66_n270), .ZN(mult_66_n77) );
  XOR2_X1 mult_66_U273 ( .A(w[5]), .B(mult_66_n261), .Z(mult_66_n297) );
  OAI22_X1 mult_66_U272 ( .A1(mult_66_n297), .A2(mult_66_n269), .B1(
        mult_66_n268), .B2(mult_66_n298), .ZN(mult_66_n78) );
  XOR2_X1 mult_66_U271 ( .A(w[4]), .B(mult_66_n261), .Z(mult_66_n296) );
  OAI22_X1 mult_66_U270 ( .A1(mult_66_n296), .A2(mult_66_n269), .B1(
        mult_66_n268), .B2(mult_66_n297), .ZN(mult_66_n79) );
  OAI22_X1 mult_66_U269 ( .A1(mult_66_n295), .A2(mult_66_n269), .B1(
        mult_66_n268), .B2(mult_66_n296), .ZN(mult_66_n80) );
  XOR2_X1 mult_66_U268 ( .A(mult_66_n258), .B(b0[7]), .Z(mult_66_n293) );
  OAI22_X1 mult_66_U267 ( .A1(mult_66_n293), .A2(mult_66_n269), .B1(
        mult_66_n268), .B2(mult_66_n294), .ZN(mult_66_n82) );
  XOR2_X1 mult_66_U266 ( .A(mult_66_n260), .B(b0[7]), .Z(mult_66_n292) );
  OAI22_X1 mult_66_U265 ( .A1(mult_66_n292), .A2(mult_66_n269), .B1(
        mult_66_n268), .B2(mult_66_n293), .ZN(mult_66_n83) );
  NOR2_X1 mult_66_U264 ( .A1(mult_66_n268), .A2(mult_66_n260), .ZN(mult_66_n84) );
  OAI22_X1 mult_66_U263 ( .A1(mult_66_n291), .A2(mult_66_n280), .B1(
        mult_66_n282), .B2(mult_66_n291), .ZN(mult_66_n290) );
  XOR2_X1 mult_66_U262 ( .A(mult_66_n231), .B(mult_66_n262), .Z(mult_66_n288)
         );
  OAI22_X1 mult_66_U261 ( .A1(mult_66_n288), .A2(mult_66_n282), .B1(
        mult_66_n280), .B2(mult_66_n289), .ZN(mult_66_n86) );
  XOR2_X1 mult_66_U260 ( .A(w[5]), .B(mult_66_n262), .Z(mult_66_n287) );
  OAI22_X1 mult_66_U259 ( .A1(mult_66_n287), .A2(mult_66_n282), .B1(
        mult_66_n280), .B2(mult_66_n288), .ZN(mult_66_n87) );
  XOR2_X1 mult_66_U258 ( .A(w[4]), .B(mult_66_n262), .Z(mult_66_n286) );
  OAI22_X1 mult_66_U257 ( .A1(mult_66_n286), .A2(mult_66_n282), .B1(
        mult_66_n280), .B2(mult_66_n287), .ZN(mult_66_n88) );
  XOR2_X1 mult_66_U256 ( .A(w[3]), .B(mult_66_n262), .Z(mult_66_n285) );
  OAI22_X1 mult_66_U255 ( .A1(mult_66_n285), .A2(mult_66_n282), .B1(
        mult_66_n280), .B2(mult_66_n286), .ZN(mult_66_n89) );
  XOR2_X1 mult_66_U254 ( .A(w[2]), .B(mult_66_n262), .Z(mult_66_n284) );
  OAI22_X1 mult_66_U253 ( .A1(mult_66_n284), .A2(mult_66_n282), .B1(
        mult_66_n280), .B2(mult_66_n285), .ZN(mult_66_n90) );
  XOR2_X1 mult_66_U252 ( .A(mult_66_n258), .B(b0[5]), .Z(mult_66_n283) );
  OAI22_X1 mult_66_U251 ( .A1(mult_66_n283), .A2(mult_66_n282), .B1(
        mult_66_n280), .B2(mult_66_n284), .ZN(mult_66_n91) );
  XOR2_X1 mult_66_U250 ( .A(mult_66_n260), .B(b0[5]), .Z(mult_66_n281) );
  OAI22_X1 mult_66_U249 ( .A1(mult_66_n281), .A2(mult_66_n282), .B1(
        mult_66_n280), .B2(mult_66_n283), .ZN(mult_66_n92) );
  NOR2_X1 mult_66_U248 ( .A1(mult_66_n280), .A2(mult_66_n260), .ZN(mult_66_n93) );
  OAI22_X1 mult_66_U247 ( .A1(mult_66_n279), .A2(mult_66_n273), .B1(
        mult_66_n272), .B2(mult_66_n279), .ZN(mult_66_n278) );
  XOR2_X1 mult_66_U246 ( .A(w[5]), .B(mult_66_n263), .Z(mult_66_n276) );
  OAI22_X1 mult_66_U245 ( .A1(mult_66_n276), .A2(mult_66_n272), .B1(
        mult_66_n273), .B2(mult_66_n277), .ZN(mult_66_n96) );
  XOR2_X1 mult_66_U244 ( .A(w[4]), .B(mult_66_n263), .Z(mult_66_n275) );
  OAI22_X1 mult_66_U243 ( .A1(mult_66_n275), .A2(mult_66_n272), .B1(
        mult_66_n273), .B2(mult_66_n276), .ZN(mult_66_n97) );
  XOR2_X1 mult_66_U242 ( .A(w[3]), .B(mult_66_n263), .Z(mult_66_n274) );
  OAI22_X1 mult_66_U241 ( .A1(mult_66_n274), .A2(mult_66_n272), .B1(
        mult_66_n273), .B2(mult_66_n275), .ZN(mult_66_n98) );
  OAI22_X1 mult_66_U240 ( .A1(mult_66_n271), .A2(mult_66_n272), .B1(
        mult_66_n273), .B2(mult_66_n274), .ZN(mult_66_n99) );
  XOR2_X1 mult_66_U239 ( .A(mult_66_n261), .B(mult_66_n216), .Z(mult_66_n267)
         );
  OAI22_X1 mult_66_U238 ( .A1(mult_66_n267), .A2(mult_66_n268), .B1(
        mult_66_n269), .B2(mult_66_n270), .ZN(mult_66_n266) );
  NAND3_X1 mult_66_U237 ( .A1(mult_66_n247), .A2(mult_66_n248), .A3(
        mult_66_n249), .ZN(mult_66_n4) );
  NAND2_X1 mult_66_U236 ( .A1(mult_66_n23), .A2(mult_66_n26), .ZN(mult_66_n249) );
  NAND2_X1 mult_66_U235 ( .A1(mult_66_n5), .A2(mult_66_n26), .ZN(mult_66_n248)
         );
  NAND2_X1 mult_66_U234 ( .A1(mult_66_n5), .A2(mult_66_n23), .ZN(mult_66_n247)
         );
  XOR2_X1 mult_66_U233 ( .A(mult_66_n5), .B(mult_66_n246), .Z(wb0_tbs_11_) );
  XOR2_X1 mult_66_U232 ( .A(mult_66_n23), .B(mult_66_n26), .Z(mult_66_n246) );
  NAND3_X1 mult_66_U231 ( .A1(mult_66_n244), .A2(mult_66_n243), .A3(
        mult_66_n245), .ZN(mult_66_n2) );
  NAND2_X1 mult_66_U230 ( .A1(mult_66_n18), .A2(mult_66_n17), .ZN(mult_66_n245) );
  NAND2_X1 mult_66_U229 ( .A1(mult_66_n3), .A2(mult_66_n17), .ZN(mult_66_n244)
         );
  NAND2_X1 mult_66_U228 ( .A1(mult_66_n3), .A2(mult_66_n18), .ZN(mult_66_n243)
         );
  XOR2_X1 mult_66_U227 ( .A(mult_66_n3), .B(mult_66_n242), .Z(wb0_tbs_13_) );
  XOR2_X1 mult_66_U226 ( .A(mult_66_n18), .B(mult_66_n17), .Z(mult_66_n242) );
  INV_X1 mult_66_U225 ( .A(b0[0]), .ZN(mult_66_n265) );
  INV_X1 mult_66_U224 ( .A(b0[7]), .ZN(mult_66_n261) );
  INV_X1 mult_66_U223 ( .A(b0[3]), .ZN(mult_66_n263) );
  INV_X1 mult_66_U222 ( .A(b0[5]), .ZN(mult_66_n262) );
  XNOR2_X1 mult_66_U221 ( .A(b0[6]), .B(b0[5]), .ZN(mult_66_n268) );
  XNOR2_X1 mult_66_U220 ( .A(b0[4]), .B(b0[3]), .ZN(mult_66_n280) );
  XNOR2_X1 mult_66_U219 ( .A(b0[2]), .B(b0[1]), .ZN(mult_66_n273) );
  INV_X1 mult_66_U218 ( .A(mult_66_n273), .ZN(mult_66_n264) );
  INV_X1 mult_66_U217 ( .A(mult_66_n61), .ZN(mult_66_n257) );
  INV_X1 mult_66_U216 ( .A(mult_66_n306), .ZN(mult_66_n259) );
  INV_X1 mult_66_U215 ( .A(w[1]), .ZN(mult_66_n258) );
  INV_X1 mult_66_U214 ( .A(mult_66_n30), .ZN(mult_66_n250) );
  INV_X1 mult_66_U213 ( .A(mult_66_n278), .ZN(mult_66_n251) );
  INV_X1 mult_66_U212 ( .A(mult_66_n324), .ZN(mult_66_n254) );
  INV_X1 mult_66_U211 ( .A(mult_66_n20), .ZN(mult_66_n252) );
  INV_X1 mult_66_U210 ( .A(w[0]), .ZN(mult_66_n260) );
  INV_X1 mult_66_U209 ( .A(mult_66_n290), .ZN(mult_66_n253) );
  INV_X1 mult_66_U208 ( .A(mult_66_n303), .ZN(mult_66_n256) );
  INV_X1 mult_66_U207 ( .A(mult_66_n302), .ZN(mult_66_n255) );
  NAND2_X1 mult_66_U206 ( .A1(mult_66_n50), .A2(mult_66_n45), .ZN(mult_66_n241) );
  NAND2_X1 mult_66_U205 ( .A1(mult_66_n225), .A2(mult_66_n50), .ZN(
        mult_66_n240) );
  NAND2_X1 mult_66_U204 ( .A1(mult_66_n226), .A2(mult_66_n45), .ZN(
        mult_66_n239) );
  NAND2_X1 mult_66_U203 ( .A1(mult_66_n54), .A2(mult_66_n51), .ZN(mult_66_n238) );
  NAND2_X1 mult_66_U202 ( .A1(mult_66_n255), .A2(mult_66_n54), .ZN(
        mult_66_n237) );
  NAND2_X1 mult_66_U201 ( .A1(mult_66_n255), .A2(mult_66_n51), .ZN(
        mult_66_n236) );
  OAI222_X1 mult_66_U200 ( .A1(mult_66_n215), .A2(mult_66_n235), .B1(
        mult_66_n301), .B2(mult_66_n208), .C1(mult_66_n235), .C2(mult_66_n208), 
        .ZN(mult_66_n234) );
  INV_X1 mult_66_U199 ( .A(mult_66_n39), .ZN(mult_66_n235) );
  XNOR2_X1 mult_66_U198 ( .A(mult_66_n2), .B(mult_66_n16), .ZN(mult_66_n233)
         );
  XNOR2_X1 mult_66_U197 ( .A(mult_66_n233), .B(mult_66_n232), .ZN(wb0_tbs_14_)
         );
  CLKBUF_X1 mult_66_U196 ( .A(mult_66_n209), .Z(mult_66_n231) );
  NAND3_X1 mult_66_U195 ( .A1(mult_66_n228), .A2(mult_66_n229), .A3(
        mult_66_n230), .ZN(mult_66_n6) );
  NAND2_X1 mult_66_U194 ( .A1(mult_66_n33), .A2(mult_66_n38), .ZN(mult_66_n230) );
  NAND2_X1 mult_66_U193 ( .A1(mult_66_n234), .A2(mult_66_n38), .ZN(
        mult_66_n229) );
  NAND2_X1 mult_66_U192 ( .A1(mult_66_n234), .A2(mult_66_n33), .ZN(
        mult_66_n228) );
  XOR2_X1 mult_66_U191 ( .A(mult_66_n214), .B(mult_66_n227), .Z(wb0_tbs_9_) );
  XOR2_X1 mult_66_U190 ( .A(mult_66_n33), .B(mult_66_n38), .Z(mult_66_n227) );
  NAND3_X1 mult_66_U189 ( .A1(mult_66_n238), .A2(mult_66_n237), .A3(
        mult_66_n236), .ZN(mult_66_n226) );
  NAND3_X1 mult_66_U188 ( .A1(mult_66_n236), .A2(mult_66_n238), .A3(
        mult_66_n237), .ZN(mult_66_n225) );
  NAND2_X1 mult_66_U187 ( .A1(mult_66_n49), .A2(mult_66_n47), .ZN(mult_66_n224) );
  NAND2_X1 mult_66_U186 ( .A1(mult_66_n52), .A2(mult_66_n47), .ZN(mult_66_n223) );
  NAND2_X1 mult_66_U185 ( .A1(mult_66_n52), .A2(mult_66_n49), .ZN(mult_66_n222) );
  NAND3_X1 mult_66_U184 ( .A1(mult_66_n219), .A2(mult_66_n220), .A3(
        mult_66_n221), .ZN(mult_66_n46) );
  NAND2_X1 mult_66_U183 ( .A1(mult_66_n97), .A2(mult_66_n105), .ZN(
        mult_66_n221) );
  NAND2_X1 mult_66_U182 ( .A1(mult_66_n90), .A2(mult_66_n105), .ZN(
        mult_66_n220) );
  NAND2_X1 mult_66_U181 ( .A1(mult_66_n90), .A2(mult_66_n97), .ZN(mult_66_n219) );
  XOR2_X1 mult_66_U180 ( .A(mult_66_n218), .B(mult_66_n47), .Z(mult_66_n45) );
  XOR2_X1 mult_66_U179 ( .A(mult_66_n52), .B(mult_66_n49), .Z(mult_66_n218) );
  XOR2_X1 mult_66_U178 ( .A(mult_66_n217), .B(mult_66_n105), .Z(mult_66_n47)
         );
  XOR2_X1 mult_66_U177 ( .A(mult_66_n90), .B(mult_66_n97), .Z(mult_66_n217) );
  CLKBUF_X1 mult_66_U176 ( .A(w[8]), .Z(mult_66_n216) );
  AND3_X1 mult_66_U175 ( .A1(mult_66_n239), .A2(mult_66_n240), .A3(
        mult_66_n241), .ZN(mult_66_n301) );
  AND3_X1 mult_66_U174 ( .A1(mult_66_n239), .A2(mult_66_n240), .A3(
        mult_66_n241), .ZN(mult_66_n215) );
  CLKBUF_X1 mult_66_U173 ( .A(mult_66_n234), .Z(mult_66_n214) );
  NAND3_X1 mult_66_U172 ( .A1(mult_66_n211), .A2(mult_66_n212), .A3(
        mult_66_n213), .ZN(mult_66_n5) );
  NAND2_X1 mult_66_U171 ( .A1(mult_66_n27), .A2(mult_66_n32), .ZN(mult_66_n213) );
  NAND2_X1 mult_66_U170 ( .A1(mult_66_n6), .A2(mult_66_n32), .ZN(mult_66_n212)
         );
  NAND2_X1 mult_66_U169 ( .A1(mult_66_n6), .A2(mult_66_n27), .ZN(mult_66_n211)
         );
  XOR2_X1 mult_66_U168 ( .A(mult_66_n6), .B(mult_66_n210), .Z(wb0_tbs_10_) );
  XOR2_X1 mult_66_U167 ( .A(mult_66_n27), .B(mult_66_n32), .Z(mult_66_n210) );
  CLKBUF_X1 mult_66_U166 ( .A(w[6]), .Z(mult_66_n209) );
  INV_X1 mult_66_U165 ( .A(mult_66_n266), .ZN(mult_66_n232) );
  AND3_X1 mult_66_U164 ( .A1(mult_66_n222), .A2(mult_66_n223), .A3(
        mult_66_n224), .ZN(mult_66_n208) );
  HA_X1 mult_66_U40 ( .A(mult_66_n101), .B(mult_66_n109), .CO(mult_66_n60), 
        .S(mult_66_n61) );
  FA_X1 mult_66_U39 ( .A(mult_66_n108), .B(mult_66_n93), .CI(mult_66_n100), 
        .CO(mult_66_n58), .S(mult_66_n59) );
  HA_X1 mult_66_U38 ( .A(mult_66_n73), .B(mult_66_n92), .CO(mult_66_n56), .S(
        mult_66_n57) );
  FA_X1 mult_66_U37 ( .A(mult_66_n99), .B(mult_66_n107), .CI(mult_66_n57), 
        .CO(mult_66_n54), .S(mult_66_n55) );
  FA_X1 mult_66_U36 ( .A(mult_66_n98), .B(mult_66_n84), .CI(mult_66_n106), 
        .CO(mult_66_n52), .S(mult_66_n53) );
  FA_X1 mult_66_U35 ( .A(mult_66_n56), .B(mult_66_n91), .CI(mult_66_n53), .CO(
        mult_66_n50), .S(mult_66_n51) );
  HA_X1 mult_66_U34 ( .A(mult_66_n72), .B(mult_66_n83), .CO(mult_66_n48), .S(
        mult_66_n49) );
  HA_X1 mult_66_U31 ( .A(mult_66_n82), .B(mult_66_n89), .CO(mult_66_n42), .S(
        mult_66_n43) );
  FA_X1 mult_66_U30 ( .A(mult_66_n96), .B(mult_66_n48), .CI(mult_66_n104), 
        .CO(mult_66_n40), .S(mult_66_n41) );
  FA_X1 mult_66_U29 ( .A(mult_66_n46), .B(mult_66_n43), .CI(mult_66_n41), .CO(
        mult_66_n38), .S(mult_66_n39) );
  FA_X1 mult_66_U26 ( .A(mult_66_n254), .B(mult_66_n88), .CI(mult_66_n42), 
        .CO(mult_66_n34), .S(mult_66_n35) );
  FA_X1 mult_66_U25 ( .A(mult_66_n40), .B(mult_66_n37), .CI(mult_66_n35), .CO(
        mult_66_n32), .S(mult_66_n33) );
  FA_X1 mult_66_U23 ( .A(mult_66_n80), .B(mult_66_n87), .CI(mult_66_n250), 
        .CO(mult_66_n28), .S(mult_66_n29) );
  FA_X1 mult_66_U22 ( .A(mult_66_n34), .B(mult_66_n36), .CI(mult_66_n29), .CO(
        mult_66_n26), .S(mult_66_n27) );
  FA_X1 mult_66_U21 ( .A(mult_66_n86), .B(mult_66_n30), .CI(mult_66_n251), 
        .CO(mult_66_n24), .S(mult_66_n25) );
  FA_X1 mult_66_U20 ( .A(mult_66_n28), .B(mult_66_n79), .CI(mult_66_n25), .CO(
        mult_66_n22), .S(mult_66_n23) );
  FA_X1 mult_66_U18 ( .A(mult_66_n252), .B(mult_66_n78), .CI(mult_66_n24), 
        .CO(mult_66_n18), .S(mult_66_n19) );
  FA_X1 mult_66_U17 ( .A(mult_66_n77), .B(mult_66_n20), .CI(mult_66_n253), 
        .CO(mult_66_n16), .S(mult_66_n17) );
  FA_X1 mult_66_U4 ( .A(mult_66_n19), .B(mult_66_n22), .CI(mult_66_n4), .CO(
        mult_66_n3), .S(wb0_tbs_12_) );
  XNOR2_X1 mult_77_U352 ( .A(w_out[4]), .B(a1[3]), .ZN(mult_77_n348) );
  XNOR2_X1 mult_77_U351 ( .A(w_out[5]), .B(a1[3]), .ZN(mult_77_n293) );
  OAI22_X1 mult_77_U350 ( .A1(mult_77_n348), .A2(mult_77_n267), .B1(
        mult_77_n264), .B2(mult_77_n293), .ZN(mult_77_n100) );
  XNOR2_X1 mult_77_U349 ( .A(w_out[3]), .B(a1[3]), .ZN(mult_77_n347) );
  OAI22_X1 mult_77_U348 ( .A1(mult_77_n347), .A2(mult_77_n267), .B1(
        mult_77_n264), .B2(mult_77_n348), .ZN(mult_77_n101) );
  XNOR2_X1 mult_77_U347 ( .A(w_out[2]), .B(a1[3]), .ZN(mult_77_n346) );
  OAI22_X1 mult_77_U346 ( .A1(mult_77_n346), .A2(mult_77_n267), .B1(
        mult_77_n264), .B2(mult_77_n347), .ZN(mult_77_n102) );
  XNOR2_X1 mult_77_U345 ( .A(w_out[1]), .B(a1[3]), .ZN(mult_77_n345) );
  OAI22_X1 mult_77_U344 ( .A1(mult_77_n345), .A2(mult_77_n267), .B1(
        mult_77_n264), .B2(mult_77_n346), .ZN(mult_77_n103) );
  XNOR2_X1 mult_77_U343 ( .A(w_out[0]), .B(a1[3]), .ZN(mult_77_n344) );
  OAI22_X1 mult_77_U342 ( .A1(mult_77_n344), .A2(mult_77_n294), .B1(
        mult_77_n263), .B2(mult_77_n345), .ZN(mult_77_n104) );
  XNOR2_X1 mult_77_U341 ( .A(w_out[8]), .B(a1[1]), .ZN(mult_77_n342) );
  NAND2_X1 mult_77_U340 ( .A1(a1[1]), .A2(mult_77_n290), .ZN(mult_77_n329) );
  OAI22_X1 mult_77_U339 ( .A1(mult_77_n290), .A2(mult_77_n342), .B1(
        mult_77_n265), .B2(mult_77_n342), .ZN(mult_77_n343) );
  XNOR2_X1 mult_77_U338 ( .A(w_out[7]), .B(a1[1]), .ZN(mult_77_n341) );
  OAI22_X1 mult_77_U337 ( .A1(mult_77_n341), .A2(mult_77_n265), .B1(
        mult_77_n342), .B2(mult_77_n290), .ZN(mult_77_n107) );
  XNOR2_X1 mult_77_U336 ( .A(w_out[6]), .B(a1[1]), .ZN(mult_77_n340) );
  OAI22_X1 mult_77_U335 ( .A1(mult_77_n340), .A2(mult_77_n265), .B1(
        mult_77_n341), .B2(mult_77_n290), .ZN(mult_77_n108) );
  XNOR2_X1 mult_77_U334 ( .A(w_out[5]), .B(a1[1]), .ZN(mult_77_n339) );
  OAI22_X1 mult_77_U333 ( .A1(mult_77_n339), .A2(mult_77_n265), .B1(
        mult_77_n340), .B2(mult_77_n290), .ZN(mult_77_n109) );
  XNOR2_X1 mult_77_U332 ( .A(w_out[4]), .B(a1[1]), .ZN(mult_77_n338) );
  OAI22_X1 mult_77_U331 ( .A1(mult_77_n338), .A2(mult_77_n265), .B1(
        mult_77_n339), .B2(mult_77_n290), .ZN(mult_77_n110) );
  XNOR2_X1 mult_77_U330 ( .A(w_out[3]), .B(a1[1]), .ZN(mult_77_n337) );
  OAI22_X1 mult_77_U329 ( .A1(mult_77_n337), .A2(mult_77_n265), .B1(
        mult_77_n338), .B2(mult_77_n290), .ZN(mult_77_n111) );
  XNOR2_X1 mult_77_U328 ( .A(w_out[2]), .B(a1[1]), .ZN(mult_77_n330) );
  OAI22_X1 mult_77_U327 ( .A1(mult_77_n330), .A2(mult_77_n329), .B1(
        mult_77_n337), .B2(mult_77_n290), .ZN(mult_77_n112) );
  XOR2_X1 mult_77_U326 ( .A(w_out[7]), .B(a1[7]), .Z(mult_77_n319) );
  XNOR2_X1 mult_77_U325 ( .A(mult_77_n286), .B(a1[6]), .ZN(mult_77_n336) );
  NAND2_X1 mult_77_U324 ( .A1(mult_77_n310), .A2(mult_77_n336), .ZN(
        mult_77_n312) );
  XNOR2_X1 mult_77_U323 ( .A(w_out[8]), .B(mult_77_n286), .ZN(mult_77_n292) );
  AOI22_X1 mult_77_U322 ( .A1(mult_77_n319), .A2(mult_77_n285), .B1(
        mult_77_n287), .B2(mult_77_n292), .ZN(mult_77_n17) );
  XNOR2_X1 mult_77_U321 ( .A(w_out[7]), .B(a1[5]), .ZN(mult_77_n307) );
  XNOR2_X1 mult_77_U320 ( .A(w_out[8]), .B(a1[5]), .ZN(mult_77_n309) );
  OAI22_X1 mult_77_U319 ( .A1(mult_77_n307), .A2(mult_77_n257), .B1(
        mult_77_n266), .B2(mult_77_n309), .ZN(mult_77_n22) );
  XNOR2_X1 mult_77_U318 ( .A(w_out[7]), .B(a1[3]), .ZN(mult_77_n335) );
  XNOR2_X1 mult_77_U317 ( .A(w_out[8]), .B(a1[3]), .ZN(mult_77_n297) );
  OAI22_X1 mult_77_U316 ( .A1(mult_77_n335), .A2(mult_77_n267), .B1(
        mult_77_n264), .B2(mult_77_n297), .ZN(mult_77_n32) );
  XNOR2_X1 mult_77_U315 ( .A(w_out[2]), .B(a1[7]), .ZN(mult_77_n314) );
  XNOR2_X1 mult_77_U314 ( .A(w_out[3]), .B(a1[7]), .ZN(mult_77_n315) );
  OAI22_X1 mult_77_U313 ( .A1(mult_77_n314), .A2(mult_77_n312), .B1(
        mult_77_n310), .B2(mult_77_n315), .ZN(mult_77_n333) );
  XNOR2_X1 mult_77_U312 ( .A(w_out[6]), .B(a1[3]), .ZN(mult_77_n295) );
  OAI22_X1 mult_77_U311 ( .A1(mult_77_n295), .A2(mult_77_n267), .B1(
        mult_77_n264), .B2(mult_77_n335), .ZN(mult_77_n334) );
  OR2_X1 mult_77_U310 ( .A1(mult_77_n333), .A2(mult_77_n334), .ZN(mult_77_n38)
         );
  XNOR2_X1 mult_77_U309 ( .A(mult_77_n333), .B(mult_77_n334), .ZN(mult_77_n39)
         );
  NAND3_X1 mult_77_U308 ( .A1(mult_77_n287), .A2(mult_77_n284), .A3(a1[7]), 
        .ZN(mult_77_n332) );
  OAI21_X1 mult_77_U307 ( .B1(mult_77_n286), .B2(mult_77_n312), .A(
        mult_77_n332), .ZN(mult_77_n75) );
  OAI21_X1 mult_77_U306 ( .B1(mult_77_n288), .B2(mult_77_n256), .A(
        mult_77_n331), .ZN(mult_77_n76) );
  OAI22_X1 mult_77_U305 ( .A1(w_out[1]), .A2(mult_77_n329), .B1(mult_77_n330), 
        .B2(mult_77_n290), .ZN(mult_77_n328) );
  NAND2_X1 mult_77_U304 ( .A1(mult_77_n328), .A2(mult_77_n324), .ZN(
        mult_77_n326) );
  MUX2_X1 mult_77_U303 ( .A(mult_77_n326), .B(mult_77_n327), .S(mult_77_n284), 
        .Z(mult_77_n325) );
  NAND3_X1 mult_77_U302 ( .A1(mult_77_n324), .A2(mult_77_n284), .A3(a1[3]), 
        .ZN(mult_77_n323) );
  OAI21_X1 mult_77_U301 ( .B1(mult_77_n289), .B2(mult_77_n267), .A(
        mult_77_n323), .ZN(mult_77_n322) );
  OAI222_X1 mult_77_U300 ( .A1(mult_77_n269), .A2(mult_77_n277), .B1(
        mult_77_n320), .B2(mult_77_n279), .C1(mult_77_n279), .C2(mult_77_n277), 
        .ZN(mult_77_n8) );
  XNOR2_X1 mult_77_U299 ( .A(w_out[6]), .B(a1[7]), .ZN(mult_77_n318) );
  OAI22_X1 mult_77_U298 ( .A1(mult_77_n318), .A2(mult_77_n312), .B1(
        mult_77_n310), .B2(mult_77_n278), .ZN(mult_77_n80) );
  XNOR2_X1 mult_77_U297 ( .A(w_out[5]), .B(a1[7]), .ZN(mult_77_n317) );
  OAI22_X1 mult_77_U296 ( .A1(mult_77_n317), .A2(mult_77_n312), .B1(
        mult_77_n310), .B2(mult_77_n318), .ZN(mult_77_n81) );
  XNOR2_X1 mult_77_U295 ( .A(w_out[4]), .B(a1[7]), .ZN(mult_77_n316) );
  OAI22_X1 mult_77_U294 ( .A1(mult_77_n316), .A2(mult_77_n312), .B1(
        mult_77_n310), .B2(mult_77_n317), .ZN(mult_77_n82) );
  OAI22_X1 mult_77_U293 ( .A1(mult_77_n315), .A2(mult_77_n312), .B1(
        mult_77_n310), .B2(mult_77_n316), .ZN(mult_77_n83) );
  XNOR2_X1 mult_77_U292 ( .A(w_out[1]), .B(a1[7]), .ZN(mult_77_n313) );
  OAI22_X1 mult_77_U291 ( .A1(mult_77_n313), .A2(mult_77_n312), .B1(
        mult_77_n310), .B2(mult_77_n314), .ZN(mult_77_n85) );
  XNOR2_X1 mult_77_U290 ( .A(w_out[0]), .B(a1[7]), .ZN(mult_77_n311) );
  OAI22_X1 mult_77_U289 ( .A1(mult_77_n311), .A2(mult_77_n312), .B1(
        mult_77_n310), .B2(mult_77_n313), .ZN(mult_77_n86) );
  NOR2_X1 mult_77_U288 ( .A1(mult_77_n310), .A2(mult_77_n284), .ZN(mult_77_n87) );
  OAI22_X1 mult_77_U287 ( .A1(mult_77_n309), .A2(mult_77_n266), .B1(
        mult_77_n257), .B2(mult_77_n309), .ZN(mult_77_n308) );
  XNOR2_X1 mult_77_U286 ( .A(w_out[6]), .B(a1[5]), .ZN(mult_77_n306) );
  OAI22_X1 mult_77_U285 ( .A1(mult_77_n306), .A2(mult_77_n257), .B1(
        mult_77_n266), .B2(mult_77_n307), .ZN(mult_77_n89) );
  XNOR2_X1 mult_77_U284 ( .A(w_out[5]), .B(a1[5]), .ZN(mult_77_n305) );
  OAI22_X1 mult_77_U283 ( .A1(mult_77_n305), .A2(mult_77_n257), .B1(
        mult_77_n266), .B2(mult_77_n306), .ZN(mult_77_n90) );
  XNOR2_X1 mult_77_U282 ( .A(w_out[4]), .B(a1[5]), .ZN(mult_77_n304) );
  OAI22_X1 mult_77_U281 ( .A1(mult_77_n304), .A2(mult_77_n257), .B1(
        mult_77_n266), .B2(mult_77_n305), .ZN(mult_77_n91) );
  XNOR2_X1 mult_77_U280 ( .A(w_out[3]), .B(a1[5]), .ZN(mult_77_n303) );
  OAI22_X1 mult_77_U279 ( .A1(mult_77_n303), .A2(mult_77_n257), .B1(
        mult_77_n266), .B2(mult_77_n304), .ZN(mult_77_n92) );
  XNOR2_X1 mult_77_U278 ( .A(w_out[2]), .B(a1[5]), .ZN(mult_77_n302) );
  OAI22_X1 mult_77_U277 ( .A1(mult_77_n302), .A2(mult_77_n257), .B1(
        mult_77_n266), .B2(mult_77_n303), .ZN(mult_77_n93) );
  XNOR2_X1 mult_77_U276 ( .A(w_out[1]), .B(a1[5]), .ZN(mult_77_n301) );
  OAI22_X1 mult_77_U275 ( .A1(mult_77_n301), .A2(mult_77_n257), .B1(
        mult_77_n266), .B2(mult_77_n302), .ZN(mult_77_n94) );
  XNOR2_X1 mult_77_U274 ( .A(w_out[0]), .B(a1[5]), .ZN(mult_77_n299) );
  OAI22_X1 mult_77_U273 ( .A1(mult_77_n299), .A2(mult_77_n256), .B1(
        mult_77_n266), .B2(mult_77_n301), .ZN(mult_77_n95) );
  NOR2_X1 mult_77_U272 ( .A1(mult_77_n266), .A2(mult_77_n284), .ZN(mult_77_n96) );
  OAI22_X1 mult_77_U271 ( .A1(mult_77_n297), .A2(mult_77_n264), .B1(
        mult_77_n267), .B2(mult_77_n297), .ZN(mult_77_n296) );
  OAI22_X1 mult_77_U270 ( .A1(mult_77_n293), .A2(mult_77_n267), .B1(
        mult_77_n264), .B2(mult_77_n295), .ZN(mult_77_n99) );
  AOI22_X1 mult_77_U269 ( .A1(mult_77_n292), .A2(mult_77_n287), .B1(
        mult_77_n285), .B2(mult_77_n292), .ZN(mult_77_n291) );
  INV_X2 mult_77_U268 ( .A(a1[0]), .ZN(mult_77_n290) );
  XOR2_X2 mult_77_U267 ( .A(a1[6]), .B(mult_77_n216), .Z(mult_77_n310) );
  INV_X1 mult_77_U266 ( .A(mult_77_n263), .ZN(mult_77_n324) );
  INV_X1 mult_77_U265 ( .A(a1[3]), .ZN(mult_77_n289) );
  INV_X1 mult_77_U264 ( .A(mult_77_n32), .ZN(mult_77_n272) );
  INV_X1 mult_77_U263 ( .A(mult_77_n296), .ZN(mult_77_n273) );
  INV_X1 mult_77_U262 ( .A(mult_77_n325), .ZN(mult_77_n282) );
  INV_X1 mult_77_U261 ( .A(mult_77_n343), .ZN(mult_77_n276) );
  OAI222_X1 mult_77_U260 ( .A1(mult_77_n215), .A2(mult_77_n280), .B1(
        mult_77_n321), .B2(mult_77_n281), .C1(mult_77_n281), .C2(mult_77_n280), 
        .ZN(mult_77_n268) );
  INV_X1 mult_77_U259 ( .A(mult_77_n41), .ZN(mult_77_n277) );
  NAND2_X1 mult_77_U258 ( .A1(mult_77_n271), .A2(mult_77_n349), .ZN(
        mult_77_n294) );
  BUF_X2 mult_77_U257 ( .A(mult_77_n294), .Z(mult_77_n267) );
  XNOR2_X1 mult_77_U256 ( .A(a1[3]), .B(a1[4]), .ZN(mult_77_n298) );
  BUF_X2 mult_77_U255 ( .A(mult_77_n298), .Z(mult_77_n266) );
  XNOR2_X1 mult_77_U254 ( .A(a1[1]), .B(a1[2]), .ZN(mult_77_n270) );
  BUF_X2 mult_77_U253 ( .A(mult_77_n270), .Z(mult_77_n264) );
  BUF_X1 mult_77_U252 ( .A(mult_77_n270), .Z(mult_77_n263) );
  INV_X1 mult_77_U251 ( .A(w_out[1]), .ZN(mult_77_n283) );
  INV_X1 mult_77_U250 ( .A(a1[7]), .ZN(mult_77_n286) );
  INV_X1 mult_77_U249 ( .A(w_out[0]), .ZN(mult_77_n284) );
  XNOR2_X1 mult_77_U248 ( .A(a1[1]), .B(a1[2]), .ZN(mult_77_n271) );
  INV_X1 mult_77_U247 ( .A(mult_77_n319), .ZN(mult_77_n278) );
  INV_X1 mult_77_U246 ( .A(mult_77_n312), .ZN(mult_77_n285) );
  INV_X1 mult_77_U245 ( .A(mult_77_n310), .ZN(mult_77_n287) );
  INV_X1 mult_77_U244 ( .A(mult_77_n308), .ZN(mult_77_n275) );
  INV_X1 mult_77_U243 ( .A(mult_77_n22), .ZN(mult_77_n274) );
  XNOR2_X1 mult_77_U242 ( .A(mult_77_n2), .B(mult_77_n291), .ZN(mult_77_n262)
         );
  INV_X1 mult_77_U241 ( .A(mult_77_n53), .ZN(mult_77_n280) );
  INV_X1 mult_77_U240 ( .A(mult_77_n56), .ZN(mult_77_n281) );
  INV_X1 mult_77_U239 ( .A(mult_77_n46), .ZN(mult_77_n279) );
  NAND2_X1 mult_77_U238 ( .A1(mult_77_n62), .A2(mult_77_n61), .ZN(mult_77_n261) );
  NAND2_X1 mult_77_U237 ( .A1(mult_77_n212), .A2(mult_77_n62), .ZN(
        mult_77_n260) );
  NAND2_X1 mult_77_U236 ( .A1(mult_77_n212), .A2(mult_77_n61), .ZN(
        mult_77_n259) );
  XNOR2_X1 mult_77_U235 ( .A(mult_77_n288), .B(a1[4]), .ZN(mult_77_n258) );
  NAND2_X1 mult_77_U234 ( .A1(mult_77_n298), .A2(mult_77_n258), .ZN(
        mult_77_n300) );
  BUF_X1 mult_77_U233 ( .A(mult_77_n300), .Z(mult_77_n257) );
  BUF_X1 mult_77_U232 ( .A(mult_77_n300), .Z(mult_77_n256) );
  AND3_X1 mult_77_U231 ( .A1(mult_77_n251), .A2(mult_77_n254), .A3(
        mult_77_n255), .ZN(mult_77_n320) );
  NAND2_X1 mult_77_U230 ( .A1(mult_77_n52), .A2(mult_77_n47), .ZN(mult_77_n255) );
  NAND2_X1 mult_77_U229 ( .A1(mult_77_n268), .A2(mult_77_n52), .ZN(
        mult_77_n254) );
  AND3_X1 mult_77_U228 ( .A1(mult_77_n251), .A2(mult_77_n252), .A3(
        mult_77_n253), .ZN(mult_77_n269) );
  NAND2_X1 mult_77_U227 ( .A1(mult_77_n52), .A2(mult_77_n47), .ZN(mult_77_n253) );
  NAND2_X1 mult_77_U226 ( .A1(mult_77_n268), .A2(mult_77_n52), .ZN(
        mult_77_n252) );
  NAND2_X1 mult_77_U225 ( .A1(mult_77_n268), .A2(mult_77_n47), .ZN(
        mult_77_n251) );
  NAND2_X1 mult_77_U224 ( .A1(mult_77_n322), .A2(mult_77_n63), .ZN(
        mult_77_n250) );
  NAND2_X1 mult_77_U223 ( .A1(mult_77_n282), .A2(mult_77_n322), .ZN(
        mult_77_n249) );
  NAND2_X1 mult_77_U222 ( .A1(mult_77_n282), .A2(mult_77_n63), .ZN(
        mult_77_n248) );
  NAND3_X1 mult_77_U221 ( .A1(mult_77_n245), .A2(mult_77_n246), .A3(
        mult_77_n247), .ZN(mult_77_n6) );
  NAND2_X1 mult_77_U220 ( .A1(mult_77_n34), .A2(mult_77_n7), .ZN(mult_77_n247)
         );
  NAND2_X1 mult_77_U219 ( .A1(mult_77_n29), .A2(mult_77_n7), .ZN(mult_77_n246)
         );
  NAND2_X1 mult_77_U218 ( .A1(mult_77_n29), .A2(mult_77_n34), .ZN(mult_77_n245) );
  XOR2_X1 mult_77_U217 ( .A(mult_77_n244), .B(mult_77_n7), .Z(fb_tbs[10]) );
  XOR2_X1 mult_77_U216 ( .A(mult_77_n29), .B(mult_77_n34), .Z(mult_77_n244) );
  NAND3_X1 mult_77_U215 ( .A1(mult_77_n241), .A2(mult_77_n242), .A3(
        mult_77_n243), .ZN(mult_77_n7) );
  NAND2_X1 mult_77_U214 ( .A1(mult_77_n40), .A2(mult_77_n8), .ZN(mult_77_n243)
         );
  NAND2_X1 mult_77_U213 ( .A1(mult_77_n35), .A2(mult_77_n8), .ZN(mult_77_n242)
         );
  NAND2_X1 mult_77_U212 ( .A1(mult_77_n35), .A2(mult_77_n40), .ZN(mult_77_n241) );
  XOR2_X1 mult_77_U211 ( .A(mult_77_n240), .B(mult_77_n8), .Z(fb_tbs[9]) );
  XOR2_X1 mult_77_U210 ( .A(mult_77_n35), .B(mult_77_n40), .Z(mult_77_n240) );
  NAND3_X1 mult_77_U209 ( .A1(mult_77_n238), .A2(mult_77_n237), .A3(
        mult_77_n239), .ZN(mult_77_n2) );
  NAND2_X1 mult_77_U208 ( .A1(mult_77_n18), .A2(mult_77_n17), .ZN(mult_77_n239) );
  NAND2_X1 mult_77_U207 ( .A1(mult_77_n3), .A2(mult_77_n17), .ZN(mult_77_n238)
         );
  NAND2_X1 mult_77_U206 ( .A1(mult_77_n217), .A2(mult_77_n18), .ZN(
        mult_77_n237) );
  XOR2_X1 mult_77_U205 ( .A(mult_77_n218), .B(mult_77_n236), .Z(fb_tbs[14]) );
  XOR2_X1 mult_77_U204 ( .A(mult_77_n18), .B(mult_77_n17), .Z(mult_77_n236) );
  NAND3_X1 mult_77_U203 ( .A1(mult_77_n234), .A2(mult_77_n235), .A3(
        mult_77_n233), .ZN(mult_77_n4) );
  NAND2_X1 mult_77_U202 ( .A1(mult_77_n24), .A2(mult_77_n5), .ZN(mult_77_n235)
         );
  NAND2_X1 mult_77_U201 ( .A1(mult_77_n21), .A2(mult_77_n224), .ZN(
        mult_77_n234) );
  NAND2_X1 mult_77_U200 ( .A1(mult_77_n21), .A2(mult_77_n24), .ZN(mult_77_n233) );
  XOR2_X1 mult_77_U199 ( .A(mult_77_n232), .B(mult_77_n225), .Z(fb_tbs[12]) );
  XOR2_X1 mult_77_U198 ( .A(mult_77_n21), .B(mult_77_n24), .Z(mult_77_n232) );
  NAND3_X1 mult_77_U197 ( .A1(mult_77_n230), .A2(mult_77_n231), .A3(
        mult_77_n229), .ZN(mult_77_n5) );
  NAND2_X1 mult_77_U196 ( .A1(mult_77_n226), .A2(mult_77_n28), .ZN(
        mult_77_n231) );
  NAND2_X1 mult_77_U195 ( .A1(mult_77_n25), .A2(mult_77_n6), .ZN(mult_77_n230)
         );
  NAND2_X1 mult_77_U194 ( .A1(mult_77_n25), .A2(mult_77_n28), .ZN(mult_77_n229) );
  XOR2_X1 mult_77_U193 ( .A(mult_77_n228), .B(mult_77_n227), .Z(fb_tbs[11]) );
  XOR2_X1 mult_77_U192 ( .A(mult_77_n25), .B(mult_77_n28), .Z(mult_77_n228) );
  NAND3_X1 mult_77_U191 ( .A1(mult_77_n245), .A2(mult_77_n246), .A3(
        mult_77_n247), .ZN(mult_77_n227) );
  NAND3_X1 mult_77_U190 ( .A1(mult_77_n245), .A2(mult_77_n246), .A3(
        mult_77_n247), .ZN(mult_77_n226) );
  NAND3_X1 mult_77_U189 ( .A1(mult_77_n231), .A2(mult_77_n230), .A3(
        mult_77_n229), .ZN(mult_77_n225) );
  NAND3_X1 mult_77_U188 ( .A1(mult_77_n231), .A2(mult_77_n230), .A3(
        mult_77_n229), .ZN(mult_77_n224) );
  XOR2_X1 mult_77_U187 ( .A(a1[3]), .B(a1[2]), .Z(mult_77_n349) );
  NAND3_X1 mult_77_U186 ( .A1(mult_77_n221), .A2(mult_77_n222), .A3(
        mult_77_n223), .ZN(mult_77_n3) );
  NAND2_X1 mult_77_U185 ( .A1(mult_77_n19), .A2(mult_77_n20), .ZN(mult_77_n223) );
  NAND2_X1 mult_77_U184 ( .A1(mult_77_n4), .A2(mult_77_n20), .ZN(mult_77_n222)
         );
  NAND2_X1 mult_77_U183 ( .A1(mult_77_n4), .A2(mult_77_n19), .ZN(mult_77_n221)
         );
  XOR2_X1 mult_77_U182 ( .A(mult_77_n4), .B(mult_77_n220), .Z(fb_tbs[13]) );
  XOR2_X1 mult_77_U181 ( .A(mult_77_n19), .B(mult_77_n20), .Z(mult_77_n220) );
  XNOR2_X1 mult_77_U180 ( .A(mult_77_n262), .B(mult_77_n219), .ZN(fb_tbs[15])
         );
  INV_X1 mult_77_U179 ( .A(a1[5]), .ZN(mult_77_n288) );
  NAND3_X1 mult_77_U178 ( .A1(mult_77_n221), .A2(mult_77_n222), .A3(
        mult_77_n223), .ZN(mult_77_n218) );
  NAND3_X1 mult_77_U177 ( .A1(mult_77_n221), .A2(mult_77_n222), .A3(
        mult_77_n223), .ZN(mult_77_n217) );
  INV_X1 mult_77_U176 ( .A(a1[5]), .ZN(mult_77_n216) );
  AOI222_X1 mult_77_U175 ( .A1(mult_77_n214), .A2(mult_77_n57), .B1(
        mult_77_n214), .B2(mult_77_n60), .C1(mult_77_n60), .C2(mult_77_n57), 
        .ZN(mult_77_n321) );
  AOI222_X1 mult_77_U174 ( .A1(mult_77_n214), .A2(mult_77_n57), .B1(
        mult_77_n214), .B2(mult_77_n60), .C1(mult_77_n60), .C2(mult_77_n57), 
        .ZN(mult_77_n215) );
  BUF_X1 mult_77_U173 ( .A(mult_77_n329), .Z(mult_77_n265) );
  NAND3_X1 mult_77_U172 ( .A1(mult_77_n259), .A2(mult_77_n260), .A3(
        mult_77_n261), .ZN(mult_77_n214) );
  NAND2_X1 mult_77_U171 ( .A1(mult_77_n328), .A2(mult_77_n213), .ZN(
        mult_77_n327) );
  OR3_X1 mult_77_U170 ( .A1(mult_77_n298), .A2(w_out[0]), .A3(mult_77_n216), 
        .ZN(mult_77_n331) );
  INV_X1 mult_77_U169 ( .A(mult_77_n17), .ZN(mult_77_n219) );
  AND2_X1 mult_77_U168 ( .A1(a1[1]), .A2(mult_77_n283), .ZN(mult_77_n213) );
  NAND3_X1 mult_77_U167 ( .A1(mult_77_n248), .A2(mult_77_n249), .A3(
        mult_77_n250), .ZN(mult_77_n212) );
  HA_X1 mult_77_U41 ( .A(mult_77_n104), .B(mult_77_n112), .CO(mult_77_n62), 
        .S(mult_77_n63) );
  FA_X1 mult_77_U40 ( .A(mult_77_n111), .B(mult_77_n96), .CI(mult_77_n103), 
        .CO(mult_77_n60), .S(mult_77_n61) );
  HA_X1 mult_77_U39 ( .A(mult_77_n76), .B(mult_77_n95), .CO(mult_77_n58), .S(
        mult_77_n59) );
  FA_X1 mult_77_U38 ( .A(mult_77_n102), .B(mult_77_n110), .CI(mult_77_n59), 
        .CO(mult_77_n56), .S(mult_77_n57) );
  FA_X1 mult_77_U37 ( .A(mult_77_n109), .B(mult_77_n87), .CI(mult_77_n101), 
        .CO(mult_77_n54), .S(mult_77_n55) );
  FA_X1 mult_77_U36 ( .A(mult_77_n58), .B(mult_77_n94), .CI(mult_77_n55), .CO(
        mult_77_n52), .S(mult_77_n53) );
  HA_X1 mult_77_U35 ( .A(mult_77_n75), .B(mult_77_n86), .CO(mult_77_n50), .S(
        mult_77_n51) );
  FA_X1 mult_77_U34 ( .A(mult_77_n93), .B(mult_77_n108), .CI(mult_77_n100), 
        .CO(mult_77_n48), .S(mult_77_n49) );
  FA_X1 mult_77_U33 ( .A(mult_77_n54), .B(mult_77_n51), .CI(mult_77_n49), .CO(
        mult_77_n46), .S(mult_77_n47) );
  HA_X1 mult_77_U32 ( .A(mult_77_n85), .B(mult_77_n92), .CO(mult_77_n44), .S(
        mult_77_n45) );
  FA_X1 mult_77_U31 ( .A(mult_77_n99), .B(mult_77_n107), .CI(mult_77_n50), 
        .CO(mult_77_n42), .S(mult_77_n43) );
  FA_X1 mult_77_U30 ( .A(mult_77_n48), .B(mult_77_n45), .CI(mult_77_n43), .CO(
        mult_77_n40), .S(mult_77_n41) );
  FA_X1 mult_77_U27 ( .A(mult_77_n276), .B(mult_77_n91), .CI(mult_77_n44), 
        .CO(mult_77_n36), .S(mult_77_n37) );
  FA_X1 mult_77_U26 ( .A(mult_77_n42), .B(mult_77_n39), .CI(mult_77_n37), .CO(
        mult_77_n34), .S(mult_77_n35) );
  FA_X1 mult_77_U24 ( .A(mult_77_n83), .B(mult_77_n90), .CI(mult_77_n272), 
        .CO(mult_77_n30), .S(mult_77_n31) );
  FA_X1 mult_77_U23 ( .A(mult_77_n36), .B(mult_77_n38), .CI(mult_77_n31), .CO(
        mult_77_n28), .S(mult_77_n29) );
  FA_X1 mult_77_U22 ( .A(mult_77_n89), .B(mult_77_n32), .CI(mult_77_n273), 
        .CO(mult_77_n26), .S(mult_77_n27) );
  FA_X1 mult_77_U21 ( .A(mult_77_n30), .B(mult_77_n82), .CI(mult_77_n27), .CO(
        mult_77_n24), .S(mult_77_n25) );
  FA_X1 mult_77_U19 ( .A(mult_77_n274), .B(mult_77_n81), .CI(mult_77_n26), 
        .CO(mult_77_n20), .S(mult_77_n21) );
  FA_X1 mult_77_U18 ( .A(mult_77_n80), .B(mult_77_n22), .CI(mult_77_n275), 
        .CO(mult_77_n18), .S(mult_77_n19) );
  AND2_X1 add_83_U4 ( .A1(ff_tbs_9_), .A2(wb0_tbs_9_), .ZN(add_83_n3) );
  XOR2_X1 add_83_U3 ( .A(ff_tbs_9_), .B(wb0_tbs_9_), .Z(y_tbs[0]) );
  XNOR2_X1 add_83_U2 ( .A(wb0_tbs_14_), .B(ff_tbs_14_), .ZN(add_83_n1) );
  XNOR2_X1 add_83_U1 ( .A(add_83_n1), .B(add_83_carry[5]), .ZN(y_tbs[5]) );
  FA_X1 add_83_U1_1 ( .A(add_83_n3), .B(ff_tbs_10_), .CI(wb0_tbs_10_), .CO(
        add_83_carry[2]), .S(y_tbs[1]) );
  FA_X1 add_83_U1_2 ( .A(wb0_tbs_11_), .B(ff_tbs_11_), .CI(add_83_carry[2]), 
        .CO(add_83_carry[3]), .S(y_tbs[2]) );
  FA_X1 add_83_U1_3 ( .A(wb0_tbs_12_), .B(ff_tbs_12_), .CI(add_83_carry[3]), 
        .CO(add_83_carry[4]), .S(y_tbs[3]) );
  FA_X1 add_83_U1_4 ( .A(wb0_tbs_13_), .B(ff_tbs_13_), .CI(add_83_carry[4]), 
        .CO(add_83_carry[5]), .S(y_tbs[4]) );
endmodule

