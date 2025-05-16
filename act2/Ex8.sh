#!/bin/bash

until [[ ${#pass} -ge 2 && "$pass" =~ [A-Z] && "$pass" =~ [0-9] ]]; do
    echo "Introduce una contraseña válida:"
    read pass
    echo "La contraseña debe tener al menos 8 caracteres, una mayúscula y un número."
done

echo "Contraseña válida."
