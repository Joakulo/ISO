vector1=(1 2 3 4 5 6 7 8 9)
vector2=(10 20 30 40 50 60 70 80 90)



for ((i = 0; i < ${#vector1[@]}; i++))
do
	echo "La suma de los elementos de la posicion $i de los vectores es $(expr ${vector1[$i]} + ${vector2[$i]})"
done
