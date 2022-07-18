#!/bin/bash

##################################################################################################################################################
# Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).
##################################################################################################################################################

cat $1 | sed 's/[^a-zA-Z0-9 ]//g' | tr ' ' '\n' > temp.txt 	#con sed se eliminan todos los símbolos no alfanuméricos
								#con tr se reemplazan los espacios por saltos de línea
								#se guarda el archivo procesado como temp.txt

PAL_LARGA=$(cat temp.txt | wc -L)				#wc -L devuelve el largo de la palabra más larga
PAL_MIN=$(cat temp.txt | head -n1 | tr -d '\n' | wc -c)		#head -n1 me devuelve la primer línea, que es la que uso para empezar a comparar
								#con tr -d '\n' elimino el salto de línea para que no lo cuente
								#wc -c cuenta la cantidad de caracteres

while read line; do						#con este bucle comparo línea por línea para determinar la palabra más corta
	LONG=$(echo -n $line | wc -m)
	if [ $LONG -lt $PAL_MIN ] && [ $LONG -ne '0' ]; then PAL_MIN=$LONG; fi
done < temp.txt

PALABRAS=$(cat temp.txt | wc -w)				#wc -w me da el total de palabras del archivo
CARACTERES=$(cat temp.txt | wc -c)				#wc -c me da el total de caracteres de todas las palabras del archivo
PROMEDIO=$((($CARACTERES)/$PALABRAS))

rm temp.txt

echo "La palabra más larga tiene $PAL_LARGA caracteres"
echo "La palabra más corta tiene $PAL_MIN caracteres"
echo "El largo promedio de las palabras es de $PROMEDIO caracteres"

exit 0
