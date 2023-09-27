if [ $# -ne 0 ]; then
	echo "No se necesitan parametros"
	exit 1
fi

text=""
for archivo in *
do
	if [ -f "$archivo" ]; then
		text+=$(echo -e "\n $archivo" | tr -d 'aA' | tr 'a-zA-Z' 'A-Za-z')
		#Muestra el nombre del archivo, -e deja utilizar el \n
		#Toma la salida anterior y elimina las a y A
		#Toma la salida anterior e intercambia min por MAY y MAY por min
	fi
done
echo -e "$text"
