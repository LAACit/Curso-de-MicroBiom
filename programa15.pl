#!/usr/bin/perl-w

## Vamos a hacer un operador de archivos y como es util al usarlo con estrcutura con un control de flujo interactivo WHILE 
#Operador de archivos es para acceder al contenido del archivo sobre el cual queremos realizar algo 


#usando función "open" para abrir 
#se puede poner cualquier nombre de manejador la primera letra debe ser mayuscula. 

#para saber que se almacena se puede cambiar a gusto 

#open Manejador_de_archivos, "ruta de archivo"
  

open R, "./Ecoli_k12.faa" or die "ERROR no jala en operador de archivo  R $!";


#while($linea = <R>){
#	@cadena = split (//,$linea); 
#	print qq($cadena[0] $cadena[1] $cadena[2] \n); 

#}



while($linea = <R>){
	@cadena = split (//,$linea); 
	for($x=0; $x>2; $x++){
	       print($cadena[$x]); 
       }#for	       
       print qq(\n); 
}#while
