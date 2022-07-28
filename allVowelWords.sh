#!/bin/bash

#Mostrar palabras que tengan todas las vocales incluidas al menos una vez
#(ejemplos: murciélago y sexagésimocuarto), mostralas en orden alfabético, si
#hay más de una aparición colocar entre paréntesis al lado de la misma dicha
#cantidad de apariciones.

touch temp_words.txt
touch temp_words_2.txt

archivo="temp_words.txt"
archivo2="temp_words_2.txt"

grep -i a $1 | grep e | grep i | grep o | grep u >>  $archivo

while read line
do
	rep=$(grep -o -i $line $archivo  | wc -l)
	if [[ $rep -gt 1 ]]
	then
		echo $line "("$rep")" >>  $archivo2 
	else
		echo $line >> $archivo2
	fi
done < $archivo


cat temp_words_2.txt | sort | uniq  


rm -f temp_words.txt
rm -f temp_words_2.txt


exit 0


