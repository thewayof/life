module paradder_test;
reg [3:0] x,y;
reg carryin;
wire [3:0] sum;
wire carryout;
 paradder a1 ( carryin,x,y,sum,carryout);
initial
 	begin
    x = 4'b0000; y= 4'b0000; carryin = 1'b0;
#20 x =4'b1111; y = 4'b1010;
#40 x =4'b1011; y =4'b0110;
#40 x =4'b1111; y=4'b1111;
#50 $finish;
end
endmodule