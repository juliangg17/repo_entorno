#!/bin/bash

# Detectar palabras que tengan una sola vocal diferente y más de tres letras
# (ejemplos: yarará, menesteres, cómodo) , mostrarlas lexicográficamente, es
# decir, siguiendo el orden en el que aparecen en el diccionario. (sin repetir e
# ignorar letras acentuadas).

# agregar limpieza de archivo

cat $1 | grep "\([AEIOUaeiou]\)[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]\1"

#agregar comprobacion > 3 letras


