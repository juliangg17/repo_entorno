#!/bin/bash

#################################################################################################################################################
#Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
#Ejemplos: Mateo, Estonoesunnombre, Ana.
################################################################################################################################################

echo "Este programa identifica los nombres propios que encuentra en el archivo de texto (se identifican sólo si están en este formato Nnnnnn)."
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

	cat $ARCHIVO | sed 's/[^a-zA-Z ]//g' | tr ' ' '\n' | tr -s '\n' '\n' > temp.txt	#con sed elimina el archivo de caracteres no alfanuméricos
										#con tr sustituye los espacios por saltos de línea
										#guarda los cambios en el archivo depurado.txt
	while read line; do							#${name sombrero} devuelve un string en formato Nnnnnnnn
		LONG=$(echo -n $line | wc -c)					#${name sombrero sombrero} pone todo mayúsculas
		name=$(echo -n $line)				
		if [[ $name = ${name^} && $name != ${name^^} && $LONG -gt 1 ]]; then echo $name; fi #
	done < temp.txt

	rm temp.txt
	exit 0
;;
esac
