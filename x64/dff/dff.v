module d_ff (clk,reset,d_i,q_o,qb_o);
input clk, reset, d_i;
output q_o,qb_o;
reg q_o;
always@ (posedge clk or negedge reset)
begin
	if (~reset)
	   q_o <=0;
	else
	   q_o <=d_i;
end
assign qb_o =~ q_o;
endmodule