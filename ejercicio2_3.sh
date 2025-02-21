
#!/bin/bash

# programa que calcula  cuantos dias quedan hasta final de año

echo "La fecha de hoy es:" $(date "+%Y-%m-%d")

# para resolverlo  primero calculamos los dias del año, se convierten a segundos 
# a continuacion le restamos el dia de hoy en segundos y al resultado lo dividimos
# entre el total de segundos de un dia
 
total_dias=$((($(date -d "12/31" +%s) - $(date +%s)) / 86400))
echo "Los dias restantes hasta final de año son: " $total_dias
