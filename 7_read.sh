

# !/bin/bash
# Programa para ejemplificar cómo capturar la información del usuario utilizando el comando  read  
#Autor: Seba

option=0
backupName=""

echo "Programa utilidades Postgres"
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Option:$option , backupName:$backupName"



