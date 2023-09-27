#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Parametros ingresados: $#"
	echo "Parametros necesarios: 1"
	exit 1
fi

extension=$1
text=""

for line in $(cat /etc/passwd)		#Muestra el contenido de /etc/passwd e itera con cada linea
do
	user=$(echo $line | cut -d: -f1)	#Se queda con la primer columnda de la linea (contiene el nombre del usuario)
	path=$(echo $line | cut -d: -f6)	#Se queda con la sexta columna de la linea (contiene el path del usuario)
	text+="$user: $(sudo find $path -name "*$1" | wc -l) \n"	#Busca en el path archivos que coincidan con el patron de $1, wc -l cuenta las lineas encontradas
done
echo "Finalizado"
echo -e "$cadena" > reporte.txt		#Imprime el resultado y lo redirecciona a un archivo, lo sobreescribe en caso de que ya exista
