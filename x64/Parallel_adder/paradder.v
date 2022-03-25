module paradder ( carryin,x,y,sum,carryout);
 	 input carryin;
 	 input [3:0] x,y;
  output [3:0] sum;
  output carryout;
  fulladd stage0 (carryin,x[0],y[0],sum[0],c1);
  fulladd stage1 (c1,x[1],y[1],sum[1],c2);
  fulladd stage2 (c2,x[2],y[2],sum[2],c3);
  fulladd stage3 (c3,x[3],y[3],sum[3],carryout);
endmodule

module fulladd (cin,x,y,s,cout);
  input cin,x,y;
  output s,cout;
  assign s = x^y^cin;
  assign cout =(x & y) | (x & cin) |(y & cin);
endmodule
