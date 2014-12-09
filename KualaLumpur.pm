package Map::Tube::KualaLumpur;

# Pragmas.
use strict;
use warnings;
use 5.006;

# Modules.
use File::Share ':all';
use Moo;
use namespace::clean;

# Version.
our $VERSION = 0.01;

# Get XML.
has xml => (
	'is' => 'ro',
	'default' => sub {
		return dist_file('Map-Tube-KualaLumpur', 'kuala_lumpur-map.xml');
	},
);

with 'Map::Tube';

1;

__END__

=encoding utf8

=head1 NAME

Map::Tube::KualaLumpur - Interface to the KualaLumpur urban monorail system map.

=head1 SYNOPSIS

 use Map::Tube::KualaLumpur;
 my $obj = Map::Tube::KualaLumpur->new;
 my $route = $obj->get_shortest_route($from, $to);
 my $xml_file = $obj->xml;

=head1 DESCRIPTION

It currently provides functionality to find the shortest route between the two
given nodes.

For more information about KualaLumpur Map, click L<here|https://https://en.wikipedia.org/wiki/Rapid_Rail> and L<here|https://en.wikipedia.org/wiki/KL_Monorail>.

=head1 METHODS

=over 8

=item C<new()>

 Constructor.

=item C<get_shortest_route($from, $to)>

 Get shortest route between $from and $to node name. Node name is case insensitive.
 Returns back the node sequence in string.

=item C<xml()>

 Get XML specification of KualaLumpur metro.
 Returns string with XML.

=back

=head1 EXAMPLE1

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use Encode qw(decode_utf8 encode_utf8);
 use Map::Tube::KualaLumpur;

 # Object.
 my $obj = Map::Tube::KualaLumpur->new;

 # Get route.
 my $route = $obj->get_shortest_route(decode_utf8('TODO'), decode_utf8('TODO'));

 # Print out type.
 print "Route: ".encode_utf8($route)."\n";

 # Output:
 # TODO

=head1 EXAMPLE2

 # Pragmas.
 use strict;
 use utf8;
 use warnings;

 # Modules.
 use Map::Tube::KualaLumpur;

 # Object.
 my $obj = Map::Tube::KualaLumpur->new;

 # Get XML file.
 my $xml_file = $obj->xml;

 # Print out XML file.
 print "XML file: $xml_file\n";

 # Output like:
 # XML file: .*/kuala_lumpur-map.xml

=head1 DEPENDENCIES

L<File::Share>,
L<Map::Tube>,
L<Moo>,
L<namespace::clean>.

=head1 SEE ALSO

L<Map::Tube>,
L<Map::Tube::Barcelona>,
L<Map::Tube::Delhi>,
L<Map::Tube::London>,
L<Map::Tube::Tokyo>.

=head1 REPOSITORY

L<https://github.com/tupinek/Map-Tube-KualaLumpur>

=head1 AUTHOR

Michal Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

 © 2014 Michal Špaček
 Artistic License
 BSD 2-Clause License

=head1 VERSION

0.01

=cut
