#!/bin/bash

######################################################################################################################################
# Detectar y listar las direcciones de mail encontradas dentro del texto, ordenarlas y evitar repeticiones.
# Ejemplo: nombre@dominio.com.  Ayuda: utilizar una expresión regular.
#####################################################################################################################################


echo "Este programa devuelve las direcciones de mail que se encuentran dentro de un texto, ordenadas y sin repetir"
echo "¿Desea seguir? [S/N]"
echo
read RESP

case $RESP in
[Nn])

        bash Enunciadotp.sh
        exit 0
;;

        [Ss])

        echo "Ingrese el nombre del archivo que desea procesar:"
        read ARCHIVO

        sed 'y/áéíóú/aeiou/' $ARCHIVO > temp.txt                #elimina los acentos

        cat temp.txt | tr [:upper:] [:lower:] | tr ' ' '\n' | tr -s '\n' '\n' > temp2.txt

        #arriba pasa todo a minúsculas, pone una palabra por línea y borra los saltos de línea vacíos


	regex="^[a-z\._0-9]+@[a-z]+\.[a-z]{2,5}\.?[a-z]{2,5}?$"  # Expresion regular para encontrar correos electrónicos
	> temp.txt

	while read line
	do
		if [[ $line =~ $regex ]]
		then
			echo $line >> temp.txt
		fi
	done < temp2.txt

	sort temp.txt | uniq

	rm -f temp.txt temp2.txt

	exit 0
;;
esac
