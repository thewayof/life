module acounter_test;
  	reg  d;
  	reg  clk,reset;
  wire [3:0] cq;
  acounter_up a1(clk,reset,d,cq);
  initial 
  	 begin
  	     clk=0;
 	 end

  always 
   	 begin 
     	#5  clk=~clk;
   	 end
initial
begin
 	       reset = 1'b0;
                   d = 1'b1;
      #10     reset =1'b1;
       d = 1'b0;
    #10     d   =1'b1;
 	    #100    reset =1'b0;
    #20     reset =1'b1;
end

initial
#200 $finish;
endmodule