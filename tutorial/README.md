# Tutorial de P4


Hemos seguido el tutorial que la organización p4 tiene en su github. Hemos tenido que crear nuestro propio scritp de instalación ```install.sh```. Habrá que darle permisos de ejecución. 

La necesidad de crear otró metodo de instalación es la deficiencia del los metedos alternativos de instalación que tienen aparte de Vagrant. Ellos disponen de dos shellscripts, donde crean un enviroment muy cercano a personas con poco conocimiento de Linux, facilitandoles user propio p4, generar iconos en el escritorio, configurar IDEs... Tareas propias de cada de desarollador en función de sus preferencias. 

Por lo que se ha decidido limpiar el proceso de instalación, dejando unicamente lo estrictamente necesario para llevar a cabo el tutorial de p4. Dejando unicamente un shellscript, más optimizado y  más limpio.

----

Se ha tenido que hacer una doble llamada al Shellscript ``` autogen.sh``` debido a [Link](https://github.com/protocolbuffers/protobuf/issues/149).  
