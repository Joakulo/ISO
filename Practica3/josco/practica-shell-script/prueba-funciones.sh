sumar(){
	return $(( $1 + $2 ))
}

cadena(){
	echo "Hola $1"
}

sumar 2 3
echo $?
cadena Josco
