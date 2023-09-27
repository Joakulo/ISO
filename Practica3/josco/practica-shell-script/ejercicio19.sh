#!/bin/bash

if [ $# -ne 0 ]; then
	echo "No se deben ingresar parametros"
	exit 1
fi

echo "Menu de scripts"
select opcion in Salir $(ls)
do
	case $opcion in
		"Salir")
			echo "Terminado"
			exit ;;
		*)
			bash $opcion
			;;
	esac
done
