#!/bin/bash

#Detectar números enteros dentro del texto y mostrarlos de menor a mayor,
#evitando repeticiones. Ejemplo: 123 o 22065
#Ayuda: utilizar una expresión regular.
#Reducción de complejidad: no considerar números reales o en otra notación,
#por ejemplo: 33,2 o 13,4 en estos casos tratar cada parte como un número
#independiente.

regex="[0-9]"

grep -oP $regex $1 | sort | uniq

exit 0
	
