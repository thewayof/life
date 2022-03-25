module tff_test();
reg clk,reset,t_i;
wire q_o,qb_o;
t_ff tf1 (clk,reset,t_i,q_o,qb_o);
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
	reset = 1'b0; 	t_i   = 1'b0;
#10	t_i   =1'b1;
#10	reset =1'b1; 	t_i   = 1'b0;
#20     t_i   =1'b1;
end
initial
#100 $finish;
endmodule