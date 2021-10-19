#!usr/bin/perl-w
print qq(hola mundo \n);
##Almacenar dos frafmentos de DNA en dos variables DNA1 y DNA2 

$DNA1 = 'ACGTATCGATGGC';
$DNA2 = 'TGCATGCTACGGA';

#Llamar la funcion print, imprimir a la salida estandar el conte#nido de las variables DNA1 Y DNA1 

print qq($DNA1 \n);
print qq($DNA2 \n);

print qq(\n\n\n);



#otras formas de llamar a print 
print qq(otras formas de llamar a print\n);
print $DNA1, "\n";
print $DNA2, "\n";

#ahora vamos a concatenas los DNA1 y DNA2 en un a variables

print qq(ahora concatenamos dna1 y dn2 \n);
$DNA3  = "$DNA1$DNA2";

print qq($DNA3 \n);

print qq(\n\n); 
#otra forma de concatener usando ahora punto 

print qq(otra forma de concatener usando punto \n);

$DNA4 = $DNA1.$DNA2;

print qq($DNA4 \n); 
print qq( Es el mismo resultado pero otro metodo \n); 

