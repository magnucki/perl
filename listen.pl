#!usr/bin/env perl

($h, $w) = ("hello", "world");
print "H: ". $h . " W: " . $w . "\n";

($h, $w) = ("hello", "nasty", "world");
print "H: ". $h . " W: " . $w . "\n";

($h, $w) = ("hello");
print "H: ". $h . " W: " . $w . "\n";

$h = ("hello", "dark", "nasty", "cruel", "world");
print "H: ". $h . "\n";

@w = ("hello", "dark", "nasty", "cruel", "world");
print "W: ". @w . "\n";

$newline = "\n";

@list = (1, 2, 3, 2, 1);
print @list . $newline;
@copy = @list;
print @copy . $newline;
$num = @list;
print $num . $newline;
$last = @list;
print $last . $newline;
