# Copyright (c) 2004 Timothy Appnel
# http://www.timaoutloud.org/
# This code is released under the Artistic License.
#
# XML::Elemental::Characters - a generic characters object for use 
# with the Elemental parser style. 
# 

package XML::Elemental::Characters;

use strict;
use XML::Elemental::Node;

use vars qw(@ISA);
@ISA = qw( XML::Elemental::Node );

sub new { $_[0]->SUPER::new(@_); }

sub data { my $this = shift; $this->stash('data',@_); }
sub parent { my $this = shift; $this->stash('parent',@_); }

1;

__END__

=begin

=head1 NAME

XML::Elemental::Characters - a generic characters object for use 
with the Elemental parser style.

=head1 DESCRIPTION

XML::Elemental::Characters is a subclass of L<XML::Elemental::Node>
that is used by the Elemental parser style to represent a character
data.

=head1 METHODS

=item XML::Elemental::Characters->new

Parameterless constructor. Returns an instance of the object.

=item $chars->parent([$object])

Returns a reference to the parent object. If a parameter is passed
the parent is set.

=item $chars->data([$string])

A method that returns the character data as a string. If a
parameter is passed the value is set.

=item $chars->root

A method that returns a reference to the Elemental Document object.

=head1 AUTHOR & COPYRIGHT

Please see the XML::Elemental manpage for author, copyright, and
license information.

=cut

=end