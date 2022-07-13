#!/bin/bash

while read line; do
	name=$(echo -n $line)
	#echo ${name^}
	if [ $name = ${name^} ]; then echo $name; fi
done < $1

exit 0
