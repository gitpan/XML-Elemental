# Copyright (c) 2004 Timothy Appnel
# http://www.timaoutloud.org/
# This code is released under the Artistic License.
#
# XML::Elemental::Node - Base class for all other XML::Elemental objects.
# 

package XML::Elemental::Node;

use strict;

sub new { bless { }, $_[0] }

sub root { 
    my $e = shift; 
    while($e->can('parent') && $e->parent) 
        { $e = $e->parent }
    $e; 
}

sub stash { 
    $_[0]->{$_[1]} = $_[2] if defined $_[2];
    $_[0]->{$_[1]};
}

1;

__END__

=begin

=head1 NAME

XML::Elemental::Node - Base class for all other XML::Elemental objects.

=head1 AUTHOR & COPYRIGHT

Please see the XML::Elemental manpage for author, copyright, and
license information.

=cut

=end