#!/bin/bash

MIN=1000

cat $1 | tr "." "\n" > temp.txt
#cat temp.txt

while read line; do
	LONG=$(echo -n $line | wc -m)
	if [ $LONG -lt $MIN ]; then MIN=$LONG; fi
done < temp.txt

LINES=$(wc -l < temp.txt)
SUM=$(wc -c < temp.txt)
AVG=$((($SUM-$LINES)/$LINES))
MAX=$(wc -L < temp.txt)

echo "La oración más larga tiene $MAX caracteres"
echo "La oración más corta tiene $MIN caracteres"
echo "El largo promedio de las oraciones es de $AVG caracteres"

#exit 0



