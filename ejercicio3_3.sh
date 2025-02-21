#!/bin/bash

# primero tenemos que verificar si se  ha introducido  la ruta como parametro

if [ -z "$1" ]; then
	echo "No se ha pasado el parametro esperado."
	exit 1
fi
# comprobamos si el fichero existe
if [ ! -e "$1" ]; then	
	echo "No existe el fichero especificado"
	exit1
fi
# Comprueba si el fichero que se le pasa como parametro tiene permisos de ejecucion

if [ -x "$1" ]; then
	echo "El fichero iene permisos de ejecución."
	echo "A continuación, lo puedes comprobar..."
	ls -l "$1"
else
	echo "Este fichero no tiene permisos de ejecucion."
fi

