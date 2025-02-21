#!/bin/bash

# Calculadora simple en la que el usuario introduce 2 numeros, 
# selecciona la operacion a relizar (+,-,*,/)
# se realiza la operacion y la muestra por pantalla

read -p "Introduce 2 numeros " n1 n2
read -p "Selecciona la operacon a realizar(+,-,*,/) " op
case $op in
	'+') 
		echo "La suma de $n1 y $n2 es:" $(($n1+$n2))
		;;
	'-')
		echo "La resta de $n1 y $n2 es:" $(($n1-$n2))
		;;
	'*')
		echo "La multiplicacion de $n1 y $n2 es:" $(($n1*$n2))
		;;
	'/') 
		if [ $n2 -eq 0 ]; then 
			echo "Prohibido  dividir por 0."
			exit 1
		
		else 
			echo "La division de $n1 y $n2 es: " $(($n1 / $n2))
		
		fi
		;;
	*)
		echo "error, operacion no habilitada"
		;; 
esac
