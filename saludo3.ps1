# Ejercicio_3. de nombre saludo3.ps1
# Script que solicita los valores nombre y saludo con Read-Host al usuario

# solicitamos la información
$nombre= Read-Host "Introduce un nonmbre: "
$saludo= Read-Host "Introduce un saludo: "

# mostramos la información
Write-Host "$nombre, $saludo"
