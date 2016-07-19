#!/usr/bin/perl
use strict; use warnings;
use FileHandle;

my($infile) = @ARGV;
die "Please input <sam_file>!" if(@ARGV != 1);

my $in = FileHandle->new("< $infile");
my(@array_1, @array_2, @array_3, @array_4, @array_5);
while(<$in>){
	chomp;
	if($in !~ /@/){
		my @array = split(/\t/, $_);
		if($array[2] =~ /Chr1/){
			push @array_1, $array[3];
		}elsif($array[2] =~ /Chr2/){
			push @array_2, $array[3];
		}elsif($array[2] =~ /Chr3/){
			push @array_3, $array[3];
		}elsif($array[2] =~ /Chr4/){
			push @array_4, $array[3];
		}elsif($array[2] =~ /Chr5/){
			push @array_5, $array[3];
		}
	}
}
############################################
array_deal("Chr1", @array_1);
array_deal("Chr2", @array_2);
array_deal("Chr3", @array_3);
array_deal("Chr4", @array_4);
array_deal("Chr5", @array_5);
############################################
sub array_deal{
	my($chr, @array_y) = @_;
	my @array_x = sort{$a <=> $b} @array_y;
	my $first = 0;
	my @array_x_n;
	my $num = 0;
	for(my $i = 0; $i < @array_x; $i++){
		if($array_x[$i] - $first < 5000){
			push @array_x_n, $array_x[$i];
		}else{
			$num = @array_x_n;
			if(@array_x_n > 0){
				my $middle = int(($first + $array_x_n[-1])/2);
				my $second = $array_x_n[-1] + 100;
				print "$chr\t$first\t$second\t$num\n";
			}
			$first = $array_x[$i];
			@array_x_n=($first);
		}
	}
	if(@array_x_n > 0){
		$num = @array_x_n;
		my $middle = int(($first + $array_x_n[-1])/2);
		my $second = $array_x_n[-1] + 100;
		print "$chr\t$first\t$second\t$num\n";
	}
}
