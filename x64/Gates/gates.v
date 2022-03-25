module basic_gates(in1,in2,out_AND,out_OR,out_NOR,out_NAND,out_XOR,out_XNOR);
input in1, in2;
output out_AND,out_OR,out_NOR,out_NAND,out_XOR,out_XNOR;
        assign out_AND = in1 & in2;
        assign out_OR = in1| in2;
        assign out_NAND = ~( in1 & in2);
        assign out_NOR = ~( in1 | in2);
        assign out_XOR = in1 ^ in2;
        assign out_XNOR = ~(in1 ^ in2);
endmodule
