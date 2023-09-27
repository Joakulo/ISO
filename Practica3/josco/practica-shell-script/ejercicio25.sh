if [ $# -ne 1 ] && [ $# -ne 2 ]
then 	echo "Cantidad de parametros incorrecta (1/2)."
	echo "Cantidad de parametros ingresados: $#"
	exit 1
fi

usuarios=($(getent group users | cut -d: -f4 | tr ',' ' '))
#'getent group nombre_del_grupo' obtiene información sobre el grupo
#nombre_del_grupo:x:ID_del_grupo:lista_de_usuarios
#users:x:100:josco,usuario2,usuario3

if [ $# -eq 1 ]; then
	case $1 in
		"-l")
			echo ${#usuarios[@]}
			exit 0
			;;
		"-i")
			echo ${usuarios[@]}
			exit 0
			;;
		*)
			echo "Parametro erroneo (-l / -i)"
			exit 2
			;;
	esac
fi

if [ $1 = "-b" ]
then
	if [ $2 -ge 0 ] && [ $2 -lt ${#usuarios[@]} ]; then
		echo "${usuarios[$2]}"
	else
		echo "No existe usuario en la posicion $2"
	fi
fi
