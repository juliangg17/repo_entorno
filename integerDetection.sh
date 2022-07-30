#!/bin/bash

#################################################################################################################################
# Detectar números enteros dentro del texto y mostrarlos de menor a mayor, evitando repeticiones. Ejemplo: 123 o 22065
# Ayuda: utilizar una expresión regular.Reducción de complejidad: no considerar números reales o en otra notación,
# por ejemplo: 33,2 o 13,4 en estos casos tratar cada parte como un número independiente.
#################################################################################################################################


echo "Este programa muestra sin repetir los numeros enteros que existen dentro del texto en un archivo de menor a mayor. Ej: 123 o 22065"
echo "¿Desea seguir? [S/N]"
read RESP

case $RESP in
[Nn])

        bash Enunciadotp.sh
        exit 0
;;

        [Ss])

	echo "Ingrese el nombre del archivo que desea procesar" 
	read ARCHIVO

	cat $ARCHIVO | tr ', ' '\n' | sed 's/[^0-9]//g'| tr -s '\n' '\n' | uniq | sort

	exit 0

;;
esac

