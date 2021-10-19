#!/usr/bin/perl-w

##vamos a sacar una secuencia reversa complementaria ##

#Generamos una secuencia de DNA#
print qq(sacando secuencia inversa \n); 
$DNA1 = 'ATGGCATACT';
print qq(DNA1: $DNA1 \n); 
#obtener primero la versa usamos para esto la funcipón reverse de perl#

$revcom = reverse $DNA1;
print qq(\n);
print qq(Inversa de  DNA1: $revcom \n);

##AHORA SE DEBE SACAR LA FUN Traducción tr ##

$revcom =~ tr/ATCG/TAGC/;

print qq(reversa complementaria:$revcom \n);
