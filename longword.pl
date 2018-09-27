#!/usr/bin/env perl

my $length = defined $ARGV[1] ? $ARGV[1] : 1;
my @must = defined $ARGV[2] ? split '', $ARGV[2] : ();

for (split '', $ARGV[0]) {
	$l{$_}++;
}

open W, '/usr/share/dict/words';

WORD: for $_ (<W>) {
	chomp;
	next if $length > length;
	my %d;
	for (split '') {
		next WORD if ++$d{$_} > $l{$_};
	}

	for my $m (@must) {
		next WORD unless /${m}/;
	}

	print "$_\n";
}
