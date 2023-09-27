#!/bin/bash

if [ $# -ne 0 ]; then
	echo "No deben ingresarse parametros."
	exit 1
fi

archivos=($(find "/home" -type f -name "*.doc"))

verArchivo(){
	if [ $# -ne 1 ]; then
		echo "Se debe ingresar un nombre de archivo como parametro."
	else
		encontrado=0
		for archivo in "${archivos[@]}"
		do
			if [ "$archivo" = "$1" ]; then
				cat "$archivo"
				encontrado=1
				break
			fi
		done
	
		if [ $encontrado -eq 0 ]; then
			echo "Archivo no encontrado"
			return 5
		fi
	fi
}

cantidadArchivos(){
	echo "${#archivos[@]}"
}

borrarArchivo(){
	if [ $# -ne 1 ]; then
		echo "Se debe ingresar un nombre de archivo como parametro"
	else
		if [ -f $1 ]; then
			echo "Desea eliminar el archivo logicamente?"
			select opcion in Si No; do
				case $opcion in
					Si) break ;;
					No) rm $1; break ;;
				esac
			done

			nuevo_array=()
			for archivo in "${archivos[@]}"; do
				if [ "$archivo" != "$1" ]; then
					nuevo_array+=($archivo)
				fi
			done

			archivos=(${nuevo_array[@]})
		else
			echo "Archivo no encontrado"
			return 10
		fi
	fi
}

verArchivo "/home/josco/practica-shell-script/chau.doc"

verArchivo "/home/josco/hola.doc"

cantidadArchivos

borrarArchivo "/home/josco/practica-shell-script/chau.doc"

borrarArchivo "/home/nashe.doc"
