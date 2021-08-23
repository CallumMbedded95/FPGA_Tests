// Note that the clk pin needs to be set to Pin 12 in order for the oscillator to work.
module led_blink2 #(parameter CNT_TRIG = 25000000)
(input clk, output reg clkOutput, output reg clkOutput2);


reg [32:0] counter;
reg [1:0] trigger = 1'b0;

always @(posedge clk) 
begin
   if(counter>=CNT_TRIG) // Clock rate is 50 MHz, so counter >= 25000000 is roughly half way.
		begin
			counter <= 0;
			trigger <= ~trigger;
		end
	else
		begin
			counter <= counter+1;
		end
end
always @(trigger)
begin 
	clkOutput2 <= trigger[0];
	clkOutput <= 1'b1;
	
end
endmodule