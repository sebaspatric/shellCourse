

# !/bin/bash
# Programa para ejemplificar cómo capturar la información del usuario y validarla  
#Autor: Seba

option=0
backupName=""
clave=""

echo "Programa utilidades Postgres"
# Acepta el ingreso de información de sólo un caracter
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo "Option:$option , backupName:$backupName"
read -s -p "Clave: " clave
echo "$clave"


