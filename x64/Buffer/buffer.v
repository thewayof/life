module   buffer (b_i,b_o);  
input b_i;
output b_o;
wire  p; 	 
 	inverter  i1(b_i,p);
inverter  i2(p,b_o);
endmodule

module   inverter (a_i,y_o);     
input  a_i;
output  y_o;
 	assign  y_o  =  ~a_i;
endmodule