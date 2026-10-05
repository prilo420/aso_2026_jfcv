[Index](https://github.com/prilo420/aso_2026_jfcv/blob/main/index.md) 

---

# PR0202: El protocolo SSH


## 2.Configuración de  la Red
### SERVER A
* Vemos sus Interfaces de red ``` ip a ``` <br>
* Modificamos el archivo de configuración de red ``` sudo nano /etc/neplan/00-installer-config.yaml``` <br>
<img width="343" height="353" alt="image" src="https://github.com/user-attachments/assets/6110a059-6eed-4e3d-98a6-81bccff87446" /> <br>
* Aplicamos los cambios ``` sudo netplan apply ``` <br>
* Verificamos ``` ip a ```
### SERVER B
<img width="372" height="210" alt="image" src="https://github.com/user-attachments/assets/814f60c1-6d23-400b-9f26-ef4b4ab6326f" />
* Aplicamos los cambios ``` sudo netplan apply ``` <br>
* Verificamos ``` ip a ```
### SERVER C



---

[Index](https://github.com/prilo420/aso_2026_jfcv/blob/main/index.md) 
