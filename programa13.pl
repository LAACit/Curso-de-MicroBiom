#!/usr/bin/perl-w

##Arreglos ciclo for ###  

#open R, "./Ecoli_k12.faa" or die "ERROR  R $!";

@numeros = (1,2,3,4,5);
@colores = ('azul','blanco','negro','verde'); 

#acceder a la celda que buscamos utiliza el $

print qq(subindice 3 numeros  $numeros[3]\n); 
print qq(subindice 3 colores $colores[3]\n); 

##CICLO FOR##

#se pueden dar varios operadores suma resta etc para dar los aumentos y decrementos##

#print qq(ciclo FOR suma \n);
#for(inización; evaluación ; aumento/decremento)
# $x++ = es como $x=$x+1
#for($x=0; $x<5; $x++){
#	print qq(valor $x\n);
#}



#print qq(ciclo FOR 2 resta \n);
#for(inización; evaluación ; aumento/decremento)
# $x++ = es como $x=$x+1
#for($x=10; $x>5; $x=$x-2){
#	print qq(valor $x\n\n);
#}

################## 

print qq(\n\n);

print qq(ciclo FOR con arreglos numeros  \n);
#for(inización; evaluación ; aumento/decremento)
for ($x=0; $x<@numeros; $x++){
	print qq(Contenido de celda $numeros[$x]\n);
	print qq(valor subindice  $x \n);
}

print qq(\n\n);

print qq(ciclo FOR con arreglos colores  \n);
#for(inización; evaluación ; aumento/decremento)
for ($x=0; $x<@colores; $x++){
	print qq(Contenido de celda $colores[$x]\n);
	print qq(valor subindice  $x\n);
}


print qq(\n\n);

for ($x=0; $x<@colores; $x++){
	print qq(Contenido de celda $colores[$x]\n);
	print qq(valor subindice  $x\n);
}


print qq(\n\n);

############### función split ###########
# split ( / simbolo de separación / , $objeto a separar); 

$adn= 'a|t|g|c';
print qq(adn con cadena  $adn \n); 
@cadena = split(/\|/, $adn);
print qq(cadena con split  @cadena); 
