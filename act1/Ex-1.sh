#!/bin/bash

read -p 'Enter a number please: ' Number

if [ $Number -gt 0 ]; then
	echo 'Is positive'
elif [ $Number -lt 0 ]; then
	echo 'Is Negative'
else
	echo 'Is cero'
fi
