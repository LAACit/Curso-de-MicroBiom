#!/usr/bin/perl-w

##Arreglos ciclo for ###  

#open R, "./Ecoli_k12.faa" or die "ERROR  R $!";

@numeros = (1,2,3,4,5);
@colores = ('azul','blanco','negro','verde'); 

#acceder a la celda que buscamos utiliza el $

print qq($numeros[3]\n); 
print qq($caracteres[3]\n); 

##CICLO FOR##
print qq(ciclo FOR suma \n);
#for(inización; evaluación ; aumento/decremento)
# $x++ = es como $x=$x+1
for($x=0; $x<5; $x++){
	print qq(valor $x\n);
}



print qq(ciclo FOR 2 resta \n);
#for(inización; evaluación ; aumento/decremento)
# $x++ = es como $x=$x+1
for($x=10; $x>5; $x=$x-2){
	print qq(valor $x\n);
}




print qq(ciclo FOR con arreglos  \n);
#for(inización; evaluación ; aumento/decremento)
for ($x=0; $x<@numeros; $x++){
	print qq(Contenido de celda $numeros[$x]\n);
	print qq(valor $numeros\n);
}



print qq(ciclo FOR con arreglos colores  \n);
#for(inización; evaluación ; aumento/decremento)
for ($x=0; $x<@colores; $x++){
	print qq(Contenido de celda $colores[$x]\n);
	print qq(valor $colores\n);
}
