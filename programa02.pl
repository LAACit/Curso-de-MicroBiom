#!/usr/bin/perl -w
#variables escalares
#comienzan con el simbolo de $ puede recibir numeros 
#siempre con un punto y como ; al final
#el gato(haschtag) es para comentar 
#declaro variables 
$a = '';
$b = '';
$c = '';
#inilización de variables
$a = 34;
$b = 'sol';
$c = '2dol';

#función de imprimir 
# \n es un salto de linea al momento del print que se ve en el 
# promt
print qq(Variable a $a\n);
#print qq(Variable b  $b\n);
#print qq(Variable c  $c\n);


#hay varias formas de imprimir en perlera imprimir va entre ()
#print qq(Variables  $c $a $b \n);
#print qq($a $b $c \n); 


#los arreglos van con @

@arreglos_1 = (1,2,3,4,5);
@arreglo_2 = ('q','d','e','g');
@arreglo_3 = ('wq2','vf23','dfd3');

print qq(ARRAY_1 @arreglo_1\n);
print qq(ARRAY_2 @arreglo_2\n);
print qq(ARRAY_3 @arreglo_3\n);



