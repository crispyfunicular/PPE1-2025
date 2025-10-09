#!/usr/bin/bash

year=$1
month=$2
number=$3

if ! [[ "$year" =~ ^[0-9]{4}|\*$ ]]
then
    echo "usage: $0 year month number"
    echo "invalid year: $year"
    exit 1
fi

if ! [[ "$month" =~ ^([0-9]{2}|\*)$ ]]
then
    echo "usage: $0 year month number"
    echo "invalid month: $month"
    exit 1
fi

if ! [ $number -gt 0 ]
then
    echo "usage: $0 year month number"
    echo "invalid number: $number"
    exit 1
fi

cat ../Exercice1/ann/$year/${year}_${month}*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -n | tail -n $number

