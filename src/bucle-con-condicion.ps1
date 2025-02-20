# Ejercicio_6. de nombre bucle-con-condicion.ps1
# Script que solicita un numero positivo al usuario y si el numero
# introducido es valido repite la palabra FAP tantas veces como indique el numero

$n1= [int] (Read-Host "Intro un numero ")

# comprobando si el numero introducido es correcto (positivo)
if ($n1 -gt 0) {
	for($n=0; $n -lt $n1; $n++) {
		Write-Host "FAP"
	}

}
