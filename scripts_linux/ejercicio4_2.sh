#!/bin/bash

# Script  que solicita al usuario un nombre de usuario del sistema
# y  muestra de manera organizada los procesos pertenecientes a ese usuario

read -p "Intro el nombre de un usario del sistema " usuario

# tendremos que ver si dicho usuario existe en el sistema
# en cuyo caso mostraremos el nombre de sus procesos.
if id "$usuario" &>/dev/null; then
	echo "Los procesos del usuario $usuario son"
	ps -u "$usuario" | less
else
	echo "El usuario $usuario no existe en el sistema"
fi




