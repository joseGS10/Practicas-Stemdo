# Ejercicio_7. de nombre validacion-y-correccion-de-entrada.ps1
# Script que solicita un numero entre el 1 y 100 al usuario tantas veces como sea necesario hasta que lo haga dentro del rango.
# Una vez que consigue introducir un valor dentro del rango, cuenta los intentos fallidos y muestra un mensaje de error por
# cada intento fallido. Si lo hizo bien a la primera. muestra ¡Campeon!

$contador=0
do {
	$n1= [int] (Read-Host "Intro un numero entre el 1 y el 100 ")
	$contador++
} while ($n1 -lt 1 -or $n1 -gt 100)
if ($contador -eq 1) {
	Write-Host "¡Campeon!"
}
else {
	for($n=0; $n -lt $n1; $n++) {
		Write-Host "Has cometido $contador errores. Aprende a leer."
	}
}
