#!/bin/bash
# Script que solicita un dominio y devuelve su IP

read -p "Intro un dominio " dominio

# ahora, le asignamos a la variable ip el resultado de buscar la ip del dominio proporcionado

ip=$(dig +short "$dominio")

# en funcion del valor almacenado en la variable IP se mostrara un mensaje u otro
if [ -z "$ip" ]; then
	echo "No se ha encontrado la IP del dominio $dominio"
else 
	echo "La IP del dominio $dominio es $ip"
fi


