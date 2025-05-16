#!/bin/bash

read -p 'Enter a number please: ' Number

if [ $Number -eq 0 ]; then
	echo '¡¡The number is zero!!'
else
	echo 'The number have you entered, is not zero'
fi
