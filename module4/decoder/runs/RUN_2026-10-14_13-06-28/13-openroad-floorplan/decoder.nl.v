module decoder (in,
    out);
 input [3:0] in;
 output [15:0] out;


 sky130_fd_sc_hd__nor4b_2 _00_ (.A(in[3]),
    .B(in[1]),
    .C(in[2]),
    .D_N(in[0]),
    .Y(out[1]));
 sky130_fd_sc_hd__nor4b_2 _01_ (.A(in[3]),
    .B(in[0]),
    .C(in[2]),
    .D_N(in[1]),
    .Y(out[2]));
 sky130_fd_sc_hd__and4bb_2 _02_ (.A_N(in[3]),
    .B_N(in[2]),
    .C(in[0]),
    .D(in[1]),
    .X(out[3]));
 sky130_fd_sc_hd__nor4b_2 _03_ (.A(in[3]),
    .B(in[1]),
    .C(in[0]),
    .D_N(in[2]),
    .Y(out[4]));
 sky130_fd_sc_hd__and4bb_2 _04_ (.A_N(in[3]),
    .B_N(in[1]),
    .C(in[0]),
    .D(in[2]),
    .X(out[5]));
 sky130_fd_sc_hd__and4bb_2 _05_ (.A_N(in[3]),
    .B_N(in[0]),
    .C(in[2]),
    .D(in[1]),
    .X(out[6]));
 sky130_fd_sc_hd__and4b_2 _06_ (.A_N(in[3]),
    .B(in[1]),
    .C(in[0]),
    .D(in[2]),
    .X(out[7]));
 sky130_fd_sc_hd__nor4b_2 _07_ (.A(in[1]),
    .B(in[0]),
    .C(in[2]),
    .D_N(in[3]),
    .Y(out[8]));
 sky130_fd_sc_hd__and4bb_2 _08_ (.A_N(in[1]),
    .B_N(in[2]),
    .C(in[0]),
    .D(in[3]),
    .X(out[9]));
 sky130_fd_sc_hd__and4bb_2 _09_ (.A_N(in[0]),
    .B_N(in[2]),
    .C(in[3]),
    .D(in[1]),
    .X(out[10]));
 sky130_fd_sc_hd__and4b_2 _10_ (.A_N(in[2]),
    .B(in[0]),
    .C(in[1]),
    .D(in[3]),
    .X(out[11]));
 sky130_fd_sc_hd__and4bb_2 _11_ (.A_N(in[1]),
    .B_N(in[0]),
    .C(in[2]),
    .D(in[3]),
    .X(out[12]));
 sky130_fd_sc_hd__and4b_2 _12_ (.A_N(in[1]),
    .B(in[0]),
    .C(in[2]),
    .D(in[3]),
    .X(out[13]));
 sky130_fd_sc_hd__and4b_2 _13_ (.A_N(in[0]),
    .B(in[2]),
    .C(in[3]),
    .D(in[1]),
    .X(out[14]));
 sky130_fd_sc_hd__and4_2 _14_ (.A(in[3]),
    .B(in[1]),
    .C(in[0]),
    .D(in[2]),
    .X(out[15]));
 sky130_fd_sc_hd__nor4_2 _15_ (.A(in[3]),
    .B(in[1]),
    .C(in[0]),
    .D(in[2]),
    .Y(out[0]));
endmodule
