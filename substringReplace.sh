#!/bin/bash
cp $3 "copia$3"


sed -i "s/á/a/" "copia$3"

sed -i "s/$1/$2/" "copia$3"
cat "copia$3"

exit 0
