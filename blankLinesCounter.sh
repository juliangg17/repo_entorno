#!/bin/bash

#########################################################################################################
#Este script cuenta las líneas en blanco de un archivo txt. El argumento $1 es el nombre del archivo.
#########################################################################################################

grep -cx '' $1 	#La opción x selecciona solamente aqellas líneas donde '' coincide con toda la línea. 
		#La opción c sirve para devolver la cantidad de líneas que concuerdan con lo que se filtra.

exit 0
