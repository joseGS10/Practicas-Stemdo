#!/bin/bash
echo El nombre de mi script es $0
echo El número de parámetros pasados es $#
echo La lista de parámetros pasados es: $@
#  iden=$(id | cut -d" " -f1 | cut -d"=" -f2 | cut -d"(" -f1)
echo El id del usuario que ejecuta este script es $(id -u)
echo El nombre de usuario es $USER
echo "El directoio Home del usuario es " $HOME
echo El directorio actual es $(pwd)
