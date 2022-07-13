#!/bin/bash

while read line; do
	NORMAL=$(echo $line | tr [:lower:] [:upper:])
	REVERSO=$(echo $line | rev | tr [:lower:] [:upper:])
	if [ "$NORMAL" == "$REVERSO" ]; then echo $line; fi
done < $1

exit 0
