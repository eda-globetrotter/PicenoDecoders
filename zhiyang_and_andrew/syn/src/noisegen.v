/**
 * This is written by Zhiyang Ong 
 * and Andrew Mattheisen 
 */


/**
 * Design of the noise generator that produces bits to corrupt
 * the encoded data bits that are transmitted in the communications
 * channel
 */
module noise_generator (error, noise,err_level);
	// Output signals for the design module
	/**
	 * Propagated and random error bits from the input that will
	 * be used to corrupt encoded data bits
	 */
	output [1:0] noise;
	
	
	
	
	
	// Input signals for the design module
	/**
	 * Propagated random error bits to generate noise to corrupt
	 * the encoded data bits
	 */
	input [7:0] error;
	/**
	 * Error level that will be used to generate noise that will
	 * be used to corrupt encoded data bits
	 *
	 * Randomly generated error bits will be compared with this
	 * error level
	 */
	input [7:0] err_level;
	
	
	
	
	
	// Declare "reg" signals... that will be assigned values
	reg [1:0] noise;
	
	
	// Declare "wire" signals...
	// Defining constants: parameter [name_of_constant] = value;
	
	

	/**
	 * Generate random noise - error bits - that will corrupt
	 * the encoded data bits
	 */
	always@(error)
	begin
		// If the randomly generated error bits < the error level
		if (error < err_level)
			/**
			 * Use the least two significant error bits to corrupt
			 * the encoded data
			 */
			noise = error[1:0];
		else
			/**
			 * Do not corrupt the encoded data since the error
			 * bits have generated a value greater than the noise
			 * threshold/ceiling (error level)
			 *
			 * Since there is no noise above the noise ceiling,
			 * there is no noise.
			 */
			noise = 2'b00;
	end
	
endmodule


