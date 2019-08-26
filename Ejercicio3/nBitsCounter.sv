module nBitsCounter #(parameter n_bits=4)
							(input  logic clk,input  logic rst,output logic [n_bits-1:0] outs=0);
	
	always@(posedge clk or posedge rst)
	begin
		if (rst) 
			outs = 0;		
		else
			outs = outs + 1;
	end
endmodule





