use 5.008005;
use ExtUtils::MakeMaker 6.9;

WriteMakefile(
	NAME	=> 'LiteBrite',
	AUTHOR	=> 'Aaron Davis',
	PREREQ_PM =>{'ExtUtils::MakeMaker' => 6.9},
	CCFLAGS => '-Wall -std=c99',
	OPTIMIZE=> '-O3',
	LIBS	=> '-llitebrite',
);
