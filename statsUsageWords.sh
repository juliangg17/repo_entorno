#!/bin/bash

cat animales | grep ^.... | tr \  '\n' | tr -c -d '[:alpha:]\n' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -10



