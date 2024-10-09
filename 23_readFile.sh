
# /bin/bash
# Programa para ejemplificar cómo se lee en un archivo
# Autor: Seba

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenarlos valores en una variable"
valorCat= cat $1
echo "$valorCat"

#Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco al inicio y al final se recortan
echo -e "\nLeer archivos línea por línea utilizando write"
while IFS= read linea
do  
    echo "$linea"
done < $1


