#!/usr/bin/perl-w

##Arreglos###  

open R, "./Ecoli_k12.faa" or die "ERROR  R $!";

while($line = <R>){
	##print qq($linea\n);
	@arreglo = split(/ref/,$linea); ###Variable del tipo arreglo 
	print qq(@arreglo\n); #imprime el arreglo
	print qq($arreglo[3]\n); 
}

