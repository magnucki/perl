#!user/bin/env perl

# Länge
$story = "Das ist ein Blindtext. Er hat nichts zu sagen, weiß aber alles.";

$len = length($story); # Gibt die Länge des Strings zurück

# Suche
$pos1 = index($story, "Blindtext"); # Sucht nach dem Wort 'Blindtext'

# Casesensitiv!!
# -1 meint, der String ist nicht vorhanden.

# Suche mit Startposition

$pos2 = index($story, "ist", 8); # Sucht ab der 8ten Stelle.

# Uppercase
$shout = uc("Bitte nicht Rauchen!"); # BITTE NICHT RAUCHEN

#Lowercase
$norm = lc("BITTE NICHT RAUCHEN!"); #bitte nicht rauchen

# Extraktion

$name = "Wir lernen Perl programmieren";

$var1 = substr($name, 10); # Text ab der 10ten Stelle
$var2 = substr($name, -4); # Letzten 4 Buchstaben des Strings
$var3 = substr($name, 10, 3); # 3 Buchstaben ab der 10ten Stelle



# Übung

$mail = 'rico@icancode.de';

$mailLength = length($mail);        #Länge des gesamten Strings
$mailAtPosition = index($mail, '@'); #Postion des Trennzeichens @

$domain = substr($mail, $mailAtPosition+1);
$account = substr($mail , 0 , ($mailLength-$mailAtPosition));

print "Die eingegebene Mail ist: " + $mail + "\n";
print "Der Account ist: " . $account . "\n";
print "Die Domain ist: " . $domain . "\n";


$hallo = "Hallo Welt";
$name = "Rico";


$neu = substr($hallo, 0, 5, "hi");

print $neu . "\n";
print $hallo . "\n";
