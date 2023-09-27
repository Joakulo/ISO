if [ $# -eq 0 ]; then
	echo "Deben ingresarse parametros."
	exit 1
fi

inexistentes=0
i=0

for elem in $@
do
	i=$(expr $i + 1)
	if [ $((i % 2)) -eq 1 ]; then
		if [ -d $elem ]; then
			echo "El parametro $elem es un directorio."
		elif [ -f $elem ]; then
			echo "El parametro $elem es un archivo."
		else
			inexistentes=$((inexistentes + 1))
		fi
	fi
done

echo $inexistentes
