# testP4

- [Official site p4](https://p4.org/)
- [P4 tutorials](https://github.com/p4lang/tutorials)

----

### Como replicar test realizados

- Primero se tiene que instalar todas las dependencias necesarias para correr las pruebas. 
	* ```cd ./testP4/tutorial_p4/vm/``` y lance el script de instalación(Quick method) ```sudo ./install -q```.
- Entre en cada subdir. y ejecute ```sudo make run```.

### Como instalar p4c-graphs

Por defecto al instalar p4c se debería instalar esta feature del compilador, pero al tratarse de una instalación rápida 
para realizar los tutoriales, las dependencias de esta feature no están instaladas ya que no se va hacer uso de esta.

- Lo primero que vamos hacer es instalar las dependencias necesarias para poder llevar a cabo la instalación de p4c-graphs
	* sudo apt-get install libboost-graph-dev
- Una vez las dependencias están instaladas, el proceso automático de build de p4c al volverlo a lanzar debería hacer un build de p4c-graphs.
	* ```cd ./testP4/tutorial_p4/vm/p4c/build/``` 
	* Preconfiguramos el build: ```sudo cmake ..```
	* Se puede acelerar el proceso de compilación, indicando número de cores que dispongamos en la máquina: 
	```sudo make -j{NUM_CORES}```
	* Para tener un acceso global a herramienta solo quedaría: ```sudo make install``` 
	* Creará softlinks a los ejecutables, en la ruta ```/usr/local/bin``` que está en path, para ser accesible por todos.

----
### Historial

``` 
Día 1 <12/06>: Leer información sobre p4, ver video tutoriales explicativos sobre p4. Entender que es p4, su motivación
y sus ventajas de la programación del plano de datos en los nodos de la topología de procesamiento.

- Día 2 <13/06>: Creación de VM donde se van a llevar a cabo los test de P4(Ubuntu 16.04).
Depurar proceso de instalación ofrecido alternativo a Vagrant. Creación de proceso de instalación propio /tutorial/install.sh

- Día 3 <17/06>: Depurar nuevo proceso de instalación, arreglar Highlighting de los archivos p4 en vim.
Ofrecer el nuevo método de instalación vía Pull-Request. Estudio del estado del arte del TFM
"Implementación de un switch ARP-Path basado en el lenguaje P4 con capacidades para seguridad perimetral".
Realización del test 1 "basic" del tutorial de P4.

- Día 4 <18/06>: Leer papers sobre p4, seguir estudiando el estado del arte del TFM
"Implementación de un switch ARP-Path basado en el lenguaje P4 con capacidades para seguridad perimetral".
Desarrollar los requerimientos adicionales expuestos en el pull-request por un integrante del equipo p4.

- Día 5 <19/06>: Estudio de Vagrant, gRPC y Protobuf. Documentación en LaTeX de los progresos sobre p4
y los conocimientos adquiridos.

- Día 6 <20/06>: Completar el desarrollo del nuevo método de instalación para cumplir con los requerimientos
del mantenedor del repositorio de p4lang/tutorials. Estudio del potencial que tiene p4 en los dispositivos
frontera SDN - IoT.

- Día 7 <21/06>: Escribir pull-request y hacer push de todos los elementos completados, pendiente de aprobación
por parte del equipo de p4lang. Lectura de papers donde incorporan tecnología p4 para funciones de traducción y
problemas de alcanzabilidad en redes 802.15.4.

- Día 8 <24/06>: Documentación del test de forwarding básico, organización del repositorio y completar memoria
hasta la fecha.

- Día 9 <25/06>: Realización de test sobre tunelado con p4. Documentación del test en el proyecto de LaTeX.
Depuración del código de dicho test visto las inconsistencias de los resultados del mismo.
(Issue: https://github.com/p4lang/tutorials/issues/263).

- Día 10 <26/06>: Realización de test sobre "switches" con capacidades de un tunelado avanzado. Realización de
test sobre P4RUNTIME. Entender como funciona gRPC para instanciar reglas en las tablas de los "switches".

- Día 11 <27/06>: Documentación en Overleaf de los test realizados los días anteiores. Arreglar feature del 
compilador p4c para generar grafos desde programas en p4. Realizar herramienta auto_graph.sh que automatiza
todo el proceso de generación de grafos y parseo de imagenes desde *.dot a *.png. Agregar grafos a todos los
test hechos con anterioridad y documentar como instalar, y usar pc4-graphs.

- Día 12 <28/06>: Estudio de P4Runtime y documentación de os progresos y conocimientos adquiridos en 
OverLeaf.

- Día 13 <01/07>: Realización del test de MRI (Multi hop Route Inspection), con capcidad de telemetría in-band.
Documentación extra sobre P4Runtime en OverLeaf. Estudio y analisis de los Makefiles que utilizán para la
construcción de los escenarios de testing.

```
