#!/bin/bash

PS3='Elija> '
echo "¿Qué desea hacer?"
select opcion in "statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "caseConverter" "substringReplace" "blockSelection" "palindromeDetection" "oneVowelWords" "allUpperCase" "allVowelsInWord" "mailAddressDetection" "integerDetection" "SALIR"
do
[ -e $opcion ] && echo "Elegir opcion valida!" && continue
[ $REPLY == 15 ] && echo "Hasta luego" && break
#echo "Opcion elegida: " $opcion

echo "Ingrese a continuación el nombre del archivo que quiere procesar:"
read ARCHIVO
bash "$opcion.sh" $ARCHIVO
done

echo "Continua el código...."
exit 0
