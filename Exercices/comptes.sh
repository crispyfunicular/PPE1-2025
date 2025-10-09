#!/usr/bin/bash

for year in 2016 2017 2018
do
    echo "Nombre de lieux en $year:"
    cat "../Exercice1/ann/$year/"*.ann | grep Location | wc -l
done
