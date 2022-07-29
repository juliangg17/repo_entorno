#!/bin/bash

#################################################################################################################################################
#Mostrar palabras palíndromo (ignorar mayúsculas/minúsculas y acentos en este caso). Ejemplos: Neuquén, radar, reconocer
#################################################################################################################################################

echo "Este programa muestra las palabras palíndromo (por ej. Nuequén o radar)."
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

	sed 'y/áéíóú/aeiou/' $ARCHIVO > temp.txt 		#elimina los acentos

	cat temp.txt | sed 's/[^a-zA-Z ]//g' | tr [:upper:] [:lower:] | tr ' ' '\n' | tr -s '\n' '\n'> temp2.txt

	#arriba elimina los caracteres no alfanuméricos, pasa todo a minúsculas, pone una palabra por línea y borra los saltos de línea vacíos

	echo 'Las sguientes palabras son palíndromos:'
	while read line; do
		NORMAL=$(echo $line)
		REVERSO=$(echo $line | rev)
		LONG=$(echo $line | tr -d '\n' | wc -c)
		if [ "$NORMAL" == "$REVERSO" ] && [ $LONG -gt 1 ]; then echo $line; fi
	done < temp2.txt

	#arriba compara cada línea (palabra) con su reverso. Las palabras de una letra no se analizan.

	rm temp.txt
	rm temp2.txt

	exit 0
;;
esac
