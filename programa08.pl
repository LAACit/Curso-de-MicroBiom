#!/usr/bin/perl-w

## Vamos a hacer un operador de archivos y como es util al usarlo con estrcutura con un control de flujo interactivo WHILE 
#Operador de archivos es para acceder al contenido del archivo sobre el cual queremos realizar algo 


#usando función "open" para abrir 
#se puede poner cualquier nombre de manejador la primera letra debe ser mayuscula. 

#para saber que se almacena se puede cambiar a gusto 

#open Manejador_de_archivos, "ruta de archivo"
  

open R, "./Ecoli_k12.faa" or die "ERROR no jala en operador de archivo  R $!";

# El $! sirve para que se muestre el mensaje de error que escribi"

#Colocamos el operador R en la variable linea 

$linea = <R>;

print qq($linea \n);
print qq(\n \n); 


print qq( Haciendo el ciclo con WHILE  y cambiando expresción \n); 

#pero esto solo nos da un linea, para sacar todo el texto podemos utilizar un while 

#mientras sea verdad la expresión dentro de parentesis el ciclo continiua y es falsa se rompe

$x=0;   #damos la condición 

while($x<5){
	print qq($linea \n);
	$x=6;
}


#Se puede ir haciendo una suma para cambiar valor de x##

$x=3;   #damos la condición 

#Se pueden agregar intervalos en el while 
while($x>3 and  $x<16 ){
	print qq($linea \n);
	$x=$x + 1;
}

print qq($linea \n); 

