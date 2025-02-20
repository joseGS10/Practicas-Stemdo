# Ejercicio_5. de nombre comparacion-de-numeros.ps1
# Script que recoge 2 numeros del usuario y determina
# si uno es mayor, igual o menor que el otro

$n1= [int] (Read-Host "Intro un numero ")
$n2= [int] (Read-Host "Intro otro numero ")

# comprobando quien es mayor,menor o igual
if ($n1 -gt $n2) {
	Wite-Host "El numero $n1 es mayor que el numero $n2"
}
elseif ($n1 -eq $n2) {
	Write-Host "El numero $n1 es igual que el numeero $n2"
}
else {
	Write-Host "El numero $n1 es menor que el numero $n2"
}

