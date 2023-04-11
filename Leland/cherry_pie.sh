#!/bin/bash 

file="cherry_pie.sh"

while IFS= read -r line
do
	all= ${line%/cherry_pie.sh}
	empty=${all#*../}
	
	if [ -s $line ]
	then
	    echo "File is not empty"
	else
	    echo "File is empty"
	    cp $file $line
	fi
done < "./log.log"

echo "$(date +%Y-%m-%d_%H:%M:%S) ${PWD##*/} ordered a cherry pie " >> "../white_lodge.txt"
echo "The end"

