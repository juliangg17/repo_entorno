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

	grep -cx '' $ARCHIVO #temp.txt	#La opción x selecciona solamente aqellas líneas donde '' coincide con toda la línea. 
					#La opción c sirve para devolver la cantidad de líneas que concuerdan con lo que se filtra.

	exit 0
;;
esac
