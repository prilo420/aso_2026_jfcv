#---------------------------------------------------------------
# 1.
#----------------------------------------------------------------

#------------------------------------------------------------------------


# 1. "Normalizar a mayúsculas"

# $sys = "windows server".ToUpper()
# Write-Host $sys



# ----------------------------------------------------------------

# 2. Normalizar a minúsculas

# $user ="ADMINISTRADOR"
# Write-Host $user.ToLower()



#------------------------------------------------------------------

# 3. Limpieza de espacios extremos

# $ip =" 192.168.1.10 "
# Write-Host $ip.Trim()



# -------------------------------------------------------------------

# 4. Eliminación total de espacios

# $mac = "00 AA 11 BB 22 CC"
# Write-Host $mac.Replace(" ", "")



#-------------------------------------------------------------------------

# 5. Longitud de la cadena

# $pass = "P@ssw0rd123"
# Write-Host $pass.Length



#------------------------------------------------------------------------



#------------------------------------------------------------------
#2.
#-------------------------------------------------------------------


#------------------------------------------------------------------------

# 6. Cambio de separadores de fecha

# $fecha = "2023.10.05"
# Write-Host $fecha.Replace(".", "-")



#------------------------------------------------------------------------

# 7. Actualización de dominio

# $web = "www.miempresa.es"
# Write-Host $web.Replace(".es", ".com")



#-------------------------------------------------------------------------

# 8. Censura de datos

# $tarjeta = "1234-5678-9012-3456"
# Write-Host $tarjeta.Replace("-3456", "-XXXX" )



#------------------------------------------------------------------------------

# 9. Cambio de barra de rutas (Linux a Windows)

# $rutaLinux = "/home/usuario/docs"
# Write-Host $rutaLinux.Replace("\", "/")



#----------------------------------------------------------------

# 10. Doble reemplazo (limpiar prefijo y sufijo)

# $valor = "(Software)"
# Write-Host $valor.Replace("(", "").Replace(")", "")



#------------------------------------------------------------------


#--------------------------------------------------------------------
# 3.
#---------------------------------------------------------------------

#--------------------------------------------------------------------

# 11.  Extraer prefijo de país

# $tlf = "+34-600111222"
# Write-Host $tlf.Split("-")[0]



#---------------------------------------------------------------------

## 12. Extraer año fiscal (primeros 4 caracteres)

# $codigo = "2024-FACTURA-SEP"
# Write-Host $codigo.Split("-")[0]



#---------------------------------------------------------------------

# 13. Ignorar el primer carácter

# $idEmpleado = "E55421"
# Write-Host $idEmpleado.Substring(1)



#----------------------------------------------------------------------

# 14. Extraer extensión de archivo (últimos 3)

# $fichero = "informe.pdf"
# Write-Host $fichero.Split(".")[1]


# $fichero = "informe.pdf"
# Write-Host $fichero.Substring( 8, 3 )



#-------------------------------------------------------------------------

# 15. Relleno de ceros (Padding)
 
# $numero ="7"
# Write-Host $numero.PadLeft(3, "0")

# $numero ="7"
# Write-Host $numero.Insert(0, "00")



#----------------------------------------------------------------------


#-----------------------------------------------------------------------
# 4.
#---------------------------------------------------------------------------------


#----------------------------------------------------------------------------------

# 16. Obtener nombre de usuario desde email

# $email = "pepe.garcia@empresa.com"
# Write-Host $email.Split("@")[0]



#-------------------------------------------------------------------------

# 17. Obtener dominio desde email

# $email = "pepe.garcia@empresa.com"
# Write-Host $email.Split("@")[1]



#---------------------------------------------------------------------------

# 18. Obtener nombre de archivo de una ruta larga

# $path = "C:\Users\Admin\Downloads\instaler.msi"
# Write-Host $path.Split("\")[4]



#--------------------------------------------------------------------------

# 19. Obtener letra de unidad

# $path = "D:\Datos\Backups"
# Write-Host $path.Split("\")[0]



#-------------------------------------------------------------------------------

# 20. Separar CSV manual

# $linea = "Juan;Marketing;Madrid"
# Write-Host $linea.Split(";")[1]



#-------------------------------------------------------------------------


#---------------------------------------------------------------------------
# 5
#------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------

# 21. Detección de usuario Admin (Boolean). 
#Devuelve True si empieza por “ADM”, False si no.

# $u = "ADM_Lopez"
# Write-Host $u.StartsWith("ADM")



#-------------------------------------------------------------------------

# 22. Formato de nombre propio. 
# Convierte la primera letra en mayúscula y el resto en minúscula.

# $nombre = "JAVIER"
# Write-Host "$($nombre.Substring(0,1).ToUpper())$($nombre.Substring(1).ToLower())"



#------------------------------------------------------------------------------------

