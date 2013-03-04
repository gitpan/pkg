use strict;
use warnings;
use inc::Module::Install;

name 'pkg';
author 'Diab Jerius';

all_from 'lib/pkg.pm';

requires 'Class::Load';
requires 'Import::Into';
requires 'Devel::InnerPackage';

author_tests( 'xt' );
author_requires 'Test::NoBreakpoints';
author_requires 'Test::Pod';
author_requires 'Test::Pod::Coverage';
author_requires 'Test::Perl::Critic';

tests_recursive;

test_requires 'Test::Lib';
test_requires 'Test::More';
test_requires 'Test::Trap';


build_requires 'Test::More';

readme_from( '', { clean => 1 } );

WriteAll;
