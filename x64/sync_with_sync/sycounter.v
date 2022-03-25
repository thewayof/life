module sycounter(clk,reset,out_syCount);
input clk, reset;
output [3:0]out_syCount;
reg [3:0]q;
always@(posedge clk)
        begin
       	 if (~reset)
                q <= 4'b0000;
       	 else
                q <= q + 4'b0001;
        	end
assign  out_syCount= q ;
endmodule