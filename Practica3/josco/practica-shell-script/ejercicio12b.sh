operaciones(){

	if (( $# != 2 )); then exit 0; fi

	echo "$1 * $2 = $(( $1 * $2 ))"
	echo "$1 + $2 = $(( $1 + $2 ))"
	echo "$1 - $2 = $(( $1 - $2 ))"

	if [ $1 -gt $2 ]; then
		echo "$1 es mayor que $2"
	else
		echo "$2 es mayor que $1"
	fi
}

operaciones 3 4
