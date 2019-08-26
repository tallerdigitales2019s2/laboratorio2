module Laboratorio2(input logic clk, input logic rst, output logic [6:0]segments);
	logic [3:0] data;
	nBitsCounter #(.n_bits(3))  counter1(clk,rst, data);
	seven_segments display1 (.data(data), .segments(segments));
endmodule




