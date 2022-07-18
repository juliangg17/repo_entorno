#!/bin/bash

################################################################################################################################################
#Reemplazo de subcadenas, que considere diferencias entre minúsculas y mayúsculas, pero ignore acentos. Recibe dos cadenas, y cada aparición de
#cadena1 debe reemplazarse por la cadena2.
#Ejemplo: cadena1: tre cadena2: TRE las palabras: enTrepiso, entretenido, intrépido pasan a: enTrepiso, enTREtenido, inTREpido
################################################################################################################################################

#Este script recibe tres argumentos: $1 el texto a reemplazar, $2 el texto nuevo y $3 el nombre del archivor los reemplazos

sed 'y/áéíóú/aeiou/' $3 > temp.txt		#elimina los acentos de $3 y guarda los cambios en temp.txt
sed "s/$1/$2/g" temp.txt 			#reemplaza las cadenas $1 por $2 en el archivo temp.txt
rm temp.txt
exit 0
