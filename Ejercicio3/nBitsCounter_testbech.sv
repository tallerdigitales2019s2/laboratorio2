module nBitsCounter_testbech();
	parameter N=6;
	logic clk=0;
	logic rst=0;
	logic [N-1:0] outs;
	logic [N-1:0] counter_check=0;
	integer errors=0;
	nBitsCounter #(.n_bits(N))  counter(clk,rst, outs);
	
	always #1 clk = ~clk;

	always begin
		#150 rst = 0;
		#2 rst = 1;
	end

	always @(posedge rst) begin
		counter_check=0;
	end
	
	always @(posedge clk) begin
		if (counter_check != outs) begin
			$display("--->ERROR! El contador no funciona correctamente");
			$display("counter out: %d, counter_check: %d", outs, counter_check);
//			$finish;
		end
		if(!rst)begin
			counter_check=counter_check+1;
		end
end
initial begin
	# 0 $display("Inicio de la simulacion para contador de %d bits", N);
	# 199 $display("La simulacion termino sin problemas");
	#200 $finish;
	end
endmodule 