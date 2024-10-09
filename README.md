# Curso de Bash Shell: Script para la Instalación de PostgreSQL

## Descripción

Este curso de Bash Shell está diseñado para enseñarte a crear scripts con bash shell automatizados, como ejemplo: instalación de PostgreSQL en sistemas Linux. Aprenderás a usar comandos de Bash, estructuras de control, y a manejar la instalación y configuración de bases de datos.


# Instrucciones para Ejecutar el Script de Instalación de PostgreSQL

Este documento proporciona las instrucciones necesarias para ejecutar el script `instalar_postgres.sh`, que automatiza la instalación de PostgreSQL en un sistema Linux.

## Prerrequisitos

Antes de ejecutar el script, asegúrate de tener lo siguiente:

- **Sistema Operativo**: Un sistema basado en Linux (como Ubuntu o Debian).
- **Privilegios de Sudo**: Debes tener acceso a una cuenta con permisos de administrador para instalar software.

## Pasos para Ejecutar el Script

1. **Abre la Terminal**:
   - Puedes hacerlo buscando "Terminal" en tu menú de aplicaciones.

2. **Crea el Script**:
   - Crea un nuevo archivo llamado `instalar_postgres.sh` con tu editor de texto favorito:
     ```bash
     nano instalar_postgres.sh
     ```
   - Copia y pega el siguiente código en el archivo:

     ```bash
     #!/bin/bash

     # Verifica si el script se está ejecutando como superusuario
     if [[ $EUID -ne 0 ]]; then
        echo "Este script debe ser ejecutado como root" 
        exit 1
     fi

     # Actualiza el sistema
     echo "Actualizando el sistema..."
     apt update && apt upgrade -y

     # Instala PostgreSQL
     echo "Instalando PostgreSQL..."
     apt install postgresql postgresql-contrib -y

     # Inicia el servicio de PostgreSQL
     echo "Iniciando el servicio de PostgreSQL..."
     systemctl start postgresql

     # Habilita el servicio para que inicie en el arranque
     systemctl enable postgresql

     echo "PostgreSQL se ha instalado y está en funcionamiento."
     ```

   - Guarda y cierra el editor (en `nano`, presiona `CTRL + X`, luego `Y` y `Enter`).

3. **Haz el Script Ejecutable**:
   - Cambia los permisos del archivo para hacerlo ejecutable:
     ```bash
     chmod +x instalar_postgres.sh
     ```

4. **Ejecuta el Script**:
   - Ejecuta el script con privilegios de superusuario:
     ```bash
     sudo ./instalar_postgres.sh
     ```

5. **Verifica la Instalación**:
   - Una vez que el script haya terminado, verifica que PostgreSQL se haya instalado correctamente ejecutando:
     ```bash
     sudo -u postgres psql -c "SELECT version();"
     ```
   - Este comando debería mostrarte la versión de PostgreSQL instalada.

## Notas Adicionales

- Si encuentras errores durante la instalación, asegúrate de que tu sistema esté actualizado y que tienes acceso a Internet.
- Para detener el servicio de PostgreSQL, puedes usar:
  ```bash
  sudo systemctl stop postgresql
