`timescale 1ns/10ps
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

/**
 * This is written by Zhiyang Ong 
 * for EE577b Homework 2, Question 1
 */

/**
 * Testbench for behavioral model for Finite State Machine model of the
 * vending machine
 */


// Import the modules that will be tested for in this testbench
`include "ee577bHw2q1.v"

// IMPORTANT: To run this, try: ncverilog -f ee577bHw2q1.f +gui
module tbfsm();
	/**
	 * Declare signal types for testbench to drive and monitor
	 * signals during the simulation of the couunter
	 *
	 * The reg data type holds a value until a new value is driven
	 * onto it in an "initial" or "always" block. It can only be
	 * assigned a value in an "always" or "initial" block, and is
	 * used to apply stimulus to the inputs of the DUT.
	 *
	 * The wire type is a passive data type that holds a value driven
	 * onto it by a port, assign statement or reg type. Wires cannot be
	 * assigned values inside "always" and "initial" blocks. They can
	 * be used to hold the values of the DUT's outputs
	 */
	
	// Declare "wire" signals: outputs from the DUT
	wire disp_Q,disp_D,disp_N,disp_P,done;
	
	// Declare "reg" signals: inputs to the DUT
	reg [6:0] money,price;
	reg start,clk,reset;
	
	/**
	 * Instantiate an instance of ee577bHw1q5model1() so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "xor1model"
	 */
	fsmVendingMachine fsm (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		disp_Q,disp_D,disp_N,disp_P,done,money,price,start,clk,reset);
	
	
	/**
	 * Each sequential control block, such as the initial or always
	 * block, will execute concurrently in every module at the start
	 * of the simulation
	 */
	always begin
    	// Clock frequency is arbitrarily chosen
    	#5 clk <= 0;
    	#5 clk <= 1;
    end	
	
	/**
	 * Initial block start executing sequentially @ t=0
	 * If and when a delay is encountered, the execution of this block
	 * pauses/waits until the delay time has passed, before resuming
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
		$display($time, " << Starting the simulation >>");
		
		// @ t=0,
		money = 7'd75;
		price = 7'd64;
		reset = 1'b0;
		start = 1'b1;
		
		// @ t=50;
		#50
		money = 7'd100;
		price = 7'd54;
		reset = 1'b0;
		start = 1'b1;
		
		// @ t=100;
		#50
		money = 7'd50;
		price = 7'd27;
		reset = 1'b0;
		start = 1'b1;
		
		// @ t=150;
		#50
		money = 7'd50;
		price = 7'd27;
		reset = 1'b0;
		start = 1'b1;
		
		//
		
		$display($time, " << Finishing the simulation >>");
	end

endmodule
