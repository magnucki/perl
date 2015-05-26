#!user/bin/env perl

##############
# Operatoren #
##############

$res1 = 4 * 3 + 6;          # 18
$res2 = 4 + 3 * 6;          # 22
$res3 = 100 / 5 % 3;        # 2
$res4 = 5 * 6 ** 7;         # 1399680
$res5 = 5;                  # 5
$n = 7;                     # 7
$res5 *= $n++;              # 35

#print "Joe User schuldet mir \$123!" # Escapen mit \


##################
# Mails Zerlegen #
##################

$mail = 'rico@icancode.de';

$mailLength = length($mail);
$mailAtPosition = index($mail, '@');

$domain = substr($mail, $mailAtPosition+1);
$account = substr($mail , 0 , $mailAtPosition-$mailLength);

print "Der Account ist: " . $account . "\n";
print "Die Domain ist: " . $domain . "\n";
