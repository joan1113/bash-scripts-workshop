
positivos=0
negativoS=0
zero=0

for num in "$@"; do
	# Comprueba si es numero
	if [[ $num =~ [0-9] ]]; then
		# mayor 
		if [[ $num -gt 0 ]]; then
			((positivos++))
		# menor
		elif [[ $num -lt 0 ]]; then
			((negativos++))
		# si no, es cero
		else
			((zero++))
		fi
	else
		echo 'Introduce a number pls'
	fi
done

echo "Numero +: '$positivos'"
echo "Numero -: '$negativos'"
echo "Zeros: '$zero'"

