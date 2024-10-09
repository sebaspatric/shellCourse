
# /bin/bash
# Programa para ejemplificar cómo se escribe un archivo
# Autor: Seba

echo "Escribir en un archivo"

echo "valores escritos con el comando echo" >> $1

#Adición multimedia
cat <<EOM >>$1
$2
EOM


