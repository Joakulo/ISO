if [ $# -ne 1 ]; then exit 1; fi

if [ -e $1 ]; then 
	if [ -d $1 ]; then echo "$1 es un directorio"; fi
	if [ -f $1 ]; then echo "$1 es un archivo"; fi
else
	echo "Desea crear un directorio o un arhcivo?"
	select opcion in Directorio Archivo Cancelar 
	do
		case $opcion in
			Directorio) 
				mkdir $1
				echo "Directorio $1 creado."
				exit 0
				;;
			Archivo)
				$(touch $1)
				echo "Archivo $1 creado."
				exit 0
				;;
			*) exit ;;
		esac
	done
fi
