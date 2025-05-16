#!/bin/bash

lista=()
flag=0


while [[ $flag -eq 0 ]]; do

	read -p 'Introduce a word, that will stored: ' string
	if [[ "$string" != ":>" ]]; then
		lista+=("$string")
	else
		flag=1
	fi
done

read -p 'Introduce a namefile: ' file

if [[ -f $file ]]; then
	echo 'The file exists'
else
	touch $file
	echo ${lista[@]} > $file
fi


