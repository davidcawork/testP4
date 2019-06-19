# Tutorial de P4


Hemos seguido el tutorial que la organización p4 tiene en su github. Además, hemos tenido que crear nuestro propio script de instalación ```install.sh```. Habrá que darle permisos de ejecución ```chmod 777 install.sh``` y lanzarlo con ```sudo```. 

La necesidad de crear otro método de instalación es la deficiencia del los métodos alternativos de instalación que tienen aparte de Vagrant. Ellos disponen de dos shellscripts, donde crean un enviroment muy cercano a personas con poco conocimiento de Linux, facilitándoles user propio p4, generar iconos en el escritorio, configurar IDEs... Tareas propias de cada de desarollador en función de sus preferencias. 

Por lo que se ha decidido limpiar el proceso de instalación, dejando únicamente lo estrictamente necesario para llevar a cabo el tutorial de p4. Dejando únicamente un shellscript, más optimizado y  más limpio.

----

Se ha tenido que hacer una doble llamada al Shellscript ``` autogen.sh``` debido a [Link](https://github.com/protocolbuffers/protobuf/issues/149).  
