module tg_test;
reg a,ctrl1,ctrl2;
wire y;
tg tg1(a,ctrl1,ctrl2,y);
initial
begin
a=1'b0; ctrl1=1'b0; ctrl2=1'b1;
a=1'b0;ctrl1=1'b1;ctrl2=1'b0;
a=1'b1;ctrl1=1'b0;ctrl2=1'b1;
a=1'b1;ctrl1=1'b1;ctrl2=1'b0;
end

initial
	#100  $finish;
endmodule