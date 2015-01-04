#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use Encode qw(decode_utf8 encode_utf8);
use Map::Tube::KualaLumpur;

# Object.
my $obj = Map::Tube::KualaLumpur->new;

# Get route.
my $route = $obj->get_shortest_route('Kuang', 'Subang Jaya');

# Print out type.
print "Route: ".encode_utf8($route)."\n";

# Output:
# TODO