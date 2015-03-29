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
$ret = $map->get_node_by_name('KL Sentral');
# TODO Multiple nodes by same name.
is($ret->id, 'MR1', 'Get node for node name.');
