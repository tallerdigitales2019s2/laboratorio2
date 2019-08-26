module Laboratorio2_testbech();

	logic clk,rst;
	logic [6:0] segments;
	Laboratorio2 DUT(clk,rst, segments);
	
	initial begin
		clk = 0;
		rst = 0;
		#5;
		clk = 1;
		#1;
		clk = 0;
		#5;
		clk = 1;
		#1;
		clk = 0;
		#5;
		clk = 1;
		#1;
		clk = 0;
		#5;
		clk = 1;
		#1;
		clk = 0;
		#5;
		clk = 1;
		#1;
		clk = 0;
		#5;
	end
	
endmodule 