select opcion in Hombre Mujer
do
	case $opcion in
		Hombre) echo "Elegiste 1" ;;
		Mujer) echo "Elegiste 2" ;;
		*) exit;;
	esac
done
