echo "Ingrese un caracter"
read char
case $char in
	[a-z]) echo "Es minuscula";;
	[A-Z]) echo "Es mayuscula";;
	[0-9]) echo "Es un numero";;
	*) echo "Es un caracter invalido";;
esac
