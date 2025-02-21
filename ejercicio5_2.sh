#!/bin/bash

# script que comprueba si una serie de usuarios pasados
# como parametro existen en el sistema  usando el archivo /etc/passwd para realizar la verificacion

# primero comprobamos si se ha pasado algun parametro para poder llevar a cabo la finalidad de este ejercicio
if [ "$#" -eq  0 ]; then 
	echo "No has proporcionado ningun usuario"
	exit 1
fi

# ahora vamos a usar un bucle for para recorrer cada una de los parámetros
#  pasados y ver si dichos usuarios  se encuentran en el sistema

for elusuario in "$@"; do
	if grep -q "^$elusuario:" /etc/passwd; then
		echo "El usuario $elusuario ya existe en el sistema"
	else
		echo "El usuario $elusuario no existe en el sistema"
	fi
done

# greq -q no saca nada por pantalla. Simplemente da un codigo de operacion 0 si
# la operacion a sido exitosa(se ha encontrado el patron buscado) y 1 en caso contrario
