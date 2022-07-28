#!/bin/bash

#########################################################################################################
#Este script cuenta las líneas en blanco de un archivo txt. El argumento $1 es el nombre del archivo.
#########################################################################################################

echo "Este programa cuenta las líneas en blanco de un archivo."
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

	cat $ARCHIVO | sed 's/[^a-zA-Z0-9 ]//g' | tr ' ' '\n' > temp.txt	#limpia el archivo de entrada de caracteres no alfanuméricos,
										#separa las palabras en líneas y guarda todo en temp.txt
	grep -cx '' temp.txt						 	#La opción x selecciona solamente aqellas líneas donde '' coincide con toda la línea. 
	rm temp.txt								#La opción c sirve para devolver la cantidad de líneas que concuerdan con lo que se filtra.

	exit 0
;;
esac
