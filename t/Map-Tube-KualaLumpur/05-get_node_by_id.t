# Pragmas.
use strict;
use warnings;

# Modules.
use Map::Tube::KualaLumpur;
use Test::More tests => 3;
use Test::NoWarnings;

# Test.
my $map = Map::Tube::KualaLumpur->new;
my $ret = $map->get_node_by_id('foo');
is($ret, undef, 'Get node for bad node id.');

# Test.
$ret = $map->get_node_by_id('KA03');
is($ret->name, 'Bank Negara', 'Get node for node id.');
