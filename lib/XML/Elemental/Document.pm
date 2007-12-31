package XML::Elemental::Document;
use strict;
use base 'Object::Destroyer';

sub new { $_[0]->SUPER::new(XML::Elemental::doc->new) }

package XML::Elemental::doc;
use base qw( XML::Elemental::Node );

__PACKAGE__->mk_accessors(qw( contents attributes ));

sub new {
    my $self = bless {}, $_[0];
    $self->{attributes} ||= {};
    $self->{contents}   ||= [];
    return $self;
}

1;

__END__

=begin

=head1 NAME

XML::Elemental::Document - a generic document object.

=head1 DESCRIPTION

XML::Elemental::Document is a subclass of L<XML::Elemental::Node>
that can be used with the Elemental parser to represent the document
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
