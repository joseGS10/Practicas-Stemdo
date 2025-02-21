#!/bin/bash

# Este script tiene como finalidad crear y administrar usuarios y grupos.
# Primero vamos a intentar crear un usuario con ID 999 y nombre navin

idusuario=999
nom_usu=navin
usuario_buscado=$(getent passwd $idusuario)

if [ -z "$usuario_buscado" ]; then
	# si la variable usuario_buscado no tiene ningun valor quiere decir que el id buscado no existe
	# entonces pasamos a crear el usuario con el id idusuario y nombre nom_usu
	sudo useradd -u $idusuario -m  $nom_usu
else
	echo "El ID buscado ya existe en el sistema"
	read -p "Intenta introducir un Id que no exista " idusuario
	sudo useradd -u $idusuario -m $nom_usu
	echo "Usuario creado. Te muestro las 3 ultimas entradas del fichero passwd"
	tail -n3 /etc/passwd
fi

# A continuación creamos un grupo llamado oficina1
# La opción -f hace que si el grupo ya existe no de error.

sudo  groupadd -f oficina1

# Ahora, renombramos el grupo oficina1 a oficina2

sudo groupmod -n oficina2 oficina1

# Finalmente creamos el usuario sonia y lo agregamos al grupo oficina2

sudo useradd -m -g oficina2 sonia

# -m crea el directorio home del usuario
# -g el grupo añadido es considerado el principal del usuario
