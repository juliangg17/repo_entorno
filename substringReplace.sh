#!/bin/bash

################################################################################################################################################
#Reemplazo de subcadenas, que considere diferencias entre minúsculas y mayúsculas, pero ignore acentos. Recibe dos cadenas, y cada aparición de
#cadena1 debe reemplazarse por la cadena2.
#Ejemplo: cadena1: tre cadena2: TRE las palabras: enTrepiso, entretenido, intrépido pasan a: enTrepiso, enTREtenido, inTREpido
################################################################################################################################################

#Este script recibe tres argumentos: $1 el nombre del archivo, $2 el texto original a reemplazar y $3 el texto nuevo

sed 'y/áéíóú/aeiou/' $1 > temp.txt		#elimina los acentos de $1 y guarda los cambios en temp.txt
sed "s/$2/$3/g" temp.txt 			#reemplaza las cadenas $2 por $3 en el archivo temp.txt
rm temp.txt
exit 0
