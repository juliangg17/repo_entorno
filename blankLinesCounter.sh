#!/bin/bash

#########################################################################################################
#Este script cuenta las líneas en blanco de un archivo txt. El argumento $1 es el nombre del archivo.
#########################################################################################################

cat $1 | sed 's/[^a-zA-Z0-9 ]//g' | tr ' ' '\n' > temp.txt	#limpia el archivo de entrada de caracteres no alfanuméricos,
								#separa las palabras en líneas y guarda todo en temp.txt
grep -cx '' temp.txt			 	#La opción x selecciona solamente aqellas líneas donde '' coincide con toda la línea. 
rm temp.txt					#La opción c sirve para devolver la cantidad de líneas que concuerdan con lo que se filtra.

exit 0
