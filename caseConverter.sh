#!/bin/bash

##################################################################################################################################################
# Invertir minúsculas a mayúsculas, y viceversa, de todas las palabras.
##################################################################################################################################################

echo "Este programa invierte minúsculas y mayúsculas (y viceversa)."
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

cat $ARCHIVO | tr 'A-Za-z' 'a-zA-Z' # tr invierte el case de todas las palabras contenidas en el archivo procesado

exit 0

;;
esac


