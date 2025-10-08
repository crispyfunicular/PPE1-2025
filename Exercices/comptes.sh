#!/usr/bin/bash

echo "Nombre de lieux en 2016:"
cat "../Exercice1/ann/2016/"*.ann | grep Location | wc -l
echo "Nombre de lieux en 2017:"
cat "../Exercice1/ann/2017/"*.ann | grep Location | wc -l
echo "Nombre de lieux en 2018:"
cat "../Exercice1/ann/2018/"*.ann | grep Location | wc -l