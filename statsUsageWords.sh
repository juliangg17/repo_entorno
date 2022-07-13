#!/bin/bash

MIN=1000

while read line; do
	LONG=$(echo -n $line | wc -m)
	if [ $LONG -lt $MIN ]; then MIN=$LONG; fi
done < $1

LINES=$(wc -l < $1)
SUM=$(wc -c < $1)
AVG=$((($SUM-$LINES)/$LINES))
MAX=$(wc -L < $1)

echo "La palabra más larga tiene $MAX caracteres"
echo "La palabra más corta tiene $MIN caracteres"
echo "El largo promedio de las palabras es de $AVG caracteres"

exit 0
