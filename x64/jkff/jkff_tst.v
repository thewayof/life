module jkff_test();
reg clk,reset,j_i,k_i;
wire q_o,qb_o
jk_ff   jkff1 (clk,reset,j_i,k_i,q_o,qb_o);
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
	j_i = 1'b0;k_i =1'b0;
#10	j_i = 1'b1;k_i =1'b1;
#10     j_i = 1'b1;k_i =1'b0;
#10	reset =1'b1; j_i = 1'b0;k_i =1'b0;
#10     j_i = 1'b0;k_i =1'b1;
#10     j_i = 1'b1;k_i =1'b0;
#10     j_i = 1'b0;k_i =1'b0;         
#10     j_i = 1'b1;k_i =1'b1;
end
initial
#100 $finish;
endmodule