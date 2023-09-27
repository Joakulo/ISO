inicializar(){
	array=()
	dimF=0
	echo="Array creado."
}

inicializar_con_valores(){
        array=()
        dimF=$1
        for ((i=0; i<$1; i++)); do
		array+=($2)
	done
}

agregar_elem(){
	array+=($1)
	dimF=$(expr $dimF + 1)
	echo "Elemento agregado."
}

eliminar_elem(){
	if [ $1 -lt $dimF ]; then
		unset array[$1]
		echo "Elemento $1 eliminado"
	else
		echo "Posicion invalida"
	fi
}

longitud(){
	echo "Dimension fisica: $dimF"
	echo "Cantidad de elementos: ${#array[@]}"
}

imprimir(){
	echo "${array[@]}"
}


select opcion in Inicializar Agregar Eliminar Longitud Imprimir Inicializar_con_valores Salir
do
	case $opcion in
		Inicializar) inicializar ;;
		Agregar) 
			echo "Ingrese un valor para agregar al vector:"
			read elem
			agregar_elem $elem ;;
		Eliminar)
			echo "Ingrese una posicion a eliminar:"
			read pos
	 		eliminar_elem $pos ;;
		Longitud) longitud ;;
		Imprimir) imprimir ;;
		Inicializar_con_valores)
			echo "Ingrese la cantidad de espacios y el valor a insertar:"		
			read param1 param2
			inicializar_con_valores $param1 $param2 ;;
		Salir) echo "Finalizado"; exit 0
	esac
done
