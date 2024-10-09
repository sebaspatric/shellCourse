

# !/bin/bash
# Programa para ejemplificar cómo se realiza el paso de opciones con o sin parámetros  
#Autor: Seba

echo "Programa Opciones"
echo "Opción 1 enviada: $1"
echo "Opcion 2 enviada: $2"
echo "Opciones enviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
do 
case "$1" in
-a) echo "-a option utilizada";;
-b) echo "-b option utilizada";;
-c) echo "-c option utilizada";;
*) echo "$1 no es una opción";;
esac
shift
done


