#!/usr/bin/perl-w

## Emplearemos un operador de archivos, el cual es util para estrcuturas con un control de flujo interactivo WHILE 
## Un pperador de archivos permite acceder a un archivo, con cuyo contenido quiere realizarse alguna tarea 


#Para abrir dicho archivo se emplea el comando "open"
#Open es un manejador de archivo y la primera letra de su nombre debe ser mayúscula. 

#Su nombre debe permitirnos saber qué es lo que contiene 

#Síntaxis = open Manejador_de_archivos, "ruta de archivo"
  


open R, "./E_coli_K12.fna" or die "ERROR no jala en operador de archivo  R $!";
$x = 0; #Bandera que va a señalizar la primera línea de cada secuencia.
$CONTATG=0; #incia contador para atg
$CONTN=0; #inicia contador para lo que no son atg

while($linea=<R>){
	if($linea =~ m/>/){
		@cadena = split(/\|/, $linea);
		$x = 1; #encendido de bandera
	}
	else{
		@cadena = split(//, $linea);
		if ($cadena[0] eq 'a' and  $cadena[1] eq 't' and  $cadena[2] eq 'g' and $x == 1){
			print qq($cadena[0] $cadena[1] $cadena[2]\n);
			$x = 0; #apagado de bandera
			 $CONTATG=$CONTATG+1; 		
		}

		if ( $x == 1){
			print qq($cadena[0] $cadena[1] $cadena[2]\n);
			$x = 0; #apagado de bandera
                        $CONTN=$CONTN+1;

	}
}
}


$ATG=$CONTATG;
$NATG=$CONTN;


print qq(N° ATG; $ATG \n); 
print qq(N° no ATG; $NATG \n);

$total =$ATG + $NATG;


$PropATG= (($ATG*100)/$total);
$PropNATG= (($NATG*100)/$total);


print qq(N° total; $total \n); 
print qq(% ATG; $PropATG \n); 
print qq (% No ATG; $PropNATG \n); 
