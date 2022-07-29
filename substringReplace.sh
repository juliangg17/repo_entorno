#!/bin/bash

################################################################################################################################################
#Reemplazo de subcadenas, que considere diferencias entre minúsculas y mayúsculas, pero ignore acentos. Recibe dos cadenas, y cada aparición de
#cadena1 debe reemplazarse por la cadena2.
#Ejemplo: cadena1: tre cadena2: TRE las palabras: enTrepiso, entretenido, intrépido pasan a: enTrepiso, enTREtenido, inTREpido
################################################################################################################################################

#Este script recibe tres argumentos: $1 el nombre del archivo, $2 el texto original a reemplazar y $3 el texto nuevo

echo "Este programa reemplaza una cadena de texto por otra dentro de un archivo."
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

        echo "Ingrese la cadena de texto a ser reemplazada:"
        read TXTORIG

        echo "Ingrese la nueva cadena de texto:"
        read TXTNUE

	sed 'y/áéíóú/aeiou/' $ARCHIVO > temp.txt	#elimina los acentos de $1 y guarda los cambios en temp.txt
	sed "s/$TXTORIG/$TXTNUE/g" temp.txt 			#reemplaza las cadenas $2 por $3 en el archivo temp.txt
	rm temp.txt
	exit 0

;;
esac
