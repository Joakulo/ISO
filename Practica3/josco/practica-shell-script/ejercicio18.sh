if [ $# -ne 1 ]; then
	echo "Parametros ingresados: $#"
	echo "Parametros necesarios: 1"
	exit 1
fi

if [ ! -d "/home/$1" ]; then		#Si no existe el directorio, no existe el usuario
	echo "Usuario inexistente"
	exit 2
fi

while [ $1 != "$(who | cut -d' ' -f1 | grep $1)" ]; do
	#Mientras que "user" sea distinto de
	#who muestra los usuarios logueados actualmente: nombre terminal/sesion fecha_y_hora_de_inicio_de_sesion
	#Me quedo con las primeras columnas del who: nombre de usuario
	#Busco el $1 en esas columndas, si lo encuentra = true, si no lo encuentra = false
	echo "Esperando que $1 inice sesion..."
	sleep 10
done

echo "Usuario $1 logueado en el sistema."
