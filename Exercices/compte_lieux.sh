#!/usr/bin/bash

path=$1
year=$1
month=$2
number=$3

cat ../Exercice1/ann/$path/${year}_${month}*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -n | tail -n $number