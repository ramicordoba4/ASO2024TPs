1_A_
En el Conhilos.py después de ejecutar el código varias veces da casi siempre el mismo tiempo. Da casi siempre 4,0... o 4,1… o 4,2… 
pero esto no es porque sea predecible sino que ejecuta el código en una sola linea de tiempo 

En el sinhilos.py el tiempo de ejecución  casi siempre fue de 5,3… o 5,4… 
en este código pasa lo mismo que en el conhilos.py que no pasa esto de que siempre de 5,… porque sea predecible sino porque lo ejecuta en una sola linea del tiempo.

B_ El tiempo de ejecución de los códigos que yo ejecute y los que ejecutaron mis compañeros dieron el mismo resultado, pero esto depende del hardware de las computadoras de cada uno.

C_ al descomentar las lineas 11,12,19,20 y ejecutarlo, lo que paso a comparación de cuando estaban comentadas las lineas 11,12,19,20. fue que el tiempo de ejecución subió a 3,7… 3,6… 4,2… y el valor final siempre es distinto, aveces da un numero negativo y aveces otro positivo . cuando estaban comentadas el tiempo de ejecución era de 0,01… 0,02.. . y el valor final siempre es 0.

Esto paso porque al descomentar las lineas se introduce (for i in range (1000)) que esto lo que hace es generar un bucle que cada vez que se ejecuta, i toma un valor diferente, desde 0 hasta 999.  y esto ayuda a hacer una pausa. al hacer esta pausa ayudas a que los hilos no entren al mismo tiempo a la variable “acumulador” por eso el valor final cambia constantemente.

Si las lineas están comentadas los hilos entran simultáneamente y sobrescriben la variable “acumulador”, por eso el valor final siempre va a ser 0 porque uno suma 5 y el otro lo resta a la vez

2A_![tp3 punto2a](https://github.com/ramicordoba4/ASO2024TPs/assets/166413942/0f154e6d-15e3-452e-9c34-1b4d19dded3f)

las lineas agregadas son las 7,10,16,21

B_
![TP3 punto2b](https://github.com/ramicordoba4/ASO2024TPs/assets/166413942/83970ff3-eca8-44c4-aa3b-611aa5ea17c4)

