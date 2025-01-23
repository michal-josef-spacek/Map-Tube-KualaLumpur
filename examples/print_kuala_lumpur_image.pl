#!/usr/bin/env perl

use strict;
use warnings;

use Map::Tube::GraphViz;
use Map::Tube::GraphViz::Utils qw(node_color_without_label);
use Map::Tube::KualaLumpur;

# Object.
my $obj = Map::Tube::KualaLumpur->new;

# GraphViz object.
my $g = Map::Tube::GraphViz->new(
        'callback_node' => \&node_color_without_label,
        'tube' => $obj,
);

# Get graph to file.
$g->graph('KualaLumpur.png');

# Print file.
system "ls -l KualaLumpur.png";

# Output like:
# -rw-r--r-- 1 skim skim 374739 23. led 18.57 KualaLumpur.png