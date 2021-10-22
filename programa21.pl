#!/usr/bin/perl-w

## Emplearemos un operador de archivos, el cual es util para estrcuturas con un control de flujo interactivo WHILE 
## Un operador de archivos permite acceder a un archivo, con cuyo contenido quiere realizarse alguna tarea 


#Para abrir dicho archivo se emplea el comando "open"
#Open es un manejador de archivo y la primera letra de su nombre debe ser mayúscula. 

#Su nombre debe permitirnos saber qué es lo que contiene 

#Síntaxis = open Manejador_de_archivos, "ruta de archivo"
  

open R, "./E_coli_K12.fna" or die "ERROR no jala en operador de archivo  R $!";

$x = 0; #Bandera que va a señalizar la primera línea de cada secuencia.
$CONTATG = 0; #Contador de secuencias de inicio ATG
$CONTAOtro = 0; #Contador de secuencias de inicio DIFERENTES de ATG
$CONTATotal = 0; #Cuenta el número total de genes presentes en el archivo.
$gi = ""; #variable para almacenar un patrón de búsqueda

print qq(Las proteínas que NO emplean el codón ATG como secuencia de inicio son:\n\n);
while($linea=<R>){
	if($linea =~ m/>/){
		@cadena = split(/\|/, $linea);
		#print qq($cadena[1]);
		$cadena[1] =~ m/(\d+)/; 
		#dentro de índice 1 de @cadena, busca una cifra con un número indefinido de dígitos y almacénalo en "$1", una variable de perl
		$gi = $1; #guarda el resultado obtenido con la función match, la cual está originalmente guardada en "$1"
		$x = 1; #encendido de bandera
		$CONTATotal++; #Suma 1 cada que aparece un encabezado
	}
	else{
		@cadena = split(//, $linea);
		if ($cadena[0] eq 'a' and $cadena[1] eq 't' and $cadena[2] eq 'g' and $x == 1){
			#print qq($cadena[0] $cadena[1] $cadena[2]\n);
			$x = 0; #apagado de bandera :(
			$CONTATG = $CONTATG + 1; #$CONTATG++; $CONTATG+ = 1
		}
		if ($x == 1){
			$x = 0; #apagado de bandera
			$encabezadoFAA = qx(grep $gi ./Ecoli_k12.faa);#en el  archivo se incluye un salto de linea Problematico
			@proteina = split(/\|/, $encabezadoFAA);  
			print qq(GI: $gi\n);
			print qq($proteina[4]); # \t es un espacio tabulador 
			print qq($cadena[0] $cadena[1] $cadena[2]\n);
			$CONTAOtro++;
		}
	}
}

#Calculemos las proporciones de segmentos que emplean el codón ATG como secuencia de inicio y cuántos no.
$PROPATG = ($CONTATG / $CONTATotal)*100;
$PROPOtro = ($CONTAOtro / $CONTATotal)*100;

print qq(\n\n);
print qq(Las secuencias de inicio están distribuidas de la siguiente manera:\n);
print qq(Número de secuencias ATG: $CONTATG y  representa el $PROPATG% del total\n);
print qq(Número otros codones: $CONTAOtro y representa el $PROPOtro% del total\n);

#PARA VIERNES 24/sep: Cómo introducir condicionantes "if"

#PARA EL MARTES 28/sep, que no imprima el encabezad y ÚNICAMENTE LA SECUENCIA DE INICIO DE CADA GEN. 
#"Dadas dos líneas, evaluar con if si hay un encabezado o no, y guardarlo en caso de no serlo"

#PARA VIERNES 01/oct generalizar el código
#Extra: contar la fecuencia de cada codón de inicio
#Ahora (para el 05/oct): calcular las proporciones que emplean ATG y otros codones.
#Así mismo, identificar quiénes son los genes/las proteínas que codifican otro codón inicial, pero diferentes de ATG.
#Recordarle al profe el error de lógica cuando cambiamos de posición a los contadores de los codones.
# m/\d+/ es una expresión regular que representa cualquier número de 0 a 9, una sucesión permite buscar cifras mayores a un dígito
# Para 08/oct: identificar cuáles son los otros codones que se emplean
