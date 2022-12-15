module iiitb_gray_cntr (clk,
    rst,
    bcd_value,
    gray_count);
 input clk;
 input rst;
 output [3:0] bcd_value;
 output [3:0] gray_count;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
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

 sky130_fd_sc_hd__nor2_1 _17_ (.A(net4),
    .B(net2),
    .Y(_00_));
 sky130_fd_sc_hd__o21ai_1 _18_ (.A1(net3),
    .A2(net4),
    .B1(net5),
    .Y(_07_));
 sky130_fd_sc_hd__or3_1 _19_ (.A(net3),
    .B(net4),
    .C(net5),
    .X(_08_));
 sky130_fd_sc_hd__and3b_1 _20_ (.A_N(net2),
    .B(_07_),
    .C(_08_),
    .X(_09_));
 sky130_fd_sc_hd__clkbuf_1 _21_ (.A(_09_),
    .X(_01_));
 sky130_fd_sc_hd__a21o_1 _22_ (.A1(net3),
    .A2(net4),
    .B1(net5),
    .X(_10_));
 sky130_fd_sc_hd__o21ba_1 _23_ (.A1(net6),
    .A2(_10_),
    .B1_N(net2),
    .X(_11_));
 sky130_fd_sc_hd__a21boi_1 _24_ (.A1(net6),
    .A2(_10_),
    .B1_N(_11_),
    .Y(_02_));
 sky130_fd_sc_hd__and3_1 _25_ (.A(net3),
    .B(net4),
    .C(net5),
    .X(_12_));
 sky130_fd_sc_hd__a21oi_1 _26_ (.A1(net6),
    .A2(_12_),
    .B1(net2),
    .Y(_13_));
 sky130_fd_sc_hd__o21a_1 _27_ (.A1(net6),
    .A2(_12_),
    .B1(_13_),
    .X(_03_));
 sky130_fd_sc_hd__nor2_1 _28_ (.A(net3),
    .B(net2),
    .Y(_04_));
 sky130_fd_sc_hd__a21oi_1 _29_ (.A1(net3),
    .A2(net4),
    .B1(net2),
    .Y(_14_));
 sky130_fd_sc_hd__o21a_1 _30_ (.A1(net3),
    .A2(net4),
    .B1(_14_),
    .X(_05_));
 sky130_fd_sc_hd__nor2_1 _31_ (.A(net2),
    .B(_12_),
    .Y(_15_));
 sky130_fd_sc_hd__and2_1 _32_ (.A(_10_),
    .B(_15_),
    .X(_16_));
 sky130_fd_sc_hd__clkbuf_1 _33_ (.A(_16_),
    .X(_06_));
 sky130_fd_sc_hd__dfxtp_1 _34_ (.CLK(net1),
    .D(_00_),
    .Q(net7));
 sky130_fd_sc_hd__dfxtp_1 _35_ (.CLK(net1),
    .D(_01_),
    .Q(net8));
 sky130_fd_sc_hd__dfxtp_1 _36_ (.CLK(net1),
    .D(_02_),
    .Q(net9));
 sky130_fd_sc_hd__dfxtp_1 _37_ (.CLK(net1),
    .D(_03_),
    .Q(net6));
 sky130_fd_sc_hd__dfxtp_1 _38_ (.CLK(net1),
    .D(_04_),
    .Q(net3));
 sky130_fd_sc_hd__dfxtp_2 _39_ (.CLK(net1),
    .D(_05_),
    .Q(net4));
 sky130_fd_sc_hd__dfxtp_1 _40_ (.CLK(net1),
    .D(_06_),
    .Q(net5));
 sky130_fd_sc_hd__clkbuf_1 _41_ (.A(net6),
    .X(net10));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_40 ();
 sky130_fd_sc_hd__clkbuf_2 input1 (.A(clk),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_2 input2 (.A(rst),
    .X(net2));
 sky130_fd_sc_hd__buf_2 output3 (.A(net3),
    .X(bcd_value[0]));
 sky130_fd_sc_hd__buf_2 output4 (.A(net4),
    .X(bcd_value[1]));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(bcd_value[2]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(bcd_value[3]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(gray_count[0]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(gray_count[1]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(gray_count[2]));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(gray_count[3]));
endmodule
