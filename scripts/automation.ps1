Write-Host "Sistema operativo: Windows"
Write-Host "Variable global: $env:GLOBAL_VAR"
Write-Host "Secreto: $env:SECRET_VAR"

# Crear archivo
"Archivo creado desde workflow Windows" | Out-File testfile.txt

# Cambiar permisos
icacls testfile.txt /grant Everyone:R
Write-Host "Permisos aplicados a testfile.txt"

# Crear proceso en segundo plano
Start-Process powershell -ArgumentList "while (\$true) {Write-Output 'Proceso en segundo plano Windows'; Start-Sleep -Seconds 5}" -NoNewWindow
Write-Host "Proceso en segundo plano iniciado"

# Verificación de archivo
if (-not (Test-Path testfile.txt)) {
    Write-Host "Error: testfile.txt no se creó correctamente"
    exit 1
}
