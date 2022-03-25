module srff_test();
reg clk,reset,s_i,r_i;
wire q_o,qb_o;

sr_ff srff1 (clk,reset,s_i,r_i,q_o,qb_o);
initial
begin
clk <= 1'b0;
end
always
begin 
#5 clk <= ~clk;
end
initial
begin
	reset = 1'b0;
	s_i = 1'b0; r_i =1'b0;
#10	s_i = 1'b1; r_i =1'b1;
#10     s_i = 1'b1;r_i =1'b0;
#10	reset = 1'b1;	s_i = 1'b0; r_i =1'b0;
#10     s_i = 1'b0;r_i =1'b1;
#10     s_i = 1'b1;r_i =1'b0;
#10     s_i = 1'b0;r_i =1'b0;
#10     s_i = 1'b1;r_i =1'b1;
end
initial
#100 $finish;
endmodule