# Copyright (c) 2004 Timothy Appnel
# http://www.timaoutloud.org/
# This code is released under the Artistic License.
#
# XML::Elemental::Document - a generic document object for use 
# with the Elemental parser style. 
# 

package XML::Elemental::Document;

use strict;
use XML::Elemental::Node;

use vars qw(@ISA);
@ISA = qw( XML::Elemental::Node );

sub new {
    my $self = $_[0]->SUPER::new(@_);
    $self->{attributes} = { };
    $self->{contents} = [ ];
    $self;
}

sub contents { my $this = shift; $this->stash('contents',@_); }
sub attributes { my $this = shift; $this->stash('attributes',@_); }

1;

__END__

=begin

=head1 NAME

XML::Elemental::Document - a generic document object for use 
with the Elemental parser style.

=head1 DESCRIPTION

XML::Elemental::Document is a subclass of L<XML::Elemental::Node>
that is used by the Elemental parser style to represent the document
(root) node.

=head1 METHODS

=item XML::Elemental::Document->new

Parameterless constructor. Returns an instance of the object.

=item $doc->contents([\@children])

Returns an ordered array reference of direct sibling objects.
Returns a reference to an empty array if the element does not have
any siblings. If a parameter is passed all the direct siblings are
(re)set.

=item $doc->root

Inherited from L<XML::Elemental::Node> returns a reference to itself.

=head1 AUTHOR & COPYRIGHT

Please see the XML::Elemental manpage for author, copyright, and
license information.

=cut

=end