calculadora(){
	if [ $# != 3 ]; then
		exit 1
	fi

	case $1 in
		"+")
			echo "$2 + $3 = $[ $2 + $3 ]"
			;;
		"-")
			echo "$2 - $3 = $[ $2 - $3 ]"
			;;
		"x")
			echo "$2 * $3 = $[ $2 * $3 ]"
			;;
		"/")
			echo "$2 / $3 = $[ $2 / $3 ]"
			;;
		*)
			echo "Operador invalido $1 $2 $3"
			exit 1
			;;
	esac
}

echo "Ingrese dos numeros"
read num1 num2
echo "Ingrese una operacion (+, -, x, /)"
read op
calculadora $op $num1 $num2
