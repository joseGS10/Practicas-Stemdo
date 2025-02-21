#!/bin/bash
read -p  "Dame 3 numeros: " n1 n2 n3

# si un argumento no recibe valor de  entrada se le asigna null
# si se introcucen mas argumentos de los esperados  ese exceso se almacena en la variable que recoge el ultimo argumento

n1=${n1:-NULL}
n2=${n2:-NULL}
n3=${n3:-NULL}

# metemos todos los valores en una variable
todos="$n1 $n2 $n3"

# y los mostramos por pantalla
echo "Los valores son: $todos"





