#!/bin/bash

# primero vamos a mostrar valores en columnas
# con el formato %-10s le estamos diciendo que de 10 espacios que toma ponga el texto a la izq
# y si el texto ocupa mas espacios lo esira para imprimir la cadena entera

printf "%-10s %-10s %-10s\n" "Nombre" "Apellido" "Estado Civil"
printf "%-10s %-10s %-10s\n" "Jose" "Rodriguez" "Casado"
printf "%-10s %-10s %-10s\n" "Rocio" "Martin" "Soltera"

# ahora vamos a  formatear numeros con decimales
# para ello el numero que acompaña a la f indica el numero de decimales con los que se quedara  el numero a representar
PI=3,1415
printf "PI vale: %.2f\n" $PI

# ahora vamos a probar a agregar caracteres especiales a la salida
# para ello hacemos uso de \ para decirle que el caracter que lleva a continuacion tiene tratamiento de caracter especial
printf "Uno\t Dos\t Tres\t\'Salto de linea'\nCuatro\t Cinco\t Seis\t\'Fin'\n"

