#!/bin/bash

count=0

until [ $count -eq 3 ]; do
    echo "Introduce un número:"
    read num

    if [[ "$num" =~ ^-?[0-9]+$ ]]; then
        nums[$count]=$num
        ((count++))
    else
        echo "No es un número válido."
    fi
done

sum=$((nums[0] + nums[1] + nums[2]))
prod=$((nums[0] * nums[1] * nums[2]))

echo "Suma: $sum"
echo "Producto: $prod"

# Comparaciones numéricas
max=${nums[0]}
min=${nums[0]}

for n in "${nums[@]}"; do
    [[ $n -gt $max ]] && max=$n
    [[ $n -lt $min ]] && min=$n
done

echo "Mayor: $max"
echo "Menor: $min"
