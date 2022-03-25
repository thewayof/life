module  tg(a,ctrl1,ctrl2,y);
Input  a,ctrl1,ctrl2;
output  y;
	pmos p1(y,a,ctrl1);
	nmos n1(y,a,ctrl2);
endmodule