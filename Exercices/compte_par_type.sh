#!/usr/bin/bash

year="2016"

cat "../Exercice1/ann/$year/"*.ann | grep $1 | wc -l
