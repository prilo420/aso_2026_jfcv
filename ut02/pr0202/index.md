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

<img width="1073" height="186" alt="image" src="https://github.com/user-attachments/assets/4ced0d38-793c-4f62-a878-36fdaf037731" />

---
  
[Index](https://github.com/prilo420/aso_2026_jfcv/blob/main/index.md) 
