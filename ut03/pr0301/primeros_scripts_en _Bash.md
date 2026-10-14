<<<<<<< HEAD
# PR0301: Primeros scripts en Bash

Realiza las siguientes tareas:

### 1. Crea un script que muestre por pantalla la fecha y la hora del sistema. <br>

* Creamos 
``` nano fecha.sh ``` <br>

``` 
#!/bin/bash 
date 
```` 
<br>

* Ejecutamos  el Script<br>
![alt text](image.png)

### 2. Mejora el script anterior para que muestre un mensaje de la forma: “Hoy es jueves día 15 de abril y son las 12:00 horas”. Tendrás que mirar la ayuda del comando date para poder extraer las diferentes partes de la fecha y hora. <br>

* Modificamos <br>
``` nano ./fecha.sh ``` <br>

````
#!/bin/bash
echo $(date +"Hoy es %A dia %d de %B y son las %H:%M horas.") 
```` 
<br>

* Ejecutamos <br>

![alt text](image-1.png)

### 3. Crea un script que solicite la usuario dos números y luego imprima la suma de esos números <br>
* Creamos el Script

 ``` nano suma.sh``` <br>

````
#!/bin/bash
read -p "Introduce un Numero: " numero1

read -p "Introduce otro Numero: " numero2

    echo $(expr $numero1 + $numero2)
```` 
<br>

* Ejecutamos <br>
![alt text](image-2.png)

### 4. Crea un script que determine si un número introducido por el usuario es par o impar. Para realizar este ejercicio puedes utilizar el operador módulo, que es el símbolo % <br>

* Creamos el Script ```nano determinar.sh ```
<br>
* Ponemos permisos ``` sudo chmod u+x ./determinar.sh ``` <br>
````
#!/bin/bash
read -p "Introduce un Numero: " numero
comp=$(($numero % 2))
    if [ $comp == 0 ]; then
        echo "El $numero es PAR"
    else
        echo "El $numero es IMPAR"
    fi
````

* Ejecutamos <br>
![alt text](image-3.png)

### 5. Escribe un script que solicite el nombre de un archivo y luego imprima cuántas líneas tiene ese archivo. Verifica que el archivo exista antes de contar las líneas. <br>

* Creamos el Script ``` nano solicitar.sh ``` <br>

````
#!/bin/bash
read -p "Nombre de un Archivo: " nombre

if [ -f "$nombre" ]; then
    echo "El archivo EXISTE."
        wc -l < $nombre
else
    echo "EL ARCHIVO NO EXISTE"
fi
````
<br>

![alt text](image-4.png)

### 6. Escribe un script que imprima la tabla de multiplicar de un número introducido por el usuario. <br>

### 7. Crea un script que solicite el nombre de un archivo y luego informe si el archivo tiene permisos de lectura, escritura y ejecución para el usuario actual. <br>

8. Escribe un script que copie todos los archivos con una extensión específica desde un directorio de origen a uno de destino. <br>

9. Escribe un script que cuente cuántas palabras hay en un archivo y las muestre en la terminal <br>

10. Crea un script que comprima todos los ficheros del directorio Escritorio que está dentro del directorio personal del usuario actual en un fichero llamado backup.DDMM.gz donde DD es el día del mes y MM el mes. Para comprimir puedes utilizar el comando tar de la siguiente manera: <br>

``` 
tar -zcvf nombre-archivo.tar.gz nombre-directorio
```
=======
# jj
>>>>>>> 1332d74a1783c21ccc200e97de45f11c2eb7c979
