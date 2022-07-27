#!/bin/bash

#Listar lexicográficamente las palabras que se presenten con todas sus letras
#en mayúsculas (no repetir palabras en el listado).
#Ejemplos: EJEMPLO, CANCIÓN

#agregar linea p limpiar archivo, sacar alfanumericos y convertir espacios en /n

regex="^[A-Z]*$"

touch = temp_words.txt

while read line
do
	if [[ $line =~ $regex ]] 
	then
		if grep -q $line temp_words.txt
		then
			continue
		else
			echo  $line >> temp_words.txt
		fi
	fi

done < $1

sort temp_words.txt
rm -f temp_words.txt
exit 0
