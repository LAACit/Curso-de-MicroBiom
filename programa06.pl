#!/usr/bin/perl-w

##vamos a sacar una secuencia reversa complementaria ##
#Generamos una secuencia de DNA#
print qq(\N)
print qq(sacando secuencia inversa \n); 
$DNA1 = 'ATGGCATACT';
print qq(DNA1: $DNA1 \n); 
#obtener primero la versa usamos para esto la funcipón reverse de perl#

$revcom = reverse $DNA1;
print qq(\n);
print qq(Inversa de  DNA1: $revcom \n);

##AHORA SE DEBE SACAR LA REVERSA COMPLEMENTARIA##
#usando función s y colocando g para que se aplioque a todo  y i para ve mayuscuclas y minusculas


##ERROR: Los siguiente hace mal la sustutución 
$revcom =~ s/C/G/gi;
print qq(primer sustitución; $revcom \n);
$revcom =~ s/T/A/gi;
print qq(segundo sustitución; $revcom \n);
$revcom =~ s/A/T/gi;
print qq(primer sustitución; $revcom \n);
$revcom =~ s/G/C/gi;
print qq(segundo sustitución; $revcom \n);

#############################



print qq(\n);
print qq(Reversa complementaria DNA1: $revcom \n);

