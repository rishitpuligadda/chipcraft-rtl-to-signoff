module decoder (in,
    out);
 input [3:0] in;
 output [15:0] out;

 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;

 sky130_fd_sc_hd__decap_3 FILLER_0_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_22 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_23 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_23 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_22 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_25 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_17 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_22 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_30 ();
 sky130_fd_sc_hd__nor4b_2 _00_ (.A(net21),
    .B(net25),
    .C(net23),
    .D_N(net27),
    .Y(net12));
 sky130_fd_sc_hd__nor4b_2 _01_ (.A(net21),
    .B(net27),
    .C(net23),
    .D_N(net25),
    .Y(net13));
 sky130_fd_sc_hd__and4bb_2 _02_ (.A_N(net21),
    .B_N(net23),
    .C(net27),
    .D(net25),
    .X(net14));
 sky130_fd_sc_hd__nor4b_2 _03_ (.A(net21),
    .B(net25),
    .C(net27),
    .D_N(net23),
    .Y(net15));
 sky130_fd_sc_hd__and4bb_2 _04_ (.A_N(net21),
    .B_N(net25),
    .C(net27),
    .D(net23),
    .X(net16));
 sky130_fd_sc_hd__and4bb_2 _05_ (.A_N(net21),
    .B_N(net27),
    .C(net23),
    .D(net25),
    .X(net17));
 sky130_fd_sc_hd__and4b_2 _06_ (.A_N(net21),
    .B(net25),
    .C(net27),
    .D(net23),
    .X(net18));
 sky130_fd_sc_hd__nor4b_2 _07_ (.A(net26),
    .B(net28),
    .C(net24),
    .D_N(net22),
    .Y(net19));
 sky130_fd_sc_hd__and4bb_2 _08_ (.A_N(net25),
    .B_N(net23),
    .C(net27),
    .D(net21),
    .X(net20));
 sky130_fd_sc_hd__and4bb_2 _09_ (.A_N(net27),
    .B_N(net23),
    .C(net21),
    .D(net25),
    .X(net6));
 sky130_fd_sc_hd__and4b_2 _10_ (.A_N(net24),
    .B(net28),
    .C(net26),
    .D(net22),
    .X(net7));
 sky130_fd_sc_hd__and4bb_2 _11_ (.A_N(net25),
    .B_N(net27),
    .C(net23),
    .D(net21),
    .X(net8));
 sky130_fd_sc_hd__and4b_2 _12_ (.A_N(net26),
    .B(net28),
    .C(net24),
    .D(net22),
    .X(net9));
 sky130_fd_sc_hd__and4b_2 _13_ (.A_N(net28),
    .B(net24),
    .C(net22),
    .D(net26),
    .X(net10));
 sky130_fd_sc_hd__and4_2 _14_ (.A(net22),
    .B(net26),
    .C(net28),
    .D(net24),
    .X(net11));
 sky130_fd_sc_hd__nor4_2 _15_ (.A(net22),
    .B(net26),
    .C(net28),
    .D(net24),
    .Y(net5));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout21 (.A(net4),
    .X(net21));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout22 (.A(net4),
    .X(net22));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout23 (.A(net3),
    .X(net23));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout24 (.A(net3),
    .X(net24));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout25 (.A(net2),
    .X(net25));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout26 (.A(net2),
    .X(net26));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout27 (.A(net1),
    .X(net27));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout28 (.A(net1),
    .X(net28));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input1 (.A(in[0]),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input2 (.A(in[1]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input3 (.A(in[2]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input4 (.A(in[3]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output10 (.A(net10),
    .X(out[14]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output11 (.A(net11),
    .X(out[15]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output12 (.A(net12),
    .X(out[1]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output13 (.A(net13),
    .X(out[2]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output14 (.A(net14),
    .X(out[3]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output15 (.A(net15),
    .X(out[4]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output16 (.A(net16),
    .X(out[5]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output17 (.A(net17),
    .X(out[6]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output18 (.A(net18),
    .X(out[7]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output19 (.A(net19),
    .X(out[8]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output20 (.A(net20),
    .X(out[9]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output5 (.A(net5),
    .X(out[0]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output6 (.A(net6),
    .X(out[10]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output7 (.A(net7),
    .X(out[11]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output8 (.A(net8),
    .X(out[12]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output9 (.A(net9),
    .X(out[13]));
endmodule
