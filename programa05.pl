#!/usr/bin/perl-w
#vamos a transcribir un DNA

$DNA1 = 'ATGGCTATACTCGCTATTGCCAATGC';
#es la cadena codificantes 
print qq(DNA: $DNA1 \n); 

print qq(\n);
#transcribir el DNA a RNA, recordar que en este paso hay cambio # de T a U 

$RNA = $DNA1;
print qq(RNA:$RNA \n);

print qq(\n);
#Usamos un Operador de cadena =~ utilizando la funcion de sustit#titución se representa como (s)

$RNA =~ s/T/U/;
print qq(Sin operador g \n);
print qq(RNA1: $RNA \n);
#En este caso sólo lo hace para la primera ocurrencia de T, el resto no corre#

print qq(\n);

#ahora se aplica con una g  para que sea global#

$RNA =~ s/T/U/g;

print qq(Sustitución con g \n); 
print qq(RNA2: $RNA \n);
