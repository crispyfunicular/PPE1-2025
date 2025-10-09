#!/usr/bin/bash

entity=$1

if ! [[ "$entity" =~ ^(Location|Person|Organization)$ ]]
then
    echo "usage: $0 entity"
    echo "invalid entity: $entity"
    exit 1
fi

cat "../Exercice1/ann/2016/"*.ann | grep $entity | wc -l
cat "../Exercice1/ann/2017/"*.ann | grep $entity | wc -l
cat "../Exercice1/ann/2018/"*.ann | grep $entity | wc -l
