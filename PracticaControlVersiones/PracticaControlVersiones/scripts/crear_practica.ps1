$ErrorActionPreference = 'Stop'
if (-not (Get-Command git -ErrorAction SilentlyContinue)) { Write-Host 'No se encontro Git. Instala Git for Windows y vuelve a abrir PowerShell.'; exit 1 }
Set-Location (Join-Path $PSScriptRoot '..')
if (-not (Test-Path '.git')) { git init }
git config user.name | Out-Null
if ($LASTEXITCODE -ne 0 -or -not (git config user.name)) { Write-Host 'Configura tu nombre: git config --global user.name "Tu Nombre"'; exit 1 }
if (-not (git config user.email)) { Write-Host 'Configura tu correo: git config --global user.email "tu-correo@ejemplo.com"'; exit 1 }
git add app/index.html docs scripts README.md
git commit -m 'Version inicial de la aplicacion'
git branch -M main
git switch -c diseno
(Get-Content app/index.html -Raw).Replace('background:#eef3ff','background:#ffeaf5') | Set-Content app/index.html -Encoding utf8
git add app/index.html
git commit -m 'Cambiar color de fondo en rama diseno'
git switch main
git merge diseno
git branch -d diseno
git switch -c funcion-bienvenida
(Get-Content app/index.html -Raw).Replace('¡Bienvenido a mi aplicación!','¡Hola! Gracias por visitar mi aplicación.') | Set-Content app/index.html -Encoding utf8
git add app/index.html
git commit -m 'Mejorar mensaje de bienvenida'
git switch main
git merge funcion-bienvenida
git branch -d funcion-bienvenida
Write-Host 'Practica local creada. Comprueba el historial con: git log --oneline --all --graph'
