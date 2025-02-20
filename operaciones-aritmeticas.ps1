# Ejercicio_4. de nombre operaciones-aritmeticas.ps1
# Script que recoge 2 numeros del usuario con Read-Host y realiza todas
# las operaciones aritmeticas basicas

#lectura de datos
$n1= [int] (Read-Host "Intro un numero ")
$n2= [int] (Read-Host "Intro otro numero ")

#Mostrando resultados
Write-Host "Suma: $($n1 + $n2)"
Write-Host "Resta: $($n1 - $n2)"
Write-Host "Multiplicación: $($n1 * $n2)"
Write-Host "División: $($n1 / $n2)"
