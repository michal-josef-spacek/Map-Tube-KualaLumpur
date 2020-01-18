use strict;
use warnings;

use English;
use Map::Tube::KualaLumpur;
use Test::More tests => 4;
use Test::NoWarnings;

# Test.
my $map = Map::Tube::KualaLumpur->new;
eval {
	$map->get_node_by_id;
};
like($EVAL_ERROR, qr{^Map::Tube::get_node_by_id\(\): ERROR: Missing Station ID. \(status: 102\)},
	'Missing station id.');

# Test.
eval {
	$map->get_node_by_id('foo');
};
like($EVAL_ERROR, qr{^Map::Tube::get_node_by_id\(\): ERROR: Invalid Station ID \[foo\]. \(status: 103\)},
	'Get node for bad node id..');

# Test.
my $ret = $map->get_node_by_id('KA03');
is($ret->name, 'Bank Negara', 'Get node for node id.');
