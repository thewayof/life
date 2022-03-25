module basicgates_test(); 		
reg in1, in2;				
 wire out_AND, out_OR,out_NOR, out_NAND,out_XOR, out_XNOR;
basic_gates a1(in1, in2, out_AND,out_OR,out_NOR,out_NAND,out_XOR, out_XNOR); 
initial
        begin
                in1=1'b0; in2=1'b0;
   		#10 in1=1'b0; in2=1'b1;
          	#10 in1=1'b1; in2=1'b0;
          	#10 in1=1'b1; in2=1'b1;
        end


initial
#200  $finish;
endmodule