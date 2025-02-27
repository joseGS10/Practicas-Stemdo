1. __¿Qué es un hipervisor?__
---

1.1 Explica su función en la virtualización

1.2 Diferencia entre * __Hipervisor Tipo 1__ * e * __Hipervisor Tipo 2__ *

Cuando se crea una máquina virtual (VM, del inglés virtual machine), esta se ejecuta sobre la base de una máquina real no virtual, por ejemplo, un ordenador. La VM, por lo tanto, depende del hardware físico, por lo que debe existir una capa adicional entre los dos niveles que se haga responsable de la administración: se trata del hipervisor, un software que se hace cargo de gestionar los recursos necesarios para su funcionamiento. Este programa, también conocido como monitor de máquina virtual o virtual machine monitor (VMM), se encarga de asignar memoria RAM, espacio en el disco duro, componentes de red o rendimiento del procesador en el marco del sistema. De esta manera, varias y diferentes máquinas virtuales pueden ejecutarse en el sistema host, ya que el hipervisor se asegura de que no interfieran entre sí y de que todas tengan a su disposición los recursos que necesiten.

El hypervisor abstrae el hardware de tal manera que la VM asume que se encuentra un entorno de hardware establecido. Como los requisitos en relación con los programas que se ejecutan cambian constantemente, incluyendo los de las máquinas virtuales, una gran ventaja del hipervisor es que puede ir proporcionando los recursos según sea necesario. El sistema huésped tampoco se da cuenta de ello: la máquina virtual no tiene forma de reconocer la existencia de otras máquinas que se ejecuten en el mismo hardware físico.

Hipervisor de tipo 1
El primer tipo se conoce como hipervisor nativo (en inglés, native hypervisor) o bare metal hypervisor. Esta forma de VMM se instala directamente en el hardware físico y no está conectada con el sistema operativo del host. Por lo tanto, este hipervisor también debe contener todos los controladores de dispositivos. El consumo de recursos del hipervisor de tipo 1 es comparativamente reducido, porque los procesos informáticos no se ejecutan a través del sistema operativo del host. Esta forma de hipervisor es especialmente adecuada para los usuarios que deseen crear un servidor para la virtualización. En los proyectos más pequeños del entorno doméstico, no tendría sentido utilizar un hipervisor de tipo 1, puesto que sería demasiado complejo.

Hipervisor de tipo 2
El segundo tipo (también conocido como hosted hypervisor) requiere un sistema operativo existente, que a su vez se base en el hardware físico. Los hipervisores de tipo 2 se instalan como cualquier otro programa. A continuación, el VMM gestiona la virtualización. En este caso, no es necesario que los controladores de dispositivos estén instalados en el hypervisor, ya que el propio sistema operativo se encarga de transferirlos al software. Sin embargo, esta comodidad va a expensas del rendimiento, porque gran parte de los recursos se invierten en el sistema operativo del host. En cualquier caso, gracias a la sencillez del proceso de instalación y configuración, los hipervisores de tipo 2 son perfectos para proyectos más pequeños.


2. __¿Qué es un sistema operativo y dónde está instalado?__
----
2.1 Define qué es un sistema operativo.

2.2 Explica en qué dispositivos se puede instalar.

Un sistema operativo, SO u también OS (Operating System), es el software encargado de gestionar los recursos hardware y proveer de servicios al resto de programas que se ejecuten sobre él, siendo el sistema quien se ejecuta siempre en modo privilegiado con respecto al resto.

Se trata de un intermediario entre el usuario y el hardware. Es decir, cada vez que se ejecuta un programa en el ordenador, el sistema es quien permite que se abra, acceder a los recursos de hardware y periféricos que necesite para su correcto funcionamiento y de asignarle la cantidad de memoria que utilizará en función de sus necesidades y el número de programas que tengamos abiertos en el equipo. Además, es el encargado de proporcionar servicios para facilitar la ejecución y gestión eficiente de recursos de cualquier aplicación que se ejecute en el sistema.

El sistema operativo se instala en la unidad de almacenamiento principal de la computadora, generalmente en el disco duro o en una unidad de estado solido (SSD).

Entre los dispositivos en los que podemos encontrar un sistema operativos tenemos los telefonos moviles, computadoras y laptops, tablets, smartwatches y dispositivos weaables, Consolas de juego, servidores, decodificadores de televisión, electrodomésticos.


3. __Qué significa LTS?__
----
3.1 Explica la diferencia entrre versiones __"LTS"__ y versiones regulares de un sistema operativo.

LTS significa «Long Term Support» en inglés, lo que se traduce al español como «Soporte a Largo Plazo». Estas siglas se utilizan principalmente en el mundo del software y se refieren a una versión de un programa o sistema operativo que recibirá actualizaciones y correcciones de errores durante un período prolongado de tiempo.

La importancia de las versiones LTS radica en que ofrecen estabilidad y confiabilidad a los usuarios. Mientras que las versiones regulares de un software pueden recibir actualizaciones solo por un corto período de tiempo, las versiones LTS garantizan que se continuarán implementando mejoras y soluciones a problemas durante varios años.


Un ejemplo famoso de LTS es el sistema operativo Ubuntu, que cuenta con versiones LTS cada dos años. Esto significa que los usuarios que opten por estas versiones podrán disfrutar de actualizaciones y soporte técnico durante un período extendido, lo que les brinda mayor seguridad y tranquilidad.

Principalmente, se utilizan en el ámbito empresarial y en entornos donde la estabilidad y la seguridad son fundamentales. Empresas, organizaciones y usuarios que requieren un sistema confiable y que no deseen realizar actualizaciones constantes, optarán por versiones LTS.




