module  buff_test();
reg b_i;
wire  p, b_o;
buffer  buf1(b_i,b_o);
initial
begin	
b_i=1'b0;
#10	b_i=1'b1;
#10	b_i=1'bz; 
#10	b_i=1'bx;
#10	b_i=1'b0;
end

initial
begin
#100  $finish;
end