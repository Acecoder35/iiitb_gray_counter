`timescale 1ns/1ps
module iiitb_gray_cntr_tb;

reg clk;
reg rst;
wire [3:0] bcd_value;
wire [3:0] gray_count;
//wire [3:0] bcd_count;

iiitb_gray_cntr gc(clk, rst, bcd_value, gray_count);

initial begin
  //$monitor("%0t | Reset -> %b",$time,rst);
  $dumpfile ("iiitb_gray_cntr_vcd.vcd"); 
  $dumpvars(0,iiitb_gray_cntr_tb);
  clk = 1'b0;
  rst = 1'b0;
  #50;
  rst = 1'b1;
  #100;
  rst = 1'b0;
  #400;
  rst = 1'b1;
  #100;
  rst = 1'b0;
  #100 $finish;
  end

always begin
  #10 clk = ~clk;
end
endmodule
