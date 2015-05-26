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
* Potzen: `**`

### String
