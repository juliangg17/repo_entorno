#!/bin/bash

#Listar lexicográficamente las palabras que se presenten con todas sus letras
#en mayúsculas (no repetir palabras en el listado).
#Ejemplos: EJEMPLO, CANCIÓN

#agregar linea p limpiar archivo, sacar alfanumericos y convertir espacios en /n

cat $1 | grep "^[A-Z]*$" | sort | uniq

exit 0
