require 5.004;
use ExtUtils::MakeMaker;
# Time-stamp: "2000-11-03 17:17:13 MST"

WriteMakefile(
    'NAME'	   => 'XML-TreeBuilder',
    'VERSION'      => '3.08',
    'PREREQ_PM'    => {	
	                 'HTML::Element' => 3.08,   # at LEAST!
	                 'HTML::Tagset' => 3.02,
                         'XML::Parser' => 0,
		      },
    dist           => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);
