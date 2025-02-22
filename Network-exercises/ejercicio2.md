Ejercicio_2
Dar una ventaja y una desventaja de cada topologia que hemos visto.
Analizar la red de vuestra oficina y justificar que topología es.
=
Toopologias

__1. Punto a Punto.__

Ventaja: simplicidad de instalación ya que solo se requierre de un cable para conectar ambos equipos.

Desvantaja: la complejidad de su gestión crece sis se quieren incorporar más equipos.

__2. En Bus.__

Ventaja: Simplicidad en su instalación al estar todos los equipos conectados a un mismo cable.

Desventaja. La ruptura de ese cable hace que toda la red deje de funcionar.

__3. En anillo.__

Ventaja: Al circular los datos en una única dirección la probabilidad de colisiones se reduce bastante.

Desventaja: Si el ANILLO se ROMPE toda la red puede dejar de funcionar.

__4. Doble anillo.__

Ventaja: EL doble anillo permite que la red siga funcionando si uno de ellos se estripea.

Desventaja: Mayor costo por necesidad de más cableado.

__5. E estrella.__

Ventaja: Facilidad de instalación y mantenimieto. Todos los equipos estan conectados a un switch.

Desventaja: La red depende del concentrador o switch por lo que una averia en dicho equipo deja 
a toda la red sin servivio.

__6. En árbol__

Ventaja: Gracias a su estructura jerárquica permite organizar los equipos en diferenetes niveles,
lo que facilita su gestión y asignación de recursos. Típico en empresas con diferentes categoria de 
trabajadores.

Desventaja: La dependencia de un nodo central puede comprometer toda la red si este falla. Por contra, 
si una de sus ramas falla, no se ve comprometida el resto da la red.

__7. En malla.__

Ventaja: Mayor velocidad en las comunicaciines al estar los dispositivos conectados por más de un cable.

Desventaja: mayor coste y complejidad de configuración al disponer de más cableado por el que circula la
información lo que se traduce en mayor comlejidad si se quiere ampliar.

__8. Totalmente conexa.__

Ventaja: La ruptura de cualquier enlace entre dos equipos no cancela la comunicaión ya que se pueden tomar
vías alternativas para la comunicación al estar todos los equipos de la red conectados con todos.

Desventaja: EL costo debido a la cantidad de cableado necesario para tener todos los equipos conectados con 
todos.

__9. Híbrida.__

Ventaja: El incorporar varias topologías permite tener una red más robusta y redundante ante el fallo de 
cualquier parte de la red.

Desventaja: El costo y la complejidad en su administarción.


__Red de la oficina__
Podriamos considarar la topologia hibrida. Le empresa dispone de varias sucursales las cuales internamente 
estarian estructuradas según una LAN con topología en estrella donde todos los departamentos estan conectados 
a un switch central el cual podria estar respaldado por algún otro equipo para evitar la caida de la red en caso
de fallo de este. El uso de una topología hibrida permite la escalabilidad y tolerancia a fallos.
La conexión de las diferentes surcursales podría realizarse mediante topología en estrella o de malla si se 
requiere de mayor redundancia y confiabilidad.

