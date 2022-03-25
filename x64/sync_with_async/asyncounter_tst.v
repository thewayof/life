module asycounter_test();
wire [3:0] acount;
reg clk, reset;
asycounter c1( clk, reset,acount);
initial
        clk = 1'b0;
always
        #5 clk = ~clk;
initial
        begin
        reset = 1'b1;
        #10 reset = 1'b0;
        #20 reset = 1'b1;
        #200 reset = 1'b0;
	#20 reset = 1'b1;
        end

initial
#500 $finish;	
endmodule
