# Ejercicio_2. de nombre saludo2.ps1
# Script que recoge 2 valores como argumento desde consola 'nombre' y 'saludo'
# en lugar de definir variables dentro del script.

#primero se verifica si realmente se han pasado 2 argumentos, para ello contamos los valores que ha recogido la variable array arg 
if ($args.count -eq 2){
	$nombre=$args[0]
	$saludo=$args[1]
	Write-Host "Hola $nombre, $saludo"
	}
else {
	Write-Host "no se han pasado 2 argumentos como era de esperar."	
	}
