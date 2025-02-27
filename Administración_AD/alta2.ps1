#importamos el csv a una variable
$ouPath=Import-Csv -Path C:\Users\usuario\Desktop\posiligas.csv

# Crear las OUs según las rutas definidas en el CSV
foreach ($ou in $ouPath) {
    # Verificar si la OU ya existe
    $ouExistente = Get-ADOrganizationalUnit -Filter {Name -eq $ou.Nombres} -SearchBase $ou.Path -ErrorAction SilentlyContinue
    
    if (-not $ouExistente) {
        # Crear la nueva OU
        New-ADOrganizationalUnit -Name $ou.Nombres -Path $ou.Path
        Write-Output "La OU '$($ou.Nombres)' ha sido creada en '$($ou.Path)'."
    } else {
        Write-Output "La OU '$($ou.Nombres)' ya existe en '$($ou.Path)'."
    }
}