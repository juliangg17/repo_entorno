#!/bin/bash

######################################################################################################################################
# Detectar palabras que tengan una sola vocal diferente y más de tres letras (ejemplos: yarará, menesteres, cómodo) , 
# mostrarlas lexicográficamente, es decir, siguiendo el orden en el que aparecen en el diccionario. (sin repetir e
# ignorar letras acentuadas).
######################################################################################################################################

echo "Este programa muestra lexicográficamente las palabras que se presentan con todas sus letras en mayúsculas sin repetirlas"
echo "¿Desea seguir? [S/N]"
read RESP

case $RESP in
[Nn])

        bash Enunciadotp.sh
        exit 0
;;

        [Ss])

        echo "Ingrese el nombre del archivo que desea procesar:"
        read ARCHIVO


	sed 'y/áéíóú/aeiou/' $ARCHIVO > temp.txt				# Limpio los acentos
	cat temp.txt | sed 's/[^a-zA-Z ]//g' | tr ' ' '\n' > temp2.txt		# Limpio caract. esp. y reemplazo espacios por saltos de linea
	rm temp.txt

	grep -v "[aeio]" temp2.txt >> temp3.txt					# Guardo todas las palabras que no contengan a,e,i,o
	grep -v "[aeiu]" temp2.txt >> temp3.txt
	grep -v "[aeou]" temp2.txt >> temp3.txt
	grep -v "[aiou]" temp2.txt >> temp3.txt
	grep -v "[eiou]" temp2.txt >> temp3.txt

	cat temp3.txt | tr -s "\n" > temp2.txt					# Quito los saltos de linea

	> temp3.txt

	while read line
	do
		len=$(echo ${#line})						# Guardo la longitud de cada linea en una variable len
		if [ $len -gt 3 ]						# Si la palabra tiene mas de 3 letras, la guardo
		then
			echo $line >> temp3.txt
		fi

	done < temp2.txt

	grep "[aeiou]" temp3.txt 						# Devuelvo solo las palabras que tienen vocales
	rm temp3.txt temp2.txt

	exit 0

;;
esac
