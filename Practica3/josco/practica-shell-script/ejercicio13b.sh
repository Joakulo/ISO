select opcion in Listar Donde-estoy Quien-esta
do
	case $opcion in
		Listar) echo "Contenido del directorio actual: "
			echo $(ls)
			;;
		Donde-estoy) echo "Posicion actual en el sistema de archivos: "
			echo $(pwd)
			;;
		Quien-esta) echo "Usuarios conectados: "
			echo $(who)
			;;
		*) exit;;
	esac
done
