
# /bin/bash
# Programa para ejemplificar la forma de cómo transferir por la red utilizando el  comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# Autor: Seba

echo "Empaquetar todos los scripts de la carpeta shellCourse y transferirlos por la red a otro equipo utilizando el comando rsync"

read -p "Ingresar el host:" host
read -p "Ingresar el usuario:" usuario
echo -e "\nEn este momento se procederá a empaquetar la carpeta y transferirla según los datos ingresados"
rsync -avz $(pwd) $usuario@host:/home/seba
