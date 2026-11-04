# 1. - Comprobando el tipado dinámico

 # $recurso = 8080
 # Write-Host $recurso.GetType().name
 # Write-Host $recurso
 # $recurso = "Puerto HTTP"
 # Write-Host $recurso
 # Write-Host $recurso.GetType().name



 # -----------------------------------------------------------------------------


 # 2.- Forzando el tipado estático

# [int]$maxConexiones = 100
#write-host $maxConexiones.GetType().Name

# [bool]$firewallactivo =$true
# Write-Host $firewallactivo.GetType().name

# $maxConexiones ="cien"

# No se puede convertir el valor "cien" al tipo "System.Int32". 
#Error: "La cadena de entrada no tiene el formato correcto."



# ----------------------------------------------------------------------


# 3.- Números grandes y precisión financiera

# * Este se pone sola int64
# [int64]$tamanoBackup = 2199023255552
# Write-Host $tamanoBackup.GetType().Name
# Write-Host $tamanoBackup

# * Este no se pone sola se pone Double por defecto 
# [decimal]$costeLincencia = 149.95 
# Write-Host $costeLincencia.GetType().Name
# Write-Host $costeLincencia

# [decimal]$iva = 31.49
# Write-Host $iva.GetType().Name
# Write-Host $iva



# ------------------------------------------------------------------------------------


# 4.- Cálculo de tiempos de ejecución (DateTime y TimeSpan)

# $fechaActual = Get-Date
# Write-Host "Es el año " $fechaActual.Year
# Write-Host "la contraseña caducara en " $fechaActual.AddDays(45)

# $inicio = Get-Date                   # * inicio
# Start-Sleep -Seconds 3               # * Pausa de 3 segundos
# $fin = Get-Date                      # *  fin

# * Almacena la resta en una variable de tipo [TimeSpan]
# [TimeSpan]$tiempoTotal = $fin - $inicio

#  * Muestra por pantalla los segundos totales transcurridos con .TotalSeconds
# Write-Host "Los segundos totales transcurridos son: $($tiempoTotal.TotalSeconds)"

# ------------------------------------------------------------------------------------