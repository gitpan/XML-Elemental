use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'		=> 'XML::Elemental',
    'VERSION_FROM'	=> 'lib/XML/Elemental.pm',
    'PREREQ_PM'		=> { 
        XML::SAX=>0, 
        Class::Accessor=>0, 
        Test::More=>0, 
        Object::Destroyer=>2 
    }, 
);
