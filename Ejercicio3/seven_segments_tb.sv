module seven_segments_tb();
	logic [3:0]data;
	logic [6:0]segments;
	
	integer i;
	
	seven_segments uut (.data(data), .segments(segments));
	initial begin 
		for (i=0; i<=15; i=i+1)
		begin
			data=i;
			#10;
		end
	end
endmodule 