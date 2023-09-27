pila=()

push(){
	if [ $# -ne 1 ];
	then echo "Ingrese un solo valor"
	else pila+=($1)
	fi
}

pop(){
	if [ ${#pila[@]} -gt 0 ]; then 		#-gt equivale a > (greater than)
		popeado=${pila[${#pila[@]}-1]}		#Obtiene el ultimo elemento pila[ longitud_del_array - 1 ]
		unset pila[${#pila[@]}-1]		#Elimina el ultimo elemento de la pila
		echo "$popeado"
	else
		echo "Pila vacia"
	fi
}

length(){
	echo "${#pila[@]}"
}

print(){
	echo "${pila[@]}"
}


#TESTEO
echo "Tamaño $?"
echo "Push"
push 1
push 2
push 3
push 4
push 5
push 6
push 7
push 8
push 9
push 10
echo "Tamaño $(length)"
echo "Pop"
pop 
pop
pop
echo "Tamaño $(length)"
print
