#!/bin/bash

# Detectar palabras que tengan una sola vocal diferente y más de tres letras
# (ejemplos: yarará, menesteres, cómodo) , mostrarlas lexicográficamente, es
# decir, siguiendo el orden en el que aparecen en el diccionario. (sin repetir e
# ignorar letras acentuadas).


cat $1 | grep "\([AEIOUaeiou]\)[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]\1"
