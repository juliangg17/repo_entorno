#!/bin/bash

#Detectar y listar las direcciones de mail encontradas dentro del texto,
#ordenarlas y evitar repeticiones. Ejemplo: nombre@dominio.com
#Ayuda: utilizar una expresión regular.

#agregar limpieza de archivo 

regex="^[a-z\._0-9]+@[a-z]+\.[a-z]{2,5}\.?[a-z]{2,5}?$"

touch temp_words.txt


while read line
do
	if [[ $line =~ $regex ]]
	then
		echo $line >> temp_words.txt
	fi
done < $1

sort temp_words.txt | uniq

rm -f temp_words.txt

exit 0
