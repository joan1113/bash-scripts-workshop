#!/bin/bash

# input del usuario
read -p 'Introduce a file name: ' archivo


# Muestra solo (-v) las que no empiezan por #
grep -v '^#' "$archivo" > archivo_temporal

mv archivo_temporal "$archivo"

echo 'comment are eliminated'


read -p 'Input the word/phrase to search: ' string


if grep -q "$string" "$archivo"; then
	# Existe
	echo 'Word or phrase '$string' exists :)'
else
	# No existe
	echo 'Word or phrase '$string' doesn´t exists :)'
fi

read -p "Introduce a string to add on the footer: " newword

echo "#$newword" >> "$archivo"

echo "Phrase or word added to the file's footer"
