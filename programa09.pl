#!/usr/bin/perl-w

## Vamos a hacer un operador de archivos y como es util al usarlo con estrcutura con un control de flujo interactivo WHILE 
#Operador de archivos es para acceder al contenido del archivo sobre el cual queremos realizar algo 


#usando función "open" para abrir 
#se puede poner cualquier nombre de manejador la primera letra debe ser mayuscula. 

#para saber que se almacena se puede cambiar a gusto 

#open Manejador_de_archivos, "ruta de archivo"
  

open R, "./Ecoli_k12.faa" or die "ERROR no jala en operador de archivo  R $!";

while($linea=<R>){
	print qq($linea\n);
}



