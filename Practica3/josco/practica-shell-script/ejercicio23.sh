numeros=(1 2 3 4 5 6 7 8 9 10)

cant_impares=0
impares=()

for num in ${numeros[@]}
do
	if [ $((num % 2)) -eq 0 ]
	then echo "$num"
	else 
		cant_impares=$( expr $cant_impares + 1)
		impares+=("$num")
	fi
done

echo -e "\nImpares:"
echo "$cant_impares"
echo "${impares[@]}"
