#!/bin/bash

#################################################################################################################################
# Listar lexicográficamente las palabras que se presenten con todas sus letras en mayúsculas (no repetir palabras en el listado).
# Ejemplos: EJEMPLO, CANCIÓN
#################################################################################################################################


echo "Este programa muestra lexicográficamente las palabras que se presentan con todas sus letras en mayúsculas sin repetirlas"
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

	cat $ARCHIVO | tr ' ' '\n' > temp.txt

	grep "^[A-Z]*$" temp.txt | sort | uniq > temp2.txt

	while read line
	do
        	len=$(echo ${#line})                                            # Guardo la longitud de cada linea en una variable len
        	if [ $len -gt 1 ]                                               # Si la palabra tiene mas de 3 letras, la guardo
        	then
                	echo $line
        	fi

	done < temp2.txt

	rm temp.txt temp2.txt

	exit 0

;;
esac
