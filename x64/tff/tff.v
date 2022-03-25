module t_ff(clk,reset,t_i,q_o,qb_o);
input clk,reset,t_i;
output q_o,qb_o;
reg q_o;
always@ (posedge clk or negedge reset)
begin
	if (~reset)
	   q_o <=0;
	else
	   if(t_i)
	   q_o <=~q_o;
end
assign qb_o =~ q_o;
endmodule