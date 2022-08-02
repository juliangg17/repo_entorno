#!/bin/bash

##################################################################################################################################################
# Selección de oración y/o párrafo en base a un número de entrada.
# Es decir, se puede establecer como entrada “O” o “P” para indicar oración o párrafo
# y luego un número (un párrafo se distingue de otro con un punto y aparte,
# las oraciones vía un punto seguido).
##################################################################################################################################################

#Este script recibe tres argumentos: $1 el nombre del archivo, $2 letra O (oración) / letra P (párrafo)  y $3 un número.

echo "Este programa recibe una entrada (un archivo, la letra O/P y un número) y devuelve una oración o párrafo, según corresponda."
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

echo "Ingrese O (de oración) / P (de párrafo):"
read O_P

echo "Ingrese un número:"
read NUMERO

if [[ $O_P == "O" ]]
then
cat $ARCHIVO | tr "/." '\n' | tr -s '\n' '\n' > temp.txt
else
cat $ARCHIVO > temp.txt
fi

cat temp.txt | sed -n $NUMERO','$NUMERO'p;'$(($NUMERO+1))'q'

rm -f temp.txt

exit 0

;;
esac
