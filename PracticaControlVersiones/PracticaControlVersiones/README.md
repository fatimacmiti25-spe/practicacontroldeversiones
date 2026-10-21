# Práctica: administración de versiones de aplicaciones móviles

**Proyecto:** Mi aplicación móvil (demostración HTML adaptable a celular).

## Cómo abrir la aplicación
Abre `app/index.html` en tu navegador. El botón Iniciar muestra un mensaje.

## Actividades
1. **Creación de ramas:** `git switch -c diseno`.
2. **Fusión:** después de guardar un cambio con commit, `git switch main` y `git merge diseno`.
3. **Eliminación:** `git branch -d diseno` (después de fusionarla).
4. **Permisos de acceso:** en GitHub, abre el repositorio > Settings > Collaborators (o Collaborators and teams), invita a un compañero y asigna el acceso disponible para tu tipo de repositorio. La invitación debe aceptarse.
5. **Resolución de conflictos:** crea dos ramas desde un mismo commit, cambia la misma línea de `app/index.html` en ambas y haz commits. Fusiona la primera en main; al fusionar la segunda Git puede marcar conflicto. Abre el archivo, conserva el texto correcto, elimina las marcas `<<<<<<<`, `=======`, `>>>>>>>`, y ejecuta `git add app/index.html` y `git commit -m "Resolver conflicto"`.
6. **Contribuciones:** un compañero hace fork o trabaja en una rama autorizada, sube cambios y crea un Pull Request; revisa y fusiona el PR en GitHub.

## Preparar el repositorio local
Instala Git for Windows desde https://git-scm.com/downloads/win. **Descargarlo no es lo mismo que instalarlo.** Cierra y vuelve a abrir VS Code. Comprueba `git --version`.

En la terminal, dentro de esta carpeta:

```powershell
git config --global user.name "Tu Nombre"
git config --global user.email "tu-correo@example.com"
```

Sustituye esos datos por los tuyos. Puedes ejecutar `scripts/crear_practica.ps1` desde PowerShell para automatizar las primeras tres actividades y un ejemplo de contribución local; si la ejecución de scripts está restringida, realiza los comandos manualmente. El script modifica el archivo de ejemplo y crea commits reales **solo en tu computadora**.

## Subir a GitHub
Crea un repositorio vacío en GitHub (sin README inicial), copia su URL HTTPS y ejecuta:

```bash
git remote add origin URL_DE_TU_REPOSITORIO
git push -u origin main
```

La invitación a colaboradores y los Pull Requests requieren acceso a GitHub y no se realizan automáticamente con este paquete.

## Evidencias sugeridas
- Captura de `git branch` o historial con ramas.
- Captura de `git log --oneline --graph` con commits.
- Captura de la fusión y eliminación en la terminal.
- Captura de permisos de colaboradores en GitHub (sin exponer información privada).
- Captura del conflicto y de su solución.
- Captura de un Pull Request y su fusión.

No presentes capturas simuladas como si fueran operaciones realizadas.
