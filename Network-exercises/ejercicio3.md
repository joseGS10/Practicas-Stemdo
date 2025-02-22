__MODELOS OSI Y TCP/IP__
=
Indicar de cada ejemplo a que capa de los dos modelos pertenece,justifica tu respuesta.
1. __Codificación de los datos en bits y manejo de la transmisión física de los datos a través de un cable de red.__

   En ambos modelos se trata de la capa física. Cualquier tipo de información es necesario convertirla en 0s y 1s (bits) para ser transmitidos
   a través de la red. Esos bits son transmitidos en forma de señales eléctricas, ópticas o electromágnética en función del medio de transmisión usado.
   Esta capa física es la encargada tambien de las especificaciones de los conectores y dispositivos de interfaz que conectan los diferentes equipos
   dentro de la red.
   
2. __Aseguramiento de la entrega de mensajes completos entre dos dispositivos, incluyendo la corrección de errores y la retransmisión si es necesario.__

   En ambos modelos estariamos hablando de la capa de enlace, la cual se encarga más de la comunicación de tu a tú entre las dos partes intervenientes
   en la comunicación. Para asegurar esa entrega a los datos que le llega de la capa de red se le añade una cabecera y una cola las cuales van a permitir
   que se realice una correcta entrega de la información mediante la consulta de los parámetros que contiene esta cabecera (MAC origen y destino,
   tipo de protocolo) y la cola (CRC o código de verificación de errores).
   
3. __Asignación de direcciones IP y encaminamiento de paquetes a través de diferentes redes hasta su destino final.__

   En este caso estamos hablando de la capa de red en ambos modelos. En esta capa se lleva a cabo el direccionamento y enrutamiento de los diferentes
   paquetes que se tienen que retransmitir y para ello se hace uso de la tabla de routers que contiene cada router la cual va a indicar el mejor camino
   a tomar por cada paquete para que llegue a su destino.
   
4. __Establecimiento, mantenimiento y finalización de una sesión de comunicación entre dos dispositivos.__

   En este caso estariamos hablando de la capa de sesión en el modelo OSI y la capa de transporte en el modelo TCP/IP, la cual presenta dos protocolos,
   el TCP destinado a una entrega confiable, aunque algo mas lentay el protocolo UDP conentregas más rápidas pero no confiables (no orientado a la conexión)
   
5. __Conversión de los datos a un formato común para que puedan ser comprendidos por diferentes sistemas (p. ej., codificación de caracteres, cifrado).__

   En el modelo OSI estariamos hablando de la capa de Presentación, la cual se encarga de presentar los datos de forma que tanto emisor como receptor la
   entiendan independientemente del sistema de representación que ambos utilicen para la información, además de cifrar y comprimir la información antes de
   su envio y su descifrado y descomprensión en el receptor.
   En el modelo TCP/IP esta funcionalidad se encuentra definida dentro de la capa de Aplicación.
   
6. __Manejo de las conexiones de red, incluyendo el control de flujo y la secuenciación de los datos.__

     Esta funcionalidad la recoge la capa de transporte en ambos modelos. Ls capa de transporte establece y finaliza la conexión entre dos dispositivos dentro 
  de la red (utilizando para ello el protocolo TCP).Además, como emisor y receptor pueden presentar distintas tecnologás puede suceder que el emisor envie más
  información de la que el receptor puede procesar por lo que esta capa se encarga de establecer el flujo adecuado de información entre ambas partes para que
  no se pierda información. Y además para que los mensajes lleguen en el orden adecuado se establecen los mecanismos adecuados para tal fin.
    
7. __Presentación de la interfaz al usuario final y manejo de la interacción entre aplicaciones (p. ej., navegación web, envío de correos electrónicos).__

    En este caso estaríamos hablando de la capa de aplicación en ambos modelos. Esta capa es la que permite al usuario interactuar con la red a través de las 
  interfaces de las diferentes aplicaciones.
