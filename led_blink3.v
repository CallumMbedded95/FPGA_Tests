module led_blink3(output reg clkOutput, output reg clkOutput2);
reg [1:0] trigger = 1'b0;
always
begin
	clkOutput = trigger[0];
	clkOutput2 <= trigger[0];
end
endmodule