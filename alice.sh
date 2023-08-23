#!/bin/bash

path=$(pwd)
month=$1
name=$(echo $0 | cut -d '/' -f 2 | cut -d '.' -f 1)
work_hours=0

if [ $# -eq 0 ]; then month=january; else month=$1; fi

file="$path"/logs/"$name"/"$month".csv

days=$(sed -n '/[0-9]/p' "$file" | cut -d ',' -f 3)

for day in $days
do
	work_hours=$(( "$work_hours" + "$day" ))
done

echo "$work_hours"
