/////////
// Kringlecon 2021 - Objective 13) FPGA - verilog
/////////

// Note: For this lab, we will be working with QRP Corporation's CQC-11 FPGA.
// The CQC-11 operates with a 125MHz clock.
// Your design for a tone generator must support the following 
// inputs/outputs:
// (NOTE: DO NOT CHANGE THE NAMES. OUR AUTOMATED GRADING TOOL
// REQUIRES THE USE OF THESE NAMES!)
// input clk - this will be connected to the 125MHz system clock
// input rst - this will be connected to the system board's reset bus
// input freq - a 32 bit integer indicating the required frequency
//              (0 - 9999.99Hz) formatted as follows:
//              32'hf1206 or 32'd987654 = 9876.54Hz
// output wave_out - a square wave output of the desired frequency
// you can create whatever other variables you need, but remember
// to initialize them to something!

`timescale 1ns/1ns
module tone_generator (
    input clk,
    input rst,
    input [31:0] freq,
    output wave_out
);
    // ---- DO NOT CHANGE THE CODE ABOVE THIS LINE ---- 
    // ---- IT IS NECESSARY FOR AUTOMATED ANALYSIS ----
    // TODO: Add your code below. 
    // Remove the following line and add your own implementation. 
    // Note: It's silly, but it compiles...
    //assign wave_out = (clk | rst | (freq > 0));
localparam CLOCK_FREQUENCY = 125000000;
integer counter = 0;
reg wave_out_reg = 0;
assign wave_out = wave_out_reg;
always @(posedge clk) begin
    if (rst) begin                                          // reset input zeroes counter and wave output
			counter <= 32'h00;
			wave_out_reg	 <= 1'b0;
	end
	else begin
	    if (counter == 32'h00) begin
            wave_out_reg <= ~ wave_out_reg;                 // when counter is 0 wave output is flipped
            counter <= (CLOCK_FREQUENCY/2)/(freq/100) -1;   // clock frequency divided by 2 to observe the half-duty cycle
                                                            // received frequency input adjusted
        end 
        else begin
            counter <= counter - 1; // decrement counter
        end
    end
end

endmodule