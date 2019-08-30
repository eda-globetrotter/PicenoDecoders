#!/usr/usc/bin/perl

# This is written by Zhiyang Ong 
# for the second extra credit homework for EE 577B Fall 2007
#
#
# Synopsis:
# It takes in a matrix, and determines if it is a Parity-check matrix
# or a Generator matrix. From this matrix, a Parity-check matrix and
# a Generator matrix will be generated. The Parity-check matrix and
# the Generator matrix will be used to generate the synthesizable
# behavioral RTL Verilog code for the encoder and the decoder in
# communication electronics.


# ================================================================


print "Generating the input file:\n";
print "To produce a Parity-check matrix or a Generator matrix\n";
print "\n";
print "\n";

# Number of rows in the generator matrix
$num_rows = 3;
# Number of columns in the generator matrix
$num_cols = 12;
# Size of the identity matrix I in G = num_rows

print "Produce a text file containing the Generator matrix G:\n";
print "Value of num_cols for G is:",$num_cols,"#\n";
print "Value of num_rows for G is:",$num_rows,"#\n";

print "asd-",$ARGV[0],"=alicia\n";
print "zxc-",$ARGV[1],"+lowery\n";

sub cube_root {
	my $arg = shift;  # name doesn't matter
	$arg **= 1/3;
	return $arg;
}




print "Value of Cube root:",cube_root(27),"END!!!\n";
print "Value of Cube root:",cube_root(64),"END!!!\n";
print "Value of Cube root:",cube_root(27),"END!!!\n";









sub alicia_is_my_mum {
	my $arg1 = shift;
	my $arg2 = shift;
	my $arg3 = shift;
	my $arg4 = shift;
	my $arg5 = shift;
	
	print "arg1:",$arg1,"#\n";
	print "arg2:",$arg2,"#\n";
	print "arg3:",$arg3,"#\n";
	print "arg4:",$arg4,"#\n";
	print "arg5:",$arg5,"#\n";
		
	
	$arg6 = "Alicia is a great Mum";
	return $arg6;
}

print "something:",alicia_is_my_mum,"@@@\n";
print "something:",alicia_is_my_mum(9,5,3,2,8),"@@@\n";


# Note that the size of the array will be fixed and cannot
# be increased at runtime?
@try_this={1,5,8,17};
print "#!!",@try_this,"****\n";
push(@try_this, 31,9,21,19,76);
$temp=pop(@try_this);
print "Number of elements in try_this",$#try_this,"##!!!\n";
@sorted = sort{$a <=> $b} @try_this;
print "Sorted Array:::",@try_this,"*&*\n";
for($z=0;$z<=$#try_this;$z++) {
	print "--->>> Element #",$z," is:::",@try_this[$z],"==\n";
	#print ">>>=== Element #",$z," is:::",@sorted[$z],"++\n";
}
for($z=0;$z<=$#sorted;$z++) {
	#print "--->>> Element #",$z," is:::",@try_this[$z],"==\n";
	print ">>>=== Element #",$z," is:::",@sorted[$z],"++\n";
}




push(@new_arr,1);
push(@new_arr,11,3,5,4,19,12,83,91,101,72,231,52);
push(@new_arr,0,-4,32,38);
@new_arr=sort{$a <=> $b} @new_arr;
for($z=0;$z<=$#new_arr;$z++) {
	print "=== Element #",$z," is:::",@new_arr[$z],"_-_\n";
}
@new_arr[$#new_arr]=@new_arr[$#new_arr]+1;
@new_arr[$#new_arr]=@new_arr[$#new_arr]+1;
@new_arr[$#new_arr]++;
@new_arr[$#new_arr]++;
print "Value of new_arr:",@new_arr[$#new_arr],"###\n";
if($#lowery == -1) {
	@lowery[0]++;
}else{
	@lowery[$#lowery]++;
}
@lowery[$#lowery]++;
@lowery[$#lowery]++;
@lowery[$#lowery]++;
@lowery[$#lowery]++;
@lowery[$#lowery]++;
print "Value of new_arr1:",@lowery[$#lowery],"###\n";
push(@lowery,51);
print "Value of new_arr2:",@lowery[$#lowery],"###\n";
