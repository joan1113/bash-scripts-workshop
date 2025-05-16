#!/bin/bash

until [[ "$option" == "3" ]]; do
	echo "1) Mostrar fecha y hora actual"
    	echo "2) Comprobar si existe un archivo"
    	echo "3) Salir"
    	read option

    	case $option in
        	1) date ;;
        	2) echo "Introduce el nombre del archivo:"
           	read file
           		if [[ -e "$file" ]];then
				echo "Existe"
			else
				echo "No existe" 
			fi ;;
        	3) echo "Adiós" ;;
        	*) echo "Opción no válida" ;;
    	esac
done
