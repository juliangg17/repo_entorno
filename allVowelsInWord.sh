#!/bin/bash

#######################################################################################################################################
# Mostrar palabras que tengan todas las vocales incluidas al menos una vez (ejemplos: murciélago y sexagésimocuarto),
# mostralas en orden alfabético, si hay más de una aparición colocar entre paréntesis al lado de la misma dicha cantidad de apariciones.
######################################################################################################################################

echo "Este programa muestra las palabras que tengan incluidas todas las vocales al menos una vez. Ej: murciélago, sexagésimocuarto"
echo "¿Desea seguir? [S/N]"
read RESP

case $RESP in
[Nn])

        bash Enunciadotp.sh
        exit 0
;;

        [Ss])

        echo "Ingrese el nombre del archivo que desea procesar:"
	echo
        read ARCHIVO
	echo
        sed 'y/áéíóú/aeiou/' $ARCHIVO > temp.txt                #elimina los acentos

        cat temp.txt | tr [:upper:] [:lower:] | tr ' ' '\n' | sed 's/[^a-zA-Z ]//g' > temp2.txt

        #arriba pasa todo a minúsculas, pone una palabra por línea, borra caracteres no alfabéticos


	grep -i a temp2.txt | grep e | grep i | grep o | grep u > temp.txt

	#Arriba vamos filtrando progresivamente las palabras que contienen la vocal especificada

	> temp2.txt	#Limpiamos el archivo para reutilizarlo

	while read line
	do
		rep=$(grep -o -i $line temp.txt  | wc -l)	#Guardamos la cantidad de veces que se repite una palabra dentro de una var
		if [[ $rep -gt 1 ]]
		then
			echo $line "("$rep")" >>  temp2.txt 	#Si se repite mas de una vez, detallamos entre () cuantas veces y guardamos
		else
			echo $line >> temp2.txt			#Sino guardamos directamente la palabra
		fi
	done < temp.txt

	echo
	cat temp2.txt | sort | uniq
	echo
	rm temp.txt temp2.txt

	exit 0

;;
esac

