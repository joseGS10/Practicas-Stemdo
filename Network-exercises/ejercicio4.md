Ejercicio 4 - Subnetting
=
1.__Tienes la red 10.0.0.0/8 y necesitas dividirla en subredes que soporten 1000 hosts cada una. ¿Cuantas subredes puedes crear?.__

  Para gestionar 1000 hosts una red requiere de 10 bits. 2^10 = 1024 -2(direcc de red y broadcast) =1022 hosts.

  Estamos tratando con una IP de clase A cuya máscara por defecto es 255.0.0.0.

  Si tomamos los últimos diez bits de la máscara para gestionar los diferentes hosts de una subred y teniendo en cuenta que los primeros ocho bits 
  identifican a la clase A, nos quedan 14 bits para crear subredes.

  Por lo tanto, 2^14 = 2^10 * 2^4 = 1024 * 8 = __8192 subredes se pueden crear_ y cada una puede gestionar hasta _1022 direcciones IP.__

2.__Tienes la red 172.16.0.0/16. Necesitas crear 20 subredes con el máximo número posible de hosts por subred. ¿Cuantos hosts caben en cada subred?.__

  Partimos de una IP de clase B con máscara por defecto 255.255.0.0

  Para crear 20 subredes necesitamos al menos robar 5 bits a la máscara a partir del tercer octeto. 2^5 = 32 redes. Con 4 bits solo podriamos haber creado 16 subredes, 
  ahí que hayamos tomado 5 bits.

  Por tanto, nos quedan 3 bits del tercer octeto de la mascara + los 8 bits del cuarto octeco, en total 11 bits para direccionar los diferentes hosts dentro de una subred.
  2^11 = 2^10 * 2 = 1024 * 2 = 2048 - 2 (direccion de red y broadcast) = 2046 hosts son direccionables por subred.
  
3.__Tienes la red 192.168.1.0/24. Debes dividirla en subredes que puedan soportar 6 hosts utilizables cada una. ¿Cuantas subredes se pueden crear con esa condición?.__

  Partimos de una IP de clase C con máscara por defecto 255.255.255.0

  Necesitamos dividir en subredes que soporten cada una 6 hosts. Para ello necesitariamos 3 bits que robaríamos a la máscara (los 3 últimos). 
  2^3 = 8 - 2 (direccion de red y broadcast) = 6 hosts que podría direccionar cada subred creada.

  Y ahora, para saber cuantas subredes podemos crear, nos quedan 5 bits libre en la máscara (los 5 primeros del cuarto octeto). 2^5 = 32 subredes que se pueden crear.

