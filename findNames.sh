#!/bin/bash

#################################################################################################################################################
#Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
#Ejemplos: Mateo, Estonoesunnombre, Ana.
################################################################################################################################################

cat $1 | sed 's/[^a-zA-Z0-9 ]//g' | tr ' ' '\n' > depurado.txt	#con sed elimina el archivo de caracteres no alfanuméricos
								#con tr sustituye los espacios por saltos de línea
								#guarda los cambios en el archivo depurado.txt
while read line; do						#${name sombrero} devuelve un string en formato Nnnnnnnn
	name=$(echo -n $line)
	#echo ${name^}
	if [ $name = ${name^} ]; then echo $name; fi
done < depurado.txt

exit 0
