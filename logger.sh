#!/bin/bash

log_work () {
	name=$1
	work_hours=0

	if [ $# -eq 2 ]; then month=$2; else month=january; fi

	file=$(pwd)/logs/"$name"/"$month".csv

	days=$(sed -n '/[0-9]/p' "$file" | cut -d ',' -f 3)

	for day in $days
	do
		work_hours=$(( "$work_hours" + "$day" ))
	done

	echo "$work_hours"
}
