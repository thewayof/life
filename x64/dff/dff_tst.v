module dff_test();
	reg clk, reset, d_i;
	wire q_o,qb_o;
	d_ff df1 (clk,reset,d_i,q_o,qb_o);
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
		d_i = 1'b0;

	#10	d_i = 1'b1;
	#10	reset =1'b1; d_i = 1'b0;
	#10     d_i   =1'b1;
end

initial
#100 $finish;
endmodule