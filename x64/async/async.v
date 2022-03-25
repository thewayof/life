module acounter_up(clk, reset, d_i, cqo);
  input  [3:0] d_i;
  input  clk, reset;
  output [3:0] cqo;
  wire [3:0] cq; 
  wire [3:0]cqb;

  	  d_ff a(clk,reset,cqb[0],cq[0],cqb[0]);
  d_ff b(cqb[0],reset,cqb[1],cq[1],cqb[1]);
  d_ff c(cqb[1],reset,cqb[2],cq[2],cqb[2]);
  d_ff d(cqb[2],reset,cqb[3],cq[3],cqb[3]);
 assign cqo = cq;
endmodule


module d_ff(clk,reset,d_i,q_o,qb_o);
input clk,reset,d_i;
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