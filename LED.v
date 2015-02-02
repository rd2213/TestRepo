module hex_to_7seg (out,in);

	output [6..0] out;
	input [3..0] in;
	
	reg [6:0] out;
	
	always @ (in)
		case (in)
		


module LED(pattern, clock);

	output	[9:0]		pattern;
	input					clock;
	
	reg[9:0]		hotnum= 10'h01;
	reg[9:0]		pattern;
	
	reg toggle=1;

	
	always@ (posedge clock) begin
	
	if (toggle ==1) begin
		if(pattern!=10'h200)	begin
			pattern <=hotnum;
			hotnum <= hotnum*2;
		end
		else if(pattern==10'h200) begin
			hotnum <= 10'h100;
			pattern <=10'h100;
			toggle <= 1'b0;
		end
	end
	if (toggle == 0) begin
		if (pattern!=10'h01) begin
			pattern <= hotnum;
			hotnum <=hotnum/2;
		end
		else if(pattern==10'h01) begin
			hotnum <= 10'h02;
			pattern <=10'h02;
			toggle <= 1'b1;
		end
	end
	
	end
	
	endmodule
	

module top_led( LEDG, CLOCK_50);

	input 		CLOCK_50;
	output[9:0]	LEDG;
	
	
	wire			newclk;
	
	clk_div	SEG0	(CLOCK_50,2499999,newclk);
	LED  		SEG1	(LEDG[9:0], newclk);

	endmodule
	
	
	
	
	
		
		