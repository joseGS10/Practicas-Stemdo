#importamos el csv a una variable
$jugadores=Import-Csv -Path C:\Users\usuario\Desktop\Jugadores.csv


# Ruta de mi dominio
$dominio = "DC=midominio,DC=local"  
$ouPath = "OU=Jugadores,$dominio"

# Nombre de la OU a crear
#$nombreOU = "Jugadores" 

# Verificar si la OU ya existe
$ouExistente = Get-ADOrganizationalUnit -Filter {Name -eq "Jugadores"} -ErrorAction SilentlyContinue

if (-not $ouExistente) {
    # Crear la nueva OU
    New-ADOrganizationalUnit -Name "Jugadores" -Path $dominio
    Write-Output "La OU 'Jugadores' ha sido creada con éxito."
} else {
    Write-Output "La OU 'Jugadores' ya existe."
}




#tratamos cada jugador del csv
foreach ($jugador in $jugadores) {
    $nombre_completo = "$($jugador.FirstName) $($jugador.LastName)"
    $nombre_usuario = $jugador.UserName
    $grupo = $jugador.Club
    
    # Crear un grupo basado en el campo 'Club' si no existe
    $grupoExistente = Get-ADGroup -Filter {Name -eq $grupo} -ErrorAction SilentlyContinue
    
       if (-not $grupoExistente) {
           # Crear el grupo si no existe
             New-ADGroup -Name $grupo `
                    -GroupScope Global `
                    -Path "OU=Jugadores,DC=midominio,DC=local" `
                    -GroupCategory Security `
                    -Description "Grupo para el club $grupo"
        
             Write-Output "Grupo $grupo creado con éxito."
       } else {
          Write-Output "El grupo $grupo ya existe."
    }
    New-ADUser -Name $nombre_completo `
               -DisplayName $nombre_completo `
               -SamAccountName $nombre_usuario `
               -UserPrincipalName $nombre_usuario@midominio.local `
               -GivenName $jugador.FirstName `
               -Surname $jugador.LastName `
               -AccountPassword (ConvertTo-SecureString -AsPlainText 'Password123' -force) `
               -Enabled $true `
               -ChangePasswordAtLogon $true `
               -Path $ouPath
    
    # Añadir al usuario al grupo del club correspondiente
    Add-ADGroupMember -Identity $grupo -Members $nombre_usuario
    Write-Output "$nombre_completo añadido al grupo $grupo."

}