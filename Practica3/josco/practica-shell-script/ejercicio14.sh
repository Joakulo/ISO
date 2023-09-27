if [ $# != 3 ]; then exit 1; fi

if [ $2 != "-a" ] || [ $2 != "-b" ]; then echo "Parametro 2 invalido"; exit 2; fi

if [ -d "$1" ]; then
	cd $1
	for archivo in *; do
	if [ -f "$archivo" ]; then
		if [ "$2" = "-a" ]; then nombre="${archivo%.*}${3}.${archivo##*.}"
		else nombre="${3}${archivo%.*}.${archivo##*.}"; fi
		mv "$archivo" "$nombre"
	fi
	done
else	
	echo "El directorio $1 no existe."
fi
