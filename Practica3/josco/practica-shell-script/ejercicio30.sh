#!/bin/bash

if [ $# -ne 0 ]; then
	echo "No se deben ingresar parametros"
	exit 1
fi

script_dir=$(pwd)
ejecutables=($(find * -type f -name "*.exe"))
cd $HOME

if [ ! -d "bin" ]; then
	echo "Se ha creado el directorio ~/bin/."
	mkdir "bin"
fi

cd "$script_dir"

for archivo in ${ejecutables[@]}; do
	echo "$archivo"
	sudo mv "$archivo" "$HOME/bin/"
done

if [ ${#ejecutables[@]} -eq 0 ]; then
	echo "No se han movido archivos"
else
	echo "Se han movido ${#ejecutables[@]} archivos ejecutables"
fi
