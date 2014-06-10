/**
 * This is written by Zhiyang Ong (zhiyango@usc.edu; 6004 9194 12)
 * and Andrew Mattheisen (mattheis@usc.edu; 2134 5147 11)
 */

`timescale 1ns/100ps
/**
 * `timescale time_unit base / precision base
 *
 * -Specifies the time units and precision for delays:
 * -time_unit is the amount of time a delay of 1 represents.
 *	The time unit must be 1 10 or 100
 * -base is the time base for each unit, ranging from seconds
 *	to femtoseconds, and must be: s ms us ns ps or fs
 * -precision and base represent how many decimal points of
 *	precision to use relative to the time units.
 */



// Testbench to test some Verilog concepts


// IMPORTANT: To run this, try: ncverilog -f ee577bHw2q2.f +gui
// ============================================================
module tb_communication_channel();

	// Read inputs from the text file
//	reg [256:0] r;

/*
	reg [1:0] r [13:0];
	reg count;

*/
integer count;
	reg clk;
	reg r[0:13];
	
	always begin
		#8 clk = 0;
		#8 clk = 1; // Invert clock signal every 10 ns
		// Clock signal has a period of 20 ns or 50 MHz
	end
	
	
	
	// ============================================================
	
	/**
	 * Initial block start executing sequentially @ t=0
	 * If and when a delay is encountered, the execution of this block
	 * pauses or waits until the delay time has passed, before resuming
	 * execution
	 *
	 * Each intial or always block executes concurrently; that is,
	 * multiple "always" or "initial" blocks will execute simultaneously
	 *
	 * E.g.
	 * always
	 * begin
	 *		#10 clk_50 = ~clk_50; // Invert clock signal every 10 ns
	 *		// Clock signal has a period of 20 ns or 50 MHz
	 * end
	 */
	initial
	begin
		// "$time" indicates the current time in the simulation
		$display(" << Starting the simulation >>");
		// @t=0,
		/**
		 * Read the input data for r from an input file named
		 * "testfile.bit"
		 */
		$readmemb("./ytest.txt",r);
//		$readmemb("testfile.bit",rf);
		
		//size_of_input=256
		for(count=0; count<5; count = count + 1)
		//while(clk<97)
		begin
			#5
			$display("Next");
		end
		
		
		#20;
		
		$display(" << Finishing the simulation >>");
		$finish;
	end

endmodule