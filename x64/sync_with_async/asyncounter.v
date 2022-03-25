module asycounter(clk,reset,out_asyC);
input clk, reset;
output [3:0]out_asyC;
reg [3:0] q;
always@(posedge clk or negedge reset)
begin
        if(~reset)
               q <= 4'b0000;

        else
               q <= q + 4'b0001;
end
assign out_asyC = q;
endmodule
