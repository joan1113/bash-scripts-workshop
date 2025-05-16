#!/bin/bash

until [[ -d "$dir" ]]; do
    echo "Introduce una ruta de directorio válida:"
    read dir
done

echo "Permisos: $(ls -ld "$dir" | cut -d ' ' -f1)"
echo "Número de elementos: $(ls -1A "$dir" | wc -l)"
echo "Contenido:"
ls "$dir"
