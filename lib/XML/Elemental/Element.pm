# Copyright (c) 2004 Timothy Appnel
# http://www.timaoutloud.org/
# This code is released under the Artistic License.
#
# XML::Elemental::Element - a generic element object for use with
# the Elemental parser style.
# 

package XML::Elemental::Element;

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

sub text_content { 
    return '' unless defined $_[0]->{contents}->[0];
    join('', map { $_->can('text_content') ? 
        $_->text_content : $_->data } 
            @{ $_[0]->contents } );
}


sub name { my $this = shift; $this->stash('name',@_); }
sub parent { my $this = shift; $this->stash('parent',@_); }
sub contents { my $this = shift; $this->stash('contents',@_); }
sub attributes { my $this = shift; $this->stash('attributes',@_); }

1;

__END__

=begin

=head1 NAME

XML::Elemental::Element - a generic element object for use with
the Elemental parser style.

=head1 DESCRIPTION

XML::Elemental::Element is a subclass of L<XML::Elemental::Node>
that is used by the Elemental parser style to represent a tag.

=head1 METHODS

=item XML::Elemental::Element->new

Parameterless constructor. Returns an instance of the object.

=item $element->name([$name])

Returns the tag name as a string. If the L<XML::Parser> Namespace
option is set to true, the extend name (combined URI and tag) is
stored. If a parameter is passed the name is set.

=item $element->parent([$object])

Returns a reference to the parent object. If a parameter is passed
the parent is set.

=item $element->contents([\@children])

Returns an ordered array reference of direct sibling objects.
Returns a reference to an empty array if the element does not have
any siblings. If a parameter is passed all the direct siblings are
(re)set.

=item $element->attributes([\%attributes])

Returns a hash reference of key-value pairs representing the tag's
attributes. If the L<XML::Parser> Namespace option is set to true,
the extend name (combined URI and tag) of the attribute is stored.
It returns a reference to an empty hash if the element does not
have any attributes. If a parameter is passed all attributes are
(re)set.

=item $element->text_content

A method that returns the character data of all siblings.

=item $element->root

A method that returns a reference to the Elemental Document object.

=head1 AUTHOR & COPYRIGHT

Please see the XML::Elemental manpage for author, copyright, and
license information.

=cut

=end