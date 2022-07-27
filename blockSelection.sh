#!/bin/bash

if [ $3 == "O" ]
then
VAR='.'
else
VAR='.\n'
fi

cat $1 | tr $VAR '\n' | sed -n $2','$2'p;'$(($2+1))'q'

exit 0



