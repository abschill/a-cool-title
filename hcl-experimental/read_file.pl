#!/usr/bin/perl
$i_file=$ARGV[0] ? $ARGV[0] : die "Enter a File as argv[0]\n";
# get the regex base to interpolate from the cli arg
$program_arg=$ARGV[1];
# if its not there just do a dot match or whatever idk change it 
$reginald_expression=$program_arg ? $program_arg : ".";
# Test on license i guess lol
open(FH, $i_file) or die "Sorry!! couldn't open";
# iterate over each line 
while(<FH>) {
    # apply reginald to the line of file input
    $key=/$reginald_expression/x;
    print $key ? $key : next;
    print "\n";
    $res=($_ =~ $key);
    print $res;
}
close;
