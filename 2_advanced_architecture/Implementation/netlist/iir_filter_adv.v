/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Thu Nov 19 14:05:35 2020
/////////////////////////////////////////////////////////////


module filter_adv ( DIN, b0, b1, b2, b3, a1, VIN, RST_n, CLK, DOUT, VOUT );
  input [7:0] DIN;
  input [7:0] b0;
  input [7:0] b1;
  input [7:0] b2;
  input [7:0] b3;
  input [7:0] a1;
  output [7:0] DOUT;
  input VIN, RST_n, CLK;
  output VOUT;
  wire   delay1, delay_pl1, delay_pl2, pl1_in_3__8_, pl1_in_3__7_,
         pl1_in_3__6_, pl1_in_3__5_, pl1_in_3__4_, pl1_in_3__3_, pl1_in_3__2_,
         pl1_in_3__1_, pl1_in_3__0_, pl2_in_tbs_3__15_, pl2_in_tbs_3__14_,
         pl2_in_tbs_3__13_, pl2_in_tbs_3__12_, pl2_in_tbs_3__11_,
         pl2_in_tbs_3__10_, pl2_in_tbs_3__9_, pl2_in_tbs_2__15_,
         pl2_in_tbs_2__14_, pl2_in_tbs_2__13_, pl2_in_tbs_2__12_,
         pl2_in_tbs_2__11_, pl2_in_tbs_2__10_, pl2_in_tbs_2__9_,
         pl2_in_tbs_1__15_, pl2_in_tbs_1__14_, pl2_in_tbs_1__13_,
         pl2_in_tbs_1__12_, pl2_in_tbs_1__11_, pl2_in_tbs_1__10_,
         pl2_in_tbs_1__9_, pl2_in_tbs_0__15_, pl2_in_tbs_0__14_,
         pl2_in_tbs_0__13_, pl2_in_tbs_0__12_, pl2_in_tbs_0__11_,
         pl2_in_tbs_0__10_, pl2_in_tbs_0__9_, pl2_out_3__5_, pl2_out_3__4_,
         pl2_out_3__3_, pl2_out_3__2_, pl2_out_3__1_, pl2_out_3__0_,
         pl2_out_2__5_, pl2_out_2__4_, pl2_out_2__3_, pl2_out_2__2_,
         pl2_out_2__1_, pl2_out_2__0_, pl2_out_1__5_, pl2_out_1__4_,
         pl2_out_1__3_, pl2_out_1__2_, pl2_out_1__1_, pl2_out_1__0_,
         pl2_out_0__5_, pl2_out_0__4_, pl2_out_0__3_, pl2_out_0__2_,
         pl2_out_0__1_, pl2_out_0__0_, partial_2_5_, partial_2_4_,
         partial_2_3_, partial_2_2_, partial_2_1_, partial_2_0_, partial_1_5_,
         partial_1_4_, partial_1_3_, partial_1_2_, partial_1_1_, partial_1_0_,
         n3, n4, n5, n6, n7, n8, n9, n10, reg_in_n24, reg_in_n23, reg_in_n22,
         reg_in_n21, reg_in_n20, reg_in_n19, reg_in_n18, reg_in_n17,
         reg_in_n16, reg_in_n15, reg_in_n14, reg_in_n13, reg_in_n12,
         reg_in_n11, reg_in_n10, reg_in_n9, reg_in_n8, reg_in_n7, reg_in_n6,
         reg_in_n5, reg_in_n4, reg_in_n3, reg_in_n2, reg_in_n1,
         reg_filter_1_n29, reg_filter_1_n28, reg_filter_1_n27,
         reg_filter_1_n26, reg_filter_1_n25, reg_filter_1_n24,
         reg_filter_1_n23, reg_filter_1_n22, reg_filter_1_n21,
         reg_filter_1_n20, reg_filter_1_n19, reg_filter_1_n18,
         reg_filter_1_n17, reg_filter_1_n16, reg_filter_1_n15,
         reg_filter_1_n14, reg_filter_1_n13, reg_filter_1_n12,
         reg_filter_1_n11, reg_filter_1_n10, reg_filter_1_n9, reg_filter_1_n8,
         reg_filter_1_n7, reg_filter_1_n6, reg_filter_1_n5, reg_filter_1_n4,
         reg_filter_1_n3, reg_filter_1_n2, reg_filter_1_n1, reg_filter_2_n23,
         reg_filter_2_n22, reg_filter_2_n21, reg_filter_2_n20,
         reg_filter_2_n19, reg_filter_2_n18, reg_filter_2_n17,
         reg_filter_2_n16, reg_filter_2_n15, reg_filter_2_n14,
         reg_filter_2_n13, reg_filter_2_n12, reg_filter_2_n11,
         reg_filter_2_n10, reg_filter_2_n9, reg_filter_2_n8, reg_filter_2_n7,
         reg_filter_2_n6, reg_filter_2_n5, reg_filter_2_n4, reg_filter_2_n3,
         reg_filter_2_n2, reg_filter_2_n1, reg_w_2_n56, reg_w_2_n55,
         reg_w_2_n54, reg_w_2_n53, reg_w_2_n52, reg_w_2_n51, reg_w_2_n50,
         reg_w_2_n49, reg_w_2_n48, reg_w_2_n47, reg_w_2_n46, reg_w_2_n45,
         reg_w_2_n44, reg_w_2_n43, reg_w_2_n42, reg_w_2_n41, reg_w_2_n40,
         reg_w_2_n39, reg_w_2_n38, reg_w_2_n37, reg_w_2_n36, reg_w_2_n35,
         reg_w_2_n34, reg_w_2_n33, reg_w_2_n32, reg_w_2_n31, reg_w_2_n30,
         reg_w_2_n29, reg_w_2_n28, pl1_reg_0_n54, pl1_reg_0_n53, pl1_reg_0_n52,
         pl1_reg_0_n51, pl1_reg_0_n50, pl1_reg_0_n49, pl1_reg_0_n48,
         pl1_reg_0_n47, pl1_reg_0_n46, pl1_reg_0_n45, pl1_reg_0_n44,
         pl1_reg_0_n43, pl1_reg_0_n42, pl1_reg_0_n41, pl1_reg_0_n40,
         pl1_reg_0_n39, pl1_reg_0_n38, pl1_reg_0_n37, pl1_reg_0_n36,
         pl1_reg_0_n35, pl1_reg_0_n34, pl1_reg_0_n33, pl1_reg_0_n32,
         pl1_reg_0_n31, pl1_reg_0_n30, pl1_reg_0_n29, pl1_reg_0_n28,
         pl2_reg_0_n42, pl2_reg_0_n41, pl2_reg_0_n40, pl2_reg_0_n39,
         pl2_reg_0_n38, pl2_reg_0_n37, pl2_reg_0_n36, pl2_reg_0_n35,
         pl2_reg_0_n34, pl2_reg_0_n33, pl2_reg_0_n32, pl2_reg_0_n31,
         pl2_reg_0_n30, pl2_reg_0_n29, pl2_reg_0_n28, pl2_reg_0_n27,
         pl2_reg_0_n26, pl2_reg_0_n25, pl2_reg_0_n24, pl2_reg_0_n23,
         pl2_reg_0_n22, pl2_reg_0_Q_6_, pl1_reg_1_n54, pl1_reg_1_n53,
         pl1_reg_1_n52, pl1_reg_1_n51, pl1_reg_1_n50, pl1_reg_1_n49,
         pl1_reg_1_n48, pl1_reg_1_n47, pl1_reg_1_n46, pl1_reg_1_n45,
         pl1_reg_1_n44, pl1_reg_1_n43, pl1_reg_1_n42, pl1_reg_1_n41,
         pl1_reg_1_n40, pl1_reg_1_n39, pl1_reg_1_n38, pl1_reg_1_n37,
         pl1_reg_1_n36, pl1_reg_1_n35, pl1_reg_1_n34, pl1_reg_1_n33,
         pl1_reg_1_n32, pl1_reg_1_n31, pl1_reg_1_n30, pl1_reg_1_n29,
         pl1_reg_1_n28, pl2_reg_1_n42, pl2_reg_1_n41, pl2_reg_1_n40,
         pl2_reg_1_n39, pl2_reg_1_n38, pl2_reg_1_n37, pl2_reg_1_n36,
         pl2_reg_1_n35, pl2_reg_1_n34, pl2_reg_1_n33, pl2_reg_1_n32,
         pl2_reg_1_n31, pl2_reg_1_n30, pl2_reg_1_n29, pl2_reg_1_n28,
         pl2_reg_1_n27, pl2_reg_1_n26, pl2_reg_1_n25, pl2_reg_1_n24,
         pl2_reg_1_n23, pl2_reg_1_n22, pl2_reg_1_Q_6_, pl1_reg_2_n54,
         pl1_reg_2_n53, pl1_reg_2_n52, pl1_reg_2_n51, pl1_reg_2_n50,
         pl1_reg_2_n49, pl1_reg_2_n48, pl1_reg_2_n47, pl1_reg_2_n46,
         pl1_reg_2_n45, pl1_reg_2_n44, pl1_reg_2_n43, pl1_reg_2_n42,
         pl1_reg_2_n41, pl1_reg_2_n40, pl1_reg_2_n39, pl1_reg_2_n38,
         pl1_reg_2_n37, pl1_reg_2_n36, pl1_reg_2_n35, pl1_reg_2_n34,
         pl1_reg_2_n33, pl1_reg_2_n32, pl1_reg_2_n31, pl1_reg_2_n30,
         pl1_reg_2_n29, pl1_reg_2_n28, pl2_reg_2_n42, pl2_reg_2_n41,
         pl2_reg_2_n40, pl2_reg_2_n39, pl2_reg_2_n38, pl2_reg_2_n37,
         pl2_reg_2_n36, pl2_reg_2_n35, pl2_reg_2_n34, pl2_reg_2_n33,
         pl2_reg_2_n32, pl2_reg_2_n31, pl2_reg_2_n30, pl2_reg_2_n29,
         pl2_reg_2_n28, pl2_reg_2_n27, pl2_reg_2_n26, pl2_reg_2_n25,
         pl2_reg_2_n24, pl2_reg_2_n23, pl2_reg_2_n22, pl2_reg_2_Q_6_,
         pl1_reg_3_n54, pl1_reg_3_n53, pl1_reg_3_n52, pl1_reg_3_n51,
         pl1_reg_3_n50, pl1_reg_3_n49, pl1_reg_3_n48, pl1_reg_3_n47,
         pl1_reg_3_n46, pl1_reg_3_n45, pl1_reg_3_n44, pl1_reg_3_n43,
         pl1_reg_3_n42, pl1_reg_3_n41, pl1_reg_3_n40, pl1_reg_3_n39,
         pl1_reg_3_n38, pl1_reg_3_n37, pl1_reg_3_n36, pl1_reg_3_n35,
         pl1_reg_3_n34, pl1_reg_3_n33, pl1_reg_3_n32, pl1_reg_3_n31,
         pl1_reg_3_n30, pl1_reg_3_n29, pl1_reg_3_n28, pl2_reg_3_n42,
         pl2_reg_3_n41, pl2_reg_3_n40, pl2_reg_3_n39, pl2_reg_3_n38,
         pl2_reg_3_n37, pl2_reg_3_n36, pl2_reg_3_n35, pl2_reg_3_n34,
         pl2_reg_3_n33, pl2_reg_3_n32, pl2_reg_3_n31, pl2_reg_3_n30,
         pl2_reg_3_n29, pl2_reg_3_n28, pl2_reg_3_n27, pl2_reg_3_n26,
         pl2_reg_3_n25, pl2_reg_3_n24, pl2_reg_3_n23, pl2_reg_3_n22,
         pl2_reg_3_Q_6_, reg_out_n48, reg_out_n47, reg_out_n46, reg_out_n45,
         reg_out_n44, reg_out_n43, reg_out_n42, reg_out_n41, reg_out_n40,
         reg_out_n39, reg_out_n38, reg_out_n37, reg_out_n36, reg_out_n35,
         reg_out_n34, reg_out_n33, reg_out_n32, reg_out_n31, reg_out_n30,
         reg_out_n29, reg_out_n28, reg_out_n27, reg_out_n26, reg_out_n25,
         sub_1_root_sub_0_root_add_168_n7, sub_1_root_sub_0_root_add_168_n6,
         sub_1_root_sub_0_root_add_168_n5, sub_1_root_sub_0_root_add_168_n4,
         sub_1_root_sub_0_root_add_168_n3, sub_1_root_sub_0_root_add_168_n2,
         sub_1_root_sub_0_root_add_168_n1, sub_2_root_sub_0_root_add_168_n7,
         sub_2_root_sub_0_root_add_168_n6, sub_2_root_sub_0_root_add_168_n5,
         sub_2_root_sub_0_root_add_168_n4, sub_2_root_sub_0_root_add_168_n3,
         sub_2_root_sub_0_root_add_168_n2, sub_2_root_sub_0_root_add_168_n1,
         add_0_root_sub_0_root_add_168_n2, mult_153_G4_n317, mult_153_G4_n316,
         mult_153_G4_n315, mult_153_G4_n314, mult_153_G4_n313,
         mult_153_G4_n312, mult_153_G4_n311, mult_153_G4_n310,
         mult_153_G4_n309, mult_153_G4_n308, mult_153_G4_n307,
         mult_153_G4_n306, mult_153_G4_n305, mult_153_G4_n304,
         mult_153_G4_n303, mult_153_G4_n302, mult_153_G4_n301,
         mult_153_G4_n300, mult_153_G4_n299, mult_153_G4_n298,
         mult_153_G4_n297, mult_153_G4_n296, mult_153_G4_n295,
         mult_153_G4_n294, mult_153_G4_n293, mult_153_G4_n292,
         mult_153_G4_n291, mult_153_G4_n290, mult_153_G4_n289,
         mult_153_G4_n288, mult_153_G4_n287, mult_153_G4_n286,
         mult_153_G4_n285, mult_153_G4_n284, mult_153_G4_n283,
         mult_153_G4_n282, mult_153_G4_n281, mult_153_G4_n280,
         mult_153_G4_n279, mult_153_G4_n278, mult_153_G4_n277,
         mult_153_G4_n276, mult_153_G4_n275, mult_153_G4_n274,
         mult_153_G4_n273, mult_153_G4_n272, mult_153_G4_n271,
         mult_153_G4_n270, mult_153_G4_n269, mult_153_G4_n268,
         mult_153_G4_n267, mult_153_G4_n266, mult_153_G4_n265,
         mult_153_G4_n264, mult_153_G4_n263, mult_153_G4_n262,
         mult_153_G4_n261, mult_153_G4_n260, mult_153_G4_n259,
         mult_153_G4_n258, mult_153_G4_n257, mult_153_G4_n256,
         mult_153_G4_n255, mult_153_G4_n254, mult_153_G4_n253,
         mult_153_G4_n252, mult_153_G4_n251, mult_153_G4_n250,
         mult_153_G4_n249, mult_153_G4_n248, mult_153_G4_n247,
         mult_153_G4_n246, mult_153_G4_n245, mult_153_G4_n244,
         mult_153_G4_n243, mult_153_G4_n242, mult_153_G4_n241,
         mult_153_G4_n240, mult_153_G4_n239, mult_153_G4_n238,
         mult_153_G4_n237, mult_153_G4_n236, mult_153_G4_n235,
         mult_153_G4_n234, mult_153_G4_n233, mult_153_G4_n232,
         mult_153_G4_n231, mult_153_G4_n230, mult_153_G4_n229,
         mult_153_G4_n228, mult_153_G4_n227, mult_153_G4_n226,
         mult_153_G4_n225, mult_153_G4_n224, mult_153_G4_n223,
         mult_153_G4_n222, mult_153_G4_n221, mult_153_G4_n220,
         mult_153_G4_n219, mult_153_G4_n218, mult_153_G4_n217,
         mult_153_G4_n216, mult_153_G4_n215, mult_153_G4_n214,
         mult_153_G4_n213, mult_153_G4_n212, mult_153_G4_n112,
         mult_153_G4_n111, mult_153_G4_n110, mult_153_G4_n109,
         mult_153_G4_n108, mult_153_G4_n107, mult_153_G4_n104,
         mult_153_G4_n103, mult_153_G4_n102, mult_153_G4_n101,
         mult_153_G4_n100, mult_153_G4_n99, mult_153_G4_n96, mult_153_G4_n95,
         mult_153_G4_n94, mult_153_G4_n93, mult_153_G4_n92, mult_153_G4_n91,
         mult_153_G4_n90, mult_153_G4_n89, mult_153_G4_n87, mult_153_G4_n86,
         mult_153_G4_n85, mult_153_G4_n83, mult_153_G4_n82, mult_153_G4_n81,
         mult_153_G4_n80, mult_153_G4_n76, mult_153_G4_n75, mult_153_G4_n63,
         mult_153_G4_n62, mult_153_G4_n61, mult_153_G4_n60, mult_153_G4_n59,
         mult_153_G4_n58, mult_153_G4_n57, mult_153_G4_n56, mult_153_G4_n55,
         mult_153_G4_n54, mult_153_G4_n53, mult_153_G4_n52, mult_153_G4_n51,
         mult_153_G4_n50, mult_153_G4_n49, mult_153_G4_n48, mult_153_G4_n47,
         mult_153_G4_n46, mult_153_G4_n45, mult_153_G4_n44, mult_153_G4_n43,
         mult_153_G4_n42, mult_153_G4_n41, mult_153_G4_n40, mult_153_G4_n39,
         mult_153_G4_n38, mult_153_G4_n37, mult_153_G4_n36, mult_153_G4_n35,
         mult_153_G4_n34, mult_153_G4_n32, mult_153_G4_n31, mult_153_G4_n30,
         mult_153_G4_n29, mult_153_G4_n28, mult_153_G4_n27, mult_153_G4_n26,
         mult_153_G4_n25, mult_153_G4_n24, mult_153_G4_n22, mult_153_G4_n21,
         mult_153_G4_n20, mult_153_G4_n19, mult_153_G4_n18, mult_153_G4_n17,
         mult_153_G4_n8, mult_153_G4_n7, mult_153_G4_n6, mult_153_G4_n5,
         mult_153_G4_n4, mult_153_G4_n3, mult_153_G4_n2, mult_153_G3_n313,
         mult_153_G3_n312, mult_153_G3_n311, mult_153_G3_n310,
         mult_153_G3_n309, mult_153_G3_n308, mult_153_G3_n307,
         mult_153_G3_n306, mult_153_G3_n305, mult_153_G3_n304,
         mult_153_G3_n303, mult_153_G3_n302, mult_153_G3_n301,
         mult_153_G3_n300, mult_153_G3_n299, mult_153_G3_n298,
         mult_153_G3_n297, mult_153_G3_n296, mult_153_G3_n295,
         mult_153_G3_n294, mult_153_G3_n293, mult_153_G3_n292,
         mult_153_G3_n291, mult_153_G3_n290, mult_153_G3_n289,
         mult_153_G3_n288, mult_153_G3_n287, mult_153_G3_n286,
         mult_153_G3_n285, mult_153_G3_n284, mult_153_G3_n283,
         mult_153_G3_n282, mult_153_G3_n281, mult_153_G3_n280,
         mult_153_G3_n279, mult_153_G3_n278, mult_153_G3_n277,
         mult_153_G3_n276, mult_153_G3_n275, mult_153_G3_n274,
         mult_153_G3_n273, mult_153_G3_n272, mult_153_G3_n271,
         mult_153_G3_n270, mult_153_G3_n269, mult_153_G3_n268,
         mult_153_G3_n267, mult_153_G3_n266, mult_153_G3_n265,
         mult_153_G3_n264, mult_153_G3_n263, mult_153_G3_n262,
         mult_153_G3_n261, mult_153_G3_n260, mult_153_G3_n259,
         mult_153_G3_n258, mult_153_G3_n257, mult_153_G3_n256,
         mult_153_G3_n255, mult_153_G3_n254, mult_153_G3_n253,
         mult_153_G3_n252, mult_153_G3_n251, mult_153_G3_n250,
         mult_153_G3_n249, mult_153_G3_n248, mult_153_G3_n247,
         mult_153_G3_n246, mult_153_G3_n245, mult_153_G3_n244,
         mult_153_G3_n243, mult_153_G3_n242, mult_153_G3_n241,
         mult_153_G3_n240, mult_153_G3_n239, mult_153_G3_n238,
         mult_153_G3_n237, mult_153_G3_n236, mult_153_G3_n235,
         mult_153_G3_n234, mult_153_G3_n233, mult_153_G3_n232,
         mult_153_G3_n231, mult_153_G3_n230, mult_153_G3_n229,
         mult_153_G3_n228, mult_153_G3_n227, mult_153_G3_n226,
         mult_153_G3_n225, mult_153_G3_n224, mult_153_G3_n223,
         mult_153_G3_n222, mult_153_G3_n221, mult_153_G3_n220,
         mult_153_G3_n219, mult_153_G3_n218, mult_153_G3_n217,
         mult_153_G3_n216, mult_153_G3_n215, mult_153_G3_n214,
         mult_153_G3_n213, mult_153_G3_n212, mult_153_G3_n112,
         mult_153_G3_n111, mult_153_G3_n110, mult_153_G3_n109,
         mult_153_G3_n108, mult_153_G3_n107, mult_153_G3_n104,
         mult_153_G3_n103, mult_153_G3_n102, mult_153_G3_n101,
         mult_153_G3_n100, mult_153_G3_n99, mult_153_G3_n96, mult_153_G3_n95,
         mult_153_G3_n94, mult_153_G3_n93, mult_153_G3_n92, mult_153_G3_n91,
         mult_153_G3_n90, mult_153_G3_n89, mult_153_G3_n87, mult_153_G3_n86,
         mult_153_G3_n85, mult_153_G3_n83, mult_153_G3_n82, mult_153_G3_n81,
         mult_153_G3_n80, mult_153_G3_n76, mult_153_G3_n75, mult_153_G3_n63,
         mult_153_G3_n62, mult_153_G3_n61, mult_153_G3_n60, mult_153_G3_n59,
         mult_153_G3_n58, mult_153_G3_n57, mult_153_G3_n56, mult_153_G3_n55,
         mult_153_G3_n54, mult_153_G3_n53, mult_153_G3_n52, mult_153_G3_n51,
         mult_153_G3_n50, mult_153_G3_n49, mult_153_G3_n48, mult_153_G3_n47,
         mult_153_G3_n46, mult_153_G3_n45, mult_153_G3_n44, mult_153_G3_n43,
         mult_153_G3_n42, mult_153_G3_n41, mult_153_G3_n40, mult_153_G3_n39,
         mult_153_G3_n38, mult_153_G3_n37, mult_153_G3_n36, mult_153_G3_n35,
         mult_153_G3_n34, mult_153_G3_n32, mult_153_G3_n31, mult_153_G3_n30,
         mult_153_G3_n29, mult_153_G3_n28, mult_153_G3_n27, mult_153_G3_n26,
         mult_153_G3_n25, mult_153_G3_n24, mult_153_G3_n22, mult_153_G3_n21,
         mult_153_G3_n20, mult_153_G3_n19, mult_153_G3_n18, mult_153_G3_n17,
         mult_153_G3_n8, mult_153_G3_n7, mult_153_G3_n6, mult_153_G3_n5,
         mult_153_G3_n4, mult_153_G3_n3, mult_153_G3_n2, mult_153_G2_n303,
         mult_153_G2_n302, mult_153_G2_n301, mult_153_G2_n300,
         mult_153_G2_n299, mult_153_G2_n298, mult_153_G2_n297,
         mult_153_G2_n296, mult_153_G2_n295, mult_153_G2_n294,
         mult_153_G2_n293, mult_153_G2_n292, mult_153_G2_n291,
         mult_153_G2_n290, mult_153_G2_n289, mult_153_G2_n288,
         mult_153_G2_n287, mult_153_G2_n286, mult_153_G2_n285,
         mult_153_G2_n284, mult_153_G2_n283, mult_153_G2_n282,
         mult_153_G2_n281, mult_153_G2_n280, mult_153_G2_n279,
         mult_153_G2_n278, mult_153_G2_n277, mult_153_G2_n276,
         mult_153_G2_n275, mult_153_G2_n274, mult_153_G2_n273,
         mult_153_G2_n272, mult_153_G2_n271, mult_153_G2_n270,
         mult_153_G2_n269, mult_153_G2_n268, mult_153_G2_n267,
         mult_153_G2_n266, mult_153_G2_n265, mult_153_G2_n264,
         mult_153_G2_n263, mult_153_G2_n262, mult_153_G2_n261,
         mult_153_G2_n260, mult_153_G2_n259, mult_153_G2_n258,
         mult_153_G2_n257, mult_153_G2_n256, mult_153_G2_n255,
         mult_153_G2_n254, mult_153_G2_n253, mult_153_G2_n252,
         mult_153_G2_n251, mult_153_G2_n250, mult_153_G2_n249,
         mult_153_G2_n248, mult_153_G2_n247, mult_153_G2_n246,
         mult_153_G2_n245, mult_153_G2_n244, mult_153_G2_n243,
         mult_153_G2_n242, mult_153_G2_n241, mult_153_G2_n240,
         mult_153_G2_n239, mult_153_G2_n238, mult_153_G2_n237,
         mult_153_G2_n236, mult_153_G2_n235, mult_153_G2_n234,
         mult_153_G2_n233, mult_153_G2_n232, mult_153_G2_n231,
         mult_153_G2_n230, mult_153_G2_n229, mult_153_G2_n228,
         mult_153_G2_n227, mult_153_G2_n226, mult_153_G2_n225,
         mult_153_G2_n224, mult_153_G2_n223, mult_153_G2_n222,
         mult_153_G2_n221, mult_153_G2_n220, mult_153_G2_n219,
         mult_153_G2_n218, mult_153_G2_n217, mult_153_G2_n216,
         mult_153_G2_n215, mult_153_G2_n214, mult_153_G2_n213,
         mult_153_G2_n212, mult_153_G2_n112, mult_153_G2_n111,
         mult_153_G2_n110, mult_153_G2_n109, mult_153_G2_n108,
         mult_153_G2_n107, mult_153_G2_n104, mult_153_G2_n103,
         mult_153_G2_n102, mult_153_G2_n101, mult_153_G2_n100, mult_153_G2_n99,
         mult_153_G2_n96, mult_153_G2_n95, mult_153_G2_n94, mult_153_G2_n93,
         mult_153_G2_n92, mult_153_G2_n91, mult_153_G2_n90, mult_153_G2_n89,
         mult_153_G2_n87, mult_153_G2_n86, mult_153_G2_n85, mult_153_G2_n83,
         mult_153_G2_n82, mult_153_G2_n81, mult_153_G2_n80, mult_153_G2_n76,
         mult_153_G2_n75, mult_153_G2_n63, mult_153_G2_n62, mult_153_G2_n61,
         mult_153_G2_n60, mult_153_G2_n59, mult_153_G2_n58, mult_153_G2_n57,
         mult_153_G2_n56, mult_153_G2_n55, mult_153_G2_n54, mult_153_G2_n53,
         mult_153_G2_n52, mult_153_G2_n51, mult_153_G2_n50, mult_153_G2_n49,
         mult_153_G2_n48, mult_153_G2_n47, mult_153_G2_n46, mult_153_G2_n45,
         mult_153_G2_n44, mult_153_G2_n43, mult_153_G2_n42, mult_153_G2_n41,
         mult_153_G2_n40, mult_153_G2_n39, mult_153_G2_n38, mult_153_G2_n37,
         mult_153_G2_n36, mult_153_G2_n35, mult_153_G2_n34, mult_153_G2_n32,
         mult_153_G2_n31, mult_153_G2_n30, mult_153_G2_n29, mult_153_G2_n28,
         mult_153_G2_n27, mult_153_G2_n26, mult_153_G2_n25, mult_153_G2_n24,
         mult_153_G2_n22, mult_153_G2_n21, mult_153_G2_n20, mult_153_G2_n19,
         mult_153_G2_n18, mult_153_G2_n17, mult_153_G2_n8, mult_153_G2_n7,
         mult_153_G2_n6, mult_153_G2_n5, mult_153_G2_n4, mult_153_G2_n3,
         mult_153_G2_n2, mult_153_n302, mult_153_n301, mult_153_n300,
         mult_153_n299, mult_153_n298, mult_153_n297, mult_153_n296,
         mult_153_n295, mult_153_n294, mult_153_n293, mult_153_n292,
         mult_153_n291, mult_153_n290, mult_153_n289, mult_153_n288,
         mult_153_n287, mult_153_n286, mult_153_n285, mult_153_n284,
         mult_153_n283, mult_153_n282, mult_153_n281, mult_153_n280,
         mult_153_n279, mult_153_n278, mult_153_n277, mult_153_n276,
         mult_153_n275, mult_153_n274, mult_153_n273, mult_153_n272,
         mult_153_n271, mult_153_n270, mult_153_n269, mult_153_n268,
         mult_153_n267, mult_153_n266, mult_153_n265, mult_153_n264,
         mult_153_n263, mult_153_n262, mult_153_n261, mult_153_n260,
         mult_153_n259, mult_153_n258, mult_153_n257, mult_153_n256,
         mult_153_n255, mult_153_n254, mult_153_n253, mult_153_n252,
         mult_153_n251, mult_153_n250, mult_153_n249, mult_153_n248,
         mult_153_n247, mult_153_n246, mult_153_n245, mult_153_n244,
         mult_153_n243, mult_153_n242, mult_153_n241, mult_153_n240,
         mult_153_n239, mult_153_n238, mult_153_n237, mult_153_n236,
         mult_153_n235, mult_153_n234, mult_153_n233, mult_153_n232,
         mult_153_n231, mult_153_n230, mult_153_n229, mult_153_n228,
         mult_153_n227, mult_153_n226, mult_153_n225, mult_153_n224,
         mult_153_n223, mult_153_n222, mult_153_n221, mult_153_n220,
         mult_153_n219, mult_153_n218, mult_153_n217, mult_153_n216,
         mult_153_n215, mult_153_n214, mult_153_n213, mult_153_n212,
         mult_153_n112, mult_153_n111, mult_153_n110, mult_153_n109,
         mult_153_n108, mult_153_n107, mult_153_n104, mult_153_n103,
         mult_153_n102, mult_153_n101, mult_153_n100, mult_153_n99,
         mult_153_n96, mult_153_n95, mult_153_n94, mult_153_n93, mult_153_n92,
         mult_153_n91, mult_153_n90, mult_153_n89, mult_153_n87, mult_153_n86,
         mult_153_n85, mult_153_n83, mult_153_n82, mult_153_n81, mult_153_n80,
         mult_153_n76, mult_153_n75, mult_153_n63, mult_153_n62, mult_153_n61,
         mult_153_n60, mult_153_n59, mult_153_n58, mult_153_n57, mult_153_n56,
         mult_153_n55, mult_153_n54, mult_153_n53, mult_153_n52, mult_153_n51,
         mult_153_n50, mult_153_n49, mult_153_n48, mult_153_n47, mult_153_n46,
         mult_153_n45, mult_153_n44, mult_153_n43, mult_153_n42, mult_153_n41,
         mult_153_n40, mult_153_n39, mult_153_n38, mult_153_n37, mult_153_n36,
         mult_153_n35, mult_153_n34, mult_153_n32, mult_153_n31, mult_153_n30,
         mult_153_n29, mult_153_n28, mult_153_n27, mult_153_n26, mult_153_n25,
         mult_153_n24, mult_153_n22, mult_153_n21, mult_153_n20, mult_153_n19,
         mult_153_n18, mult_153_n17, mult_153_n8, mult_153_n7, mult_153_n6,
         mult_153_n5, mult_153_n4, mult_153_n3, mult_153_n2, mult_118_n316,
         mult_118_n315, mult_118_n314, mult_118_n313, mult_118_n312,
         mult_118_n311, mult_118_n310, mult_118_n309, mult_118_n308,
         mult_118_n307, mult_118_n306, mult_118_n305, mult_118_n304,
         mult_118_n303, mult_118_n302, mult_118_n301, mult_118_n300,
         mult_118_n299, mult_118_n298, mult_118_n297, mult_118_n296,
         mult_118_n295, mult_118_n294, mult_118_n293, mult_118_n292,
         mult_118_n291, mult_118_n290, mult_118_n289, mult_118_n288,
         mult_118_n287, mult_118_n286, mult_118_n285, mult_118_n284,
         mult_118_n283, mult_118_n282, mult_118_n281, mult_118_n280,
         mult_118_n279, mult_118_n278, mult_118_n277, mult_118_n276,
         mult_118_n275, mult_118_n274, mult_118_n273, mult_118_n272,
         mult_118_n271, mult_118_n270, mult_118_n269, mult_118_n268,
         mult_118_n267, mult_118_n266, mult_118_n265, mult_118_n264,
         mult_118_n263, mult_118_n262, mult_118_n261, mult_118_n260,
         mult_118_n259, mult_118_n258, mult_118_n257, mult_118_n256,
         mult_118_n255, mult_118_n254, mult_118_n253, mult_118_n252,
         mult_118_n251, mult_118_n250, mult_118_n249, mult_118_n248,
         mult_118_n247, mult_118_n246, mult_118_n245, mult_118_n244,
         mult_118_n243, mult_118_n242, mult_118_n241, mult_118_n240,
         mult_118_n239, mult_118_n238, mult_118_n237, mult_118_n236,
         mult_118_n235, mult_118_n234, mult_118_n233, mult_118_n232,
         mult_118_n231, mult_118_n230, mult_118_n229, mult_118_n228,
         mult_118_n227, mult_118_n226, mult_118_n225, mult_118_n224,
         mult_118_n223, mult_118_n222, mult_118_n221, mult_118_n220,
         mult_118_n219, mult_118_n218, mult_118_n217, mult_118_n216,
         mult_118_n215, mult_118_n214, mult_118_n213, mult_118_n212,
         mult_118_n112, mult_118_n111, mult_118_n110, mult_118_n109,
         mult_118_n108, mult_118_n107, mult_118_n104, mult_118_n103,
         mult_118_n102, mult_118_n101, mult_118_n100, mult_118_n99,
         mult_118_n96, mult_118_n95, mult_118_n94, mult_118_n93, mult_118_n92,
         mult_118_n91, mult_118_n90, mult_118_n89, mult_118_n87, mult_118_n86,
         mult_118_n85, mult_118_n83, mult_118_n82, mult_118_n81, mult_118_n80,
         mult_118_n76, mult_118_n75, mult_118_n63, mult_118_n62, mult_118_n61,
         mult_118_n60, mult_118_n59, mult_118_n58, mult_118_n57, mult_118_n56,
         mult_118_n55, mult_118_n54, mult_118_n53, mult_118_n52, mult_118_n51,
         mult_118_n50, mult_118_n49, mult_118_n48, mult_118_n47, mult_118_n46,
         mult_118_n45, mult_118_n44, mult_118_n43, mult_118_n42, mult_118_n41,
         mult_118_n40, mult_118_n39, mult_118_n38, mult_118_n37, mult_118_n36,
         mult_118_n35, mult_118_n34, mult_118_n32, mult_118_n31, mult_118_n30,
         mult_118_n29, mult_118_n28, mult_118_n27, mult_118_n26, mult_118_n25,
         mult_118_n24, mult_118_n22, mult_118_n21, mult_118_n20, mult_118_n19,
         mult_118_n18, mult_118_n17, mult_118_n8, mult_118_n7, mult_118_n6,
         mult_118_n5, mult_118_n4, mult_118_n3, mult_118_n2;
  wire   [7:0] x;
  wire   [6:0] fb;
  wire   [8:0] w;
  wire   [8:0] w_out;
  wire   [15:9] wa1_tbs;
  wire   [35:0] pl1_out;
  wire   [5:0] y_tbs;
  wire   [8:1] sub_108_carry;
  wire   [5:1] sub_1_root_sub_0_root_add_168_carry;
  wire   [5:1] sub_2_root_sub_0_root_add_168_carry;
  wire   [5:2] add_0_root_sub_0_root_add_168_carry;

  FA_X1 sub_108_U2_1 ( .A(x[1]), .B(n5), .CI(sub_108_carry[1]), .CO(
        sub_108_carry[2]), .S(w[1]) );
  FA_X1 sub_108_U2_2 ( .A(x[2]), .B(n6), .CI(sub_108_carry[2]), .CO(
        sub_108_carry[3]), .S(w[2]) );
  FA_X1 sub_108_U2_3 ( .A(x[3]), .B(n7), .CI(sub_108_carry[3]), .CO(
        sub_108_carry[4]), .S(w[3]) );
  FA_X1 sub_108_U2_4 ( .A(x[4]), .B(n8), .CI(sub_108_carry[4]), .CO(
        sub_108_carry[5]), .S(w[4]) );
  FA_X1 sub_108_U2_5 ( .A(x[5]), .B(n9), .CI(sub_108_carry[5]), .CO(
        sub_108_carry[6]), .S(w[5]) );
  FA_X1 sub_108_U2_6 ( .A(x[6]), .B(n10), .CI(sub_108_carry[6]), .CO(
        sub_108_carry[7]), .S(w[6]) );
  FA_X1 sub_108_U2_7 ( .A(x[7]), .B(n10), .CI(sub_108_carry[7]), .CO(
        sub_108_carry[8]), .S(w[7]) );
  FA_X1 sub_108_U2_8 ( .A(x[7]), .B(n10), .CI(sub_108_carry[8]), .S(w[8]) );
  BUF_X1 U5 ( .A(delay1), .Z(n3) );
  INV_X1 U6 ( .A(fb[6]), .ZN(n10) );
  INV_X1 U7 ( .A(fb[1]), .ZN(n5) );
  INV_X1 U8 ( .A(fb[2]), .ZN(n6) );
  INV_X1 U9 ( .A(fb[3]), .ZN(n7) );
  INV_X1 U10 ( .A(fb[4]), .ZN(n8) );
  INV_X1 U11 ( .A(fb[5]), .ZN(n9) );
  INV_X1 U12 ( .A(fb[0]), .ZN(n4) );
  OR2_X1 U13 ( .A1(n4), .A2(x[0]), .ZN(sub_108_carry[1]) );
  XNOR2_X1 U14 ( .A(x[0]), .B(n4), .ZN(w[0]) );
  DFFR_X1 f_d1_Q_reg ( .D(VIN), .CK(CLK), .RN(RST_n), .Q(delay1) );
  DFFR_X1 f_pipe1_Q_reg ( .D(n3), .CK(CLK), .RN(RST_n), .Q(delay_pl1) );
  DFFR_X1 f_pipe2_Q_reg ( .D(delay_pl1), .CK(CLK), .RN(RST_n), .Q(delay_pl2)
         );
  DFFR_X1 f_d2_Q_reg ( .D(delay_pl2), .CK(CLK), .RN(RST_n), .Q(VOUT) );
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
  NAND2_X1 reg_filter_1_U21 ( .A1(w[8]), .A2(reg_filter_1_n28), .ZN(
        reg_filter_1_n9) );
  OAI21_X1 reg_filter_1_U20 ( .B1(reg_filter_1_n18), .B2(reg_filter_1_n28), 
        .A(reg_filter_1_n9), .ZN(reg_filter_1_n27) );
  NAND2_X1 reg_filter_1_U19 ( .A1(w[7]), .A2(reg_filter_1_n28), .ZN(
        reg_filter_1_n8) );
  OAI21_X1 reg_filter_1_U18 ( .B1(reg_filter_1_n17), .B2(reg_filter_1_n28), 
        .A(reg_filter_1_n8), .ZN(reg_filter_1_n26) );
  NAND2_X1 reg_filter_1_U17 ( .A1(w[6]), .A2(reg_filter_1_n28), .ZN(
        reg_filter_1_n7) );
  OAI21_X1 reg_filter_1_U16 ( .B1(reg_filter_1_n16), .B2(reg_filter_1_n28), 
        .A(reg_filter_1_n7), .ZN(reg_filter_1_n25) );
  NAND2_X1 reg_filter_1_U15 ( .A1(w[2]), .A2(reg_filter_1_n28), .ZN(
        reg_filter_1_n3) );
  OAI21_X1 reg_filter_1_U14 ( .B1(reg_filter_1_n12), .B2(reg_filter_1_n29), 
        .A(reg_filter_1_n3), .ZN(reg_filter_1_n21) );
  NAND2_X1 reg_filter_1_U13 ( .A1(w[1]), .A2(reg_filter_1_n28), .ZN(
        reg_filter_1_n2) );
  OAI21_X1 reg_filter_1_U12 ( .B1(reg_filter_1_n11), .B2(reg_filter_1_n29), 
        .A(reg_filter_1_n2), .ZN(reg_filter_1_n20) );
  NAND2_X1 reg_filter_1_U11 ( .A1(reg_filter_1_n29), .A2(w[0]), .ZN(
        reg_filter_1_n1) );
  OAI21_X1 reg_filter_1_U10 ( .B1(reg_filter_1_n10), .B2(reg_filter_1_n28), 
        .A(reg_filter_1_n1), .ZN(reg_filter_1_n19) );
  NAND2_X1 reg_filter_1_U9 ( .A1(w[5]), .A2(reg_filter_1_n28), .ZN(
        reg_filter_1_n6) );
  OAI21_X1 reg_filter_1_U8 ( .B1(reg_filter_1_n15), .B2(reg_filter_1_n29), .A(
        reg_filter_1_n6), .ZN(reg_filter_1_n24) );
  NAND2_X1 reg_filter_1_U7 ( .A1(w[4]), .A2(reg_filter_1_n28), .ZN(
        reg_filter_1_n5) );
  OAI21_X1 reg_filter_1_U6 ( .B1(reg_filter_1_n14), .B2(reg_filter_1_n29), .A(
        reg_filter_1_n5), .ZN(reg_filter_1_n23) );
  NAND2_X1 reg_filter_1_U5 ( .A1(w[3]), .A2(reg_filter_1_n28), .ZN(
        reg_filter_1_n4) );
  OAI21_X1 reg_filter_1_U4 ( .B1(reg_filter_1_n13), .B2(reg_filter_1_n29), .A(
        reg_filter_1_n4), .ZN(reg_filter_1_n22) );
  BUF_X1 reg_filter_1_U3 ( .A(n3), .Z(reg_filter_1_n29) );
  BUF_X1 reg_filter_1_U2 ( .A(n3), .Z(reg_filter_1_n28) );
  DFFR_X1 reg_filter_1_Q_reg_0_ ( .D(reg_filter_1_n19), .CK(CLK), .RN(RST_n), 
        .Q(w_out[0]), .QN(reg_filter_1_n10) );
  DFFR_X1 reg_filter_1_Q_reg_1_ ( .D(reg_filter_1_n20), .CK(CLK), .RN(RST_n), 
        .Q(w_out[1]), .QN(reg_filter_1_n11) );
  DFFR_X1 reg_filter_1_Q_reg_2_ ( .D(reg_filter_1_n21), .CK(CLK), .RN(RST_n), 
        .Q(w_out[2]), .QN(reg_filter_1_n12) );
  DFFR_X1 reg_filter_1_Q_reg_3_ ( .D(reg_filter_1_n22), .CK(CLK), .RN(RST_n), 
        .Q(w_out[3]), .QN(reg_filter_1_n13) );
  DFFR_X1 reg_filter_1_Q_reg_4_ ( .D(reg_filter_1_n23), .CK(CLK), .RN(RST_n), 
        .Q(w_out[4]), .QN(reg_filter_1_n14) );
  DFFR_X1 reg_filter_1_Q_reg_5_ ( .D(reg_filter_1_n24), .CK(CLK), .RN(RST_n), 
        .Q(w_out[5]), .QN(reg_filter_1_n15) );
  DFFR_X1 reg_filter_1_Q_reg_6_ ( .D(reg_filter_1_n25), .CK(CLK), .RN(RST_n), 
        .Q(w_out[6]), .QN(reg_filter_1_n16) );
  DFFR_X1 reg_filter_1_Q_reg_7_ ( .D(reg_filter_1_n26), .CK(CLK), .RN(RST_n), 
        .Q(w_out[7]), .QN(reg_filter_1_n17) );
  DFFR_X1 reg_filter_1_Q_reg_8_ ( .D(reg_filter_1_n27), .CK(CLK), .RN(RST_n), 
        .Q(w_out[8]), .QN(reg_filter_1_n18) );
  OAI21_X1 reg_filter_2_U17 ( .B1(reg_filter_2_n14), .B2(reg_filter_2_n22), 
        .A(reg_filter_2_n7), .ZN(reg_filter_2_n21) );
  NAND2_X1 reg_filter_2_U16 ( .A1(wa1_tbs[15]), .A2(reg_filter_2_n22), .ZN(
        reg_filter_2_n7) );
  NAND2_X1 reg_filter_2_U15 ( .A1(wa1_tbs[10]), .A2(reg_filter_2_n22), .ZN(
        reg_filter_2_n2) );
  OAI21_X1 reg_filter_2_U14 ( .B1(reg_filter_2_n9), .B2(reg_filter_2_n22), .A(
        reg_filter_2_n2), .ZN(reg_filter_2_n16) );
  NAND2_X1 reg_filter_2_U13 ( .A1(wa1_tbs[13]), .A2(reg_filter_2_n22), .ZN(
        reg_filter_2_n5) );
  OAI21_X1 reg_filter_2_U12 ( .B1(reg_filter_2_n12), .B2(reg_filter_2_n22), 
        .A(reg_filter_2_n5), .ZN(reg_filter_2_n19) );
  NAND2_X1 reg_filter_2_U11 ( .A1(wa1_tbs[11]), .A2(reg_filter_2_n22), .ZN(
        reg_filter_2_n3) );
  OAI21_X1 reg_filter_2_U10 ( .B1(reg_filter_2_n10), .B2(reg_filter_2_n22), 
        .A(reg_filter_2_n3), .ZN(reg_filter_2_n17) );
  NAND2_X1 reg_filter_2_U9 ( .A1(wa1_tbs[12]), .A2(reg_filter_2_n22), .ZN(
        reg_filter_2_n4) );
  OAI21_X1 reg_filter_2_U8 ( .B1(reg_filter_2_n11), .B2(reg_filter_2_n22), .A(
        reg_filter_2_n4), .ZN(reg_filter_2_n18) );
  NAND2_X1 reg_filter_2_U7 ( .A1(reg_filter_2_n23), .A2(wa1_tbs[9]), .ZN(
        reg_filter_2_n1) );
  OAI21_X1 reg_filter_2_U6 ( .B1(reg_filter_2_n8), .B2(reg_filter_2_n22), .A(
        reg_filter_2_n1), .ZN(reg_filter_2_n15) );
  NAND2_X1 reg_filter_2_U5 ( .A1(wa1_tbs[14]), .A2(reg_filter_2_n22), .ZN(
        reg_filter_2_n6) );
  OAI21_X1 reg_filter_2_U4 ( .B1(reg_filter_2_n13), .B2(reg_filter_2_n23), .A(
        reg_filter_2_n6), .ZN(reg_filter_2_n20) );
  BUF_X1 reg_filter_2_U3 ( .A(n3), .Z(reg_filter_2_n23) );
  BUF_X1 reg_filter_2_U2 ( .A(n3), .Z(reg_filter_2_n22) );
  DFFR_X1 reg_filter_2_Q_reg_0_ ( .D(reg_filter_2_n15), .CK(CLK), .RN(RST_n), 
        .Q(fb[0]), .QN(reg_filter_2_n8) );
  DFFR_X1 reg_filter_2_Q_reg_1_ ( .D(reg_filter_2_n16), .CK(CLK), .RN(RST_n), 
        .Q(fb[1]), .QN(reg_filter_2_n9) );
  DFFR_X1 reg_filter_2_Q_reg_2_ ( .D(reg_filter_2_n17), .CK(CLK), .RN(RST_n), 
        .Q(fb[2]), .QN(reg_filter_2_n10) );
  DFFR_X1 reg_filter_2_Q_reg_3_ ( .D(reg_filter_2_n18), .CK(CLK), .RN(RST_n), 
        .Q(fb[3]), .QN(reg_filter_2_n11) );
  DFFR_X1 reg_filter_2_Q_reg_4_ ( .D(reg_filter_2_n19), .CK(CLK), .RN(RST_n), 
        .Q(fb[4]), .QN(reg_filter_2_n12) );
  DFFR_X1 reg_filter_2_Q_reg_5_ ( .D(reg_filter_2_n20), .CK(CLK), .RN(RST_n), 
        .Q(fb[5]), .QN(reg_filter_2_n13) );
  DFFR_X1 reg_filter_2_Q_reg_6_ ( .D(reg_filter_2_n21), .CK(CLK), .RN(RST_n), 
        .Q(fb[6]), .QN(reg_filter_2_n14) );
  NAND2_X1 reg_w_2_U21 ( .A1(w_out[8]), .A2(reg_w_2_n28), .ZN(reg_w_2_n48) );
  OAI21_X1 reg_w_2_U20 ( .B1(reg_w_2_n39), .B2(reg_w_2_n28), .A(reg_w_2_n48), 
        .ZN(reg_w_2_n30) );
  NAND2_X1 reg_w_2_U19 ( .A1(w_out[6]), .A2(reg_w_2_n28), .ZN(reg_w_2_n50) );
  OAI21_X1 reg_w_2_U18 ( .B1(reg_w_2_n41), .B2(reg_w_2_n28), .A(reg_w_2_n50), 
        .ZN(reg_w_2_n32) );
  NAND2_X1 reg_w_2_U17 ( .A1(reg_w_2_n29), .A2(w_out[0]), .ZN(reg_w_2_n56) );
  OAI21_X1 reg_w_2_U16 ( .B1(reg_w_2_n47), .B2(reg_w_2_n28), .A(reg_w_2_n56), 
        .ZN(reg_w_2_n38) );
  NAND2_X1 reg_w_2_U15 ( .A1(w_out[5]), .A2(reg_w_2_n28), .ZN(reg_w_2_n51) );
  OAI21_X1 reg_w_2_U14 ( .B1(reg_w_2_n42), .B2(reg_w_2_n29), .A(reg_w_2_n51), 
        .ZN(reg_w_2_n33) );
  NAND2_X1 reg_w_2_U13 ( .A1(w_out[4]), .A2(reg_w_2_n28), .ZN(reg_w_2_n52) );
  OAI21_X1 reg_w_2_U12 ( .B1(reg_w_2_n43), .B2(reg_w_2_n29), .A(reg_w_2_n52), 
        .ZN(reg_w_2_n34) );
  NAND2_X1 reg_w_2_U11 ( .A1(w_out[3]), .A2(reg_w_2_n28), .ZN(reg_w_2_n53) );
  OAI21_X1 reg_w_2_U10 ( .B1(reg_w_2_n44), .B2(reg_w_2_n29), .A(reg_w_2_n53), 
        .ZN(reg_w_2_n35) );
  NAND2_X1 reg_w_2_U9 ( .A1(w_out[2]), .A2(reg_w_2_n28), .ZN(reg_w_2_n54) );
  OAI21_X1 reg_w_2_U8 ( .B1(reg_w_2_n45), .B2(reg_w_2_n29), .A(reg_w_2_n54), 
        .ZN(reg_w_2_n36) );
  NAND2_X1 reg_w_2_U7 ( .A1(w_out[1]), .A2(reg_w_2_n28), .ZN(reg_w_2_n55) );
  OAI21_X1 reg_w_2_U6 ( .B1(reg_w_2_n46), .B2(reg_w_2_n29), .A(reg_w_2_n55), 
        .ZN(reg_w_2_n37) );
  NAND2_X1 reg_w_2_U5 ( .A1(w_out[7]), .A2(reg_w_2_n28), .ZN(reg_w_2_n49) );
  OAI21_X1 reg_w_2_U4 ( .B1(reg_w_2_n40), .B2(reg_w_2_n28), .A(reg_w_2_n49), 
        .ZN(reg_w_2_n31) );
  BUF_X1 reg_w_2_U3 ( .A(n3), .Z(reg_w_2_n29) );
  BUF_X1 reg_w_2_U2 ( .A(n3), .Z(reg_w_2_n28) );
  DFFR_X1 reg_w_2_Q_reg_0_ ( .D(reg_w_2_n38), .CK(CLK), .RN(RST_n), .Q(
        pl1_in_3__0_), .QN(reg_w_2_n47) );
  DFFR_X1 reg_w_2_Q_reg_1_ ( .D(reg_w_2_n37), .CK(CLK), .RN(RST_n), .Q(
        pl1_in_3__1_), .QN(reg_w_2_n46) );
  DFFR_X1 reg_w_2_Q_reg_2_ ( .D(reg_w_2_n36), .CK(CLK), .RN(RST_n), .Q(
        pl1_in_3__2_), .QN(reg_w_2_n45) );
  DFFR_X1 reg_w_2_Q_reg_3_ ( .D(reg_w_2_n35), .CK(CLK), .RN(RST_n), .Q(
        pl1_in_3__3_), .QN(reg_w_2_n44) );
  DFFR_X1 reg_w_2_Q_reg_4_ ( .D(reg_w_2_n34), .CK(CLK), .RN(RST_n), .Q(
        pl1_in_3__4_), .QN(reg_w_2_n43) );
  DFFR_X1 reg_w_2_Q_reg_5_ ( .D(reg_w_2_n33), .CK(CLK), .RN(RST_n), .Q(
        pl1_in_3__5_), .QN(reg_w_2_n42) );
  DFFR_X1 reg_w_2_Q_reg_6_ ( .D(reg_w_2_n32), .CK(CLK), .RN(RST_n), .Q(
        pl1_in_3__6_), .QN(reg_w_2_n41) );
  DFFR_X1 reg_w_2_Q_reg_7_ ( .D(reg_w_2_n31), .CK(CLK), .RN(RST_n), .Q(
        pl1_in_3__7_), .QN(reg_w_2_n40) );
  DFFR_X1 reg_w_2_Q_reg_8_ ( .D(reg_w_2_n30), .CK(CLK), .RN(RST_n), .Q(
        pl1_in_3__8_), .QN(reg_w_2_n39) );
  NAND2_X1 pl1_reg_0_U19 ( .A1(w[5]), .A2(1'b1), .ZN(pl1_reg_0_n49) );
  OAI21_X1 pl1_reg_0_U18 ( .B1(pl1_reg_0_n40), .B2(1'b1), .A(pl1_reg_0_n49), 
        .ZN(pl1_reg_0_n31) );
  NAND2_X1 pl1_reg_0_U17 ( .A1(w[4]), .A2(1'b1), .ZN(pl1_reg_0_n50) );
  OAI21_X1 pl1_reg_0_U16 ( .B1(pl1_reg_0_n41), .B2(1'b1), .A(pl1_reg_0_n50), 
        .ZN(pl1_reg_0_n32) );
  NAND2_X1 pl1_reg_0_U15 ( .A1(w[3]), .A2(1'b1), .ZN(pl1_reg_0_n51) );
  OAI21_X1 pl1_reg_0_U14 ( .B1(pl1_reg_0_n42), .B2(1'b1), .A(pl1_reg_0_n51), 
        .ZN(pl1_reg_0_n33) );
  NAND2_X1 pl1_reg_0_U13 ( .A1(1'b1), .A2(w[0]), .ZN(pl1_reg_0_n54) );
  OAI21_X1 pl1_reg_0_U12 ( .B1(pl1_reg_0_n45), .B2(1'b1), .A(pl1_reg_0_n54), 
        .ZN(pl1_reg_0_n36) );
  NAND2_X1 pl1_reg_0_U11 ( .A1(w[8]), .A2(1'b1), .ZN(pl1_reg_0_n46) );
  OAI21_X1 pl1_reg_0_U10 ( .B1(pl1_reg_0_n37), .B2(1'b1), .A(pl1_reg_0_n46), 
        .ZN(pl1_reg_0_n28) );
  NAND2_X1 pl1_reg_0_U9 ( .A1(w[7]), .A2(1'b1), .ZN(pl1_reg_0_n47) );
  OAI21_X1 pl1_reg_0_U8 ( .B1(pl1_reg_0_n38), .B2(1'b1), .A(pl1_reg_0_n47), 
        .ZN(pl1_reg_0_n29) );
  NAND2_X1 pl1_reg_0_U7 ( .A1(w[6]), .A2(1'b1), .ZN(pl1_reg_0_n48) );
  OAI21_X1 pl1_reg_0_U6 ( .B1(pl1_reg_0_n39), .B2(1'b1), .A(pl1_reg_0_n48), 
        .ZN(pl1_reg_0_n30) );
  NAND2_X1 pl1_reg_0_U5 ( .A1(w[2]), .A2(1'b1), .ZN(pl1_reg_0_n52) );
  OAI21_X1 pl1_reg_0_U4 ( .B1(pl1_reg_0_n43), .B2(1'b1), .A(pl1_reg_0_n52), 
        .ZN(pl1_reg_0_n34) );
  NAND2_X1 pl1_reg_0_U3 ( .A1(w[1]), .A2(1'b1), .ZN(pl1_reg_0_n53) );
  OAI21_X1 pl1_reg_0_U2 ( .B1(pl1_reg_0_n44), .B2(1'b1), .A(pl1_reg_0_n53), 
        .ZN(pl1_reg_0_n35) );
  DFFR_X1 pl1_reg_0_Q_reg_0_ ( .D(pl1_reg_0_n36), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[0]), .QN(pl1_reg_0_n45) );
  DFFR_X1 pl1_reg_0_Q_reg_1_ ( .D(pl1_reg_0_n35), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[1]), .QN(pl1_reg_0_n44) );
  DFFR_X1 pl1_reg_0_Q_reg_2_ ( .D(pl1_reg_0_n34), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[2]), .QN(pl1_reg_0_n43) );
  DFFR_X1 pl1_reg_0_Q_reg_3_ ( .D(pl1_reg_0_n33), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[3]), .QN(pl1_reg_0_n42) );
  DFFR_X1 pl1_reg_0_Q_reg_4_ ( .D(pl1_reg_0_n32), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[4]), .QN(pl1_reg_0_n41) );
  DFFR_X1 pl1_reg_0_Q_reg_5_ ( .D(pl1_reg_0_n31), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[5]), .QN(pl1_reg_0_n40) );
  DFFR_X1 pl1_reg_0_Q_reg_6_ ( .D(pl1_reg_0_n30), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[6]), .QN(pl1_reg_0_n39) );
  DFFR_X1 pl1_reg_0_Q_reg_7_ ( .D(pl1_reg_0_n29), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[7]), .QN(pl1_reg_0_n38) );
  DFFR_X1 pl1_reg_0_Q_reg_8_ ( .D(pl1_reg_0_n28), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[8]), .QN(pl1_reg_0_n37) );
  NAND2_X1 pl2_reg_0_U15 ( .A1(pl2_in_tbs_0__15_), .A2(1'b1), .ZN(
        pl2_reg_0_n36) );
  NAND2_X1 pl2_reg_0_U14 ( .A1(1'b1), .A2(pl2_in_tbs_0__9_), .ZN(pl2_reg_0_n42) );
  OAI21_X1 pl2_reg_0_U13 ( .B1(pl2_reg_0_n35), .B2(1'b1), .A(pl2_reg_0_n42), 
        .ZN(pl2_reg_0_n28) );
  NAND2_X1 pl2_reg_0_U12 ( .A1(pl2_in_tbs_0__12_), .A2(1'b1), .ZN(
        pl2_reg_0_n39) );
  OAI21_X1 pl2_reg_0_U11 ( .B1(pl2_reg_0_n32), .B2(1'b1), .A(pl2_reg_0_n39), 
        .ZN(pl2_reg_0_n25) );
  NAND2_X1 pl2_reg_0_U10 ( .A1(pl2_in_tbs_0__11_), .A2(1'b1), .ZN(
        pl2_reg_0_n40) );
  OAI21_X1 pl2_reg_0_U9 ( .B1(pl2_reg_0_n33), .B2(1'b1), .A(pl2_reg_0_n40), 
        .ZN(pl2_reg_0_n26) );
  NAND2_X1 pl2_reg_0_U8 ( .A1(pl2_in_tbs_0__10_), .A2(1'b1), .ZN(pl2_reg_0_n41) );
  OAI21_X1 pl2_reg_0_U7 ( .B1(pl2_reg_0_n34), .B2(1'b1), .A(pl2_reg_0_n41), 
        .ZN(pl2_reg_0_n27) );
  NAND2_X1 pl2_reg_0_U6 ( .A1(pl2_in_tbs_0__14_), .A2(1'b1), .ZN(pl2_reg_0_n37) );
  OAI21_X1 pl2_reg_0_U5 ( .B1(pl2_reg_0_n30), .B2(1'b1), .A(pl2_reg_0_n37), 
        .ZN(pl2_reg_0_n23) );
  NAND2_X1 pl2_reg_0_U4 ( .A1(pl2_in_tbs_0__13_), .A2(1'b1), .ZN(pl2_reg_0_n38) );
  OAI21_X1 pl2_reg_0_U3 ( .B1(pl2_reg_0_n31), .B2(1'b1), .A(pl2_reg_0_n38), 
        .ZN(pl2_reg_0_n24) );
  OAI21_X1 pl2_reg_0_U2 ( .B1(pl2_reg_0_n29), .B2(1'b1), .A(pl2_reg_0_n36), 
        .ZN(pl2_reg_0_n22) );
  DFFR_X1 pl2_reg_0_Q_reg_0_ ( .D(pl2_reg_0_n28), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_0__0_), .QN(pl2_reg_0_n35) );
  DFFR_X1 pl2_reg_0_Q_reg_1_ ( .D(pl2_reg_0_n27), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_0__1_), .QN(pl2_reg_0_n34) );
  DFFR_X1 pl2_reg_0_Q_reg_2_ ( .D(pl2_reg_0_n26), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_0__2_), .QN(pl2_reg_0_n33) );
  DFFR_X1 pl2_reg_0_Q_reg_3_ ( .D(pl2_reg_0_n25), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_0__3_), .QN(pl2_reg_0_n32) );
  DFFR_X1 pl2_reg_0_Q_reg_4_ ( .D(pl2_reg_0_n24), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_0__4_), .QN(pl2_reg_0_n31) );
  DFFR_X1 pl2_reg_0_Q_reg_5_ ( .D(pl2_reg_0_n23), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_0__5_), .QN(pl2_reg_0_n30) );
  DFFR_X1 pl2_reg_0_Q_reg_6_ ( .D(pl2_reg_0_n22), .CK(CLK), .RN(RST_n), .Q(
        pl2_reg_0_Q_6_), .QN(pl2_reg_0_n29) );
  NAND2_X1 pl1_reg_1_U19 ( .A1(1'b1), .A2(w_out[0]), .ZN(pl1_reg_1_n54) );
  OAI21_X1 pl1_reg_1_U18 ( .B1(pl1_reg_1_n45), .B2(1'b1), .A(pl1_reg_1_n54), 
        .ZN(pl1_reg_1_n36) );
  NAND2_X1 pl1_reg_1_U17 ( .A1(w_out[8]), .A2(1'b1), .ZN(pl1_reg_1_n46) );
  OAI21_X1 pl1_reg_1_U16 ( .B1(pl1_reg_1_n37), .B2(1'b1), .A(pl1_reg_1_n46), 
        .ZN(pl1_reg_1_n28) );
  NAND2_X1 pl1_reg_1_U15 ( .A1(w_out[6]), .A2(1'b1), .ZN(pl1_reg_1_n48) );
  OAI21_X1 pl1_reg_1_U14 ( .B1(pl1_reg_1_n39), .B2(1'b1), .A(pl1_reg_1_n48), 
        .ZN(pl1_reg_1_n30) );
  NAND2_X1 pl1_reg_1_U13 ( .A1(w_out[5]), .A2(1'b1), .ZN(pl1_reg_1_n49) );
  OAI21_X1 pl1_reg_1_U12 ( .B1(pl1_reg_1_n40), .B2(1'b1), .A(pl1_reg_1_n49), 
        .ZN(pl1_reg_1_n31) );
  NAND2_X1 pl1_reg_1_U11 ( .A1(w_out[4]), .A2(1'b1), .ZN(pl1_reg_1_n50) );
  OAI21_X1 pl1_reg_1_U10 ( .B1(pl1_reg_1_n41), .B2(1'b1), .A(pl1_reg_1_n50), 
        .ZN(pl1_reg_1_n32) );
  NAND2_X1 pl1_reg_1_U9 ( .A1(w_out[3]), .A2(1'b1), .ZN(pl1_reg_1_n51) );
  OAI21_X1 pl1_reg_1_U8 ( .B1(pl1_reg_1_n42), .B2(1'b1), .A(pl1_reg_1_n51), 
        .ZN(pl1_reg_1_n33) );
  NAND2_X1 pl1_reg_1_U7 ( .A1(w_out[2]), .A2(1'b1), .ZN(pl1_reg_1_n52) );
  OAI21_X1 pl1_reg_1_U6 ( .B1(pl1_reg_1_n43), .B2(1'b1), .A(pl1_reg_1_n52), 
        .ZN(pl1_reg_1_n34) );
  NAND2_X1 pl1_reg_1_U5 ( .A1(w_out[1]), .A2(1'b1), .ZN(pl1_reg_1_n53) );
  OAI21_X1 pl1_reg_1_U4 ( .B1(pl1_reg_1_n44), .B2(1'b1), .A(pl1_reg_1_n53), 
        .ZN(pl1_reg_1_n35) );
  NAND2_X1 pl1_reg_1_U3 ( .A1(w_out[7]), .A2(1'b1), .ZN(pl1_reg_1_n47) );
  OAI21_X1 pl1_reg_1_U2 ( .B1(pl1_reg_1_n38), .B2(1'b1), .A(pl1_reg_1_n47), 
        .ZN(pl1_reg_1_n29) );
  DFFR_X1 pl1_reg_1_Q_reg_0_ ( .D(pl1_reg_1_n36), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[9]), .QN(pl1_reg_1_n45) );
  DFFR_X1 pl1_reg_1_Q_reg_1_ ( .D(pl1_reg_1_n35), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[10]), .QN(pl1_reg_1_n44) );
  DFFR_X1 pl1_reg_1_Q_reg_2_ ( .D(pl1_reg_1_n34), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[11]), .QN(pl1_reg_1_n43) );
  DFFR_X1 pl1_reg_1_Q_reg_3_ ( .D(pl1_reg_1_n33), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[12]), .QN(pl1_reg_1_n42) );
  DFFR_X1 pl1_reg_1_Q_reg_4_ ( .D(pl1_reg_1_n32), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[13]), .QN(pl1_reg_1_n41) );
  DFFR_X1 pl1_reg_1_Q_reg_5_ ( .D(pl1_reg_1_n31), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[14]), .QN(pl1_reg_1_n40) );
  DFFR_X1 pl1_reg_1_Q_reg_6_ ( .D(pl1_reg_1_n30), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[15]), .QN(pl1_reg_1_n39) );
  DFFR_X1 pl1_reg_1_Q_reg_7_ ( .D(pl1_reg_1_n29), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[16]), .QN(pl1_reg_1_n38) );
  DFFR_X1 pl1_reg_1_Q_reg_8_ ( .D(pl1_reg_1_n28), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[17]), .QN(pl1_reg_1_n37) );
  OAI21_X1 pl2_reg_1_U15 ( .B1(pl2_reg_1_n29), .B2(1'b1), .A(pl2_reg_1_n36), 
        .ZN(pl2_reg_1_n22) );
  NAND2_X1 pl2_reg_1_U14 ( .A1(1'b1), .A2(pl2_in_tbs_1__9_), .ZN(pl2_reg_1_n42) );
  OAI21_X1 pl2_reg_1_U13 ( .B1(pl2_reg_1_n35), .B2(1'b1), .A(pl2_reg_1_n42), 
        .ZN(pl2_reg_1_n28) );
  NAND2_X1 pl2_reg_1_U12 ( .A1(pl2_in_tbs_1__12_), .A2(1'b1), .ZN(
        pl2_reg_1_n39) );
  OAI21_X1 pl2_reg_1_U11 ( .B1(pl2_reg_1_n32), .B2(1'b1), .A(pl2_reg_1_n39), 
        .ZN(pl2_reg_1_n25) );
  NAND2_X1 pl2_reg_1_U10 ( .A1(pl2_in_tbs_1__11_), .A2(1'b1), .ZN(
        pl2_reg_1_n40) );
  OAI21_X1 pl2_reg_1_U9 ( .B1(pl2_reg_1_n33), .B2(1'b1), .A(pl2_reg_1_n40), 
        .ZN(pl2_reg_1_n26) );
  NAND2_X1 pl2_reg_1_U8 ( .A1(pl2_in_tbs_1__10_), .A2(1'b1), .ZN(pl2_reg_1_n41) );
  OAI21_X1 pl2_reg_1_U7 ( .B1(pl2_reg_1_n34), .B2(1'b1), .A(pl2_reg_1_n41), 
        .ZN(pl2_reg_1_n27) );
  NAND2_X1 pl2_reg_1_U6 ( .A1(pl2_in_tbs_1__13_), .A2(1'b1), .ZN(pl2_reg_1_n38) );
  OAI21_X1 pl2_reg_1_U5 ( .B1(pl2_reg_1_n31), .B2(1'b1), .A(pl2_reg_1_n38), 
        .ZN(pl2_reg_1_n24) );
  NAND2_X1 pl2_reg_1_U4 ( .A1(pl2_in_tbs_1__14_), .A2(1'b1), .ZN(pl2_reg_1_n37) );
  OAI21_X1 pl2_reg_1_U3 ( .B1(pl2_reg_1_n30), .B2(1'b1), .A(pl2_reg_1_n37), 
        .ZN(pl2_reg_1_n23) );
  NAND2_X1 pl2_reg_1_U2 ( .A1(pl2_in_tbs_1__15_), .A2(1'b1), .ZN(pl2_reg_1_n36) );
  DFFR_X1 pl2_reg_1_Q_reg_0_ ( .D(pl2_reg_1_n28), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_1__0_), .QN(pl2_reg_1_n35) );
  DFFR_X1 pl2_reg_1_Q_reg_1_ ( .D(pl2_reg_1_n27), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_1__1_), .QN(pl2_reg_1_n34) );
  DFFR_X1 pl2_reg_1_Q_reg_2_ ( .D(pl2_reg_1_n26), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_1__2_), .QN(pl2_reg_1_n33) );
  DFFR_X1 pl2_reg_1_Q_reg_3_ ( .D(pl2_reg_1_n25), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_1__3_), .QN(pl2_reg_1_n32) );
  DFFR_X1 pl2_reg_1_Q_reg_4_ ( .D(pl2_reg_1_n24), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_1__4_), .QN(pl2_reg_1_n31) );
  DFFR_X1 pl2_reg_1_Q_reg_5_ ( .D(pl2_reg_1_n23), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_1__5_), .QN(pl2_reg_1_n30) );
  DFFR_X1 pl2_reg_1_Q_reg_6_ ( .D(pl2_reg_1_n22), .CK(CLK), .RN(RST_n), .Q(
        pl2_reg_1_Q_6_), .QN(pl2_reg_1_n29) );
  NAND2_X1 pl1_reg_2_U19 ( .A1(1'b1), .A2(w_out[0]), .ZN(pl1_reg_2_n54) );
  OAI21_X1 pl1_reg_2_U18 ( .B1(pl1_reg_2_n45), .B2(1'b1), .A(pl1_reg_2_n54), 
        .ZN(pl1_reg_2_n36) );
  NAND2_X1 pl1_reg_2_U17 ( .A1(w_out[8]), .A2(1'b1), .ZN(pl1_reg_2_n46) );
  OAI21_X1 pl1_reg_2_U16 ( .B1(pl1_reg_2_n37), .B2(1'b1), .A(pl1_reg_2_n46), 
        .ZN(pl1_reg_2_n28) );
  NAND2_X1 pl1_reg_2_U15 ( .A1(w_out[6]), .A2(1'b1), .ZN(pl1_reg_2_n48) );
  OAI21_X1 pl1_reg_2_U14 ( .B1(pl1_reg_2_n39), .B2(1'b1), .A(pl1_reg_2_n48), 
        .ZN(pl1_reg_2_n30) );
  NAND2_X1 pl1_reg_2_U13 ( .A1(w_out[5]), .A2(1'b1), .ZN(pl1_reg_2_n49) );
  OAI21_X1 pl1_reg_2_U12 ( .B1(pl1_reg_2_n40), .B2(1'b1), .A(pl1_reg_2_n49), 
        .ZN(pl1_reg_2_n31) );
  NAND2_X1 pl1_reg_2_U11 ( .A1(w_out[4]), .A2(1'b1), .ZN(pl1_reg_2_n50) );
  OAI21_X1 pl1_reg_2_U10 ( .B1(pl1_reg_2_n41), .B2(1'b1), .A(pl1_reg_2_n50), 
        .ZN(pl1_reg_2_n32) );
  NAND2_X1 pl1_reg_2_U9 ( .A1(w_out[3]), .A2(1'b1), .ZN(pl1_reg_2_n51) );
  OAI21_X1 pl1_reg_2_U8 ( .B1(pl1_reg_2_n42), .B2(1'b1), .A(pl1_reg_2_n51), 
        .ZN(pl1_reg_2_n33) );
  NAND2_X1 pl1_reg_2_U7 ( .A1(w_out[2]), .A2(1'b1), .ZN(pl1_reg_2_n52) );
  OAI21_X1 pl1_reg_2_U6 ( .B1(pl1_reg_2_n43), .B2(1'b1), .A(pl1_reg_2_n52), 
        .ZN(pl1_reg_2_n34) );
  NAND2_X1 pl1_reg_2_U5 ( .A1(w_out[1]), .A2(1'b1), .ZN(pl1_reg_2_n53) );
  OAI21_X1 pl1_reg_2_U4 ( .B1(pl1_reg_2_n44), .B2(1'b1), .A(pl1_reg_2_n53), 
        .ZN(pl1_reg_2_n35) );
  NAND2_X1 pl1_reg_2_U3 ( .A1(w_out[7]), .A2(1'b1), .ZN(pl1_reg_2_n47) );
  OAI21_X1 pl1_reg_2_U2 ( .B1(pl1_reg_2_n38), .B2(1'b1), .A(pl1_reg_2_n47), 
        .ZN(pl1_reg_2_n29) );
  DFFR_X1 pl1_reg_2_Q_reg_0_ ( .D(pl1_reg_2_n36), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[18]), .QN(pl1_reg_2_n45) );
  DFFR_X1 pl1_reg_2_Q_reg_1_ ( .D(pl1_reg_2_n35), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[19]), .QN(pl1_reg_2_n44) );
  DFFR_X1 pl1_reg_2_Q_reg_2_ ( .D(pl1_reg_2_n34), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[20]), .QN(pl1_reg_2_n43) );
  DFFR_X1 pl1_reg_2_Q_reg_3_ ( .D(pl1_reg_2_n33), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[21]), .QN(pl1_reg_2_n42) );
  DFFR_X1 pl1_reg_2_Q_reg_4_ ( .D(pl1_reg_2_n32), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[22]), .QN(pl1_reg_2_n41) );
  DFFR_X1 pl1_reg_2_Q_reg_5_ ( .D(pl1_reg_2_n31), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[23]), .QN(pl1_reg_2_n40) );
  DFFR_X1 pl1_reg_2_Q_reg_6_ ( .D(pl1_reg_2_n30), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[24]), .QN(pl1_reg_2_n39) );
  DFFR_X1 pl1_reg_2_Q_reg_7_ ( .D(pl1_reg_2_n29), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[25]), .QN(pl1_reg_2_n38) );
  DFFR_X1 pl1_reg_2_Q_reg_8_ ( .D(pl1_reg_2_n28), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[26]), .QN(pl1_reg_2_n37) );
  NAND2_X1 pl2_reg_2_U15 ( .A1(pl2_in_tbs_2__15_), .A2(1'b1), .ZN(
        pl2_reg_2_n36) );
  OAI21_X1 pl2_reg_2_U14 ( .B1(pl2_reg_2_n29), .B2(1'b1), .A(pl2_reg_2_n36), 
        .ZN(pl2_reg_2_n22) );
  NAND2_X1 pl2_reg_2_U13 ( .A1(pl2_in_tbs_2__12_), .A2(1'b1), .ZN(
        pl2_reg_2_n39) );
  OAI21_X1 pl2_reg_2_U12 ( .B1(pl2_reg_2_n32), .B2(1'b1), .A(pl2_reg_2_n39), 
        .ZN(pl2_reg_2_n25) );
  NAND2_X1 pl2_reg_2_U11 ( .A1(pl2_in_tbs_2__10_), .A2(1'b1), .ZN(
        pl2_reg_2_n41) );
  OAI21_X1 pl2_reg_2_U10 ( .B1(pl2_reg_2_n34), .B2(1'b1), .A(pl2_reg_2_n41), 
        .ZN(pl2_reg_2_n27) );
  NAND2_X1 pl2_reg_2_U9 ( .A1(1'b1), .A2(pl2_in_tbs_2__9_), .ZN(pl2_reg_2_n42)
         );
  OAI21_X1 pl2_reg_2_U8 ( .B1(pl2_reg_2_n35), .B2(1'b1), .A(pl2_reg_2_n42), 
        .ZN(pl2_reg_2_n28) );
  NAND2_X1 pl2_reg_2_U7 ( .A1(pl2_in_tbs_2__11_), .A2(1'b1), .ZN(pl2_reg_2_n40) );
  OAI21_X1 pl2_reg_2_U6 ( .B1(pl2_reg_2_n33), .B2(1'b1), .A(pl2_reg_2_n40), 
        .ZN(pl2_reg_2_n26) );
  NAND2_X1 pl2_reg_2_U5 ( .A1(pl2_in_tbs_2__14_), .A2(1'b1), .ZN(pl2_reg_2_n37) );
  OAI21_X1 pl2_reg_2_U4 ( .B1(pl2_reg_2_n30), .B2(1'b1), .A(pl2_reg_2_n37), 
        .ZN(pl2_reg_2_n23) );
  NAND2_X1 pl2_reg_2_U3 ( .A1(pl2_in_tbs_2__13_), .A2(1'b1), .ZN(pl2_reg_2_n38) );
  OAI21_X1 pl2_reg_2_U2 ( .B1(pl2_reg_2_n31), .B2(1'b1), .A(pl2_reg_2_n38), 
        .ZN(pl2_reg_2_n24) );
  DFFR_X1 pl2_reg_2_Q_reg_0_ ( .D(pl2_reg_2_n28), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_2__0_), .QN(pl2_reg_2_n35) );
  DFFR_X1 pl2_reg_2_Q_reg_1_ ( .D(pl2_reg_2_n27), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_2__1_), .QN(pl2_reg_2_n34) );
  DFFR_X1 pl2_reg_2_Q_reg_2_ ( .D(pl2_reg_2_n26), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_2__2_), .QN(pl2_reg_2_n33) );
  DFFR_X1 pl2_reg_2_Q_reg_3_ ( .D(pl2_reg_2_n25), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_2__3_), .QN(pl2_reg_2_n32) );
  DFFR_X1 pl2_reg_2_Q_reg_4_ ( .D(pl2_reg_2_n24), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_2__4_), .QN(pl2_reg_2_n31) );
  DFFR_X1 pl2_reg_2_Q_reg_5_ ( .D(pl2_reg_2_n23), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_2__5_), .QN(pl2_reg_2_n30) );
  DFFR_X1 pl2_reg_2_Q_reg_6_ ( .D(pl2_reg_2_n22), .CK(CLK), .RN(RST_n), .Q(
        pl2_reg_2_Q_6_), .QN(pl2_reg_2_n29) );
  NAND2_X1 pl1_reg_3_U19 ( .A1(pl1_in_3__8_), .A2(1'b1), .ZN(pl1_reg_3_n46) );
  OAI21_X1 pl1_reg_3_U18 ( .B1(pl1_reg_3_n37), .B2(1'b1), .A(pl1_reg_3_n46), 
        .ZN(pl1_reg_3_n28) );
  NAND2_X1 pl1_reg_3_U17 ( .A1(pl1_in_3__7_), .A2(1'b1), .ZN(pl1_reg_3_n47) );
  OAI21_X1 pl1_reg_3_U16 ( .B1(pl1_reg_3_n38), .B2(1'b1), .A(pl1_reg_3_n47), 
        .ZN(pl1_reg_3_n29) );
  NAND2_X1 pl1_reg_3_U15 ( .A1(pl1_in_3__6_), .A2(1'b1), .ZN(pl1_reg_3_n48) );
  OAI21_X1 pl1_reg_3_U14 ( .B1(pl1_reg_3_n39), .B2(1'b1), .A(pl1_reg_3_n48), 
        .ZN(pl1_reg_3_n30) );
  NAND2_X1 pl1_reg_3_U13 ( .A1(pl1_in_3__5_), .A2(1'b1), .ZN(pl1_reg_3_n49) );
  OAI21_X1 pl1_reg_3_U12 ( .B1(pl1_reg_3_n40), .B2(1'b1), .A(pl1_reg_3_n49), 
        .ZN(pl1_reg_3_n31) );
  NAND2_X1 pl1_reg_3_U11 ( .A1(pl1_in_3__4_), .A2(1'b1), .ZN(pl1_reg_3_n50) );
  OAI21_X1 pl1_reg_3_U10 ( .B1(pl1_reg_3_n41), .B2(1'b1), .A(pl1_reg_3_n50), 
        .ZN(pl1_reg_3_n32) );
  NAND2_X1 pl1_reg_3_U9 ( .A1(pl1_in_3__3_), .A2(1'b1), .ZN(pl1_reg_3_n51) );
  OAI21_X1 pl1_reg_3_U8 ( .B1(pl1_reg_3_n42), .B2(1'b1), .A(pl1_reg_3_n51), 
        .ZN(pl1_reg_3_n33) );
  NAND2_X1 pl1_reg_3_U7 ( .A1(pl1_in_3__2_), .A2(1'b1), .ZN(pl1_reg_3_n52) );
  OAI21_X1 pl1_reg_3_U6 ( .B1(pl1_reg_3_n43), .B2(1'b1), .A(pl1_reg_3_n52), 
        .ZN(pl1_reg_3_n34) );
  NAND2_X1 pl1_reg_3_U5 ( .A1(pl1_in_3__1_), .A2(1'b1), .ZN(pl1_reg_3_n53) );
  OAI21_X1 pl1_reg_3_U4 ( .B1(pl1_reg_3_n44), .B2(1'b1), .A(pl1_reg_3_n53), 
        .ZN(pl1_reg_3_n35) );
  NAND2_X1 pl1_reg_3_U3 ( .A1(1'b1), .A2(pl1_in_3__0_), .ZN(pl1_reg_3_n54) );
  OAI21_X1 pl1_reg_3_U2 ( .B1(pl1_reg_3_n45), .B2(1'b1), .A(pl1_reg_3_n54), 
        .ZN(pl1_reg_3_n36) );
  DFFR_X1 pl1_reg_3_Q_reg_0_ ( .D(pl1_reg_3_n36), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[27]), .QN(pl1_reg_3_n45) );
  DFFR_X1 pl1_reg_3_Q_reg_1_ ( .D(pl1_reg_3_n35), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[28]), .QN(pl1_reg_3_n44) );
  DFFR_X1 pl1_reg_3_Q_reg_2_ ( .D(pl1_reg_3_n34), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[29]), .QN(pl1_reg_3_n43) );
  DFFR_X1 pl1_reg_3_Q_reg_3_ ( .D(pl1_reg_3_n33), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[30]), .QN(pl1_reg_3_n42) );
  DFFR_X1 pl1_reg_3_Q_reg_4_ ( .D(pl1_reg_3_n32), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[31]), .QN(pl1_reg_3_n41) );
  DFFR_X1 pl1_reg_3_Q_reg_5_ ( .D(pl1_reg_3_n31), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[32]), .QN(pl1_reg_3_n40) );
  DFFR_X1 pl1_reg_3_Q_reg_6_ ( .D(pl1_reg_3_n30), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[33]), .QN(pl1_reg_3_n39) );
  DFFR_X1 pl1_reg_3_Q_reg_7_ ( .D(pl1_reg_3_n29), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[34]), .QN(pl1_reg_3_n38) );
  DFFR_X1 pl1_reg_3_Q_reg_8_ ( .D(pl1_reg_3_n28), .CK(CLK), .RN(RST_n), .Q(
        pl1_out[35]), .QN(pl1_reg_3_n37) );
  OAI21_X1 pl2_reg_3_U15 ( .B1(pl2_reg_3_n29), .B2(1'b1), .A(pl2_reg_3_n36), 
        .ZN(pl2_reg_3_n22) );
  NAND2_X1 pl2_reg_3_U14 ( .A1(pl2_in_tbs_3__12_), .A2(1'b1), .ZN(
        pl2_reg_3_n39) );
  OAI21_X1 pl2_reg_3_U13 ( .B1(pl2_reg_3_n32), .B2(1'b1), .A(pl2_reg_3_n39), 
        .ZN(pl2_reg_3_n25) );
  NAND2_X1 pl2_reg_3_U12 ( .A1(1'b1), .A2(pl2_in_tbs_3__9_), .ZN(pl2_reg_3_n42) );
  OAI21_X1 pl2_reg_3_U11 ( .B1(pl2_reg_3_n35), .B2(1'b1), .A(pl2_reg_3_n42), 
        .ZN(pl2_reg_3_n28) );
  NAND2_X1 pl2_reg_3_U10 ( .A1(pl2_in_tbs_3__11_), .A2(1'b1), .ZN(
        pl2_reg_3_n40) );
  OAI21_X1 pl2_reg_3_U9 ( .B1(pl2_reg_3_n33), .B2(1'b1), .A(pl2_reg_3_n40), 
        .ZN(pl2_reg_3_n26) );
  NAND2_X1 pl2_reg_3_U8 ( .A1(pl2_in_tbs_3__10_), .A2(1'b1), .ZN(pl2_reg_3_n41) );
  OAI21_X1 pl2_reg_3_U7 ( .B1(pl2_reg_3_n34), .B2(1'b1), .A(pl2_reg_3_n41), 
        .ZN(pl2_reg_3_n27) );
  NAND2_X1 pl2_reg_3_U6 ( .A1(pl2_in_tbs_3__14_), .A2(1'b1), .ZN(pl2_reg_3_n37) );
  OAI21_X1 pl2_reg_3_U5 ( .B1(pl2_reg_3_n30), .B2(1'b1), .A(pl2_reg_3_n37), 
        .ZN(pl2_reg_3_n23) );
  NAND2_X1 pl2_reg_3_U4 ( .A1(pl2_in_tbs_3__13_), .A2(1'b1), .ZN(pl2_reg_3_n38) );
  OAI21_X1 pl2_reg_3_U3 ( .B1(pl2_reg_3_n31), .B2(1'b1), .A(pl2_reg_3_n38), 
        .ZN(pl2_reg_3_n24) );
  NAND2_X1 pl2_reg_3_U2 ( .A1(pl2_in_tbs_3__15_), .A2(1'b1), .ZN(pl2_reg_3_n36) );
  DFFR_X1 pl2_reg_3_Q_reg_0_ ( .D(pl2_reg_3_n28), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_3__0_), .QN(pl2_reg_3_n35) );
  DFFR_X1 pl2_reg_3_Q_reg_1_ ( .D(pl2_reg_3_n27), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_3__1_), .QN(pl2_reg_3_n34) );
  DFFR_X1 pl2_reg_3_Q_reg_2_ ( .D(pl2_reg_3_n26), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_3__2_), .QN(pl2_reg_3_n33) );
  DFFR_X1 pl2_reg_3_Q_reg_3_ ( .D(pl2_reg_3_n25), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_3__3_), .QN(pl2_reg_3_n32) );
  DFFR_X1 pl2_reg_3_Q_reg_4_ ( .D(pl2_reg_3_n24), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_3__4_), .QN(pl2_reg_3_n31) );
  DFFR_X1 pl2_reg_3_Q_reg_5_ ( .D(pl2_reg_3_n23), .CK(CLK), .RN(RST_n), .Q(
        pl2_out_3__5_), .QN(pl2_reg_3_n30) );
  DFFR_X1 pl2_reg_3_Q_reg_6_ ( .D(pl2_reg_3_n22), .CK(CLK), .RN(RST_n), .Q(
        pl2_reg_3_Q_6_), .QN(pl2_reg_3_n29) );
  NAND2_X1 reg_out_U17 ( .A1(1'b0), .A2(1'b1), .ZN(reg_out_n47) );
  OAI21_X1 reg_out_U16 ( .B1(reg_out_n39), .B2(1'b1), .A(reg_out_n47), .ZN(
        reg_out_n31) );
  NAND2_X1 reg_out_U15 ( .A1(1'b1), .A2(1'b0), .ZN(reg_out_n48) );
  OAI21_X1 reg_out_U14 ( .B1(reg_out_n40), .B2(1'b1), .A(reg_out_n48), .ZN(
        reg_out_n32) );
  NAND2_X1 reg_out_U13 ( .A1(y_tbs[4]), .A2(1'b1), .ZN(reg_out_n42) );
  OAI21_X1 reg_out_U12 ( .B1(reg_out_n34), .B2(1'b1), .A(reg_out_n42), .ZN(
        reg_out_n26) );
  NAND2_X1 reg_out_U11 ( .A1(y_tbs[3]), .A2(1'b1), .ZN(reg_out_n43) );
  OAI21_X1 reg_out_U10 ( .B1(reg_out_n35), .B2(1'b1), .A(reg_out_n43), .ZN(
        reg_out_n27) );
  NAND2_X1 reg_out_U9 ( .A1(y_tbs[0]), .A2(1'b1), .ZN(reg_out_n46) );
  OAI21_X1 reg_out_U8 ( .B1(reg_out_n38), .B2(1'b1), .A(reg_out_n46), .ZN(
        reg_out_n30) );
  NAND2_X1 reg_out_U7 ( .A1(y_tbs[5]), .A2(1'b1), .ZN(reg_out_n41) );
  OAI21_X1 reg_out_U6 ( .B1(reg_out_n33), .B2(1'b1), .A(reg_out_n41), .ZN(
        reg_out_n25) );
  NAND2_X1 reg_out_U5 ( .A1(y_tbs[2]), .A2(1'b1), .ZN(reg_out_n44) );
  OAI21_X1 reg_out_U4 ( .B1(reg_out_n36), .B2(1'b1), .A(reg_out_n44), .ZN(
        reg_out_n28) );
  NAND2_X1 reg_out_U3 ( .A1(y_tbs[1]), .A2(1'b1), .ZN(reg_out_n45) );
  OAI21_X1 reg_out_U2 ( .B1(reg_out_n37), .B2(1'b1), .A(reg_out_n45), .ZN(
        reg_out_n29) );
  DFFR_X1 reg_out_Q_reg_0_ ( .D(reg_out_n32), .CK(CLK), .RN(RST_n), .Q(DOUT[0]), .QN(reg_out_n40) );
  DFFR_X1 reg_out_Q_reg_1_ ( .D(reg_out_n31), .CK(CLK), .RN(RST_n), .Q(DOUT[1]), .QN(reg_out_n39) );
  DFFR_X1 reg_out_Q_reg_2_ ( .D(reg_out_n30), .CK(CLK), .RN(RST_n), .Q(DOUT[2]), .QN(reg_out_n38) );
  DFFR_X1 reg_out_Q_reg_3_ ( .D(reg_out_n29), .CK(CLK), .RN(RST_n), .Q(DOUT[3]), .QN(reg_out_n37) );
  DFFR_X1 reg_out_Q_reg_4_ ( .D(reg_out_n28), .CK(CLK), .RN(RST_n), .Q(DOUT[4]), .QN(reg_out_n36) );
  DFFR_X1 reg_out_Q_reg_5_ ( .D(reg_out_n27), .CK(CLK), .RN(RST_n), .Q(DOUT[5]), .QN(reg_out_n35) );
  DFFR_X1 reg_out_Q_reg_6_ ( .D(reg_out_n26), .CK(CLK), .RN(RST_n), .Q(DOUT[6]), .QN(reg_out_n34) );
  DFFR_X1 reg_out_Q_reg_7_ ( .D(reg_out_n25), .CK(CLK), .RN(RST_n), .Q(DOUT[7]), .QN(reg_out_n33) );
  INV_X1 sub_1_root_sub_0_root_add_168_U9 ( .A(pl2_out_3__0_), .ZN(
        sub_1_root_sub_0_root_add_168_n7) );
  INV_X1 sub_1_root_sub_0_root_add_168_U8 ( .A(pl2_out_3__4_), .ZN(
        sub_1_root_sub_0_root_add_168_n3) );
  INV_X1 sub_1_root_sub_0_root_add_168_U7 ( .A(pl2_out_3__3_), .ZN(
        sub_1_root_sub_0_root_add_168_n4) );
  INV_X1 sub_1_root_sub_0_root_add_168_U6 ( .A(pl2_out_3__2_), .ZN(
        sub_1_root_sub_0_root_add_168_n5) );
  INV_X1 sub_1_root_sub_0_root_add_168_U5 ( .A(pl2_out_0__0_), .ZN(
        sub_1_root_sub_0_root_add_168_n1) );
  NAND2_X1 sub_1_root_sub_0_root_add_168_U4 ( .A1(pl2_out_3__0_), .A2(
        sub_1_root_sub_0_root_add_168_n1), .ZN(
        sub_1_root_sub_0_root_add_168_carry[1]) );
  INV_X1 sub_1_root_sub_0_root_add_168_U3 ( .A(pl2_out_3__1_), .ZN(
        sub_1_root_sub_0_root_add_168_n6) );
  INV_X1 sub_1_root_sub_0_root_add_168_U2 ( .A(pl2_out_3__5_), .ZN(
        sub_1_root_sub_0_root_add_168_n2) );
  XNOR2_X1 sub_1_root_sub_0_root_add_168_U1 ( .A(
        sub_1_root_sub_0_root_add_168_n7), .B(pl2_out_0__0_), .ZN(partial_2_0_) );
  FA_X1 sub_1_root_sub_0_root_add_168_U2_1 ( .A(pl2_out_0__1_), .B(
        sub_1_root_sub_0_root_add_168_n6), .CI(
        sub_1_root_sub_0_root_add_168_carry[1]), .CO(
        sub_1_root_sub_0_root_add_168_carry[2]), .S(partial_2_1_) );
  FA_X1 sub_1_root_sub_0_root_add_168_U2_2 ( .A(pl2_out_0__2_), .B(
        sub_1_root_sub_0_root_add_168_n5), .CI(
        sub_1_root_sub_0_root_add_168_carry[2]), .CO(
        sub_1_root_sub_0_root_add_168_carry[3]), .S(partial_2_2_) );
  FA_X1 sub_1_root_sub_0_root_add_168_U2_3 ( .A(pl2_out_0__3_), .B(
        sub_1_root_sub_0_root_add_168_n4), .CI(
        sub_1_root_sub_0_root_add_168_carry[3]), .CO(
        sub_1_root_sub_0_root_add_168_carry[4]), .S(partial_2_3_) );
  FA_X1 sub_1_root_sub_0_root_add_168_U2_4 ( .A(pl2_out_0__4_), .B(
        sub_1_root_sub_0_root_add_168_n3), .CI(
        sub_1_root_sub_0_root_add_168_carry[4]), .CO(
        sub_1_root_sub_0_root_add_168_carry[5]), .S(partial_2_4_) );
  FA_X1 sub_1_root_sub_0_root_add_168_U2_5 ( .A(pl2_out_0__5_), .B(
        sub_1_root_sub_0_root_add_168_n2), .CI(
        sub_1_root_sub_0_root_add_168_carry[5]), .S(partial_2_5_) );
  INV_X1 sub_2_root_sub_0_root_add_168_U9 ( .A(pl2_out_2__5_), .ZN(
        sub_2_root_sub_0_root_add_168_n2) );
  INV_X1 sub_2_root_sub_0_root_add_168_U8 ( .A(pl2_out_2__0_), .ZN(
        sub_2_root_sub_0_root_add_168_n7) );
  INV_X1 sub_2_root_sub_0_root_add_168_U7 ( .A(pl2_out_2__4_), .ZN(
        sub_2_root_sub_0_root_add_168_n3) );
  INV_X1 sub_2_root_sub_0_root_add_168_U6 ( .A(pl2_out_2__3_), .ZN(
        sub_2_root_sub_0_root_add_168_n4) );
  INV_X1 sub_2_root_sub_0_root_add_168_U5 ( .A(pl2_out_2__2_), .ZN(
        sub_2_root_sub_0_root_add_168_n5) );
  INV_X1 sub_2_root_sub_0_root_add_168_U4 ( .A(pl2_out_1__0_), .ZN(
        sub_2_root_sub_0_root_add_168_n1) );
  NAND2_X1 sub_2_root_sub_0_root_add_168_U3 ( .A1(pl2_out_2__0_), .A2(
        sub_2_root_sub_0_root_add_168_n1), .ZN(
        sub_2_root_sub_0_root_add_168_carry[1]) );
  INV_X1 sub_2_root_sub_0_root_add_168_U2 ( .A(pl2_out_2__1_), .ZN(
        sub_2_root_sub_0_root_add_168_n6) );
  XNOR2_X1 sub_2_root_sub_0_root_add_168_U1 ( .A(
        sub_2_root_sub_0_root_add_168_n7), .B(pl2_out_1__0_), .ZN(partial_1_0_) );
  FA_X1 sub_2_root_sub_0_root_add_168_U2_1 ( .A(pl2_out_1__1_), .B(
        sub_2_root_sub_0_root_add_168_n6), .CI(
        sub_2_root_sub_0_root_add_168_carry[1]), .CO(
        sub_2_root_sub_0_root_add_168_carry[2]), .S(partial_1_1_) );
  FA_X1 sub_2_root_sub_0_root_add_168_U2_2 ( .A(pl2_out_1__2_), .B(
        sub_2_root_sub_0_root_add_168_n5), .CI(
        sub_2_root_sub_0_root_add_168_carry[2]), .CO(
        sub_2_root_sub_0_root_add_168_carry[3]), .S(partial_1_2_) );
  FA_X1 sub_2_root_sub_0_root_add_168_U2_3 ( .A(pl2_out_1__3_), .B(
        sub_2_root_sub_0_root_add_168_n4), .CI(
        sub_2_root_sub_0_root_add_168_carry[3]), .CO(
        sub_2_root_sub_0_root_add_168_carry[4]), .S(partial_1_3_) );
  FA_X1 sub_2_root_sub_0_root_add_168_U2_4 ( .A(pl2_out_1__4_), .B(
        sub_2_root_sub_0_root_add_168_n3), .CI(
        sub_2_root_sub_0_root_add_168_carry[4]), .CO(
        sub_2_root_sub_0_root_add_168_carry[5]), .S(partial_1_4_) );
  FA_X1 sub_2_root_sub_0_root_add_168_U2_5 ( .A(pl2_out_1__5_), .B(
        sub_2_root_sub_0_root_add_168_n2), .CI(
        sub_2_root_sub_0_root_add_168_carry[5]), .S(partial_1_5_) );
  AND2_X1 add_0_root_sub_0_root_add_168_U2 ( .A1(partial_2_0_), .A2(
        partial_1_0_), .ZN(add_0_root_sub_0_root_add_168_n2) );
  XOR2_X1 add_0_root_sub_0_root_add_168_U1 ( .A(partial_2_0_), .B(partial_1_0_), .Z(y_tbs[0]) );
  FA_X1 add_0_root_sub_0_root_add_168_U1_1 ( .A(partial_1_1_), .B(partial_2_1_), .CI(add_0_root_sub_0_root_add_168_n2), .CO(
        add_0_root_sub_0_root_add_168_carry[2]), .S(y_tbs[1]) );
  FA_X1 add_0_root_sub_0_root_add_168_U1_2 ( .A(partial_1_2_), .B(partial_2_2_), .CI(add_0_root_sub_0_root_add_168_carry[2]), .CO(
        add_0_root_sub_0_root_add_168_carry[3]), .S(y_tbs[2]) );
  FA_X1 add_0_root_sub_0_root_add_168_U1_3 ( .A(partial_1_3_), .B(partial_2_3_), .CI(add_0_root_sub_0_root_add_168_carry[3]), .CO(
        add_0_root_sub_0_root_add_168_carry[4]), .S(y_tbs[3]) );
  FA_X1 add_0_root_sub_0_root_add_168_U1_4 ( .A(partial_1_4_), .B(partial_2_4_), .CI(add_0_root_sub_0_root_add_168_carry[4]), .CO(
        add_0_root_sub_0_root_add_168_carry[5]), .S(y_tbs[4]) );
  FA_X1 add_0_root_sub_0_root_add_168_U1_5 ( .A(partial_1_5_), .B(partial_2_5_), .CI(add_0_root_sub_0_root_add_168_carry[5]), .S(y_tbs[5]) );
  XNOR2_X1 mult_153_G4_U318 ( .A(pl1_out[31]), .B(b3[3]), .ZN(mult_153_G4_n316) );
  XNOR2_X1 mult_153_G4_U317 ( .A(mult_153_G4_n255), .B(b3[2]), .ZN(
        mult_153_G4_n317) );
  XNOR2_X1 mult_153_G4_U316 ( .A(pl1_out[32]), .B(b3[3]), .ZN(mult_153_G4_n260) );
  OAI22_X1 mult_153_G4_U315 ( .A1(mult_153_G4_n316), .A2(mult_153_G4_n261), 
        .B1(mult_153_G4_n212), .B2(mult_153_G4_n260), .ZN(mult_153_G4_n100) );
  XNOR2_X1 mult_153_G4_U314 ( .A(pl1_out[30]), .B(b3[3]), .ZN(mult_153_G4_n315) );
  OAI22_X1 mult_153_G4_U313 ( .A1(mult_153_G4_n315), .A2(mult_153_G4_n261), 
        .B1(mult_153_G4_n212), .B2(mult_153_G4_n316), .ZN(mult_153_G4_n101) );
  XNOR2_X1 mult_153_G4_U312 ( .A(pl1_out[29]), .B(b3[3]), .ZN(mult_153_G4_n314) );
  OAI22_X1 mult_153_G4_U311 ( .A1(mult_153_G4_n314), .A2(mult_153_G4_n261), 
        .B1(mult_153_G4_n228), .B2(mult_153_G4_n315), .ZN(mult_153_G4_n102) );
  XNOR2_X1 mult_153_G4_U310 ( .A(pl1_out[28]), .B(b3[3]), .ZN(mult_153_G4_n313) );
  OAI22_X1 mult_153_G4_U309 ( .A1(mult_153_G4_n313), .A2(mult_153_G4_n261), 
        .B1(mult_153_G4_n228), .B2(mult_153_G4_n314), .ZN(mult_153_G4_n103) );
  XNOR2_X1 mult_153_G4_U308 ( .A(pl1_out[27]), .B(b3[3]), .ZN(mult_153_G4_n312) );
  OAI22_X1 mult_153_G4_U307 ( .A1(mult_153_G4_n312), .A2(mult_153_G4_n261), 
        .B1(mult_153_G4_n228), .B2(mult_153_G4_n313), .ZN(mult_153_G4_n104) );
  XNOR2_X1 mult_153_G4_U306 ( .A(pl1_out[35]), .B(b3[1]), .ZN(mult_153_G4_n310) );
  NAND2_X1 mult_153_G4_U305 ( .A1(b3[1]), .A2(mult_153_G4_n256), .ZN(
        mult_153_G4_n296) );
  OAI22_X1 mult_153_G4_U304 ( .A1(mult_153_G4_n256), .A2(mult_153_G4_n310), 
        .B1(mult_153_G4_n296), .B2(mult_153_G4_n310), .ZN(mult_153_G4_n311) );
  XNOR2_X1 mult_153_G4_U303 ( .A(pl1_out[34]), .B(b3[1]), .ZN(mult_153_G4_n309) );
  OAI22_X1 mult_153_G4_U302 ( .A1(mult_153_G4_n309), .A2(mult_153_G4_n296), 
        .B1(mult_153_G4_n310), .B2(mult_153_G4_n256), .ZN(mult_153_G4_n107) );
  XNOR2_X1 mult_153_G4_U301 ( .A(pl1_out[33]), .B(b3[1]), .ZN(mult_153_G4_n308) );
  OAI22_X1 mult_153_G4_U300 ( .A1(mult_153_G4_n308), .A2(mult_153_G4_n296), 
        .B1(mult_153_G4_n309), .B2(mult_153_G4_n256), .ZN(mult_153_G4_n108) );
  XNOR2_X1 mult_153_G4_U299 ( .A(pl1_out[32]), .B(b3[1]), .ZN(mult_153_G4_n307) );
  OAI22_X1 mult_153_G4_U298 ( .A1(mult_153_G4_n307), .A2(mult_153_G4_n296), 
        .B1(mult_153_G4_n308), .B2(mult_153_G4_n256), .ZN(mult_153_G4_n109) );
  XNOR2_X1 mult_153_G4_U297 ( .A(pl1_out[31]), .B(b3[1]), .ZN(mult_153_G4_n306) );
  OAI22_X1 mult_153_G4_U296 ( .A1(mult_153_G4_n306), .A2(mult_153_G4_n296), 
        .B1(mult_153_G4_n307), .B2(mult_153_G4_n256), .ZN(mult_153_G4_n110) );
  XNOR2_X1 mult_153_G4_U295 ( .A(pl1_out[30]), .B(b3[1]), .ZN(mult_153_G4_n305) );
  OAI22_X1 mult_153_G4_U294 ( .A1(mult_153_G4_n305), .A2(mult_153_G4_n296), 
        .B1(mult_153_G4_n306), .B2(mult_153_G4_n256), .ZN(mult_153_G4_n111) );
  XNOR2_X1 mult_153_G4_U293 ( .A(pl1_out[29]), .B(b3[1]), .ZN(mult_153_G4_n297) );
  OAI22_X1 mult_153_G4_U292 ( .A1(mult_153_G4_n297), .A2(mult_153_G4_n296), 
        .B1(mult_153_G4_n305), .B2(mult_153_G4_n256), .ZN(mult_153_G4_n112) );
  XOR2_X1 mult_153_G4_U291 ( .A(pl1_out[34]), .B(b3[7]), .Z(mult_153_G4_n286)
         );
  XNOR2_X1 mult_153_G4_U290 ( .A(mult_153_G4_n252), .B(b3[6]), .ZN(
        mult_153_G4_n304) );
  NAND2_X1 mult_153_G4_U289 ( .A1(mult_153_G4_n277), .A2(mult_153_G4_n304), 
        .ZN(mult_153_G4_n279) );
  XNOR2_X1 mult_153_G4_U288 ( .A(pl1_out[35]), .B(mult_153_G4_n252), .ZN(
        mult_153_G4_n259) );
  XNOR2_X1 mult_153_G4_U287 ( .A(pl1_out[34]), .B(b3[5]), .ZN(mult_153_G4_n274) );
  XNOR2_X1 mult_153_G4_U286 ( .A(mult_153_G4_n254), .B(b3[4]), .ZN(
        mult_153_G4_n303) );
  NAND2_X1 mult_153_G4_U285 ( .A1(mult_153_G4_n265), .A2(mult_153_G4_n303), 
        .ZN(mult_153_G4_n267) );
  XNOR2_X1 mult_153_G4_U284 ( .A(pl1_out[35]), .B(b3[5]), .ZN(mult_153_G4_n276) );
  OAI22_X1 mult_153_G4_U283 ( .A1(mult_153_G4_n274), .A2(mult_153_G4_n267), 
        .B1(mult_153_G4_n265), .B2(mult_153_G4_n276), .ZN(mult_153_G4_n22) );
  XNOR2_X1 mult_153_G4_U282 ( .A(pl1_out[34]), .B(b3[3]), .ZN(mult_153_G4_n302) );
  XNOR2_X1 mult_153_G4_U281 ( .A(pl1_out[35]), .B(b3[3]), .ZN(mult_153_G4_n264) );
  OAI22_X1 mult_153_G4_U280 ( .A1(mult_153_G4_n302), .A2(mult_153_G4_n261), 
        .B1(mult_153_G4_n212), .B2(mult_153_G4_n264), .ZN(mult_153_G4_n32) );
  XNOR2_X1 mult_153_G4_U279 ( .A(pl1_out[29]), .B(b3[7]), .ZN(mult_153_G4_n281) );
  XNOR2_X1 mult_153_G4_U278 ( .A(pl1_out[30]), .B(b3[7]), .ZN(mult_153_G4_n282) );
  OAI22_X1 mult_153_G4_U277 ( .A1(mult_153_G4_n281), .A2(mult_153_G4_n279), 
        .B1(mult_153_G4_n277), .B2(mult_153_G4_n282), .ZN(mult_153_G4_n300) );
  XNOR2_X1 mult_153_G4_U276 ( .A(pl1_out[33]), .B(b3[3]), .ZN(mult_153_G4_n262) );
  OAI22_X1 mult_153_G4_U275 ( .A1(mult_153_G4_n262), .A2(mult_153_G4_n261), 
        .B1(mult_153_G4_n212), .B2(mult_153_G4_n302), .ZN(mult_153_G4_n301) );
  OR2_X1 mult_153_G4_U274 ( .A1(mult_153_G4_n300), .A2(mult_153_G4_n301), .ZN(
        mult_153_G4_n38) );
  XNOR2_X1 mult_153_G4_U273 ( .A(mult_153_G4_n300), .B(mult_153_G4_n301), .ZN(
        mult_153_G4_n39) );
  NAND3_X1 mult_153_G4_U272 ( .A1(mult_153_G4_n253), .A2(mult_153_G4_n250), 
        .A3(b3[7]), .ZN(mult_153_G4_n299) );
  OAI21_X1 mult_153_G4_U271 ( .B1(mult_153_G4_n252), .B2(mult_153_G4_n279), 
        .A(mult_153_G4_n299), .ZN(mult_153_G4_n75) );
  OR3_X1 mult_153_G4_U270 ( .A1(mult_153_G4_n265), .A2(pl1_out[27]), .A3(
        mult_153_G4_n254), .ZN(mult_153_G4_n298) );
  OAI21_X1 mult_153_G4_U269 ( .B1(mult_153_G4_n254), .B2(mult_153_G4_n267), 
        .A(mult_153_G4_n298), .ZN(mult_153_G4_n76) );
  OAI22_X1 mult_153_G4_U268 ( .A1(pl1_out[28]), .A2(mult_153_G4_n296), .B1(
        mult_153_G4_n297), .B2(mult_153_G4_n256), .ZN(mult_153_G4_n295) );
  NAND3_X1 mult_153_G4_U267 ( .A1(mult_153_G4_n294), .A2(mult_153_G4_n250), 
        .A3(b3[3]), .ZN(mult_153_G4_n293) );
  OAI21_X1 mult_153_G4_U266 ( .B1(mult_153_G4_n255), .B2(mult_153_G4_n261), 
        .A(mult_153_G4_n293), .ZN(mult_153_G4_n292) );
  AOI222_X1 mult_153_G4_U265 ( .A1(mult_153_G4_n213), .A2(mult_153_G4_n63), 
        .B1(mult_153_G4_n292), .B2(mult_153_G4_n213), .C1(mult_153_G4_n63), 
        .C2(mult_153_G4_n292), .ZN(mult_153_G4_n291) );
  AOI222_X1 mult_153_G4_U264 ( .A1(mult_153_G4_n248), .A2(mult_153_G4_n61), 
        .B1(mult_153_G4_n248), .B2(mult_153_G4_n62), .C1(mult_153_G4_n62), 
        .C2(mult_153_G4_n61), .ZN(mult_153_G4_n290) );
  AOI222_X1 mult_153_G4_U263 ( .A1(mult_153_G4_n247), .A2(mult_153_G4_n57), 
        .B1(mult_153_G4_n247), .B2(mult_153_G4_n60), .C1(mult_153_G4_n60), 
        .C2(mult_153_G4_n57), .ZN(mult_153_G4_n289) );
  OAI222_X1 mult_153_G4_U262 ( .A1(mult_153_G4_n289), .A2(mult_153_G4_n245), 
        .B1(mult_153_G4_n289), .B2(mult_153_G4_n246), .C1(mult_153_G4_n246), 
        .C2(mult_153_G4_n245), .ZN(mult_153_G4_n288) );
  AOI222_X1 mult_153_G4_U261 ( .A1(mult_153_G4_n288), .A2(mult_153_G4_n47), 
        .B1(mult_153_G4_n288), .B2(mult_153_G4_n52), .C1(mult_153_G4_n52), 
        .C2(mult_153_G4_n47), .ZN(mult_153_G4_n287) );
  OAI222_X1 mult_153_G4_U260 ( .A1(mult_153_G4_n287), .A2(mult_153_G4_n242), 
        .B1(mult_153_G4_n287), .B2(mult_153_G4_n244), .C1(mult_153_G4_n244), 
        .C2(mult_153_G4_n242), .ZN(mult_153_G4_n8) );
  XNOR2_X1 mult_153_G4_U259 ( .A(pl1_out[33]), .B(b3[7]), .ZN(mult_153_G4_n285) );
  OAI22_X1 mult_153_G4_U258 ( .A1(mult_153_G4_n285), .A2(mult_153_G4_n279), 
        .B1(mult_153_G4_n277), .B2(mult_153_G4_n243), .ZN(mult_153_G4_n80) );
  XNOR2_X1 mult_153_G4_U257 ( .A(pl1_out[32]), .B(b3[7]), .ZN(mult_153_G4_n284) );
  OAI22_X1 mult_153_G4_U256 ( .A1(mult_153_G4_n284), .A2(mult_153_G4_n279), 
        .B1(mult_153_G4_n277), .B2(mult_153_G4_n285), .ZN(mult_153_G4_n81) );
  XNOR2_X1 mult_153_G4_U255 ( .A(pl1_out[31]), .B(b3[7]), .ZN(mult_153_G4_n283) );
  OAI22_X1 mult_153_G4_U254 ( .A1(mult_153_G4_n283), .A2(mult_153_G4_n279), 
        .B1(mult_153_G4_n277), .B2(mult_153_G4_n284), .ZN(mult_153_G4_n82) );
  OAI22_X1 mult_153_G4_U253 ( .A1(mult_153_G4_n282), .A2(mult_153_G4_n279), 
        .B1(mult_153_G4_n277), .B2(mult_153_G4_n283), .ZN(mult_153_G4_n83) );
  XNOR2_X1 mult_153_G4_U252 ( .A(pl1_out[28]), .B(b3[7]), .ZN(mult_153_G4_n280) );
  OAI22_X1 mult_153_G4_U251 ( .A1(mult_153_G4_n280), .A2(mult_153_G4_n279), 
        .B1(mult_153_G4_n277), .B2(mult_153_G4_n281), .ZN(mult_153_G4_n85) );
  XNOR2_X1 mult_153_G4_U250 ( .A(pl1_out[27]), .B(b3[7]), .ZN(mult_153_G4_n278) );
  OAI22_X1 mult_153_G4_U249 ( .A1(mult_153_G4_n278), .A2(mult_153_G4_n279), 
        .B1(mult_153_G4_n277), .B2(mult_153_G4_n280), .ZN(mult_153_G4_n86) );
  NOR2_X1 mult_153_G4_U248 ( .A1(mult_153_G4_n277), .A2(mult_153_G4_n250), 
        .ZN(mult_153_G4_n87) );
  OAI22_X1 mult_153_G4_U247 ( .A1(mult_153_G4_n276), .A2(mult_153_G4_n265), 
        .B1(mult_153_G4_n267), .B2(mult_153_G4_n276), .ZN(mult_153_G4_n275) );
  XNOR2_X1 mult_153_G4_U246 ( .A(pl1_out[33]), .B(b3[5]), .ZN(mult_153_G4_n273) );
  OAI22_X1 mult_153_G4_U245 ( .A1(mult_153_G4_n273), .A2(mult_153_G4_n267), 
        .B1(mult_153_G4_n265), .B2(mult_153_G4_n274), .ZN(mult_153_G4_n89) );
  XNOR2_X1 mult_153_G4_U244 ( .A(pl1_out[32]), .B(b3[5]), .ZN(mult_153_G4_n272) );
  OAI22_X1 mult_153_G4_U243 ( .A1(mult_153_G4_n272), .A2(mult_153_G4_n267), 
        .B1(mult_153_G4_n265), .B2(mult_153_G4_n273), .ZN(mult_153_G4_n90) );
  XNOR2_X1 mult_153_G4_U242 ( .A(pl1_out[31]), .B(b3[5]), .ZN(mult_153_G4_n271) );
  OAI22_X1 mult_153_G4_U241 ( .A1(mult_153_G4_n271), .A2(mult_153_G4_n267), 
        .B1(mult_153_G4_n265), .B2(mult_153_G4_n272), .ZN(mult_153_G4_n91) );
  XNOR2_X1 mult_153_G4_U240 ( .A(pl1_out[30]), .B(b3[5]), .ZN(mult_153_G4_n270) );
  OAI22_X1 mult_153_G4_U239 ( .A1(mult_153_G4_n270), .A2(mult_153_G4_n267), 
        .B1(mult_153_G4_n265), .B2(mult_153_G4_n271), .ZN(mult_153_G4_n92) );
  XNOR2_X1 mult_153_G4_U238 ( .A(pl1_out[29]), .B(b3[5]), .ZN(mult_153_G4_n269) );
  OAI22_X1 mult_153_G4_U237 ( .A1(mult_153_G4_n269), .A2(mult_153_G4_n267), 
        .B1(mult_153_G4_n265), .B2(mult_153_G4_n270), .ZN(mult_153_G4_n93) );
  XNOR2_X1 mult_153_G4_U236 ( .A(pl1_out[28]), .B(b3[5]), .ZN(mult_153_G4_n268) );
  OAI22_X1 mult_153_G4_U235 ( .A1(mult_153_G4_n268), .A2(mult_153_G4_n267), 
        .B1(mult_153_G4_n265), .B2(mult_153_G4_n269), .ZN(mult_153_G4_n94) );
  XNOR2_X1 mult_153_G4_U234 ( .A(pl1_out[27]), .B(b3[5]), .ZN(mult_153_G4_n266) );
  OAI22_X1 mult_153_G4_U233 ( .A1(mult_153_G4_n266), .A2(mult_153_G4_n267), 
        .B1(mult_153_G4_n265), .B2(mult_153_G4_n268), .ZN(mult_153_G4_n95) );
  NOR2_X1 mult_153_G4_U232 ( .A1(mult_153_G4_n265), .A2(mult_153_G4_n250), 
        .ZN(mult_153_G4_n96) );
  OAI22_X1 mult_153_G4_U231 ( .A1(mult_153_G4_n264), .A2(mult_153_G4_n212), 
        .B1(mult_153_G4_n261), .B2(mult_153_G4_n264), .ZN(mult_153_G4_n263) );
  OAI22_X1 mult_153_G4_U230 ( .A1(mult_153_G4_n260), .A2(mult_153_G4_n261), 
        .B1(mult_153_G4_n212), .B2(mult_153_G4_n262), .ZN(mult_153_G4_n99) );
  AOI22_X1 mult_153_G4_U229 ( .A1(mult_153_G4_n259), .A2(mult_153_G4_n253), 
        .B1(mult_153_G4_n251), .B2(mult_153_G4_n259), .ZN(mult_153_G4_n258) );
  XOR2_X1 mult_153_G4_U228 ( .A(mult_153_G4_n2), .B(mult_153_G4_n258), .Z(
        mult_153_G4_n257) );
  XNOR2_X1 mult_153_G4_U227 ( .A(mult_153_G4_n17), .B(mult_153_G4_n257), .ZN(
        pl2_in_tbs_3__15_) );
  XOR2_X2 mult_153_G4_U226 ( .A(b3[4]), .B(mult_153_G4_n255), .Z(
        mult_153_G4_n265) );
  INV_X1 mult_153_G4_U225 ( .A(mult_153_G4_n290), .ZN(mult_153_G4_n247) );
  INV_X1 mult_153_G4_U224 ( .A(mult_153_G4_n291), .ZN(mult_153_G4_n248) );
  NAND3_X1 mult_153_G4_U223 ( .A1(mult_153_G4_n234), .A2(mult_153_G4_n235), 
        .A3(mult_153_G4_n236), .ZN(mult_153_G4_n7) );
  NAND2_X1 mult_153_G4_U222 ( .A1(mult_153_G4_n35), .A2(mult_153_G4_n40), .ZN(
        mult_153_G4_n236) );
  NAND2_X1 mult_153_G4_U221 ( .A1(mult_153_G4_n8), .A2(mult_153_G4_n40), .ZN(
        mult_153_G4_n235) );
  NAND2_X1 mult_153_G4_U220 ( .A1(mult_153_G4_n8), .A2(mult_153_G4_n35), .ZN(
        mult_153_G4_n234) );
  XOR2_X1 mult_153_G4_U219 ( .A(mult_153_G4_n8), .B(mult_153_G4_n233), .Z(
        pl2_in_tbs_3__9_) );
  XOR2_X1 mult_153_G4_U218 ( .A(mult_153_G4_n35), .B(mult_153_G4_n40), .Z(
        mult_153_G4_n233) );
  NAND3_X1 mult_153_G4_U217 ( .A1(mult_153_G4_n230), .A2(mult_153_G4_n231), 
        .A3(mult_153_G4_n232), .ZN(mult_153_G4_n3) );
  NAND2_X1 mult_153_G4_U216 ( .A1(mult_153_G4_n20), .A2(mult_153_G4_n19), .ZN(
        mult_153_G4_n232) );
  NAND2_X1 mult_153_G4_U215 ( .A1(mult_153_G4_n4), .A2(mult_153_G4_n19), .ZN(
        mult_153_G4_n231) );
  NAND2_X1 mult_153_G4_U214 ( .A1(mult_153_G4_n4), .A2(mult_153_G4_n20), .ZN(
        mult_153_G4_n230) );
  XOR2_X1 mult_153_G4_U213 ( .A(mult_153_G4_n4), .B(mult_153_G4_n229), .Z(
        pl2_in_tbs_3__13_) );
  XOR2_X1 mult_153_G4_U212 ( .A(mult_153_G4_n20), .B(mult_153_G4_n19), .Z(
        mult_153_G4_n229) );
  NAND3_X1 mult_153_G4_U211 ( .A1(mult_153_G4_n225), .A2(mult_153_G4_n226), 
        .A3(mult_153_G4_n227), .ZN(mult_153_G4_n5) );
  NAND2_X1 mult_153_G4_U210 ( .A1(mult_153_G4_n25), .A2(mult_153_G4_n28), .ZN(
        mult_153_G4_n227) );
  NAND2_X1 mult_153_G4_U209 ( .A1(mult_153_G4_n6), .A2(mult_153_G4_n28), .ZN(
        mult_153_G4_n226) );
  NAND2_X1 mult_153_G4_U208 ( .A1(mult_153_G4_n6), .A2(mult_153_G4_n25), .ZN(
        mult_153_G4_n225) );
  XOR2_X1 mult_153_G4_U207 ( .A(mult_153_G4_n6), .B(mult_153_G4_n224), .Z(
        pl2_in_tbs_3__11_) );
  XOR2_X1 mult_153_G4_U206 ( .A(mult_153_G4_n25), .B(mult_153_G4_n28), .Z(
        mult_153_G4_n224) );
  NAND3_X1 mult_153_G4_U205 ( .A1(mult_153_G4_n221), .A2(mult_153_G4_n222), 
        .A3(mult_153_G4_n223), .ZN(mult_153_G4_n6) );
  NAND2_X1 mult_153_G4_U204 ( .A1(mult_153_G4_n34), .A2(mult_153_G4_n29), .ZN(
        mult_153_G4_n223) );
  NAND2_X1 mult_153_G4_U203 ( .A1(mult_153_G4_n7), .A2(mult_153_G4_n29), .ZN(
        mult_153_G4_n222) );
  NAND2_X1 mult_153_G4_U202 ( .A1(mult_153_G4_n7), .A2(mult_153_G4_n34), .ZN(
        mult_153_G4_n221) );
  XOR2_X1 mult_153_G4_U201 ( .A(mult_153_G4_n7), .B(mult_153_G4_n220), .Z(
        pl2_in_tbs_3__10_) );
  XOR2_X1 mult_153_G4_U200 ( .A(mult_153_G4_n34), .B(mult_153_G4_n29), .Z(
        mult_153_G4_n220) );
  INV_X1 mult_153_G4_U199 ( .A(mult_153_G4_n228), .ZN(mult_153_G4_n294) );
  NAND3_X1 mult_153_G4_U198 ( .A1(mult_153_G4_n217), .A2(mult_153_G4_n218), 
        .A3(mult_153_G4_n219), .ZN(mult_153_G4_n2) );
  NAND2_X1 mult_153_G4_U197 ( .A1(mult_153_G4_n18), .A2(mult_153_G4_n17), .ZN(
        mult_153_G4_n219) );
  NAND2_X1 mult_153_G4_U196 ( .A1(mult_153_G4_n3), .A2(mult_153_G4_n17), .ZN(
        mult_153_G4_n218) );
  NAND2_X1 mult_153_G4_U195 ( .A1(mult_153_G4_n3), .A2(mult_153_G4_n18), .ZN(
        mult_153_G4_n217) );
  XOR2_X1 mult_153_G4_U194 ( .A(mult_153_G4_n3), .B(mult_153_G4_n216), .Z(
        pl2_in_tbs_3__14_) );
  XOR2_X1 mult_153_G4_U193 ( .A(mult_153_G4_n18), .B(mult_153_G4_n17), .Z(
        mult_153_G4_n216) );
  INV_X1 mult_153_G4_U192 ( .A(pl1_out[28]), .ZN(mult_153_G4_n249) );
  AND3_X1 mult_153_G4_U191 ( .A1(mult_153_G4_n295), .A2(mult_153_G4_n249), 
        .A3(b3[1]), .ZN(mult_153_G4_n215) );
  AND2_X1 mult_153_G4_U190 ( .A1(mult_153_G4_n294), .A2(mult_153_G4_n295), 
        .ZN(mult_153_G4_n214) );
  MUX2_X1 mult_153_G4_U189 ( .A(mult_153_G4_n214), .B(mult_153_G4_n215), .S(
        mult_153_G4_n250), .Z(mult_153_G4_n213) );
  INV_X1 mult_153_G4_U188 ( .A(b3[7]), .ZN(mult_153_G4_n252) );
  INV_X1 mult_153_G4_U187 ( .A(b3[3]), .ZN(mult_153_G4_n255) );
  INV_X1 mult_153_G4_U186 ( .A(b3[5]), .ZN(mult_153_G4_n254) );
  INV_X1 mult_153_G4_U185 ( .A(pl1_out[27]), .ZN(mult_153_G4_n250) );
  INV_X1 mult_153_G4_U184 ( .A(b3[0]), .ZN(mult_153_G4_n256) );
  NAND2_X1 mult_153_G4_U183 ( .A1(mult_153_G4_n228), .A2(mult_153_G4_n317), 
        .ZN(mult_153_G4_n261) );
  XOR2_X1 mult_153_G4_U182 ( .A(b3[6]), .B(mult_153_G4_n254), .Z(
        mult_153_G4_n277) );
  INV_X1 mult_153_G4_U181 ( .A(mult_153_G4_n286), .ZN(mult_153_G4_n243) );
  INV_X1 mult_153_G4_U180 ( .A(mult_153_G4_n275), .ZN(mult_153_G4_n240) );
  INV_X1 mult_153_G4_U179 ( .A(mult_153_G4_n32), .ZN(mult_153_G4_n237) );
  INV_X1 mult_153_G4_U178 ( .A(mult_153_G4_n263), .ZN(mult_153_G4_n238) );
  INV_X1 mult_153_G4_U177 ( .A(mult_153_G4_n311), .ZN(mult_153_G4_n241) );
  INV_X1 mult_153_G4_U176 ( .A(mult_153_G4_n279), .ZN(mult_153_G4_n251) );
  INV_X1 mult_153_G4_U175 ( .A(mult_153_G4_n277), .ZN(mult_153_G4_n253) );
  INV_X1 mult_153_G4_U174 ( .A(mult_153_G4_n22), .ZN(mult_153_G4_n239) );
  AOI22_X1 mult_153_G4_U173 ( .A1(mult_153_G4_n286), .A2(mult_153_G4_n251), 
        .B1(mult_153_G4_n253), .B2(mult_153_G4_n259), .ZN(mult_153_G4_n17) );
  INV_X1 mult_153_G4_U172 ( .A(mult_153_G4_n53), .ZN(mult_153_G4_n245) );
  INV_X1 mult_153_G4_U171 ( .A(mult_153_G4_n56), .ZN(mult_153_G4_n246) );
  INV_X1 mult_153_G4_U170 ( .A(mult_153_G4_n41), .ZN(mult_153_G4_n242) );
  INV_X1 mult_153_G4_U169 ( .A(mult_153_G4_n46), .ZN(mult_153_G4_n244) );
  XNOR2_X1 mult_153_G4_U168 ( .A(b3[2]), .B(b3[1]), .ZN(mult_153_G4_n228) );
  INV_X1 mult_153_G4_U167 ( .A(mult_153_G4_n294), .ZN(mult_153_G4_n212) );
  HA_X1 mult_153_G4_U41 ( .A(mult_153_G4_n104), .B(mult_153_G4_n112), .CO(
        mult_153_G4_n62), .S(mult_153_G4_n63) );
  FA_X1 mult_153_G4_U40 ( .A(mult_153_G4_n111), .B(mult_153_G4_n96), .CI(
        mult_153_G4_n103), .CO(mult_153_G4_n60), .S(mult_153_G4_n61) );
  HA_X1 mult_153_G4_U39 ( .A(mult_153_G4_n76), .B(mult_153_G4_n95), .CO(
        mult_153_G4_n58), .S(mult_153_G4_n59) );
  FA_X1 mult_153_G4_U38 ( .A(mult_153_G4_n102), .B(mult_153_G4_n110), .CI(
        mult_153_G4_n59), .CO(mult_153_G4_n56), .S(mult_153_G4_n57) );
  FA_X1 mult_153_G4_U37 ( .A(mult_153_G4_n109), .B(mult_153_G4_n87), .CI(
        mult_153_G4_n101), .CO(mult_153_G4_n54), .S(mult_153_G4_n55) );
  FA_X1 mult_153_G4_U36 ( .A(mult_153_G4_n58), .B(mult_153_G4_n94), .CI(
        mult_153_G4_n55), .CO(mult_153_G4_n52), .S(mult_153_G4_n53) );
  HA_X1 mult_153_G4_U35 ( .A(mult_153_G4_n75), .B(mult_153_G4_n86), .CO(
        mult_153_G4_n50), .S(mult_153_G4_n51) );
  FA_X1 mult_153_G4_U34 ( .A(mult_153_G4_n93), .B(mult_153_G4_n108), .CI(
        mult_153_G4_n100), .CO(mult_153_G4_n48), .S(mult_153_G4_n49) );
  FA_X1 mult_153_G4_U33 ( .A(mult_153_G4_n54), .B(mult_153_G4_n51), .CI(
        mult_153_G4_n49), .CO(mult_153_G4_n46), .S(mult_153_G4_n47) );
  HA_X1 mult_153_G4_U32 ( .A(mult_153_G4_n85), .B(mult_153_G4_n92), .CO(
        mult_153_G4_n44), .S(mult_153_G4_n45) );
  FA_X1 mult_153_G4_U31 ( .A(mult_153_G4_n99), .B(mult_153_G4_n107), .CI(
        mult_153_G4_n50), .CO(mult_153_G4_n42), .S(mult_153_G4_n43) );
  FA_X1 mult_153_G4_U30 ( .A(mult_153_G4_n48), .B(mult_153_G4_n45), .CI(
        mult_153_G4_n43), .CO(mult_153_G4_n40), .S(mult_153_G4_n41) );
  FA_X1 mult_153_G4_U27 ( .A(mult_153_G4_n241), .B(mult_153_G4_n91), .CI(
        mult_153_G4_n44), .CO(mult_153_G4_n36), .S(mult_153_G4_n37) );
  FA_X1 mult_153_G4_U26 ( .A(mult_153_G4_n42), .B(mult_153_G4_n39), .CI(
        mult_153_G4_n37), .CO(mult_153_G4_n34), .S(mult_153_G4_n35) );
  FA_X1 mult_153_G4_U24 ( .A(mult_153_G4_n83), .B(mult_153_G4_n90), .CI(
        mult_153_G4_n237), .CO(mult_153_G4_n30), .S(mult_153_G4_n31) );
  FA_X1 mult_153_G4_U23 ( .A(mult_153_G4_n36), .B(mult_153_G4_n38), .CI(
        mult_153_G4_n31), .CO(mult_153_G4_n28), .S(mult_153_G4_n29) );
  FA_X1 mult_153_G4_U22 ( .A(mult_153_G4_n89), .B(mult_153_G4_n32), .CI(
        mult_153_G4_n238), .CO(mult_153_G4_n26), .S(mult_153_G4_n27) );
  FA_X1 mult_153_G4_U21 ( .A(mult_153_G4_n30), .B(mult_153_G4_n82), .CI(
        mult_153_G4_n27), .CO(mult_153_G4_n24), .S(mult_153_G4_n25) );
  FA_X1 mult_153_G4_U19 ( .A(mult_153_G4_n239), .B(mult_153_G4_n81), .CI(
        mult_153_G4_n26), .CO(mult_153_G4_n20), .S(mult_153_G4_n21) );
  FA_X1 mult_153_G4_U18 ( .A(mult_153_G4_n80), .B(mult_153_G4_n22), .CI(
        mult_153_G4_n240), .CO(mult_153_G4_n18), .S(mult_153_G4_n19) );
  FA_X1 mult_153_G4_U5 ( .A(mult_153_G4_n21), .B(mult_153_G4_n24), .CI(
        mult_153_G4_n5), .CO(mult_153_G4_n4), .S(pl2_in_tbs_3__12_) );
  XNOR2_X1 mult_153_G3_U310 ( .A(pl1_out[22]), .B(b2[3]), .ZN(mult_153_G3_n312) );
  XNOR2_X1 mult_153_G3_U309 ( .A(mult_153_G3_n248), .B(b2[2]), .ZN(
        mult_153_G3_n313) );
  XNOR2_X1 mult_153_G3_U308 ( .A(pl1_out[23]), .B(b2[3]), .ZN(mult_153_G3_n253) );
  OAI22_X1 mult_153_G3_U307 ( .A1(mult_153_G3_n312), .A2(mult_153_G3_n254), 
        .B1(mult_153_G3_n212), .B2(mult_153_G3_n253), .ZN(mult_153_G3_n100) );
  XNOR2_X1 mult_153_G3_U306 ( .A(pl1_out[21]), .B(b2[3]), .ZN(mult_153_G3_n311) );
  OAI22_X1 mult_153_G3_U305 ( .A1(mult_153_G3_n311), .A2(mult_153_G3_n254), 
        .B1(mult_153_G3_n212), .B2(mult_153_G3_n312), .ZN(mult_153_G3_n101) );
  XNOR2_X1 mult_153_G3_U304 ( .A(pl1_out[20]), .B(b2[3]), .ZN(mult_153_G3_n310) );
  OAI22_X1 mult_153_G3_U303 ( .A1(mult_153_G3_n310), .A2(mult_153_G3_n254), 
        .B1(mult_153_G3_n213), .B2(mult_153_G3_n311), .ZN(mult_153_G3_n102) );
  XNOR2_X1 mult_153_G3_U302 ( .A(pl1_out[19]), .B(b2[3]), .ZN(mult_153_G3_n309) );
  OAI22_X1 mult_153_G3_U301 ( .A1(mult_153_G3_n309), .A2(mult_153_G3_n254), 
        .B1(mult_153_G3_n213), .B2(mult_153_G3_n310), .ZN(mult_153_G3_n103) );
  XNOR2_X1 mult_153_G3_U300 ( .A(pl1_out[18]), .B(b2[3]), .ZN(mult_153_G3_n308) );
  OAI22_X1 mult_153_G3_U299 ( .A1(mult_153_G3_n308), .A2(mult_153_G3_n254), 
        .B1(mult_153_G3_n213), .B2(mult_153_G3_n309), .ZN(mult_153_G3_n104) );
  XNOR2_X1 mult_153_G3_U298 ( .A(pl1_out[26]), .B(b2[1]), .ZN(mult_153_G3_n306) );
  NAND2_X1 mult_153_G3_U297 ( .A1(b2[1]), .A2(mult_153_G3_n249), .ZN(
        mult_153_G3_n292) );
  OAI22_X1 mult_153_G3_U296 ( .A1(mult_153_G3_n249), .A2(mult_153_G3_n306), 
        .B1(mult_153_G3_n292), .B2(mult_153_G3_n306), .ZN(mult_153_G3_n307) );
  XNOR2_X1 mult_153_G3_U295 ( .A(pl1_out[25]), .B(b2[1]), .ZN(mult_153_G3_n305) );
  OAI22_X1 mult_153_G3_U294 ( .A1(mult_153_G3_n305), .A2(mult_153_G3_n292), 
        .B1(mult_153_G3_n306), .B2(mult_153_G3_n249), .ZN(mult_153_G3_n107) );
  XNOR2_X1 mult_153_G3_U293 ( .A(pl1_out[24]), .B(b2[1]), .ZN(mult_153_G3_n304) );
  OAI22_X1 mult_153_G3_U292 ( .A1(mult_153_G3_n304), .A2(mult_153_G3_n292), 
        .B1(mult_153_G3_n305), .B2(mult_153_G3_n249), .ZN(mult_153_G3_n108) );
  XNOR2_X1 mult_153_G3_U291 ( .A(pl1_out[23]), .B(b2[1]), .ZN(mult_153_G3_n303) );
  OAI22_X1 mult_153_G3_U290 ( .A1(mult_153_G3_n303), .A2(mult_153_G3_n292), 
        .B1(mult_153_G3_n304), .B2(mult_153_G3_n249), .ZN(mult_153_G3_n109) );
  XNOR2_X1 mult_153_G3_U289 ( .A(pl1_out[22]), .B(b2[1]), .ZN(mult_153_G3_n302) );
  OAI22_X1 mult_153_G3_U288 ( .A1(mult_153_G3_n302), .A2(mult_153_G3_n292), 
        .B1(mult_153_G3_n303), .B2(mult_153_G3_n249), .ZN(mult_153_G3_n110) );
  XNOR2_X1 mult_153_G3_U287 ( .A(pl1_out[21]), .B(b2[1]), .ZN(mult_153_G3_n301) );
  OAI22_X1 mult_153_G3_U286 ( .A1(mult_153_G3_n301), .A2(mult_153_G3_n292), 
        .B1(mult_153_G3_n302), .B2(mult_153_G3_n249), .ZN(mult_153_G3_n111) );
  XNOR2_X1 mult_153_G3_U285 ( .A(pl1_out[20]), .B(b2[1]), .ZN(mult_153_G3_n293) );
  OAI22_X1 mult_153_G3_U284 ( .A1(mult_153_G3_n293), .A2(mult_153_G3_n292), 
        .B1(mult_153_G3_n301), .B2(mult_153_G3_n249), .ZN(mult_153_G3_n112) );
  XOR2_X1 mult_153_G3_U283 ( .A(pl1_out[25]), .B(b2[7]), .Z(mult_153_G3_n279)
         );
  XNOR2_X1 mult_153_G3_U282 ( .A(mult_153_G3_n245), .B(b2[6]), .ZN(
        mult_153_G3_n300) );
  NAND2_X1 mult_153_G3_U281 ( .A1(mult_153_G3_n270), .A2(mult_153_G3_n300), 
        .ZN(mult_153_G3_n272) );
  XNOR2_X1 mult_153_G3_U280 ( .A(pl1_out[26]), .B(mult_153_G3_n245), .ZN(
        mult_153_G3_n252) );
  XNOR2_X1 mult_153_G3_U279 ( .A(pl1_out[25]), .B(b2[5]), .ZN(mult_153_G3_n267) );
  XNOR2_X1 mult_153_G3_U278 ( .A(mult_153_G3_n247), .B(b2[4]), .ZN(
        mult_153_G3_n299) );
  NAND2_X1 mult_153_G3_U277 ( .A1(mult_153_G3_n258), .A2(mult_153_G3_n299), 
        .ZN(mult_153_G3_n260) );
  XNOR2_X1 mult_153_G3_U276 ( .A(pl1_out[26]), .B(b2[5]), .ZN(mult_153_G3_n269) );
  OAI22_X1 mult_153_G3_U275 ( .A1(mult_153_G3_n267), .A2(mult_153_G3_n260), 
        .B1(mult_153_G3_n258), .B2(mult_153_G3_n269), .ZN(mult_153_G3_n22) );
  XNOR2_X1 mult_153_G3_U274 ( .A(pl1_out[25]), .B(b2[3]), .ZN(mult_153_G3_n298) );
  XNOR2_X1 mult_153_G3_U273 ( .A(pl1_out[26]), .B(b2[3]), .ZN(mult_153_G3_n257) );
  OAI22_X1 mult_153_G3_U272 ( .A1(mult_153_G3_n298), .A2(mult_153_G3_n254), 
        .B1(mult_153_G3_n212), .B2(mult_153_G3_n257), .ZN(mult_153_G3_n32) );
  XNOR2_X1 mult_153_G3_U271 ( .A(pl1_out[20]), .B(b2[7]), .ZN(mult_153_G3_n274) );
  XNOR2_X1 mult_153_G3_U270 ( .A(pl1_out[21]), .B(b2[7]), .ZN(mult_153_G3_n275) );
  OAI22_X1 mult_153_G3_U269 ( .A1(mult_153_G3_n274), .A2(mult_153_G3_n272), 
        .B1(mult_153_G3_n270), .B2(mult_153_G3_n275), .ZN(mult_153_G3_n296) );
  XNOR2_X1 mult_153_G3_U268 ( .A(pl1_out[24]), .B(b2[3]), .ZN(mult_153_G3_n255) );
  OAI22_X1 mult_153_G3_U267 ( .A1(mult_153_G3_n255), .A2(mult_153_G3_n254), 
        .B1(mult_153_G3_n212), .B2(mult_153_G3_n298), .ZN(mult_153_G3_n297) );
  OR2_X1 mult_153_G3_U266 ( .A1(mult_153_G3_n296), .A2(mult_153_G3_n297), .ZN(
        mult_153_G3_n38) );
  XNOR2_X1 mult_153_G3_U265 ( .A(mult_153_G3_n296), .B(mult_153_G3_n297), .ZN(
        mult_153_G3_n39) );
  NAND3_X1 mult_153_G3_U264 ( .A1(mult_153_G3_n246), .A2(mult_153_G3_n243), 
        .A3(b2[7]), .ZN(mult_153_G3_n295) );
  OAI21_X1 mult_153_G3_U263 ( .B1(mult_153_G3_n245), .B2(mult_153_G3_n272), 
        .A(mult_153_G3_n295), .ZN(mult_153_G3_n75) );
  OR3_X1 mult_153_G3_U262 ( .A1(mult_153_G3_n258), .A2(pl1_out[18]), .A3(
        mult_153_G3_n247), .ZN(mult_153_G3_n294) );
  OAI21_X1 mult_153_G3_U261 ( .B1(mult_153_G3_n247), .B2(mult_153_G3_n260), 
        .A(mult_153_G3_n294), .ZN(mult_153_G3_n76) );
  OAI22_X1 mult_153_G3_U260 ( .A1(pl1_out[19]), .A2(mult_153_G3_n292), .B1(
        mult_153_G3_n293), .B2(mult_153_G3_n249), .ZN(mult_153_G3_n291) );
  NAND2_X1 mult_153_G3_U259 ( .A1(mult_153_G3_n287), .A2(mult_153_G3_n291), 
        .ZN(mult_153_G3_n289) );
  NAND3_X1 mult_153_G3_U258 ( .A1(mult_153_G3_n291), .A2(mult_153_G3_n242), 
        .A3(b2[1]), .ZN(mult_153_G3_n290) );
  MUX2_X1 mult_153_G3_U257 ( .A(mult_153_G3_n289), .B(mult_153_G3_n290), .S(
        mult_153_G3_n243), .Z(mult_153_G3_n288) );
  NAND3_X1 mult_153_G3_U256 ( .A1(mult_153_G3_n287), .A2(mult_153_G3_n243), 
        .A3(b2[3]), .ZN(mult_153_G3_n286) );
  OAI21_X1 mult_153_G3_U255 ( .B1(mult_153_G3_n248), .B2(mult_153_G3_n254), 
        .A(mult_153_G3_n286), .ZN(mult_153_G3_n285) );
  AOI222_X1 mult_153_G3_U254 ( .A1(mult_153_G3_n241), .A2(mult_153_G3_n63), 
        .B1(mult_153_G3_n285), .B2(mult_153_G3_n241), .C1(mult_153_G3_n63), 
        .C2(mult_153_G3_n285), .ZN(mult_153_G3_n284) );
  AOI222_X1 mult_153_G3_U253 ( .A1(mult_153_G3_n240), .A2(mult_153_G3_n61), 
        .B1(mult_153_G3_n240), .B2(mult_153_G3_n62), .C1(mult_153_G3_n62), 
        .C2(mult_153_G3_n61), .ZN(mult_153_G3_n283) );
  AOI222_X1 mult_153_G3_U252 ( .A1(mult_153_G3_n239), .A2(mult_153_G3_n57), 
        .B1(mult_153_G3_n239), .B2(mult_153_G3_n60), .C1(mult_153_G3_n60), 
        .C2(mult_153_G3_n57), .ZN(mult_153_G3_n282) );
  OAI222_X1 mult_153_G3_U251 ( .A1(mult_153_G3_n282), .A2(mult_153_G3_n237), 
        .B1(mult_153_G3_n282), .B2(mult_153_G3_n238), .C1(mult_153_G3_n238), 
        .C2(mult_153_G3_n237), .ZN(mult_153_G3_n281) );
  AOI222_X1 mult_153_G3_U250 ( .A1(mult_153_G3_n281), .A2(mult_153_G3_n47), 
        .B1(mult_153_G3_n281), .B2(mult_153_G3_n52), .C1(mult_153_G3_n52), 
        .C2(mult_153_G3_n47), .ZN(mult_153_G3_n280) );
  XNOR2_X1 mult_153_G3_U249 ( .A(pl1_out[24]), .B(b2[7]), .ZN(mult_153_G3_n278) );
  OAI22_X1 mult_153_G3_U248 ( .A1(mult_153_G3_n278), .A2(mult_153_G3_n272), 
        .B1(mult_153_G3_n270), .B2(mult_153_G3_n235), .ZN(mult_153_G3_n80) );
  XNOR2_X1 mult_153_G3_U247 ( .A(pl1_out[23]), .B(b2[7]), .ZN(mult_153_G3_n277) );
  OAI22_X1 mult_153_G3_U246 ( .A1(mult_153_G3_n277), .A2(mult_153_G3_n272), 
        .B1(mult_153_G3_n270), .B2(mult_153_G3_n278), .ZN(mult_153_G3_n81) );
  XNOR2_X1 mult_153_G3_U245 ( .A(pl1_out[22]), .B(b2[7]), .ZN(mult_153_G3_n276) );
  OAI22_X1 mult_153_G3_U244 ( .A1(mult_153_G3_n276), .A2(mult_153_G3_n272), 
        .B1(mult_153_G3_n270), .B2(mult_153_G3_n277), .ZN(mult_153_G3_n82) );
  OAI22_X1 mult_153_G3_U243 ( .A1(mult_153_G3_n275), .A2(mult_153_G3_n272), 
        .B1(mult_153_G3_n270), .B2(mult_153_G3_n276), .ZN(mult_153_G3_n83) );
  XNOR2_X1 mult_153_G3_U242 ( .A(pl1_out[19]), .B(b2[7]), .ZN(mult_153_G3_n273) );
  OAI22_X1 mult_153_G3_U241 ( .A1(mult_153_G3_n273), .A2(mult_153_G3_n272), 
        .B1(mult_153_G3_n270), .B2(mult_153_G3_n274), .ZN(mult_153_G3_n85) );
  XNOR2_X1 mult_153_G3_U240 ( .A(pl1_out[18]), .B(b2[7]), .ZN(mult_153_G3_n271) );
  OAI22_X1 mult_153_G3_U239 ( .A1(mult_153_G3_n271), .A2(mult_153_G3_n272), 
        .B1(mult_153_G3_n270), .B2(mult_153_G3_n273), .ZN(mult_153_G3_n86) );
  NOR2_X1 mult_153_G3_U238 ( .A1(mult_153_G3_n270), .A2(mult_153_G3_n243), 
        .ZN(mult_153_G3_n87) );
  OAI22_X1 mult_153_G3_U237 ( .A1(mult_153_G3_n269), .A2(mult_153_G3_n258), 
        .B1(mult_153_G3_n260), .B2(mult_153_G3_n269), .ZN(mult_153_G3_n268) );
  XNOR2_X1 mult_153_G3_U236 ( .A(pl1_out[24]), .B(b2[5]), .ZN(mult_153_G3_n266) );
  OAI22_X1 mult_153_G3_U235 ( .A1(mult_153_G3_n266), .A2(mult_153_G3_n260), 
        .B1(mult_153_G3_n258), .B2(mult_153_G3_n267), .ZN(mult_153_G3_n89) );
  XNOR2_X1 mult_153_G3_U234 ( .A(pl1_out[23]), .B(b2[5]), .ZN(mult_153_G3_n265) );
  OAI22_X1 mult_153_G3_U233 ( .A1(mult_153_G3_n265), .A2(mult_153_G3_n260), 
        .B1(mult_153_G3_n258), .B2(mult_153_G3_n266), .ZN(mult_153_G3_n90) );
  XNOR2_X1 mult_153_G3_U232 ( .A(pl1_out[22]), .B(b2[5]), .ZN(mult_153_G3_n264) );
  OAI22_X1 mult_153_G3_U231 ( .A1(mult_153_G3_n264), .A2(mult_153_G3_n260), 
        .B1(mult_153_G3_n258), .B2(mult_153_G3_n265), .ZN(mult_153_G3_n91) );
  XNOR2_X1 mult_153_G3_U230 ( .A(pl1_out[21]), .B(b2[5]), .ZN(mult_153_G3_n263) );
  OAI22_X1 mult_153_G3_U229 ( .A1(mult_153_G3_n263), .A2(mult_153_G3_n260), 
        .B1(mult_153_G3_n258), .B2(mult_153_G3_n264), .ZN(mult_153_G3_n92) );
  XNOR2_X1 mult_153_G3_U228 ( .A(pl1_out[20]), .B(b2[5]), .ZN(mult_153_G3_n262) );
  OAI22_X1 mult_153_G3_U227 ( .A1(mult_153_G3_n262), .A2(mult_153_G3_n260), 
        .B1(mult_153_G3_n258), .B2(mult_153_G3_n263), .ZN(mult_153_G3_n93) );
  XNOR2_X1 mult_153_G3_U226 ( .A(pl1_out[19]), .B(b2[5]), .ZN(mult_153_G3_n261) );
  OAI22_X1 mult_153_G3_U225 ( .A1(mult_153_G3_n261), .A2(mult_153_G3_n260), 
        .B1(mult_153_G3_n258), .B2(mult_153_G3_n262), .ZN(mult_153_G3_n94) );
  XNOR2_X1 mult_153_G3_U224 ( .A(pl1_out[18]), .B(b2[5]), .ZN(mult_153_G3_n259) );
  OAI22_X1 mult_153_G3_U223 ( .A1(mult_153_G3_n259), .A2(mult_153_G3_n260), 
        .B1(mult_153_G3_n258), .B2(mult_153_G3_n261), .ZN(mult_153_G3_n95) );
  NOR2_X1 mult_153_G3_U222 ( .A1(mult_153_G3_n258), .A2(mult_153_G3_n243), 
        .ZN(mult_153_G3_n96) );
  OAI22_X1 mult_153_G3_U221 ( .A1(mult_153_G3_n257), .A2(mult_153_G3_n212), 
        .B1(mult_153_G3_n254), .B2(mult_153_G3_n257), .ZN(mult_153_G3_n256) );
  OAI22_X1 mult_153_G3_U220 ( .A1(mult_153_G3_n253), .A2(mult_153_G3_n254), 
        .B1(mult_153_G3_n212), .B2(mult_153_G3_n255), .ZN(mult_153_G3_n99) );
  AOI22_X1 mult_153_G3_U219 ( .A1(mult_153_G3_n252), .A2(mult_153_G3_n246), 
        .B1(mult_153_G3_n244), .B2(mult_153_G3_n252), .ZN(mult_153_G3_n251) );
  XOR2_X1 mult_153_G3_U218 ( .A(mult_153_G3_n2), .B(mult_153_G3_n251), .Z(
        mult_153_G3_n250) );
  XNOR2_X1 mult_153_G3_U217 ( .A(mult_153_G3_n17), .B(mult_153_G3_n250), .ZN(
        pl2_in_tbs_2__15_) );
  XOR2_X2 mult_153_G3_U216 ( .A(b2[4]), .B(mult_153_G3_n248), .Z(
        mult_153_G3_n258) );
  INV_X1 mult_153_G3_U215 ( .A(mult_153_G3_n283), .ZN(mult_153_G3_n239) );
  INV_X1 mult_153_G3_U214 ( .A(mult_153_G3_n284), .ZN(mult_153_G3_n240) );
  INV_X1 mult_153_G3_U213 ( .A(mult_153_G3_n46), .ZN(mult_153_G3_n236) );
  INV_X1 mult_153_G3_U212 ( .A(mult_153_G3_n41), .ZN(mult_153_G3_n234) );
  NAND3_X1 mult_153_G3_U211 ( .A1(mult_153_G3_n226), .A2(mult_153_G3_n227), 
        .A3(mult_153_G3_n228), .ZN(mult_153_G3_n8) );
  OR2_X1 mult_153_G3_U210 ( .A1(mult_153_G3_n236), .A2(mult_153_G3_n234), .ZN(
        mult_153_G3_n228) );
  OR2_X1 mult_153_G3_U209 ( .A1(mult_153_G3_n280), .A2(mult_153_G3_n236), .ZN(
        mult_153_G3_n227) );
  OR2_X1 mult_153_G3_U208 ( .A1(mult_153_G3_n280), .A2(mult_153_G3_n234), .ZN(
        mult_153_G3_n226) );
  NAND3_X1 mult_153_G3_U207 ( .A1(mult_153_G3_n223), .A2(mult_153_G3_n224), 
        .A3(mult_153_G3_n225), .ZN(mult_153_G3_n3) );
  NAND2_X1 mult_153_G3_U206 ( .A1(mult_153_G3_n20), .A2(mult_153_G3_n19), .ZN(
        mult_153_G3_n225) );
  NAND2_X1 mult_153_G3_U205 ( .A1(mult_153_G3_n4), .A2(mult_153_G3_n19), .ZN(
        mult_153_G3_n224) );
  NAND2_X1 mult_153_G3_U204 ( .A1(mult_153_G3_n4), .A2(mult_153_G3_n20), .ZN(
        mult_153_G3_n223) );
  XOR2_X1 mult_153_G3_U203 ( .A(mult_153_G3_n4), .B(mult_153_G3_n222), .Z(
        pl2_in_tbs_2__13_) );
  XOR2_X1 mult_153_G3_U202 ( .A(mult_153_G3_n20), .B(mult_153_G3_n19), .Z(
        mult_153_G3_n222) );
  NAND3_X1 mult_153_G3_U201 ( .A1(mult_153_G3_n219), .A2(mult_153_G3_n220), 
        .A3(mult_153_G3_n221), .ZN(mult_153_G3_n2) );
  NAND2_X1 mult_153_G3_U200 ( .A1(mult_153_G3_n18), .A2(mult_153_G3_n17), .ZN(
        mult_153_G3_n221) );
  NAND2_X1 mult_153_G3_U199 ( .A1(mult_153_G3_n3), .A2(mult_153_G3_n17), .ZN(
        mult_153_G3_n220) );
  NAND2_X1 mult_153_G3_U198 ( .A1(mult_153_G3_n3), .A2(mult_153_G3_n18), .ZN(
        mult_153_G3_n219) );
  XOR2_X1 mult_153_G3_U197 ( .A(mult_153_G3_n3), .B(mult_153_G3_n218), .Z(
        pl2_in_tbs_2__14_) );
  XOR2_X1 mult_153_G3_U196 ( .A(mult_153_G3_n18), .B(mult_153_G3_n17), .Z(
        mult_153_G3_n218) );
  NAND3_X1 mult_153_G3_U195 ( .A1(mult_153_G3_n215), .A2(mult_153_G3_n216), 
        .A3(mult_153_G3_n217), .ZN(mult_153_G3_n5) );
  NAND2_X1 mult_153_G3_U194 ( .A1(mult_153_G3_n25), .A2(mult_153_G3_n28), .ZN(
        mult_153_G3_n217) );
  NAND2_X1 mult_153_G3_U193 ( .A1(mult_153_G3_n6), .A2(mult_153_G3_n28), .ZN(
        mult_153_G3_n216) );
  NAND2_X1 mult_153_G3_U192 ( .A1(mult_153_G3_n6), .A2(mult_153_G3_n25), .ZN(
        mult_153_G3_n215) );
  XOR2_X1 mult_153_G3_U191 ( .A(mult_153_G3_n6), .B(mult_153_G3_n214), .Z(
        pl2_in_tbs_2__11_) );
  XOR2_X1 mult_153_G3_U190 ( .A(mult_153_G3_n25), .B(mult_153_G3_n28), .Z(
        mult_153_G3_n214) );
  INV_X1 mult_153_G3_U189 ( .A(mult_153_G3_n213), .ZN(mult_153_G3_n287) );
  INV_X1 mult_153_G3_U188 ( .A(b2[7]), .ZN(mult_153_G3_n245) );
  INV_X1 mult_153_G3_U187 ( .A(pl1_out[19]), .ZN(mult_153_G3_n242) );
  INV_X1 mult_153_G3_U186 ( .A(b2[3]), .ZN(mult_153_G3_n248) );
  INV_X1 mult_153_G3_U185 ( .A(b2[5]), .ZN(mult_153_G3_n247) );
  INV_X1 mult_153_G3_U184 ( .A(pl1_out[18]), .ZN(mult_153_G3_n243) );
  INV_X1 mult_153_G3_U183 ( .A(b2[0]), .ZN(mult_153_G3_n249) );
  NAND2_X1 mult_153_G3_U182 ( .A1(mult_153_G3_n213), .A2(mult_153_G3_n313), 
        .ZN(mult_153_G3_n254) );
  XOR2_X1 mult_153_G3_U181 ( .A(b2[6]), .B(mult_153_G3_n247), .Z(
        mult_153_G3_n270) );
  INV_X1 mult_153_G3_U180 ( .A(mult_153_G3_n279), .ZN(mult_153_G3_n235) );
  INV_X1 mult_153_G3_U179 ( .A(mult_153_G3_n268), .ZN(mult_153_G3_n232) );
  INV_X1 mult_153_G3_U178 ( .A(mult_153_G3_n288), .ZN(mult_153_G3_n241) );
  INV_X1 mult_153_G3_U177 ( .A(mult_153_G3_n32), .ZN(mult_153_G3_n229) );
  INV_X1 mult_153_G3_U176 ( .A(mult_153_G3_n256), .ZN(mult_153_G3_n230) );
  INV_X1 mult_153_G3_U175 ( .A(mult_153_G3_n307), .ZN(mult_153_G3_n233) );
  INV_X1 mult_153_G3_U174 ( .A(mult_153_G3_n272), .ZN(mult_153_G3_n244) );
  INV_X1 mult_153_G3_U173 ( .A(mult_153_G3_n270), .ZN(mult_153_G3_n246) );
  INV_X1 mult_153_G3_U172 ( .A(mult_153_G3_n22), .ZN(mult_153_G3_n231) );
  AOI22_X1 mult_153_G3_U171 ( .A1(mult_153_G3_n279), .A2(mult_153_G3_n244), 
        .B1(mult_153_G3_n246), .B2(mult_153_G3_n252), .ZN(mult_153_G3_n17) );
  INV_X1 mult_153_G3_U170 ( .A(mult_153_G3_n53), .ZN(mult_153_G3_n237) );
  INV_X1 mult_153_G3_U169 ( .A(mult_153_G3_n56), .ZN(mult_153_G3_n238) );
  XNOR2_X1 mult_153_G3_U168 ( .A(b2[2]), .B(b2[1]), .ZN(mult_153_G3_n213) );
  INV_X1 mult_153_G3_U167 ( .A(mult_153_G3_n287), .ZN(mult_153_G3_n212) );
  HA_X1 mult_153_G3_U41 ( .A(mult_153_G3_n104), .B(mult_153_G3_n112), .CO(
        mult_153_G3_n62), .S(mult_153_G3_n63) );
  FA_X1 mult_153_G3_U40 ( .A(mult_153_G3_n111), .B(mult_153_G3_n96), .CI(
        mult_153_G3_n103), .CO(mult_153_G3_n60), .S(mult_153_G3_n61) );
  HA_X1 mult_153_G3_U39 ( .A(mult_153_G3_n76), .B(mult_153_G3_n95), .CO(
        mult_153_G3_n58), .S(mult_153_G3_n59) );
  FA_X1 mult_153_G3_U38 ( .A(mult_153_G3_n102), .B(mult_153_G3_n110), .CI(
        mult_153_G3_n59), .CO(mult_153_G3_n56), .S(mult_153_G3_n57) );
  FA_X1 mult_153_G3_U37 ( .A(mult_153_G3_n109), .B(mult_153_G3_n87), .CI(
        mult_153_G3_n101), .CO(mult_153_G3_n54), .S(mult_153_G3_n55) );
  FA_X1 mult_153_G3_U36 ( .A(mult_153_G3_n58), .B(mult_153_G3_n94), .CI(
        mult_153_G3_n55), .CO(mult_153_G3_n52), .S(mult_153_G3_n53) );
  HA_X1 mult_153_G3_U35 ( .A(mult_153_G3_n75), .B(mult_153_G3_n86), .CO(
        mult_153_G3_n50), .S(mult_153_G3_n51) );
  FA_X1 mult_153_G3_U34 ( .A(mult_153_G3_n93), .B(mult_153_G3_n108), .CI(
        mult_153_G3_n100), .CO(mult_153_G3_n48), .S(mult_153_G3_n49) );
  FA_X1 mult_153_G3_U33 ( .A(mult_153_G3_n54), .B(mult_153_G3_n51), .CI(
        mult_153_G3_n49), .CO(mult_153_G3_n46), .S(mult_153_G3_n47) );
  HA_X1 mult_153_G3_U32 ( .A(mult_153_G3_n85), .B(mult_153_G3_n92), .CO(
        mult_153_G3_n44), .S(mult_153_G3_n45) );
  FA_X1 mult_153_G3_U31 ( .A(mult_153_G3_n99), .B(mult_153_G3_n107), .CI(
        mult_153_G3_n50), .CO(mult_153_G3_n42), .S(mult_153_G3_n43) );
  FA_X1 mult_153_G3_U30 ( .A(mult_153_G3_n48), .B(mult_153_G3_n45), .CI(
        mult_153_G3_n43), .CO(mult_153_G3_n40), .S(mult_153_G3_n41) );
  FA_X1 mult_153_G3_U27 ( .A(mult_153_G3_n233), .B(mult_153_G3_n91), .CI(
        mult_153_G3_n44), .CO(mult_153_G3_n36), .S(mult_153_G3_n37) );
  FA_X1 mult_153_G3_U26 ( .A(mult_153_G3_n42), .B(mult_153_G3_n39), .CI(
        mult_153_G3_n37), .CO(mult_153_G3_n34), .S(mult_153_G3_n35) );
  FA_X1 mult_153_G3_U24 ( .A(mult_153_G3_n83), .B(mult_153_G3_n90), .CI(
        mult_153_G3_n229), .CO(mult_153_G3_n30), .S(mult_153_G3_n31) );
  FA_X1 mult_153_G3_U23 ( .A(mult_153_G3_n36), .B(mult_153_G3_n38), .CI(
        mult_153_G3_n31), .CO(mult_153_G3_n28), .S(mult_153_G3_n29) );
  FA_X1 mult_153_G3_U22 ( .A(mult_153_G3_n89), .B(mult_153_G3_n32), .CI(
        mult_153_G3_n230), .CO(mult_153_G3_n26), .S(mult_153_G3_n27) );
  FA_X1 mult_153_G3_U21 ( .A(mult_153_G3_n30), .B(mult_153_G3_n82), .CI(
        mult_153_G3_n27), .CO(mult_153_G3_n24), .S(mult_153_G3_n25) );
  FA_X1 mult_153_G3_U19 ( .A(mult_153_G3_n231), .B(mult_153_G3_n81), .CI(
        mult_153_G3_n26), .CO(mult_153_G3_n20), .S(mult_153_G3_n21) );
  FA_X1 mult_153_G3_U18 ( .A(mult_153_G3_n80), .B(mult_153_G3_n22), .CI(
        mult_153_G3_n232), .CO(mult_153_G3_n18), .S(mult_153_G3_n19) );
  FA_X1 mult_153_G3_U8 ( .A(mult_153_G3_n35), .B(mult_153_G3_n40), .CI(
        mult_153_G3_n8), .CO(mult_153_G3_n7), .S(pl2_in_tbs_2__9_) );
  FA_X1 mult_153_G3_U7 ( .A(mult_153_G3_n29), .B(mult_153_G3_n34), .CI(
        mult_153_G3_n7), .CO(mult_153_G3_n6), .S(pl2_in_tbs_2__10_) );
  FA_X1 mult_153_G3_U5 ( .A(mult_153_G3_n21), .B(mult_153_G3_n24), .CI(
        mult_153_G3_n5), .CO(mult_153_G3_n4), .S(pl2_in_tbs_2__12_) );
  XNOR2_X1 mult_153_G2_U296 ( .A(pl1_out[13]), .B(b1[3]), .ZN(mult_153_G2_n302) );
  XNOR2_X1 mult_153_G2_U295 ( .A(mult_153_G2_n238), .B(b1[2]), .ZN(
        mult_153_G2_n303) );
  XNOR2_X1 mult_153_G2_U294 ( .A(pl1_out[14]), .B(b1[3]), .ZN(mult_153_G2_n243) );
  OAI22_X1 mult_153_G2_U293 ( .A1(mult_153_G2_n302), .A2(mult_153_G2_n217), 
        .B1(mult_153_G2_n218), .B2(mult_153_G2_n243), .ZN(mult_153_G2_n100) );
  XNOR2_X1 mult_153_G2_U292 ( .A(pl1_out[12]), .B(b1[3]), .ZN(mult_153_G2_n301) );
  OAI22_X1 mult_153_G2_U291 ( .A1(mult_153_G2_n301), .A2(mult_153_G2_n217), 
        .B1(mult_153_G2_n218), .B2(mult_153_G2_n302), .ZN(mult_153_G2_n101) );
  XNOR2_X1 mult_153_G2_U290 ( .A(pl1_out[11]), .B(b1[3]), .ZN(mult_153_G2_n300) );
  OAI22_X1 mult_153_G2_U289 ( .A1(mult_153_G2_n300), .A2(mult_153_G2_n217), 
        .B1(mult_153_G2_n218), .B2(mult_153_G2_n301), .ZN(mult_153_G2_n102) );
  XNOR2_X1 mult_153_G2_U288 ( .A(pl1_out[10]), .B(b1[3]), .ZN(mult_153_G2_n299) );
  OAI22_X1 mult_153_G2_U287 ( .A1(mult_153_G2_n299), .A2(mult_153_G2_n217), 
        .B1(mult_153_G2_n218), .B2(mult_153_G2_n300), .ZN(mult_153_G2_n103) );
  XNOR2_X1 mult_153_G2_U286 ( .A(pl1_out[9]), .B(b1[3]), .ZN(mult_153_G2_n298)
         );
  OAI22_X1 mult_153_G2_U285 ( .A1(mult_153_G2_n298), .A2(mult_153_G2_n244), 
        .B1(mult_153_G2_n218), .B2(mult_153_G2_n299), .ZN(mult_153_G2_n104) );
  XNOR2_X1 mult_153_G2_U284 ( .A(pl1_out[17]), .B(b1[1]), .ZN(mult_153_G2_n296) );
  NAND2_X1 mult_153_G2_U283 ( .A1(b1[1]), .A2(mult_153_G2_n239), .ZN(
        mult_153_G2_n282) );
  OAI22_X1 mult_153_G2_U282 ( .A1(mult_153_G2_n239), .A2(mult_153_G2_n296), 
        .B1(mult_153_G2_n282), .B2(mult_153_G2_n296), .ZN(mult_153_G2_n297) );
  XNOR2_X1 mult_153_G2_U281 ( .A(pl1_out[16]), .B(b1[1]), .ZN(mult_153_G2_n295) );
  OAI22_X1 mult_153_G2_U280 ( .A1(mult_153_G2_n295), .A2(mult_153_G2_n282), 
        .B1(mult_153_G2_n296), .B2(mult_153_G2_n239), .ZN(mult_153_G2_n107) );
  XNOR2_X1 mult_153_G2_U279 ( .A(pl1_out[15]), .B(b1[1]), .ZN(mult_153_G2_n294) );
  OAI22_X1 mult_153_G2_U278 ( .A1(mult_153_G2_n294), .A2(mult_153_G2_n282), 
        .B1(mult_153_G2_n295), .B2(mult_153_G2_n239), .ZN(mult_153_G2_n108) );
  XNOR2_X1 mult_153_G2_U277 ( .A(pl1_out[14]), .B(b1[1]), .ZN(mult_153_G2_n293) );
  OAI22_X1 mult_153_G2_U276 ( .A1(mult_153_G2_n293), .A2(mult_153_G2_n282), 
        .B1(mult_153_G2_n294), .B2(mult_153_G2_n239), .ZN(mult_153_G2_n109) );
  XNOR2_X1 mult_153_G2_U275 ( .A(pl1_out[13]), .B(b1[1]), .ZN(mult_153_G2_n292) );
  OAI22_X1 mult_153_G2_U274 ( .A1(mult_153_G2_n292), .A2(mult_153_G2_n282), 
        .B1(mult_153_G2_n293), .B2(mult_153_G2_n239), .ZN(mult_153_G2_n110) );
  XNOR2_X1 mult_153_G2_U273 ( .A(pl1_out[12]), .B(b1[1]), .ZN(mult_153_G2_n291) );
  OAI22_X1 mult_153_G2_U272 ( .A1(mult_153_G2_n291), .A2(mult_153_G2_n282), 
        .B1(mult_153_G2_n292), .B2(mult_153_G2_n239), .ZN(mult_153_G2_n111) );
  XNOR2_X1 mult_153_G2_U271 ( .A(pl1_out[11]), .B(b1[1]), .ZN(mult_153_G2_n283) );
  OAI22_X1 mult_153_G2_U270 ( .A1(mult_153_G2_n283), .A2(mult_153_G2_n282), 
        .B1(mult_153_G2_n291), .B2(mult_153_G2_n239), .ZN(mult_153_G2_n112) );
  XOR2_X1 mult_153_G2_U269 ( .A(pl1_out[16]), .B(b1[7]), .Z(mult_153_G2_n269)
         );
  XNOR2_X1 mult_153_G2_U268 ( .A(mult_153_G2_n235), .B(b1[6]), .ZN(
        mult_153_G2_n290) );
  NAND2_X1 mult_153_G2_U267 ( .A1(mult_153_G2_n260), .A2(mult_153_G2_n290), 
        .ZN(mult_153_G2_n262) );
  XNOR2_X1 mult_153_G2_U266 ( .A(pl1_out[17]), .B(mult_153_G2_n235), .ZN(
        mult_153_G2_n242) );
  AOI22_X1 mult_153_G2_U265 ( .A1(mult_153_G2_n269), .A2(mult_153_G2_n234), 
        .B1(mult_153_G2_n236), .B2(mult_153_G2_n242), .ZN(mult_153_G2_n17) );
  XNOR2_X1 mult_153_G2_U264 ( .A(pl1_out[16]), .B(b1[5]), .ZN(mult_153_G2_n257) );
  XNOR2_X1 mult_153_G2_U263 ( .A(mult_153_G2_n237), .B(b1[4]), .ZN(
        mult_153_G2_n289) );
  XNOR2_X1 mult_153_G2_U262 ( .A(pl1_out[17]), .B(b1[5]), .ZN(mult_153_G2_n259) );
  OAI22_X1 mult_153_G2_U261 ( .A1(mult_153_G2_n257), .A2(mult_153_G2_n216), 
        .B1(mult_153_G2_n248), .B2(mult_153_G2_n259), .ZN(mult_153_G2_n22) );
  XNOR2_X1 mult_153_G2_U260 ( .A(pl1_out[16]), .B(b1[3]), .ZN(mult_153_G2_n288) );
  XNOR2_X1 mult_153_G2_U259 ( .A(pl1_out[17]), .B(b1[3]), .ZN(mult_153_G2_n247) );
  OAI22_X1 mult_153_G2_U258 ( .A1(mult_153_G2_n288), .A2(mult_153_G2_n217), 
        .B1(mult_153_G2_n218), .B2(mult_153_G2_n247), .ZN(mult_153_G2_n32) );
  XNOR2_X1 mult_153_G2_U257 ( .A(pl1_out[11]), .B(b1[7]), .ZN(mult_153_G2_n264) );
  XNOR2_X1 mult_153_G2_U256 ( .A(pl1_out[12]), .B(b1[7]), .ZN(mult_153_G2_n265) );
  OAI22_X1 mult_153_G2_U255 ( .A1(mult_153_G2_n264), .A2(mult_153_G2_n262), 
        .B1(mult_153_G2_n260), .B2(mult_153_G2_n265), .ZN(mult_153_G2_n286) );
  XNOR2_X1 mult_153_G2_U254 ( .A(pl1_out[15]), .B(b1[3]), .ZN(mult_153_G2_n245) );
  OAI22_X1 mult_153_G2_U253 ( .A1(mult_153_G2_n245), .A2(mult_153_G2_n217), 
        .B1(mult_153_G2_n218), .B2(mult_153_G2_n288), .ZN(mult_153_G2_n287) );
  OR2_X1 mult_153_G2_U252 ( .A1(mult_153_G2_n286), .A2(mult_153_G2_n287), .ZN(
        mult_153_G2_n38) );
  XNOR2_X1 mult_153_G2_U251 ( .A(mult_153_G2_n286), .B(mult_153_G2_n287), .ZN(
        mult_153_G2_n39) );
  NAND3_X1 mult_153_G2_U250 ( .A1(mult_153_G2_n236), .A2(mult_153_G2_n233), 
        .A3(b1[7]), .ZN(mult_153_G2_n285) );
  OAI21_X1 mult_153_G2_U249 ( .B1(mult_153_G2_n235), .B2(mult_153_G2_n262), 
        .A(mult_153_G2_n285), .ZN(mult_153_G2_n75) );
  OR3_X1 mult_153_G2_U248 ( .A1(mult_153_G2_n248), .A2(pl1_out[9]), .A3(
        mult_153_G2_n237), .ZN(mult_153_G2_n284) );
  OAI21_X1 mult_153_G2_U247 ( .B1(mult_153_G2_n237), .B2(mult_153_G2_n250), 
        .A(mult_153_G2_n284), .ZN(mult_153_G2_n76) );
  OAI22_X1 mult_153_G2_U246 ( .A1(pl1_out[10]), .A2(mult_153_G2_n282), .B1(
        mult_153_G2_n283), .B2(mult_153_G2_n239), .ZN(mult_153_G2_n281) );
  NAND2_X1 mult_153_G2_U245 ( .A1(mult_153_G2_n277), .A2(mult_153_G2_n281), 
        .ZN(mult_153_G2_n279) );
  NAND3_X1 mult_153_G2_U244 ( .A1(mult_153_G2_n281), .A2(mult_153_G2_n232), 
        .A3(b1[1]), .ZN(mult_153_G2_n280) );
  MUX2_X1 mult_153_G2_U243 ( .A(mult_153_G2_n279), .B(mult_153_G2_n280), .S(
        mult_153_G2_n233), .Z(mult_153_G2_n278) );
  NAND3_X1 mult_153_G2_U242 ( .A1(mult_153_G2_n277), .A2(mult_153_G2_n233), 
        .A3(b1[3]), .ZN(mult_153_G2_n276) );
  OAI21_X1 mult_153_G2_U241 ( .B1(mult_153_G2_n238), .B2(mult_153_G2_n217), 
        .A(mult_153_G2_n276), .ZN(mult_153_G2_n275) );
  AOI222_X1 mult_153_G2_U240 ( .A1(mult_153_G2_n231), .A2(mult_153_G2_n63), 
        .B1(mult_153_G2_n275), .B2(mult_153_G2_n231), .C1(mult_153_G2_n63), 
        .C2(mult_153_G2_n275), .ZN(mult_153_G2_n274) );
  AOI222_X1 mult_153_G2_U239 ( .A1(mult_153_G2_n230), .A2(mult_153_G2_n61), 
        .B1(mult_153_G2_n230), .B2(mult_153_G2_n62), .C1(mult_153_G2_n62), 
        .C2(mult_153_G2_n61), .ZN(mult_153_G2_n273) );
  AOI222_X1 mult_153_G2_U238 ( .A1(mult_153_G2_n229), .A2(mult_153_G2_n57), 
        .B1(mult_153_G2_n229), .B2(mult_153_G2_n60), .C1(mult_153_G2_n60), 
        .C2(mult_153_G2_n57), .ZN(mult_153_G2_n272) );
  OAI222_X1 mult_153_G2_U237 ( .A1(mult_153_G2_n272), .A2(mult_153_G2_n227), 
        .B1(mult_153_G2_n272), .B2(mult_153_G2_n228), .C1(mult_153_G2_n228), 
        .C2(mult_153_G2_n227), .ZN(mult_153_G2_n271) );
  AOI222_X1 mult_153_G2_U236 ( .A1(mult_153_G2_n271), .A2(mult_153_G2_n47), 
        .B1(mult_153_G2_n271), .B2(mult_153_G2_n52), .C1(mult_153_G2_n52), 
        .C2(mult_153_G2_n47), .ZN(mult_153_G2_n270) );
  OAI222_X1 mult_153_G2_U235 ( .A1(mult_153_G2_n270), .A2(mult_153_G2_n224), 
        .B1(mult_153_G2_n270), .B2(mult_153_G2_n226), .C1(mult_153_G2_n226), 
        .C2(mult_153_G2_n224), .ZN(mult_153_G2_n8) );
  XNOR2_X1 mult_153_G2_U234 ( .A(pl1_out[15]), .B(b1[7]), .ZN(mult_153_G2_n268) );
  OAI22_X1 mult_153_G2_U233 ( .A1(mult_153_G2_n268), .A2(mult_153_G2_n262), 
        .B1(mult_153_G2_n260), .B2(mult_153_G2_n225), .ZN(mult_153_G2_n80) );
  XNOR2_X1 mult_153_G2_U232 ( .A(pl1_out[14]), .B(b1[7]), .ZN(mult_153_G2_n267) );
  OAI22_X1 mult_153_G2_U231 ( .A1(mult_153_G2_n267), .A2(mult_153_G2_n262), 
        .B1(mult_153_G2_n260), .B2(mult_153_G2_n268), .ZN(mult_153_G2_n81) );
  XNOR2_X1 mult_153_G2_U230 ( .A(pl1_out[13]), .B(b1[7]), .ZN(mult_153_G2_n266) );
  OAI22_X1 mult_153_G2_U229 ( .A1(mult_153_G2_n266), .A2(mult_153_G2_n262), 
        .B1(mult_153_G2_n260), .B2(mult_153_G2_n267), .ZN(mult_153_G2_n82) );
  OAI22_X1 mult_153_G2_U228 ( .A1(mult_153_G2_n265), .A2(mult_153_G2_n262), 
        .B1(mult_153_G2_n260), .B2(mult_153_G2_n266), .ZN(mult_153_G2_n83) );
  XNOR2_X1 mult_153_G2_U227 ( .A(pl1_out[10]), .B(b1[7]), .ZN(mult_153_G2_n263) );
  OAI22_X1 mult_153_G2_U226 ( .A1(mult_153_G2_n263), .A2(mult_153_G2_n262), 
        .B1(mult_153_G2_n260), .B2(mult_153_G2_n264), .ZN(mult_153_G2_n85) );
  XNOR2_X1 mult_153_G2_U225 ( .A(pl1_out[9]), .B(b1[7]), .ZN(mult_153_G2_n261)
         );
  OAI22_X1 mult_153_G2_U224 ( .A1(mult_153_G2_n261), .A2(mult_153_G2_n262), 
        .B1(mult_153_G2_n260), .B2(mult_153_G2_n263), .ZN(mult_153_G2_n86) );
  NOR2_X1 mult_153_G2_U223 ( .A1(mult_153_G2_n260), .A2(mult_153_G2_n233), 
        .ZN(mult_153_G2_n87) );
  OAI22_X1 mult_153_G2_U222 ( .A1(mult_153_G2_n259), .A2(mult_153_G2_n248), 
        .B1(mult_153_G2_n216), .B2(mult_153_G2_n259), .ZN(mult_153_G2_n258) );
  XNOR2_X1 mult_153_G2_U221 ( .A(pl1_out[15]), .B(b1[5]), .ZN(mult_153_G2_n256) );
  OAI22_X1 mult_153_G2_U220 ( .A1(mult_153_G2_n256), .A2(mult_153_G2_n216), 
        .B1(mult_153_G2_n248), .B2(mult_153_G2_n257), .ZN(mult_153_G2_n89) );
  XNOR2_X1 mult_153_G2_U219 ( .A(pl1_out[14]), .B(b1[5]), .ZN(mult_153_G2_n255) );
  OAI22_X1 mult_153_G2_U218 ( .A1(mult_153_G2_n255), .A2(mult_153_G2_n216), 
        .B1(mult_153_G2_n248), .B2(mult_153_G2_n256), .ZN(mult_153_G2_n90) );
  XNOR2_X1 mult_153_G2_U217 ( .A(pl1_out[13]), .B(b1[5]), .ZN(mult_153_G2_n254) );
  OAI22_X1 mult_153_G2_U216 ( .A1(mult_153_G2_n254), .A2(mult_153_G2_n216), 
        .B1(mult_153_G2_n248), .B2(mult_153_G2_n255), .ZN(mult_153_G2_n91) );
  XNOR2_X1 mult_153_G2_U215 ( .A(pl1_out[12]), .B(b1[5]), .ZN(mult_153_G2_n253) );
  OAI22_X1 mult_153_G2_U214 ( .A1(mult_153_G2_n253), .A2(mult_153_G2_n216), 
        .B1(mult_153_G2_n248), .B2(mult_153_G2_n254), .ZN(mult_153_G2_n92) );
  XNOR2_X1 mult_153_G2_U213 ( .A(pl1_out[11]), .B(b1[5]), .ZN(mult_153_G2_n252) );
  OAI22_X1 mult_153_G2_U212 ( .A1(mult_153_G2_n252), .A2(mult_153_G2_n250), 
        .B1(mult_153_G2_n248), .B2(mult_153_G2_n253), .ZN(mult_153_G2_n93) );
  XNOR2_X1 mult_153_G2_U211 ( .A(pl1_out[10]), .B(b1[5]), .ZN(mult_153_G2_n251) );
  OAI22_X1 mult_153_G2_U210 ( .A1(mult_153_G2_n251), .A2(mult_153_G2_n216), 
        .B1(mult_153_G2_n248), .B2(mult_153_G2_n252), .ZN(mult_153_G2_n94) );
  XNOR2_X1 mult_153_G2_U209 ( .A(pl1_out[9]), .B(b1[5]), .ZN(mult_153_G2_n249)
         );
  OAI22_X1 mult_153_G2_U208 ( .A1(mult_153_G2_n249), .A2(mult_153_G2_n250), 
        .B1(mult_153_G2_n248), .B2(mult_153_G2_n251), .ZN(mult_153_G2_n95) );
  NOR2_X1 mult_153_G2_U207 ( .A1(mult_153_G2_n248), .A2(mult_153_G2_n233), 
        .ZN(mult_153_G2_n96) );
  OAI22_X1 mult_153_G2_U206 ( .A1(mult_153_G2_n247), .A2(mult_153_G2_n218), 
        .B1(mult_153_G2_n217), .B2(mult_153_G2_n247), .ZN(mult_153_G2_n246) );
  OAI22_X1 mult_153_G2_U205 ( .A1(mult_153_G2_n243), .A2(mult_153_G2_n217), 
        .B1(mult_153_G2_n218), .B2(mult_153_G2_n245), .ZN(mult_153_G2_n99) );
  AOI22_X1 mult_153_G2_U204 ( .A1(mult_153_G2_n242), .A2(mult_153_G2_n236), 
        .B1(mult_153_G2_n234), .B2(mult_153_G2_n242), .ZN(mult_153_G2_n241) );
  XOR2_X1 mult_153_G2_U203 ( .A(mult_153_G2_n2), .B(mult_153_G2_n241), .Z(
        mult_153_G2_n240) );
  XNOR2_X1 mult_153_G2_U202 ( .A(mult_153_G2_n17), .B(mult_153_G2_n240), .ZN(
        pl2_in_tbs_1__15_) );
  XOR2_X2 mult_153_G2_U201 ( .A(b1[6]), .B(mult_153_G2_n237), .Z(
        mult_153_G2_n260) );
  XOR2_X2 mult_153_G2_U200 ( .A(b1[4]), .B(mult_153_G2_n238), .Z(
        mult_153_G2_n248) );
  INV_X1 mult_153_G2_U199 ( .A(mult_153_G2_n273), .ZN(mult_153_G2_n229) );
  INV_X1 mult_153_G2_U198 ( .A(mult_153_G2_n274), .ZN(mult_153_G2_n230) );
  XNOR2_X2 mult_153_G2_U197 ( .A(b1[2]), .B(b1[1]), .ZN(mult_153_G2_n218) );
  INV_X1 mult_153_G2_U196 ( .A(mult_153_G2_n218), .ZN(mult_153_G2_n277) );
  NAND2_X1 mult_153_G2_U195 ( .A1(mult_153_G2_n218), .A2(mult_153_G2_n303), 
        .ZN(mult_153_G2_n244) );
  NAND2_X1 mult_153_G2_U194 ( .A1(mult_153_G2_n248), .A2(mult_153_G2_n289), 
        .ZN(mult_153_G2_n250) );
  CLKBUF_X1 mult_153_G2_U193 ( .A(mult_153_G2_n250), .Z(mult_153_G2_n216) );
  NAND2_X1 mult_153_G2_U192 ( .A1(mult_153_G2_n218), .A2(mult_153_G2_n303), 
        .ZN(mult_153_G2_n217) );
  NAND3_X1 mult_153_G2_U191 ( .A1(mult_153_G2_n213), .A2(mult_153_G2_n214), 
        .A3(mult_153_G2_n215), .ZN(mult_153_G2_n60) );
  NAND2_X1 mult_153_G2_U190 ( .A1(mult_153_G2_n96), .A2(mult_153_G2_n111), 
        .ZN(mult_153_G2_n215) );
  NAND2_X1 mult_153_G2_U189 ( .A1(mult_153_G2_n103), .A2(mult_153_G2_n111), 
        .ZN(mult_153_G2_n214) );
  NAND2_X1 mult_153_G2_U188 ( .A1(mult_153_G2_n103), .A2(mult_153_G2_n96), 
        .ZN(mult_153_G2_n213) );
  XOR2_X1 mult_153_G2_U187 ( .A(mult_153_G2_n103), .B(mult_153_G2_n212), .Z(
        mult_153_G2_n61) );
  XOR2_X1 mult_153_G2_U186 ( .A(mult_153_G2_n96), .B(mult_153_G2_n111), .Z(
        mult_153_G2_n212) );
  INV_X1 mult_153_G2_U185 ( .A(b1[7]), .ZN(mult_153_G2_n235) );
  INV_X1 mult_153_G2_U184 ( .A(pl1_out[10]), .ZN(mult_153_G2_n232) );
  INV_X1 mult_153_G2_U183 ( .A(b1[3]), .ZN(mult_153_G2_n238) );
  INV_X1 mult_153_G2_U182 ( .A(b1[5]), .ZN(mult_153_G2_n237) );
  INV_X1 mult_153_G2_U181 ( .A(pl1_out[9]), .ZN(mult_153_G2_n233) );
  INV_X1 mult_153_G2_U180 ( .A(b1[0]), .ZN(mult_153_G2_n239) );
  INV_X1 mult_153_G2_U179 ( .A(mult_153_G2_n278), .ZN(mult_153_G2_n231) );
  INV_X1 mult_153_G2_U178 ( .A(mult_153_G2_n262), .ZN(mult_153_G2_n234) );
  INV_X1 mult_153_G2_U177 ( .A(mult_153_G2_n260), .ZN(mult_153_G2_n236) );
  INV_X1 mult_153_G2_U176 ( .A(mult_153_G2_n32), .ZN(mult_153_G2_n219) );
  INV_X1 mult_153_G2_U175 ( .A(mult_153_G2_n246), .ZN(mult_153_G2_n220) );
  INV_X1 mult_153_G2_U174 ( .A(mult_153_G2_n297), .ZN(mult_153_G2_n223) );
  INV_X1 mult_153_G2_U173 ( .A(mult_153_G2_n269), .ZN(mult_153_G2_n225) );
  INV_X1 mult_153_G2_U172 ( .A(mult_153_G2_n258), .ZN(mult_153_G2_n222) );
  INV_X1 mult_153_G2_U171 ( .A(mult_153_G2_n22), .ZN(mult_153_G2_n221) );
  INV_X1 mult_153_G2_U170 ( .A(mult_153_G2_n41), .ZN(mult_153_G2_n224) );
  INV_X1 mult_153_G2_U169 ( .A(mult_153_G2_n46), .ZN(mult_153_G2_n226) );
  INV_X1 mult_153_G2_U168 ( .A(mult_153_G2_n53), .ZN(mult_153_G2_n227) );
  INV_X1 mult_153_G2_U167 ( .A(mult_153_G2_n56), .ZN(mult_153_G2_n228) );
  HA_X1 mult_153_G2_U41 ( .A(mult_153_G2_n104), .B(mult_153_G2_n112), .CO(
        mult_153_G2_n62), .S(mult_153_G2_n63) );
  HA_X1 mult_153_G2_U39 ( .A(mult_153_G2_n76), .B(mult_153_G2_n95), .CO(
        mult_153_G2_n58), .S(mult_153_G2_n59) );
  FA_X1 mult_153_G2_U38 ( .A(mult_153_G2_n102), .B(mult_153_G2_n110), .CI(
        mult_153_G2_n59), .CO(mult_153_G2_n56), .S(mult_153_G2_n57) );
  FA_X1 mult_153_G2_U37 ( .A(mult_153_G2_n109), .B(mult_153_G2_n87), .CI(
        mult_153_G2_n101), .CO(mult_153_G2_n54), .S(mult_153_G2_n55) );
  FA_X1 mult_153_G2_U36 ( .A(mult_153_G2_n58), .B(mult_153_G2_n94), .CI(
        mult_153_G2_n55), .CO(mult_153_G2_n52), .S(mult_153_G2_n53) );
  HA_X1 mult_153_G2_U35 ( .A(mult_153_G2_n75), .B(mult_153_G2_n86), .CO(
        mult_153_G2_n50), .S(mult_153_G2_n51) );
  FA_X1 mult_153_G2_U34 ( .A(mult_153_G2_n93), .B(mult_153_G2_n108), .CI(
        mult_153_G2_n100), .CO(mult_153_G2_n48), .S(mult_153_G2_n49) );
  FA_X1 mult_153_G2_U33 ( .A(mult_153_G2_n54), .B(mult_153_G2_n51), .CI(
        mult_153_G2_n49), .CO(mult_153_G2_n46), .S(mult_153_G2_n47) );
  HA_X1 mult_153_G2_U32 ( .A(mult_153_G2_n85), .B(mult_153_G2_n92), .CO(
        mult_153_G2_n44), .S(mult_153_G2_n45) );
  FA_X1 mult_153_G2_U31 ( .A(mult_153_G2_n99), .B(mult_153_G2_n107), .CI(
        mult_153_G2_n50), .CO(mult_153_G2_n42), .S(mult_153_G2_n43) );
  FA_X1 mult_153_G2_U30 ( .A(mult_153_G2_n48), .B(mult_153_G2_n45), .CI(
        mult_153_G2_n43), .CO(mult_153_G2_n40), .S(mult_153_G2_n41) );
  FA_X1 mult_153_G2_U27 ( .A(mult_153_G2_n223), .B(mult_153_G2_n91), .CI(
        mult_153_G2_n44), .CO(mult_153_G2_n36), .S(mult_153_G2_n37) );
  FA_X1 mult_153_G2_U26 ( .A(mult_153_G2_n42), .B(mult_153_G2_n39), .CI(
        mult_153_G2_n37), .CO(mult_153_G2_n34), .S(mult_153_G2_n35) );
  FA_X1 mult_153_G2_U24 ( .A(mult_153_G2_n83), .B(mult_153_G2_n90), .CI(
        mult_153_G2_n219), .CO(mult_153_G2_n30), .S(mult_153_G2_n31) );
  FA_X1 mult_153_G2_U23 ( .A(mult_153_G2_n36), .B(mult_153_G2_n38), .CI(
        mult_153_G2_n31), .CO(mult_153_G2_n28), .S(mult_153_G2_n29) );
  FA_X1 mult_153_G2_U22 ( .A(mult_153_G2_n89), .B(mult_153_G2_n32), .CI(
        mult_153_G2_n220), .CO(mult_153_G2_n26), .S(mult_153_G2_n27) );
  FA_X1 mult_153_G2_U21 ( .A(mult_153_G2_n30), .B(mult_153_G2_n82), .CI(
        mult_153_G2_n27), .CO(mult_153_G2_n24), .S(mult_153_G2_n25) );
  FA_X1 mult_153_G2_U19 ( .A(mult_153_G2_n221), .B(mult_153_G2_n81), .CI(
        mult_153_G2_n26), .CO(mult_153_G2_n20), .S(mult_153_G2_n21) );
  FA_X1 mult_153_G2_U18 ( .A(mult_153_G2_n80), .B(mult_153_G2_n22), .CI(
        mult_153_G2_n222), .CO(mult_153_G2_n18), .S(mult_153_G2_n19) );
  FA_X1 mult_153_G2_U8 ( .A(mult_153_G2_n35), .B(mult_153_G2_n40), .CI(
        mult_153_G2_n8), .CO(mult_153_G2_n7), .S(pl2_in_tbs_1__9_) );
  FA_X1 mult_153_G2_U7 ( .A(mult_153_G2_n29), .B(mult_153_G2_n34), .CI(
        mult_153_G2_n7), .CO(mult_153_G2_n6), .S(pl2_in_tbs_1__10_) );
  FA_X1 mult_153_G2_U6 ( .A(mult_153_G2_n25), .B(mult_153_G2_n28), .CI(
        mult_153_G2_n6), .CO(mult_153_G2_n5), .S(pl2_in_tbs_1__11_) );
  FA_X1 mult_153_G2_U5 ( .A(mult_153_G2_n21), .B(mult_153_G2_n24), .CI(
        mult_153_G2_n5), .CO(mult_153_G2_n4), .S(pl2_in_tbs_1__12_) );
  FA_X1 mult_153_G2_U4 ( .A(mult_153_G2_n20), .B(mult_153_G2_n19), .CI(
        mult_153_G2_n4), .CO(mult_153_G2_n3), .S(pl2_in_tbs_1__13_) );
  FA_X1 mult_153_G2_U3 ( .A(mult_153_G2_n18), .B(mult_153_G2_n17), .CI(
        mult_153_G2_n3), .CO(mult_153_G2_n2), .S(pl2_in_tbs_1__14_) );
  XNOR2_X1 mult_153_U295 ( .A(pl1_out[4]), .B(b0[3]), .ZN(mult_153_n301) );
  XNOR2_X1 mult_153_U294 ( .A(mult_153_n238), .B(b0[2]), .ZN(mult_153_n302) );
  XNOR2_X1 mult_153_U293 ( .A(pl1_out[5]), .B(b0[3]), .ZN(mult_153_n243) );
  OAI22_X1 mult_153_U292 ( .A1(mult_153_n301), .A2(mult_153_n244), .B1(
        mult_153_n218), .B2(mult_153_n243), .ZN(mult_153_n100) );
  XNOR2_X1 mult_153_U291 ( .A(pl1_out[3]), .B(b0[3]), .ZN(mult_153_n300) );
  OAI22_X1 mult_153_U290 ( .A1(mult_153_n300), .A2(mult_153_n244), .B1(
        mult_153_n218), .B2(mult_153_n301), .ZN(mult_153_n101) );
  XNOR2_X1 mult_153_U289 ( .A(pl1_out[2]), .B(b0[3]), .ZN(mult_153_n299) );
  OAI22_X1 mult_153_U288 ( .A1(mult_153_n299), .A2(mult_153_n244), .B1(
        mult_153_n218), .B2(mult_153_n300), .ZN(mult_153_n102) );
  XNOR2_X1 mult_153_U287 ( .A(pl1_out[1]), .B(b0[3]), .ZN(mult_153_n298) );
  OAI22_X1 mult_153_U286 ( .A1(mult_153_n298), .A2(mult_153_n244), .B1(
        mult_153_n218), .B2(mult_153_n299), .ZN(mult_153_n103) );
  XNOR2_X1 mult_153_U285 ( .A(pl1_out[0]), .B(b0[3]), .ZN(mult_153_n297) );
  OAI22_X1 mult_153_U284 ( .A1(mult_153_n297), .A2(mult_153_n244), .B1(
        mult_153_n218), .B2(mult_153_n298), .ZN(mult_153_n104) );
  XNOR2_X1 mult_153_U283 ( .A(pl1_out[8]), .B(b0[1]), .ZN(mult_153_n295) );
  NAND2_X1 mult_153_U282 ( .A1(b0[1]), .A2(mult_153_n239), .ZN(mult_153_n281)
         );
  OAI22_X1 mult_153_U281 ( .A1(mult_153_n239), .A2(mult_153_n295), .B1(
        mult_153_n281), .B2(mult_153_n295), .ZN(mult_153_n296) );
  XNOR2_X1 mult_153_U280 ( .A(pl1_out[7]), .B(b0[1]), .ZN(mult_153_n294) );
  OAI22_X1 mult_153_U279 ( .A1(mult_153_n294), .A2(mult_153_n281), .B1(
        mult_153_n295), .B2(mult_153_n239), .ZN(mult_153_n107) );
  XNOR2_X1 mult_153_U278 ( .A(pl1_out[6]), .B(b0[1]), .ZN(mult_153_n293) );
  OAI22_X1 mult_153_U277 ( .A1(mult_153_n293), .A2(mult_153_n281), .B1(
        mult_153_n294), .B2(mult_153_n239), .ZN(mult_153_n108) );
  XNOR2_X1 mult_153_U276 ( .A(pl1_out[5]), .B(b0[1]), .ZN(mult_153_n292) );
  OAI22_X1 mult_153_U275 ( .A1(mult_153_n292), .A2(mult_153_n281), .B1(
        mult_153_n293), .B2(mult_153_n239), .ZN(mult_153_n109) );
  XNOR2_X1 mult_153_U274 ( .A(pl1_out[4]), .B(b0[1]), .ZN(mult_153_n291) );
  OAI22_X1 mult_153_U273 ( .A1(mult_153_n291), .A2(mult_153_n281), .B1(
        mult_153_n292), .B2(mult_153_n239), .ZN(mult_153_n110) );
  XNOR2_X1 mult_153_U272 ( .A(pl1_out[3]), .B(b0[1]), .ZN(mult_153_n290) );
  OAI22_X1 mult_153_U271 ( .A1(mult_153_n290), .A2(mult_153_n281), .B1(
        mult_153_n291), .B2(mult_153_n239), .ZN(mult_153_n111) );
  XNOR2_X1 mult_153_U270 ( .A(pl1_out[2]), .B(b0[1]), .ZN(mult_153_n282) );
  OAI22_X1 mult_153_U269 ( .A1(mult_153_n282), .A2(mult_153_n281), .B1(
        mult_153_n290), .B2(mult_153_n239), .ZN(mult_153_n112) );
  XOR2_X1 mult_153_U268 ( .A(pl1_out[7]), .B(b0[7]), .Z(mult_153_n269) );
  XNOR2_X1 mult_153_U267 ( .A(mult_153_n235), .B(b0[6]), .ZN(mult_153_n289) );
  NAND2_X1 mult_153_U266 ( .A1(mult_153_n260), .A2(mult_153_n289), .ZN(
        mult_153_n262) );
  XNOR2_X1 mult_153_U265 ( .A(pl1_out[8]), .B(mult_153_n235), .ZN(
        mult_153_n242) );
  AOI22_X1 mult_153_U264 ( .A1(mult_153_n269), .A2(mult_153_n234), .B1(
        mult_153_n236), .B2(mult_153_n242), .ZN(mult_153_n17) );
  XNOR2_X1 mult_153_U263 ( .A(pl1_out[7]), .B(b0[5]), .ZN(mult_153_n257) );
  XNOR2_X1 mult_153_U262 ( .A(mult_153_n237), .B(b0[4]), .ZN(mult_153_n288) );
  XNOR2_X1 mult_153_U261 ( .A(pl1_out[8]), .B(b0[5]), .ZN(mult_153_n259) );
  OAI22_X1 mult_153_U260 ( .A1(mult_153_n257), .A2(mult_153_n250), .B1(
        mult_153_n248), .B2(mult_153_n259), .ZN(mult_153_n22) );
  XNOR2_X1 mult_153_U259 ( .A(pl1_out[7]), .B(b0[3]), .ZN(mult_153_n287) );
  XNOR2_X1 mult_153_U258 ( .A(pl1_out[8]), .B(b0[3]), .ZN(mult_153_n247) );
  OAI22_X1 mult_153_U257 ( .A1(mult_153_n287), .A2(mult_153_n244), .B1(
        mult_153_n218), .B2(mult_153_n247), .ZN(mult_153_n32) );
  XNOR2_X1 mult_153_U256 ( .A(pl1_out[2]), .B(b0[7]), .ZN(mult_153_n264) );
  XNOR2_X1 mult_153_U255 ( .A(pl1_out[3]), .B(b0[7]), .ZN(mult_153_n265) );
  OAI22_X1 mult_153_U254 ( .A1(mult_153_n264), .A2(mult_153_n262), .B1(
        mult_153_n260), .B2(mult_153_n265), .ZN(mult_153_n285) );
  XNOR2_X1 mult_153_U253 ( .A(pl1_out[6]), .B(b0[3]), .ZN(mult_153_n245) );
  OAI22_X1 mult_153_U252 ( .A1(mult_153_n245), .A2(mult_153_n244), .B1(
        mult_153_n218), .B2(mult_153_n287), .ZN(mult_153_n286) );
  OR2_X1 mult_153_U251 ( .A1(mult_153_n285), .A2(mult_153_n286), .ZN(
        mult_153_n38) );
  XNOR2_X1 mult_153_U250 ( .A(mult_153_n285), .B(mult_153_n286), .ZN(
        mult_153_n39) );
  NAND3_X1 mult_153_U249 ( .A1(mult_153_n236), .A2(mult_153_n233), .A3(b0[7]), 
        .ZN(mult_153_n284) );
  OAI21_X1 mult_153_U248 ( .B1(mult_153_n235), .B2(mult_153_n262), .A(
        mult_153_n284), .ZN(mult_153_n75) );
  OR3_X1 mult_153_U247 ( .A1(mult_153_n248), .A2(pl1_out[0]), .A3(
        mult_153_n237), .ZN(mult_153_n283) );
  OAI21_X1 mult_153_U246 ( .B1(mult_153_n237), .B2(mult_153_n250), .A(
        mult_153_n283), .ZN(mult_153_n76) );
  OAI22_X1 mult_153_U245 ( .A1(pl1_out[1]), .A2(mult_153_n281), .B1(
        mult_153_n282), .B2(mult_153_n239), .ZN(mult_153_n280) );
  NAND2_X1 mult_153_U244 ( .A1(mult_153_n217), .A2(mult_153_n280), .ZN(
        mult_153_n278) );
  NAND3_X1 mult_153_U243 ( .A1(mult_153_n280), .A2(mult_153_n232), .A3(b0[1]), 
        .ZN(mult_153_n279) );
  MUX2_X1 mult_153_U242 ( .A(mult_153_n278), .B(mult_153_n279), .S(
        mult_153_n233), .Z(mult_153_n277) );
  NAND3_X1 mult_153_U241 ( .A1(mult_153_n217), .A2(mult_153_n233), .A3(b0[3]), 
        .ZN(mult_153_n276) );
  OAI21_X1 mult_153_U240 ( .B1(mult_153_n238), .B2(mult_153_n244), .A(
        mult_153_n276), .ZN(mult_153_n275) );
  AOI222_X1 mult_153_U239 ( .A1(mult_153_n231), .A2(mult_153_n63), .B1(
        mult_153_n275), .B2(mult_153_n231), .C1(mult_153_n275), .C2(
        mult_153_n63), .ZN(mult_153_n274) );
  AOI222_X1 mult_153_U238 ( .A1(mult_153_n230), .A2(mult_153_n61), .B1(
        mult_153_n230), .B2(mult_153_n62), .C1(mult_153_n62), .C2(mult_153_n61), .ZN(mult_153_n273) );
  AOI222_X1 mult_153_U237 ( .A1(mult_153_n229), .A2(mult_153_n57), .B1(
        mult_153_n229), .B2(mult_153_n60), .C1(mult_153_n60), .C2(mult_153_n57), .ZN(mult_153_n272) );
  OAI222_X1 mult_153_U236 ( .A1(mult_153_n272), .A2(mult_153_n227), .B1(
        mult_153_n272), .B2(mult_153_n228), .C1(mult_153_n228), .C2(
        mult_153_n227), .ZN(mult_153_n271) );
  AOI222_X1 mult_153_U235 ( .A1(mult_153_n271), .A2(mult_153_n47), .B1(
        mult_153_n271), .B2(mult_153_n52), .C1(mult_153_n52), .C2(mult_153_n47), .ZN(mult_153_n270) );
  OAI222_X1 mult_153_U234 ( .A1(mult_153_n270), .A2(mult_153_n224), .B1(
        mult_153_n270), .B2(mult_153_n226), .C1(mult_153_n226), .C2(
        mult_153_n224), .ZN(mult_153_n8) );
  XNOR2_X1 mult_153_U233 ( .A(pl1_out[6]), .B(b0[7]), .ZN(mult_153_n268) );
  OAI22_X1 mult_153_U232 ( .A1(mult_153_n268), .A2(mult_153_n262), .B1(
        mult_153_n260), .B2(mult_153_n225), .ZN(mult_153_n80) );
  XNOR2_X1 mult_153_U231 ( .A(pl1_out[5]), .B(b0[7]), .ZN(mult_153_n267) );
  OAI22_X1 mult_153_U230 ( .A1(mult_153_n267), .A2(mult_153_n262), .B1(
        mult_153_n260), .B2(mult_153_n268), .ZN(mult_153_n81) );
  XNOR2_X1 mult_153_U229 ( .A(pl1_out[4]), .B(b0[7]), .ZN(mult_153_n266) );
  OAI22_X1 mult_153_U228 ( .A1(mult_153_n266), .A2(mult_153_n262), .B1(
        mult_153_n260), .B2(mult_153_n267), .ZN(mult_153_n82) );
  OAI22_X1 mult_153_U227 ( .A1(mult_153_n265), .A2(mult_153_n262), .B1(
        mult_153_n260), .B2(mult_153_n266), .ZN(mult_153_n83) );
  XNOR2_X1 mult_153_U226 ( .A(pl1_out[1]), .B(b0[7]), .ZN(mult_153_n263) );
  OAI22_X1 mult_153_U225 ( .A1(mult_153_n263), .A2(mult_153_n262), .B1(
        mult_153_n260), .B2(mult_153_n264), .ZN(mult_153_n85) );
  XNOR2_X1 mult_153_U224 ( .A(pl1_out[0]), .B(b0[7]), .ZN(mult_153_n261) );
  OAI22_X1 mult_153_U223 ( .A1(mult_153_n261), .A2(mult_153_n262), .B1(
        mult_153_n260), .B2(mult_153_n263), .ZN(mult_153_n86) );
  NOR2_X1 mult_153_U222 ( .A1(mult_153_n260), .A2(mult_153_n233), .ZN(
        mult_153_n87) );
  OAI22_X1 mult_153_U221 ( .A1(mult_153_n259), .A2(mult_153_n248), .B1(
        mult_153_n250), .B2(mult_153_n259), .ZN(mult_153_n258) );
  XNOR2_X1 mult_153_U220 ( .A(pl1_out[6]), .B(b0[5]), .ZN(mult_153_n256) );
  OAI22_X1 mult_153_U219 ( .A1(mult_153_n256), .A2(mult_153_n250), .B1(
        mult_153_n248), .B2(mult_153_n257), .ZN(mult_153_n89) );
  XNOR2_X1 mult_153_U218 ( .A(pl1_out[5]), .B(b0[5]), .ZN(mult_153_n255) );
  OAI22_X1 mult_153_U217 ( .A1(mult_153_n255), .A2(mult_153_n250), .B1(
        mult_153_n248), .B2(mult_153_n256), .ZN(mult_153_n90) );
  XNOR2_X1 mult_153_U216 ( .A(pl1_out[4]), .B(b0[5]), .ZN(mult_153_n254) );
  OAI22_X1 mult_153_U215 ( .A1(mult_153_n254), .A2(mult_153_n250), .B1(
        mult_153_n248), .B2(mult_153_n255), .ZN(mult_153_n91) );
  XNOR2_X1 mult_153_U214 ( .A(pl1_out[3]), .B(b0[5]), .ZN(mult_153_n253) );
  OAI22_X1 mult_153_U213 ( .A1(mult_153_n253), .A2(mult_153_n250), .B1(
        mult_153_n248), .B2(mult_153_n254), .ZN(mult_153_n92) );
  XNOR2_X1 mult_153_U212 ( .A(pl1_out[2]), .B(b0[5]), .ZN(mult_153_n252) );
  OAI22_X1 mult_153_U211 ( .A1(mult_153_n252), .A2(mult_153_n250), .B1(
        mult_153_n248), .B2(mult_153_n253), .ZN(mult_153_n93) );
  XNOR2_X1 mult_153_U210 ( .A(pl1_out[1]), .B(b0[5]), .ZN(mult_153_n251) );
  OAI22_X1 mult_153_U209 ( .A1(mult_153_n251), .A2(mult_153_n250), .B1(
        mult_153_n248), .B2(mult_153_n252), .ZN(mult_153_n94) );
  XNOR2_X1 mult_153_U208 ( .A(pl1_out[0]), .B(b0[5]), .ZN(mult_153_n249) );
  OAI22_X1 mult_153_U207 ( .A1(mult_153_n249), .A2(mult_153_n250), .B1(
        mult_153_n248), .B2(mult_153_n251), .ZN(mult_153_n95) );
  NOR2_X1 mult_153_U206 ( .A1(mult_153_n248), .A2(mult_153_n233), .ZN(
        mult_153_n96) );
  OAI22_X1 mult_153_U205 ( .A1(mult_153_n247), .A2(mult_153_n218), .B1(
        mult_153_n244), .B2(mult_153_n247), .ZN(mult_153_n246) );
  OAI22_X1 mult_153_U204 ( .A1(mult_153_n243), .A2(mult_153_n244), .B1(
        mult_153_n218), .B2(mult_153_n245), .ZN(mult_153_n99) );
  AOI22_X1 mult_153_U203 ( .A1(mult_153_n242), .A2(mult_153_n236), .B1(
        mult_153_n234), .B2(mult_153_n242), .ZN(mult_153_n241) );
  XOR2_X1 mult_153_U202 ( .A(mult_153_n2), .B(mult_153_n241), .Z(mult_153_n240) );
  XNOR2_X1 mult_153_U201 ( .A(mult_153_n17), .B(mult_153_n240), .ZN(
        pl2_in_tbs_0__15_) );
  INV_X1 mult_153_U200 ( .A(mult_153_n273), .ZN(mult_153_n229) );
  INV_X1 mult_153_U199 ( .A(mult_153_n274), .ZN(mult_153_n230) );
  NAND2_X2 mult_153_U198 ( .A1(mult_153_n216), .A2(mult_153_n302), .ZN(
        mult_153_n244) );
  INV_X2 mult_153_U197 ( .A(mult_153_n217), .ZN(mult_153_n218) );
  INV_X1 mult_153_U196 ( .A(b0[3]), .ZN(mult_153_n238) );
  XNOR2_X2 mult_153_U195 ( .A(b0[4]), .B(b0[3]), .ZN(mult_153_n248) );
  XOR2_X1 mult_153_U194 ( .A(b0[2]), .B(b0[1]), .Z(mult_153_n217) );
  XNOR2_X1 mult_153_U193 ( .A(b0[2]), .B(b0[1]), .ZN(mult_153_n216) );
  NAND3_X1 mult_153_U192 ( .A1(mult_153_n213), .A2(mult_153_n214), .A3(
        mult_153_n215), .ZN(mult_153_n3) );
  NAND2_X1 mult_153_U191 ( .A1(mult_153_n19), .A2(mult_153_n20), .ZN(
        mult_153_n215) );
  NAND2_X1 mult_153_U190 ( .A1(mult_153_n4), .A2(mult_153_n20), .ZN(
        mult_153_n214) );
  NAND2_X1 mult_153_U189 ( .A1(mult_153_n4), .A2(mult_153_n19), .ZN(
        mult_153_n213) );
  XOR2_X1 mult_153_U188 ( .A(mult_153_n4), .B(mult_153_n212), .Z(
        pl2_in_tbs_0__13_) );
  XOR2_X1 mult_153_U187 ( .A(mult_153_n19), .B(mult_153_n20), .Z(mult_153_n212) );
  INV_X1 mult_153_U186 ( .A(b0[7]), .ZN(mult_153_n235) );
  INV_X1 mult_153_U185 ( .A(pl1_out[1]), .ZN(mult_153_n232) );
  INV_X1 mult_153_U184 ( .A(b0[5]), .ZN(mult_153_n237) );
  INV_X1 mult_153_U183 ( .A(pl1_out[0]), .ZN(mult_153_n233) );
  INV_X1 mult_153_U182 ( .A(b0[0]), .ZN(mult_153_n239) );
  NAND2_X1 mult_153_U181 ( .A1(mult_153_n248), .A2(mult_153_n288), .ZN(
        mult_153_n250) );
  XOR2_X1 mult_153_U180 ( .A(b0[6]), .B(mult_153_n237), .Z(mult_153_n260) );
  INV_X1 mult_153_U179 ( .A(mult_153_n269), .ZN(mult_153_n225) );
  INV_X1 mult_153_U178 ( .A(mult_153_n277), .ZN(mult_153_n231) );
  INV_X1 mult_153_U177 ( .A(mult_153_n262), .ZN(mult_153_n234) );
  INV_X1 mult_153_U176 ( .A(mult_153_n260), .ZN(mult_153_n236) );
  INV_X1 mult_153_U175 ( .A(mult_153_n32), .ZN(mult_153_n219) );
  INV_X1 mult_153_U174 ( .A(mult_153_n246), .ZN(mult_153_n220) );
  INV_X1 mult_153_U173 ( .A(mult_153_n296), .ZN(mult_153_n223) );
  INV_X1 mult_153_U172 ( .A(mult_153_n22), .ZN(mult_153_n221) );
  INV_X1 mult_153_U171 ( .A(mult_153_n258), .ZN(mult_153_n222) );
  INV_X1 mult_153_U170 ( .A(mult_153_n41), .ZN(mult_153_n224) );
  INV_X1 mult_153_U169 ( .A(mult_153_n46), .ZN(mult_153_n226) );
  INV_X1 mult_153_U168 ( .A(mult_153_n53), .ZN(mult_153_n227) );
  INV_X1 mult_153_U167 ( .A(mult_153_n56), .ZN(mult_153_n228) );
  HA_X1 mult_153_U41 ( .A(mult_153_n104), .B(mult_153_n112), .CO(mult_153_n62), 
        .S(mult_153_n63) );
  FA_X1 mult_153_U40 ( .A(mult_153_n111), .B(mult_153_n96), .CI(mult_153_n103), 
        .CO(mult_153_n60), .S(mult_153_n61) );
  HA_X1 mult_153_U39 ( .A(mult_153_n76), .B(mult_153_n95), .CO(mult_153_n58), 
        .S(mult_153_n59) );
  FA_X1 mult_153_U38 ( .A(mult_153_n102), .B(mult_153_n110), .CI(mult_153_n59), 
        .CO(mult_153_n56), .S(mult_153_n57) );
  FA_X1 mult_153_U37 ( .A(mult_153_n109), .B(mult_153_n87), .CI(mult_153_n101), 
        .CO(mult_153_n54), .S(mult_153_n55) );
  FA_X1 mult_153_U36 ( .A(mult_153_n58), .B(mult_153_n94), .CI(mult_153_n55), 
        .CO(mult_153_n52), .S(mult_153_n53) );
  HA_X1 mult_153_U35 ( .A(mult_153_n75), .B(mult_153_n86), .CO(mult_153_n50), 
        .S(mult_153_n51) );
  FA_X1 mult_153_U34 ( .A(mult_153_n93), .B(mult_153_n108), .CI(mult_153_n100), 
        .CO(mult_153_n48), .S(mult_153_n49) );
  FA_X1 mult_153_U33 ( .A(mult_153_n54), .B(mult_153_n51), .CI(mult_153_n49), 
        .CO(mult_153_n46), .S(mult_153_n47) );
  HA_X1 mult_153_U32 ( .A(mult_153_n85), .B(mult_153_n92), .CO(mult_153_n44), 
        .S(mult_153_n45) );
  FA_X1 mult_153_U31 ( .A(mult_153_n99), .B(mult_153_n107), .CI(mult_153_n50), 
        .CO(mult_153_n42), .S(mult_153_n43) );
  FA_X1 mult_153_U30 ( .A(mult_153_n48), .B(mult_153_n45), .CI(mult_153_n43), 
        .CO(mult_153_n40), .S(mult_153_n41) );
  FA_X1 mult_153_U27 ( .A(mult_153_n223), .B(mult_153_n91), .CI(mult_153_n44), 
        .CO(mult_153_n36), .S(mult_153_n37) );
  FA_X1 mult_153_U26 ( .A(mult_153_n42), .B(mult_153_n39), .CI(mult_153_n37), 
        .CO(mult_153_n34), .S(mult_153_n35) );
  FA_X1 mult_153_U24 ( .A(mult_153_n83), .B(mult_153_n90), .CI(mult_153_n219), 
        .CO(mult_153_n30), .S(mult_153_n31) );
  FA_X1 mult_153_U23 ( .A(mult_153_n36), .B(mult_153_n38), .CI(mult_153_n31), 
        .CO(mult_153_n28), .S(mult_153_n29) );
  FA_X1 mult_153_U22 ( .A(mult_153_n89), .B(mult_153_n32), .CI(mult_153_n220), 
        .CO(mult_153_n26), .S(mult_153_n27) );
  FA_X1 mult_153_U21 ( .A(mult_153_n30), .B(mult_153_n82), .CI(mult_153_n27), 
        .CO(mult_153_n24), .S(mult_153_n25) );
  FA_X1 mult_153_U19 ( .A(mult_153_n221), .B(mult_153_n81), .CI(mult_153_n26), 
        .CO(mult_153_n20), .S(mult_153_n21) );
  FA_X1 mult_153_U18 ( .A(mult_153_n80), .B(mult_153_n22), .CI(mult_153_n222), 
        .CO(mult_153_n18), .S(mult_153_n19) );
  FA_X1 mult_153_U8 ( .A(mult_153_n35), .B(mult_153_n40), .CI(mult_153_n8), 
        .CO(mult_153_n7), .S(pl2_in_tbs_0__9_) );
  FA_X1 mult_153_U7 ( .A(mult_153_n29), .B(mult_153_n34), .CI(mult_153_n7), 
        .CO(mult_153_n6), .S(pl2_in_tbs_0__10_) );
  FA_X1 mult_153_U6 ( .A(mult_153_n25), .B(mult_153_n28), .CI(mult_153_n6), 
        .CO(mult_153_n5), .S(pl2_in_tbs_0__11_) );
  FA_X1 mult_153_U5 ( .A(mult_153_n21), .B(mult_153_n24), .CI(mult_153_n5), 
        .CO(mult_153_n4), .S(pl2_in_tbs_0__12_) );
  FA_X1 mult_153_U3 ( .A(mult_153_n18), .B(mult_153_n17), .CI(mult_153_n3), 
        .CO(mult_153_n2), .S(pl2_in_tbs_0__14_) );
  XNOR2_X1 mult_118_U315 ( .A(w_out[4]), .B(a1[3]), .ZN(mult_118_n315) );
  XNOR2_X1 mult_118_U314 ( .A(mult_118_n254), .B(a1[2]), .ZN(mult_118_n316) );
  XNOR2_X1 mult_118_U313 ( .A(w_out[5]), .B(a1[3]), .ZN(mult_118_n259) );
  OAI22_X1 mult_118_U312 ( .A1(mult_118_n315), .A2(mult_118_n260), .B1(
        mult_118_n215), .B2(mult_118_n259), .ZN(mult_118_n100) );
  XNOR2_X1 mult_118_U311 ( .A(w_out[3]), .B(a1[3]), .ZN(mult_118_n314) );
  OAI22_X1 mult_118_U310 ( .A1(mult_118_n314), .A2(mult_118_n260), .B1(
        mult_118_n215), .B2(mult_118_n315), .ZN(mult_118_n101) );
  XNOR2_X1 mult_118_U309 ( .A(w_out[2]), .B(a1[3]), .ZN(mult_118_n313) );
  OAI22_X1 mult_118_U308 ( .A1(mult_118_n313), .A2(mult_118_n260), .B1(
        mult_118_n231), .B2(mult_118_n314), .ZN(mult_118_n102) );
  XNOR2_X1 mult_118_U307 ( .A(w_out[1]), .B(a1[3]), .ZN(mult_118_n312) );
  OAI22_X1 mult_118_U306 ( .A1(mult_118_n312), .A2(mult_118_n260), .B1(
        mult_118_n231), .B2(mult_118_n313), .ZN(mult_118_n103) );
  XNOR2_X1 mult_118_U305 ( .A(w_out[0]), .B(a1[3]), .ZN(mult_118_n311) );
  OAI22_X1 mult_118_U304 ( .A1(mult_118_n311), .A2(mult_118_n260), .B1(
        mult_118_n231), .B2(mult_118_n312), .ZN(mult_118_n104) );
  XNOR2_X1 mult_118_U303 ( .A(w_out[8]), .B(a1[1]), .ZN(mult_118_n309) );
  NAND2_X1 mult_118_U302 ( .A1(a1[1]), .A2(mult_118_n255), .ZN(mult_118_n295)
         );
  OAI22_X1 mult_118_U301 ( .A1(mult_118_n255), .A2(mult_118_n309), .B1(
        mult_118_n295), .B2(mult_118_n309), .ZN(mult_118_n310) );
  XNOR2_X1 mult_118_U300 ( .A(w_out[7]), .B(a1[1]), .ZN(mult_118_n308) );
  OAI22_X1 mult_118_U299 ( .A1(mult_118_n308), .A2(mult_118_n295), .B1(
        mult_118_n309), .B2(mult_118_n255), .ZN(mult_118_n107) );
  XNOR2_X1 mult_118_U298 ( .A(w_out[6]), .B(a1[1]), .ZN(mult_118_n307) );
  OAI22_X1 mult_118_U297 ( .A1(mult_118_n307), .A2(mult_118_n295), .B1(
        mult_118_n308), .B2(mult_118_n255), .ZN(mult_118_n108) );
  XNOR2_X1 mult_118_U296 ( .A(w_out[5]), .B(a1[1]), .ZN(mult_118_n306) );
  OAI22_X1 mult_118_U295 ( .A1(mult_118_n306), .A2(mult_118_n295), .B1(
        mult_118_n307), .B2(mult_118_n255), .ZN(mult_118_n109) );
  XNOR2_X1 mult_118_U294 ( .A(w_out[4]), .B(a1[1]), .ZN(mult_118_n305) );
  OAI22_X1 mult_118_U293 ( .A1(mult_118_n305), .A2(mult_118_n295), .B1(
        mult_118_n306), .B2(mult_118_n255), .ZN(mult_118_n110) );
  XNOR2_X1 mult_118_U292 ( .A(w_out[3]), .B(a1[1]), .ZN(mult_118_n304) );
  OAI22_X1 mult_118_U291 ( .A1(mult_118_n304), .A2(mult_118_n295), .B1(
        mult_118_n305), .B2(mult_118_n255), .ZN(mult_118_n111) );
  XNOR2_X1 mult_118_U290 ( .A(w_out[2]), .B(a1[1]), .ZN(mult_118_n296) );
  OAI22_X1 mult_118_U289 ( .A1(mult_118_n296), .A2(mult_118_n295), .B1(
        mult_118_n304), .B2(mult_118_n255), .ZN(mult_118_n112) );
  XOR2_X1 mult_118_U288 ( .A(w_out[7]), .B(a1[7]), .Z(mult_118_n285) );
  XNOR2_X1 mult_118_U287 ( .A(mult_118_n251), .B(a1[6]), .ZN(mult_118_n303) );
  NAND2_X1 mult_118_U286 ( .A1(mult_118_n276), .A2(mult_118_n303), .ZN(
        mult_118_n278) );
  XNOR2_X1 mult_118_U285 ( .A(w_out[8]), .B(mult_118_n251), .ZN(mult_118_n258)
         );
  AOI22_X1 mult_118_U284 ( .A1(mult_118_n285), .A2(mult_118_n250), .B1(
        mult_118_n252), .B2(mult_118_n258), .ZN(mult_118_n17) );
  XNOR2_X1 mult_118_U283 ( .A(w_out[7]), .B(a1[5]), .ZN(mult_118_n273) );
  XNOR2_X1 mult_118_U282 ( .A(mult_118_n253), .B(a1[4]), .ZN(mult_118_n302) );
  NAND2_X1 mult_118_U281 ( .A1(mult_118_n264), .A2(mult_118_n302), .ZN(
        mult_118_n266) );
  XNOR2_X1 mult_118_U280 ( .A(w_out[8]), .B(a1[5]), .ZN(mult_118_n275) );
  OAI22_X1 mult_118_U279 ( .A1(mult_118_n273), .A2(mult_118_n266), .B1(
        mult_118_n264), .B2(mult_118_n275), .ZN(mult_118_n22) );
  XNOR2_X1 mult_118_U278 ( .A(w_out[7]), .B(a1[3]), .ZN(mult_118_n301) );
  XNOR2_X1 mult_118_U277 ( .A(w_out[8]), .B(a1[3]), .ZN(mult_118_n263) );
  OAI22_X1 mult_118_U276 ( .A1(mult_118_n301), .A2(mult_118_n260), .B1(
        mult_118_n215), .B2(mult_118_n263), .ZN(mult_118_n32) );
  XNOR2_X1 mult_118_U275 ( .A(w_out[2]), .B(a1[7]), .ZN(mult_118_n280) );
  XNOR2_X1 mult_118_U274 ( .A(w_out[3]), .B(a1[7]), .ZN(mult_118_n281) );
  OAI22_X1 mult_118_U273 ( .A1(mult_118_n280), .A2(mult_118_n278), .B1(
        mult_118_n276), .B2(mult_118_n281), .ZN(mult_118_n299) );
  XNOR2_X1 mult_118_U272 ( .A(w_out[6]), .B(a1[3]), .ZN(mult_118_n261) );
  OAI22_X1 mult_118_U271 ( .A1(mult_118_n261), .A2(mult_118_n260), .B1(
        mult_118_n215), .B2(mult_118_n301), .ZN(mult_118_n300) );
  OR2_X1 mult_118_U270 ( .A1(mult_118_n299), .A2(mult_118_n300), .ZN(
        mult_118_n38) );
  XNOR2_X1 mult_118_U269 ( .A(mult_118_n299), .B(mult_118_n300), .ZN(
        mult_118_n39) );
  NAND3_X1 mult_118_U268 ( .A1(mult_118_n252), .A2(mult_118_n249), .A3(a1[7]), 
        .ZN(mult_118_n298) );
  OAI21_X1 mult_118_U267 ( .B1(mult_118_n251), .B2(mult_118_n278), .A(
        mult_118_n298), .ZN(mult_118_n75) );
  OR3_X1 mult_118_U266 ( .A1(mult_118_n264), .A2(w_out[0]), .A3(mult_118_n253), 
        .ZN(mult_118_n297) );
  OAI21_X1 mult_118_U265 ( .B1(mult_118_n253), .B2(mult_118_n266), .A(
        mult_118_n297), .ZN(mult_118_n76) );
  OAI22_X1 mult_118_U264 ( .A1(w_out[1]), .A2(mult_118_n295), .B1(
        mult_118_n296), .B2(mult_118_n255), .ZN(mult_118_n294) );
  NAND3_X1 mult_118_U263 ( .A1(mult_118_n293), .A2(mult_118_n249), .A3(a1[3]), 
        .ZN(mult_118_n292) );
  OAI21_X1 mult_118_U262 ( .B1(mult_118_n254), .B2(mult_118_n260), .A(
        mult_118_n292), .ZN(mult_118_n291) );
  AOI222_X1 mult_118_U261 ( .A1(mult_118_n216), .A2(mult_118_n63), .B1(
        mult_118_n291), .B2(mult_118_n216), .C1(mult_118_n63), .C2(
        mult_118_n291), .ZN(mult_118_n290) );
  AOI222_X1 mult_118_U260 ( .A1(mult_118_n247), .A2(mult_118_n61), .B1(
        mult_118_n247), .B2(mult_118_n62), .C1(mult_118_n62), .C2(mult_118_n61), .ZN(mult_118_n289) );
  AOI222_X1 mult_118_U259 ( .A1(mult_118_n246), .A2(mult_118_n57), .B1(
        mult_118_n246), .B2(mult_118_n60), .C1(mult_118_n60), .C2(mult_118_n57), .ZN(mult_118_n288) );
  OAI222_X1 mult_118_U258 ( .A1(mult_118_n288), .A2(mult_118_n244), .B1(
        mult_118_n288), .B2(mult_118_n245), .C1(mult_118_n245), .C2(
        mult_118_n244), .ZN(mult_118_n287) );
  OAI222_X1 mult_118_U257 ( .A1(mult_118_n286), .A2(mult_118_n241), .B1(
        mult_118_n286), .B2(mult_118_n243), .C1(mult_118_n243), .C2(
        mult_118_n241), .ZN(mult_118_n8) );
  XNOR2_X1 mult_118_U256 ( .A(w_out[6]), .B(a1[7]), .ZN(mult_118_n284) );
  OAI22_X1 mult_118_U255 ( .A1(mult_118_n284), .A2(mult_118_n278), .B1(
        mult_118_n276), .B2(mult_118_n242), .ZN(mult_118_n80) );
  XNOR2_X1 mult_118_U254 ( .A(w_out[5]), .B(a1[7]), .ZN(mult_118_n283) );
  OAI22_X1 mult_118_U253 ( .A1(mult_118_n283), .A2(mult_118_n278), .B1(
        mult_118_n276), .B2(mult_118_n284), .ZN(mult_118_n81) );
  XNOR2_X1 mult_118_U252 ( .A(w_out[4]), .B(a1[7]), .ZN(mult_118_n282) );
  OAI22_X1 mult_118_U251 ( .A1(mult_118_n282), .A2(mult_118_n278), .B1(
        mult_118_n276), .B2(mult_118_n283), .ZN(mult_118_n82) );
  OAI22_X1 mult_118_U250 ( .A1(mult_118_n281), .A2(mult_118_n278), .B1(
        mult_118_n276), .B2(mult_118_n282), .ZN(mult_118_n83) );
  XNOR2_X1 mult_118_U249 ( .A(w_out[1]), .B(a1[7]), .ZN(mult_118_n279) );
  OAI22_X1 mult_118_U248 ( .A1(mult_118_n279), .A2(mult_118_n278), .B1(
        mult_118_n276), .B2(mult_118_n280), .ZN(mult_118_n85) );
  XNOR2_X1 mult_118_U247 ( .A(w_out[0]), .B(a1[7]), .ZN(mult_118_n277) );
  OAI22_X1 mult_118_U246 ( .A1(mult_118_n277), .A2(mult_118_n278), .B1(
        mult_118_n276), .B2(mult_118_n279), .ZN(mult_118_n86) );
  NOR2_X1 mult_118_U245 ( .A1(mult_118_n276), .A2(mult_118_n249), .ZN(
        mult_118_n87) );
  OAI22_X1 mult_118_U244 ( .A1(mult_118_n275), .A2(mult_118_n264), .B1(
        mult_118_n266), .B2(mult_118_n275), .ZN(mult_118_n274) );
  XNOR2_X1 mult_118_U243 ( .A(w_out[6]), .B(a1[5]), .ZN(mult_118_n272) );
  OAI22_X1 mult_118_U242 ( .A1(mult_118_n272), .A2(mult_118_n266), .B1(
        mult_118_n264), .B2(mult_118_n273), .ZN(mult_118_n89) );
  XNOR2_X1 mult_118_U241 ( .A(w_out[5]), .B(a1[5]), .ZN(mult_118_n271) );
  OAI22_X1 mult_118_U240 ( .A1(mult_118_n271), .A2(mult_118_n266), .B1(
        mult_118_n264), .B2(mult_118_n272), .ZN(mult_118_n90) );
  XNOR2_X1 mult_118_U239 ( .A(w_out[4]), .B(a1[5]), .ZN(mult_118_n270) );
  OAI22_X1 mult_118_U238 ( .A1(mult_118_n270), .A2(mult_118_n266), .B1(
        mult_118_n264), .B2(mult_118_n271), .ZN(mult_118_n91) );
  XNOR2_X1 mult_118_U237 ( .A(w_out[3]), .B(a1[5]), .ZN(mult_118_n269) );
  OAI22_X1 mult_118_U236 ( .A1(mult_118_n269), .A2(mult_118_n266), .B1(
        mult_118_n264), .B2(mult_118_n270), .ZN(mult_118_n92) );
  XNOR2_X1 mult_118_U235 ( .A(w_out[2]), .B(a1[5]), .ZN(mult_118_n268) );
  OAI22_X1 mult_118_U234 ( .A1(mult_118_n268), .A2(mult_118_n266), .B1(
        mult_118_n264), .B2(mult_118_n269), .ZN(mult_118_n93) );
  XNOR2_X1 mult_118_U233 ( .A(w_out[1]), .B(a1[5]), .ZN(mult_118_n267) );
  OAI22_X1 mult_118_U232 ( .A1(mult_118_n267), .A2(mult_118_n266), .B1(
        mult_118_n264), .B2(mult_118_n268), .ZN(mult_118_n94) );
  XNOR2_X1 mult_118_U231 ( .A(w_out[0]), .B(a1[5]), .ZN(mult_118_n265) );
  OAI22_X1 mult_118_U230 ( .A1(mult_118_n265), .A2(mult_118_n266), .B1(
        mult_118_n264), .B2(mult_118_n267), .ZN(mult_118_n95) );
  NOR2_X1 mult_118_U229 ( .A1(mult_118_n264), .A2(mult_118_n249), .ZN(
        mult_118_n96) );
  OAI22_X1 mult_118_U228 ( .A1(mult_118_n263), .A2(mult_118_n215), .B1(
        mult_118_n260), .B2(mult_118_n263), .ZN(mult_118_n262) );
  OAI22_X1 mult_118_U227 ( .A1(mult_118_n259), .A2(mult_118_n260), .B1(
        mult_118_n215), .B2(mult_118_n261), .ZN(mult_118_n99) );
  AOI22_X1 mult_118_U226 ( .A1(mult_118_n258), .A2(mult_118_n252), .B1(
        mult_118_n250), .B2(mult_118_n258), .ZN(mult_118_n257) );
  XOR2_X1 mult_118_U225 ( .A(mult_118_n2), .B(mult_118_n257), .Z(mult_118_n256) );
  XNOR2_X1 mult_118_U224 ( .A(mult_118_n17), .B(mult_118_n256), .ZN(
        wa1_tbs[15]) );
  XOR2_X2 mult_118_U223 ( .A(a1[4]), .B(mult_118_n254), .Z(mult_118_n264) );
  INV_X1 mult_118_U222 ( .A(mult_118_n289), .ZN(mult_118_n246) );
  INV_X1 mult_118_U221 ( .A(mult_118_n290), .ZN(mult_118_n247) );
  NAND3_X1 mult_118_U220 ( .A1(mult_118_n233), .A2(mult_118_n234), .A3(
        mult_118_n235), .ZN(mult_118_n7) );
  NAND2_X1 mult_118_U219 ( .A1(mult_118_n35), .A2(mult_118_n40), .ZN(
        mult_118_n235) );
  NAND2_X1 mult_118_U218 ( .A1(mult_118_n8), .A2(mult_118_n40), .ZN(
        mult_118_n234) );
  NAND2_X1 mult_118_U217 ( .A1(mult_118_n8), .A2(mult_118_n35), .ZN(
        mult_118_n233) );
  XOR2_X1 mult_118_U216 ( .A(mult_118_n8), .B(mult_118_n232), .Z(wa1_tbs[9])
         );
  XOR2_X1 mult_118_U215 ( .A(mult_118_n35), .B(mult_118_n40), .Z(mult_118_n232) );
  INV_X1 mult_118_U214 ( .A(mult_118_n231), .ZN(mult_118_n293) );
  NAND3_X1 mult_118_U213 ( .A1(mult_118_n228), .A2(mult_118_n229), .A3(
        mult_118_n230), .ZN(mult_118_n4) );
  NAND2_X1 mult_118_U212 ( .A1(mult_118_n24), .A2(mult_118_n21), .ZN(
        mult_118_n230) );
  NAND2_X1 mult_118_U211 ( .A1(mult_118_n5), .A2(mult_118_n21), .ZN(
        mult_118_n229) );
  NAND2_X1 mult_118_U210 ( .A1(mult_118_n5), .A2(mult_118_n24), .ZN(
        mult_118_n228) );
  XOR2_X1 mult_118_U209 ( .A(mult_118_n5), .B(mult_118_n227), .Z(wa1_tbs[12])
         );
  XOR2_X1 mult_118_U208 ( .A(mult_118_n24), .B(mult_118_n21), .Z(mult_118_n227) );
  NAND3_X1 mult_118_U207 ( .A1(mult_118_n224), .A2(mult_118_n225), .A3(
        mult_118_n226), .ZN(mult_118_n5) );
  NAND2_X1 mult_118_U206 ( .A1(mult_118_n25), .A2(mult_118_n28), .ZN(
        mult_118_n226) );
  NAND2_X1 mult_118_U205 ( .A1(mult_118_n6), .A2(mult_118_n28), .ZN(
        mult_118_n225) );
  NAND2_X1 mult_118_U204 ( .A1(mult_118_n6), .A2(mult_118_n25), .ZN(
        mult_118_n224) );
  XOR2_X1 mult_118_U203 ( .A(mult_118_n6), .B(mult_118_n223), .Z(wa1_tbs[11])
         );
  XOR2_X1 mult_118_U202 ( .A(mult_118_n25), .B(mult_118_n28), .Z(mult_118_n223) );
  NAND3_X1 mult_118_U201 ( .A1(mult_118_n220), .A2(mult_118_n221), .A3(
        mult_118_n222), .ZN(mult_118_n3) );
  NAND2_X1 mult_118_U200 ( .A1(mult_118_n20), .A2(mult_118_n19), .ZN(
        mult_118_n222) );
  NAND2_X1 mult_118_U199 ( .A1(mult_118_n4), .A2(mult_118_n19), .ZN(
        mult_118_n221) );
  NAND2_X1 mult_118_U198 ( .A1(mult_118_n4), .A2(mult_118_n20), .ZN(
        mult_118_n220) );
  XOR2_X1 mult_118_U197 ( .A(mult_118_n4), .B(mult_118_n219), .Z(wa1_tbs[13])
         );
  XOR2_X1 mult_118_U196 ( .A(mult_118_n20), .B(mult_118_n19), .Z(mult_118_n219) );
  AND3_X1 mult_118_U195 ( .A1(mult_118_n294), .A2(mult_118_n248), .A3(a1[1]), 
        .ZN(mult_118_n218) );
  AND2_X1 mult_118_U194 ( .A1(mult_118_n293), .A2(mult_118_n294), .ZN(
        mult_118_n217) );
  MUX2_X1 mult_118_U193 ( .A(mult_118_n217), .B(mult_118_n218), .S(
        mult_118_n249), .Z(mult_118_n216) );
  INV_X1 mult_118_U192 ( .A(a1[7]), .ZN(mult_118_n251) );
  INV_X1 mult_118_U191 ( .A(w_out[1]), .ZN(mult_118_n248) );
  INV_X1 mult_118_U190 ( .A(a1[3]), .ZN(mult_118_n254) );
  INV_X1 mult_118_U189 ( .A(a1[5]), .ZN(mult_118_n253) );
  INV_X1 mult_118_U188 ( .A(w_out[0]), .ZN(mult_118_n249) );
  INV_X1 mult_118_U187 ( .A(a1[0]), .ZN(mult_118_n255) );
  NAND2_X1 mult_118_U186 ( .A1(mult_118_n231), .A2(mult_118_n316), .ZN(
        mult_118_n260) );
  XOR2_X1 mult_118_U185 ( .A(a1[6]), .B(mult_118_n253), .Z(mult_118_n276) );
  INV_X1 mult_118_U184 ( .A(mult_118_n278), .ZN(mult_118_n250) );
  INV_X1 mult_118_U183 ( .A(mult_118_n276), .ZN(mult_118_n252) );
  INV_X1 mult_118_U182 ( .A(mult_118_n32), .ZN(mult_118_n236) );
  INV_X1 mult_118_U181 ( .A(mult_118_n262), .ZN(mult_118_n237) );
  INV_X1 mult_118_U180 ( .A(mult_118_n310), .ZN(mult_118_n240) );
  INV_X1 mult_118_U179 ( .A(mult_118_n22), .ZN(mult_118_n238) );
  INV_X1 mult_118_U178 ( .A(mult_118_n285), .ZN(mult_118_n242) );
  INV_X1 mult_118_U177 ( .A(mult_118_n274), .ZN(mult_118_n239) );
  INV_X1 mult_118_U176 ( .A(mult_118_n53), .ZN(mult_118_n244) );
  INV_X1 mult_118_U175 ( .A(mult_118_n56), .ZN(mult_118_n245) );
  INV_X1 mult_118_U174 ( .A(mult_118_n41), .ZN(mult_118_n241) );
  INV_X1 mult_118_U173 ( .A(mult_118_n46), .ZN(mult_118_n243) );
  XNOR2_X1 mult_118_U172 ( .A(a1[2]), .B(a1[1]), .ZN(mult_118_n231) );
  INV_X1 mult_118_U171 ( .A(mult_118_n293), .ZN(mult_118_n215) );
  AND3_X1 mult_118_U170 ( .A1(mult_118_n212), .A2(mult_118_n213), .A3(
        mult_118_n214), .ZN(mult_118_n286) );
  NAND2_X1 mult_118_U169 ( .A1(mult_118_n52), .A2(mult_118_n47), .ZN(
        mult_118_n214) );
  NAND2_X1 mult_118_U168 ( .A1(mult_118_n287), .A2(mult_118_n52), .ZN(
        mult_118_n213) );
  NAND2_X1 mult_118_U167 ( .A1(mult_118_n287), .A2(mult_118_n47), .ZN(
        mult_118_n212) );
  HA_X1 mult_118_U41 ( .A(mult_118_n104), .B(mult_118_n112), .CO(mult_118_n62), 
        .S(mult_118_n63) );
  FA_X1 mult_118_U40 ( .A(mult_118_n111), .B(mult_118_n96), .CI(mult_118_n103), 
        .CO(mult_118_n60), .S(mult_118_n61) );
  HA_X1 mult_118_U39 ( .A(mult_118_n76), .B(mult_118_n95), .CO(mult_118_n58), 
        .S(mult_118_n59) );
  FA_X1 mult_118_U38 ( .A(mult_118_n102), .B(mult_118_n110), .CI(mult_118_n59), 
        .CO(mult_118_n56), .S(mult_118_n57) );
  FA_X1 mult_118_U37 ( .A(mult_118_n109), .B(mult_118_n87), .CI(mult_118_n101), 
        .CO(mult_118_n54), .S(mult_118_n55) );
  FA_X1 mult_118_U36 ( .A(mult_118_n58), .B(mult_118_n94), .CI(mult_118_n55), 
        .CO(mult_118_n52), .S(mult_118_n53) );
  HA_X1 mult_118_U35 ( .A(mult_118_n75), .B(mult_118_n86), .CO(mult_118_n50), 
        .S(mult_118_n51) );
  FA_X1 mult_118_U34 ( .A(mult_118_n93), .B(mult_118_n108), .CI(mult_118_n100), 
        .CO(mult_118_n48), .S(mult_118_n49) );
  FA_X1 mult_118_U33 ( .A(mult_118_n54), .B(mult_118_n51), .CI(mult_118_n49), 
        .CO(mult_118_n46), .S(mult_118_n47) );
  HA_X1 mult_118_U32 ( .A(mult_118_n85), .B(mult_118_n92), .CO(mult_118_n44), 
        .S(mult_118_n45) );
  FA_X1 mult_118_U31 ( .A(mult_118_n99), .B(mult_118_n107), .CI(mult_118_n50), 
        .CO(mult_118_n42), .S(mult_118_n43) );
  FA_X1 mult_118_U30 ( .A(mult_118_n48), .B(mult_118_n45), .CI(mult_118_n43), 
        .CO(mult_118_n40), .S(mult_118_n41) );
  FA_X1 mult_118_U27 ( .A(mult_118_n240), .B(mult_118_n91), .CI(mult_118_n44), 
        .CO(mult_118_n36), .S(mult_118_n37) );
  FA_X1 mult_118_U26 ( .A(mult_118_n42), .B(mult_118_n39), .CI(mult_118_n37), 
        .CO(mult_118_n34), .S(mult_118_n35) );
  FA_X1 mult_118_U24 ( .A(mult_118_n83), .B(mult_118_n90), .CI(mult_118_n236), 
        .CO(mult_118_n30), .S(mult_118_n31) );
  FA_X1 mult_118_U23 ( .A(mult_118_n36), .B(mult_118_n38), .CI(mult_118_n31), 
        .CO(mult_118_n28), .S(mult_118_n29) );
  FA_X1 mult_118_U22 ( .A(mult_118_n89), .B(mult_118_n32), .CI(mult_118_n237), 
        .CO(mult_118_n26), .S(mult_118_n27) );
  FA_X1 mult_118_U21 ( .A(mult_118_n30), .B(mult_118_n82), .CI(mult_118_n27), 
        .CO(mult_118_n24), .S(mult_118_n25) );
  FA_X1 mult_118_U19 ( .A(mult_118_n238), .B(mult_118_n81), .CI(mult_118_n26), 
        .CO(mult_118_n20), .S(mult_118_n21) );
  FA_X1 mult_118_U18 ( .A(mult_118_n80), .B(mult_118_n22), .CI(mult_118_n239), 
        .CO(mult_118_n18), .S(mult_118_n19) );
  FA_X1 mult_118_U7 ( .A(mult_118_n29), .B(mult_118_n34), .CI(mult_118_n7), 
        .CO(mult_118_n6), .S(wa1_tbs[10]) );
  FA_X1 mult_118_U3 ( .A(mult_118_n18), .B(mult_118_n17), .CI(mult_118_n3), 
        .CO(mult_118_n2), .S(wa1_tbs[14]) );
endmodule

