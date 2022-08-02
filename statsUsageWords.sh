#!/bin/bash

################################################################################################################################################
#Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras.
#Mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos).
#Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.
#################################################################################################################################################

echo "Este programa filtra palabras de 4 letras o más, y de éstas selecciona las 10 más usadas"

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

sed 'y/áéíóú/aeiou/' $ARCHIVO > temp.txt	#elimina los acentos del archivo y guarda los cambios en temp.txt

cat temp.txt | tr \  '\n' | tr -c -d '[:alpha:]\n' | tr '[:upper:]' '[:lower:]' | grep ^.... | sort | uniq -c | sort -nr | head -10

rm temp.txt

exit 0

;;
esac



