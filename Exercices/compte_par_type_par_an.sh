#!/usr/bin/bash

cat "../Exercice1/ann/2016/"*.ann | grep $1 | wc -l
cat "../Exercice1/ann/2017/"*.ann | grep $1 | wc -l
cat "../Exercice1/ann/2018/"*.ann | grep $1 | wc -l