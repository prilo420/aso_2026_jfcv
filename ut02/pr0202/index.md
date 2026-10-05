[Index](https://github.com/prilo420/aso_2026_jfcv/blob/main/index.md) 

---

# PR0202: El protocolo SSH


## 2.Configuración de  la Red
### SERVER A
* Vemos sus Interfaces de red ``` ip a ``` <br>
* Modificamos el archivo de configuración de red ``` sudo nano /etc/neplan/00-installer-config.yaml``` <br>
<img width="346" height="281" alt="image" src="https://github.com/user-attachments/assets/f6fd163c-1763-4ba3-8d2e-162ad45e2beb" />
 <br>
* Aplicamos los cambios ``` sudo netplan apply ``` <br>
<img width="805" height="446" alt="image" src="https://github.com/user-attachments/assets/20303c87-9bba-4d7c-830c-94309be61b59" />

* Verificamos ``` ip a ``` <br>

### SERVER B
<img width="372" height="210" alt="image" src="https://github.com/user-attachments/assets/814f60c1-6d23-400b-9f26-ef4b4ab6326f" /> <br>
* Aplicamos los cambios ``` sudo netplan apply ``` <br>
* Verificamos ``` ip a ``` <br>
  <img width="710" height="298" alt="image" src="https://github.com/user-attachments/assets/0974b4eb-8d41-4da0-8e15-581ec3a05ba5" /> <br>

### SERVER C
<img width="357" height="205" alt="image" src="https://github.com/user-attachments/assets/d84b4919-f513-45be-8768-da7e4d9a23b9" /> <br>
* Aplicamos los cambios ``` sudo netplan apply ``` <br>
* Verificamos ``` ip a ``` <br>
<img width="676" height="298" alt="image" src="https://github.com/user-attachments/assets/ff9cef94-1b2b-4c8d-b8aa-0b9563e55139" />

---

* Nos conectamos desde nuestro Anfitrión al SEVER A ```ssh a_jfc@192.168.56.102 ``` <br>
*  "Si nos da error " Ejecutamos en el SERVER ``` sudo ufw allow ssh ``` <br>
*  Probamos```ssh a_jfc@192.168.56.102``` --> yes <br>
<img width="830" height="550" alt="image" src="https://github.com/user-attachments/assets/83b22c9f-e90c-4e0c-a983-503d884346c5" />
 
---

* Conectividad entre SERVERs
 ### SERVER A --> SERVER B
 * A ```  ping -c 4 10.20.0.11 ``` B <br>
 * B ``` ping -c 4 10.20.0.10 ``` A <br>
 <img width="1067" height="258" alt="image" src="https://github.com/user-attachments/assets/11d52bb5-73f6-4e7a-ab38-7b15127460d2" /> <br>
 
### SERVER A --> SERVER C
* A ```ping -c 4 10.30.0.11 ``` C <br>
* C ```  ping -c 4 10.30.0.10``` A <br>
<img width="1072" height="246" alt="image" src="https://github.com/user-attachments/assets/83239b7f-861a-4d5b-80b3-8d4550cb5534" />
 
### SERVER B --> SERVER C
* B ``` ping -c 4 10.30.0.11``` C <br>
* C ``` ping -c 4 10.20.0.11 ``` B <br>
<img width="1073" height="186" alt="image" src="https://github.com/user-attachments/assets/4ced0d38-793c-4f62-a878-36fdaf037731" /> <br>
* Subredes diferentes: El servidor B está intentando hacer ping a la IP 10.30.0.11, mientras que el servidor C intenta hacer ping a la 10.20.0.11. Si no hay un router o una puerta de enlace configurada entre ambas redes (10.30.0.X y 10.20.0.X), nunca se comunicarán.

## Creación y Configuración de las Claves
### SERVER A
* Creamos la clave ``` ssh-keygen -b 1024 ``` <br>
* Verificamos ``` cat .ssh/id_ed25519.pub``` <br>
<img width="762" height="390" alt="image" src="https://github.com/user-attachments/assets/8a2f0c4e-72f5-4d52-a543-4af0b98cd375" /> <br>

----

<img width="1253" height="138" alt="image" src="https://github.com/user-attachments/assets/4f65b78c-db41-4327-b529-7d12dd0410b6" /> <br>

<img width="1245" height="97" alt="image" src="https://github.com/user-attachments/assets/0d0e8a50-1aed-480e-b2cd-285bbbf1a4a2" /> <br>


b
<img width="636" height="497" alt="image" src="https://github.com/user-attachments/assets/1d92f61a-cb45-4bb0-bb60-d7737322da70" />


c
<img width="657" height="478" alt="image" src="https://github.com/user-attachments/assets/b79964d9-65b3-4f17-9bf8-6a81d13470e0" />

* Movemos las claves  al directorio  de claves autorizadas para que funcione
``` cat id_ed25519.pub >> .ssh/authorized_keys ``` <br>

```SERVER C```  <br>

<img width="458" height="35" alt="image" src="https://github.com/user-attachments/assets/7ce7d311-d19f-4e7d-8f9d-ee4ff4460ac2" /> <br>

```SERVER B``` <br>

<img width="560" height="48" alt="image" src="https://github.com/user-attachments/assets/05c3b8d6-cd7d-453a-a6fe-8ff27a4ab8dc" />

### COMPROBAMOS
* SERVER B  ```  ssh b_jfc@10.20.0.11``` <br>
<img width="667" height="503" alt="image" src="https://github.com/user-attachments/assets/e33738b2-5778-4257-bc85-598ee5e08979" /> <br>
* SERVER C  ``` shh c_jfc@10.30.0.11``` <br>
<img width="727" height="505" alt="image" src="https://github.com/user-attachments/assets/11f8984d-e644-4937-bb6b-e76f2393610a" /> <br>
* Funciona perfectamente las CLAVES  ya no pide la contraseña

---
  
[Index](https://github.com/prilo420/aso_2026_jfcv/blob/main/index.md) 
