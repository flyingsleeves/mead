
# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..2\n"; }
END {print "not ok 1\n" unless $loaded;}
use XML::TreeBuilder;
$loaded = 1;
print "ok 1\n";

use strict;
my $x = XML::TreeBuilder->new;
$x->store_comments(1);
$x->store_pis(1);
$x->store_declarations(1);
$x->parse(
  qq{<!-- myorp --><Gee><foo Id="me" xml:foo="lal">Hello World</foo>} .
  qq{<lor/><!-- foo --></Gee><!-- glarg -->}
);

my $y = XML::Element->new_from_lol(
 ['Gee',
   ['~comment', {'text' => ' myorp '}],
   ['foo', {'Id'=> 'me', 'xml:foo' => 'lal'}, 'Hello World'],
   ['lor'],
   ['~comment', {'text' => ' foo '}],
   ['~comment', {'text' => ' glarg '}],
 ]
);

$x->dump;
$y->dump;

if($x->same_as($y)) {
  print "ok 2\n";
} else {
  print "fail 2\n";
}

#print "\n", $x->as_Lisp_form, "\n";
#print "\n", $x->as_XML, "\n\n";
#print "\n", $y->as_XML, "\n\n";
$x->delete;
$y->delete;

__END__
