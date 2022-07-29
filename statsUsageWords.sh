#!/bin/bash

#ver acentos

cat $1 | tr \  '\n' | tr -c -d '[:alpha:]\n' | tr '[:upper:]' '[:lower:]' | grep ^.... | sort | uniq -c | sort -nr | head -10



