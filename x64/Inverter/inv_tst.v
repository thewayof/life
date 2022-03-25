module  inv_test(); 		//top level module
reg  a_i;  				// input must be reg in test bench
wire  y_o;				// output must be wire in test bench
 	inverter   i1(a_i,y_o);	// Instantiate the module
initial					// Apply Stimulus
 	  begin
			a_i=1'b0;
 		#10	a_i=1'b1;
#10	a_i=1'bz;
#10	a_i=1'bx;
#10	a_i=1'b0;
    	end
initial
begin
#100   $finish;
end
endmodule