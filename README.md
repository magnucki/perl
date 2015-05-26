# Perl Einführung

Begleitendes Repository zum Perl Kurs

Jedes Script ist in einer eigenen `.pl` Datei mit möglichst aussagekräfigen Namen. Innerhalb der Scripte versuche ich eine ordentliche Dokumentation (in Form von Kommentaren) zu gewährleisten.

## Hallo Welt

```perl
#!usr/bin/env perl

print "Hello World!\n"
```

## Variablen

Perl ist eine typenlose Sprache. Es muss demnach nicht vorher spezifiziert werden, was der Inhalt einer Variable ist.

Was in Java so aussieht:

```Java
String text = "Das ist ein Text";
int number = 123;
```

könnte in Perl z.B. so aussehen:

```perl
$text = "Das ist ein Text";
$number = 123;
```

## Operationen

### arithmetisch
* Grundrechenarten: `+`,`-`,`*`,`/`
* Modulo: `%`
* Potenzen: `**`

### String
* zusammenfügen: `.`


## Sonderzeichen

Um ein Sonderzeichen, wie z.B. `$` auszugeben, muss dieses mit einem `\` (Backslash) escaped werden.

```perl
print "Joe User schuldet mir $123"
```

## pre- & post-Inkrement

Die Inkrementierschreibweise mit `++` ist weit verbreitet. Oft wird das, sog. post-Inkrement verwendet: `i++`

Dabei wird die Variable erst nach der Ausweitung erhöht.

Betrachte dazu folgendes Beispiel:
```perl
$zahl = 5;
$multiplikator = 7;

$zahl *= $multiplikator++;
```

Das erwartete Ergebnis wäre eigentlich 40. Das tatsächliche Ergebnis ist aber 35. Die Erklärung ist simpel. Es wird erst die Rechenoperation (5 * 7) ausgeführt und anschließend der Multiplikator um eins erhöht. Dieser ist danach auch 8 und nicht 7.

Was also eigentlich passiert:
```perl
#$zahl *= $multiplikator++;

$zahl = $zahl * $multiplikator;
$multiplikator += 1;
```

Arbeitet man nun mit einem post-Inkrement sieht der Code eigentlich so aus:

```perl
# $zahl *= ++$multiplikator;

$multiplikator += 1;
$zahl = $zahl * $multiplikator;
```

## Funktionen auf Strings

### Länge
Um die Länge eines Strings zu ermitteln, kann die Funktion `length()` verwendet werden.

```perl
$laenge = length($string);
```

### Position im Text
Die Position eines Strings im Text wird mit der Funktion `index($input, $pattern)` berechnet.

Dabei ist zu beachten, dass zum einen bei 0 angefangen wird zu zählen und zum anderen ein -1 zurückgegeben wird, wenn der String nicht gefunden wurde.

```perl
$position = index("Das ist Perl", "ist");
```

### Substrings und Textersetzung

Um einen Text zu extrahieren, wird auf die Funktion `substr()` zurückgegriffen. Deren Verhalten ist abhängig von der Anzahl der Parameter die sie bekommt.

#### Text ab einer bestimmten Stelle
Um den Text ab einer bestimmten Position auszugeben, werden 2 Parameter verwendet. Der eigentliche Text und die Position an der begonnen werden soll.

```perl
$tail = ($text, 10);
```

Gibt man als Startstelle eine negative Zahl an, kann von hinten gezählt werden. Damit wird nicht die Startposition, sondern die Anzahl der Zeichen definiert, die ausgegeben werden soll.

```perl
$tail = ($text, -4);
```

Sollen drei Buchstaben ab der zehnten Position ausgegeben werden, erhält `substr()` einen weiteren Parameter, der einfach angehängt wird.

```perl
substr($input,$start,$anzahl);


substr($input, 10 , 3);
```

####Text ersetzen

Auch das Ersetzen von Text ist mit `substr()` möglich. Dazu bekommt es _vier_ Parameter.

Haben wir z.B. den String `"Hallo Welt"` und wollen nun `"Hallo"` mit `"Hi"` ersetzen, gehen wir wie folgt vor:


```perl
$hallo = "Hallo Welt";

$neu = substr($hallo, 0, 5, "Hi");
```

Es werden nun, ausgehend von der Stelle 0, die folgenden 5 Zeichen mit `"Hi"` ersetzt. In `$hallo` steht nun "Hi Welt".
