module master_module(input clk, output wire clkOutput, output wire clkOutput2);

led_blink2 
	#(.CNT_TRIG(25000000/2))
	led_blink(
	.clk (clk),
	.clkOutput (clkOutput), 
	.clkOutput2 (clkOutput2));
endmodule
