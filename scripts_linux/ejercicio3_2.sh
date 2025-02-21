#!/bin/bash

# Calculo del Indice da masa corporal (IMC)

read -p "Introduzca su peso en kg " kg
read -p "Introduzca su estarura en metros " m

# se calcula su valor aplicando la siguiente formula
# $n*Sn no funciona con valores decimales , ya que bash no trabaja
# con decimales de foema nativa.
# por tanto scale=2  obliga a sacar el resultado con 2 decimales 
# y luego bc permite el calculo con valores flotantes

IMC=$(echo "scale=2; $kg / ($m*$m)" | bc)

echo "SU IMC es $IMC"



