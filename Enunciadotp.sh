#!/bin/bash

PS3='Elija> '
echo "En el menú siguiente usted podrá elegir un programa para devolver información de un archivo en particular."
echo "Eligiendo el nro de programa deseado podrá ver un detalle sobre la función del mismo."
echo "¿Qué desea hacer?"
select opcion in "statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "caseConverter" "substringReplace" "blockSelection" "palindromeDetection" "oneVowelWords" "allUpperCase" "allVowelsInWord" "mailAddressDetection" "integerDetection" "SALIR"
do
[ -e $opcion ] && echo "Elegir opcion valida!" && continue
[ $REPLY == 15 ] && echo "Hasta luego" && break
#echo "Opcion elegida: " $opcion

bash "$opcion.sh"
done

exit 0
