module full_flow (clk,
    clk_out,
    rst,
    VPWR,
    VGND);
 input clk;
 output clk_out;
 input rst;
 inout VPWR;
 inout VGND;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire \neg_cnt[0] ;
 wire \neg_cnt[1] ;
 wire \pos_cnt[0] ;
 wire \pos_cnt[1] ;

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
 sky130_fd_sc_hd__inv_2 _08_ (.A(\pos_cnt[0] ),
    .Y(_06_));
 sky130_fd_sc_hd__inv_2 _09_ (.A(\neg_cnt[0] ),
    .Y(_07_));
 sky130_fd_sc_hd__inv_2 _10_ (.A(clk),
    .Y(_00_));
 sky130_fd_sc_hd__nor3_2 _11_ (.A(\neg_cnt[1] ),
    .B(\neg_cnt[0] ),
    .C(rst),
    .Y(_05_));
 sky130_fd_sc_hd__nor3_2 _12_ (.A(\neg_cnt[1] ),
    .B(_07_),
    .C(rst),
    .Y(_02_));
 sky130_fd_sc_hd__a22o_2 _13_ (.A1(_06_),
    .A2(\pos_cnt[1] ),
    .B1(\neg_cnt[1] ),
    .B2(_07_),
    .X(clk_out));
 sky130_fd_sc_hd__nor3_2 _14_ (.A(\pos_cnt[0] ),
    .B(\pos_cnt[1] ),
    .C(rst),
    .Y(_03_));
 sky130_fd_sc_hd__nor3_2 _15_ (.A(_06_),
    .B(\pos_cnt[1] ),
    .C(rst),
    .Y(_04_));
 sky130_fd_sc_hd__inv_2 _16_ (.A(clk),
    .Y(_01_));
 sky130_fd_sc_hd__dfxtp_2 _17_ (.CLK(_01_),
    .D(_05_),
    .Q(\neg_cnt[0] ));
 sky130_fd_sc_hd__dfxtp_2 _18_ (.CLK(_00_),
    .D(_02_),
    .Q(\neg_cnt[1] ));
 sky130_fd_sc_hd__dfxtp_2 _19_ (.CLK(clk),
    .D(_03_),
    .Q(\pos_cnt[0] ));
 sky130_fd_sc_hd__dfxtp_2 _20_ (.CLK(clk),
    .D(_04_),
    .Q(\pos_cnt[1] ));
endmodule
