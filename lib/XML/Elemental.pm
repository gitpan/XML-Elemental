# Copyright (c) 2004 Timothy Appnel
# http://www.timaoutloud.org/
# This code is released under the Artistic License.
#
# XML::Elemental - an XML::Parser style and generic classes 
# for simplistic and perlish handling of XML data.
# 

package XML::Elemental;

use strict;

use vars qw($VERSION);
$VERSION = 1.03;

1;

__END__

=begin

=head1 NAME

XML::Elemental - an XML::Parser style and generic classes for
simplistic and perlish handling of XML data.

=head1 DESCRIPTION

XML::Elemental is a package of a L<XML::Parser> style and generic
classes for easily parsing XML documents into native
object-oriented perl form.

The development of this package grew out of the desire for
something that supported namespaces, more simplistic and perlish
then the various standard XML API modules in addition to being
easier to install.

=head1 DEPENDENCIES

L<XML::Parser>

=head1 SEE ALSO

L<XML::Elemental::Document>, L<XML::Elemental::Element>,
L<XML::Elemental::Characters>, L<XML::Elemental::Node>

=head1 LICENSE

The software is released under the Artistic License. The terms of
the Artistic License are described at
L<http://www.perl.com/language/misc/Artistic.html>.

=head1 AUTHOR & COPYRIGHT

Except where otherwise noted, XML::Elemental is Copyright 2004,
Timothy Appnel, cpan@timaoutloud.org. All rights reserved.

=cut

=end