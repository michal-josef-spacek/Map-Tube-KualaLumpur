# Pragmas.
use strict;
use warnings;

# Modules.
use Map::Tube::KualaLumpur;
use Test::More tests => 3;
use Test::NoWarnings;

# Test.
my $map = Map::Tube::KualaLumpur->new;
my $ret = $map->get_node_by_name('foo');
is($ret, undef, 'Get node for bad node name.');

# Test.
my @ret = sort map { $_->id } $map->get_node_by_name('KL Sentral');
is_deeply(
	\@ret,
	[
		'6-01',
		'7-01',
		'KA01',
		'KA01',
		'KJ15',
		'MR1',
	],
	"Get all nodes for 'KL Sentral name'.",
);
