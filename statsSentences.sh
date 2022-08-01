#!/bin/bash

##################################################################################################################################################
# Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).
##################################################################################################################################################

echo "Este programa devuelve la longitud de oraciones de un archivo de texto (la más corta, la más larga y el promedio de longitud)."
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

	cat $ARCHIVO | tr '.' '\n' > temp.txt  #con tr se reemplazan los espacios por saltos de línea
                                               #se guarda el archivo procesado como temp.txt

	OR_LARGA=$(cat temp.txt | wc -L)					#wc -L devuelve el largo de la oración más larga
	OR_MIN=$(cat temp.txt | head -n1 | tr -d '\n' | wc -c)			#head -n1 me devuelve la primer línea, que es la que uso para empezar a comparar
										#con tr -d '\n' elimino el salto de línea para que no lo cuente
										#wc -c cuenta la cantidad de caracteres

	while read line; do						#con este bucle comparo línea por línea para determinar la oración más corta
		LONG=$(echo -n $line | wc -m)
		if [ $LONG -lt $OR_MIN ] && [ $LONG -ne '0' ]; then OR_MIN=$LONG; fi
	done < temp.txt

	CARACTERES=$(cat temp.txt | wc -c)			#wc -c cuenta la cantidad de caracteres totales del archivo (incluidos los saltos de línea)
	LINEAS=$(cat temp.txt | wc -l)				#wc -l me da el total de lineas (oraciones) del archivo
	PROMEDIO=$((($CARACTERES-$LINEAS)/$LINEAS))             #$CARACTERES - $LINEAS para que no cuente los saltos de línea

	rm temp.txt

	echo "La oración más larga tiene $OR_LARGA caracteres"
	echo "La oración más corta tiene $OR_MIN caracteres"
	echo "El largo promedio de las oraciones es de $PROMEDIO caracteres"

	exit 0
;;
esac






