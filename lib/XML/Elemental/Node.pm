# Copyright (c) $YEAR$ Timothy Appnel
# http://www.timaoutloud.org/
# This code is released under the Artistic License.
#
# $PACKAGE$ - $ABSTRACT$ 
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


=begin

=head1 NAME

$PACKAGE$ - $ABSTRACT$

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 DEPENDENCIES

=head1 SEE ALSO

=cut

=end