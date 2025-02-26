1. xeyes
2. Abrimos otro terminal, para dejar abierto xeyes y poder consultar su pid
   pgrep xeyes
   pid = 5206 , pid del hijo
   ps -eo pid,ppid,comm | grep xeyes
   ppid=5196 , pid del padre
3. ps -e | wc -l
4. ps -u root | wc -l
5. pstree -u usuario
6. top. El proceso que más CPU consume es el asociado al terminal que estoy ejecutando
7. top. EL proceso que más memoria consume es el asociado al terminal que estoy ejecutando.
8. uptime -s
9. Abrimos Virtual-box
   Seleccionamos el sistema virtual al que queremos añadir el disco duro. ( Ubunto escritorio)
   Picamos en configuración/Almacenamiento/Controlador Sata (Ubuntu-escritorio.vdi) y picamos
   en el icono "añadir disco duro"
   Picamos en el icono Crear, seleccionamos tipo de disco duro virtual (VDI), y le decimos que lo cree completo, es decir, le daremos un tamaño
   estático(seleccionamos reservar completamente).
   A continuación, nos pide ubicacion donde se creara y el tamaño del disco (le dejamos la que nos proporciona por defecto).
   Y con esto ya terminamos de crear el disco duro.
   Abrimos la terminal, seleccionamos el disco a formatear, creamos una particion dentro de él, que ocupe toda la capacidad de la particion y
   finalmente lo formateamos.
    
   
      
