if [ $# -ne 1 ]; then
	echo "Parametros necesarios: 1"
	echo "Parametros ingresados: $#"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "Directorio inexistente."
	exit 4
fi

suma=0
cd $1

for archivo in *
do
	if [ -f $archivo ] && [ -r $archivo ] && [ -w $archivo ]; then
		((suma++))
	fi
done
echo "Cantidad de archivos con permiso de lectura y escritura: $suma"
