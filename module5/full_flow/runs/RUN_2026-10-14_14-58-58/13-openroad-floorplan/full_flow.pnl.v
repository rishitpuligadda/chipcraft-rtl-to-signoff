module full_flow (clk,
    clk_out,
    rst);
 input clk;
 output clk_out;
 input rst;

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
 wire VPWR;
 wire VGND;

 sky130_fd_sc_hd__inv_2 _08_ (.A(\pos_cnt[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_06_));
 sky130_fd_sc_hd__inv_2 _09_ (.A(\neg_cnt[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_07_));
 sky130_fd_sc_hd__inv_2 _10_ (.A(clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_00_));
 sky130_fd_sc_hd__nor3_2 _11_ (.A(\neg_cnt[1] ),
    .B(\neg_cnt[0] ),
    .C(rst),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_05_));
 sky130_fd_sc_hd__nor3_2 _12_ (.A(\neg_cnt[1] ),
    .B(_07_),
    .C(rst),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_02_));
 sky130_fd_sc_hd__a22o_2 _13_ (.A1(_06_),
    .A2(\pos_cnt[1] ),
    .B1(\neg_cnt[1] ),
    .B2(_07_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(clk_out));
 sky130_fd_sc_hd__nor3_2 _14_ (.A(\pos_cnt[0] ),
    .B(\pos_cnt[1] ),
    .C(rst),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_03_));
 sky130_fd_sc_hd__nor3_2 _15_ (.A(_06_),
    .B(\pos_cnt[1] ),
    .C(rst),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_04_));
 sky130_fd_sc_hd__inv_2 _16_ (.A(clk),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_01_));
 sky130_fd_sc_hd__dfxtp_2 _17_ (.CLK(_01_),
    .D(_05_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\neg_cnt[0] ));
 sky130_fd_sc_hd__dfxtp_2 _18_ (.CLK(_00_),
    .D(_02_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\neg_cnt[1] ));
 sky130_fd_sc_hd__dfxtp_2 _19_ (.CLK(clk),
    .D(_03_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\pos_cnt[0] ));
 sky130_fd_sc_hd__dfxtp_2 _20_ (.CLK(clk),
    .D(_04_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\pos_cnt[1] ));
endmodule
